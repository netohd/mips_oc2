//Faz a divisão do clock
module clk_div 
#( 
parameter WIDTH = 3, //Tamanho do registrador (largura)
parameter N = 6 //Faz a divisão por 12 (6x2)
)
(
    input wire reset,
    input wire clk,
    output wire clkOut
);
 
    reg [WIDTH-1:0] count;
    reg [WIDTH-1:0] nextCount;
    reg clkTrack;
    reg nextCtrack;
    
    always @(negedge clk) begin
        clkTrack <= nextCtrack;
        count <= nextCount;
    end

    always @(*) begin
        if (reset) begin
            nextCount <= 0;
            nextCtrack  <= 1'b0;
        end else if (count + 1 == N) begin
            nextCount <= 0;
            nextCtrack  <= ~clkTrack;
        end else begin
            nextCount <= count + 1;
            nextCtrack  <= clkTrack;
        end
    end
         
    assign clkOut = clkTrack;
    
endmodule
