//20L152-SUMITHA R A

module siso(
    input si,clk,
    output q
    );
wire s0,s1,s2;
Dflipflop dff1(si,clk,s0);
Dflipflop dff2(s0,clk,s1);
Dflipflop dff3(s1,clk,s2);
Dflipflop dff4(s2,clk,q);
endmodule

module Dflipflop(
    input d,clk,
    output reg q,qb
    );
always@(posedge clk)
begin
q=d;
qb=~d;
end
endmodule
