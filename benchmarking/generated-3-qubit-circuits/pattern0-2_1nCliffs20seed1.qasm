OPENQASM 2.0;
include "qelib1.inc";
qreg qr[3];
creg cr[3];
y qr[0];
s qr[0];
h qr[0];
s qr[0];
h qr[2];
cx qr[0],qr[2];
sdg qr[0];
h qr[0];
h qr[2];
s qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
barrier qr[0],qr[2];
y qr[1];
s qr[1];
barrier qr[1];
x qr[0];
h qr[0];
s qr[0];
x qr[2];
s qr[2];
h qr[2];
s qr[2];
cx qr[0],qr[2];
sdg qr[0];
h qr[0];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
h qr[2];
s qr[2];
barrier qr[0],qr[2];
x qr[1];
h qr[1];
barrier qr[1];
s qr[0];
h qr[0];
s qr[0];
y qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
barrier qr[0],qr[2];
x qr[1];
h qr[1];
barrier qr[1];
x qr[0];
s qr[0];
h qr[0];
s qr[0];
y qr[2];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
h qr[2];
s qr[2];
barrier qr[0],qr[2];
y qr[1];
s qr[1];
h qr[1];
s qr[1];
barrier qr[1];
z qr[0];
sdg qr[0];
h qr[0];
x qr[2];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
barrier qr[0],qr[2];
y qr[1];
sdg qr[1];
h qr[1];
barrier qr[1];
x qr[0];
s qr[0];
y qr[2];
cx qr[0],qr[2];
sdg qr[0];
h qr[0];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
barrier qr[0],qr[2];
x qr[1];
s qr[1];
h qr[1];
s qr[1];
barrier qr[1];
z qr[0];
h qr[0];
s qr[0];
y qr[2];
cx qr[0],qr[2];
barrier qr[0],qr[2];
x qr[1];
h qr[1];
s qr[1];
barrier qr[1];
y qr[0];
sdg qr[0];
h qr[0];
s qr[2];
barrier qr[0],qr[2];
y qr[1];
s qr[1];
barrier qr[1];
z qr[0];
sdg qr[0];
h qr[0];
s qr[2];
cx qr[0],qr[2];
sdg qr[0];
h qr[0];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
h qr[2];
s qr[2];
barrier qr[0],qr[2];
x qr[1];
sdg qr[1];
h qr[1];
barrier qr[1];
y qr[0];
h qr[0];
s qr[0];
x qr[2];
h qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
barrier qr[0],qr[2];
z qr[1];
h qr[1];
barrier qr[1];
x qr[0];
h qr[0];
s qr[0];
y qr[2];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
sdg qr[0];
h qr[0];
sdg qr[2];
h qr[2];
barrier qr[0],qr[2];
z qr[1];
s qr[1];
h qr[1];
s qr[1];
barrier qr[1];
y qr[0];
s qr[0];
h qr[0];
s qr[0];
x qr[2];
cx qr[0],qr[2];
sdg qr[0];
h qr[0];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
h qr[2];
s qr[2];
barrier qr[0],qr[2];
sdg qr[1];
h qr[1];
barrier qr[1];
y qr[0];
s qr[0];
cx qr[0],qr[2];
h qr[0];
s qr[0];
h qr[2];
s qr[2];
cx qr[0],qr[2];
barrier qr[0],qr[2];
x qr[1];
sdg qr[1];
h qr[1];
barrier qr[1];
z qr[0];
h qr[0];
s qr[0];
x qr[2];
s qr[2];
h qr[2];
s qr[2];
cx qr[0],qr[2];
sdg qr[2];
h qr[2];
barrier qr[0],qr[2];
x qr[1];
s qr[1];
barrier qr[1];
z qr[0];
s qr[0];
h qr[0];
s qr[0];
x qr[2];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
sdg qr[2];
h qr[2];
barrier qr[0],qr[2];
z qr[1];
s qr[1];
h qr[1];
s qr[1];
barrier qr[1];
z qr[0];
h qr[0];
s qr[0];
x qr[2];
h qr[2];
cx qr[0],qr[2];
sdg qr[0];
h qr[0];
h qr[2];
s qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
barrier qr[0],qr[2];
z qr[1];
barrier qr[1];
s qr[0];
h qr[0];
s qr[0];
z qr[2];
s qr[2];
h qr[2];
s qr[2];
cx qr[0],qr[2];
barrier qr[0],qr[2];
y qr[1];
s qr[1];
barrier qr[1];
h qr[2];
s qr[2];
cx qr[0],qr[2];
sdg qr[0];
h qr[0];
sdg qr[2];
h qr[2];
barrier qr[0],qr[2];
sdg qr[1];
h qr[1];
barrier qr[1];
s qr[0];
h qr[0];
s qr[0];
z qr[2];
h qr[2];
s qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
barrier qr[0],qr[2];
y qr[1];
barrier qr[1];
y qr[0];
s qr[0];
z qr[2];
cx qr[0],qr[2];
h qr[0];
s qr[0];
sdg qr[2];
h qr[2];
cx qr[0],qr[2];
barrier qr[0],qr[2];
x qr[1];
h qr[1];
barrier qr[1];
sdg qr[0];
h qr[0];
cx qr[0],qr[2];
sdg qr[2];
sdg qr[0];
y qr[0];
sdg qr[1];
h qr[1];
z qr[1];
measure qr[0] -> cr[0];
measure qr[2] -> cr[1];
measure qr[1] -> cr[2];
