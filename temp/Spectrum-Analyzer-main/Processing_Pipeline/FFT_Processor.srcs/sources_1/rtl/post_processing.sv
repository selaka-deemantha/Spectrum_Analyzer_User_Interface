module post_processing #(
    parameter N = 1024,
    parameter SAMPLE_W = 14,
    parameter COEFF_W  = 16,
    parameter ADDR_W = 10,   
    parameter OUT_W  = 16,
    parameter DATA_W = 16,
    parameter FFT_W = 32,
    parameter SEGMENTS = 3
)(       
    input  logic            i_adc_reset,                                                                 
    input  logic            i_adc_dco,                                                                                             
    input logic                    fft_in_valid,
    input logic signed [FFT_W-1:0] fft_in_data, 
    input logic                    fft_in_last,

    output logic                    psd_valid,
    output logic signed [FFT_W-1:0] psd_data, 
    output logic                    psd_last
);

    logic signed [FFT_W-1:0] psd_accum [0:N/2-1];
    logic [ADDR_W-1:0] bin_cnt;
    logic [1:0] seg_cnt;

    always_ff @(posedge i_adc_dco or posedge i_adc_reset) begin
        if (i_adc_reset) begin
            bin_cnt <= 0;
            seg_cnt <= 0;
            for (int i = 0; i < N/2; i++) begin
                psd_accum[i] <= 0;
            end
        end else if (fft_in_valid) begin
            if (bin_cnt < N/2) begin
                psd_accum[bin_cnt] <= psd_accum[bin_cnt] + fft_in_data*fft_in_data;
            end
            bin_cnt <= bin_cnt + 1;
            if (fft_in_last) begin
                bin_cnt <= 0;
                seg_cnt <= seg_cnt + 1;
            end
        end
    end

    logic [$clog2(N/2)-1:0] out_idx;
logic output_active;

always_ff @(posedge i_adc_dco or posedge i_adc_reset) begin
    if (i_adc_reset) begin
        psd_valid      <= 0;
        psd_last       <= 0;
        seg_cnt        <= 0;
        out_idx        <= 0;
        output_active  <= 0;
    end else begin
        if (!output_active) begin
            // Check if we finished SEGMENTS accumulation
            if (seg_cnt == SEGMENTS) begin
                output_active <= 1;   // start outputting
                out_idx       <= 0;
                seg_cnt       <= 0;   // reset accumulation counter
            end else begin
                psd_valid <= 0;
                psd_last  <= 0;
            end
        end else begin
            // Streaming out PSD values
            psd_valid <= 1;
            psd_data  <= psd_accum[out_idx] / SEGMENTS;
            psd_last  <= (out_idx == N/2-1);

            if (out_idx == N/2-1) begin
                output_active <= 0;  // done
            end else begin
                out_idx <= out_idx + 1;
            end
        end
    end
end

endmodule
