//module flattop_window #(
//    parameter N = 1024,
//    parameter SAMPLE_W = 14,
//    parameter COEFF_W  = 16,
//    parameter OUT_W  = 16,
//    parameter PROD_W   = SAMPLE_W + COEFF_W
//)(
//    input  logic                        i_adc_dco,
//    input  logic                        i_adc_reset,

//    // input sample stream
//    input  logic signed [SAMPLE_W-1:0]  i_adc_sample,

//    // output stream
//    output logic                        out_valid,
//    output logic signed [OUT_W-1:0]     windowed_sample
//);
//    // index counter
//    logic [$clog2(N)-1:0] idx;
//    logic is_half;

//    always_ff @(posedge i_adc_dco or posedge i_adc_reset) begin
//        if (i_adc_reset) begin
//            idx <= 0;
//            is_half <= 0;
//        end else begin
//            if (!is_half) begin
//                if (idx == N/2-1)
//                    is_half <= 1;
//                else
//                    idx <= idx + 1;
//            end else begin
//                if (idx == 0)
//                    is_half <= 0;
//                else
//                    idx <= idx - 1;
//            end
//        end
//    end

//    // ROM lookup
//    logic signed [COEFF_W-1:0] coeff;

//    blk_mem_gen_0 coeff_rom (
//        .clka   (i_adc_dco),
//        .wea    (1'b0),
//        .addra  (idx),
//        .dina   ('0),
//        .douta  (coeff)
//    );

//    // Multiply (Q1.15 × int16)
//    logic signed [PROD_W-1:0] mult_p;
//    always_ff @(posedge i_adc_dco) begin
//        mult_p <= (i_adc_sample * coeff) >>> 15;
//    end

//    logic signed [OUT_W-1:0] maxp, minn;
//    assign maxp = {1'b0,{(OUT_W-1){1'b1}}};
//    assign minn = {1'b1,{(OUT_W-1){1'b0}}};

//    always_ff @(posedge i_adc_dco or posedge i_adc_reset) begin
//        if (i_adc_reset) begin
//            windowed_sample <= '0;
//        end else begin
//            out_valid <= 1'b1;
//            if (mult_p > maxp)
//                windowed_sample <= maxp;
//            else if (mult_p < minn)
//                windowed_sample <= minn;
//            else
//                windowed_sample <= mult_p[OUT_W-1:0];
//        end
//    end

//endmodule

module flattop_window #(
    parameter N = 1024,
    parameter SAMPLE_W = 14,
    parameter COEFF_W  = 16,
    parameter OUT_W  = 16,
    parameter PROD_W   = SAMPLE_W + COEFF_W
)(
    input  logic                        i_adc_dco,
    input  logic                        i_adc_reset,
    input  logic                        i_start,            // new start signal

    // input sample stream
    input  logic signed [SAMPLE_W-1:0]  i_adc_sample,

    // output stream
    output logic                        out_valid,
    output logic signed [OUT_W-1:0]     windowed_sample
);

    // index counter and half flag
    logic [$clog2(N)-1:0] idx;
    logic is_half;
    logic active;   // new: indicates windowing in progress

    always_ff @(posedge i_adc_dco or posedge i_adc_reset) begin
        if (i_adc_reset) begin
            idx      <= 0;
            is_half  <= 0;
            active   <= 1;
        end else if (i_start) begin
            active <= 1;
            idx    <= 0;
            is_half <= 0;
        end else if (active) begin
            if (!is_half) begin
                if (idx == N/2-1)
                    is_half <= 1;
                else
                    idx <= idx + 1;
            end else begin
                if (idx == 0)
                    active <= 0;  // finished windowing
                else
                    idx <= idx - 1;
            end
        end
    end

    // ROM lookup
    logic signed [COEFF_W-1:0] coeff;
    blk_mem_gen_0 coeff_rom (
        .clka   (i_adc_dco),
        .wea    (1'b0),
        .addra  (idx),
        .dina   ('0),
        .douta  (coeff)
    );

    // Multiply (Q1.15 × int16)
    logic signed [PROD_W-1:0] mult_p;
    always_ff @(posedge i_adc_dco) begin
        if (active)
            mult_p <= (i_adc_sample * coeff) >>> 15;
    end

    logic signed [OUT_W-1:0] maxp, minn;
    assign maxp = {1'b0,{(OUT_W-1){1'b1}}};
    assign minn = {1'b1,{(OUT_W-1){1'b0}}};

    always_ff @(posedge i_adc_dco or posedge i_adc_reset) begin
        if (i_adc_reset) begin
            windowed_sample <= '0;
            out_valid       <= 1'b0;
        end else if (active) begin
            out_valid <= 1'b1;
            if (mult_p > maxp)
                windowed_sample <= maxp;
            else if (mult_p < minn)
                windowed_sample <= minn;
            else
                windowed_sample <= mult_p[OUT_W-1:0];
        end else begin
            out_valid <= 1'b0;
        end
    end

endmodule
