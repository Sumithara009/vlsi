//20L152-SUMITHA R A

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
