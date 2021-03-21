module fowarding (writeRegM, regWriteM, writeRegW, regWriteW, forward_AE, forward_BE, Rs_E, Rt_E,);
input wire regWriteM, regWriteW;
input wire [4:0] writeRegW, writeRegM, Rs_E, Rt_E;
output wire [1:0] forward_AE;
output wire [1:0] forward_BE;

assign forward_AE = ((Rs_E != 0) && (Rs_E == writeRegM) && regWriteM)  ? 2'b10 : // EX/EX
				   (((Rs_E != 0) && (Rs_E == writeRegW) && regWriteW) ? 2'b01 : // MEM/EX
				   0);

assign forward_BE = ((Rt_E != 0) && (Rt_E == writeRegM) && regWriteM)  ? 2'b10 : // EX/EX
				   (((Rt_E != 0) && (Rt_E == writeRegW) && regWriteW) ? 2'b01 : // MEM/EX
				   0);


endmodule