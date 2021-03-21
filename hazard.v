module hazard1 (Rs_D, Rt_D, Rt_E, readMem, hazard);

input wire [4:0] Rs_D; 
input wire [4:0] Rt_D;
input wire [4:0] Rt_E;
input wire readMem;

output wire hazard;

assign hazard = readMem & (Rt_E != 0) & ((Rt_E == Rs_D) | (Rt_E == Rt_D));
endmodule