module clock_divider #(
    parameter DIVIDE_BIT = 25   // Change this if blink is too fast/slow
)(
    input  wire i_adc_clk,      // ADC clock (expected ~80 MHz)
    input  wire i_reset,        // Active-high reset
    output wire o_led            // Connect to board LED
);

    // Counter for clock division
    reg [26:0] r_clk_div;

    // Reset + clocked counter
    always @(posedge i_adc_clk or posedge i_reset) begin
        if (i_reset) begin
            r_clk_div <= 27'd0;
        end else begin
            r_clk_div <= r_clk_div + 1'b1;
        end
    end

    // Select one bit to blink LED
    assign o_led = r_clk_div[DIVIDE_BIT];

endmodule
