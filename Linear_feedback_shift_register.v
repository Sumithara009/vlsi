module lfsr(
    input rst,clk,
    output reg [2:0] q
    );
always@(posedge clk or posedge rst)
begin
 if(rst)
 q=3'b100;
 else
 q={q[0],q[1],q[0]^q[2]};
end
endmodule
