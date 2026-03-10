module fir_tb;

reg clk;
reg reset;
reg signed [7:0] x_in;
wire signed [15:0] y_out;

fir_filter uut(
    .clk(clk),
    .reset(reset),
    .x_in(x_in),
    .y_out(y_out)
);

// Clock
always #5 clk = ~clk;

initial
begin
clk = 0;
reset = 1;
x_in = 0;

#10 reset = 0;

// Input samples
#10 x_in = 1;
#10 x_in = 2;
#10 x_in = 3;
#10 x_in = 4;
#10 x_in = 5;
#10 x_in = 6;
#10 x_in = 7;
#10 x_in = 8;

#100 $finish;
end

initial
begin
$monitor("Time=%0t | Input=%d | Output=%d", $time, x_in, y_out);
end

endmodule
