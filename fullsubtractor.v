//20L152-SUMITHA R A
module fullsub(
    input a,b,c,
    output d,bo
    );
wire x[5:0];	 
xor x1(x[0],a,b);
not n1(x[1],a);
and a1(x[2],x[1],b);
xor x2(x[3],x[0],c);
not n2(x[4],x[0]);
and a2(x[5],x[4],c);
or o1(bo,x[5],x[2]);
endmodule

