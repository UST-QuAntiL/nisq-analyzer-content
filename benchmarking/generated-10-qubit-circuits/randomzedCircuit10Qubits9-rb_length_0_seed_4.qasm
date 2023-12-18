OPENQASM 2.0;
include "qelib1.inc";
qreg qr[10];
creg cr[10];
s qr[3];
h qr[3];
s qr[3];
h qr[7];
h qr[8];
h qr[5];
swap qr[7],qr[3];
cx qr[8],qr[7];
cx qr[5],qr[3];
cx qr[7],qr[5];
h qr[5];
cx qr[5],qr[7];
h qr[3];
h qr[8];
h qr[5];
swap qr[4],qr[3];
cx qr[4],qr[8];
cx qr[4],qr[3];
cx qr[4],qr[5];
h qr[5];
cx qr[5],qr[4];
h qr[3];
h qr[8];
cx qr[3],qr[8];
cx qr[5],qr[3];
h qr[5];
y qr[3];
x qr[8];
z qr[4];
z qr[5];
barrier qr[3],qr[7],qr[8],qr[4],qr[5];
s qr[2];
h qr[2];
s qr[6];
h qr[6];
s qr[6];
swap qr[9],qr[6];
cx qr[9],qr[1];
cx qr[2],qr[9];
cx qr[6],qr[9];
h qr[2];
s qr[0];
h qr[0];
cx qr[1],qr[6];
cx qr[0],qr[2];
cx qr[2],qr[6];
cx qr[6],qr[0];
s qr[2];
h qr[2];
s qr[2];
h qr[0];
h qr[1];
swap qr[0],qr[2];
cx qr[0],qr[2];
cx qr[1],qr[0];
h qr[2];
h qr[1];
cx qr[2],qr[1];
h qr[1];
cx qr[1],qr[2];
h qr[1];
y qr[9];
z qr[2];
x qr[6];
barrier qr[9],qr[2],qr[0],qr[1],qr[6];
z qr[5];
z qr[4];
x qr[8];
y qr[3];
h qr[5];
cx qr[5],qr[3];
cx qr[3],qr[8];
h qr[8];
h qr[3];
cx qr[5],qr[4];
h qr[5];
cx qr[4],qr[5];
cx qr[4],qr[3];
cx qr[4],qr[8];
swap qr[4],qr[3];
h qr[5];
h qr[8];
h qr[3];
cx qr[5],qr[7];
h qr[5];
cx qr[7],qr[5];
cx qr[5],qr[3];
cx qr[8],qr[7];
swap qr[7],qr[3];
h qr[5];
h qr[8];
h qr[7];
sdg qr[3];
h qr[3];
sdg qr[3];
x qr[6];
z qr[2];
y qr[9];
h qr[1];
cx qr[1],qr[2];
h qr[1];
cx qr[2],qr[1];
h qr[1];
h qr[2];
cx qr[1],qr[0];
cx qr[0],qr[2];
swap qr[0],qr[2];
h qr[1];
h qr[0];
sdg qr[2];
h qr[2];
sdg qr[2];
cx qr[6],qr[0];
cx qr[2],qr[6];
cx qr[0],qr[2];
cx qr[1],qr[6];
h qr[0];
sdg qr[0];
h qr[2];
cx qr[6],qr[9];
cx qr[2],qr[9];
cx qr[9],qr[1];
swap qr[9],qr[6];
sdg qr[6];
h qr[6];
sdg qr[6];
h qr[2];
sdg qr[2];
measure qr[3] -> cr[0];
measure qr[7] -> cr[1];
measure qr[8] -> cr[2];
measure qr[4] -> cr[3];
measure qr[5] -> cr[4];
measure qr[9] -> cr[5];
measure qr[2] -> cr[6];
measure qr[0] -> cr[7];
measure qr[1] -> cr[8];
measure qr[6] -> cr[9];
