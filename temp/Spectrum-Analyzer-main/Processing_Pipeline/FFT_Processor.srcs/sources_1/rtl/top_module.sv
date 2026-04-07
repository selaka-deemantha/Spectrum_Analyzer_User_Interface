module top_module #(
    parameter N        = 1024,
    parameter SAMPLE_W = 14,
    parameter COEFF_W  = 16,
    parameter ADDR_W   = 10,   
    parameter OUT_W    = 16,
    parameter DATA_W   = 16,
    parameter FFT_W    = 32,
    parameter SEGMENTS = 8
)(
    input  logic                         start,     
    input  logic                         i_adc_reset,                                                                 
    input  logic                         i_adc_dco,
    input  logic                         i_adc_mode,  
    input  logic signed [SAMPLE_W-1:0]   i_adc_sample,                                                               

    // Window output (optional, for debug)
    output logic                         out_valid,
    output logic signed [OUT_W-1:0]      windowed_sample,  
    
    output logic                    fft_out_valid,
    output logic signed [FFT_W-1:0] fft_out_data, 
    output logic                    fft_out_last,                                           

    // PSD output (Welch estimate)
    output logic                         psd_valid,
    output logic signed [FFT_W-1:0]      psd_data, 
    output logic                         psd_last
);

    // Internal FFT signals
    logic                         fft_valid;
    logic signed [FFT_W-1:0]  fft_data;   // complex {Re,Im}
    logic                         fft_last;
    
    assign fft_out_valid = fft_valid;
    assign fft_out_data = fft_data;
    assign fft_out_last = fft_last;
    // ---------------------------
    // FFT Core (window + FFT IP)
    // ---------------------------
    fft_calculation #(
        .N(N),
        .SAMPLE_W(SAMPLE_W),
        .COEFF_W(COEFF_W),
        .ADDR_W(ADDR_W),   
        .OUT_W(OUT_W),
        .DATA_W(DATA_W),
        .FFT_W(FFT_W)
    ) u_fft_core (
        .start(start),     
        .i_adc_reset(i_adc_reset),                                                                 
        .i_adc_dco(i_adc_dco),
        .i_adc_mode(i_adc_mode),  
        .i_adc_sample(i_adc_sample),                                                               

        .out_valid(out_valid),
        .windowed_sample(windowed_sample),                                             

        .fft_out_valid(fft_valid),
        .fft_out_data(fft_data), 
        .fft_out_last(fft_last)
    );

    // ---------------------------
    // Post-processing (Welch PSD)
    // ---------------------------
    post_processing #(
        .N(N),
        .SAMPLE_W(SAMPLE_W),
        .COEFF_W(COEFF_W),
        .ADDR_W(ADDR_W),   
        .OUT_W(OUT_W),
        .DATA_W(DATA_W),
        .FFT_W(FFT_W),
        .SEGMENTS(SEGMENTS)
    ) u_post_processing (    
        .i_adc_reset(i_adc_reset),                                                                 
        .i_adc_dco(i_adc_dco),
                                                                                                    
        .fft_in_valid(fft_valid),
        .fft_in_data(fft_data), 
        .fft_in_last(fft_last),

        .psd_valid(psd_valid),
        .psd_data(psd_data), 
        .psd_last(psd_last)
    );

endmodule
