module ExtensorSinal(entrada16b,saida32b);

    input wire [15:0] entrada16b;
    output wire [31:0] saida32b;
    
    // Faz a extensão para 32 bits
    assign saida32b = {{16{entrada16b[15]}},entrada16b}; 

endmodule