interface intf (input bit clock);
logic rst;
logic ren;
logic wen;
logic [15:0] din;
logic [15:0] dout;
logic full;
logic empty;

clocking cb @(posedge clock);
output rst, ren,wen, din;
input dout, full, empty;
endclocking

modport TB (clocking cb, output rst);
endinterface
