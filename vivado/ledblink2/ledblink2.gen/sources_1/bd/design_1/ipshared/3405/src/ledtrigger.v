module led_blink101(
    input wire clk,
    output reg led = 1'b0
);

    reg [31:0] counter = 32'd0;

    always @(posedge clk) begin
        if(counter == 32'd50_000_000) begin
            counter <= 32'd0;
            led <= ~led;
        end
        else begin
            counter <= counter + 1'b1;
        end
    end

endmodule