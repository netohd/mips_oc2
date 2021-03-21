module IF(clk, reset, hazard, EX_MEM_newPC, EX_MEM_select, IF_ID_instrSaida, IF_ID_newPCout);

	input clk, reset, hazard;
	input [31:0] EX_MEM_newPC;
	input EX_MEM_select;
    output [31:0] IF_ID_instrSaida, IF_ID_newPCout;

    wire [31:0] IF_ID_NewPC;
	wire [6:0] endereco;
	wire [31:0] adc;
	wire [31:0] IF_ID_Inst;

    reg [31:0] PC;
	assign endereco = PC[6:0];
	

	// Faz a leitura da instrução e retorna o endereço
	memoriaInstru IM1 (reset, clk, endereco, IF_ID_Inst);
	
	// Faz a soma +4 no PC e atribui ao adc
	PC_4 soma_4 (PC, adc);
	
	// Mux que faz a seleção do novo pc:
	MUX32b mux1 ((EX_MEM_newPC), adc, EX_MEM_select, IF_ID_NewPC);

	IF_ID if_id (clk, reset, hazard, IF_ID_Inst, IF_ID_NewPC, IF_ID_instrSaida, IF_ID_newPCout);

// Program Counter
always @(posedge clk) begin
        if (reset)
            PC <= 32'h00000000;
        else if (~hazard)
            PC <= IF_ID_NewPC;
    end
endmodule