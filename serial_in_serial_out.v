//20L152-SUMITHA R A

module siso(d,clk,q);
input d,clk;
output reg [3:0]q;
always@(posedge clk)
begin
q[3]<=d;
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];
end
endmodule

