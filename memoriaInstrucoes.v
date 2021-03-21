module memoriaInstrucoes(reset, clk, adress, instr);
	input reset, clk;
    input wire [6:0] adress;
    output [31:0] instr;
    reg [31:0] memoriaInstrucoes [255:0];
    assign instr = memoriaInstrucoes[adress[6:2]];

    always @(posedge reset)
	 begin 
        $readmemb("instrucoes.bin", memoriaInstrucoes);
    end
endmodule