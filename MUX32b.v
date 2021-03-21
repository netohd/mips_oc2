module MUX32b (entrada1,entrada2,seletor,saida);

    input wire [31:0] entrada1, entrada2;
    input wire seletor;
    output [31:0] saida;
    assign saida = seletor ? entrada1 : entrada2;
endmodule