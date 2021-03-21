module ID_EX(clk, reset, controlBits, newPC, read1, read2, extensor, instr2, instr1, rs, rt, saidaControlBits, 
			saidaNewPC, saidaRead1, saidaRead2, saidaExtensor, saidaInstr2, saidaInstr1, rsOut, rtOut);

  input clk, reset;
  input [8:0] controlBits;
  input [31:0] read1, read2, extensor, newPC;
  input [4:0] instr2, instr1;
  input [4:0]rs, rt;
  output reg [8:0] saidaControlBits;
  output reg [31:0] saidaNewPC, saidaRead1, saidaRead2, saidaExtensor;
  output reg [4:0] saidaInstr2, saidaInstr1;
  output reg [4:0]rsOut, rtOut;

  always @(posedge clk) begin
    if (reset) begin
      saidaControlBits <= 0;
      saidaNewPC <= 0;
      saidaInstr2 <= 0;
      saidaInstr1 <= 0;
      saidaRead1 <= 0;
      saidaRead2 <= 0;
      saidaExtensor <= 0;
      rsOut <= 0;
      rtOut <= 0;

    end
    else begin
      saidaControlBits <= controlBits;
      saidaNewPC <= newPC;
      saidaInstr2 <= instr2;
      saidaInstr1 <= instr1;
      saidaRead1 <= read1;
      saidaRead2 <= read2;
      saidaExtensor <= extensor;
      rsOut <= rs;
      rtOut <= rt;
    end
  end

endmodule