//20L152-SUMITHA R A
module sequencedetector(
    input wire clk,rst,sequence,
    output reg tick
    );
localparam A=2'b00;
localparam B=2'b01;
localparam C=2'b10;
localparam D=2'b11;
reg[1:0]presentState,nextState;
always@(posedge clk,posedge rst)
begin
if(rst)
  presentState<=A;
  else presentState<=nextState;
end
//next state logic
always@(*)
begin
  //default or unassigned state remain same
   presentState=nextState;
	tick=1'b0;
case(presentState)
  A: if(sequence) nextState=B;
     else nextState=A;
  B: begin
     if(sequence) nextState=C;
	   else nextState=A;
		end
  C: begin
     if(sequence) nextState=C;
	   else nextState=D;
		end
  D: if(sequence)begin nextState=B;tick=1'b1;end
	   else nextState=A;
  default:begin
     tick=1'b0;nextState=A;
	  end
endcase
end
endmodule
