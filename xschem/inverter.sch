v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 90 250 160 {
lab=outm}
N 160 60 210 60 {
lab=in}
N 160 60 160 190 {
lab=in}
N 160 190 210 190 {
lab=in}
N 250 -50 250 30 {
lab=VDD}
N 250 220 250 280 {
lab=VSS}
N 250 190 320 190 {
lab=VSS}
N 320 190 320 240 {
lab=VSS}
N 250 240 320 240 {
lab=VSS}
N 250 60 340 60 {
lab=VDD}
N 340 20 340 60 {
lab=VDD}
N 250 20 340 20 {
lab=VDD}
N 100 120 160 120 {
lab=in}
N 460 60 490 60 {
lab=outm}
N 460 60 460 190 {
lab=outm}
N 460 190 490 190 {
lab=outm}
N 250 120 460 120 {
lab=outm}
N 530 -50 530 30 {
lab=VDD}
N 530 220 530 280 {
lab=VSS}
N 530 90 530 160 {
lab=xxx}
N 530 60 620 60 {
lab=VDD}
N 620 20 620 60 {
lab=VDD}
N 530 20 620 20 {
lab=VDD}
N 530 190 610 190 {
lab=VSS}
N 610 190 610 230 {
lab=VSS}
N 530 230 610 230 {
lab=VSS}
N 530 120 620 120 {
lab=xxx}
C {devices/iopin.sym} 80 -250 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 80 -180 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 230 190 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 230 60 0 0 {name=M2
L=0.35
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} 250 -40 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 250 280 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 100 120 0 0 {name=p5 lab=in}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 510 190 0 0 {name=M3
L=0.15
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 510 60 0 0 {name=M4
L=0.35
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_wire.sym} 530 -50 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 530 280 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 420 120 0 0 {name=p8 sig_type=std_logic lab=outm}
C {devices/opin.sym} 620 120 0 0 {name=p9 lab=OUT}
