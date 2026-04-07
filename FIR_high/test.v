`include "vco.vh"

module vco_interface_axis #(
    parameter VCO_MUX_OUT_WAIT_EN = 1
)
(
    input wire          i_vco_clk,
    input wire          i_resetn,

    input wire          i_next_freq_req,
        
    output wire         o_vco_le,
    output wire         o_vco_clk,
    output wire         o_vco_data,
    output wire         o_vco_prog_done,

    input wire          i_begin_freq,   
    input wire [31:0]   i_start_idx,
    input wire [31:0]   i_stop_idx,
    input wire [31:0]   i_step_size,
    input wire          i_vco_mux_out,
    output reg o_axi_ack,
//    output wire         o_vco_range_done,
    output reg          led1, led2, led3, led4,
    output wire [12:0]  o_vco_freq,
    output wire [31:0] freq_num_out
    );

    parameter P_INIT_REG_COUNT       = 47;
    parameter P_INTR_REG_COUNT       = 3;
    parameter P_UPPR_REG_COUNT       = 7;
    parameter P_VCO_FREQ_WAIT_TIME   = 30_000_000;
    parameter P_VCO_FREQ_WAIT_TIME_MINI = 100_000;
    parameter P_VCO_REG_WAIT_TIME    = 10;
    parameter P_VCO_SEPERATION       = 420;

    localparam IDLE                  = 4'b0000;
    localparam READ_START_REGS       = 4'b0001;
    localparam READ_REGS             = 4'b0010;
    localparam INTM_1                = 4'b0011;
    localparam INTM_2                = 4'b0100;
    localparam INTM_3                = 4'b0101;
    localparam INTM_4                = 4'b0110;
    localparam SEND                  = 4'b0111;
    localparam WAIT_REG              = 4'b1000;
    localparam WAIT_FREQ             = 4'b1001;




    localparam MEM_DEPTH              = 40;
    localparam MEM_DEPTH_UPPER        = 80;

    reg [31:0] freq_mem [0:MEM_DEPTH-1];
    reg [31:0] freq_mem_upper [0:MEM_DEPTH_UPPER -1];

    initial begin
        $readmemh("vco_freq.mem", freq_mem);
    end
    
    initial begin
        $readmemh("vco_freq_upper.mem", freq_mem_upper);
    end

    // wire [31:0] i_start_idx = 32'd0;
    // wire [31:0] i_stop_idx  = 32'd1;
    // wire [31:0] i_step_size = 32'd1;

    reg [31:0] mem_idx;     
    reg [2:0]  r_vco_state;
    reg [4:0]  c_vco_bit_ctr;
    reg [5:0]  c_vco_reg_ctr;
    reg [15:0] c_vco_step_ctr;
    reg [31:0] c_vco_reg_wait_ctr;
    reg [31:0] c_vco_freq_wait_ctr;
    reg [31:0] c_vco_freq_wait_ctr_mini;
    reg [1:0]  c_vco_minor_ctr;
    reg [31:0]  programmed_regs;
    reg        r_adc_vco_prog_done;
    reg        r_vco_range_done;
    reg [12:0] r_vco_freq;
    reg [15:0] r_current_step;
    reg        r_vco_freq_led;
    reg        r_vco_clk, r_vco_data, r_vco_le;
    reg        start_registering, intermediate_registering, upper_registering;
    reg [5:0]  target_reg_count;
    reg [31:0] start_idx_reg, stop_idx_reg, step_size_reg;
    reg start_flag;

    // VCO registers
    reg [23:0] value_reg30, value_reg37, value_reg38, value_reg41, value_reg45, value_reg46;
    reg [23:0] int_value_reg45, int_value_reg38;

    wire [23:0] initial_registers [0:P_INIT_REG_COUNT-1];
    wire [23:0] intermediate_registers [0:P_INTR_REG_COUNT-1];
    wire [23:0] upper_registers [0:P_UPPR_REG_COUNT-1];

    wire [23:0] current_register;

    reg rst_freq_begin;
    reg first_freq_send;


    assign freq_num_out = programmed_regs;


    assign current_register = start_registering ? initial_registers[c_vco_reg_ctr] :
                              intermediate_registering ? intermediate_registers[c_vco_reg_ctr] :
                              upper_registering ? upper_registers[c_vco_reg_ctr] :
                              24'hFFFFFF;

    assign o_vco_clk        = (r_vco_state == SEND) ? r_vco_clk : 1'b1;
    assign o_vco_data       = (r_vco_state == SEND) ? r_vco_data : 1'b1;
    assign o_vco_le         = (r_vco_state == SEND) ? r_vco_le : 1'b1;
    assign o_vco_prog_done  = r_adc_vco_prog_done;
    assign o_vco_freq       = (mem_idx-1)*step_size_reg;
//    assign o_vco_range_done = r_vco_range_done;

    assign bram_clk = i_vco_clk;
    assign bram_en  = 1'b1; 
    assign bram_we  = 4'b0000; 

    assign initial_registers[0]  = `SOFT_RESET;
    assign initial_registers[1]  = `REG_70;
    assign initial_registers[2]  = `REG_69;
    assign initial_registers[3]  = `REG_68;
    assign initial_registers[4]  = `REG_64;
    assign initial_registers[5]  = `REG_62;
    assign initial_registers[6]  = `REG_61;
    assign initial_registers[7]  = `REG_59;
    assign initial_registers[8]  = `REG_48;
    assign initial_registers[9]  = `REG_47;
    assign initial_registers[10] = value_reg46;  
    assign initial_registers[11] = value_reg45;  
    assign initial_registers[12] = `REG_44;
    assign initial_registers[13] = `REG_43;
    assign initial_registers[14] = `REG_42;
    assign initial_registers[15] = value_reg41;
    assign initial_registers[16] = `REG_40;
    assign initial_registers[17] = `REG_39;
    assign initial_registers[18] = value_reg38;   
    assign initial_registers[19] = value_reg37;   
    assign initial_registers[20] = `REG_36;
    assign initial_registers[21] = `REG_35;
    assign initial_registers[22] = `REG_34;
    assign initial_registers[23] = `REG_33;
    assign initial_registers[24] = `REG_32;
    assign initial_registers[25] = `REG_31;
    assign initial_registers[26] = value_reg30;   
    assign initial_registers[27] = `REG_29;
    assign initial_registers[28] = `REG_28;
    assign initial_registers[29] = `REG_25;
    assign initial_registers[30] = `REG_24;
    assign initial_registers[31] = `REG_23;
    assign initial_registers[32] = `REG_22;
    assign initial_registers[33] = `REG_20;
    assign initial_registers[34] = `REG_19;
    assign initial_registers[35] = `REG_14;
    assign initial_registers[36] = `REG_13;
    assign initial_registers[37] = `REG_12;
    assign initial_registers[38] = `REG_11;
    assign initial_registers[39] = `REG_10;
    assign initial_registers[40] = `REG_9;
    assign initial_registers[41] = `REG_8;
    assign initial_registers[42] = `REG_7;
    assign initial_registers[43] = `REG_4;
    assign initial_registers[44] = `REG_2;
    assign initial_registers[45] = `REG_1;
    assign initial_registers[46] = `REG_0;

    assign intermediate_registers[0] = int_value_reg45;
    assign intermediate_registers[1] = int_value_reg38;
    assign intermediate_registers[2] = `REG_0;

    assign upper_registers[0] = `REG_46_UPPER;
    assign upper_registers[1] = int_value_reg45;
    assign upper_registers[2] = `REG_41_UPPER;
    assign upper_registers[3] = `REG_38_UPPER;
    assign upper_registers[4] = `REG_37_UPPER;
    assign upper_registers[5] = `REG_30_UPPER;
    assign upper_registers[6] = `REG_0;

    // Main FSM
    always @(posedge i_vco_clk or posedge i_resetn) begin
        if (i_resetn) begin
            r_vco_state                 <= IDLE;
            c_vco_bit_ctr               <= 0;
            c_vco_reg_ctr               <= 0;
            c_vco_step_ctr              <= 0;
            c_vco_reg_wait_ctr          <= 0;
            c_vco_freq_wait_ctr         <= 0;
            c_vco_freq_wait_ctr_mini    <= 0;
            c_vco_minor_ctr             <= 0;
            r_adc_vco_prog_done         <= 0;
            r_vco_range_done            <= 0;
            r_vco_freq                  <= 0;
            r_current_step              <= 0;
            r_vco_freq_led              <= 0;
            r_vco_data                  <= 1;
            r_vco_clk                   <= 1;
            r_vco_le                    <= 1;
            mem_idx                     <= 0;
            led1                        <= 0; 
            led2                        <= 0; 
            led3                        <= 0; 
            led4                        <= 0;
            start_registering           <= 0;
            intermediate_registering    <= 0;
            upper_registering           <= 0;
            value_reg30                 <= 0;
            value_reg37                 <= 0;
            value_reg38                 <= 0;
            value_reg41                 <= 0;
            value_reg45                 <= 0;
            value_reg46                 <= 0;
            int_value_reg45             <= 0;
            int_value_reg38             <= 0;
            target_reg_count            <= 0;
            programmed_regs             <= 0;
            start_idx_reg               <= 0;
            stop_idx_reg                <= 0;
            step_size_reg               <= 0;
            start_flag                  <= 1'b1;
            o_axi_ack                   <= 0;
            rst_freq_begin              <= 1'b1;
            first_freq_send             <= 1'b0;
        end else begin
            case (r_vco_state)
                IDLE: begin
                    r_vco_range_done    <= 0;
                    r_adc_vco_prog_done <= 0;
                    if (i_next_freq_req) begin     
                        if (i_begin_freq || rst_freq_begin) begin   
                            r_vco_state      <= READ_START_REGS;
                            programmed_regs  <= 0;
                            mem_idx          <= i_start_idx; 
                            target_reg_count <= P_INIT_REG_COUNT;
                            start_idx_reg    <= i_start_idx; 
                            stop_idx_reg     <= i_stop_idx; 
                            step_size_reg    <= i_step_size; 
                            start_flag       <= 0;
                            o_axi_ack        <= 1;
                            rst_freq_begin   <= 0;
                        end 
                        else if(!start_flag) begin 
                            r_vco_state      <= READ_REGS;
                        end    
                        else begin
                            r_vco_state      <= IDLE;
                        end                                       
                    end                     
                end

                READ_START_REGS: begin
                    if (i_start_idx < P_VCO_SEPERATION) begin
                        value_reg30 <= `REG_30_LOWER;
                        value_reg37 <= `REG_37_LOWER;
//                        value_reg38 <= `REG_38_LOWER  + 2*(mem_idx/40);
                        value_reg38 <= `REG_38_LOWER  + 2*((mem_idx * 205) >> 13);
                        value_reg41 <= `REG_41_LOWER;
                        value_reg46 <= `REG_46_LOWER;
                        value_reg45 <= freq_mem[mem_idx%40];
                    end else begin
                        value_reg30 <= `REG_30_UPPER;
                        value_reg37 <= `REG_37_UPPER;
                        value_reg38 <= `REG_38_UPPER  + 2*(((mem_idx-360)*205) >> 14);
                        value_reg41 <= `REG_41_UPPER;
                        value_reg46 <= `REG_46_UPPER;
                        value_reg45 <= freq_mem_upper[(mem_idx-360)%80];
                    end
                    r_vco_state       <= SEND;
                    c_vco_reg_ctr     <= 0; 
                    c_vco_minor_ctr   <= 0; 
                    start_registering <= 1;
                    first_freq_send   <= 1;
                    o_axi_ack       <= 0;
                    mem_idx           <= mem_idx + step_size_reg; 
                    start_flag        <= 1'b0;
                end

                READ_REGS: begin
                    mem_idx <= mem_idx + step_size_reg; 
                    first_freq_send   <= 0;
                    r_vco_state     <= SEND;
                    c_vco_minor_ctr <= 0; 
                    if (mem_idx >= P_VCO_SEPERATION) begin
                        int_value_reg45   <= freq_mem_upper[(mem_idx-360) - ((mem_idx-360)*205 >> 15)*80];
                        int_value_reg38   <= `REG_38_UPPER + 2*(((mem_idx-360)*205) >> 14);
                        if (mem_idx - step_size_reg < P_VCO_SEPERATION) begin
                            target_reg_count  <= P_UPPR_REG_COUNT;
                            upper_registering <= 1;
                        end else begin
                            intermediate_registering <= 1;
                            target_reg_count         <= P_INTR_REG_COUNT;
                        end                      
                    end else begin
                        intermediate_registering <= 1;
                        target_reg_count         <= P_INTR_REG_COUNT;
                        int_value_reg45          <= freq_mem[mem_idx%40];
                        int_value_reg38          <= `REG_38_LOWER + 2*((mem_idx * 205) >> 13);                        
                    end
                end

                SEND: begin 
                    c_vco_freq_wait_ctr <= 0;  
                    c_vco_freq_wait_ctr_mini <= 0;
                    c_vco_reg_wait_ctr  <= 0;

                    // If all 24 bits are sent, latch the data and move on
                    if (c_vco_bit_ctr == 24) begin 
                        c_vco_bit_ctr   <= 0; 
                        c_vco_minor_ctr <= 0;                                  
                        r_vco_state     <= WAIT_REG;                                 
                        c_vco_reg_ctr   <= c_vco_reg_ctr + 1;                  
                        r_vco_clk       <= 1'b1;
                        r_vco_le        <= 1'b1;  // Pull Latch Enable HIGH
                    end else begin 
                        
                        // 2-Phase Clock and Data Synchronization
                        if (c_vco_minor_ctr == 0) begin
                            // PHASE 0: Set Data, Pull Clock LOW
                            r_vco_clk  <= 1'b0;
                            r_vco_le   <= 1'b0;
                            r_vco_data <= current_register[23 - c_vco_bit_ctr];
                            c_vco_minor_ctr <= 1; // Move to next phase
                        end else begin
                            // PHASE 1: Pull Clock HIGH (VCO samples the data here)
                            r_vco_clk  <= 1'b1;
                            c_vco_minor_ctr <= 0; // Reset phase
                            c_vco_bit_ctr   <= c_vco_bit_ctr + 1; // Move to next bit
                        end

                    end
                end

                WAIT_REG: begin
                    if (c_vco_reg_wait_ctr == P_VCO_REG_WAIT_TIME && c_vco_reg_ctr == target_reg_count) begin                 
                        r_vco_state              <= WAIT_FREQ;   
                        start_registering        <= 0;
                        intermediate_registering <= 0;     
                        upper_registering        <= 0;     
                        c_vco_reg_ctr            <= 0;           
                    end else if (c_vco_reg_wait_ctr == P_VCO_REG_WAIT_TIME) begin               
                        r_vco_state <= SEND;                        
                    end else begin
                        c_vco_reg_wait_ctr <= c_vco_reg_wait_ctr + 1;  
                        r_vco_state        <= WAIT_REG;                    
                    end 
                end

                WAIT_FREQ: begin
                    c_vco_reg_wait_ctr <= 0;
                    if (VCO_MUX_OUT_WAIT_EN) begin
                        if(first_freq_send == 1) begin
                            if (c_vco_freq_wait_ctr >= P_VCO_FREQ_WAIT_TIME) begin
                                r_vco_state                                 <= IDLE;                    
                                r_adc_vco_prog_done                         <= 1;
                                c_vco_reg_ctr                               <= 0;     
                                programmed_regs                             <= programmed_regs + 1;
                                if (programmed_regs == 0) r_vco_freq_led    <= 1;
                                else if (programmed_regs == 1) led1         <= 1;
                                else if (programmed_regs == 2) led2         <= 1;
                                else if (programmed_regs == 3) led3         <= 1;
                                else if (programmed_regs == 4) led4         <= 1;
    
                                if (mem_idx > stop_idx_reg) begin
                                    mem_idx                                 <= i_start_idx;
                                end 
                                if (mem_idx == stop_idx_reg + i_start_idx) begin
                                    programmed_regs                         <= 0;
                                end
                            end 
                            else begin
                                c_vco_freq_wait_ctr                         <= c_vco_freq_wait_ctr + 1;
                            end
                        end
                        else begin
                            if (c_vco_freq_wait_ctr_mini >= P_VCO_FREQ_WAIT_TIME_MINI) begin
                                r_vco_state                                 <= IDLE;                    
                                r_adc_vco_prog_done                         <= 1;
                                c_vco_reg_ctr                               <= 0;     
                                programmed_regs                             <= programmed_regs + 1;
                                if (programmed_regs == 0) r_vco_freq_led    <= 1;
                                else if (programmed_regs == 1) led1         <= 1;
                                else if (programmed_regs == 2) led2         <= 1;
                                else if (programmed_regs == 3) led3         <= 1;
                                else if (programmed_regs == 4) led4         <= 1;
    
                                if (mem_idx > stop_idx_reg) begin
                                    mem_idx                                 <= i_start_idx; 
                                end 
                                if (mem_idx == stop_idx_reg + i_start_idx) begin
                                    programmed_regs                         <= 0;
                                end
                            end 
                            else begin
                                c_vco_freq_wait_ctr_mini                    <= c_vco_freq_wait_ctr_mini + 1;
                            end
                        
                        end


                    end
                    else begin
                        if (i_vco_mux_out) begin
                            if (c_vco_freq_wait_ctr < 100) begin
                                c_vco_freq_wait_ctr <= c_vco_freq_wait_ctr + 1;
                            end
                            else begin
                                r_vco_state                                 <= IDLE;                    
                                r_adc_vco_prog_done                         <= 1;
                                c_vco_reg_ctr                               <= 0;     
                                programmed_regs                             <= programmed_regs + 1;
    
                                // LED indication
                                if (programmed_regs == 0) r_vco_freq_led    <= 1;
                                else if (programmed_regs == 1) led1         <= 1;
                                else if (programmed_regs == 2) led2         <= 1;
                                else if (programmed_regs == 3) led3         <= 1;
                                else if (programmed_regs == 4) led4         <= 1;
                                
                                if (mem_idx > stop_idx_reg) begin
                                    mem_idx                                 <= i_start_idx; 
                                end 
                            end                            
                        end
                        else begin
                            c_vco_freq_wait_ctr                             <= 0;
                        end

                    end

                end
            endcase
        end
    end
endmodule