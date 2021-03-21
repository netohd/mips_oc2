module add(entrada1, entarda2, saida);
    input wire [31:0] entrada1,entarda2; 
    output wire [31:0] saida;

    assign saida = entrada1 + entarda2;

endmodule