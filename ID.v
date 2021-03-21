


module ID(clk, reset, hazard, instr_IF_ID, newPC_IF_ID, regWrite, writeReg_MEM_WB, writeData_MEM_WB, 
                controlBitsOut, npCount, rdata1Out, rdata2Out, extendOut_S, instrOut2, instrOut1, opCode, rsOut, rtOut, controlBits);  
  input clk, reset;
  input [31:0] instr_IF_ID, newPC_IF_ID, writeData_MEM_WB;
  input [4:0] writeReg_MEM_WB;
  input regWrite, hazard;
  output [8:0] controlBitsOut;
  output [31:0] npCount, rdata1Out, rdata2Out, extendOut_S;
  output [4:0] instrOut2, instrOut1;
  output [5:0] opCode;
  output wire [4:0] rsOut, rtOut;
  wire [4:0] rs, rt;
  wire [15:0] imediato;
  wire [4:0] instr_2, instr_1;
  wire [31:0] read1, read2, sinalEx;
  output wire [8:0] controlBits;

  // Divisão da instrução
  assign opCode = instr_IF_ID[31:26];
  assign rs = instr_IF_ID[25:21];
  assign rt = instr_IF_ID[20:16];
  assign imediato = instr_IF_ID[15:0];
  assign instr_2 = instr_IF_ID[20:16];
  assign instr_1 = instr_IF_ID[15:11];
  
  control control1 (opCode, hazard, controlBits);
  bancoReg reg1 (clk, rs, rt, regWrite, writeReg_MEM_WB, writeData_MEM_WB, read1, read2);
  ExtensorSinal sinal_EX (imediato, sinalEx);
  ID_EX id_ex_pipeline (clk, reset, controlBits, newPC_IF_ID, read1, read2, sinalEx, instr_2, instr_1,rs,rt, // Inputs
                        controlBitsOut, npCount, rdata1Out, rdata2Out, extendOut_S, instrOut2, instrOut1, rsOut, rtOut); // Outputs

endmodule