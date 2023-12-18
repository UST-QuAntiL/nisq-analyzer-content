OPENQASM 2.0;
include "qelib1.inc";
qreg qr[10];
creg cr[10];
y qr[6];
h qr[6];
barrier qr[6];
s qr[7];
s qr[1];
s qr[9];
h qr[4];
s qr[3];
cx qr[9],qr[3];
cx qr[9],qr[2];
cx qr[9],qr[4];
h qr[4];
cx qr[4],qr[9];
cx qr[1],qr[7];
cx qr[7],qr[9];
cx qr[9],qr[1];
s qr[7];
h qr[7];
s qr[7];
h qr[1];
h qr[4];
s qr[2];
h qr[2];
s qr[8];
h qr[8];
h qr[5];
swap qr[4],qr[7];
cx qr[4],qr[7];
cx qr[8],qr[4];
cx qr[5],qr[4];
cx qr[4],qr[3];
h qr[3];
cx qr[3],qr[4];
cx qr[2],qr[1];
cx qr[1],qr[4];
cx qr[4],qr[2];
s qr[1];
swap qr[2],qr[7];
cx qr[2],qr[1];
cx qr[3],qr[2];
cx qr[2],qr[5];
h qr[5];
cx qr[5],qr[2];
swap qr[3],qr[7];
cx qr[3],qr[5];
cx qr[8],qr[3];
cx qr[3],qr[1];
h qr[1];
cx qr[1],qr[3];
s qr[7];
h qr[7];
s qr[7];
s qr[1];
h qr[1];
s qr[8];
h qr[8];
s qr[8];
cx qr[7],qr[5];
h qr[5];
cx qr[5],qr[7];
cx qr[8],qr[1];
cx qr[1],qr[7];
cx qr[7],qr[8];
s qr[1];
h qr[1];
h qr[5];
cx qr[1],qr[8];
cx qr[1],qr[5];
h qr[8];
s qr[8];
s qr[5];
swap qr[5],qr[8];
cx qr[5],qr[8];
s qr[8];
y qr[7];
y qr[1];
x qr[9];
x qr[4];
x qr[3];
x qr[8];
y qr[5];
barrier qr[7],qr[1],qr[9],qr[4],qr[3],qr[2],qr[8],qr[5];
z qr[0];
h qr[0];
barrier qr[0];
h qr[6];
y qr[6];
y qr[5];
x qr[8];
x qr[3];
x qr[4];
x qr[9];
y qr[1];
y qr[7];
sdg qr[8];
cx qr[5],qr[8];
swap qr[5],qr[8];
sdg qr[5];
sdg qr[8];
h qr[8];
cx qr[1],qr[5];
cx qr[1],qr[8];
h qr[5];
h qr[1];
sdg qr[1];
cx qr[7],qr[8];
cx qr[1],qr[7];
cx qr[8],qr[1];
cx qr[5],qr[7];
h qr[5];
cx qr[7],qr[5];
sdg qr[8];
h qr[8];
sdg qr[8];
h qr[1];
sdg qr[1];
sdg qr[7];
h qr[7];
sdg qr[7];
cx qr[1],qr[3];
h qr[1];
cx qr[3],qr[1];
cx qr[8],qr[3];
cx qr[3],qr[5];
swap qr[3],qr[7];
cx qr[5],qr[2];
h qr[5];
cx qr[2],qr[5];
cx qr[3],qr[2];
cx qr[2],qr[1];
swap qr[2],qr[7];
sdg qr[1];
cx qr[4],qr[2];
cx qr[1],qr[4];
cx qr[2],qr[1];
cx qr[3],qr[4];
h qr[3];
cx qr[4],qr[3];
cx qr[5],qr[4];
cx qr[8],qr[4];
cx qr[4],qr[7];
swap qr[4],qr[7];
h qr[5];
h qr[8];
sdg qr[8];
h qr[2];
sdg qr[2];
h qr[4];
h qr[1];
sdg qr[7];
h qr[7];
sdg qr[7];
cx qr[9],qr[1];
cx qr[7],qr[9];
cx qr[1],qr[7];
cx qr[4],qr[9];
h qr[4];
cx qr[9],qr[4];
cx qr[9],qr[2];
cx qr[9],qr[3];
sdg qr[3];
h qr[4];
sdg qr[9];
sdg qr[1];
sdg qr[7];
h qr[0];
z qr[0];
measure qr[6] -> cr[0];
measure qr[7] -> cr[1];
measure qr[1] -> cr[2];
measure qr[9] -> cr[3];
measure qr[4] -> cr[4];
measure qr[3] -> cr[5];
measure qr[2] -> cr[6];
measure qr[8] -> cr[7];
measure qr[5] -> cr[8];
measure qr[0] -> cr[9];
