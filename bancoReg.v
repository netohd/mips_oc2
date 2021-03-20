module bancoReg (clk, regRead1, regRead2, regW, regWrite, dataWrite, dataRead1, dataRead2);

    //Entradas e saídas do bloco
    input regW;
    input [4:0] regRead1;
    input [4:0] regRead2;
    input [4:0] regWrite;
    input [31:0] dataWrite;
    input clk;

    output [31:0] dataRead1;
    output [31:0] dataRead2;
    //Final da declaração das entradas e saídas

    reg [31:0] regsMem [31:0];
    reg [10:0]i;

    //Inicialização do bloco dos registradores da memória de registradores
    initial begin
        for (i = 0; i < 32; i = i + 1) begin
				regsMem[i] = 32'b000000000000000000000000000000;
		end
    end
    
    always @(posedge clk) begin
		  if(regW)
            regsMem[regWrite] <= dataWrite;
    end
    //Valores sendo atribuídos na saída
        assign dataRead1 = regsMem[regRead1];
        assign dataRead2 = regsMem[regRead2];

endmodule




