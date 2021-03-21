module Pipe (clk , reset, resultExecULA);
	input wire clk, reset;
	output wire [31:0] resultExecULA;
    wire [31:0] IF_ID_IR, IF_ID_NPC, numPcDec, rdataOut1Dec, rdataOut2Dec, extendOutDec; // Decode
    wire [31:0] resultAddExec, rdataOut2Exec; // Execute
    wire [31:0] rdataOutMem, resultMemULA; // Memory
    wire [8:0] controlBitsDec;
    wire [4:0] instrOut2016Dec, instrOut1511Dec, controlBitsExec, muxOut5bExec, MEM_WB_Writereg;
    wire [1:0]  controlBitsMem;
    wire zeroExec, writeReg;
    
    wire EX_MEM_PCSrc;
    wire [5:0] opCode;
    wire [31:0] MEM_WB_Writedata;
    wire [4:0] rs, rt, writeRE;
    wire [1:0] fowardEA, fowardEB; 
    wire [8:0] controlBits;
    wire hazard;

    IF i_f (clk, reset, hazard, resultAddExec, EX_MEM_PCSrc, IF_ID_IR, IF_ID_NPC); 
    ID i_d (clk, reset, hazard, IF_ID_IR, IF_ID_NPC, writeReg, MEM_WB_Writereg, MEM_WB_Writedata,
                            controlBitsDec, numPcDec, rdataOut1Dec, rdataOut2Dec, extendOutDec, instrOut2016Dec, instrOut1511Dec, opCode, rs, rt, controlBits);
    EX execute (clk, reset, controlBitsDec, numPcDec, rdataOut1Dec, rdataOut2Dec, extendOutDec, instrOut2016Dec, instrOut1511Dec, opCode,  fowardEA, fowardEB, MEM_WB_Writedata,
                            controlBitsExec, resultAddExec, zeroExec, resultExecULA, rdataOut2Exec, muxOut5bExec);
    MEM memory (clk, reset, controlBitsExec, resultExecULA, rdataOut2Exec, muxOut5bExec,
                            controlBitsMem, rdataOutMem, resultMemULA, MEM_WB_Writereg);
    WB writeback (controlBitsMem, rdataOutMem, resultMemULA, MEM_WB_Writedata);
    hazard1 hzrd(IF_ID_IR[25:21], IF_ID_IR[20:16], rt, controlBitsDec[3], hazard);
    
    fowarding fwrd(rs, rt, muxOut5bExec, controlBitsExec[1], MEM_WB_Writereg, controlBitsMem[1], fowardEA, fowardEB);

    assign writeReg = controlBitsMem[1];

    assign EX_MEM_PCSrc = zeroExec & controlBitsExec[4];
endmodule