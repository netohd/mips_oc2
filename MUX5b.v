module MUX5b (entrada1, entrada2, seletor, saida);

    input wire [4:0] entrada1, entrada2;
    input wire seletor;
    output [4:0] saida;

    assign saida = seletor ? entrada1 : entrada2;

endmodule