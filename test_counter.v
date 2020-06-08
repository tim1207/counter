module test_counter;
  wire [3:0] data;
  reg clk, reset;
  counter_four_bits c4(data, clk, reset);
  initial begin
    clk = 0;reset = 0;
    #20 reset = 1;
    #500 $stop;
  end
  always #10 clk = ~clk;
endmodule