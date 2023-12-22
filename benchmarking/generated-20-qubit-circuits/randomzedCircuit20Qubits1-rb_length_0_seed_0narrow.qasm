OPENQASM 2.0;
include "qelib1.inc";
qreg qr[21];
creg cr[21];
y qr[0];
h qr[0];
s qr[0];
z qr[3];
h qr[3];
s qr[3];
cx qr[0],qr[3];
barrier qr[0],qr[3];
y qr[1];
s qr[1];
barrier qr[1];
y qr[2];
barrier qr[2];
z qr[4];
barrier qr[4];
z qr[7];
s qr[7];
h qr[7];
s qr[7];
barrier qr[7];
s qr[5];
h qr[5];
s qr[5];
barrier qr[5];
z qr[6];
s qr[6];
h qr[6];
s qr[6];
barrier qr[6];
h qr[8];
s qr[8];
barrier qr[8];
y qr[9];
s qr[9];
barrier qr[9];
y qr[10];
s qr[10];
barrier qr[10];
y qr[11];
h qr[11];
s qr[11];
barrier qr[11];
x qr[12];
s qr[12];
barrier qr[12];
x qr[13];
s qr[13];
h qr[13];
s qr[13];
barrier qr[13];
x qr[14];
s qr[14];
barrier qr[14];
z qr[15];
h qr[15];
barrier qr[15];
x qr[16];
h qr[16];
s qr[16];
y qr[19];
cx qr[16],qr[19];
h qr[16];
s qr[16];
h qr[19];
s qr[19];
cx qr[16],qr[19];
barrier qr[16],qr[19];
x qr[17];
h qr[18];
s qr[18];
cx qr[17],qr[18];
sdg qr[17];
h qr[17];
h qr[18];
s qr[18];
barrier qr[17],qr[18];
z qr[20];
s qr[20];
h qr[20];
s qr[20];
barrier qr[20];
s qr[0];
h qr[0];
s qr[0];
y qr[3];
sdg qr[3];
h qr[3];
cx qr[0],qr[3];
sdg qr[0];
h qr[0];
sdg qr[3];
h qr[3];
barrier qr[0],qr[3];
x qr[1];
sdg qr[1];
h qr[1];
barrier qr[1];
x qr[2];
s qr[2];
h qr[2];
s qr[2];
barrier qr[2];
z qr[4];
h qr[4];
barrier qr[4];
x qr[7];
h qr[7];
s qr[7];
barrier qr[7];
sdg qr[5];
h qr[5];
barrier qr[5];
s qr[6];
barrier qr[6];
z qr[8];
barrier qr[8];
x qr[9];
s qr[9];
h qr[9];
s qr[9];
barrier qr[9];
h qr[10];
s qr[10];
barrier qr[10];
z qr[11];
h qr[11];
barrier qr[11];
y qr[12];
h qr[12];
barrier qr[12];
z qr[13];
s qr[13];
h qr[13];
s qr[13];
barrier qr[13];
barrier qr[14];
x qr[15];
sdg qr[15];
h qr[15];
barrier qr[15];
h qr[16];
s qr[16];
y qr[19];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
h qr[16];
s qr[16];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
h qr[19];
s qr[19];
barrier qr[16],qr[19];
y qr[17];
s qr[17];
h qr[17];
s qr[17];
cx qr[17],qr[18];
h qr[17];
s qr[17];
h qr[18];
s qr[18];
cx qr[17],qr[18];
barrier qr[17],qr[18];
h qr[20];
s qr[20];
barrier qr[20];
z qr[0];
s qr[0];
h qr[0];
s qr[0];
x qr[3];
cx qr[0],qr[3];
sdg qr[0];
h qr[0];
sdg qr[3];
h qr[3];
cx qr[0],qr[3];
h qr[0];
s qr[0];
h qr[3];
s qr[3];
cx qr[0],qr[3];
barrier qr[0],qr[3];
y qr[1];
barrier qr[1];
z qr[2];
h qr[2];
barrier qr[2];
sdg qr[4];
h qr[4];
barrier qr[4];
z qr[7];
barrier qr[7];
z qr[5];
barrier qr[5];
x qr[6];
s qr[6];
h qr[6];
s qr[6];
barrier qr[6];
x qr[8];
sdg qr[8];
h qr[8];
barrier qr[8];
x qr[9];
barrier qr[9];
barrier qr[10];
sdg qr[11];
h qr[11];
barrier qr[11];
s qr[12];
h qr[12];
s qr[12];
barrier qr[12];
y qr[13];
barrier qr[13];
z qr[14];
sdg qr[14];
h qr[14];
barrier qr[14];
y qr[15];
s qr[15];
h qr[15];
s qr[15];
barrier qr[15];
s qr[16];
x qr[19];
s qr[19];
cx qr[16],qr[19];
sdg qr[16];
h qr[16];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
h qr[19];
s qr[19];
barrier qr[16],qr[19];
y qr[17];
sdg qr[17];
h qr[17];
z qr[18];
s qr[18];
cx qr[17],qr[18];
barrier qr[17],qr[18];
h qr[20];
barrier qr[20];
y qr[0];
s qr[0];
h qr[0];
s qr[0];
y qr[3];
h qr[3];
barrier qr[0],qr[3];
sdg qr[1];
h qr[1];
barrier qr[1];
x qr[2];
h qr[2];
s qr[2];
barrier qr[2];
z qr[4];
h qr[4];
s qr[4];
barrier qr[4];
h qr[7];
s qr[7];
barrier qr[7];
s qr[5];
h qr[5];
s qr[5];
barrier qr[5];
sdg qr[6];
h qr[6];
barrier qr[6];
y qr[8];
h qr[8];
barrier qr[8];
x qr[9];
s qr[9];
barrier qr[9];
x qr[10];
s qr[10];
barrier qr[10];
y qr[11];
s qr[11];
h qr[11];
s qr[11];
barrier qr[11];
z qr[12];
sdg qr[12];
h qr[12];
barrier qr[12];
h qr[13];
s qr[13];
barrier qr[13];
z qr[14];
barrier qr[14];
barrier qr[15];
sdg qr[16];
h qr[16];
z qr[19];
h qr[19];
cx qr[16],qr[19];
sdg qr[16];
h qr[16];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
barrier qr[16],qr[19];
x qr[17];
z qr[18];
sdg qr[18];
h qr[18];
cx qr[17],qr[18];
h qr[17];
s qr[17];
sdg qr[18];
h qr[18];
cx qr[17],qr[18];
barrier qr[17],qr[18];
z qr[20];
h qr[20];
s qr[20];
barrier qr[20];
y qr[0];
sdg qr[0];
h qr[0];
y qr[3];
h qr[3];
s qr[3];
cx qr[0],qr[3];
h qr[0];
s qr[0];
barrier qr[0],qr[3];
x qr[1];
barrier qr[1];
s qr[2];
barrier qr[2];
h qr[4];
barrier qr[4];
x qr[7];
h qr[7];
barrier qr[7];
s qr[5];
h qr[5];
s qr[5];
barrier qr[5];
x qr[6];
s qr[6];
barrier qr[6];
y qr[8];
barrier qr[8];
y qr[9];
s qr[9];
h qr[9];
s qr[9];
barrier qr[9];
z qr[10];
sdg qr[10];
h qr[10];
barrier qr[10];
h qr[11];
s qr[11];
barrier qr[11];
x qr[12];
barrier qr[12];
x qr[13];
s qr[13];
barrier qr[13];
z qr[14];
barrier qr[14];
z qr[15];
sdg qr[15];
h qr[15];
barrier qr[15];
z qr[16];
s qr[16];
h qr[16];
s qr[16];
s qr[19];
h qr[19];
s qr[19];
cx qr[16],qr[19];
sdg qr[16];
h qr[16];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
h qr[19];
s qr[19];
barrier qr[16],qr[19];
s qr[17];
h qr[18];
cx qr[17],qr[18];
sdg qr[17];
h qr[17];
h qr[18];
s qr[18];
cx qr[17],qr[18];
h qr[17];
s qr[17];
barrier qr[17],qr[18];
z qr[20];
sdg qr[20];
h qr[20];
barrier qr[20];
x qr[0];
s qr[0];
y qr[3];
s qr[3];
h qr[3];
s qr[3];
cx qr[0],qr[3];
h qr[0];
s qr[0];
sdg qr[3];
h qr[3];
cx qr[0],qr[3];
barrier qr[0],qr[3];
s qr[1];
h qr[1];
s qr[1];
barrier qr[1];
h qr[2];
barrier qr[2];
x qr[4];
h qr[4];
barrier qr[4];
sdg qr[7];
h qr[7];
barrier qr[7];
h qr[5];
barrier qr[5];
z qr[6];
s qr[6];
barrier qr[6];
x qr[8];
sdg qr[8];
h qr[8];
barrier qr[8];
x qr[9];
barrier qr[9];
s qr[10];
h qr[10];
s qr[10];
barrier qr[10];
y qr[11];
s qr[11];
barrier qr[11];
y qr[12];
sdg qr[12];
h qr[12];
barrier qr[12];
x qr[13];
sdg qr[13];
h qr[13];
barrier qr[13];
h qr[14];
s qr[14];
barrier qr[14];
z qr[15];
sdg qr[15];
h qr[15];
barrier qr[15];
y qr[16];
sdg qr[16];
h qr[16];
x qr[19];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
h qr[16];
s qr[16];
h qr[19];
s qr[19];
cx qr[16],qr[19];
barrier qr[16],qr[19];
y qr[17];
h qr[17];
y qr[18];
h qr[18];
s qr[18];
cx qr[17],qr[18];
sdg qr[17];
h qr[17];
sdg qr[18];
h qr[18];
cx qr[17],qr[18];
h qr[18];
s qr[18];
barrier qr[17],qr[18];
x qr[20];
sdg qr[20];
h qr[20];
barrier qr[20];
x qr[0];
y qr[3];
s qr[3];
cx qr[0],qr[3];
h qr[0];
s qr[0];
h qr[3];
s qr[3];
barrier qr[0],qr[3];
y qr[1];
s qr[1];
h qr[1];
s qr[1];
barrier qr[1];
x qr[2];
s qr[2];
barrier qr[2];
x qr[4];
h qr[4];
barrier qr[4];
s qr[7];
h qr[7];
s qr[7];
barrier qr[7];
z qr[5];
s qr[5];
barrier qr[5];
x qr[6];
barrier qr[6];
x qr[8];
sdg qr[8];
h qr[8];
barrier qr[8];
y qr[9];
s qr[9];
barrier qr[9];
h qr[10];
barrier qr[10];
x qr[11];
h qr[11];
barrier qr[11];
x qr[12];
s qr[12];
barrier qr[12];
y qr[13];
s qr[13];
h qr[13];
s qr[13];
barrier qr[13];
x qr[14];
h qr[14];
s qr[14];
barrier qr[14];
x qr[15];
h qr[15];
s qr[15];
barrier qr[15];
z qr[16];
sdg qr[16];
h qr[16];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
h qr[16];
s qr[16];
sdg qr[19];
h qr[19];
barrier qr[16],qr[19];
y qr[17];
sdg qr[17];
h qr[17];
z qr[18];
s qr[18];
cx qr[17],qr[18];
sdg qr[17];
h qr[17];
barrier qr[17],qr[18];
z qr[20];
s qr[20];
h qr[20];
s qr[20];
barrier qr[20];
z qr[0];
sdg qr[0];
h qr[0];
z qr[3];
h qr[3];
s qr[3];
cx qr[0],qr[3];
sdg qr[0];
h qr[0];
sdg qr[3];
h qr[3];
cx qr[0],qr[3];
h qr[3];
s qr[3];
barrier qr[0],qr[3];
s qr[1];
barrier qr[1];
h qr[2];
barrier qr[2];
barrier qr[4];
s qr[7];
h qr[7];
s qr[7];
barrier qr[7];
y qr[5];
s qr[5];
barrier qr[5];
s qr[6];
h qr[6];
s qr[6];
barrier qr[6];
x qr[8];
s qr[8];
barrier qr[8];
s qr[9];
barrier qr[9];
x qr[10];
h qr[10];
s qr[10];
barrier qr[10];
x qr[11];
s qr[11];
h qr[11];
s qr[11];
barrier qr[11];
y qr[12];
h qr[12];
s qr[12];
barrier qr[12];
sdg qr[13];
h qr[13];
barrier qr[13];
barrier qr[14];
s qr[15];
h qr[15];
s qr[15];
barrier qr[15];
x qr[16];
h qr[16];
y qr[19];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
h qr[16];
s qr[16];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
h qr[19];
s qr[19];
barrier qr[16],qr[19];
x qr[17];
s qr[17];
x qr[18];
h qr[18];
s qr[18];
cx qr[17],qr[18];
sdg qr[17];
h qr[17];
sdg qr[18];
h qr[18];
cx qr[17],qr[18];
h qr[17];
s qr[17];
h qr[18];
s qr[18];
cx qr[17],qr[18];
barrier qr[17],qr[18];
y qr[20];
barrier qr[20];
z qr[0];
h qr[0];
s qr[0];
z qr[3];
h qr[3];
s qr[3];
barrier qr[0],qr[3];
barrier qr[1];
z qr[2];
h qr[2];
barrier qr[2];
y qr[4];
s qr[4];
barrier qr[4];
x qr[7];
sdg qr[7];
h qr[7];
barrier qr[7];
z qr[5];
barrier qr[5];
z qr[6];
s qr[6];
barrier qr[6];
z qr[8];
h qr[8];
s qr[8];
barrier qr[8];
x qr[9];
s qr[9];
h qr[9];
s qr[9];
barrier qr[9];
z qr[10];
s qr[10];
h qr[10];
s qr[10];
barrier qr[10];
z qr[11];
barrier qr[11];
x qr[12];
sdg qr[12];
h qr[12];
barrier qr[12];
z qr[13];
barrier qr[13];
x qr[14];
h qr[14];
barrier qr[14];
z qr[15];
s qr[15];
h qr[15];
s qr[15];
barrier qr[15];
x qr[16];
h qr[16];
s qr[16];
y qr[19];
s qr[19];
cx qr[16],qr[19];
h qr[16];
s qr[16];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
barrier qr[16],qr[19];
s qr[17];
z qr[18];
s qr[18];
h qr[18];
s qr[18];
cx qr[17],qr[18];
h qr[17];
s qr[17];
sdg qr[18];
h qr[18];
barrier qr[17],qr[18];
z qr[20];
s qr[20];
h qr[20];
s qr[20];
barrier qr[20];
z qr[0];
z qr[3];
cx qr[0],qr[3];
sdg qr[0];
h qr[0];
barrier qr[0],qr[3];
x qr[1];
s qr[1];
barrier qr[1];
x qr[2];
sdg qr[2];
h qr[2];
barrier qr[2];
h qr[4];
s qr[4];
barrier qr[4];
z qr[7];
s qr[7];
h qr[7];
s qr[7];
barrier qr[7];
x qr[5];
h qr[5];
barrier qr[5];
z qr[6];
sdg qr[6];
h qr[6];
barrier qr[6];
x qr[8];
barrier qr[8];
x qr[9];
s qr[9];
barrier qr[9];
y qr[10];
h qr[10];
s qr[10];
barrier qr[10];
z qr[11];
barrier qr[11];
z qr[12];
s qr[12];
h qr[12];
s qr[12];
barrier qr[12];
x qr[13];
h qr[13];
s qr[13];
barrier qr[13];
h qr[14];
s qr[14];
barrier qr[14];
sdg qr[15];
h qr[15];
barrier qr[15];
x qr[16];
sdg qr[16];
h qr[16];
cx qr[16],qr[19];
sdg qr[16];
h qr[16];
h qr[19];
s qr[19];
cx qr[16],qr[19];
h qr[16];
s qr[16];
barrier qr[16],qr[19];
y qr[17];
s qr[17];
h qr[17];
s qr[17];
cx qr[17],qr[18];
h qr[18];
s qr[18];
barrier qr[17],qr[18];
h qr[20];
s qr[20];
barrier qr[20];
y qr[0];
x qr[3];
h qr[3];
cx qr[0],qr[3];
sdg qr[0];
h qr[0];
h qr[3];
s qr[3];
cx qr[0],qr[3];
barrier qr[0],qr[3];
x qr[1];
barrier qr[1];
z qr[2];
s qr[2];
barrier qr[2];
x qr[4];
sdg qr[4];
h qr[4];
barrier qr[4];
x qr[7];
s qr[7];
barrier qr[7];
x qr[5];
barrier qr[5];
z qr[6];
s qr[6];
barrier qr[6];
y qr[8];
s qr[8];
barrier qr[8];
sdg qr[9];
h qr[9];
barrier qr[9];
z qr[10];
barrier qr[10];
x qr[11];
h qr[11];
barrier qr[11];
s qr[12];
h qr[12];
s qr[12];
barrier qr[12];
h qr[13];
s qr[13];
barrier qr[13];
y qr[14];
sdg qr[14];
h qr[14];
barrier qr[14];
x qr[15];
h qr[15];
barrier qr[15];
z qr[19];
s qr[19];
h qr[19];
s qr[19];
cx qr[16],qr[19];
h qr[16];
s qr[16];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
barrier qr[16],qr[19];
z qr[17];
sdg qr[17];
h qr[17];
y qr[18];
s qr[18];
h qr[18];
s qr[18];
cx qr[17],qr[18];
barrier qr[17],qr[18];
z qr[20];
s qr[20];
barrier qr[20];
s qr[0];
h qr[0];
s qr[0];
sdg qr[3];
h qr[3];
cx qr[0],qr[3];
sdg qr[0];
h qr[0];
sdg qr[3];
h qr[3];
cx qr[0],qr[3];
h qr[0];
s qr[0];
h qr[3];
s qr[3];
barrier qr[0],qr[3];
z qr[1];
sdg qr[1];
h qr[1];
barrier qr[1];
s qr[2];
barrier qr[2];
h qr[4];
s qr[4];
barrier qr[4];
x qr[7];
h qr[7];
barrier qr[7];
y qr[5];
h qr[5];
barrier qr[5];
y qr[6];
barrier qr[6];
y qr[8];
sdg qr[8];
h qr[8];
barrier qr[8];
z qr[9];
s qr[9];
barrier qr[9];
x qr[10];
h qr[10];
s qr[10];
barrier qr[10];
sdg qr[11];
h qr[11];
barrier qr[11];
z qr[12];
h qr[12];
barrier qr[12];
z qr[13];
h qr[13];
s qr[13];
barrier qr[13];
sdg qr[14];
h qr[14];
barrier qr[14];
s qr[15];
h qr[15];
s qr[15];
barrier qr[15];
y qr[16];
y qr[19];
sdg qr[19];
h qr[19];
cx qr[16],qr[19];
sdg qr[16];
h qr[16];
h qr[19];
s qr[19];
cx qr[16],qr[19];
h qr[16];
s qr[16];
barrier qr[16],qr[19];
y qr[17];
s qr[17];
z qr[18];
sdg qr[18];
h qr[18];
cx qr[17],qr[18];
barrier qr[17],qr[18];
x qr[20];
s qr[20];
barrier qr[20];
cx qr[0],qr[3];
h qr[3];
s qr[3];
h qr[0];
s qr[0];
cx qr[0],qr[3];
sdg qr[3];
y qr[3];
x qr[0];
sdg qr[1];
y qr[1];
sdg qr[2];
h qr[2];
sdg qr[2];
z qr[2];
sdg qr[4];
h qr[4];
sdg qr[4];
z qr[4];
sdg qr[7];
x qr[7];
h qr[5];
s qr[5];
z qr[5];
sdg qr[6];
h qr[6];
x qr[6];
sdg qr[8];
h qr[8];
sdg qr[8];
x qr[8];
sdg qr[9];
sdg qr[10];
z qr[10];
sdg qr[11];
h qr[11];
h qr[12];
z qr[12];
h qr[13];
s qr[13];
y qr[13];
x qr[14];
x qr[15];
sdg qr[19];
h qr[19];
sdg qr[16];
h qr[16];
cx qr[16],qr[19];
sdg qr[19];
h qr[19];
y qr[19];
sdg qr[16];
h qr[16];
x qr[16];
sdg qr[17];
h qr[17];
cx qr[17],qr[18];
h qr[18];
s qr[18];
h qr[17];
s qr[17];
cx qr[17],qr[18];
sdg qr[18];
h qr[18];
sdg qr[18];
x qr[18];
h qr[17];
measure qr[0] -> cr[0];
measure qr[3] -> cr[1];
measure qr[1] -> cr[2];
measure qr[2] -> cr[3];
measure qr[4] -> cr[4];
measure qr[7] -> cr[5];
measure qr[5] -> cr[6];
measure qr[6] -> cr[7];
measure qr[8] -> cr[8];
measure qr[9] -> cr[9];
measure qr[10] -> cr[10];
measure qr[11] -> cr[11];
measure qr[12] -> cr[12];
measure qr[13] -> cr[13];
measure qr[14] -> cr[14];
measure qr[15] -> cr[15];
measure qr[16] -> cr[16];
measure qr[19] -> cr[17];
measure qr[17] -> cr[18];
measure qr[18] -> cr[19];
measure qr[20] -> cr[20];
