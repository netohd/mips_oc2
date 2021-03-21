module WB(controlBits, dataRead, memULA, dataWB);
    input [1:0] controlBits;
    input [31:0] dataRead, memULA;
    output wire [31:0] dataWB;
    
    MUX wbmux (dataRead, memULA, controlBits[0], dataWB);
endmodule