
module EX(clk, reset, controlBits, newpc, read1, read2, extensor, instr2, instr1, opcode, forwardA, forwardB, resultW,
                 saidaControlBits, addResult, zero, ulaResult, rData2Out, saidaMux5b);

  input clk, reset;
  input [1:0] forwardB, forwardA;
  input [31:0] resultW;
  input [8:0] controlBits;
  input [31:0] newpc, read1, read2, extensor;
  input [4:0] instr2, instr1;
  input [5:0] opcode;
  output [4:0] saidaControlBits, saidaMux5b;
  output [31:0] addResult, ulaResult, rData2Out;
  output zero;

  wire [31:0] saidaAdd, saidaMux32, saidaAlu;
  wire [4:0] saidaMux5;
  wire [3:0] select;
  wire [31:0] saidaShift;
  wire [31:0] fowardOutA, dataWriteFW;
  wire saidaZero;


  add soma (newpc, (extensor << 2), saidaAdd);                       
  ALUcontrol alucontrol (controlBits[7:6], extensor[5:0], select);  
  ALU alu1 (fowardOutA, saidaMux32, select, saidaZero, saidaAlu);  
  MUX5b mux5_1 (instr1, instr2, controlBits[8], saidaMux5);
  MUX32 Mux32_2 (extensor, dataWriteFW, controlBits[5], saidaMux32);
  MUXhazard1 Mux32_3inA (read1, resultW, ulaResult, forwardA, fowardOutA);
  MUXhazard1 Mux32_3inB (read2, resultW, ulaResult, forwardB, dataWriteFW);  
  EX_MEM ex_mem_pipeline (clk, reset, controlBits[4:0], saidaAdd, saidaZero, saidaAlu, read2, saidaMux5,      
                          saidaControlBits, addResult, zero, ulaResult, rData2Out, saidaMux5b);

endmodule