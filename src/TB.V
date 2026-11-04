`timescale 1ns / 1ps

module led_blink101_tb;

    // Inputs
    reg clk;

    // Outputs
    wire led;

    // Instantiate the Unit Under Test (UUT)
    led_blink101 uut (
        .clk(clk),
        .led(led)
    );

    // Clock generation: 100MHz (10ns period)
    initial clk = 0;
    always #5 clk = ~clk;

    // Test stimulus
    initial begin
        $dumpfile("led_blink101_tb.vcd");
        $dumpvars(0, led_blink101_tb);

        $display("Starting simulation...");

        // 50 cycles * 10ns = 500ns per toggle (fast for simulation)
        // !! Remember to change counter back to 50_000_000 for real hardware !!
        repeat(220) @(posedge clk);  // 4 full toggles

        $display("Simulation complete. Final LED state: %b", led);
        $finish;
    end

    // Monitor every LED toggle
    initial begin
        $monitor("Time=%0t ns | led=%b", $time, led);
    end

endmodule