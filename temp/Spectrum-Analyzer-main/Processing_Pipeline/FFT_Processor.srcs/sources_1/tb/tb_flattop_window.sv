`timescale 1ns/1ps

module tb_flattop_window;

    // Parameters
    localparam N         = 1024;
    localparam SAMPLE_W  = 14;
    localparam COEFF_W   = 16;
    localparam OUT_W     = 16;
    localparam PROD_W    = SAMPLE_W + COEFF_W;

    // DUT I/O
    logic clk;
    logic rst_n;
    logic signed [SAMPLE_W-1:0] in_sample;
    logic out_valid;
    logic signed [OUT_W-1:0] out_sample;

    // File handle
    integer outfile;

    // Instantiate DUT
    flattop_window #(
        .N(N),
        .SAMPLE_W(SAMPLE_W),
        .COEFF_W(COEFF_W),
        .PROD_W(PROD_W)
    ) dut (
        .i_adc_dco(clk),
        .i_adc_reset(rst_n),
        .i_adc_sample(in_sample),
        .out_valid(out_valid),
        .windowed_sample(out_sample)
    );

    // Clock generation: 100 MHz
    initial clk = 0;
    always #5 clk = ~clk;

    // Simulation: generate reset and input samples
    integer i;
    real amplitude;
    real pi = 3.141592653589793;
    real sine_val;
    initial begin
        // open output file
        outfile = $fopen("flattop_window_output.txt", "w");
        if (outfile == 0) begin
            $display("ERROR: Could not open output file.");
            $finish;
        end

        // initialize signals
        rst_n = 1;
        in_sample = 0;

        // reset pulse
        #50;
        rst_n = 0;

        // wait one clk
        @(posedge clk);

        // send one frame of N samples as a sine wave
        amplitude = 1000.0;  // peak amplitude
        for (i = 0; i < N; i = i + 1) begin
            @(posedge clk);

            // sine wave: one full period over N samples
            sine_val = amplitude * $sin(2.0 * pi * i / N);
            in_sample <= $rtoi(sine_val);  // convert to integer
        end

        // stop input
        @(posedge clk);
        in_sample <= 0;

        // wait a few cycles to let outputs propagate
        #200;

        // close output file
        $fclose(outfile);
        $finish;
    end

    // Monitor & log to file
    always @(posedge clk) begin
        if (out_valid) begin
            // display to console
            $display("[%0t] in=%0d  out=%0d", $time, in_sample, out_sample);
            // log to file
            $fdisplay(outfile, "%0d %0d", in_sample, out_sample);
            $fflush(outfile); // flush immediately
        end
    end

endmodule

