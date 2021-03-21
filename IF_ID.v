module IF_ID (clk, reset, hazard, IF_ID_instr, IF_ID_newPC, IF_ID_instrSaida, IF_ID_newPCout);

    input clk, reset, hazard;
    input [31:0] IF_ID_instr, IF_ID_newPC;
    output reg [31:0] IF_ID_instrSaida, IF_ID_newPCout;

    
    always @(posedge clk) begin
      if (reset) begin
        IF_ID_instrSaida <= 0;
        IF_ID_newPCout <= 0;
      end
      else if (~hazard) begin
        IF_ID_instrSaida <= IF_ID_instr;
        IF_ID_newPCout <= IF_ID_newPC;
      end
    end

endmodule