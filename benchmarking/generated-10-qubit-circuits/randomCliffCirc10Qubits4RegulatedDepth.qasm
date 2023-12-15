OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg reg_measure[10];
h q[2];
h q[3];
s q[4];
h q[4];
s q[4];
s q[5];
s q[7];
h q[7];
s q[8];
swap q[0],q[4];
cx q[0],q[5];
cx q[0],q[8];
cx q[3],q[0];
cx q[7],q[0];
cx q[1],q[2];
cx q[1],q[6];
cx q[0],q[1];
h q[1];
cx q[1],q[0];
h q[3];
h q[4];
s q[5];
h q[5];
s q[8];
h q[8];
s q[9];
swap q[7],q[8];
cx q[7],q[1];
cx q[7],q[2];
cx q[7],q[9];
cx q[3],q[7];
cx q[5],q[7];
cx q[7],q[4];
h q[4];
cx q[4],q[7];
s q[4];
h q[4];
s q[4];
h q[5];
s q[6];
s q[8];
h q[8];
s q[8];
cx q[8],q[2];
cx q[5],q[8];
cx q[3],q[6];
cx q[8],q[3];
h q[3];
cx q[3],q[8];
cx q[4],q[1];
cx q[1],q[8];
cx q[8],q[4];
h q[1];
s q[1];
s q[2];
s q[3];
h q[4];
h q[6];
swap q[3],q[1];
cx q[3],q[2];
cx q[3],q[1];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9];
cx q[3],q[1];
cx q[3],q[2];
swap q[3],q[1];
h q[6];
h q[4];
sdg q[3];
sdg q[2];
sdg q[1];
h q[1];
cx q[8],q[4];
cx q[1],q[8];
cx q[4],q[1];
cx q[3],q[8];
h q[3];
cx q[8],q[3];
cx q[3],q[6];
cx q[5],q[8];
cx q[8],q[2];
sdg q[8];
h q[8];
sdg q[8];
sdg q[6];
h q[5];
sdg q[4];
h q[4];
sdg q[4];
cx q[4],q[7];
h q[4];
cx q[7],q[4];
cx q[5],q[7];
cx q[3],q[7];
cx q[7],q[9];
cx q[7],q[2];
cx q[7],q[1];
swap q[7],q[8];
sdg q[9];
h q[8];
sdg q[8];
h q[5];
sdg q[5];
h q[4];
h q[3];
cx q[1],q[0];
h q[1];
cx q[0],q[1];
cx q[1],q[6];
cx q[1],q[2];
cx q[7],q[0];
cx q[3],q[0];
cx q[0],q[8];
cx q[0],q[5];
swap q[0],q[4];
sdg q[8];
h q[7];
sdg q[7];
sdg q[5];
sdg q[4];
h q[4];
sdg q[4];
h q[3];
h q[2];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9];
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
