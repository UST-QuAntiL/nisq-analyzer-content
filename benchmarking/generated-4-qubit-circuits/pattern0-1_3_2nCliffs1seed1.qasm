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
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[1];
s qr[1];
x qr[1];
sdg qr[0];
sdg qr[3];
y qr[3];
sdg qr[2];
h qr[2];
sdg qr[2];
x qr[2];
measure qr[0] -> cr[0];
measure qr[1] -> cr[1];
measure qr[3] -> cr[2];
measure qr[2] -> cr[3];
