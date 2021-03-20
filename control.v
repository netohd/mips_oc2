module control (instr, hazard, controlBits);
    input wire [5:0] instr;
    input wire hazard;
    output reg [8:0] controlBits;
        
        // 0 - Memory to register
        // 1 - Write register
        // 2 - Write memory
        // 3 - Read memory
        // 4 - Branch
        // 5 - ULA Scr
        // 6 - ULA OP
        // 7 - ULA OP
        // 8 - Dst register

    always @(*)
        if(hazard)
            controlBits <= 9'b000000000;
        else 
        case(instr)
            6'b000000       : controlBits <= 9'b110000010;
            6'b100011       : controlBits <= 9'b000101011;
            6'b101011       : controlBits <= 9'b000100100;
            6'b000100       : controlBits <= 9'b001010000;
            default         : controlBits <= 9'b000000000;
        endcase


endmodule