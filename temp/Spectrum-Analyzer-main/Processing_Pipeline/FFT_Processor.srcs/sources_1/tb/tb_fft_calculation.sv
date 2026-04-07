//`timescale 1ns/1ps

//module tb_fft_calculation;

//    // Parameters
//    parameter N = 1024;
//    parameter SAMPLE_W = 16;
//    parameter COEFF_W  = 16;
//    parameter ADDR_W = 10;
//    parameter OUT_W  = 16;
//    parameter DATA_W = 16;

//    // DUT I/O
//    logic clk;
//    logic rst_n;
//    logic signed [SAMPLE_W-1:0] in_sample;
//    logic out_valid;
//    logic signed [OUT_W-1:0] out_sample;
//    logic start;
//    logic signed [31:0] fft_out_data;
//    logic              fft_out_valid;
//    logic              fft_out_last;
//    logic              i_adc_mode;   // add dummy if not used

//    // File handles
//    integer outfile;
//    integer fft_file;

//    // Instantiate DUT
//    fft_calculation #(
//        .N(N),
//        .SAMPLE_W(SAMPLE_W),
//        .COEFF_W(COEFF_W),
//        .ADDR_W(ADDR_W),
//        .OUT_W(OUT_W),
//        .DATA_W(DATA_W)
//    ) dut (
//        .start(start),
//        .i_adc_reset(rst_n),
//        .i_adc_dco(clk),
//        .i_adc_mode(i_adc_mode),
//        .i_adc_sample(in_sample),
//        .out_valid(out_valid),
//        .windowed_sample(out_sample),
//        .fft_out_valid(fft_out_valid),
//        .fft_out_data(fft_out_data),
//        .fft_out_last(fft_out_last)
//    );

//    // Clock generation: 100 MHz
//    initial clk = 0;
//    always #5 clk = ~clk;

//    // Simulation: generate reset and input samples
//    integer i;
//    real amplitude;
//    real pi = 3.141592653589793;
//    real sine_val;
//    initial begin
//        // open output files
//        outfile  = $fopen("flattop_window_output.txt", "w");
//        fft_file = $fopen("fft_output.txt", "w");

//        if (outfile == 0 || fft_file == 0) begin
//            $display("ERROR: Could not open one of the output files.");
//            $finish;
//        end

//        // initialize signals
//        rst_n = 1;
//        in_sample = 0;
//        start = 0;
//        i_adc_mode = 0;

//        // reset pulse
//        #50;
//        rst_n = 0;
//        start = 1;

//        // wait one clk
//        @(posedge clk);

//        // send one frame of N samples as a sine wave
//        amplitude = 1000.0;  // peak amplitude
//        for (i = 0; i < N; i = i + 1) begin
//            @(posedge clk);

//            // sine wave: one full period over N samples
//            sine_val = amplitude * $sin(2.0 * pi * i / N);
//            in_sample <= $rtoi(sine_val);  // convert to integer
//        end

//        // stop input
//        @(posedge clk);
//        in_sample <= 0;

//        // wait a few cycles to let outputs propagate
//        wait(fft_out_last);

//        // close output files
//        $fclose(outfile);
//        $fclose(fft_file);
//        $finish;
//    end

//    // Monitor & log windowed output
//    always @(posedge clk) begin
//        if (out_valid) begin
//            // display to console
//            $display("[%0t] in=%0d  out=%0d", $time, in_sample, out_sample);
//            // log to file
//            $fdisplay(outfile, "%0d %0d", in_sample, out_sample);
//            $fflush(outfile); // flush immediately
//        end
//    end

//    // Monitor & log FFT output
//    always @(posedge clk) begin
//        if (fft_out_valid) begin
//            // log fft data only
//            $fdisplay(fft_file, "%0d", fft_out_data);
//            $fflush(fft_file);
//        end
//    end

//endmodule


`timescale 1ns/1ps

module tb_fft_calculation;

    // Parameters
    parameter N = 1024;
    parameter SAMPLE_W = 14;
    parameter COEFF_W  = 16;
    parameter ADDR_W = 10;
    parameter OUT_W  = 16;
    parameter DATA_W = 16;

    // DUT I/O
    logic clk;
    logic rst_n;
    logic signed [SAMPLE_W-1:0] in_sample;
    logic out_valid;
    logic signed [OUT_W-1:0] out_sample;
    logic start;
    logic signed [31:0] fft_out_data;
    logic              fft_out_valid;
    logic              fft_out_last;
    logic              i_adc_mode;   // add dummy if not used

    // File handles
    integer outfile;
    integer fft_file;

    // Instantiate DUT
    fft_calculation #(
        .N(N),
        .SAMPLE_W(SAMPLE_W),
        .COEFF_W(COEFF_W),
        .ADDR_W(ADDR_W),
        .OUT_W(OUT_W),
        .DATA_W(DATA_W)
    ) dut (
        .start(start),
        .i_adc_reset(rst_n),
        .i_adc_dco(clk),
        .i_adc_mode(i_adc_mode),
        .i_adc_sample(in_sample),
        .out_valid(out_valid),
        .windowed_sample(out_sample),
        .fft_out_valid(fft_out_valid),
        .fft_out_data(fft_out_data),
        .fft_out_last(fft_out_last)
    );

    // Clock generation: 100 MHz
    initial clk = 0;
    always #5 clk = ~clk;

    // Simulation: generate reset and input samples
    integer i;
    real amplitude;
    real pi = 3.141592653589793;
    real sine_val;

    // Sine wave frequency
    real f_sin;   // desired sine wave frequency in Hz
    real T_clk;   // clock period in seconds

    initial begin
        // open output files
        outfile  = $fopen("flattop_window_output.txt", "w");
        fft_file = $fopen("fft_output.txt", "w");

        if (outfile == 0 || fft_file == 0) begin
            $display("ERROR: Could not open one of the output files.");
            $finish;
        end

        // initialize signals
        rst_n = 1;
        in_sample = 0;
        start = 0;
        i_adc_mode = 0;

        // reset pulse
        #50;
        rst_n = 0;
        start = 1;

        // wait one clk
        @(posedge clk);

        // Sine wave setup
        amplitude = 1000.0;  // peak amplitude
        T_clk = 10e-9;       // 10 ns clock period for 100 MHz
        f_sin = 5e6;         // desired sine frequency, e.g., 5 MHz

        // send one frame of N samples as sine wave
        for (i = 0; i < N; i = i + 1) begin
            @(posedge clk);
            sine_val = amplitude * $sin(2.0 * pi * f_sin * i * T_clk);
            in_sample <= $rtoi(sine_val);  // convert to integer
        end

        // stop input
        @(posedge clk);
        in_sample <= 0;
        $fclose(outfile);
        
        // wait until FFT output finishes
        wait(fft_out_last);

        // close output files
        $fclose(fft_file);
        $finish;
    end

    // Monitor & log windowed output
    always @(posedge clk) begin
        if (out_valid) begin
            $display("[%0t] in=%0d  out=%0d", $time, in_sample, out_sample);
            $fdisplay(outfile, "%0d %0d", in_sample, out_sample);
            $fflush(outfile);
        end
    end

    // Monitor & log FFT output
    always @(posedge clk) begin
        if (fft_out_valid) begin
            $fdisplay(fft_file, "%0d", fft_out_data);
            $fflush(fft_file);
        end
    end

endmodule
