OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
s q[0];
h q[1];
s q[2];
h q[2];
s q[2];
h q[5];
s q[6];
h q[10];
h q[11];
s q[12];
h q[12];
h q[14];
h q[15];
s q[16];
h q[17];
s q[18];
s q[19];
h q[19];
swap q[13],q[0];
cx q[13],q[4];
cx q[13],q[7];
cx q[13],q[9];
cx q[13],q[10];
cx q[13],q[17];
cx q[13],q[18];
cx q[12],q[13];
cx q[14],q[13];
cx q[19],q[13];
cx q[1],q[3];
cx q[1],q[6];
cx q[1],q[8];
cx q[1],q[11];
cx q[1],q[15];
cx q[1],q[16];
cx q[13],q[1];
h q[1];
cx q[1],q[13];
cx q[5],q[2];
cx q[2],q[13];
cx q[13],q[5];
s q[0];
h q[0];
s q[0];
h q[2];
s q[2];
h q[3];
h q[5];
s q[5];
s q[6];
h q[6];
h q[7];
s q[9];
h q[11];
s q[15];
s q[16];
s q[17];
cx q[14],q[1];
cx q[14],q[3];
cx q[14],q[12];
cx q[14],q[16];
cx q[4],q[14];
cx q[6],q[14];
cx q[7],q[14];
cx q[9],q[11];
cx q[14],q[9];
h q[9];
cx q[9],q[14];
cx q[2],q[0];
cx q[0],q[14];
cx q[14],q[2];
cx q[10],q[5];
cx q[5],q[14];
cx q[14],q[10];
cx q[17],q[15];
cx q[15],q[14];
cx q[14],q[17];
s q[0];
h q[0];
h q[1];
s q[2];
h q[2];
h q[3];
s q[4];
h q[4];
s q[4];
s q[5];
h q[9];
s q[10];
s q[12];
h q[12];
s q[17];
h q[18];
cx q[2],q[0];
cx q[6],q[0];
cx q[18],q[0];
cx q[19],q[0];
cx q[5],q[10];
cx q[5],q[11];
cx q[5],q[17];
cx q[0],q[5];
h q[5];
cx q[5],q[0];
cx q[3],q[1];
cx q[1],q[0];
cx q[0],q[3];
cx q[8],q[4];
cx q[4],q[0];
cx q[0],q[8];
cx q[12],q[9];
cx q[9],q[0];
cx q[0],q[12];
h q[1];
h q[3];
s q[4];
h q[4];
s q[5];
s q[8];
s q[9];
h q[16];
s q[16];
s q[17];
swap q[6],q[1];
cx q[6],q[2];
cx q[6],q[5];
cx q[6],q[9];
cx q[6],q[10];
cx q[6],q[17];
cx q[6],q[18];
cx q[6],q[1];
cx q[7],q[6];
cx q[19],q[6];
cx q[3],q[8];
cx q[6],q[3];
h q[3];
cx q[3],q[6];
cx q[12],q[4];
cx q[4],q[6];
cx q[6],q[12];
cx q[16],q[15];
cx q[15],q[6];
cx q[6],q[16];
s q[1];
s q[2];
h q[3];
s q[5];
h q[7];
s q[7];
h q[8];
s q[9];
s q[11];
s q[12];
s q[15];
s q[17];
s q[19];
swap q[5],q[7];
cx q[5],q[1];
cx q[5],q[2];
cx q[5],q[8];
cx q[5],q[12];
cx q[5],q[16];
cx q[5],q[19];
cx q[3],q[5];
cx q[9],q[11];
cx q[9],q[15];
cx q[9],q[7];
cx q[5],q[9];
h q[9];
cx q[9],q[5];
cx q[18],q[17];
cx q[17],q[5];
cx q[5],q[18];
s q[1];
h q[1];
s q[2];
s q[3];
h q[3];
h q[4];
s q[4];
s q[8];
h q[10];
s q[11];
h q[15];
s q[16];
h q[18];
swap q[9],q[4];
cx q[9],q[16];
cx q[1],q[9];
cx q[3],q[9];
cx q[4],q[9];
cx q[2],q[8];
cx q[2],q[15];
cx q[2],q[18];
cx q[2],q[19];
cx q[9],q[2];
h q[2];
cx q[2],q[9];
cx q[11],q[10];
cx q[10],q[9];
cx q[9],q[11];
s q[1];
h q[1];
s q[1];
s q[2];
s q[3];
s q[8];
s q[10];
h q[16];
h q[17];
s q[17];
h q[19];
swap q[8],q[1];
cx q[8],q[10];
cx q[8],q[12];
cx q[8],q[19];
cx q[7],q[8];
cx q[3],q[11];
cx q[3],q[1];
cx q[8],q[3];
h q[3];
cx q[3],q[8];
cx q[16],q[2];
cx q[2],q[8];
cx q[8],q[16];
cx q[18],q[17];
cx q[17],q[8];
cx q[8],q[18];
h q[2];
s q[3];
h q[3];
h q[4];
h q[7];
s q[7];
s q[10];
s q[12];
h q[12];
s q[15];
s q[16];
h q[17];
cx q[3],q[2];
cx q[3],q[10];
cx q[3],q[15];
cx q[3],q[16];
cx q[12],q[3];
cx q[3],q[17];
h q[17];
cx q[17],q[3];
cx q[4],q[1];
cx q[1],q[3];
cx q[3],q[4];
cx q[18],q[7];
cx q[7],q[3];
cx q[3],q[18];
h q[1];
s q[1];
s q[2];
s q[4];
h q[10];
s q[10];
s q[11];
s q[12];
h q[12];
s q[12];
s q[16];
h q[16];
s q[16];
s q[18];
h q[18];
h q[19];
cx q[15],q[2];
cx q[15],q[4];
cx q[15],q[19];
cx q[17],q[15];
cx q[10],q[1];
cx q[1],q[15];
cx q[15],q[10];
cx q[12],q[11];
cx q[11],q[15];
cx q[15],q[12];
cx q[18],q[16];
cx q[16],q[15];
cx q[15],q[18];
s q[2];
h q[2];
s q[7];
h q[12];
s q[16];
cx q[19],q[16];
cx q[11],q[19];
cx q[10],q[18];
cx q[19],q[10];
h q[10];
cx q[10],q[19];
cx q[2],q[1];
cx q[1],q[19];
cx q[19],q[2];
cx q[12],q[7];
cx q[7],q[19];
cx q[19],q[12];
s q[1];
h q[1];
h q[4];
h q[7];
h q[10];
s q[12];
s q[16];
h q[16];
s q[16];
h q[18];
swap q[4],q[1];
cx q[7],q[4];
cx q[18],q[4];
cx q[1],q[4];
cx q[4],q[12];
h q[12];
cx q[12],q[4];
cx q[16],q[10];
cx q[10],q[4];
cx q[4],q[16];
h q[1];
s q[1];
s q[2];
h q[2];
s q[2];
h q[10];
s q[11];
h q[11];
s q[16];
h q[16];
h q[17];
h q[18];
swap q[16],q[1];
cx q[16],q[7];
cx q[11],q[16];
cx q[18],q[16];
cx q[1],q[16];
cx q[16],q[17];
h q[17];
cx q[17],q[16];
cx q[10],q[2];
cx q[2],q[16];
cx q[16],q[10];
h q[1];
s q[7];
h q[11];
s q[17];
h q[17];
swap q[17],q[1];
cx q[17],q[7];
cx q[17],q[10];
cx q[17],q[11];
cx q[17],q[12];
cx q[2],q[17];
cx q[1],q[17];
s q[2];
h q[7];
s q[11];
h q[11];
h q[12];
s q[18];
h q[18];
swap q[7],q[1];
cx q[7],q[2];
cx q[7],q[1];
cx q[10],q[7];
cx q[11],q[7];
cx q[18],q[7];
cx q[7],q[12];
h q[12];
cx q[12],q[7];
s q[1];
h q[1];
s q[10];
s q[11];
h q[11];
s q[11];
h q[12];
s q[18];
cx q[1],q[12];
cx q[1],q[10];
h q[10];
cx q[10],q[1];
cx q[18],q[11];
cx q[11],q[1];
cx q[1],q[18];
h q[2];
s q[2];
s q[12];
h q[12];
h q[18];
swap q[10],q[2];
cx q[10],q[18];
cx q[11],q[10];
cx q[12],q[10];
h q[11];
s q[12];
swap q[11],q[2];
cx q[11],q[12];
cx q[2],q[11];
s q[2];
h q[2];
h q[12];
s q[18];
h q[18];
cx q[12],q[2];
cx q[2],q[18];
cx q[18],q[12];
h q[2];
s q[2];
s q[12];
cx q[2],q[12];
s q[12];
h q[12];
x q[0];
x q[1];
x q[3];
x q[4];
x q[5];
z q[6];
x q[7];
y q[8];
x q[9];
z q[10];
z q[11];
x q[15];
y q[16];
y q[17];
y q[19];
