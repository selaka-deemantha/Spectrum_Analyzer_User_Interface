`timescale 1ns/1ps

module tb_top_module;

    // Parameters
    localparam N        = 1024;
    localparam SAMPLE_W = 14;
    localparam COEFF_W  = 16;
    localparam ADDR_W   = 10;
    localparam OUT_W    = 16;
    localparam DATA_W   = 16;
    localparam FFT_W    = 32;
    localparam SEGMENTS = 3;
    localparam NUM_BLOCKS = 8;   // number of repeated windows to send

    // DUT signals
    logic                         start;
    logic                         i_adc_reset;
    logic                         i_adc_dco;
    logic                         i_adc_mode;
    logic signed [SAMPLE_W-1:0]  i_adc_sample;

    logic                         out_valid;
    logic signed [OUT_W-1:0]     windowed_sample;

    logic                         psd_valid;
    logic signed [FFT_W-1:0]     psd_data;
    logic                         psd_last;
    
    logic                         fft_out_valid;
    logic signed [FFT_W-1:0]     fft_out_data; 
    logic                         fft_out_last;

    // Clock generation
    initial i_adc_dco = 0;
    always #6.25 i_adc_dco = ~i_adc_dco;   // 80 MHz clock
   // 100 MHz clock

    // DUT instantiation
    top_module #(
        .N(N),
        .SAMPLE_W(SAMPLE_W),
        .COEFF_W(COEFF_W),
        .ADDR_W(ADDR_W),
        .OUT_W(OUT_W),
        .DATA_W(DATA_W),
        .FFT_W(FFT_W),
        .SEGMENTS(SEGMENTS)
    ) dut (
        .start(start),
        .i_adc_reset(i_adc_reset),
        .i_adc_dco(i_adc_dco),
        .i_adc_mode(i_adc_mode),
        .i_adc_sample(i_adc_sample),

        .out_valid(out_valid),
        .windowed_sample(windowed_sample),

        .psd_valid(psd_valid),
        .psd_data(psd_data),
        .psd_last(psd_last),
        
        .fft_out_data(fft_out_data),
        .fft_out_valid(fft_out_valid),
        .fft_out_last(fft_out_last)
    );

    // File handles
    integer fd_window, fd_psd, fd_fft;
    // integer fd_fft [0:SEGMENTS-1];  // FFT files for each segment
    integer idx_w = 0;
    integer idx_p = 0;
    integer idx_fft [0:SEGMENTS-1];
    integer cur_seg = 0;

    // Initialize FFT indices
    initial begin
        for (int s = 0; s < SEGMENTS; s++) idx_fft[s] = 0;
    end

    // Capture windowed and PSD outputs
    always @(posedge i_adc_dco) begin
        if (out_valid) begin
            $fwrite(fd_window, "%0d,%0d\n", idx_w, windowed_sample);
            idx_w++;
        end
        if (psd_valid) begin
            $fwrite(fd_psd, "%0d,%0d\n", idx_p, psd_data);
            idx_p++;
        end
    end

    // Capture FFT outputs sequentially into 3 segments
    // always @(posedge i_adc_dco) begin
    //     if (fft_out_valid) begin
    //         $fwrite(fd_fft[cur_seg], "%0d,%0d\n", idx_fft[cur_seg], fft_out_data);
    //         idx_fft[cur_seg]++;
    //     end
    //     if (fft_out_last) begin
    //         cur_seg = cur_seg + 1;
    //         if (cur_seg >= SEGMENTS) cur_seg = SEGMENTS-1; // stay at last if more data
    //     end
    // end

    // Stimulus
    initial begin
        // Open files
        fd_window = $fopen("windowed_samples.csv", "w");
        fd_psd    = $fopen("psd_output.csv", "w");
        fd_fft    = $fopen("fft_output.txt", "w");

        // for (int s = 0; s < SEGMENTS; s++) begin
        //     fd_fft[s] = $fopen($sformatf("fft_segment_%0d.csv", s), "w");
        //     $fwrite(fd_fft[s], "index,fft_data\n");
        // end

        // Write headers
        $fwrite(fd_window, "index,windowed_sample\n");
        $fwrite(fd_psd, "index,psd_data\n");

        // Initialize DUT inputs
        start        = 0;
        i_adc_reset  = 1;
        i_adc_mode   = 0;
        i_adc_sample = 0;

        // Release reset
        repeat(5) @(posedge i_adc_dco);
        i_adc_reset = 0;

        // Feed repeated blocks of sine samples
        repeat(NUM_BLOCKS) begin
            for (int i = 0; i < N; i++) begin
                @(posedge i_adc_dco);
                i_adc_sample = $rtoi((2**(SAMPLE_W-2)) * $sin(2*3.14159*10*i/N));
                i_adc_mode   = 1'b1;
            end
        end

        // Close windowed and PSD files
        $fclose(fd_window);
        wait(psd_last);
        @(posedge i_adc_dco);
        $fclose(fd_psd);
        $fclose(fd_fft);

        // Wait for last FFT segment
        // wait(fft_out_last);
        // @(posedge i_adc_dco);
        // for (int s = 0; s < SEGMENTS; s++) $fclose(fd_fft[s]);

        $display("Simulation finished. Data saved to CSV files.");
        $stop;
    end

    always @(posedge i_adc_dco) begin
        if (fft_out_valid) begin
            $fdisplay(fd_fft, "%0d", fft_out_data);
            $fflush(fd_fft);
        end
    end

endmodule

