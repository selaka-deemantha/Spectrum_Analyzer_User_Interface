module fft_calculation #(
    parameter N = 1024,
    parameter SAMPLE_W = 14,
    parameter COEFF_W  = 16,
    parameter ADDR_W = 10,   
    parameter OUT_W  = 16,
    parameter DATA_W = 16,
    parameter FFT_W = 32
)(
    input  logic            start,     

    input  logic            i_adc_reset,                                                                 
    input  logic            i_adc_dco,
    input  logic            i_adc_mode ,  
    input  logic signed [SAMPLE_W-1:0]  i_adc_sample,                                                               

    output logic                        out_valid,
    output logic signed [OUT_W-1:0]     windowed_sample,                                             

    // FFT output interface
    output logic                    fft_out_valid,
    output logic signed [FFT_W-1:0] fft_out_data, 
    output logic                    fft_out_last
);

    flattop_window #(
        .N(N),
        .SAMPLE_W(SAMPLE_W),
        .COEFF_W(COEFF_W),
        .OUT_W(OUT_W),
        .PROD_W(SAMPLE_W + COEFF_W)
    ) u_flattop (
        .i_adc_dco       (i_adc_dco),
        .i_adc_reset     (i_adc_reset),
        .i_adc_sample    (i_adc_sample),
        .i_start         (fft_out_last),

        .out_valid       (out_valid),
        .windowed_sample (windowed_sample)
    );

    typedef enum logic [1:0] {IDLE, RUN, DONE} state_t;
    state_t state;

    logic [ADDR_W-1:0] addr_cnt;

    logic fft_valid, fft_ready, fft_last;
    
    assign fft_valid = out_valid;

    always_ff @(posedge i_adc_dco or posedge i_adc_reset) begin
        if (i_adc_reset) begin
            state     <= IDLE;
            addr_cnt  <= '0;
//            fft_valid <= 1'b0;
            fft_last  <= 1'b0;
        end else begin
//            fft_valid <= 1'b0;
            fft_last  <= 1'b0;

            case (state)
                IDLE: begin
                    addr_cnt <= '0;
//                    fft_valid <= 1'b0;
                    if (fft_valid && fft_ready) begin
                        state <= RUN;
                        addr_cnt <= addr_cnt + 1;
//                        fft_valid <= 1'b1;
                    end
                end

                RUN: begin
//                    fft_valid <= 1'b1;
                    if (fft_ready) begin
                        addr_cnt <= addr_cnt + 1;
                        if (addr_cnt == (2**ADDR_W - 1)) begin
                            fft_last <= 1'b1;
                            state    <= DONE;
                        end
                    end
                end

                DONE: begin
                    if (!start) begin
                        state <= IDLE;
                    end
                end
            endcase
        end
    end

    logic [7:0] cfg_data = 8'h01;
    logic       cfg_valid = 1'b1;
    
    logic [63:0] fft_out_data_int;
    logic fft_out_valid_int;
    logic fft_out_last_int;

    logic [7:0] status_data;
    logic       status_valid;

    assign fft_out_data = fft_out_data_int[31:0];
    assign fft_out_valid = fft_out_valid_int;
    assign fft_out_last = fft_out_last_int;

    xfft_0 u_fft (
        .aclk                 (i_adc_dco),

        // Config channel
        .s_axis_config_tdata  (cfg_data),
        .s_axis_config_tvalid (cfg_valid),
        .s_axis_config_tready (),

        // Input channel
        .s_axis_data_tdata    ({16'd0, windowed_sample}), 
        .s_axis_data_tvalid   (fft_valid),
        .s_axis_data_tready   (fft_ready),
        .s_axis_data_tlast    (fft_last),

        // Output channel
        .m_axis_data_tdata    (fft_out_data_int),
        .m_axis_data_tvalid   (fft_out_valid_int),
        .m_axis_data_tready   (1'b1),
        .m_axis_data_tlast    (fft_out_last_int),

        .m_axis_status_tdata    (status_data),
        .m_axis_status_tvalid   (status_valid),
        .m_axis_status_tready   (1'b1)
    );
endmodule
