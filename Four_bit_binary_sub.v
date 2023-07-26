//20L152-SUMITHA R A

module binsub(a,b,s,cout);
input [3:0]a;
input [3:0]b;
output [3:0]s;
output cout;
wire c1,c2,c3;
fulladd fa0(a[0],~b[0],1'b1,s[0],c1);
fulladd fa1(a[1],~b[1],c1,s[1],c2);
fulladd fa2(a[2],~b[2],c2,s[2],c3);
fulladd fa3(a[3],~b[3],c3,s[3],cout);
endmodule

module fulladd(
    input a,b,cin,
    output s,co
    );
wire x[2:0];
xor g1(x[0],a,b);
and g2(x[1],a,b);
xor g3(s,x[0],x[1]);
and g4(x[2],x[0],x[1]);
or g5(co,x[2],x[1]);
endmodule




