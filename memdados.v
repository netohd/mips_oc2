module memdados(clk, reset, address, dataWrite, memWrite, memRead, dataRead);
    input clk, reset, memWrite, memRead;
    input [31:0] address, dataWrite;
    output wire [31:0] dataRead;
    reg	[31:0] memory [255:0];
    assign dataRead = memory[address[31:2]];

    always @(posedge clk) begin
        if (reset) begin
            $readmemh("dados.hex",memory);
        end
		if (memWrite) begin
			memory[address[17:2]] = dataWrite;
        end
    end
endmodule