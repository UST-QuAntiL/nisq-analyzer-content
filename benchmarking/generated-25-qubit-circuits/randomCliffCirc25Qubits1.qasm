OPENQASM 2.0;
include "qelib1.inc";
qreg q[25];
creg reg_measure[25];
h q[0];
h q[1];
s q[3];
h q[4];
s q[5];
h q[5];
s q[5];
h q[6];
h q[7];
h q[8];
s q[10];
h q[11];
h q[14];
h q[15];
h q[17];
s q[18];
s q[19];
h q[19];
h q[20];
h q[22];
s q[23];
s q[24];
h q[24];
cx q[0],q[2];
cx q[0],q[3];
cx q[0],q[8];
cx q[0],q[10];
cx q[0],q[15];
cx q[0],q[18];
cx q[6],q[0];
cx q[9],q[0];
cx q[11],q[0];
cx q[19],q[0];
cx q[22],q[0];
cx q[4],q[7];
cx q[4],q[12];
cx q[4],q[17];
cx q[4],q[20];
cx q[0],q[4];
h q[4];
cx q[4],q[0];
cx q[5],q[1];
cx q[1],q[0];
cx q[0],q[5];
cx q[14],q[13];
cx q[13],q[0];
cx q[0],q[14];
cx q[24],q[23];
cx q[23],q[0];
cx q[0],q[24];
s q[1];
h q[1];
s q[2];
s q[3];
h q[4];
h q[5];
s q[8];
h q[8];
s q[8];
s q[9];
s q[11];
h q[11];
s q[11];
s q[13];
h q[13];
h q[14];
h q[16];
h q[17];
s q[18];
h q[19];
s q[20];
h q[21];
s q[21];
s q[24];
h q[24];
cx q[21],q[2];
cx q[21],q[3];
cx q[21],q[14];
cx q[21],q[16];
cx q[21],q[22];
cx q[4],q[21];
cx q[15],q[21];
cx q[24],q[21];
cx q[5],q[9];
cx q[5],q[17];
cx q[5],q[18];
cx q[5],q[20];
cx q[21],q[5];
h q[5];
cx q[5],q[21];
cx q[8],q[1];
cx q[1],q[21];
cx q[21],q[8];
cx q[13],q[11];
cx q[11],q[21];
cx q[21],q[13];
cx q[23],q[19];
cx q[19],q[21];
cx q[21],q[23];
s q[1];
h q[1];
s q[2];
h q[2];
s q[4];
h q[4];
s q[7];
h q[7];
s q[9];
s q[11];
h q[12];
s q[14];
h q[14];
s q[14];
h q[15];
s q[16];
h q[17];
s q[20];
s q[22];
h q[22];
s q[22];
cx q[23],q[6];
cx q[23],q[10];
cx q[23],q[15];
cx q[3],q[23];
cx q[7],q[23];
cx q[12],q[23];
cx q[9],q[11];
cx q[9],q[16];
cx q[9],q[17];
cx q[9],q[18];
cx q[9],q[20];
cx q[9],q[24];
cx q[23],q[9];
h q[9];
cx q[9],q[23];
cx q[2],q[1];
cx q[1],q[23];
cx q[23],q[2];
cx q[5],q[4];
cx q[4],q[23];
cx q[23],q[5];
cx q[22],q[14];
cx q[14],q[23];
cx q[23],q[22];
s q[1];
s q[4];
h q[4];
h q[9];
h q[10];
h q[12];
s q[12];
s q[13];
h q[14];
s q[16];
h q[18];
s q[19];
h q[19];
h q[22];
s q[22];
h q[24];
swap q[14],q[1];
cx q[14],q[3];
cx q[14],q[8];
cx q[14],q[24];
cx q[9],q[14];
cx q[20],q[14];
cx q[1],q[14];
cx q[5],q[10];
cx q[5],q[11];
cx q[5],q[13];
cx q[5],q[15];
cx q[5],q[17];
cx q[14],q[5];
h q[5];
cx q[5],q[14];
cx q[12],q[4];
cx q[4],q[14];
cx q[14],q[12];
cx q[18],q[16];
cx q[16],q[14];
cx q[14],q[18];
cx q[22],q[19];
cx q[19],q[14];
cx q[14],q[22];
h q[1];
s q[1];
h q[3];
s q[5];
h q[5];
h q[7];
s q[9];
s q[11];
h q[11];
s q[15];
h q[15];
s q[15];
s q[17];
h q[17];
s q[17];
h q[18];
s q[22];
s q[24];
swap q[11],q[1];
cx q[11],q[2];
cx q[11],q[9];
cx q[11],q[18];
cx q[11],q[24];
cx q[3],q[11];
cx q[5],q[11];
cx q[8],q[11];
cx q[13],q[11];
cx q[20],q[11];
cx q[1],q[11];
cx q[4],q[7];
cx q[4],q[12];
cx q[4],q[22];
cx q[11],q[4];
h q[4];
cx q[4],q[11];
cx q[16],q[15];
cx q[15],q[11];
cx q[11],q[16];
cx q[19],q[17];
cx q[17],q[11];
cx q[11],q[19];
s q[1];
h q[1];
s q[2];
h q[2];
s q[2];
h q[3];
s q[4];
s q[5];
s q[6];
h q[6];
h q[10];
h q[12];
h q[13];
h q[16];
h q[18];
h q[20];
h q[24];
swap q[20],q[1];
cx q[20],q[3];
cx q[20],q[9];
cx q[20],q[13];
cx q[20],q[18];
cx q[6],q[20];
cx q[8],q[20];
cx q[10],q[20];
cx q[19],q[20];
cx q[24],q[20];
cx q[1],q[20];
cx q[4],q[5];
cx q[4],q[15];
cx q[4],q[16];
cx q[4],q[22];
cx q[20],q[4];
h q[4];
cx q[4],q[20];
cx q[12],q[2];
cx q[2],q[20];
cx q[20],q[12];
s q[1];
h q[1];
s q[3];
s q[4];
h q[7];
h q[8];
h q[10];
h q[12];
s q[15];
h q[15];
s q[17];
h q[17];
s q[18];
h q[18];
s q[24];
swap q[17],q[1];
cx q[17],q[7];
cx q[17],q[8];
cx q[17],q[9];
cx q[17],q[24];
cx q[2],q[17];
cx q[10],q[17];
cx q[12],q[17];
cx q[15],q[17];
cx q[1],q[17];
cx q[4],q[19];
cx q[17],q[4];
h q[4];
cx q[4],q[17];
cx q[5],q[3];
cx q[3],q[17];
cx q[17],q[5];
cx q[22],q[18];
cx q[18],q[17];
cx q[17],q[22];
h q[1];
s q[1];
h q[2];
s q[4];
s q[5];
h q[6];
s q[7];
h q[9];
s q[12];
h q[13];
h q[15];
s q[15];
h q[16];
s q[16];
s q[22];
s q[24];
h q[24];
s q[24];
swap q[7],q[1];
cx q[7],q[6];
cx q[7],q[1];
cx q[3],q[7];
cx q[10],q[7];
cx q[4],q[5];
cx q[4],q[9];
cx q[4],q[12];
cx q[4],q[13];
cx q[4],q[22];
cx q[7],q[4];
h q[4];
cx q[4],q[7];
cx q[15],q[2];
cx q[2],q[7];
cx q[7],q[15];
cx q[24],q[16];
cx q[16],q[7];
cx q[7],q[24];
h q[1];
h q[4];
h q[5];
h q[6];
s q[8];
h q[8];
h q[13];
h q[15];
s q[16];
h q[19];
s q[22];
h q[24];
swap q[5],q[1];
cx q[5],q[15];
cx q[5],q[18];
cx q[5],q[19];
cx q[4],q[5];
cx q[8],q[5];
cx q[9],q[5];
cx q[1],q[5];
cx q[6],q[10];
cx q[6],q[13];
cx q[6],q[16];
cx q[6],q[22];
cx q[5],q[6];
h q[6];
cx q[6],q[5];
cx q[24],q[3];
cx q[3],q[5];
cx q[5],q[24];
h q[1];
h q[6];
h q[8];
h q[9];
h q[12];
s q[15];
h q[15];
s q[18];
h q[19];
h q[22];
s q[24];
h q[24];
swap q[4],q[8];
cx q[4],q[2];
cx q[3],q[4];
cx q[6],q[4];
cx q[12],q[4];
cx q[13],q[4];
cx q[15],q[4];
cx q[19],q[4];
cx q[1],q[18];
cx q[1],q[22];
cx q[4],q[1];
h q[1];
cx q[1],q[4];
cx q[24],q[9];
cx q[9],q[4];
cx q[4],q[24];
s q[1];
h q[3];
s q[6];
h q[8];
s q[8];
s q[9];
s q[10];
h q[10];
s q[16];
h q[24];
swap q[13],q[8];
cx q[13],q[1];
cx q[13],q[6];
cx q[10],q[13];
cx q[19],q[13];
cx q[22],q[13];
cx q[24],q[13];
cx q[3],q[16];
cx q[3],q[8];
cx q[13],q[3];
h q[3];
cx q[3],q[13];
cx q[15],q[9];
cx q[9],q[13];
cx q[13],q[15];
h q[1];
s q[1];
h q[8];
s q[9];
h q[10];
s q[10];
s q[12];
h q[12];
s q[12];
s q[18];
h q[18];
s q[19];
s q[22];
h q[22];
h q[24];
swap q[3],q[1];
cx q[3],q[8];
cx q[3],q[9];
cx q[3],q[24];
cx q[6],q[3];
cx q[15],q[3];
cx q[18],q[3];
cx q[22],q[3];
cx q[10],q[2];
cx q[2],q[3];
cx q[3],q[10];
cx q[19],q[12];
cx q[12],q[3];
cx q[3],q[19];
h q[1];
h q[6];
s q[8];
s q[9];
h q[10];
s q[12];
h q[12];
s q[12];
s q[15];
h q[15];
h q[18];
h q[19];
h q[22];
s q[24];
h q[24];
swap q[2],q[1];
cx q[2],q[8];
cx q[2],q[9];
cx q[2],q[10];
cx q[2],q[18];
cx q[2],q[19];
cx q[2],q[22];
cx q[6],q[2];
cx q[15],q[12];
cx q[12],q[2];
cx q[2],q[15];
cx q[24],q[16];
cx q[16],q[2];
cx q[2],q[24];
s q[1];
h q[1];
s q[6];
s q[10];
h q[10];
h q[16];
s q[19];
h q[19];
s q[19];
h q[24];
swap q[18],q[1];
cx q[9],q[18];
cx q[22],q[18];
cx q[6],q[12];
cx q[6],q[15];
cx q[6],q[16];
cx q[6],q[24];
cx q[6],q[1];
cx q[18],q[6];
h q[6];
cx q[6],q[18];
cx q[19],q[10];
cx q[10],q[18];
cx q[18],q[19];
h q[9];
s q[10];
s q[16];
h q[16];
s q[16];
s q[19];
cx q[9],q[8];
cx q[24],q[8];
cx q[6],q[10];
cx q[6],q[15];
cx q[6],q[19];
cx q[8],q[6];
h q[6];
cx q[6],q[8];
cx q[22],q[16];
cx q[16],q[8];
cx q[8],q[22];
s q[1];
h q[1];
s q[1];
s q[6];
h q[6];
s q[9];
s q[15];
h q[15];
s q[16];
h q[16];
s q[16];
s q[19];
swap q[6],q[1];
cx q[10],q[6];
cx q[15],q[6];
cx q[1],q[6];
cx q[12],q[19];
cx q[12],q[24];
cx q[6],q[12];
h q[12];
cx q[12],q[6];
cx q[16],q[9];
cx q[9],q[6];
cx q[6],q[16];
h q[1];
s q[10];
s q[12];
h q[12];
h q[15];
s q[16];
h q[16];
h q[19];
s q[19];
s q[22];
s q[24];
swap q[22],q[1];
cx q[22],q[15];
cx q[22],q[1];
cx q[22],q[24];
h q[24];
cx q[24],q[22];
cx q[12],q[10];
cx q[10],q[22];
cx q[22],q[12];
cx q[19],q[16];
cx q[16],q[22];
cx q[22],q[19];
h q[1];
s q[1];
s q[15];
h q[16];
h q[19];
swap q[9],q[1];
cx q[9],q[10];
cx q[9],q[1];
cx q[24],q[9];
cx q[15],q[16];
cx q[15],q[19];
cx q[9],q[15];
h q[15];
cx q[15],q[9];
s q[1];
h q[1];
s q[1];
h q[19];
s q[24];
cx q[1],q[16];
cx q[10],q[1];
cx q[12],q[1];
cx q[15],q[1];
cx q[19],q[24];
cx q[1],q[19];
h q[19];
cx q[19],q[1];
s q[10];
h q[10];
s q[16];
s q[24];
h q[24];
swap q[12],q[10];
cx q[12],q[15];
cx q[12],q[16];
cx q[12],q[10];
cx q[24],q[12];
cx q[12],q[19];
h q[19];
cx q[19],q[12];
s q[10];
h q[10];
s q[10];
s q[19];
s q[24];
swap q[24],q[10];
cx q[24],q[16];
cx q[15],q[19];
cx q[15],q[10];
cx q[24],q[15];
h q[15];
cx q[15],q[24];
s q[10];
h q[10];
s q[15];
s q[16];
s q[19];
swap q[16],q[10];
cx q[16],q[15];
cx q[16],q[19];
cx q[16],q[10];
h q[19];
cx q[19],q[15];
cx q[15],q[10];
cx q[10],q[19];
s q[15];
h q[15];
s q[15];
swap q[19],q[15];
cx q[19],q[15];
s q[15];
h q[15];
y q[0];
x q[2];
x q[3];
y q[4];
y q[5];
z q[7];
z q[11];
z q[12];
y q[13];
z q[14];
y q[15];
x q[16];
x q[17];
z q[18];
y q[20];
z q[21];
x q[22];
y q[23];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24];
y q[23];
x q[22];
z q[21];
y q[20];
z q[18];
x q[17];
x q[16];
y q[15];
z q[14];
y q[13];
z q[12];
z q[11];
z q[7];
y q[5];
y q[4];
x q[3];
x q[2];
y q[0];
h q[15];
sdg q[15];
cx q[19],q[15];
swap q[19],q[15];
sdg q[15];
h q[15];
sdg q[15];
cx q[10],q[19];
cx q[15],q[10];
cx q[19],q[15];
h q[19];
cx q[16],q[10];
cx q[16],q[19];
cx q[16],q[15];
swap q[16],q[10];
sdg q[19];
sdg q[16];
sdg q[15];
h q[10];
sdg q[10];
cx q[15],q[24];
h q[15];
cx q[24],q[15];
cx q[15],q[10];
cx q[15],q[19];
cx q[24],q[16];
swap q[24],q[10];
sdg q[24];
sdg q[19];
sdg q[10];
h q[10];
sdg q[10];
cx q[19],q[12];
h q[19];
cx q[12],q[19];
cx q[24],q[12];
cx q[12],q[10];
cx q[12],q[16];
cx q[12],q[15];
swap q[12],q[10];
h q[24];
sdg q[24];
sdg q[16];
h q[10];
sdg q[10];
cx q[19],q[1];
h q[19];
cx q[1],q[19];
cx q[19],q[24];
cx q[15],q[1];
cx q[12],q[1];
cx q[10],q[1];
cx q[1],q[16];
sdg q[24];
h q[19];
sdg q[1];
h q[1];
sdg q[1];
cx q[15],q[9];
h q[15];
cx q[9],q[15];
cx q[15],q[19];
cx q[15],q[16];
cx q[24],q[9];
cx q[9],q[1];
cx q[9],q[10];
swap q[9],q[1];
h q[19];
h q[16];
sdg q[15];
sdg q[1];
h q[1];
cx q[22],q[19];
cx q[16],q[22];
cx q[19],q[16];
cx q[22],q[12];
cx q[10],q[22];
cx q[12],q[10];
cx q[24],q[22];
h q[24];
cx q[22],q[24];
cx q[22],q[1];
cx q[22],q[15];
swap q[22],q[1];
sdg q[24];
sdg q[22];
sdg q[19];
h q[19];
h q[16];
sdg q[16];
h q[15];
h q[12];
sdg q[12];
sdg q[10];
h q[1];
cx q[6],q[16];
cx q[9],q[6];
cx q[16],q[9];
cx q[12],q[6];
h q[12];
cx q[6],q[12];
cx q[12],q[24];
cx q[12],q[19];
cx q[1],q[6];
cx q[15],q[6];
cx q[10],q[6];
swap q[6],q[1];
sdg q[19];
sdg q[16];
h q[16];
sdg q[16];
h q[15];
sdg q[15];
sdg q[9];
h q[6];
sdg q[6];
sdg q[1];
h q[1];
sdg q[1];
cx q[8],q[22];
cx q[16],q[8];
cx q[22],q[16];
cx q[6],q[8];
h q[6];
cx q[8],q[6];
cx q[6],q[19];
cx q[6],q[15];
cx q[6],q[10];
cx q[24],q[8];
cx q[9],q[8];
sdg q[19];
sdg q[16];
h q[16];
sdg q[16];
sdg q[10];
h q[9];
cx q[18],q[19];
cx q[10],q[18];
cx q[19],q[10];
cx q[6],q[18];
h q[6];
cx q[18],q[6];
cx q[6],q[1];
cx q[6],q[24];
cx q[6],q[16];
cx q[6],q[15];
cx q[6],q[12];
cx q[22],q[18];
cx q[9],q[18];
swap q[18],q[1];
h q[24];
sdg q[19];
h q[19];
sdg q[19];
h q[16];
h q[10];
sdg q[10];
sdg q[6];
h q[1];
sdg q[1];
cx q[2],q[24];
cx q[16],q[2];
cx q[24],q[16];
cx q[2],q[15];
cx q[12],q[2];
cx q[15],q[12];
cx q[6],q[2];
cx q[2],q[22];
cx q[2],q[19];
cx q[2],q[18];
cx q[2],q[10];
cx q[2],q[9];
cx q[2],q[8];
swap q[2],q[1];
h q[24];
sdg q[24];
h q[22];
h q[19];
h q[18];
h q[15];
sdg q[15];
sdg q[12];
h q[12];
sdg q[12];
h q[10];
sdg q[9];
sdg q[8];
h q[6];
h q[1];
cx q[3],q[19];
cx q[12],q[3];
cx q[19],q[12];
cx q[3],q[10];
cx q[2],q[3];
cx q[10],q[2];
cx q[22],q[3];
cx q[18],q[3];
cx q[15],q[3];
cx q[6],q[3];
cx q[3],q[24];
cx q[3],q[9];
cx q[3],q[8];
swap q[3],q[1];
h q[24];
h q[22];
sdg q[22];
sdg q[19];
h q[18];
sdg q[18];
sdg q[12];
h q[12];
sdg q[12];
sdg q[10];
h q[10];
sdg q[9];
h q[8];
sdg q[1];
h q[1];
cx q[13],q[15];
cx q[9],q[13];
cx q[15],q[9];
cx q[3],q[13];
h q[3];
cx q[13],q[3];
cx q[3],q[8];
cx q[3],q[16];
cx q[24],q[13];
cx q[22],q[13];
cx q[19],q[13];
cx q[10],q[13];
cx q[13],q[6];
cx q[13],q[1];
swap q[13],q[8];
h q[24];
sdg q[16];
h q[10];
sdg q[10];
sdg q[9];
sdg q[8];
h q[8];
sdg q[6];
h q[3];
sdg q[1];
cx q[4],q[24];
cx q[9],q[4];
cx q[24],q[9];
cx q[1],q[4];
h q[1];
cx q[4],q[1];
cx q[1],q[22];
cx q[1],q[18];
cx q[19],q[4];
cx q[15],q[4];
cx q[13],q[4];
cx q[12],q[4];
cx q[6],q[4];
cx q[3],q[4];
cx q[4],q[2];
swap q[4],q[8];
h q[24];
sdg q[24];
h q[22];
h q[19];
sdg q[18];
h q[15];
sdg q[15];
h q[12];
h q[9];
h q[8];
h q[6];
h q[1];
cx q[5],q[24];
cx q[3],q[5];
cx q[24],q[3];
cx q[6],q[5];
h q[6];
cx q[5],q[6];
cx q[6],q[22];
cx q[6],q[16];
cx q[6],q[13];
cx q[6],q[10];
cx q[1],q[5];
cx q[9],q[5];
cx q[8],q[5];
cx q[4],q[5];
cx q[5],q[19];
cx q[5],q[18];
cx q[5],q[15];
swap q[5],q[1];
h q[24];
sdg q[22];
h q[19];
sdg q[16];
h q[15];
h q[13];
h q[8];
sdg q[8];
h q[6];
h q[5];
h q[4];
h q[1];
cx q[7],q[24];
cx q[16],q[7];
cx q[24],q[16];
cx q[7],q[15];
cx q[2],q[7];
cx q[15],q[2];
cx q[4],q[7];
h q[4];
cx q[7],q[4];
cx q[4],q[22];
cx q[4],q[13];
cx q[4],q[12];
cx q[4],q[9];
cx q[4],q[5];
cx q[10],q[7];
cx q[3],q[7];
cx q[7],q[1];
cx q[7],q[6];
swap q[7],q[1];
sdg q[24];
h q[24];
sdg q[24];
sdg q[22];
sdg q[16];
h q[16];
sdg q[15];
h q[15];
h q[13];
sdg q[12];
h q[9];
sdg q[7];
h q[6];
sdg q[5];
sdg q[4];
h q[2];
sdg q[1];
h q[1];
cx q[17],q[22];
cx q[18],q[17];
cx q[22],q[18];
cx q[17],q[5];
cx q[3],q[17];
cx q[5],q[3];
cx q[4],q[17];
h q[4];
cx q[17],q[4];
cx q[4],q[19];
cx q[1],q[17];
cx q[15],q[17];
cx q[12],q[17];
cx q[10],q[17];
cx q[2],q[17];
cx q[17],q[24];
cx q[17],q[9];
cx q[17],q[8];
cx q[17],q[7];
swap q[17],q[1];
sdg q[24];
h q[18];
sdg q[18];
h q[17];
sdg q[17];
h q[15];
sdg q[15];
h q[12];
h q[10];
h q[8];
h q[7];
sdg q[4];
sdg q[3];
h q[1];
sdg q[1];
cx q[20],q[12];
cx q[2],q[20];
cx q[12],q[2];
cx q[4],q[20];
h q[4];
cx q[20],q[4];
cx q[4],q[22];
cx q[4],q[16];
cx q[4],q[15];
cx q[4],q[5];
cx q[1],q[20];
cx q[24],q[20];
cx q[19],q[20];
cx q[10],q[20];
cx q[8],q[20];
cx q[6],q[20];
cx q[20],q[18];
cx q[20],q[13];
cx q[20],q[9];
cx q[20],q[3];
swap q[20],q[1];
h q[24];
h q[20];
h q[18];
h q[16];
h q[13];
h q[12];
h q[10];
h q[6];
sdg q[6];
sdg q[5];
sdg q[4];
h q[3];
sdg q[2];
h q[2];
sdg q[2];
h q[1];
sdg q[1];
cx q[11],q[19];
cx q[17],q[11];
cx q[19],q[17];
cx q[11],q[16];
cx q[15],q[11];
cx q[16],q[15];
cx q[4],q[11];
h q[4];
cx q[11],q[4];
cx q[4],q[22];
cx q[4],q[12];
cx q[4],q[7];
cx q[1],q[11];
cx q[20],q[11];
cx q[13],q[11];
cx q[8],q[11];
cx q[5],q[11];
cx q[3],q[11];
cx q[11],q[24];
cx q[11],q[18];
cx q[11],q[9];
cx q[11],q[2];
swap q[11],q[1];
sdg q[24];
sdg q[22];
h q[18];
sdg q[17];
h q[17];
sdg q[17];
sdg q[15];
h q[15];
sdg q[15];
h q[11];
sdg q[11];
sdg q[9];
h q[7];
h q[5];
sdg q[5];
h q[3];
sdg q[1];
h q[1];
cx q[14],q[22];
cx q[19],q[14];
cx q[22],q[19];
cx q[14],q[18];
cx q[16],q[14];
cx q[18],q[16];
cx q[14],q[12];
cx q[4],q[14];
cx q[12],q[4];
cx q[5],q[14];
h q[5];
cx q[14],q[5];
cx q[5],q[17];
cx q[5],q[15];
cx q[5],q[13];
cx q[5],q[11];
cx q[5],q[10];
cx q[1],q[14];
cx q[20],q[14];
cx q[9],q[14];
cx q[14],q[24];
cx q[14],q[8];
cx q[14],q[3];
swap q[14],q[1];
h q[24];
sdg q[22];
h q[22];
h q[19];
sdg q[19];
h q[18];
sdg q[16];
h q[14];
sdg q[13];
sdg q[12];
h q[12];
h q[10];
h q[9];
h q[4];
sdg q[4];
sdg q[1];
cx q[23],q[22];
cx q[14],q[23];
cx q[22],q[14];
cx q[23],q[5];
cx q[4],q[23];
cx q[5],q[4];
cx q[23],q[2];
cx q[1],q[23];
cx q[2],q[1];
cx q[9],q[23];
h q[9];
cx q[23],q[9];
cx q[9],q[24];
cx q[9],q[20];
cx q[9],q[18];
cx q[9],q[17];
cx q[9],q[16];
cx q[9],q[11];
cx q[12],q[23];
cx q[7],q[23];
cx q[3],q[23];
cx q[23],q[15];
cx q[23],q[10];
cx q[23],q[6];
sdg q[22];
h q[22];
sdg q[22];
sdg q[20];
h q[17];
sdg q[16];
h q[15];
sdg q[14];
h q[14];
sdg q[14];
h q[12];
sdg q[11];
sdg q[9];
h q[7];
sdg q[7];
h q[4];
sdg q[4];
h q[2];
sdg q[2];
h q[1];
sdg q[1];
cx q[21],q[23];
cx q[19],q[21];
cx q[23],q[19];
cx q[21],q[13];
cx q[11],q[21];
cx q[13],q[11];
cx q[21],q[8];
cx q[1],q[21];
cx q[8],q[1];
cx q[5],q[21];
h q[5];
cx q[21],q[5];
cx q[5],q[20];
cx q[5],q[18];
cx q[5],q[17];
cx q[5],q[9];
cx q[24],q[21];
cx q[15],q[21];
cx q[4],q[21];
cx q[21],q[22];
cx q[21],q[16];
cx q[21],q[14];
cx q[21],q[3];
cx q[21],q[2];
h q[24];
sdg q[24];
sdg q[21];
h q[21];
sdg q[20];
h q[19];
sdg q[18];
h q[17];
h q[16];
h q[14];
h q[13];
sdg q[13];
sdg q[11];
h q[11];
sdg q[11];
sdg q[9];
sdg q[8];
h q[8];
sdg q[8];
h q[5];
h q[4];
sdg q[3];
sdg q[2];
h q[1];
sdg q[1];
cx q[0],q[24];
cx q[23],q[0];
cx q[24],q[23];
cx q[0],q[14];
cx q[13],q[0];
cx q[14],q[13];
cx q[0],q[5];
cx q[1],q[0];
cx q[5],q[1];
cx q[4],q[0];
h q[4];
cx q[0],q[4];
cx q[4],q[20];
cx q[4],q[17];
cx q[4],q[12];
cx q[4],q[7];
cx q[22],q[0];
cx q[19],q[0];
cx q[11],q[0];
cx q[9],q[0];
cx q[6],q[0];
cx q[0],q[18];
cx q[0],q[15];
cx q[0],q[10];
cx q[0],q[8];
cx q[0],q[3];
cx q[0],q[2];
h q[24];
sdg q[24];
sdg q[23];
h q[22];
h q[20];
h q[19];
sdg q[19];
sdg q[18];
h q[17];
h q[15];
h q[14];
h q[11];
sdg q[10];
h q[8];
h q[7];
h q[6];
sdg q[5];
h q[5];
sdg q[5];
h q[4];
sdg q[3];
h q[1];
h q[0];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24];
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
measure q[20] -> reg_measure[20];
measure q[21] -> reg_measure[21];
measure q[22] -> reg_measure[22];
measure q[23] -> reg_measure[23];
measure q[24] -> reg_measure[24];
