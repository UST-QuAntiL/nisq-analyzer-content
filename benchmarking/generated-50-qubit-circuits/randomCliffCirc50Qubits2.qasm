OPENQASM 2.0;
include "qelib1.inc";
qreg q[50];
creg reg_measure[50];
h q[0];
h q[1];
h q[4];
h q[5];
h q[7];
s q[8];
h q[8];
h q[9];
h q[10];
h q[12];
s q[13];
h q[14];
s q[15];
h q[15];
s q[17];
s q[18];
s q[19];
h q[19];
h q[21];
h q[23];
s q[25];
s q[26];
h q[26];
s q[26];
h q[28];
h q[31];
s q[32];
h q[32];
h q[34];
h q[35];
s q[37];
h q[37];
h q[38];
s q[38];
s q[39];
h q[39];
s q[39];
s q[40];
h q[40];
s q[40];
s q[42];
s q[45];
h q[45];
h q[47];
s q[49];
h q[49];
swap q[2],q[15];
cx q[2],q[0];
cx q[2],q[3];
cx q[2],q[5];
cx q[2],q[6];
cx q[2],q[13];
cx q[2],q[14];
cx q[2],q[16];
cx q[2],q[25];
cx q[2],q[41];
cx q[2],q[42];
cx q[2],q[47];
cx q[2],q[15];
cx q[4],q[2];
cx q[8],q[2];
cx q[9],q[2];
cx q[12],q[2];
cx q[19],q[2];
cx q[28],q[2];
cx q[32],q[2];
cx q[43],q[2];
cx q[45],q[2];
cx q[49],q[2];
cx q[1],q[7];
cx q[1],q[10];
cx q[1],q[17];
cx q[1],q[22];
cx q[1],q[31];
cx q[1],q[33];
cx q[1],q[34];
cx q[2],q[1];
h q[1];
cx q[1],q[2];
cx q[21],q[18];
cx q[18],q[2];
cx q[2],q[21];
cx q[26],q[23];
cx q[23],q[2];
cx q[2],q[26];
cx q[37],q[35];
cx q[35],q[2];
cx q[2],q[37];
cx q[39],q[38];
cx q[38],q[2];
cx q[2],q[39];
cx q[46],q[40];
cx q[40],q[2];
cx q[2],q[46];
h q[1];
s q[1];
s q[3];
h q[4];
s q[5];
h q[5];
s q[6];
h q[8];
s q[10];
h q[10];
h q[11];
s q[13];
h q[14];
s q[16];
h q[16];
s q[17];
s q[19];
h q[19];
s q[19];
s q[20];
s q[21];
h q[21];
s q[21];
s q[22];
h q[22];
s q[22];
s q[23];
h q[23];
h q[24];
h q[27];
h q[29];
s q[31];
h q[33];
s q[35];
h q[36];
s q[38];
h q[38];
s q[39];
h q[40];
s q[43];
h q[43];
s q[45];
s q[46];
h q[47];
s q[48];
h q[49];
s q[49];
swap q[25],q[0];
cx q[25],q[6];
cx q[25],q[17];
cx q[25],q[20];
cx q[25],q[24];
cx q[25],q[29];
cx q[25],q[33];
cx q[25],q[42];
cx q[7],q[25];
cx q[15],q[25];
cx q[36],q[25];
cx q[37],q[25];
cx q[38],q[25];
cx q[40],q[25];
cx q[3],q[11];
cx q[3],q[13];
cx q[3],q[18];
cx q[3],q[27];
cx q[3],q[28];
cx q[3],q[46];
cx q[3],q[47];
cx q[3],q[0];
cx q[25],q[3];
h q[3];
cx q[3],q[25];
cx q[4],q[1];
cx q[1],q[25];
cx q[25],q[4];
cx q[8],q[5];
cx q[5],q[25];
cx q[25],q[8];
cx q[14],q[10];
cx q[10],q[25];
cx q[25],q[14];
cx q[19],q[16];
cx q[16],q[25];
cx q[25],q[19];
cx q[22],q[21];
cx q[21],q[25];
cx q[25],q[22];
cx q[31],q[23];
cx q[23],q[25];
cx q[25],q[31];
cx q[39],q[35];
cx q[35],q[25];
cx q[25],q[39];
cx q[45],q[43];
cx q[43],q[25];
cx q[25],q[45];
cx q[49],q[48];
cx q[48],q[25];
cx q[25],q[49];
s q[0];
s q[1];
h q[1];
s q[5];
s q[6];
h q[6];
s q[7];
h q[7];
s q[8];
s q[10];
s q[12];
s q[14];
s q[15];
s q[16];
h q[19];
s q[19];
h q[20];
s q[21];
h q[22];
s q[24];
h q[24];
h q[28];
s q[28];
s q[29];
h q[29];
s q[29];
s q[31];
h q[32];
s q[32];
h q[33];
s q[34];
h q[34];
s q[36];
h q[36];
s q[36];
h q[37];
h q[38];
s q[38];
h q[40];
h q[42];
h q[44];
s q[46];
s q[48];
h q[48];
swap q[46],q[0];
cx q[46],q[3];
cx q[46],q[8];
cx q[46],q[13];
cx q[46],q[26];
cx q[46],q[30];
cx q[46],q[33];
cx q[46],q[41];
cx q[46],q[42];
cx q[46],q[43];
cx q[4],q[46];
cx q[6],q[46];
cx q[9],q[46];
cx q[18],q[46];
cx q[20],q[46];
cx q[22],q[46];
cx q[24],q[46];
cx q[27],q[46];
cx q[34],q[46];
cx q[44],q[46];
cx q[48],q[46];
cx q[49],q[46];
cx q[5],q[10];
cx q[5],q[11];
cx q[5],q[15];
cx q[5],q[16];
cx q[5],q[21];
cx q[5],q[31];
cx q[5],q[37];
cx q[5],q[39];
cx q[5],q[40];
cx q[5],q[0];
cx q[46],q[5];
h q[5];
cx q[5],q[46];
cx q[7],q[1];
cx q[1],q[46];
cx q[46],q[7];
cx q[14],q[12];
cx q[12],q[46];
cx q[46],q[14];
cx q[28],q[19];
cx q[19],q[46];
cx q[46],q[28];
cx q[32],q[29];
cx q[29],q[46];
cx q[46],q[32];
cx q[38],q[36];
cx q[36],q[46];
cx q[46],q[38];
s q[0];
h q[0];
s q[1];
h q[1];
s q[1];
s q[6];
s q[8];
h q[8];
s q[8];
s q[9];
h q[11];
s q[12];
h q[13];
h q[14];
s q[16];
h q[16];
s q[16];
h q[18];
s q[19];
h q[19];
s q[20];
h q[20];
s q[22];
h q[22];
s q[24];
h q[24];
h q[26];
h q[27];
h q[29];
h q[30];
h q[32];
s q[33];
h q[34];
h q[35];
s q[37];
h q[37];
h q[38];
h q[42];
h q[48];
swap q[40],q[0];
cx q[40],q[6];
cx q[40],q[7];
cx q[40],q[17];
cx q[40],q[23];
cx q[40],q[38];
cx q[40],q[39];
cx q[40],q[49];
cx q[10],q[40];
cx q[13],q[40];
cx q[14],q[40];
cx q[20],q[40];
cx q[29],q[40];
cx q[37],q[40];
cx q[41],q[40];
cx q[45],q[40];
cx q[0],q[40];
cx q[4],q[18];
cx q[4],q[27];
cx q[4],q[30];
cx q[4],q[31];
cx q[4],q[33];
cx q[4],q[35];
cx q[40],q[4];
h q[4];
cx q[4],q[40];
cx q[5],q[1];
cx q[1],q[40];
cx q[40],q[5];
cx q[9],q[8];
cx q[8],q[40];
cx q[40],q[9];
cx q[12],q[11];
cx q[11],q[40];
cx q[40],q[12];
cx q[19],q[16];
cx q[16],q[40];
cx q[40],q[19];
cx q[24],q[22];
cx q[22],q[40];
cx q[40],q[24];
cx q[28],q[26];
cx q[26],q[40];
cx q[40],q[28];
cx q[34],q[32];
cx q[32],q[40];
cx q[40],q[34];
cx q[48],q[42];
cx q[42],q[40];
cx q[40],q[48];
h q[0];
s q[0];
h q[1];
s q[3];
h q[3];
s q[4];
h q[6];
s q[7];
h q[7];
h q[9];
s q[10];
h q[10];
s q[12];
h q[12];
s q[12];
h q[13];
h q[14];
h q[15];
s q[19];
h q[21];
s q[23];
h q[23];
s q[24];
h q[27];
h q[28];
s q[29];
h q[32];
h q[33];
h q[34];
h q[35];
s q[36];
h q[37];
s q[37];
s q[38];
h q[38];
s q[38];
h q[41];
h q[43];
h q[45];
s q[45];
h q[48];
cx q[12],q[4];
cx q[12],q[8];
cx q[12],q[9];
cx q[12],q[18];
cx q[12],q[24];
cx q[12],q[26];
cx q[12],q[27];
cx q[12],q[32];
cx q[12],q[34];
cx q[12],q[36];
cx q[12],q[39];
cx q[12],q[47];
cx q[3],q[12];
cx q[11],q[12];
cx q[13],q[12];
cx q[15],q[12];
cx q[20],q[12];
cx q[21],q[12];
cx q[23],q[12];
cx q[30],q[12];
cx q[31],q[12];
cx q[48],q[12];
cx q[14],q[29];
cx q[14],q[33];
cx q[14],q[35];
cx q[14],q[42];
cx q[12],q[14];
h q[14];
cx q[14],q[12];
cx q[1],q[0];
cx q[0],q[12];
cx q[12],q[1];
cx q[6],q[5];
cx q[5],q[12];
cx q[12],q[6];
cx q[10],q[7];
cx q[7],q[12];
cx q[12],q[10];
cx q[22],q[19];
cx q[19],q[12];
cx q[12],q[22];
cx q[37],q[28];
cx q[28],q[12];
cx q[12],q[37];
cx q[41],q[38];
cx q[38],q[12];
cx q[12],q[41];
cx q[45],q[43];
cx q[43],q[12];
cx q[12],q[45];
h q[1];
s q[3];
h q[3];
h q[6];
s q[7];
h q[8];
h q[9];
h q[13];
h q[14];
s q[14];
h q[16];
h q[17];
s q[18];
h q[18];
s q[18];
h q[20];
h q[22];
s q[23];
h q[23];
s q[23];
h q[24];
h q[27];
h q[30];
s q[31];
s q[32];
h q[32];
s q[33];
h q[33];
s q[34];
h q[35];
s q[35];
s q[36];
h q[36];
h q[39];
h q[41];
s q[42];
s q[43];
h q[43];
h q[45];
swap q[20],q[14];
cx q[20],q[0];
cx q[20],q[1];
cx q[20],q[7];
cx q[20],q[11];
cx q[20],q[22];
cx q[20],q[26];
cx q[20],q[27];
cx q[20],q[31];
cx q[20],q[34];
cx q[20],q[37];
cx q[20],q[41];
cx q[20],q[14];
cx q[3],q[20];
cx q[5],q[20];
cx q[10],q[20];
cx q[15],q[20];
cx q[16],q[20];
cx q[19],q[20];
cx q[30],q[20];
cx q[32],q[20];
cx q[33],q[20];
cx q[45],q[20];
cx q[6],q[8];
cx q[6],q[9];
cx q[6],q[13];
cx q[6],q[17];
cx q[6],q[21];
cx q[6],q[24];
cx q[6],q[28];
cx q[6],q[29];
cx q[6],q[38];
cx q[6],q[39];
cx q[6],q[42];
cx q[6],q[49];
cx q[20],q[6];
h q[6];
cx q[6],q[20];
cx q[23],q[18];
cx q[18],q[20];
cx q[20],q[23];
cx q[36],q[35];
cx q[35],q[20];
cx q[20],q[36];
cx q[44],q[43];
cx q[43],q[20];
cx q[20],q[44];
s q[0];
h q[0];
h q[1];
s q[6];
s q[8];
h q[13];
s q[14];
h q[14];
h q[15];
s q[15];
s q[16];
s q[18];
s q[22];
s q[23];
s q[24];
h q[26];
h q[28];
h q[29];
s q[30];
h q[30];
s q[30];
s q[32];
h q[32];
h q[33];
h q[34];
s q[34];
h q[35];
s q[36];
h q[36];
s q[37];
h q[37];
s q[38];
h q[38];
s q[38];
s q[39];
s q[43];
h q[43];
s q[45];
h q[45];
s q[45];
h q[47];
h q[48];
swap q[48],q[0];
cx q[48],q[5];
cx q[48],q[8];
cx q[48],q[11];
cx q[48],q[16];
cx q[48],q[23];
cx q[48],q[35];
cx q[48],q[44];
cx q[48],q[0];
cx q[1],q[48];
cx q[3],q[48];
cx q[7],q[48];
cx q[13],q[48];
cx q[26],q[48];
cx q[32],q[48];
cx q[41],q[48];
cx q[43],q[48];
cx q[6],q[24];
cx q[6],q[28];
cx q[6],q[29];
cx q[6],q[33];
cx q[6],q[47];
cx q[48],q[6];
h q[6];
cx q[6],q[48];
cx q[14],q[9];
cx q[9],q[48];
cx q[48],q[14];
cx q[18],q[15];
cx q[15],q[48];
cx q[48],q[18];
cx q[22],q[21];
cx q[21],q[48];
cx q[48],q[22];
cx q[30],q[27];
cx q[27],q[48];
cx q[48],q[30];
cx q[36],q[34];
cx q[34],q[48];
cx q[48],q[36];
cx q[38],q[37];
cx q[37],q[48];
cx q[48],q[38];
cx q[45],q[39];
cx q[39],q[48];
cx q[48],q[45];
s q[0];
h q[3];
h q[4];
s q[5];
s q[6];
h q[6];
h q[10];
h q[13];
s q[13];
h q[14];
s q[16];
h q[16];
s q[18];
h q[22];
s q[23];
s q[24];
h q[24];
s q[24];
h q[26];
h q[27];
h q[28];
s q[29];
h q[30];
s q[30];
s q[31];
s q[34];
h q[34];
h q[37];
s q[38];
s q[39];
h q[41];
h q[42];
h q[49];
swap q[19],q[5];
cx q[19],q[3];
cx q[19],q[4];
cx q[19],q[10];
cx q[19],q[21];
cx q[19],q[29];
cx q[19],q[33];
cx q[19],q[35];
cx q[19],q[37];
cx q[19],q[39];
cx q[19],q[42];
cx q[19],q[44];
cx q[19],q[5];
cx q[11],q[19];
cx q[15],q[19];
cx q[22],q[19];
cx q[26],q[19];
cx q[28],q[19];
cx q[34],q[19];
cx q[41],q[19];
cx q[0],q[7];
cx q[0],q[14];
cx q[0],q[17];
cx q[0],q[18];
cx q[0],q[23];
cx q[0],q[31];
cx q[0],q[38];
cx q[0],q[49];
cx q[19],q[0];
h q[0];
cx q[0],q[19];
cx q[13],q[6];
cx q[6],q[19];
cx q[19],q[13];
cx q[24],q[16];
cx q[16],q[19];
cx q[19],q[24];
cx q[30],q[27];
cx q[27],q[19];
cx q[19],q[30];
cx q[47],q[32];
cx q[32],q[19];
cx q[19],q[47];
s q[0];
h q[0];
s q[1];
h q[1];
s q[1];
h q[4];
s q[5];
h q[10];
s q[11];
s q[13];
s q[18];
h q[18];
s q[22];
s q[23];
h q[23];
h q[24];
s q[26];
s q[28];
h q[28];
s q[28];
h q[29];
s q[30];
s q[31];
h q[31];
h q[33];
s q[34];
s q[35];
h q[36];
h q[38];
s q[38];
s q[42];
h q[42];
cx q[23],q[7];
cx q[23],q[21];
cx q[23],q[26];
cx q[23],q[47];
cx q[16],q[23];
cx q[18],q[23];
cx q[32],q[23];
cx q[37],q[23];
cx q[42],q[23];
cx q[3],q[4];
cx q[3],q[5];
cx q[3],q[8];
cx q[3],q[11];
cx q[3],q[13];
cx q[3],q[24];
cx q[3],q[29];
cx q[3],q[30];
cx q[3],q[36];
cx q[3],q[43];
cx q[3],q[49];
cx q[23],q[3];
h q[3];
cx q[3],q[23];
cx q[1],q[0];
cx q[0],q[23];
cx q[23],q[1];
cx q[10],q[9];
cx q[9],q[23];
cx q[23],q[10];
cx q[22],q[17];
cx q[17],q[23];
cx q[23],q[22];
cx q[31],q[28];
cx q[28],q[23];
cx q[23],q[31];
cx q[34],q[33];
cx q[33],q[23];
cx q[23],q[34];
cx q[38],q[35];
cx q[35],q[23];
cx q[23],q[38];
cx q[45],q[39];
cx q[39],q[23];
cx q[23],q[45];
s q[0];
h q[0];
s q[0];
s q[3];
h q[4];
s q[4];
h q[5];
s q[5];
h q[6];
s q[7];
h q[7];
h q[8];
h q[9];
s q[9];
s q[10];
h q[10];
s q[10];
h q[11];
h q[13];
s q[15];
h q[16];
s q[18];
h q[18];
s q[18];
h q[22];
s q[24];
h q[27];
h q[29];
s q[30];
s q[31];
h q[33];
h q[34];
s q[35];
h q[37];
s q[38];
h q[38];
h q[39];
h q[42];
s q[43];
h q[43];
s q[43];
h q[44];
s q[45];
s q[49];
h q[49];
swap q[28],q[0];
cx q[28],q[8];
cx q[28],q[13];
cx q[28],q[16];
cx q[28],q[24];
cx q[28],q[31];
cx q[28],q[35];
cx q[28],q[45];
cx q[1],q[28];
cx q[14],q[28];
cx q[22],q[28];
cx q[29],q[28];
cx q[33],q[28];
cx q[34],q[28];
cx q[49],q[28];
cx q[3],q[11];
cx q[3],q[15];
cx q[3],q[17];
cx q[3],q[27];
cx q[3],q[30];
cx q[3],q[37];
cx q[3],q[39];
cx q[3],q[42];
cx q[3],q[44];
cx q[3],q[47];
cx q[28],q[3];
h q[3];
cx q[3],q[28];
cx q[5],q[4];
cx q[4],q[28];
cx q[28],q[5];
cx q[7],q[6];
cx q[6],q[28];
cx q[28],q[7];
cx q[10],q[9];
cx q[9],q[28];
cx q[28],q[10];
cx q[38],q[18];
cx q[18],q[28];
cx q[28],q[38];
cx q[43],q[41];
cx q[41],q[28];
cx q[28],q[43];
h q[0];
h q[1];
h q[3];
h q[5];
s q[5];
s q[6];
h q[6];
h q[7];
s q[7];
s q[8];
h q[10];
h q[11];
s q[13];
h q[14];
s q[15];
h q[16];
s q[18];
h q[18];
s q[18];
s q[21];
h q[21];
h q[22];
s q[29];
s q[30];
h q[32];
h q[33];
s q[34];
h q[34];
s q[38];
h q[38];
s q[38];
s q[41];
h q[42];
h q[43];
s q[44];
h q[44];
s q[45];
swap q[27],q[0];
cx q[27],q[3];
cx q[27],q[11];
cx q[27],q[16];
cx q[27],q[32];
cx q[27],q[35];
cx q[14],q[27];
cx q[21],q[27];
cx q[31],q[27];
cx q[33],q[27];
cx q[34],q[27];
cx q[39],q[27];
cx q[44],q[27];
cx q[1],q[8];
cx q[1],q[10];
cx q[1],q[13];
cx q[1],q[24];
cx q[1],q[29];
cx q[1],q[49];
cx q[27],q[1];
h q[1];
cx q[1],q[27];
cx q[6],q[5];
cx q[5],q[27];
cx q[27],q[6];
cx q[15],q[7];
cx q[7],q[27];
cx q[27],q[15];
cx q[22],q[18];
cx q[18],q[27];
cx q[27],q[22];
cx q[30],q[26];
cx q[26],q[27];
cx q[27],q[30];
cx q[41],q[38];
cx q[38],q[27];
cx q[27],q[41];
cx q[43],q[42];
cx q[42],q[27];
cx q[27],q[43];
cx q[47],q[45];
cx q[45],q[27];
cx q[27],q[47];
s q[1];
h q[3];
s q[5];
h q[5];
s q[5];
h q[7];
s q[13];
s q[14];
h q[14];
s q[15];
h q[15];
h q[16];
h q[22];
s q[24];
h q[24];
s q[30];
s q[31];
h q[32];
s q[32];
s q[34];
h q[39];
s q[39];
h q[44];
h q[47];
s q[49];
h q[49];
swap q[7],q[3];
cx q[7],q[13];
cx q[11],q[7];
cx q[15],q[7];
cx q[22],q[7];
cx q[42],q[7];
cx q[44],q[7];
cx q[47],q[7];
cx q[0],q[1];
cx q[0],q[6];
cx q[0],q[9];
cx q[0],q[18];
cx q[0],q[29];
cx q[0],q[30];
cx q[0],q[31];
cx q[0],q[33];
cx q[0],q[34];
cx q[0],q[36];
cx q[0],q[3];
cx q[7],q[0];
h q[0];
cx q[0],q[7];
cx q[10],q[5];
cx q[5],q[7];
cx q[7],q[10];
cx q[16],q[14];
cx q[14],q[7];
cx q[7],q[16];
cx q[32],q[24];
cx q[24],q[7];
cx q[7],q[32];
cx q[39],q[37];
cx q[37],q[7];
cx q[7],q[39];
cx q[49],q[41];
cx q[41],q[7];
cx q[7],q[49];
h q[0];
s q[3];
s q[5];
h q[6];
h q[8];
h q[9];
s q[9];
h q[10];
s q[11];
h q[11];
h q[14];
s q[15];
h q[16];
s q[16];
h q[17];
s q[17];
h q[21];
h q[26];
s q[26];
h q[29];
s q[30];
h q[32];
s q[33];
h q[33];
h q[35];
s q[35];
s q[37];
h q[41];
s q[41];
s q[42];
s q[43];
h q[43];
h q[44];
s q[45];
h q[45];
s q[47];
s q[49];
h q[49];
swap q[32],q[0];
cx q[32],q[3];
cx q[32],q[6];
cx q[32],q[15];
cx q[32],q[39];
cx q[1],q[32];
cx q[10],q[32];
cx q[11],q[32];
cx q[14],q[32];
cx q[21],q[32];
cx q[29],q[32];
cx q[33],q[32];
cx q[36],q[32];
cx q[43],q[32];
cx q[44],q[32];
cx q[45],q[32];
cx q[4],q[5];
cx q[4],q[8];
cx q[4],q[22];
cx q[4],q[37];
cx q[4],q[42];
cx q[4],q[47];
cx q[4],q[0];
cx q[32],q[4];
h q[4];
cx q[4],q[32];
cx q[16],q[9];
cx q[9],q[32];
cx q[32],q[16];
cx q[24],q[17];
cx q[17],q[32];
cx q[32],q[24];
cx q[30],q[26];
cx q[26],q[32];
cx q[32],q[30];
cx q[38],q[35];
cx q[35],q[32];
cx q[32],q[38];
cx q[49],q[41];
cx q[41],q[32];
cx q[32],q[49];
h q[0];
s q[1];
h q[1];
s q[6];
h q[6];
s q[6];
h q[8];
h q[9];
s q[10];
h q[10];
h q[11];
h q[13];
s q[13];
s q[16];
h q[26];
h q[30];
h q[31];
s q[35];
s q[36];
s q[37];
h q[37];
h q[38];
s q[39];
h q[39];
h q[43];
s q[44];
h q[45];
s q[47];
h q[47];
h q[49];
cx q[13],q[4];
cx q[13],q[8];
cx q[13],q[17];
cx q[13],q[18];
cx q[13],q[21];
cx q[13],q[22];
cx q[13],q[26];
cx q[13],q[30];
cx q[13],q[33];
cx q[13],q[35];
cx q[13],q[36];
cx q[13],q[41];
cx q[13],q[43];
cx q[13],q[45];
cx q[10],q[13];
cx q[31],q[13];
cx q[34],q[13];
cx q[37],q[13];
cx q[38],q[13];
cx q[39],q[13];
cx q[9],q[16];
cx q[9],q[24];
cx q[9],q[29];
cx q[9],q[42];
cx q[9],q[44];
cx q[9],q[49];
cx q[13],q[9];
h q[9];
cx q[9],q[13];
cx q[1],q[0];
cx q[0],q[13];
cx q[13],q[1];
cx q[11],q[6];
cx q[6],q[13];
cx q[13],q[11];
cx q[47],q[14];
cx q[14],q[13];
cx q[13],q[47];
h q[6];
h q[8];
s q[14];
h q[15];
s q[16];
s q[17];
s q[18];
s q[22];
h q[22];
h q[24];
h q[29];
h q[30];
s q[31];
h q[31];
h q[34];
s q[36];
s q[38];
h q[39];
s q[42];
s q[43];
h q[43];
s q[43];
h q[44];
h q[45];
s q[47];
h q[49];
cx q[0],q[6];
cx q[0],q[9];
cx q[0],q[17];
cx q[0],q[18];
cx q[0],q[21];
cx q[0],q[33];
cx q[0],q[34];
cx q[0],q[39];
cx q[0],q[42];
cx q[0],q[44];
cx q[0],q[47];
cx q[3],q[0];
cx q[11],q[0];
cx q[15],q[0];
cx q[22],q[0];
cx q[24],q[0];
cx q[26],q[0];
cx q[31],q[0];
cx q[35],q[0];
cx q[4],q[5];
cx q[4],q[14];
cx q[4],q[16];
cx q[4],q[29];
cx q[4],q[30];
cx q[4],q[49];
cx q[0],q[4];
h q[4];
cx q[4],q[0];
cx q[36],q[8];
cx q[8],q[0];
cx q[0],q[36];
cx q[38],q[37];
cx q[37],q[0];
cx q[0],q[38];
cx q[45],q[43];
cx q[43],q[0];
cx q[0],q[45];
s q[1];
h q[1];
s q[1];
s q[3];
h q[3];
s q[4];
h q[4];
s q[6];
h q[6];
s q[6];
s q[9];
h q[9];
s q[9];
h q[10];
s q[11];
h q[16];
s q[17];
h q[21];
h q[22];
h q[24];
s q[26];
s q[30];
s q[31];
h q[33];
s q[34];
s q[35];
h q[37];
s q[38];
s q[39];
h q[39];
s q[41];
s q[44];
h q[44];
h q[49];
cx q[45],q[5];
cx q[45],q[8];
cx q[45],q[15];
cx q[45],q[17];
cx q[45],q[24];
cx q[45],q[26];
cx q[45],q[34];
cx q[45],q[38];
cx q[45],q[41];
cx q[3],q[45];
cx q[10],q[45];
cx q[14],q[45];
cx q[16],q[45];
cx q[33],q[45];
cx q[44],q[45];
cx q[47],q[45];
cx q[21],q[30];
cx q[21],q[31];
cx q[21],q[36];
cx q[21],q[37];
cx q[45],q[21];
h q[21];
cx q[21],q[45];
cx q[4],q[1];
cx q[1],q[45];
cx q[45],q[4];
cx q[9],q[6];
cx q[6],q[45];
cx q[45],q[9];
cx q[22],q[11];
cx q[11],q[45];
cx q[45],q[22];
cx q[39],q[35];
cx q[35],q[45];
cx q[45],q[39];
cx q[49],q[43];
cx q[43],q[45];
cx q[45],q[49];
h q[3];
s q[4];
h q[4];
s q[4];
s q[6];
s q[10];
h q[10];
h q[11];
s q[14];
h q[14];
h q[16];
h q[26];
s q[29];
h q[30];
h q[35];
s q[36];
h q[36];
h q[38];
s q[38];
s q[39];
h q[44];
cx q[36],q[3];
cx q[36],q[11];
cx q[36],q[15];
cx q[36],q[18];
cx q[36],q[39];
cx q[36],q[49];
cx q[5],q[36];
cx q[8],q[36];
cx q[22],q[36];
cx q[26],q[36];
cx q[31],q[36];
cx q[44],q[36];
cx q[9],q[16];
cx q[9],q[29];
cx q[9],q[30];
cx q[9],q[34];
cx q[9],q[35];
cx q[9],q[41];
cx q[36],q[9];
h q[9];
cx q[9],q[36];
cx q[4],q[1];
cx q[1],q[36];
cx q[36],q[4];
cx q[10],q[6];
cx q[6],q[36];
cx q[36],q[10];
cx q[21],q[14];
cx q[14],q[36];
cx q[36],q[21];
cx q[37],q[33];
cx q[33],q[36];
cx q[36],q[37];
cx q[47],q[38];
cx q[38],q[36];
cx q[36],q[47];
s q[1];
h q[3];
s q[4];
h q[8];
h q[10];
h q[14];
h q[17];
s q[22];
h q[24];
s q[26];
h q[26];
h q[29];
s q[31];
h q[34];
s q[43];
h q[43];
h q[47];
cx q[30],q[4];
cx q[30],q[8];
cx q[30],q[9];
cx q[30],q[15];
cx q[30],q[18];
cx q[30],q[21];
cx q[30],q[22];
cx q[30],q[24];
cx q[30],q[34];
cx q[30],q[35];
cx q[30],q[38];
cx q[30],q[44];
cx q[16],q[30];
cx q[26],q[30];
cx q[29],q[30];
cx q[42],q[30];
cx q[43],q[30];
cx q[47],q[30];
cx q[1],q[3];
cx q[1],q[5];
cx q[1],q[6];
cx q[1],q[14];
cx q[1],q[31];
cx q[1],q[33];
cx q[1],q[37];
cx q[1],q[39];
cx q[1],q[41];
cx q[30],q[1];
h q[1];
cx q[1],q[30];
cx q[17],q[10];
cx q[10],q[30];
cx q[30],q[17];
h q[1];
s q[1];
s q[5];
s q[6];
h q[6];
s q[8];
h q[9];
s q[9];
s q[14];
h q[14];
h q[15];
h q[16];
s q[17];
h q[17];
s q[21];
s q[22];
s q[26];
h q[31];
h q[33];
s q[34];
h q[37];
s q[38];
h q[38];
s q[39];
h q[43];
h q[44];
h q[47];
s q[49];
h q[49];
swap q[43],q[1];
cx q[43],q[5];
cx q[43],q[8];
cx q[43],q[22];
cx q[43],q[34];
cx q[43],q[37];
cx q[43],q[39];
cx q[43],q[44];
cx q[6],q[43];
cx q[16],q[43];
cx q[17],q[43];
cx q[33],q[43];
cx q[49],q[43];
cx q[10],q[18];
cx q[10],q[21];
cx q[10],q[31];
cx q[10],q[47];
cx q[10],q[1];
cx q[43],q[10];
h q[10];
cx q[10],q[43];
cx q[9],q[3];
cx q[3],q[43];
cx q[43],q[9];
cx q[14],q[11];
cx q[11],q[43];
cx q[43],q[14];
cx q[24],q[15];
cx q[15],q[43];
cx q[43],q[24];
cx q[38],q[26];
cx q[26],q[43];
cx q[43],q[38];
h q[1];
s q[3];
s q[5];
h q[5];
h q[6];
s q[9];
h q[9];
h q[11];
h q[14];
h q[16];
s q[18];
h q[21];
h q[24];
h q[26];
s q[29];
h q[29];
h q[33];
s q[33];
h q[38];
h q[39];
h q[41];
cx q[9],q[3];
cx q[9],q[8];
cx q[9],q[24];
cx q[9],q[26];
cx q[9],q[34];
cx q[9],q[35];
cx q[9],q[41];
cx q[9],q[44];
cx q[9],q[47];
cx q[6],q[9];
cx q[14],q[9];
cx q[17],q[9];
cx q[38],q[9];
cx q[39],q[9];
cx q[1],q[15];
cx q[1],q[16];
cx q[1],q[18];
cx q[1],q[22];
cx q[1],q[42];
cx q[9],q[1];
h q[1];
cx q[1],q[9];
cx q[11],q[5];
cx q[5],q[9];
cx q[9],q[11];
cx q[29],q[21];
cx q[21],q[9];
cx q[9],q[29];
cx q[49],q[33];
cx q[33],q[9];
cx q[9],q[49];
s q[1];
h q[4];
s q[5];
h q[6];
s q[8];
h q[8];
s q[11];
h q[14];
h q[15];
h q[17];
s q[17];
s q[21];
s q[22];
h q[22];
h q[24];
h q[26];
s q[26];
h q[29];
h q[31];
h q[34];
h q[38];
h q[41];
h q[42];
s q[44];
h q[44];
h q[47];
h q[49];
s q[49];
cx q[42],q[21];
cx q[42],q[34];
cx q[42],q[37];
cx q[42],q[38];
cx q[42],q[41];
cx q[8],q[42];
cx q[15],q[42];
cx q[16],q[42];
cx q[29],q[42];
cx q[33],q[42];
cx q[44],q[42];
cx q[47],q[42];
cx q[4],q[6];
cx q[4],q[11];
cx q[4],q[24];
cx q[4],q[31];
cx q[42],q[4];
h q[4];
cx q[4],q[42];
cx q[5],q[1];
cx q[1],q[42];
cx q[42],q[5];
cx q[17],q[14];
cx q[14],q[42];
cx q[42],q[17];
cx q[22],q[18];
cx q[18],q[42];
cx q[42],q[22];
cx q[49],q[26];
cx q[26],q[42];
cx q[42],q[49];
s q[1];
h q[1];
h q[3];
s q[4];
h q[4];
s q[8];
h q[8];
h q[10];
h q[11];
h q[14];
s q[15];
h q[15];
s q[16];
s q[18];
s q[22];
h q[22];
s q[24];
h q[24];
s q[24];
h q[33];
h q[34];
s q[38];
h q[38];
h q[41];
h q[44];
s q[47];
h q[47];
h q[49];
swap q[31],q[1];
cx q[31],q[3];
cx q[31],q[11];
cx q[31],q[21];
cx q[31],q[26];
cx q[8],q[31];
cx q[37],q[31];
cx q[38],q[31];
cx q[47],q[31];
cx q[49],q[31];
cx q[5],q[10];
cx q[5],q[14];
cx q[5],q[18];
cx q[5],q[33];
cx q[5],q[44];
cx q[31],q[5];
h q[5];
cx q[5],q[31];
cx q[15],q[4];
cx q[4],q[31];
cx q[31],q[15];
cx q[22],q[16];
cx q[16],q[31];
cx q[31],q[22];
cx q[34],q[24];
cx q[24],q[31];
cx q[31],q[34];
cx q[41],q[35];
cx q[35],q[31];
cx q[31],q[41];
h q[4];
h q[5];
h q[15];
s q[16];
h q[17];
s q[18];
h q[21];
s q[22];
h q[24];
h q[26];
s q[33];
h q[35];
s q[38];
h q[38];
s q[39];
h q[44];
h q[47];
swap q[8],q[1];
cx q[8],q[3];
cx q[8],q[10];
cx q[8],q[11];
cx q[8],q[15];
cx q[8],q[16];
cx q[8],q[17];
cx q[8],q[22];
cx q[8],q[24];
cx q[8],q[26];
cx q[8],q[29];
cx q[8],q[37];
cx q[8],q[39];
cx q[8],q[47];
cx q[14],q[8];
cx q[21],q[8];
cx q[5],q[6];
cx q[5],q[33];
cx q[5],q[35];
cx q[5],q[44];
cx q[5],q[49];
cx q[8],q[5];
h q[5];
cx q[5],q[8];
cx q[18],q[4];
cx q[4],q[8];
cx q[8],q[18];
cx q[38],q[34];
cx q[34],q[8];
cx q[8],q[38];
h q[1];
s q[1];
h q[3];
s q[4];
s q[5];
s q[10];
h q[10];
s q[14];
h q[14];
s q[16];
h q[17];
s q[18];
h q[18];
s q[18];
s q[24];
s q[26];
h q[33];
s q[34];
h q[35];
s q[44];
h q[44];
s q[44];
s q[47];
s q[49];
h q[49];
swap q[10],q[1];
cx q[10],q[3];
cx q[10],q[11];
cx q[10],q[26];
cx q[10],q[34];
cx q[10],q[47];
cx q[29],q[10];
cx q[35],q[10];
cx q[49],q[10];
cx q[1],q[10];
cx q[4],q[17];
cx q[4],q[33];
cx q[10],q[4];
h q[4];
cx q[4],q[10];
cx q[6],q[5];
cx q[5],q[10];
cx q[10],q[6];
cx q[16],q[14];
cx q[14],q[10];
cx q[10],q[16];
cx q[22],q[18];
cx q[18],q[10];
cx q[10],q[22];
cx q[37],q[24];
cx q[24],q[10];
cx q[10],q[37];
cx q[44],q[41];
cx q[41],q[10];
cx q[10],q[44];
h q[1];
s q[4];
s q[5];
s q[6];
h q[6];
s q[15];
h q[15];
s q[15];
s q[16];
h q[16];
s q[16];
h q[17];
s q[18];
h q[18];
s q[18];
h q[21];
h q[22];
h q[24];
h q[26];
h q[33];
s q[35];
s q[41];
h q[44];
s q[47];
h q[47];
s q[49];
h q[49];
swap q[5],q[1];
cx q[5],q[17];
cx q[5],q[26];
cx q[5],q[41];
cx q[5],q[44];
cx q[5],q[1];
cx q[11],q[5];
cx q[21],q[5];
cx q[24],q[5];
cx q[29],q[5];
cx q[47],q[5];
cx q[49],q[5];
cx q[4],q[35];
cx q[4],q[37];
cx q[5],q[4];
h q[4];
cx q[4],q[5];
cx q[15],q[6];
cx q[6],q[5];
cx q[5],q[15];
cx q[18],q[16];
cx q[16],q[5];
cx q[5],q[18];
cx q[33],q[22];
cx q[22],q[5];
cx q[5],q[33];
cx q[38],q[34];
cx q[34],q[5];
cx q[5],q[38];
s q[1];
h q[1];
s q[4];
s q[11];
h q[11];
h q[14];
h q[16];
h q[17];
s q[18];
h q[18];
s q[18];
h q[21];
s q[21];
h q[22];
s q[24];
h q[24];
s q[26];
h q[26];
h q[33];
s q[34];
h q[38];
s q[41];
s q[44];
h q[44];
swap q[3],q[1];
cx q[3],q[4];
cx q[3],q[6];
cx q[3],q[33];
cx q[3],q[37];
cx q[3],q[41];
cx q[3],q[47];
cx q[3],q[49];
cx q[3],q[1];
cx q[11],q[3];
cx q[14],q[17];
cx q[14],q[22];
cx q[14],q[38];
cx q[3],q[14];
h q[14];
cx q[14],q[3];
cx q[18],q[16];
cx q[16],q[3];
cx q[3],q[18];
cx q[24],q[21];
cx q[21],q[3];
cx q[3],q[24];
cx q[29],q[26];
cx q[26],q[3];
cx q[3],q[29];
cx q[44],q[34];
cx q[34],q[3];
cx q[3],q[44];
s q[1];
h q[1];
h q[4];
s q[4];
h q[6];
s q[11];
s q[15];
s q[17];
h q[17];
s q[18];
s q[22];
h q[22];
h q[33];
h q[35];
h q[37];
s q[37];
s q[39];
s q[41];
s q[44];
s q[47];
h q[49];
swap q[16],q[1];
cx q[16],q[11];
cx q[16],q[14];
cx q[16],q[15];
cx q[16],q[33];
cx q[16],q[34];
cx q[16],q[41];
cx q[17],q[16];
cx q[22],q[16];
cx q[26],q[16];
cx q[38],q[16];
cx q[49],q[16];
cx q[1],q[16];
cx q[18],q[39];
cx q[16],q[18];
h q[18];
cx q[18],q[16];
cx q[6],q[4];
cx q[4],q[16];
cx q[16],q[6];
cx q[37],q[35];
cx q[35],q[16];
cx q[16],q[37];
cx q[47],q[44];
cx q[44],q[16];
cx q[16],q[47];
s q[1];
h q[1];
h q[4];
h q[6];
h q[14];
h q[15];
h q[17];
s q[17];
h q[18];
s q[21];
s q[22];
h q[22];
s q[22];
h q[24];
s q[26];
s q[33];
s q[34];
s q[37];
h q[37];
h q[39];
s q[47];
h q[47];
s q[49];
cx q[21],q[15];
cx q[21],q[18];
cx q[21],q[24];
cx q[21],q[29];
cx q[21],q[33];
cx q[21],q[34];
cx q[21],q[49];
cx q[6],q[21];
cx q[11],q[21];
cx q[37],q[21];
cx q[39],q[21];
cx q[4],q[26];
cx q[4],q[38];
cx q[4],q[41];
cx q[21],q[4];
h q[4];
cx q[4],q[21];
cx q[14],q[1];
cx q[1],q[21];
cx q[21],q[14];
cx q[22],q[17];
cx q[17],q[21];
cx q[21],q[22];
cx q[47],q[44];
cx q[44],q[21];
cx q[21],q[47];
s q[1];
h q[1];
s q[4];
h q[6];
h q[15];
s q[15];
s q[18];
h q[18];
h q[22];
s q[24];
s q[26];
s q[29];
s q[35];
s q[37];
h q[38];
h q[39];
s q[39];
s q[41];
h q[44];
s q[44];
swap q[33],q[1];
cx q[33],q[26];
cx q[33],q[35];
cx q[17],q[33];
cx q[18],q[33];
cx q[4],q[6];
cx q[4],q[22];
cx q[4],q[38];
cx q[4],q[1];
cx q[33],q[4];
h q[4];
cx q[4],q[33];
cx q[15],q[11];
cx q[11],q[33];
cx q[33],q[15];
cx q[29],q[24];
cx q[24],q[33];
cx q[33],q[29];
cx q[39],q[37];
cx q[37],q[33];
cx q[33],q[39];
cx q[44],q[41];
cx q[41],q[33];
cx q[33],q[44];
s q[1];
h q[6];
h q[14];
s q[14];
s q[17];
s q[18];
h q[22];
s q[26];
h q[26];
h q[37];
s q[41];
h q[41];
s q[41];
h q[44];
h q[47];
swap q[6],q[1];
cx q[6],q[18];
cx q[6],q[22];
cx q[6],q[34];
cx q[6],q[47];
cx q[26],q[6];
cx q[44],q[6];
cx q[11],q[17];
cx q[11],q[39];
cx q[11],q[1];
cx q[6],q[11];
h q[11];
cx q[11],q[6];
cx q[24],q[14];
cx q[14],q[6];
cx q[6],q[24];
cx q[37],q[29];
cx q[29],q[6];
cx q[6],q[37];
cx q[49],q[41];
cx q[41],q[6];
cx q[6],q[49];
h q[1];
h q[4];
s q[14];
h q[15];
s q[17];
s q[22];
h q[29];
h q[37];
s q[37];
s q[38];
s q[44];
s q[47];
swap q[44],q[4];
cx q[44],q[1];
cx q[44],q[15];
cx q[44],q[22];
cx q[44],q[35];
cx q[44],q[47];
cx q[29],q[44];
cx q[34],q[44];
cx q[49],q[44];
cx q[14],q[17];
cx q[14],q[18];
cx q[14],q[24];
cx q[14],q[4];
cx q[44],q[14];
h q[14];
cx q[14],q[44];
cx q[38],q[37];
cx q[37],q[44];
cx q[44],q[38];
h q[1];
s q[4];
h q[4];
h q[14];
h q[15];
s q[15];
h q[17];
h q[18];
s q[18];
h q[22];
s q[29];
h q[37];
s q[37];
h q[38];
h q[39];
h q[41];
s q[47];
s q[49];
cx q[37],q[34];
cx q[37],q[35];
cx q[37],q[38];
cx q[37],q[39];
cx q[37],q[41];
cx q[37],q[49];
cx q[4],q[37];
cx q[22],q[29];
cx q[22],q[47];
cx q[37],q[22];
h q[22];
cx q[22],q[37];
cx q[14],q[1];
cx q[1],q[37];
cx q[37],q[14];
cx q[17],q[15];
cx q[15],q[37];
cx q[37],q[17];
cx q[26],q[18];
cx q[18],q[37];
cx q[37],q[26];
s q[1];
h q[1];
s q[4];
h q[4];
s q[11];
s q[15];
h q[15];
s q[15];
s q[17];
s q[18];
h q[18];
s q[18];
s q[22];
h q[22];
h q[24];
s q[24];
s q[35];
h q[35];
s q[38];
h q[38];
s q[47];
h q[47];
h q[49];
cx q[11],q[49];
cx q[22],q[11];
cx q[29],q[11];
cx q[35],q[11];
cx q[38],q[11];
cx q[47],q[11];
cx q[17],q[34];
cx q[11],q[17];
h q[17];
cx q[17],q[11];
cx q[4],q[1];
cx q[1],q[11];
cx q[11],q[4];
cx q[18],q[15];
cx q[15],q[11];
cx q[11],q[18];
cx q[26],q[24];
cx q[24],q[11];
cx q[11],q[26];
h q[1];
h q[4];
h q[14];
h q[15];
s q[15];
h q[17];
s q[17];
h q[24];
h q[35];
s q[38];
h q[39];
h q[49];
swap q[38],q[1];
cx q[38],q[14];
cx q[38],q[47];
cx q[38],q[1];
cx q[4],q[38];
cx q[18],q[38];
cx q[22],q[38];
cx q[26],q[38];
cx q[35],q[38];
cx q[29],q[41];
cx q[29],q[49];
cx q[38],q[29];
h q[29];
cx q[29],q[38];
cx q[17],q[15];
cx q[15],q[38];
cx q[38],q[17];
cx q[39],q[24];
cx q[24],q[38];
cx q[38],q[39];
s q[1];
h q[1];
s q[1];
s q[4];
s q[15];
h q[18];
h q[26];
h q[29];
s q[35];
h q[41];
s q[49];
cx q[24],q[4];
cx q[24],q[22];
cx q[24],q[26];
cx q[24],q[29];
cx q[24],q[35];
cx q[24],q[49];
cx q[18],q[24];
cx q[41],q[24];
cx q[24],q[15];
h q[15];
cx q[15],q[24];
cx q[34],q[1];
cx q[1],q[24];
cx q[24],q[34];
cx q[47],q[39];
cx q[39],q[24];
cx q[24],q[47];
s q[1];
h q[1];
s q[1];
s q[4];
h q[4];
s q[4];
s q[15];
s q[18];
h q[18];
h q[26];
s q[26];
s q[34];
h q[34];
h q[35];
s q[41];
s q[47];
cx q[4],q[15];
cx q[18],q[4];
cx q[22],q[4];
cx q[34],q[4];
cx q[4],q[35];
h q[35];
cx q[35],q[4];
cx q[26],q[1];
cx q[1],q[4];
cx q[4],q[26];
cx q[47],q[41];
cx q[41],q[4];
cx q[4],q[47];
h q[1];
h q[14];
s q[15];
s q[18];
h q[22];
s q[26];
h q[29];
s q[34];
s q[39];
h q[41];
s q[47];
h q[47];
cx q[18],q[41];
cx q[14],q[18];
cx q[47],q[18];
cx q[1],q[15];
cx q[1],q[22];
cx q[1],q[26];
cx q[1],q[29];
cx q[1],q[34];
cx q[1],q[39];
cx q[1],q[49];
cx q[18],q[1];
h q[1];
cx q[1],q[18];
h q[14];
h q[17];
s q[22];
s q[26];
h q[29];
h q[39];
h q[41];
s q[41];
h q[47];
swap q[22],q[1];
cx q[22],q[15];
cx q[22],q[39];
cx q[22],q[47];
cx q[14],q[22];
cx q[29],q[22];
cx q[17],q[1];
cx q[22],q[17];
h q[17];
cx q[17],q[22];
cx q[41],q[26];
cx q[26],q[22];
cx q[22],q[41];
s q[1];
h q[1];
s q[17];
s q[26];
s q[29];
h q[29];
s q[35];
s q[47];
swap q[15],q[1];
cx q[15],q[17];
cx q[15],q[41];
cx q[15],q[1];
cx q[14],q[15];
cx q[29],q[15];
cx q[26],q[47];
cx q[15],q[26];
h q[26];
cx q[26],q[15];
cx q[39],q[35];
cx q[35],q[15];
cx q[15],q[39];
s q[1];
h q[1];
s q[1];
s q[14];
h q[14];
s q[14];
h q[26];
s q[29];
h q[29];
s q[29];
h q[35];
s q[35];
s q[39];
h q[41];
s q[41];
swap q[17],q[1];
cx q[17],q[26];
cx q[17],q[34];
cx q[17],q[49];
cx q[1],q[17];
cx q[29],q[14];
cx q[14],q[17];
cx q[17],q[29];
cx q[39],q[35];
cx q[35],q[17];
cx q[17],q[39];
cx q[47],q[41];
cx q[41],q[17];
cx q[17],q[47];
h q[1];
s q[1];
h q[14];
s q[29];
s q[35];
s q[47];
s q[49];
cx q[1],q[34];
cx q[26],q[1];
cx q[14],q[35];
cx q[14],q[41];
cx q[14],q[47];
cx q[14],q[49];
cx q[1],q[14];
h q[14];
cx q[14],q[1];
cx q[39],q[29];
cx q[29],q[1];
cx q[1],q[39];
s q[14];
h q[14];
s q[14];
s q[26];
h q[26];
s q[34];
s q[39];
h q[41];
swap q[49],q[14];
cx q[26],q[49];
cx q[35],q[49];
cx q[41],q[49];
cx q[49],q[34];
h q[34];
cx q[34],q[49];
cx q[39],q[29];
cx q[29],q[49];
cx q[49],q[39];
s q[14];
h q[26];
h q[29];
h q[34];
s q[34];
h q[35];
h q[39];
s q[41];
h q[47];
swap q[29],q[14];
cx q[29],q[47];
cx q[29],q[14];
cx q[35],q[29];
cx q[39],q[29];
cx q[29],q[26];
h q[26];
cx q[26],q[29];
cx q[41],q[34];
cx q[34],q[29];
cx q[29],q[41];
s q[14];
h q[14];
s q[14];
s q[34];
h q[34];
s q[34];
s q[35];
s q[39];
h q[39];
s q[41];
h q[41];
swap q[26],q[14];
cx q[26],q[35];
cx q[26],q[14];
cx q[41],q[26];
cx q[39],q[34];
cx q[34],q[26];
cx q[26],q[39];
h q[14];
s q[14];
s q[34];
h q[34];
s q[34];
s q[39];
h q[39];
s q[39];
swap q[35],q[14];
cx q[47],q[35];
cx q[39],q[34];
cx q[34],q[35];
cx q[35],q[39];
s q[39];
h q[39];
h q[41];
s q[41];
swap q[39],q[14];
cx q[14],q[39];
cx q[39],q[47];
h q[47];
cx q[47],q[39];
cx q[41],q[34];
cx q[34],q[39];
cx q[39],q[41];
h q[34];
s q[34];
s q[47];
h q[47];
cx q[47],q[34];
cx q[34],q[14];
cx q[14],q[47];
h q[34];
s q[34];
h q[41];
cx q[34],q[41];
s q[41];
h q[41];
s q[47];
swap q[47],q[41];
cx q[47],q[41];
h q[41];
cx q[41],q[47];
h q[41];
s q[41];
x q[0];
y q[1];
z q[2];
z q[3];
z q[4];
z q[5];
x q[7];
y q[8];
y q[9];
y q[10];
z q[11];
y q[13];
z q[14];
z q[15];
z q[16];
x q[17];
y q[18];
z q[19];
z q[21];
y q[22];
y q[23];
x q[24];
z q[25];
y q[26];
y q[27];
y q[29];
x q[30];
x q[31];
y q[32];
y q[33];
z q[34];
y q[35];
z q[37];
x q[38];
x q[40];
z q[41];
x q[42];
x q[43];
y q[44];
y q[46];
z q[48];
x q[49];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41],q[42],q[43],q[44],q[45],q[46],q[47],q[48],q[49];
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
measure q[25] -> reg_measure[25];
measure q[26] -> reg_measure[26];
measure q[27] -> reg_measure[27];
measure q[28] -> reg_measure[28];
measure q[29] -> reg_measure[29];
measure q[30] -> reg_measure[30];
measure q[31] -> reg_measure[31];
measure q[32] -> reg_measure[32];
measure q[33] -> reg_measure[33];
measure q[34] -> reg_measure[34];
measure q[35] -> reg_measure[35];
measure q[36] -> reg_measure[36];
measure q[37] -> reg_measure[37];
measure q[38] -> reg_measure[38];
measure q[39] -> reg_measure[39];
measure q[40] -> reg_measure[40];
measure q[41] -> reg_measure[41];
measure q[42] -> reg_measure[42];
measure q[43] -> reg_measure[43];
measure q[44] -> reg_measure[44];
measure q[45] -> reg_measure[45];
measure q[46] -> reg_measure[46];
measure q[47] -> reg_measure[47];
measure q[48] -> reg_measure[48];
measure q[49] -> reg_measure[49];
