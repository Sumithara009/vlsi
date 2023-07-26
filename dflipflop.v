//20L152-SUMITHA R A

module Dflipflop(
    input d,clk,
    output q,qb
    );
assign q=d;
assign qb=~d;
endmodule
