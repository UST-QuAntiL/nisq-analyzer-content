OPENQASM 2.0;
include "qelib1.inc";
qreg qr[4];
creg cr[4];
s qr[0];
x qr[1];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
y qr[3];
s qr[3];
barrier qr[3];
x qr[2];
s qr[2];
h qr[2];
s qr[2];
barrier qr[2];
z qr[0];
h qr[0];
s qr[0];
y qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
barrier qr[0],qr[1];
z qr[3];
s qr[3];
h qr[3];
s qr[3];
barrier qr[3];
barrier qr[2];
x qr[0];
s qr[0];
h qr[0];
s qr[0];
y qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
y qr[3];
s qr[3];
h qr[3];
s qr[3];
barrier qr[3];
s qr[2];
barrier qr[2];
h qr[0];
s qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
x qr[3];
h qr[3];
s qr[3];
barrier qr[3];
y qr[2];
sdg qr[2];
h qr[2];
barrier qr[2];
sdg qr[0];
h qr[0];
x qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
barrier qr[0],qr[1];
x qr[3];
h qr[3];
barrier qr[3];
x qr[2];
s qr[2];
barrier qr[2];
y qr[0];
s qr[0];
y qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
barrier qr[3];
y qr[2];
sdg qr[2];
h qr[2];
barrier qr[2];
z qr[0];
s qr[0];
y qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
s qr[3];
h qr[3];
s qr[3];
barrier qr[3];
z qr[2];
sdg qr[2];
h qr[2];
barrier qr[2];
y qr[0];
x qr[1];
s qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
y qr[3];
barrier qr[3];
y qr[2];
s qr[2];
barrier qr[2];
x qr[0];
y qr[1];
s qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
z qr[3];
h qr[3];
barrier qr[3];
x qr[2];
s qr[2];
barrier qr[2];
x qr[0];
s qr[0];
y qr[1];
h qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
x qr[3];
h qr[3];
s qr[3];
barrier qr[3];
z qr[2];
sdg qr[2];
h qr[2];
barrier qr[2];
y qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[1];
h qr[1];
barrier qr[0],qr[1];
y qr[3];
h qr[3];
barrier qr[3];
y qr[2];
barrier qr[2];
y qr[0];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
barrier qr[0],qr[1];
x qr[3];
barrier qr[3];
y qr[2];
h qr[2];
s qr[2];
barrier qr[2];
z qr[0];
sdg qr[0];
h qr[0];
h qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
barrier qr[0],qr[1];
y qr[3];
barrier qr[3];
y qr[2];
barrier qr[2];
z qr[0];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
x qr[3];
h qr[3];
s qr[3];
barrier qr[3];
y qr[2];
h qr[2];
s qr[2];
barrier qr[2];
z qr[0];
x qr[1];
s qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[1];
h qr[1];
barrier qr[0],qr[1];
x qr[3];
s qr[3];
barrier qr[3];
s qr[2];
barrier qr[2];
y qr[0];
x qr[1];
s qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
z qr[3];
sdg qr[3];
h qr[3];
barrier qr[3];
x qr[2];
s qr[2];
barrier qr[2];
x qr[0];
s qr[0];
y qr[1];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
y qr[3];
sdg qr[3];
h qr[3];
barrier qr[3];
y qr[2];
s qr[2];
barrier qr[2];
x qr[0];
sdg qr[0];
h qr[0];
z qr[1];
h qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
z qr[3];
barrier qr[3];
x qr[2];
h qr[2];
barrier qr[2];
x qr[0];
sdg qr[0];
h qr[0];
x qr[1];
s qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
y qr[3];
h qr[3];
barrier qr[3];
y qr[2];
s qr[2];
h qr[2];
s qr[2];
barrier qr[2];
s qr[0];
h qr[0];
s qr[0];
y qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
sdg qr[3];
h qr[3];
barrier qr[3];
x qr[2];
s qr[2];
barrier qr[2];
x qr[0];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
h qr[3];
s qr[3];
barrier qr[3];
y qr[2];
h qr[2];
s qr[2];
barrier qr[2];
z qr[0];
s qr[0];
h qr[0];
s qr[0];
x qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
barrier qr[3];
y qr[2];
s qr[2];
barrier qr[2];
z qr[0];
h qr[0];
s qr[0];
z qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[1];
h qr[1];
barrier qr[0],qr[1];
y qr[3];
h qr[3];
s qr[3];
barrier qr[3];
h qr[2];
barrier qr[2];
z qr[0];
h qr[0];
s qr[0];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
s qr[3];
barrier qr[3];
sdg qr[2];
h qr[2];
barrier qr[2];
sdg qr[0];
h qr[0];
y qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
sdg qr[1];
h qr[1];
barrier qr[0],qr[1];
y qr[3];
barrier qr[3];
y qr[2];
h qr[2];
s qr[2];
barrier qr[2];
x qr[0];
y qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
x qr[3];
sdg qr[3];
h qr[3];
barrier qr[3];
h qr[2];
s qr[2];
barrier qr[2];
s qr[0];
h qr[0];
s qr[0];
z qr[1];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
y qr[3];
s qr[3];
h qr[3];
s qr[3];
barrier qr[3];
z qr[2];
barrier qr[2];
x qr[0];
h qr[0];
x qr[1];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
s qr[3];
barrier qr[3];
z qr[2];
barrier qr[2];
x qr[0];
h qr[0];
z qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
y qr[3];
s qr[3];
barrier qr[3];
y qr[2];
h qr[2];
s qr[2];
barrier qr[2];
x qr[0];
h qr[0];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
sdg qr[1];
h qr[1];
barrier qr[0],qr[1];
sdg qr[3];
h qr[3];
barrier qr[3];
z qr[2];
h qr[2];
s qr[2];
barrier qr[2];
x qr[0];
h qr[0];
s qr[0];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
x qr[3];
h qr[3];
barrier qr[3];
x qr[2];
h qr[2];
s qr[2];
barrier qr[2];
x qr[0];
s qr[0];
h qr[0];
s qr[0];
x qr[1];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
h qr[3];
s qr[3];
barrier qr[3];
x qr[2];
s qr[2];
barrier qr[2];
y qr[0];
s qr[0];
y qr[1];
s qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
sdg qr[3];
h qr[3];
barrier qr[3];
z qr[2];
h qr[2];
s qr[2];
barrier qr[2];
z qr[0];
s qr[0];
y qr[1];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
y qr[3];
barrier qr[3];
z qr[2];
s qr[2];
barrier qr[2];
x qr[0];
sdg qr[0];
h qr[0];
x qr[1];
sdg qr[1];
h qr[1];
barrier qr[0],qr[1];
z qr[3];
barrier qr[3];
z qr[2];
barrier qr[2];
y qr[0];
s qr[0];
x qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
z qr[3];
s qr[3];
h qr[3];
s qr[3];
barrier qr[3];
y qr[2];
h qr[2];
barrier qr[2];
z qr[0];
sdg qr[0];
h qr[0];
z qr[1];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
barrier qr[0],qr[1];
y qr[3];
sdg qr[3];
h qr[3];
barrier qr[3];
h qr[2];
barrier qr[2];
x qr[0];
h qr[0];
z qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
y qr[3];
h qr[3];
barrier qr[3];
x qr[2];
h qr[2];
s qr[2];
barrier qr[2];
x qr[0];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
y qr[3];
s qr[3];
h qr[3];
s qr[3];
barrier qr[3];
y qr[2];
s qr[2];
barrier qr[2];
z qr[0];
h qr[0];
s qr[0];
z qr[1];
s qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
x qr[3];
h qr[3];
s qr[3];
barrier qr[3];
y qr[2];
s qr[2];
barrier qr[2];
y qr[0];
s qr[0];
h qr[0];
s qr[0];
x qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
y qr[3];
sdg qr[3];
h qr[3];
barrier qr[3];
y qr[2];
sdg qr[2];
h qr[2];
barrier qr[2];
x qr[0];
h qr[0];
z qr[1];
s qr[1];
cx qr[0],qr[1];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
h qr[3];
barrier qr[3];
z qr[2];
h qr[2];
s qr[2];
barrier qr[2];
x qr[0];
h qr[0];
s qr[0];
z qr[1];
h qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
z qr[3];
h qr[3];
s qr[3];
barrier qr[3];
x qr[2];
h qr[2];
barrier qr[2];
z qr[0];
s qr[0];
h qr[0];
s qr[0];
z qr[1];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
x qr[3];
sdg qr[3];
h qr[3];
barrier qr[3];
z qr[2];
h qr[2];
s qr[2];
barrier qr[2];
y qr[0];
s qr[0];
y qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
x qr[3];
h qr[3];
s qr[3];
barrier qr[3];
z qr[2];
barrier qr[2];
z qr[0];
z qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
z qr[3];
sdg qr[3];
h qr[3];
barrier qr[3];
sdg qr[2];
h qr[2];
barrier qr[2];
z qr[0];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
h qr[1];
s qr[1];
cx qr[0],qr[1];
barrier qr[0],qr[1];
y qr[3];
h qr[3];
s qr[3];
barrier qr[3];
z qr[2];
s qr[2];
barrier qr[2];
z qr[0];
h qr[0];
z qr[1];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[1];
s qr[1];
barrier qr[0],qr[1];
x qr[3];
barrier qr[3];
z qr[2];
h qr[2];
barrier qr[2];
h qr[0];
s qr[0];
y qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
barrier qr[0],qr[1];
z qr[3];
h qr[3];
barrier qr[3];
x qr[2];
barrier qr[2];
y qr[0];
h qr[0];
z qr[1];
h qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
barrier qr[0],qr[1];
x qr[3];
h qr[3];
s qr[3];
barrier qr[3];
y qr[2];
sdg qr[2];
h qr[2];
barrier qr[2];
cx qr[0],qr[1];
sdg qr[1];
h qr[1];
h qr[0];
s qr[0];
cx qr[0],qr[1];
sdg qr[1];
y qr[0];
sdg qr[3];
y qr[3];
y qr[2];
measure qr[0] -> cr[0];
measure qr[1] -> cr[1];
measure qr[3] -> cr[2];
measure qr[2] -> cr[3];
