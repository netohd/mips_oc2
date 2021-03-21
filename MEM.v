module MEM(clk, reset, controlBits, resultULA, read2, entradaMUX5, saidaControlBits, saidaRead, memALU, regMwrite);
    input clk, reset;
    input [4:0] controlBits, entradaMUX5;
    input [31:0] resultULA, read2;
    output [1:0] saidaControlBits;
    output [31:0] saidaRead, memALU;
    output [4:0] regMwrite;

    wire [31:0] read_data;
    
    memdados datamem (clk, reset, resultULA, read2, controlBits[2], controlBits[3], read_data);

    MEM_WB mem_wb_pipeline (clk, reset, controlBits, read_data, resultULA, entradaMUX5, saidaControlBits, saidaRead, memALU, regMwrite);

endmodule