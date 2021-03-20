module ALU (entradaA, entradaB, ULAcontrol, zero, saida);
    //Entradas e saidas
    input wire [3:0] ULAcontrol;
    input wire [31:0] entradaA,entradaB;
    output reg [31:0] saida;
    output reg zero;
    //Final das entradas e saídas
    always @(ULAcontrol,entradaA,entradaB) begin
        //Verifica qual função deve ser executada.
        case (ULAcontrol)
        0: saida <= entradaA & entradaB; //AND
        1: saida <= entradaA | entradaB; //OR
        2: saida <= entradaA + entradaB; //ADD
        6: saida <= entradaA - entradaB; //SUB
        7: saida <= entradaA < entradaB ? 1 : 0; //SLT
        12: saida <= ~(entradaA | entradaB); // NOR
        default: saida <= 0;
        endcase
    end
    always @(saida) begin
		if (saida == 0)
			zero <= 1;
		else
			zero <= 0;
	end	
endmodule
