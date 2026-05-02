module adc_interface #(
    parameter ADC_WIDTH                         = 14,
    parameter FFT_POINTS                        = 1024,
    parameter WINDOW_WIDTH                      = 16,
    parameter P_VCO_STABLE                      = 80,
    parameter WIN_EN                            = 1  
)(
    input  wire                                 i_adc_reset,
    
    input  wire                                 i_adc_dco,                  // ADC clock
    input  wire  [ADC_WIDTH-1:0]                i_adc_data,                 // ADC data input

    input  wire                                 i_adc_vco_prog_done,        // Signals to VCO programming interface
    input  wire [12:0]                          i_adc_vco_prog_freq, 
    output reg                                  o_adc_vco_req_next_freq,
    output reg [12:0]                           o_adc_vco_prog_freq,


    input wire                                  m_axis_clk,                 // AXI Stream clock
    output reg                                  m_axis_tvalid,              // FFT AXI stream to fft core
    output reg [31:0]                           m_axis_tdata,        
    output reg                                  m_axis_tlast,
    input  wire                                 m_axis_tready,
    
    
    //debug 
    output wire [15:0] adc_signed_debug,
    output wire [15:0] win_coeff_out,
    output reg [13:0]  adc_data_original,
    output reg         adc_data_original_valid,
    input wire         window_enable
);

    // -------- FSM states --------
    localparam IDLE                             = 3'b000;
    localparam WAITING                          = 3'b001;
    localparam BUFFERING                        = 3'b010;
    localparam SAMPLING                         = 3'b011;
    localparam REQ_PROG                         = 3'b100;

    reg [2:0]                                   state;
    reg [6:0]                                   wait_cnt;

    // window coefficient BRAM interface
    wire signed [15:0]                          win_dout;
    reg  [9:0]                                  win_addr;

    // windowed data BRAM interface
    reg                                         win_data_we;
    reg [9:0]                                   win_data_addr;
    reg  signed [31:0]                          win_data_din;
    wire signed [31:0]                          win_data_dout;
    
    reg [9:0]                                   axi_rd_addr;

    wire signed [15:0]                          adc_signed;
    reg                                         read_start;

    reg                                         buffer_done;
    reg                                         buffer_done_sync0;
    reg                                         buffer_done_sync1;

    

    assign state_out                            = state;
    assign window_coeff_addr                    = win_addr;
    assign windowed_data_addr                   = win_data_addr;

    assign adc_signed                           = i_adc_data;
    assign adc_signed_debug = adc_signed;
    assign win_coeff_out = win_dout;

    



    blk_mem_gen_0 window_coeff_bram (
        .clka                                   (i_adc_dco      ),
        .ena                                    (1'b1           ),
        .wea                                    (1'b0           ),
        .addra                                  (win_addr       ),
        .dina                                   (16'd0          ),
        .douta                                  (win_dout       )
    
    );

    blk_mem_gen_1 windowed_data_bram (
        .clka                                   (i_adc_dco      ),
        .ena                                    (1'b1           ),
        .wea                                    (win_data_we    ),
        .addra                                  (win_data_addr  ),
        .dina                                   (win_data_din   ),
        .douta                                  (               ),

        .clkb                                   (m_axis_clk     ),
        .enb                                    (1'b1           ),
        .web                                    (1'b0           ),
        .addrb                                  (axi_rd_addr    ),
        .dinb                                   (32'd0          ), 
        .doutb                                  (win_data_dout  ) 


    
    );


    always @(posedge m_axis_clk or posedge i_adc_reset) begin
        if (i_adc_reset) begin
            buffer_done_sync0                   <= 0;
            buffer_done_sync1                   <= 0;
        end else begin
            buffer_done_sync0                   <= buffer_done;       // first flop
            buffer_done_sync1                   <= buffer_done_sync0; // second flop
        end
    end

    always @(posedge i_adc_dco) begin
        if (i_adc_reset) begin
            win_addr                            <= 0;
            win_data_addr                       <= 0;
            buffer_done                         <= 0;

        end
        else begin
            if(state == BUFFERING) begin
                if (win_addr == FFT_POINTS - 1) begin
                    if (window_enable) begin
                        win_data_din            <= adc_signed * win_dout;
                    end
                    else begin
                        win_data_din            <= {18'b0,i_adc_data};
                    end
                    win_data_we                 <= 1'b1;
                    win_data_addr               <= win_addr;
                    win_addr                    <= 0;
                    buffer_done                 <= 1'b1;
                end
                else begin
                    if (window_enable) begin
                        win_data_din            <= adc_signed * win_dout;
                    end
                    else begin
                        win_data_din            <= {18'b0, i_adc_data};
                    end
                    win_addr                    <= win_addr + 1;
                    win_data_we                 <= 1'b1;
                    win_data_addr               <= win_addr;
                    buffer_done                 <= 1'b0;
                end
            end
            else begin
                win_addr                        <= 'b0;
                win_data_addr                   <= 'b0;
                win_data_we                     <= 1'b0;
                buffer_done                     <= 1'b0;
                win_data_din                    <= 'b0;

            end

        end
    end

    // -------- FSM --------
    always @(posedge m_axis_clk or posedge i_adc_reset) begin
        if (i_adc_reset) begin
            state                               <= IDLE;
            wait_cnt                            <= 0;
            m_axis_tvalid                       <= 1'b0;
            m_axis_tlast                        <= 1'b0;
            o_adc_vco_req_next_freq             <= 1'b1;
            read_start                          <= 1'b0;
            o_adc_vco_prog_freq                 <= 0;
            axi_rd_addr                         <= 0;
        end else begin

            o_adc_vco_req_next_freq             <= 1'b0;
            o_adc_vco_prog_freq                 <= i_adc_vco_prog_freq;

            case (state)
                IDLE: begin
                    wait_cnt                    <= 0;
                    if (i_adc_vco_prog_done) begin
                        state                   <= WAITING;
                    end else begin
                        state                   <= IDLE;
                        o_adc_vco_req_next_freq <= 1'b1;                // request VCO for next frequency
                    end
                end
                                                                        
                WAITING: begin                                          // Wait for VCO to stabilize
                    if (wait_cnt >= P_VCO_STABLE-1) begin
                        state                   <= BUFFERING;
                    end else begin
                        wait_cnt                <= wait_cnt + 1;
                        state                   <= WAITING;
                    end
                end
                
                BUFFERING: begin                                        // Buffer 1024 windowed samples
                    if (buffer_done_sync1) begin
                        state                   <= SAMPLING;
                    end
                    else begin
                        state                   <= BUFFERING;
                    end
          
                end

                SAMPLING: begin                                         // Stream windowed data to FFT core
                    m_axis_tvalid               <= 1'b1;
                    adc_data_original_valid     <= 1'b1;
                    adc_data_original           <= win_data_dout[13:0];
                    m_axis_tdata                <= win_data_dout;
                    if(m_axis_tready && m_axis_tvalid) begin
                        if (axi_rd_addr == FFT_POINTS-2) begin
                            m_axis_tlast        <= 1'b1;
                            state               <= REQ_PROG;
                            axi_rd_addr         <= 0;
                            o_adc_vco_req_next_freq <= 1'b1;
                        end else begin
                            state               <= SAMPLING;
                            axi_rd_addr         <= axi_rd_addr + 1;
                        end
                    end else begin
                        state                   <= SAMPLING;
                    end
                end 

                REQ_PROG: begin
                    state                       <= IDLE;
                    m_axis_tvalid               <= 1'b0;
                    m_axis_tlast                <= 1'b0;
                    adc_data_original_valid     <= 1'b0;
                end

                default: state                  <= IDLE;
            endcase
        end
    end

endmodule