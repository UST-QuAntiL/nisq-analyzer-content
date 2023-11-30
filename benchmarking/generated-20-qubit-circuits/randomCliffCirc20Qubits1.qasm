OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
creg reg_measure[20];
s q[0];
s q[2];
s q[3];
h q[3];
s q[3];
s q[4];
h q[4];
s q[4];
s q[5];
h q[5];
h q[6];
h q[8];
s q[9];
h q[11];
s q[12];
s q[13];
h q[13];
s q[13];
s q[14];
h q[14];
s q[15];
h q[19];
s q[19];
cx q[0],q[1];
cx q[0],q[11];
cx q[0],q[12];
cx q[5],q[0];
cx q[6],q[0];
cx q[14],q[0];
cx q[18],q[0];
cx q[2],q[8];
cx q[2],q[9];
cx q[2],q[16];
cx q[0],q[2];
h q[2];
cx q[2],q[0];
cx q[4],q[3];
cx q[3],q[0];
cx q[0],q[4];
cx q[13],q[7];
cx q[7],q[0];
cx q[0],q[13];
cx q[19],q[15];
cx q[15],q[0];
cx q[0],q[19];
s q[1];
h q[1];
s q[1];
s q[2];
h q[2];
s q[2];
h q[5];
s q[6];
h q[9];
h q[11];
h q[13];
s q[17];
h q[18];
swap q[5],q[1];
cx q[5],q[3];
cx q[5],q[9];
cx q[5],q[16];
cx q[7],q[5];
cx q[10],q[5];
cx q[11],q[5];
cx q[12],q[5];
cx q[15],q[5];
cx q[18],q[5];
cx q[1],q[5];
cx q[5],q[6];
h q[6];
cx q[6],q[5];
cx q[13],q[2];
cx q[2],q[5];
cx q[5],q[13];
cx q[17],q[14];
cx q[14],q[5];
cx q[5],q[17];
h q[2];
s q[3];
h q[3];
h q[4];
s q[6];
h q[7];
h q[8];
h q[9];
s q[11];
s q[13];
s q[14];
s q[15];
s q[19];
swap q[14],q[3];
cx q[14],q[2];
cx q[14],q[4];
cx q[14],q[6];
cx q[14],q[7];
cx q[14],q[11];
cx q[14],q[19];
cx q[9],q[14];
cx q[10],q[14];
cx q[8],q[13];
cx q[8],q[15];
cx q[8],q[3];
cx q[14],q[8];
h q[8];
cx q[8],q[14];
h q[1];
s q[3];
s q[6];
h q[6];
s q[9];
s q[15];
h q[15];
s q[15];
h q[16];
h q[17];
s q[17];
s q[19];
h q[19];
swap q[9],q[1];
cx q[9],q[8];
cx q[9],q[18];
cx q[2],q[9];
cx q[4],q[9];
cx q[6],q[9];
cx q[10],q[9];
cx q[16],q[9];
cx q[19],q[9];
cx q[3],q[7];
cx q[3],q[12];
cx q[3],q[1];
cx q[9],q[3];
h q[3];
cx q[3],q[9];
cx q[17],q[15];
cx q[15],q[9];
cx q[9],q[17];
h q[1];
s q[3];
h q[6];
s q[7];
h q[7];
h q[8];
s q[8];
s q[13];
s q[15];
h q[15];
s q[16];
s q[17];
s q[18];
h q[18];
swap q[12],q[1];
cx q[12],q[13];
cx q[7],q[12];
cx q[18],q[12];
cx q[6],q[16];
cx q[6],q[17];
cx q[6],q[19];
cx q[12],q[6];
h q[6];
cx q[6],q[12];
cx q[8],q[3];
cx q[3],q[12];
cx q[12],q[8];
cx q[15],q[11];
cx q[11],q[12];
cx q[12],q[15];
s q[1];
h q[1];
s q[4];
s q[6];
h q[6];
s q[7];
h q[7];
h q[8];
s q[8];
h q[10];
s q[15];
s q[16];
h q[17];
s q[19];
h q[19];
s q[19];
swap q[11],q[1];
cx q[11],q[10];
cx q[11],q[17];
cx q[6],q[11];
cx q[2],q[15];
cx q[11],q[2];
h q[2];
cx q[2],q[11];
cx q[7],q[4];
cx q[4],q[11];
cx q[11],q[7];
cx q[16],q[8];
cx q[8],q[11];
cx q[11],q[16];
cx q[19],q[18];
cx q[18],q[11];
cx q[11],q[19];
s q[1];
h q[1];
s q[1];
h q[2];
h q[3];
s q[6];
s q[8];
s q[13];
s q[15];
h q[15];
h q[16];
s q[16];
h q[18];
h q[19];
swap q[15],q[1];
cx q[15],q[7];
cx q[3],q[15];
cx q[18],q[15];
cx q[1],q[15];
cx q[2],q[8];
cx q[2],q[10];
cx q[2],q[13];
cx q[2],q[19];
cx q[15],q[2];
h q[2];
cx q[2],q[15];
cx q[16],q[6];
cx q[6],q[15];
cx q[15],q[16];
h q[1];
s q[1];
s q[2];
h q[7];
s q[8];
h q[8];
h q[10];
h q[13];
h q[16];
h q[17];
swap q[10],q[1];
cx q[10],q[3];
cx q[10],q[18];
cx q[10],q[1];
cx q[6],q[10];
cx q[7],q[10];
cx q[8],q[10];
cx q[13],q[10];
cx q[2],q[16];
cx q[2],q[17];
cx q[10],q[2];
h q[2];
cx q[2],q[10];
s q[1];
h q[1];
s q[1];
s q[2];
h q[2];
s q[3];
h q[3];
s q[3];
h q[4];
h q[17];
s q[18];
h q[19];
swap q[19],q[1];
cx q[19],q[4];
cx q[19],q[13];
cx q[19],q[1];
cx q[16],q[17];
cx q[16],q[18];
cx q[19],q[16];
h q[16];
cx q[16],q[19];
cx q[3],q[2];
cx q[2],q[19];
cx q[19],q[3];
h q[1];
s q[2];
h q[3];
s q[4];
h q[4];
h q[7];
s q[8];
s q[13];
s q[16];
h q[17];
h q[18];
swap q[7],q[1];
cx q[7],q[18];
cx q[13],q[16];
cx q[13],q[17];
cx q[13],q[1];
cx q[7],q[13];
h q[13];
cx q[13],q[7];
cx q[3],q[2];
cx q[2],q[7];
cx q[7],q[3];
cx q[8],q[4];
cx q[4],q[7];
cx q[7],q[8];
s q[1];
h q[1];
s q[1];
s q[2];
h q[3];
s q[4];
h q[4];
s q[6];
h q[6];
s q[6];
h q[13];
h q[16];
s q[17];
h q[17];
s q[17];
h q[18];
swap q[4],q[1];
cx q[4],q[16];
cx q[4],q[18];
cx q[1],q[4];
cx q[4],q[13];
h q[13];
cx q[13],q[4];
cx q[3],q[2];
cx q[2],q[4];
cx q[4],q[3];
cx q[17],q[6];
cx q[6],q[4];
cx q[4],q[17];
s q[1];
h q[3];
h q[6];
s q[6];
h q[13];
s q[13];
s q[17];
h q[17];
s q[18];
cx q[17],q[1];
cx q[8],q[16];
cx q[1],q[8];
h q[8];
cx q[8],q[1];
cx q[6],q[3];
cx q[3],q[1];
cx q[1],q[6];
cx q[18],q[13];
cx q[13],q[1];
cx q[1],q[18];
h q[2];
s q[3];
h q[6];
s q[16];
s q[17];
h q[18];
swap q[6],q[17];
cx q[6],q[2];
cx q[6],q[3];
cx q[6],q[18];
cx q[13],q[6];
cx q[17],q[6];
cx q[6],q[16];
h q[16];
cx q[16],q[6];
h q[3];
h q[8];
s q[8];
s q[13];
s q[16];
h q[16];
s q[16];
s q[18];
h q[18];
cx q[3],q[17];
cx q[18],q[3];
cx q[8],q[2];
cx q[2],q[3];
cx q[3],q[8];
cx q[16],q[13];
cx q[13],q[3];
cx q[3],q[16];
s q[2];
h q[2];
s q[13];
h q[17];
h q[18];
cx q[2],q[13];
cx q[18],q[17];
cx q[17],q[2];
cx q[2],q[18];
s q[8];
h q[8];
s q[8];
s q[13];
s q[16];
h q[16];
s q[18];
swap q[16],q[8];
cx q[8],q[16];
cx q[18],q[13];
cx q[13],q[16];
cx q[16],q[18];
s q[17];
swap q[17],q[8];
cx q[18],q[17];
cx q[13],q[8];
cx q[17],q[13];
h q[13];
cx q[13],q[17];
h q[8];
s q[8];
cx q[8],q[13];
cx q[18],q[8];
h q[13];
s q[13];
s q[18];
x q[0];
y q[1];
z q[3];
x q[5];
x q[6];
x q[8];
x q[9];
z q[10];
y q[11];
z q[13];
z q[16];
y q[17];
y q[18];
x q[19];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19];
measure q[0] -> reg_measure[0];
measure q[1] -> reg_measure[1];
measure q[2] -> reg_measure[2];
measure q[3] -> reg_measure[3];
measure q[4] -> reg_measure[4];
measure q[5] -> reg_measure[5];
measure q[6] -> reg_measure[6];
measure q[7] -> reg_measure[7];
measure q[8] -> reg_measure[8];
measure q[9] -> reg_measure[9];
measure q[10] -> reg_measure[10];
measure q[11] -> reg_measure[11];
measure q[12] -> reg_measure[12];
measure q[13] -> reg_measure[13];
measure q[14] -> reg_measure[14];
measure q[15] -> reg_measure[15];
measure q[16] -> reg_measure[16];
measure q[17] -> reg_measure[17];
measure q[18] -> reg_measure[18];
measure q[19] -> reg_measure[19];
