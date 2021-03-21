module MUXhazard2 (entrada1, entrada2, entrada3, seletor, saida);

    input wire [31:0] entrada1, entrada2, entrada3;
    input wire [1:0] seletor;
    output wire [31:0] saida;
	
    assign saida = (seletor == 0) ? entrada1 : ((seletor == 2'b01) ? entrada2 : entrada3);
endmodule