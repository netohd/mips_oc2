transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/clocks.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/7seg.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/WB.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/Pipeline.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/PC_4.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/MUXhazard1.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/MUX32b.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/MUX32.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/MUX5b.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/MUX.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/MIPScomPipeline.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/MEM_WB.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/MEM.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/IF_ID.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/IF.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/ID_EX.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/ID.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/hazard.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/fowarding.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/ExtensorSinal.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/EX_MEM.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/EX.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/control.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/bancoReg.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/ALUcontrol.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/add.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/memoriaInstru.v}
vlog -vlog01compat -work work +incdir+C:/Users/tonin/Desktop/mips_oc2 {C:/Users/tonin/Desktop/mips_oc2/memdados.v}

