module test_dff;
  reg d, clk, reset;
  wire q;
  dff d1(q, d, clk, reset);
  always #10 clk = ~clk;
  initial
    begin
    clk = 0;reset = 0;d = 0;
    #20 reset = 1;
    #500 $stop;
  end
  always #27 d = ~d;
endmodule