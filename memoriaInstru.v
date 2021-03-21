module memoriaInstru(reset, clk, adress, instr);
	input reset, clk;
    input wire [6:0] adress;
    output [31:0] instr;
    reg [31:0] memoriaInstru [255:0];
    assign instr = memoriaInstru[adress[6:2]];

    always @(posedge reset)
	 begin 
        $readmemb("instrucoes.bin", memoriaInstru);
    end
endmodule