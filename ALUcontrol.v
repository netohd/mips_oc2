module ALUcontrol (ULAOp, funct, ULActrl);
    input wire [1:0] ULAOp;
    input wire [5:0] funct;
    output reg [3:0] ULActrl;
    always@(ULAOp,funct)
    case(ULAOp)
    2'b00: ULActrl <= 4'b0010; 
    2'b01: ULActrl <= 4'b0110;
    2'b11: ULActrl <= 4'b0110;
    default: case(funct)
                      6'b100000 : ULActrl = 4'b0010;
                      6'b100010 : ULActrl = 4'b0110;
                      6'b100100 : ULActrl = 4'b0000;
                      6'b100101 : ULActrl = 4'b0001;
                      6'b101010 : ULActrl = 4'b0111;
        endcase
    endcase
    endmodule