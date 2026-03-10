module fir_filter(
    input clk,
    input reset,
    input signed [7:0] x_in,
    output reg signed [15:0] y_out
);

// Filter coefficients
parameter h0 = 1;
parameter h1 = 2;
parameter h2 = 3;
parameter h3 = 4;

// Delay registers
reg signed [7:0] x1, x2, x3;

// Multiplication results
wire signed [15:0] m0, m1, m2, m3;

// Multiply input samples with coefficients
assign m0 = x_in * h0;
assign m1 = x1 * h1;
assign m2 = x2 * h2;
assign m3 = x3 * h3;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        x1 <= 0;
        x2 <= 0;
        x3 <= 0;
        y_out <= 0;
    end
    else
    begin
        // Shift register
        x3 <= x2;
        x2 <= x1;
        x1 <= x_in;

        // FIR equation
        y_out <= m0 + m1 + m2 + m3;
    end
end

endmodule
