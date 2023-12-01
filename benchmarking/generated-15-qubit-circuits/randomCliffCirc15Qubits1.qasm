OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
creg reg_measure[15];
h q[0];
h q[1];
h q[2];
s q[7];
h q[8];
s q[9];
h q[9];
s q[9];
h q[10];
h q[12];
s q[13];
h q[13];
swap q[11],q[0];
cx q[11],q[7];
cx q[11],q[8];
cx q[1],q[11];
cx q[2],q[11];
cx q[10],q[11];
cx q[13],q[11];
cx q[0],q[11];
cx q[3],q[4];
cx q[3],q[6];
cx q[11],q[3];
h q[3];
cx q[3],q[11];
cx q[12],q[9];
cx q[9],q[11];
cx q[11],q[12];
h q[0];
h q[1];
s q[2];
h q[2];
h q[4];
s q[5];
h q[6];
s q[7];
h q[7];
s q[7];
s q[8];
h q[8];
s q[8];
s q[10];
s q[12];
h q[12];
h q[13];
cx q[0],q[6];
cx q[0],q[14];
cx q[1],q[4];
cx q[1],q[5];
cx q[1],q[10];
cx q[1],q[13];
cx q[0],q[1];
h q[1];
cx q[1],q[0];
cx q[7],q[2];
cx q[2],q[0];
cx q[0],q[7];
cx q[12],q[8];
cx q[8],q[0];
cx q[0],q[12];
s q[1];
s q[4];
h q[4];
s q[4];
h q[5];
s q[6];
h q[7];
s q[9];
h q[10];
s q[13];
cx q[5],q[3];
cx q[5],q[13];
cx q[5],q[14];
cx q[5],q[9];
h q[9];
cx q[9],q[5];
cx q[4],q[1];
cx q[1],q[5];
cx q[5],q[4];
cx q[7],q[6];
cx q[6],q[5];
cx q[5],q[7];
cx q[10],q[8];
cx q[8],q[5];
cx q[5],q[10];
s q[1];
h q[1];
s q[2];
s q[3];
h q[4];
h q[6];
h q[7];
s q[8];
h q[8];
h q[10];
s q[12];
s q[14];
h q[14];
s q[14];
swap q[7],q[1];
cx q[7],q[3];
cx q[7],q[12];
cx q[8],q[7];
cx q[9],q[7];
cx q[10],q[7];
cx q[13],q[7];
cx q[1],q[7];
cx q[2],q[4];
cx q[7],q[2];
h q[2];
cx q[2],q[7];
cx q[14],q[6];
cx q[6],q[7];
cx q[7],q[14];
s q[1];
h q[1];
s q[1];
s q[4];
s q[9];
h q[12];
s q[12];
s q[13];
h q[13];
cx q[6],q[4];
cx q[8],q[6];
cx q[3],q[9];
cx q[6],q[3];
h q[3];
cx q[3],q[6];
cx q[10],q[1];
cx q[1],q[6];
cx q[6],q[10];
cx q[13],q[12];
cx q[12],q[6];
cx q[6],q[13];
s q[1];
h q[1];
h q[2];
s q[4];
h q[4];
h q[9];
s q[10];
s q[12];
h q[12];
h q[14];
swap q[9],q[1];
cx q[9],q[2];
cx q[9],q[8];
cx q[9],q[10];
cx q[4],q[9];
cx q[14],q[1];
cx q[9],q[14];
h q[14];
cx q[14],q[9];
cx q[13],q[12];
cx q[12],q[9];
cx q[9],q[13];
s q[1];
h q[1];
s q[1];
s q[3];
h q[4];
h q[8];
h q[10];
s q[10];
h q[12];
s q[14];
h q[14];
cx q[1],q[8];
cx q[2],q[1];
cx q[4],q[1];
cx q[14],q[1];
cx q[1],q[12];
h q[12];
cx q[12],q[1];
cx q[10],q[3];
cx q[3],q[1];
cx q[1],q[10];
h q[2];
s q[8];
s q[10];
h q[10];
s q[12];
s q[13];
s q[14];
h q[14];
swap q[2],q[8];
cx q[2],q[12];
cx q[14],q[2];
cx q[8],q[2];
cx q[13],q[10];
cx q[10],q[2];
cx q[2],q[13];
s q[8];
s q[10];
h q[10];
h q[13];
cx q[10],q[3];
cx q[12],q[3];
cx q[8],q[13];
cx q[3],q[8];
h q[8];
cx q[8],q[3];
h q[4];
s q[4];
h q[12];
s q[13];
h q[13];
swap q[10],q[4];
cx q[10],q[8];
cx q[10],q[14];
cx q[13],q[10];
cx q[12],q[4];
cx q[10],q[12];
h q[12];
cx q[12],q[10];
s q[4];
h q[4];
h q[8];
h q[12];
h q[13];
s q[13];
s q[14];
swap q[12],q[4];
cx q[12],q[14];
cx q[12],q[4];
h q[4];
cx q[4],q[12];
cx q[13],q[8];
cx q[8],q[12];
cx q[12],q[13];
h q[4];
s q[13];
h q[13];
swap q[14],q[4];
cx q[13],q[14];
cx q[4],q[14];
h q[4];
s q[13];
swap q[8],q[4];
cx q[8],q[13];
h q[13];
cx q[13],q[8];
s q[4];
h q[13];
swap q[13],q[4];
cx q[13],q[4];
z q[0];
y q[1];
y q[3];
y q[4];
z q[5];
z q[6];
y q[7];
z q[8];
z q[10];
z q[11];
y q[12];
x q[13];
z q[14];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14];
z q[14];
x q[13];
y q[12];
z q[11];
z q[10];
z q[8];
y q[7];
z q[6];
z q[5];
y q[4];
y q[3];
y q[1];
z q[0];
cx q[13],q[4];
swap q[13],q[4];
h q[13];
sdg q[4];
cx q[13],q[8];
h q[13];
cx q[8],q[13];
swap q[8],q[4];
sdg q[13];
h q[4];
cx q[4],q[14];
cx q[13],q[14];
swap q[14],q[4];
h q[13];
sdg q[13];
h q[4];
cx q[12],q[13];
cx q[8],q[12];
cx q[13],q[8];
cx q[4],q[12];
h q[4];
cx q[12],q[4];
cx q[12],q[14];
swap q[12],q[4];
sdg q[14];
sdg q[13];
h q[13];
h q[12];
h q[8];
h q[4];
sdg q[4];
cx q[12],q[10];
h q[12];
cx q[10],q[12];
cx q[12],q[4];
cx q[13],q[10];
cx q[10],q[14];
cx q[10],q[8];
swap q[10],q[4];
h q[13];
sdg q[13];
h q[12];
sdg q[4];
h q[4];
cx q[8],q[3];
h q[8];
cx q[3],q[8];
cx q[8],q[13];
cx q[12],q[3];
cx q[10],q[3];
h q[13];
h q[10];
sdg q[10];
sdg q[8];
cx q[2],q[13];
cx q[10],q[2];
cx q[13],q[10];
cx q[8],q[2];
cx q[14],q[2];
cx q[2],q[12];
swap q[2],q[8];
h q[14];
sdg q[14];
sdg q[13];
sdg q[12];
h q[10];
sdg q[10];
sdg q[8];
h q[2];
cx q[1],q[10];
cx q[3],q[1];
cx q[10],q[3];
cx q[12],q[1];
h q[12];
cx q[1],q[12];
cx q[14],q[1];
cx q[4],q[1];
cx q[2],q[1];
cx q[1],q[8];
h q[14];
sdg q[14];
h q[12];
sdg q[10];
h q[10];
h q[8];
h q[4];
sdg q[3];
sdg q[1];
h q[1];
sdg q[1];
cx q[9],q[13];
cx q[12],q[9];
cx q[13],q[12];
cx q[14],q[9];
h q[14];
cx q[9],q[14];
cx q[14],q[1];
cx q[4],q[9];
cx q[9],q[10];
cx q[9],q[8];
cx q[9],q[2];
swap q[9],q[1];
h q[14];
h q[12];
sdg q[12];
sdg q[10];
h q[9];
h q[4];
sdg q[4];
h q[2];
h q[1];
sdg q[1];
cx q[6],q[13];
cx q[12],q[6];
cx q[13],q[12];
cx q[6],q[10];
cx q[1],q[6];
cx q[10],q[1];
cx q[3],q[6];
h q[3];
cx q[6],q[3];
cx q[3],q[9];
cx q[8],q[6];
cx q[6],q[4];
h q[13];
sdg q[13];
sdg q[12];
h q[12];
sdg q[9];
sdg q[4];
sdg q[1];
h q[1];
sdg q[1];
cx q[7],q[14];
cx q[6],q[7];
cx q[14],q[6];
cx q[2],q[7];
h q[2];
cx q[7],q[2];
cx q[2],q[4];
cx q[1],q[7];
cx q[13],q[7];
cx q[10],q[7];
cx q[9],q[7];
cx q[8],q[7];
cx q[7],q[12];
cx q[7],q[3];
swap q[7],q[1];
sdg q[14];
h q[14];
sdg q[14];
sdg q[12];
h q[10];
h q[8];
sdg q[8];
h q[7];
h q[6];
h q[4];
sdg q[3];
sdg q[2];
h q[1];
sdg q[1];
cx q[5],q[10];
cx q[8],q[5];
cx q[10],q[8];
cx q[5],q[7];
cx q[6],q[5];
cx q[7],q[6];
cx q[5],q[4];
cx q[1],q[5];
cx q[4],q[1];
cx q[9],q[5];
h q[9];
cx q[5],q[9];
cx q[5],q[14];
cx q[5],q[13];
cx q[5],q[3];
sdg q[13];
h q[10];
sdg q[9];
h q[7];
sdg q[6];
h q[5];
sdg q[4];
h q[4];
sdg q[4];
sdg q[1];
cx q[0],q[12];
cx q[8],q[0];
cx q[12],q[8];
cx q[0],q[7];
cx q[2],q[0];
cx q[7],q[2];
cx q[1],q[0];
h q[1];
cx q[0],q[1];
cx q[1],q[13];
cx q[1],q[10];
cx q[1],q[5];
cx q[1],q[4];
cx q[0],q[14];
cx q[0],q[6];
h q[13];
h q[12];
sdg q[12];
sdg q[10];
sdg q[8];
h q[8];
sdg q[8];
sdg q[7];
h q[7];
sdg q[7];
h q[6];
sdg q[5];
h q[4];
h q[2];
sdg q[2];
h q[1];
h q[0];
cx q[11],q[12];
cx q[9],q[11];
cx q[12],q[9];
cx q[3],q[11];
h q[3];
cx q[11],q[3];
cx q[3],q[6];
cx q[3],q[4];
cx q[0],q[11];
cx q[13],q[11];
cx q[10],q[11];
cx q[2],q[11];
cx q[1],q[11];
cx q[11],q[8];
cx q[11],q[7];
swap q[11],q[0];
h q[13];
sdg q[13];
h q[12];
h q[10];
sdg q[9];
h q[9];
sdg q[9];
h q[8];
sdg q[7];
h q[2];
h q[1];
h q[0];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14];
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
