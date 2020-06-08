module counter_four_bits(data, clk, reset);
  wire[3:0] d;
  input clk, reset;
  output[3:0] data;
  df d0(data[0], d[0], clk, reset);
  df d1(data[1], d[1], clk, reset);
  df d2(data[2], d[2], clk, reset);
  df d3(data[3], d[3], clk, reset);
  assign d[0] = ~data[0];
  assign d[1] = ~data[1]&data[0] | data[1]&~data[0];
  assign d[2] = ~data[2]&data[1]&data[0] | data[2]&~data[1] | data[2]&~data[0];
  assign d[3] = data[3]&~data[2] | data[3]&~data[1] | data[3]&~data[0] | ~data[3]&data[2]&data[1]&data[0];

endmodule