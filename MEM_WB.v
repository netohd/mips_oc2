module MEM_WB(clk, reset, controlBits, read, resultadoULA, escreveReg, saidaControlBits, saidaRead, saidaResultULA, saidaReg);

	input clk, reset;
	input [4:0] controlBits;
	input [31:0] read, resultadoULA;
	input [4:0] escreveReg;
	output reg [31:0] saidaRead;
	output reg [31:0] saidaResultULA;
	output reg [1:0] saidaControlBits;
	output reg [4:0 ]saidaReg;

	always @(posedge clk or posedge reset)begin
		if(reset) begin
			saidaResultULA <= 0;
			saidaControlBits <= 0;
			saidaReg <= 0;
		end
		else begin
			saidaResultULA <= resultadoULA;
			saidaControlBits <= controlBits;
			saidaReg <= escreveReg;
			saidaRead <= read;
		end
	end
	
endmodule	

