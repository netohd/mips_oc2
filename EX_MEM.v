module EX_MEM(clk,reset,controlBits, addSaida, zeroULA,
				saidaULA, read, saidaMux, saidaControlBits, addResultado, zero, resultadoULA, saidaRead, saidaMux5b);

input clk, reset;
input[31:0] addSaida, saidaULA, read;
input[4:0]controlBits, saidaMux;
input zeroULA;

output reg [4:0] saidaControlBits, saidaMux5b;
output reg [31:0] addResultado, resultadoULA, saidaRead;
output reg zero;

always @(posedge clk or posedge reset)begin
	if (reset) begin
		saidaControlBits <= 0;
		addResultado <= 0;
		resultadoULA <= 0;
		saidaRead <= 0;
		saidaMux5b <= 0;
		zero <= 0;
	end
	else begin
		saidaControlBits <= controlBits;
		addResultado <= addSaida;
		resultadoULA <= saidaULA;
		saidaRead <= read;
		saidaMux5b <= saidaMux;
		zero <= zeroULA;
	end
end

endmodule





