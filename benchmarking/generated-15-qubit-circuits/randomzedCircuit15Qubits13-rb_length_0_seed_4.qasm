OPENQASM 2.0;
include "qelib1.inc";
qreg qr[15];
creg cr[15];
h qr[9];
s qr[9];
s qr[4];
h qr[4];
s qr[14];
s qr[3];
h qr[3];
swap qr[14],qr[9];
cx qr[4],qr[14];
cx qr[3],qr[14];
cx qr[14],qr[9];
h qr[9];
cx qr[9],qr[14];
h qr[9];
h qr[3];
swap qr[4],qr[9];
cx qr[4],qr[3];
s qr[9];
h qr[9];
h qr[3];
swap qr[3],qr[9];
cx qr[9],qr[3];
s qr[9];
h qr[9];
z qr[9];
y qr[4];
z qr[14];
barrier qr[9],qr[4],qr[14],qr[3];
y qr[8];
h qr[8];
x qr[0];
s qr[0];
z qr[1];
s qr[1];
h qr[1];
s qr[1];
cx qr[0],qr[1];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
cx qr[8],qr[0];
sdg qr[8];
h qr[8];
h qr[0];
s qr[0];
h qr[1];
s qr[1];
cx qr[8],qr[1];
barrier qr[8],qr[0],qr[1];
s qr[6];
s qr[5];
h qr[11];
h qr[13];
swap qr[11],qr[6];
cx qr[13],qr[11];
cx qr[5],qr[6];
cx qr[11],qr[5];
h qr[5];
cx qr[5],qr[11];
h qr[6];
h qr[5];
swap qr[13],qr[6];
cx qr[13],qr[5];
h qr[6];
s qr[6];
h qr[5];
swap qr[5],qr[6];
cx qr[5],qr[6];
h qr[6];
cx qr[6],qr[5];
x qr[6];
x qr[5];
y qr[13];
barrier qr[6],qr[5],qr[11],qr[13];
x qr[7];
h qr[7];
cx qr[2],qr[7];
sdg qr[2];
h qr[2];
sdg qr[7];
h qr[7];
cx qr[2],qr[7];
barrier qr[2],qr[7];
x qr[10];
x qr[12];
s qr[12];
h qr[12];
s qr[12];
cx qr[10],qr[12];
sdg qr[10];
h qr[10];
sdg qr[12];
h qr[12];
cx qr[10],qr[12];
h qr[12];
s qr[12];
barrier qr[10],qr[12];
s qr[9];
s qr[14];
s qr[3];
swap qr[3],qr[9];
cx qr[3],qr[4];
cx qr[14],qr[9];
cx qr[3],qr[14];
h qr[14];
cx qr[14],qr[3];
s qr[9];
s qr[4];
cx qr[9],qr[4];
swap qr[14],qr[4];
cx qr[14],qr[4];
h qr[4];
cx qr[4],qr[14];
s qr[4];
h qr[4];
x qr[14];
x qr[3];
barrier qr[9],qr[4],qr[14],qr[3];
z qr[8];
h qr[8];
x qr[0];
s qr[0];
h qr[0];
s qr[0];
z qr[1];
sdg qr[1];
h qr[1];
cx qr[8],qr[1];
h qr[8];
s qr[8];
cx qr[8],qr[0];
h qr[8];
s qr[8];
sdg qr[0];
h qr[0];
sdg qr[1];
h qr[1];
cx qr[0],qr[1];
h qr[0];
s qr[0];
cx qr[8],qr[0];
h qr[1];
s qr[1];
barrier qr[8],qr[0],qr[1];
s qr[6];
h qr[6];
s qr[5];
h qr[5];
h qr[11];
swap qr[13],qr[6];
cx qr[5],qr[13];
cx qr[11],qr[13];
h qr[6];
s qr[11];
swap qr[11],qr[6];
cx qr[11],qr[5];
cx qr[11],qr[6];
s qr[6];
swap qr[5],qr[6];
h qr[6];
x qr[6];
y qr[5];
y qr[11];
z qr[13];
barrier qr[6],qr[5],qr[11],qr[13];
x qr[2];
y qr[7];
s qr[7];
cx qr[2],qr[7];
barrier qr[2],qr[7];
z qr[10];
h qr[10];
x qr[12];
h qr[12];
s qr[12];
cx qr[10],qr[12];
h qr[10];
s qr[10];
sdg qr[12];
h qr[12];
cx qr[10],qr[12];
barrier qr[10],qr[12];
x qr[3];
x qr[14];
y qr[9];
cx qr[9],qr[4];
swap qr[4],qr[9];
h qr[4];
h qr[9];
sdg qr[9];
cx qr[4],qr[3];
h qr[4];
cx qr[3],qr[4];
cx qr[4],qr[9];
swap qr[3],qr[9];
h qr[3];
sdg qr[4];
sdg qr[9];
h qr[9];
cx qr[14],qr[3];
cx qr[4],qr[14];
cx qr[3],qr[4];
cx qr[9],qr[14];
h qr[9];
cx qr[14],qr[9];
swap qr[14],qr[9];
sdg qr[14];
sdg qr[4];
h qr[4];
sdg qr[4];
sdg qr[9];
h qr[9];
cx qr[8],qr[0];
cx qr[8],qr[1];
sdg qr[1];
h qr[1];
h qr[0];
s qr[0];
h qr[8];
s qr[8];
cx qr[8],qr[0];
cx qr[8],qr[1];
h qr[1];
s qr[1];
sdg qr[8];
h qr[8];
cx qr[8],qr[1];
h qr[1];
h qr[0];
s qr[0];
z qr[0];
sdg qr[8];
z qr[8];
y qr[13];
z qr[11];
y qr[5];
x qr[6];
sdg qr[11];
h qr[11];
cx qr[11],qr[5];
h qr[11];
cx qr[5],qr[11];
sdg qr[11];
sdg qr[5];
cx qr[6],qr[11];
cx qr[6],qr[5];
sdg qr[11];
cx qr[13],qr[6];
cx qr[13],qr[5];
swap qr[13],qr[6];
sdg qr[6];
h qr[6];
sdg qr[6];
sdg qr[7];
h qr[7];
cx qr[2],qr[7];
h qr[7];
s qr[7];
sdg qr[2];
h qr[2];
cx qr[2],qr[7];
h qr[7];
s qr[7];
x qr[7];
sdg qr[2];
y qr[2];
sdg qr[12];
h qr[12];
sdg qr[10];
h qr[10];
cx qr[10],qr[12];
h qr[12];
h qr[10];
s qr[10];
x qr[10];
measure qr[9] -> cr[0];
measure qr[4] -> cr[1];
measure qr[14] -> cr[2];
measure qr[3] -> cr[3];
measure qr[8] -> cr[4];
measure qr[0] -> cr[5];
measure qr[1] -> cr[6];
measure qr[6] -> cr[7];
measure qr[5] -> cr[8];
measure qr[11] -> cr[9];
measure qr[13] -> cr[10];
measure qr[2] -> cr[11];
measure qr[7] -> cr[12];
measure qr[10] -> cr[13];
measure qr[12] -> cr[14];
