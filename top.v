module top(hex, clk, reset);
  output [6:0]hex;
  input clk, reset;
  wire [3:0] data;
  counter_four_bits ctr4(.data(data), .clk(clk), .reset(reset));
  seven_segment_decoder ssd(.seg_out(hex), .seg_in(data));
endmodule