OPENQASM 2.0;
include "qelib1.inc";
qreg qr[20];
creg cr[20];
s qr[3];
s qr[2];
h qr[11];
h qr[7];
h qr[0];
s qr[8];
h qr[15];
s qr[1];
h qr[19];
h qr[12];
h qr[17];
s qr[16];
h qr[18];
h qr[13];
h qr[9];
s qr[10];
cx qr[10],qr[0];
cx qr[7],qr[10];
cx qr[15],qr[10];
cx qr[12],qr[10];
cx qr[18],qr[10];
cx qr[1],qr[19];
cx qr[1],qr[17];
cx qr[1],qr[16];
cx qr[1],qr[13];
cx qr[1],qr[9];
cx qr[10],qr[1];
h qr[1];
cx qr[1],qr[10];
cx qr[2],qr[3];
cx qr[3],qr[10];
cx qr[10],qr[2];
cx qr[8],qr[11];
cx qr[11],qr[10];
cx qr[10],qr[8];
s qr[3];
h qr[4];
h qr[0];
s qr[0];
h qr[8];
s qr[15];
h qr[1];
s qr[19];
h qr[12];
s qr[18];
h qr[18];
s qr[13];
s qr[9];
h qr[9];
s qr[9];
swap qr[15],qr[3];
cx qr[15],qr[4];
cx qr[15],qr[11];
cx qr[15],qr[7];
cx qr[15],qr[8];
cx qr[15],qr[1];
cx qr[15],qr[19];
cx qr[15],qr[13];
cx qr[15],qr[3];
cx qr[12],qr[15];
cx qr[15],qr[16];
h qr[16];
cx qr[16],qr[15];
cx qr[0],qr[2];
cx qr[2],qr[15];
cx qr[15],qr[0];
cx qr[9],qr[18];
cx qr[18],qr[15];
cx qr[15],qr[9];
h qr[4];
s qr[11];
h qr[7];
s qr[0];
h qr[0];
h qr[8];
s qr[19];
s qr[17];
s qr[18];
h qr[18];
s qr[9];
h qr[9];
swap qr[13],qr[3];
cx qr[13],qr[2];
cx qr[13],qr[11];
cx qr[13],qr[7];
cx qr[13],qr[8];
cx qr[13],qr[19];
cx qr[13],qr[17];
cx qr[0],qr[13];
cx qr[16],qr[13];
cx qr[18],qr[13];
cx qr[9],qr[13];
cx qr[13],qr[4];
h qr[4];
cx qr[4],qr[13];
cx qr[12],qr[1];
cx qr[1],qr[13];
cx qr[13],qr[12];
h qr[3];
s qr[2];
h qr[2];
s qr[11];
h qr[11];
s qr[11];
h qr[7];
s qr[0];
h qr[0];
s qr[8];
h qr[1];
h qr[17];
s qr[16];
h qr[18];
s qr[9];
h qr[9];
s qr[9];
swap qr[12],qr[3];
cx qr[12],qr[8];
cx qr[12],qr[1];
cx qr[12],qr[17];
cx qr[12],qr[3];
cx qr[2],qr[12];
cx qr[0],qr[12];
cx qr[12],qr[18];
h qr[18];
cx qr[18],qr[12];
cx qr[7],qr[11];
cx qr[11],qr[12];
cx qr[12],qr[7];
cx qr[9],qr[16];
cx qr[16],qr[12];
cx qr[12],qr[9];
s qr[3];
h qr[3];
s qr[3];
s qr[2];
s qr[11];
h qr[11];
s qr[7];
s qr[0];
h qr[0];
s qr[0];
h qr[8];
s qr[1];
h qr[1];
s qr[19];
s qr[16];
h qr[16];
h qr[9];
s qr[9];
cx qr[0],qr[2];
cx qr[0],qr[7];
cx qr[0],qr[19];
cx qr[4],qr[0];
cx qr[1],qr[0];
cx qr[8],qr[17];
cx qr[0],qr[8];
h qr[8];
cx qr[8],qr[0];
cx qr[11],qr[3];
cx qr[3],qr[0];
cx qr[0],qr[11];
cx qr[9],qr[16];
cx qr[16],qr[0];
cx qr[0],qr[9];
s qr[3];
h qr[2];
h qr[7];
s qr[8];
h qr[8];
s qr[8];
s qr[1];
s qr[19];
h qr[19];
s qr[17];
h qr[17];
s qr[16];
h qr[16];
s qr[18];
swap qr[1],qr[2];
cx qr[1],qr[7];
cx qr[1],qr[2];
cx qr[19],qr[1];
cx qr[17],qr[1];
cx qr[16],qr[1];
cx qr[9],qr[1];
cx qr[3],qr[18];
cx qr[1],qr[3];
h qr[3];
cx qr[3],qr[1];
cx qr[8],qr[4];
cx qr[4],qr[1];
cx qr[1],qr[8];
s qr[3];
s qr[2];
h qr[4];
s qr[11];
h qr[7];
s qr[8];
h qr[8];
s qr[8];
s qr[19];
h qr[19];
s qr[17];
h qr[17];
s qr[17];
h qr[16];
h qr[18];
s qr[9];
swap qr[7],qr[3];
cx qr[7],qr[2];
cx qr[7],qr[4];
cx qr[7],qr[11];
cx qr[7],qr[9];
cx qr[19],qr[7];
cx qr[16],qr[7];
cx qr[18],qr[7];
cx qr[3],qr[7];
cx qr[17],qr[8];
cx qr[8],qr[7];
cx qr[7],qr[17];
s qr[3];
h qr[3];
s qr[2];
s qr[4];
h qr[19];
h qr[17];
s qr[17];
h qr[16];
swap qr[16],qr[3];
cx qr[16],qr[2];
cx qr[16],qr[19];
cx qr[16],qr[9];
cx qr[18],qr[16];
cx qr[3],qr[16];
cx qr[17],qr[4];
cx qr[4],qr[16];
cx qr[16],qr[17];
s qr[3];
h qr[3];
s qr[11];
h qr[19];
s qr[17];
h qr[17];
h qr[18];
s qr[9];
swap qr[2],qr[3];
cx qr[2],qr[19];
cx qr[8],qr[2];
cx qr[11],qr[9];
cx qr[11],qr[3];
cx qr[2],qr[11];
h qr[11];
cx qr[11],qr[2];
cx qr[18],qr[17];
cx qr[17],qr[2];
cx qr[2],qr[18];
h qr[3];
h qr[4];
h qr[11];
s qr[8];
h qr[19];
s qr[17];
h qr[17];
s qr[17];
h qr[18];
s qr[9];
cx qr[9],qr[4];
cx qr[9],qr[11];
cx qr[9],qr[8];
cx qr[19],qr[9];
cx qr[18],qr[9];
cx qr[17],qr[3];
cx qr[3],qr[9];
cx qr[9],qr[17];
s qr[3];
h qr[3];
s qr[3];
s qr[4];
h qr[4];
s qr[11];
h qr[11];
s qr[8];
h qr[8];
s qr[8];
s qr[17];
s qr[18];
swap qr[4],qr[3];
cx qr[4],qr[18];
cx qr[3],qr[4];
cx qr[4],qr[17];
h qr[17];
cx qr[17],qr[4];
cx qr[8],qr[11];
cx qr[11],qr[4];
cx qr[4],qr[8];
h qr[11];
s qr[8];
s qr[19];
h qr[19];
s qr[18];
swap qr[11],qr[3];
cx qr[11],qr[17];
cx qr[19],qr[11];
cx qr[8],qr[18];
cx qr[8],qr[3];
cx qr[11],qr[8];
h qr[8];
cx qr[8],qr[11];
h qr[3];
s qr[3];
s qr[8];
h qr[8];
h qr[19];
h qr[18];
s qr[18];
swap qr[8],qr[3];
cx qr[8],qr[19];
cx qr[3],qr[8];
cx qr[18],qr[17];
cx qr[17],qr[8];
cx qr[8],qr[18];
s qr[19];
h qr[19];
swap qr[17],qr[3];
cx qr[17],qr[18];
cx qr[19],qr[17];
h qr[3];
swap qr[18],qr[3];
cx qr[18],qr[19];
h qr[19];
cx qr[19],qr[18];
swap qr[19],qr[3];
cx qr[3],qr[19];
s qr[3];
h qr[3];
z qr[2];
y qr[4];
x qr[11];
z qr[7];
y qr[0];
x qr[8];
z qr[15];
x qr[19];
z qr[12];
x qr[17];
z qr[16];
x qr[18];
y qr[13];
x qr[9];
x qr[10];
barrier qr[3],qr[2],qr[4],qr[11],qr[7],qr[0],qr[8],qr[15],qr[1],qr[19],qr[12],qr[17],qr[16],qr[18],qr[13],qr[9],qr[10];
z qr[14];
sdg qr[14];
h qr[14];
s qr[6];
s qr[5];
h qr[5];
s qr[5];
cx qr[6],qr[5];
sdg qr[5];
h qr[5];
cx qr[14],qr[5];
h qr[14];
s qr[14];
cx qr[14],qr[6];
h qr[5];
s qr[5];
barrier qr[14],qr[6],qr[5];
s qr[3];
h qr[3];
h qr[2];
s qr[7];
h qr[8];
h qr[15];
h qr[1];
h qr[12];
s qr[16];
s qr[18];
s qr[13];
s qr[10];
swap qr[10],qr[3];
cx qr[10],qr[15];
cx qr[10],qr[19];
cx qr[10],qr[17];
cx qr[10],qr[18];
cx qr[10],qr[3];
cx qr[2],qr[4];
cx qr[2],qr[1];
cx qr[2],qr[13];
cx qr[10],qr[2];
h qr[2];
cx qr[2],qr[10];
cx qr[8],qr[7];
cx qr[7],qr[10];
cx qr[10],qr[8];
cx qr[16],qr[12];
cx qr[12],qr[10];
cx qr[10],qr[16];
h qr[3];
h qr[2];
s qr[2];
s qr[4];
h qr[4];
h qr[11];
s qr[8];
h qr[8];
s qr[8];
h qr[15];
h qr[1];
h qr[19];
h qr[13];
h qr[9];
cx qr[4],qr[8];
cx qr[13],qr[8];
cx qr[3],qr[15];
cx qr[3],qr[1];
cx qr[3],qr[19];
cx qr[3],qr[12];
cx qr[8],qr[3];
h qr[3];
cx qr[3],qr[8];
cx qr[11],qr[2];
cx qr[2],qr[8];
cx qr[8],qr[11];
cx qr[9],qr[0];
cx qr[0],qr[8];
cx qr[8],qr[9];
h qr[3];
s qr[3];
s qr[2];
h qr[2];
s qr[4];
s qr[11];
s qr[0];
h qr[1];
s qr[19];
h qr[19];
h qr[17];
s qr[18];
s qr[13];
h qr[13];
swap qr[4],qr[3];
cx qr[4],qr[7];
cx qr[4],qr[18];
cx qr[4],qr[3];
cx qr[2],qr[4];
cx qr[0],qr[17];
cx qr[4],qr[0];
h qr[0];
cx qr[0],qr[4];
cx qr[1],qr[11];
cx qr[11],qr[4];
cx qr[4],qr[1];
cx qr[12],qr[19];
cx qr[19],qr[4];
cx qr[4],qr[12];
cx qr[9],qr[13];
cx qr[13],qr[4];
cx qr[4],qr[9];
s qr[3];
h qr[3];
s qr[3];
h qr[11];
s qr[7];
s qr[1];
h qr[1];
h qr[12];
h qr[17];
h qr[16];
s qr[13];
h qr[13];
h qr[9];
swap qr[9],qr[3];
cx qr[9],qr[11];
cx qr[9],qr[0];
cx qr[9],qr[19];
cx qr[9],qr[18];
cx qr[9],qr[3];
cx qr[12],qr[9];
cx qr[16],qr[9];
cx qr[7],qr[17];
cx qr[9],qr[7];
h qr[7];
cx qr[7],qr[9];
cx qr[13],qr[1];
cx qr[1],qr[9];
cx qr[9],qr[13];
h qr[3];
s qr[2];
h qr[2];
s qr[11];
h qr[0];
h qr[15];
s qr[15];
s qr[1];
s qr[12];
h qr[12];
h qr[18];
cx qr[3],qr[0];
cx qr[3],qr[1];
cx qr[3],qr[17];
cx qr[12],qr[3];
cx qr[16],qr[3];
cx qr[11],qr[13];
cx qr[3],qr[11];
h qr[11];
cx qr[11],qr[3];
cx qr[15],qr[2];
cx qr[2],qr[3];
cx qr[3],qr[15];
cx qr[18],qr[19];
cx qr[19],qr[3];
cx qr[3],qr[18];
s qr[2];
h qr[2];
s qr[11];
s qr[0];
h qr[1];
h qr[19];
h qr[12];
h qr[17];
h qr[16];
h qr[18];
s qr[18];
h qr[13];
swap qr[17],qr[2];
cx qr[17],qr[15];
cx qr[17],qr[13];
cx qr[17],qr[2];
cx qr[11],qr[0];
cx qr[11],qr[1];
cx qr[11],qr[19];
cx qr[11],qr[12];
cx qr[17],qr[11];
h qr[11];
cx qr[11],qr[17];
cx qr[18],qr[16];
cx qr[16],qr[17];
cx qr[17],qr[18];
s qr[11];
h qr[11];
s qr[11];
h qr[7];
s qr[19];
h qr[19];
h qr[12];
s qr[16];
h qr[18];
swap qr[15],qr[2];
cx qr[15],qr[0];
cx qr[15],qr[16];
cx qr[15],qr[13];
cx qr[7],qr[15];
cx qr[12],qr[15];
cx qr[18],qr[15];
cx qr[15],qr[1];
h qr[1];
cx qr[1],qr[15];
cx qr[19],qr[11];
cx qr[11],qr[15];
cx qr[15],qr[19];
s qr[2];
h qr[2];
s qr[2];
h qr[11];
h qr[7];
h qr[0];
s qr[1];
h qr[1];
s qr[16];
h qr[16];
h qr[18];
h qr[13];
swap qr[12],qr[2];
cx qr[12],qr[11];
cx qr[12],qr[7];
cx qr[0],qr[12];
cx qr[1],qr[12];
cx qr[16],qr[12];
cx qr[13],qr[12];
cx qr[19],qr[18];
cx qr[12],qr[19];
h qr[19];
cx qr[19],qr[12];
h qr[2];
h qr[11];
h qr[1];
h qr[16];
s qr[18];
h qr[18];
swap qr[2],qr[16];
cx qr[2],qr[16];
cx qr[11],qr[2];
cx qr[19],qr[2];
cx qr[18],qr[2];
cx qr[1],qr[13];
cx qr[2],qr[1];
h qr[1];
cx qr[1],qr[2];
s qr[7];
h qr[7];
h qr[1];
s qr[19];
s qr[16];
s qr[18];
h qr[18];
s qr[13];
h qr[13];
swap qr[7],qr[11];
cx qr[7],qr[1];
cx qr[7],qr[19];
cx qr[11],qr[7];
cx qr[16],qr[0];
cx qr[0],qr[7];
cx qr[7],qr[16];
cx qr[13],qr[18];
cx qr[18],qr[7];
cx qr[7],qr[13];
s qr[11];
h qr[11];
s qr[11];
h qr[0];
s qr[16];
s qr[13];
swap qr[1],qr[11];
cx qr[1],qr[16];
cx qr[11],qr[1];
cx qr[0],qr[18];
cx qr[1],qr[0];
h qr[0];
cx qr[0],qr[1];
cx qr[13],qr[19];
cx qr[19],qr[1];
cx qr[1],qr[13];
h qr[0];
h qr[19];
s qr[19];
s qr[16];
h qr[16];
s qr[16];
h qr[18];
s qr[18];
cx qr[18],qr[13];
cx qr[0],qr[11];
cx qr[11],qr[18];
cx qr[18],qr[0];
cx qr[16],qr[19];
cx qr[19],qr[18];
cx qr[18],qr[16];
h qr[11];
s qr[0];
h qr[0];
s qr[0];
s qr[19];
s qr[16];
h qr[16];
h qr[13];
swap qr[16],qr[11];
cx qr[16],qr[19];
cx qr[11],qr[16];
cx qr[13],qr[0];
cx qr[0],qr[16];
cx qr[16],qr[13];
h qr[11];
cx qr[0],qr[11];
h qr[11];
cx qr[11],qr[0];
h qr[11];
s qr[11];
s qr[19];
s qr[13];
h qr[13];
cx qr[19],qr[11];
cx qr[11],qr[13];
cx qr[13],qr[19];
h qr[11];
s qr[11];
s qr[19];
cx qr[11],qr[19];
h qr[19];
x qr[3];
x qr[2];
x qr[4];
x qr[11];
y qr[7];
x qr[0];
x qr[15];
z qr[1];
x qr[19];
y qr[12];
z qr[17];
x qr[16];
y qr[18];
x qr[13];
x qr[9];
x qr[10];
barrier qr[3],qr[2],qr[4],qr[11],qr[7],qr[0],qr[8],qr[15],qr[1],qr[19],qr[12],qr[17],qr[16],qr[18],qr[13],qr[9],qr[10];
z qr[14];
s qr[14];
y qr[6];
s qr[6];
h qr[6];
s qr[6];
cx qr[14],qr[6];
h qr[14];
s qr[14];
sdg qr[6];
h qr[6];
y qr[5];
h qr[5];
s qr[5];
cx qr[14],qr[5];
sdg qr[14];
h qr[14];
cx qr[14],qr[6];
h qr[6];
s qr[6];
sdg qr[5];
h qr[5];
barrier qr[14],qr[6],qr[5];
h qr[3];
h qr[2];
s qr[11];
h qr[0];
s qr[0];
s qr[15];
h qr[19];
s qr[19];
s qr[16];
h qr[16];
s qr[18];
s qr[13];
swap qr[17],qr[3];
cx qr[17],qr[1];
cx qr[17],qr[10];
cx qr[9],qr[17];
cx qr[2],qr[11];
cx qr[2],qr[7];
cx qr[2],qr[15];
cx qr[2],qr[13];
cx qr[17],qr[2];
h qr[2];
cx qr[2],qr[17];
cx qr[8],qr[0];
cx qr[0],qr[17];
cx qr[17],qr[8];
cx qr[12],qr[19];
cx qr[19],qr[17];
cx qr[17],qr[12];
cx qr[18],qr[16];
cx qr[16],qr[17];
cx qr[17],qr[18];
h qr[3];
s qr[3];
s qr[2];
s qr[4];
h qr[4];
s qr[11];
h qr[11];
s qr[7];
h qr[7];
s qr[0];
h qr[0];
s qr[0];
s qr[8];
h qr[12];
s qr[16];
h qr[16];
s qr[16];
s qr[18];
s qr[13];
h qr[10];
s qr[10];
swap qr[12],qr[3];
cx qr[12],qr[2];
cx qr[12],qr[8];
cx qr[12],qr[19];
cx qr[12],qr[18];
cx qr[4],qr[12];
cx qr[11],qr[12];
cx qr[7],qr[12];
cx qr[15],qr[12];
cx qr[1],qr[12];
cx qr[3],qr[12];
cx qr[16],qr[0];
cx qr[0],qr[12];
cx qr[12],qr[16];
cx qr[10],qr[13];
cx qr[13],qr[12];
cx qr[12],qr[10];
s qr[3];
h qr[3];
s qr[3];
s qr[7];
h qr[7];
s qr[0];
h qr[8];
h qr[15];
h qr[1];
h qr[19];
h qr[18];
h qr[13];
swap qr[18],qr[3];
cx qr[18],qr[15];
cx qr[18],qr[3];
cx qr[7],qr[18];
cx qr[19],qr[18];
cx qr[16],qr[18];
cx qr[10],qr[18];
cx qr[11],qr[0];
cx qr[11],qr[8];
cx qr[11],qr[1];
cx qr[11],qr[13];
cx qr[11],qr[9];
cx qr[18],qr[11];
h qr[11];
cx qr[11],qr[18];
h qr[2];
s qr[4];
h qr[4];
s qr[11];
h qr[11];
h qr[0];
s qr[15];
h qr[15];
s qr[1];
s qr[19];
h qr[16];
h qr[9];
swap qr[1],qr[3];
cx qr[1],qr[0];
cx qr[1],qr[8];
cx qr[1],qr[16];
cx qr[1],qr[3];
cx qr[11],qr[1];
cx qr[7],qr[1];
cx qr[15],qr[1];
cx qr[1],qr[13];
h qr[13];
cx qr[13],qr[1];
cx qr[4],qr[2];
cx qr[2],qr[1];
cx qr[1],qr[4];
cx qr[9],qr[19];
cx qr[19],qr[1];
cx qr[1],qr[9];
h qr[2];
h qr[11];
s qr[11];
s qr[7];
h qr[7];
s qr[7];
h qr[8];
h qr[19];
h qr[16];
s qr[9];
swap qr[0],qr[3];
cx qr[0],qr[16];
cx qr[0],qr[9];
cx qr[8],qr[0];
cx qr[10],qr[0];
cx qr[3],qr[0];
cx qr[2],qr[15];
cx qr[0],qr[2];
h qr[2];
cx qr[2],qr[0];
cx qr[11],qr[4];
cx qr[4],qr[0];
cx qr[0],qr[11];
cx qr[19],qr[7];
cx qr[7],qr[0];
cx qr[0],qr[19];
s qr[3];
h qr[3];
s qr[2];
s qr[7];
h qr[7];
s qr[8];
h qr[15];
h qr[19];
s qr[16];
h qr[13];
s qr[13];
h qr[9];
h qr[10];
cx qr[13],qr[15];
cx qr[13],qr[16];
cx qr[7],qr[13];
cx qr[10],qr[13];
cx qr[2],qr[11];
cx qr[2],qr[19];
cx qr[2],qr[9];
cx qr[13],qr[2];
h qr[2];
cx qr[2],qr[13];
cx qr[8],qr[3];
cx qr[3],qr[13];
cx qr[13],qr[8];
s qr[3];
h qr[2];
s qr[4];
h qr[11];
s qr[8];
h qr[19];
s qr[16];
h qr[10];
cx qr[15],qr[4];
cx qr[15],qr[11];
cx qr[15],qr[7];
cx qr[15],qr[8];
cx qr[15],qr[10];
cx qr[2],qr[15];
cx qr[19],qr[16];
cx qr[15],qr[19];
h qr[19];
cx qr[19],qr[15];
cx qr[9],qr[3];
cx qr[3],qr[15];
cx qr[15],qr[9];
h qr[3];
s qr[3];
s qr[2];
h qr[2];
s qr[2];
s qr[7];
h qr[7];
s qr[7];
s qr[8];
h qr[19];
s qr[16];
h qr[16];
h qr[9];
cx qr[19],qr[3];
cx qr[16],qr[3];
cx qr[10],qr[3];
cx qr[3],qr[11];
h qr[11];
cx qr[11],qr[3];
cx qr[7],qr[2];
cx qr[2],qr[3];
cx qr[3],qr[7];
cx qr[9],qr[8];
cx qr[8],qr[3];
cx qr[3],qr[9];
h qr[8];
h qr[19];
s qr[16];
s qr[10];
swap qr[16],qr[2];
cx qr[16],qr[4];
cx qr[16],qr[10];
cx qr[19],qr[16];
cx qr[8],qr[2];
cx qr[16],qr[8];
h qr[8];
cx qr[8],qr[16];
cx qr[9],qr[7];
cx qr[7],qr[16];
cx qr[16],qr[9];
h qr[4];
s qr[11];
h qr[9];
cx qr[4],qr[2];
cx qr[4],qr[11];
cx qr[4],qr[9];
cx qr[19],qr[4];
cx qr[10],qr[4];
s qr[11];
h qr[11];
s qr[8];
s qr[9];
h qr[10];
swap qr[2],qr[11];
cx qr[2],qr[8];
cx qr[10],qr[9];
cx qr[9],qr[2];
cx qr[2],qr[10];
s qr[11];
h qr[11];
s qr[11];
s qr[7];
h qr[19];
s qr[9];
h qr[9];
cx qr[11],qr[7];
cx qr[11],qr[8];
cx qr[11],qr[10];
h qr[10];
cx qr[10],qr[11];
cx qr[9],qr[19];
cx qr[19],qr[11];
cx qr[11],qr[9];
s qr[7];
h qr[7];
s qr[8];
h qr[19];
h qr[10];
swap qr[9],qr[7];
cx qr[9],qr[10];
cx qr[8],qr[19];
cx qr[9],qr[8];
h qr[8];
cx qr[8],qr[9];
h qr[7];
s qr[7];
h qr[10];
swap qr[19],qr[7];
cx qr[8],qr[19];
cx qr[19],qr[10];
h qr[10];
cx qr[10],qr[19];
s qr[7];
h qr[8];
h qr[10];
cx qr[10],qr[7];
cx qr[7],qr[8];
cx qr[8],qr[10];
s qr[7];
swap qr[10],qr[7];
cx qr[10],qr[7];
z qr[3];
x qr[2];
z qr[4];
x qr[7];
x qr[8];
x qr[15];
x qr[1];
x qr[17];
z qr[16];
y qr[18];
x qr[9];
x qr[10];
barrier qr[3],qr[2],qr[4],qr[11],qr[7],qr[0],qr[8],qr[15],qr[1],qr[19],qr[12],qr[17],qr[16],qr[18],qr[13],qr[9],qr[10];
x qr[14];
s qr[14];
z qr[6];
s qr[6];
h qr[6];
s qr[6];
s qr[5];
cx qr[6],qr[5];
sdg qr[6];
h qr[6];
h qr[5];
s qr[5];
cx qr[6],qr[5];
h qr[6];
s qr[6];
cx qr[14],qr[6];
sdg qr[14];
h qr[14];
sdg qr[6];
h qr[6];
cx qr[14],qr[6];
h qr[14];
s qr[14];
h qr[6];
s qr[6];
cx qr[14],qr[6];
barrier qr[14],qr[6],qr[5];
s qr[3];
s qr[11];
h qr[7];
h qr[0];
s qr[8];
h qr[8];
s qr[8];
h qr[15];
h qr[19];
h qr[12];
s qr[16];
h qr[18];
h qr[13];
h qr[9];
s qr[10];
cx qr[8],qr[4];
cx qr[8],qr[11];
cx qr[8],qr[16];
cx qr[0],qr[8];
cx qr[1],qr[8];
cx qr[9],qr[8];
cx qr[7],qr[19];
cx qr[7],qr[12];
cx qr[7],qr[18];
cx qr[7],qr[13];
cx qr[8],qr[7];
h qr[7];
cx qr[7],qr[8];
cx qr[2],qr[3];
cx qr[3],qr[8];
cx qr[8],qr[2];
cx qr[10],qr[15];
cx qr[15],qr[8];
cx qr[8],qr[10];
h qr[3];
s qr[15];
h qr[1];
h qr[12];
s qr[16];
h qr[16];
s qr[18];
h qr[10];
swap qr[15],qr[0];
cx qr[15],qr[7];
cx qr[15],qr[12];
cx qr[15],qr[18];
cx qr[15],qr[0];
cx qr[3],qr[15];
cx qr[11],qr[15];
cx qr[13],qr[15];
cx qr[9],qr[15];
cx qr[10],qr[15];
cx qr[16],qr[1];
cx qr[1],qr[15];
cx qr[15],qr[16];
h qr[3];
s qr[3];
h qr[4];
s qr[4];
h qr[11];
h qr[7];
h qr[1];
s qr[19];
h qr[19];
s qr[12];
h qr[12];
s qr[16];
h qr[16];
h qr[18];
s qr[9];
h qr[9];
s qr[9];
s qr[10];
h qr[10];
swap qr[1],qr[3];
cx qr[1],qr[18];
cx qr[1],qr[3];
cx qr[19],qr[1];
cx qr[12],qr[1];
cx qr[10],qr[1];
cx qr[1],qr[11];
h qr[11];
cx qr[11],qr[1];
cx qr[7],qr[4];
cx qr[4],qr[1];
cx qr[1],qr[7];
cx qr[9],qr[16];
cx qr[16],qr[1];
cx qr[1],qr[9];
h qr[3];
s qr[3];
s qr[4];
h qr[7];
h qr[19];
s qr[12];
s qr[17];
h qr[17];
s qr[17];
h qr[18];
s qr[18];
s qr[13];
h qr[13];
h qr[10];
s qr[10];
swap qr[11],qr[3];
cx qr[11],qr[4];
cx qr[11],qr[19];
cx qr[11],qr[12];
cx qr[11],qr[9];
cx qr[11],qr[3];
cx qr[7],qr[11];
cx qr[2],qr[0];
cx qr[11],qr[2];
h qr[2];
cx qr[2],qr[11];
cx qr[18],qr[17];
cx qr[17],qr[11];
cx qr[11],qr[18];
cx qr[10],qr[13];
cx qr[13],qr[11];
cx qr[11],qr[10];
h qr[3];
s qr[2];
h qr[7];
h qr[0];
s qr[0];
h qr[19];
s qr[12];
s qr[17];
h qr[17];
s qr[17];
s qr[18];
h qr[18];
s qr[9];
h qr[9];
swap qr[16],qr[3];
cx qr[16],qr[2];
cx qr[16],qr[12];
cx qr[7],qr[16];
cx qr[18],qr[16];
cx qr[13],qr[16];
cx qr[9],qr[16];
cx qr[19],qr[3];
cx qr[16],qr[19];
h qr[19];
cx qr[19],qr[16];
cx qr[17],qr[0];
cx qr[0],qr[16];
cx qr[16],qr[17];
h qr[2];
h qr[7];
s qr[0];
h qr[0];
h qr[19];
s qr[17];
h qr[17];
h qr[13];
s qr[9];
s qr[10];
swap qr[7],qr[0];
cx qr[7],qr[2];
cx qr[7],qr[13];
cx qr[7],qr[9];
cx qr[7],qr[0];
cx qr[17],qr[7];
cx qr[4],qr[19];
cx qr[4],qr[10];
cx qr[7],qr[4];
h qr[4];
cx qr[4],qr[7];
h qr[3];
h qr[2];
h qr[12];
h qr[18];
s qr[9];
swap qr[13],qr[3];
cx qr[13],qr[0];
cx qr[13],qr[17];
cx qr[12],qr[13];
cx qr[10],qr[13];
cx qr[3],qr[13];
cx qr[4],qr[19];
cx qr[4],qr[9];
cx qr[13],qr[4];
h qr[4];
cx qr[4],qr[13];
cx qr[18],qr[2];
cx qr[2],qr[13];
cx qr[13],qr[18];
h qr[3];
h qr[2];
s qr[2];
s qr[0];
s qr[19];
s qr[17];
h qr[17];
s qr[17];
s qr[18];
h qr[9];
s qr[10];
cx qr[2],qr[0];
cx qr[2],qr[10];
cx qr[12],qr[9];
cx qr[2],qr[12];
h qr[12];
cx qr[12],qr[2];
cx qr[19],qr[3];
cx qr[3],qr[2];
cx qr[2],qr[19];
cx qr[18],qr[17];
cx qr[17],qr[2];
cx qr[2],qr[18];
s qr[4];
s qr[12];
h qr[18];
s qr[18];
h qr[10];
cx qr[18],qr[12];
cx qr[18],qr[17];
cx qr[18],qr[10];
cx qr[4],qr[3];
cx qr[3],qr[18];
cx qr[18],qr[4];
cx qr[9],qr[19];
cx qr[19],qr[18];
cx qr[18],qr[9];
h qr[4];
s qr[4];
s qr[0];
h qr[0];
s qr[19];
h qr[17];
s qr[9];
h qr[9];
cx qr[3],qr[17];
cx qr[0],qr[3];
cx qr[10],qr[3];
cx qr[3],qr[19];
h qr[19];
cx qr[19],qr[3];
cx qr[9],qr[4];
cx qr[4],qr[3];
cx qr[3],qr[9];
h qr[4];
h qr[0];
s qr[12];
h qr[12];
s qr[12];
h qr[17];
s qr[17];
h qr[10];
cx qr[12],qr[0];
cx qr[0],qr[4];
cx qr[4],qr[12];
cx qr[10],qr[17];
cx qr[17],qr[4];
cx qr[4],qr[10];
s qr[0];
h qr[0];
s qr[0];
s qr[19];
s qr[17];
h qr[17];
s qr[17];
h qr[10];
s qr[10];
cx qr[10],qr[19];
cx qr[10],qr[9];
h qr[9];
cx qr[9],qr[10];
cx qr[17],qr[0];
cx qr[0],qr[10];
cx qr[10],qr[17];
s qr[0];
h qr[0];
s qr[0];
s qr[19];
h qr[19];
h qr[12];
h qr[9];
swap qr[19],qr[0];
cx qr[9],qr[19];
cx qr[0],qr[19];
cx qr[19],qr[12];
h qr[12];
cx qr[12],qr[19];
s qr[0];
h qr[12];
h qr[17];
s qr[9];
cx qr[12],qr[17];
cx qr[9],qr[0];
cx qr[0],qr[12];
cx qr[12],qr[9];
h qr[17];
cx qr[9],qr[0];
cx qr[0],qr[17];
cx qr[17],qr[9];
h qr[0];
cx qr[0],qr[9];
h qr[9];
cx qr[9],qr[0];
h qr[9];
s qr[9];
y qr[3];
z qr[4];
y qr[11];
y qr[15];
z qr[1];
x qr[16];
y qr[18];
z qr[13];
z qr[9];
y qr[10];
barrier qr[3],qr[2],qr[4],qr[11],qr[7],qr[0],qr[8],qr[15],qr[1],qr[19],qr[12],qr[17],qr[16],qr[18],qr[13],qr[9],qr[10];
z qr[14];
h qr[14];
z qr[6];
s qr[6];
y qr[5];
s qr[5];
cx qr[6],qr[5];
sdg qr[6];
h qr[6];
h qr[5];
s qr[5];
cx qr[14],qr[5];
sdg qr[14];
h qr[14];
h qr[5];
s qr[5];
cx qr[14],qr[5];
cx qr[14],qr[6];
barrier qr[14],qr[6],qr[5];
y qr[10];
x qr[12];
y qr[19];
z qr[1];
x qr[15];
y qr[8];
y qr[0];
y qr[7];
z qr[4];
z qr[2];
sdg qr[12];
cx qr[12],qr[15];
h qr[12];
sdg qr[12];
sdg qr[15];
cx qr[15],qr[0];
h qr[15];
cx qr[0],qr[15];
cx qr[12],qr[0];
h qr[12];
sdg qr[0];
h qr[0];
sdg qr[0];
cx qr[12],qr[1];
h qr[12];
cx qr[1],qr[12];
cx qr[15],qr[1];
swap qr[1],qr[0];
h qr[12];
h qr[15];
h qr[0];
sdg qr[0];
cx qr[9],qr[15];
cx qr[0],qr[9];
cx qr[15],qr[0];
cx qr[1],qr[9];
h qr[1];
cx qr[9],qr[1];
cx qr[12],qr[9];
h qr[9];
h qr[12];
h qr[15];
h qr[0];
sdg qr[0];
cx qr[12],qr[19];
h qr[12];
cx qr[19],qr[12];
cx qr[15],qr[19];
cx qr[19],qr[0];
cx qr[19],qr[1];
swap qr[19],qr[0];
sdg qr[12];
sdg qr[19];
h qr[15];
sdg qr[15];
sdg qr[0];
h qr[0];
sdg qr[0];
cx qr[10],qr[12];
cx qr[0],qr[10];
cx qr[12],qr[0];
cx qr[15],qr[10];
h qr[15];
cx qr[10],qr[15];
cx qr[9],qr[10];
cx qr[10],qr[1];
h qr[10];
sdg qr[10];
h qr[9];
sdg qr[12];
sdg qr[1];
h qr[0];
sdg qr[0];
cx qr[16],qr[15];
cx qr[0],qr[16];
cx qr[15],qr[0];
cx qr[19],qr[16];
cx qr[1],qr[16];
cx qr[16],qr[10];
cx qr[16],qr[9];
cx qr[16],qr[12];
sdg qr[9];
sdg qr[16];
h qr[16];
sdg qr[16];
h qr[12];
h qr[1];
h qr[15];
h qr[0];
cx qr[12],qr[18];
h qr[12];
cx qr[18],qr[12];
cx qr[10],qr[18];
cx qr[19],qr[18];
cx qr[18],qr[0];
cx qr[18],qr[16];
cx qr[18],qr[1];
cx qr[18],qr[15];
swap qr[18],qr[0];
h qr[10];
sdg qr[18];
h qr[16];
h qr[12];
h qr[15];
h qr[0];
cx qr[2],qr[9];
cx qr[12],qr[2];
cx qr[9],qr[12];
cx qr[16],qr[2];
h qr[16];
cx qr[2],qr[16];
cx qr[10],qr[2];
cx qr[19],qr[2];
cx qr[2],qr[18];
cx qr[2],qr[15];
h qr[10];
sdg qr[9];
h qr[9];
sdg qr[9];
sdg qr[18];
sdg qr[16];
h qr[12];
sdg qr[15];
sdg qr[2];
cx qr[4],qr[10];
cx qr[12],qr[4];
cx qr[10],qr[12];
cx qr[4],qr[15];
cx qr[2],qr[4];
cx qr[15],qr[2];
cx qr[0],qr[4];
h qr[0];
cx qr[4],qr[0];
cx qr[0],qr[1];
cx qr[4],qr[18];
cx qr[4],qr[16];
cx qr[4],qr[19];
sdg qr[12];
h qr[19];
h qr[1];
sdg qr[15];
sdg qr[0];
sdg qr[2];
cx qr[11],qr[9];
cx qr[12],qr[11];
cx qr[9],qr[12];
cx qr[11],qr[1];
cx qr[2],qr[11];
cx qr[1],qr[2];
cx qr[18],qr[11];
cx qr[16],qr[11];
cx qr[0],qr[11];
cx qr[11],qr[10];
cx qr[11],qr[19];
h qr[10];
sdg qr[9];
h qr[9];
sdg qr[9];
h qr[18];
h qr[16];
sdg qr[11];
h qr[11];
sdg qr[11];
h qr[2];
sdg qr[2];
cx qr[13],qr[16];
cx qr[1],qr[13];
cx qr[16],qr[1];
cx qr[13],qr[15];
cx qr[0],qr[13];
cx qr[15],qr[0];
cx qr[19],qr[13];
h qr[19];
cx qr[13],qr[19];
cx qr[19],qr[2];
cx qr[19],qr[10];
cx qr[13],qr[18];
cx qr[13],qr[12];
cx qr[13],qr[11];
cx qr[13],qr[4];
swap qr[13],qr[2];
sdg qr[13];
h qr[18];
h qr[16];
sdg qr[16];
sdg qr[12];
h qr[1];
sdg qr[15];
h qr[15];
sdg qr[0];
sdg qr[4];
sdg qr[2];
h qr[2];
cx qr[17],qr[16];
cx qr[1],qr[17];
cx qr[16],qr[1];
cx qr[17],qr[4];
cx qr[2],qr[17];
cx qr[4],qr[2];
cx qr[13],qr[17];
h qr[13];
cx qr[17],qr[13];
cx qr[10],qr[17];
cx qr[9],qr[17];
cx qr[12],qr[17];
cx qr[17],qr[19];
cx qr[17],qr[0];
cx qr[17],qr[11];
h qr[9];
sdg qr[13];
h qr[16];
sdg qr[16];
sdg qr[17];
sdg qr[19];
sdg qr[1];
sdg qr[0];
h qr[11];
h qr[4];
sdg qr[2];
h qr[2];
cx qr[7],qr[16];
cx qr[17],qr[7];
cx qr[16],qr[17];
cx qr[7],qr[12];
cx qr[11],qr[7];
cx qr[12],qr[11];
cx qr[18],qr[7];
h qr[18];
cx qr[7],qr[18];
cx qr[18],qr[9];
cx qr[2],qr[7];
cx qr[10],qr[7];
cx qr[19],qr[7];
cx qr[4],qr[7];
cx qr[7],qr[13];
cx qr[7],qr[1];
swap qr[7],qr[2];
h qr[10];
sdg qr[10];
h qr[9];
h qr[13];
h qr[18];
sdg qr[16];
h qr[16];
sdg qr[17];
h qr[17];
sdg qr[12];
h qr[19];
sdg qr[1];
sdg qr[11];
h qr[11];
h qr[4];
sdg qr[2];
h qr[2];
sdg qr[2];
cx qr[8],qr[13];
cx qr[18],qr[8];
cx qr[13],qr[18];
cx qr[11],qr[8];
h qr[11];
cx qr[8],qr[11];
cx qr[11],qr[2];
cx qr[11],qr[9];
cx qr[11],qr[16];
cx qr[11],qr[0];
cx qr[11],qr[7];
cx qr[19],qr[8];
cx qr[1],qr[8];
cx qr[8],qr[10];
cx qr[8],qr[17];
cx qr[8],qr[12];
cx qr[8],qr[15];
cx qr[8],qr[4];
swap qr[8],qr[2];
sdg qr[9];
sdg qr[13];
sdg qr[18];
h qr[16];
h qr[17];
sdg qr[12];
h qr[19];
sdg qr[8];
h qr[11];
h qr[4];
sdg qr[2];
h qr[2];
sdg qr[2];
cx qr[3],qr[9];
cx qr[13],qr[3];
cx qr[9],qr[13];
cx qr[3],qr[1];
cx qr[2],qr[3];
cx qr[1],qr[2];
cx qr[0],qr[3];
h qr[0];
cx qr[3],qr[0];
cx qr[0],qr[12];
cx qr[18],qr[3];
cx qr[3],qr[10];
cx qr[3],qr[16];
cx qr[3],qr[17];
cx qr[3],qr[19];
cx qr[3],qr[15];
cx qr[3],qr[11];
cx qr[3],qr[4];
sdg qr[10];
sdg qr[9];
h qr[9];
sdg qr[13];
h qr[13];
sdg qr[13];
h qr[16];
h qr[12];
h qr[19];
sdg qr[15];
h qr[0];
h qr[4];
sdg qr[2];
h qr[2];
sdg qr[2];
h qr[5];
s qr[5];
cx qr[14],qr[6];
cx qr[6],qr[5];
sdg qr[5];
h qr[5];
h qr[14];
s qr[14];
cx qr[14],qr[5];
sdg qr[5];
x qr[5];
h qr[14];
s qr[14];
cx qr[14],qr[6];
x qr[6];
sdg qr[14];
y qr[14];
measure qr[3] -> cr[0];
measure qr[2] -> cr[1];
measure qr[4] -> cr[2];
measure qr[11] -> cr[3];
measure qr[7] -> cr[4];
measure qr[0] -> cr[5];
measure qr[8] -> cr[6];
measure qr[15] -> cr[7];
measure qr[1] -> cr[8];
measure qr[19] -> cr[9];
measure qr[12] -> cr[10];
measure qr[17] -> cr[11];
measure qr[16] -> cr[12];
measure qr[18] -> cr[13];
measure qr[13] -> cr[14];
measure qr[9] -> cr[15];
measure qr[10] -> cr[16];
measure qr[14] -> cr[17];
measure qr[6] -> cr[18];
measure qr[5] -> cr[19];
