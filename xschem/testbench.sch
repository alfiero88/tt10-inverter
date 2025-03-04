v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 220 -890 1520 -80 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.9046664e-09
x2=4.3561142e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in
x1.outm
out"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N -490 -200 -490 -160 {
lab=VSS}
N -390 -200 -390 -160 {
lab=VDD}
N -30 -90 -30 -50 {
lab=VDD}
N -30 50 -30 80 {
lab=VSS}
N 130 70 130 100 {
lab=VSS}
N 80 0 180 0 {
lab=#net1}
N 130 0 130 10 {
lab=#net1}
N 240 0 270 0 {
lab=OUT}
N -160 0 -100 0 {
lab=IN}
N -220 0 -160 0 {
lab=IN}
N -280 0 -220 0 {
lab=IN}
N -280 0 -280 60 {
lab=IN}
N -280 120 -280 170 {
lab=VSS}
C {inverter.sym} 50 20 0 0 {name=x1}
C {devices/launcher.sym} -240 -210 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/code.sym} -320 -390 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} -490 -130 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} -390 -130 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} -490 -100 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -390 -100 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -490 -200 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 -200 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -30 -90 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -30 80 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 130 40 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 130 100 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/res.sym} 210 0 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/opin.sym} 270 0 0 0 {name=p6 lab=OUT}
C {devices/simulator_commands_shown.sym} -680 -10 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
tran 100p 50n
write testbench.raw
plot IN OUT
.endc
"}
C {devices/vsource.sym} -280 90 0 0 {name=V3 value= "pwl 0 0 10n 0 10.1n 1.8 20n 1.8 20.1n 0"}
C {devices/lab_wire.sym} -280 170 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -250 0 0 0 {name=p9 sig_type=std_logic lab=IN}
