OPENQASM 2.0;
include "qelib1.inc";
qreg q[50];
creg reg_measure[50];
h q[0];
s q[2];
h q[2];
s q[2];
s q[5];
h q[8];
s q[9];
h q[10];
h q[11];
h q[12];
s q[12];
s q[13];
s q[17];
h q[19];
s q[19];
h q[20];
h q[22];
s q[23];
h q[24];
h q[26];
s q[28];
h q[28];
s q[29];
s q[30];
h q[31];
h q[33];
h q[34];
s q[35];
h q[37];
s q[40];
h q[45];
s q[45];
swap q[6],q[2];
cx q[6],q[0];
cx q[6],q[3];
cx q[6],q[9];
cx q[6],q[15];
cx q[6],q[17];
cx q[6],q[20];
cx q[6],q[33];
cx q[6],q[34];
cx q[6],q[35];
cx q[6],q[39];
cx q[6],q[43];
cx q[8],q[6];
cx q[16],q[6];
cx q[22],q[6];
cx q[24],q[6];
cx q[26],q[6];
cx q[28],q[6];
cx q[31],q[6];
cx q[32],q[6];
cx q[2],q[6];
cx q[5],q[10];
cx q[5],q[11];
cx q[5],q[13];
cx q[5],q[23];
cx q[5],q[30];
cx q[5],q[37];
cx q[5],q[40];
cx q[5],q[41];
cx q[5],q[42];
cx q[5],q[44];
cx q[5],q[47];
cx q[6],q[5];
h q[5];
cx q[5],q[6];
cx q[12],q[7];
cx q[7],q[6];
cx q[6],q[12];
cx q[29],q[19];
cx q[19],q[6];
cx q[6],q[29];
cx q[45],q[36];
cx q[36],q[6];
cx q[6],q[45];
cx q[49],q[48];
cx q[48],q[6];
cx q[6],q[49];
h q[2];
s q[3];
h q[3];
h q[4];
h q[8];
h q[9];
h q[10];
s q[12];
h q[13];
s q[17];
h q[17];
s q[18];
h q[18];
h q[19];
h q[23];
s q[25];
s q[27];
h q[27];
s q[28];
h q[28];
s q[28];
s q[30];
h q[30];
s q[31];
h q[31];
h q[32];
s q[33];
h q[33];
s q[33];
h q[34];
s q[34];
s q[35];
h q[35];
s q[36];
h q[36];
h q[38];
h q[39];
h q[42];
s q[43];
h q[44];
s q[46];
h q[46];
s q[47];
s q[49];
h q[49];
swap q[4],q[0];
cx q[4],q[13];
cx q[4],q[20];
cx q[4],q[21];
cx q[4],q[32];
cx q[4],q[39];
cx q[4],q[41];
cx q[4],q[47];
cx q[10],q[4];
cx q[17],q[4];
cx q[18],q[4];
cx q[22],q[4];
cx q[23],q[4];
cx q[27],q[4];
cx q[29],q[4];
cx q[31],q[4];
cx q[36],q[4];
cx q[46],q[4];
cx q[49],q[4];
cx q[1],q[2];
cx q[1],q[5];
cx q[1],q[7];
cx q[1],q[9];
cx q[1],q[11];
cx q[1],q[15];
cx q[1],q[19];
cx q[1],q[24];
cx q[1],q[37];
cx q[1],q[38];
cx q[1],q[40];
cx q[1],q[42];
cx q[1],q[43];
cx q[1],q[44];
cx q[1],q[45];
cx q[1],q[0];
cx q[4],q[1];
h q[1];
cx q[1],q[4];
cx q[8],q[3];
cx q[3],q[4];
cx q[4],q[8];
cx q[25],q[12];
cx q[12],q[4];
cx q[4],q[25];
cx q[28],q[26];
cx q[26],q[4];
cx q[4],q[28];
cx q[33],q[30];
cx q[30],q[4];
cx q[4],q[33];
cx q[35],q[34];
cx q[34],q[4];
cx q[4],q[35];
h q[0];
s q[1];
h q[1];
s q[2];
s q[3];
s q[8];
s q[11];
h q[11];
s q[11];
s q[12];
h q[12];
s q[12];
s q[14];
h q[14];
s q[19];
s q[20];
h q[22];
h q[26];
h q[27];
s q[30];
s q[32];
s q[33];
h q[33];
s q[33];
h q[35];
s q[37];
h q[37];
h q[39];
s q[39];
s q[41];
s q[42];
h q[43];
s q[43];
s q[44];
h q[44];
s q[44];
h q[45];
h q[47];
s q[47];
h q[49];
cx q[1],q[3];
cx q[1],q[5];
cx q[1],q[8];
cx q[1],q[16];
cx q[1],q[19];
cx q[1],q[25];
cx q[1],q[27];
cx q[1],q[30];
cx q[1],q[36];
cx q[1],q[38];
cx q[10],q[1];
cx q[14],q[1];
cx q[17],q[1];
cx q[28],q[1];
cx q[34],q[1];
cx q[35],q[1];
cx q[37],q[1];
cx q[49],q[1];
cx q[21],q[26];
cx q[21],q[31];
cx q[21],q[45];
cx q[21],q[46];
cx q[1],q[21];
h q[21];
cx q[21],q[1];
cx q[2],q[0];
cx q[0],q[1];
cx q[1],q[2];
cx q[11],q[9];
cx q[9],q[1];
cx q[1],q[11];
cx q[20],q[12];
cx q[12],q[1];
cx q[1],q[20];
cx q[24],q[22];
cx q[22],q[1];
cx q[1],q[24];
cx q[32],q[29];
cx q[29],q[1];
cx q[1],q[32];
cx q[39],q[33];
cx q[33],q[1];
cx q[1],q[39];
cx q[41],q[40];
cx q[40],q[1];
cx q[1],q[41];
cx q[43],q[42];
cx q[42],q[1];
cx q[1],q[43];
cx q[47],q[44];
cx q[44],q[1];
cx q[1],q[47];
h q[0];
h q[2];
s q[2];
s q[5];
h q[5];
s q[7];
s q[8];
h q[8];
s q[8];
h q[9];
h q[10];
s q[10];
s q[15];
s q[20];
h q[21];
s q[22];
h q[22];
s q[25];
h q[27];
h q[31];
s q[32];
h q[35];
h q[36];
h q[37];
s q[38];
h q[38];
s q[39];
h q[43];
h q[44];
s q[44];
h q[45];
h q[46];
s q[48];
h q[48];
s q[48];
cx q[5],q[20];
cx q[5],q[24];
cx q[5],q[25];
cx q[5],q[27];
cx q[5],q[34];
cx q[5],q[49];
cx q[13],q[5];
cx q[22],q[5];
cx q[23],q[5];
cx q[26],q[5];
cx q[31],q[5];
cx q[36],q[5];
cx q[38],q[5];
cx q[41],q[5];
cx q[46],q[5];
cx q[7],q[15];
cx q[7],q[18];
cx q[7],q[21];
cx q[7],q[32];
cx q[7],q[35];
cx q[7],q[39];
cx q[7],q[42];
cx q[7],q[43];
cx q[7],q[45];
cx q[5],q[7];
h q[7];
cx q[7],q[5];
cx q[2],q[0];
cx q[0],q[5];
cx q[5],q[2];
cx q[9],q[8];
cx q[8],q[5];
cx q[5],q[9];
cx q[29],q[10];
cx q[10],q[5];
cx q[5],q[29];
cx q[40],q[37];
cx q[37],q[5];
cx q[5],q[40];
cx q[48],q[44];
cx q[44],q[5];
cx q[5],q[48];
s q[0];
s q[2];
h q[3];
s q[9];
h q[9];
s q[9];
h q[10];
h q[14];
h q[19];
h q[21];
s q[23];
s q[24];
s q[25];
h q[25];
s q[25];
s q[26];
h q[26];
s q[26];
h q[28];
s q[28];
h q[29];
s q[35];
h q[35];
s q[36];
h q[36];
s q[36];
s q[40];
h q[40];
s q[41];
h q[42];
h q[43];
s q[44];
s q[45];
s q[46];
swap q[27],q[3];
cx q[27],q[2];
cx q[27],q[11];
cx q[27],q[22];
cx q[27],q[32];
cx q[27],q[33];
cx q[27],q[39];
cx q[27],q[43];
cx q[27],q[44];
cx q[27],q[45];
cx q[27],q[48];
cx q[14],q[27];
cx q[20],q[27];
cx q[34],q[27];
cx q[35],q[27];
cx q[42],q[27];
cx q[0],q[8];
cx q[0],q[10];
cx q[0],q[12];
cx q[0],q[13];
cx q[0],q[16];
cx q[0],q[19];
cx q[0],q[23];
cx q[0],q[24];
cx q[0],q[29];
cx q[0],q[31];
cx q[0],q[37];
cx q[0],q[41];
cx q[27],q[0];
h q[0];
cx q[0],q[27];
cx q[21],q[9];
cx q[9],q[27];
cx q[27],q[21];
cx q[26],q[25];
cx q[25],q[27];
cx q[27],q[26];
cx q[36],q[28];
cx q[28],q[27];
cx q[27],q[36];
cx q[40],q[38];
cx q[38],q[27];
cx q[27],q[40];
cx q[47],q[46];
cx q[46],q[27];
cx q[27],q[47];
s q[0];
h q[0];
s q[8];
h q[8];
s q[10];
s q[11];
h q[11];
s q[11];
h q[13];
h q[14];
s q[15];
h q[15];
h q[18];
s q[18];
h q[20];
s q[21];
h q[22];
h q[23];
s q[24];
h q[24];
s q[25];
h q[25];
s q[26];
h q[26];
s q[26];
s q[28];
h q[28];
s q[31];
h q[31];
s q[31];
h q[32];
h q[33];
s q[34];
h q[34];
s q[37];
h q[37];
s q[37];
h q[38];
s q[38];
s q[40];
h q[40];
s q[41];
h q[43];
s q[43];
h q[44];
s q[45];
h q[45];
s q[45];
swap q[15],q[0];
cx q[15],q[7];
cx q[15],q[9];
cx q[15],q[12];
cx q[15],q[14];
cx q[15],q[22];
cx q[15],q[32];
cx q[15],q[35];
cx q[15],q[39];
cx q[15],q[41];
cx q[15],q[42];
cx q[15],q[47];
cx q[2],q[15];
cx q[13],q[15];
cx q[23],q[15];
cx q[24],q[15];
cx q[25],q[15];
cx q[28],q[15];
cx q[33],q[15];
cx q[44],q[15];
cx q[46],q[15];
cx q[0],q[15];
cx q[3],q[17];
cx q[3],q[20];
cx q[3],q[30];
cx q[3],q[48];
cx q[15],q[3];
h q[3];
cx q[3],q[15];
cx q[10],q[8];
cx q[8],q[15];
cx q[15],q[10];
cx q[18],q[11];
cx q[11],q[15];
cx q[15],q[18];
cx q[26],q[21];
cx q[21],q[15];
cx q[15],q[26];
cx q[31],q[29];
cx q[29],q[15];
cx q[15],q[31];
cx q[37],q[34];
cx q[34],q[15];
cx q[15],q[37];
cx q[40],q[38];
cx q[38],q[15];
cx q[15],q[40];
cx q[45],q[43];
cx q[43],q[15];
cx q[15],q[45];
h q[0];
s q[2];
h q[2];
s q[2];
s q[3];
h q[3];
h q[7];
h q[8];
s q[10];
h q[10];
s q[10];
h q[12];
s q[13];
h q[13];
h q[16];
h q[19];
s q[20];
h q[20];
s q[20];
h q[21];
s q[22];
h q[23];
s q[26];
s q[28];
h q[28];
h q[29];
s q[30];
h q[31];
h q[34];
s q[35];
h q[35];
s q[35];
h q[36];
s q[36];
h q[37];
s q[38];
s q[39];
h q[39];
s q[40];
h q[40];
s q[43];
h q[43];
s q[45];
s q[47];
h q[47];
s q[49];
h q[49];
s q[49];
swap q[42],q[0];
cx q[42],q[30];
cx q[42],q[31];
cx q[42],q[33];
cx q[42],q[44];
cx q[3],q[42];
cx q[7],q[42];
cx q[8],q[42];
cx q[12],q[42];
cx q[23],q[42];
cx q[28],q[42];
cx q[37],q[42];
cx q[39],q[42];
cx q[48],q[42];
cx q[21],q[22];
cx q[21],q[46];
cx q[42],q[21];
h q[21];
cx q[21],q[42];
cx q[10],q[2];
cx q[2],q[42];
cx q[42],q[10];
cx q[16],q[13];
cx q[13],q[42];
cx q[42],q[16];
cx q[20],q[19];
cx q[19],q[42];
cx q[42],q[20];
cx q[29],q[26];
cx q[26],q[42];
cx q[42],q[29];
cx q[34],q[32];
cx q[32],q[42];
cx q[42],q[34];
cx q[36],q[35];
cx q[35],q[42];
cx q[42],q[36];
cx q[40],q[38];
cx q[38],q[42];
cx q[42],q[40];
cx q[45],q[43];
cx q[43],q[42];
cx q[42],q[45];
cx q[49],q[47];
cx q[47],q[42];
cx q[42],q[49];
h q[2];
s q[3];
s q[8];
h q[8];
s q[8];
h q[9];
h q[12];
s q[12];
s q[13];
h q[13];
s q[13];
s q[16];
h q[18];
h q[19];
h q[20];
s q[20];
s q[21];
h q[21];
s q[21];
s q[22];
h q[22];
s q[22];
h q[24];
h q[26];
s q[26];
s q[28];
s q[29];
s q[30];
h q[30];
s q[31];
s q[32];
h q[34];
h q[35];
s q[36];
h q[36];
s q[38];
h q[38];
h q[39];
h q[40];
s q[41];
h q[43];
s q[43];
s q[44];
s q[47];
s q[48];
h q[48];
s q[49];
swap q[2],q[8];
cx q[2],q[11];
cx q[2],q[16];
cx q[2],q[18];
cx q[2],q[29];
cx q[2],q[31];
cx q[2],q[39];
cx q[2],q[40];
cx q[2],q[41];
cx q[2],q[8];
cx q[14],q[2];
cx q[30],q[2];
cx q[35],q[2];
cx q[37],q[2];
cx q[38],q[2];
cx q[3],q[7];
cx q[3],q[9];
cx q[3],q[19];
cx q[3],q[23];
cx q[3],q[24];
cx q[3],q[32];
cx q[3],q[47];
cx q[3],q[49];
cx q[2],q[3];
h q[3];
cx q[3],q[2];
cx q[13],q[12];
cx q[12],q[2];
cx q[2],q[13];
cx q[21],q[20];
cx q[20],q[2];
cx q[2],q[21];
cx q[26],q[22];
cx q[22],q[2];
cx q[2],q[26];
cx q[34],q[28];
cx q[28],q[2];
cx q[2],q[34];
cx q[43],q[36];
cx q[36],q[2];
cx q[2],q[43];
cx q[48],q[44];
cx q[44],q[2];
cx q[2],q[48];
s q[0];
s q[7];
s q[8];
s q[10];
h q[10];
h q[12];
h q[13];
h q[14];
h q[16];
s q[16];
s q[17];
h q[17];
s q[18];
s q[19];
h q[19];
s q[19];
h q[20];
s q[23];
h q[23];
s q[23];
h q[24];
h q[25];
s q[26];
h q[28];
h q[31];
h q[34];
h q[38];
s q[39];
h q[39];
s q[41];
s q[43];
h q[43];
h q[45];
h q[46];
h q[48];
s q[48];
swap q[10],q[0];
cx q[10],q[3];
cx q[10],q[7];
cx q[10],q[8];
cx q[10],q[12];
cx q[10],q[24];
cx q[10],q[26];
cx q[10],q[29];
cx q[10],q[36];
cx q[10],q[38];
cx q[10],q[40];
cx q[10],q[45];
cx q[9],q[10];
cx q[13],q[10];
cx q[14],q[10];
cx q[25],q[10];
cx q[28],q[10];
cx q[30],q[10];
cx q[31],q[10];
cx q[39],q[10];
cx q[43],q[10];
cx q[0],q[10];
cx q[11],q[18];
cx q[11],q[20];
cx q[11],q[34];
cx q[11],q[46];
cx q[11],q[47];
cx q[11],q[49];
cx q[10],q[11];
h q[11];
cx q[11],q[10];
cx q[17],q[16];
cx q[16],q[10];
cx q[10],q[17];
cx q[21],q[19];
cx q[19],q[10];
cx q[10],q[21];
cx q[23],q[22];
cx q[22],q[10];
cx q[10],q[23];
cx q[41],q[32];
cx q[32],q[10];
cx q[10],q[41];
cx q[48],q[44];
cx q[44],q[10];
cx q[10],q[48];
s q[3];
h q[3];
s q[8];
h q[8];
s q[14];
s q[18];
h q[18];
h q[19];
h q[21];
s q[22];
h q[22];
h q[25];
s q[28];
s q[29];
h q[29];
s q[29];
h q[31];
h q[32];
h q[33];
s q[34];
h q[34];
s q[34];
h q[35];
s q[38];
s q[40];
s q[43];
h q[44];
s q[47];
h q[47];
s q[47];
cx q[19],q[12];
cx q[19],q[24];
cx q[19],q[31];
cx q[19],q[38];
cx q[19],q[39];
cx q[19],q[41];
cx q[19],q[43];
cx q[19],q[46];
cx q[3],q[19];
cx q[8],q[19];
cx q[16],q[19];
cx q[18],q[19];
cx q[23],q[19];
cx q[36],q[19];
cx q[48],q[19];
cx q[49],q[19];
cx q[11],q[14];
cx q[11],q[25];
cx q[11],q[28];
cx q[11],q[33];
cx q[11],q[35];
cx q[11],q[40];
cx q[19],q[11];
h q[11];
cx q[11],q[19];
cx q[13],q[9];
cx q[9],q[19];
cx q[19],q[13];
cx q[22],q[21];
cx q[21],q[19];
cx q[19],q[22];
cx q[32],q[29];
cx q[29],q[19];
cx q[19],q[32];
cx q[44],q[34];
cx q[34],q[19];
cx q[19],q[44];
cx q[47],q[45];
cx q[45],q[19];
cx q[19],q[47];
s q[0];
h q[8];
s q[9];
s q[11];
s q[12];
h q[12];
s q[13];
h q[13];
s q[18];
h q[18];
s q[21];
h q[21];
s q[22];
h q[24];
s q[25];
s q[26];
s q[28];
h q[29];
s q[30];
h q[30];
h q[32];
s q[33];
h q[33];
s q[35];
h q[36];
h q[38];
h q[41];
s q[44];
h q[45];
s q[48];
h q[49];
swap q[12],q[0];
cx q[12],q[8];
cx q[12],q[9];
cx q[12],q[11];
cx q[12],q[28];
cx q[12],q[29];
cx q[12],q[41];
cx q[12],q[43];
cx q[12],q[48];
cx q[3],q[12];
cx q[14],q[12];
cx q[16],q[12];
cx q[17],q[12];
cx q[20],q[12];
cx q[21],q[12];
cx q[31],q[12];
cx q[36],q[12];
cx q[37],q[12];
cx q[46],q[12];
cx q[0],q[12];
cx q[22],q[24];
cx q[22],q[25];
cx q[22],q[32];
cx q[22],q[35];
cx q[22],q[49];
cx q[12],q[22];
h q[22];
cx q[22],q[12];
cx q[18],q[13];
cx q[13],q[12];
cx q[12],q[18];
cx q[30],q[26];
cx q[26],q[12];
cx q[12],q[30];
cx q[38],q[33];
cx q[33],q[12];
cx q[12],q[38];
cx q[40],q[39];
cx q[39],q[12];
cx q[12],q[40];
cx q[45],q[44];
cx q[44],q[12];
cx q[12],q[45];
s q[0];
h q[3];
s q[8];
h q[8];
h q[9];
h q[14];
h q[21];
h q[22];
s q[24];
s q[28];
s q[29];
h q[31];
s q[32];
h q[32];
h q[33];
s q[35];
h q[35];
h q[36];
s q[39];
s q[47];
h q[48];
s q[48];
h q[49];
swap q[26],q[0];
cx q[26],q[9];
cx q[26],q[21];
cx q[26],q[28];
cx q[26],q[29];
cx q[26],q[31];
cx q[26],q[0];
cx q[7],q[26];
cx q[13],q[26];
cx q[14],q[26];
cx q[30],q[26];
cx q[32],q[26];
cx q[35],q[26];
cx q[43],q[26];
cx q[44],q[26];
cx q[3],q[38];
cx q[3],q[49];
cx q[26],q[3];
h q[3];
cx q[3],q[26];
cx q[16],q[8];
cx q[8],q[26];
cx q[26],q[16];
cx q[23],q[22];
cx q[22],q[26];
cx q[26],q[23];
cx q[33],q[24];
cx q[24],q[26];
cx q[26],q[33];
cx q[39],q[36];
cx q[36],q[26];
cx q[26],q[39];
cx q[46],q[40];
cx q[40],q[26];
cx q[26],q[46];
cx q[48],q[47];
cx q[47],q[26];
cx q[26],q[48];
s q[0];
h q[0];
s q[3];
h q[3];
h q[7];
s q[8];
h q[8];
s q[11];
s q[18];
h q[18];
h q[20];
h q[21];
s q[24];
h q[24];
s q[24];
h q[30];
s q[31];
s q[32];
h q[32];
s q[32];
h q[34];
h q[35];
h q[36];
h q[37];
s q[38];
h q[38];
s q[38];
h q[39];
h q[41];
s q[49];
cx q[38],q[20];
cx q[38],q[25];
cx q[38],q[29];
cx q[38],q[37];
cx q[38],q[49];
cx q[3],q[38];
cx q[18],q[38];
cx q[21],q[38];
cx q[28],q[38];
cx q[33],q[38];
cx q[35],q[38];
cx q[43],q[38];
cx q[46],q[38];
cx q[7],q[11];
cx q[7],q[13];
cx q[7],q[14];
cx q[7],q[17];
cx q[7],q[30];
cx q[7],q[31];
cx q[7],q[34];
cx q[7],q[36];
cx q[7],q[39];
cx q[38],q[7];
h q[7];
cx q[7],q[38];
cx q[8],q[0];
cx q[0],q[38];
cx q[38],q[8];
cx q[24],q[22];
cx q[22],q[38];
cx q[38],q[24];
cx q[40],q[32];
cx q[32],q[38];
cx q[38],q[40];
cx q[47],q[41];
cx q[41],q[38];
cx q[38],q[47];
s q[0];
s q[7];
s q[8];
s q[11];
h q[13];
s q[16];
h q[16];
s q[16];
s q[17];
h q[17];
h q[22];
s q[23];
h q[23];
h q[25];
h q[28];
s q[30];
h q[30];
s q[31];
h q[31];
s q[37];
h q[37];
h q[39];
s q[40];
h q[45];
h q[48];
s q[48];
s q[49];
cx q[8],q[0];
cx q[8],q[18];
cx q[8],q[20];
cx q[8],q[32];
cx q[8],q[34];
cx q[8],q[35];
cx q[8],q[36];
cx q[8],q[39];
cx q[8],q[45];
cx q[8],q[49];
cx q[17],q[8];
cx q[22],q[8];
cx q[23],q[8];
cx q[31],q[8];
cx q[37],q[8];
cx q[44],q[8];
cx q[7],q[11];
cx q[7],q[13];
cx q[7],q[24];
cx q[7],q[25];
cx q[7],q[28];
cx q[7],q[40];
cx q[7],q[47];
cx q[8],q[7];
h q[7];
cx q[7],q[8];
cx q[16],q[3];
cx q[3],q[8];
cx q[8],q[16];
cx q[30],q[21];
cx q[21],q[8];
cx q[8],q[30];
cx q[48],q[41];
cx q[41],q[8];
cx q[8],q[48];
h q[0];
s q[3];
h q[3];
s q[7];
s q[9];
s q[11];
h q[11];
s q[13];
s q[14];
s q[17];
h q[17];
s q[17];
s q[18];
h q[20];
h q[21];
s q[22];
s q[23];
s q[29];
s q[33];
h q[34];
s q[34];
h q[35];
h q[36];
h q[37];
s q[39];
h q[39];
s q[40];
h q[40];
s q[41];
h q[43];
h q[44];
h q[45];
s q[45];
s q[46];
s q[47];
h q[47];
s q[48];
s q[49];
h q[49];
cx q[11],q[7];
cx q[11],q[13];
cx q[11],q[18];
cx q[11],q[20];
cx q[11],q[30];
cx q[11],q[37];
cx q[11],q[46];
cx q[21],q[11];
cx q[31],q[11];
cx q[32],q[11];
cx q[36],q[11];
cx q[39],q[11];
cx q[44],q[11];
cx q[47],q[11];
cx q[49],q[11];
cx q[14],q[23];
cx q[14],q[24];
cx q[14],q[33];
cx q[14],q[35];
cx q[14],q[41];
cx q[14],q[43];
cx q[11],q[14];
h q[14];
cx q[14],q[11];
cx q[3],q[0];
cx q[0],q[11];
cx q[11],q[3];
cx q[17],q[9];
cx q[9],q[11];
cx q[11],q[17];
cx q[29],q[22];
cx q[22],q[11];
cx q[11],q[29];
cx q[40],q[34];
cx q[34],q[11];
cx q[11],q[40];
cx q[48],q[45];
cx q[45],q[11];
cx q[11],q[48];
s q[0];
h q[0];
s q[3];
h q[7];
h q[13];
h q[14];
h q[17];
s q[21];
h q[21];
s q[22];
h q[22];
s q[23];
h q[25];
s q[25];
h q[28];
s q[29];
h q[35];
h q[36];
s q[37];
s q[39];
s q[40];
h q[40];
s q[40];
h q[43];
s q[43];
s q[44];
h q[44];
h q[46];
s q[47];
h q[49];
cx q[22],q[3];
cx q[22],q[14];
cx q[22],q[24];
cx q[22],q[30];
cx q[22],q[35];
cx q[22],q[37];
cx q[22],q[39];
cx q[22],q[48];
cx q[22],q[49];
cx q[7],q[22];
cx q[9],q[22];
cx q[20],q[22];
cx q[32],q[22];
cx q[46],q[22];
cx q[16],q[17];
cx q[16],q[23];
cx q[16],q[28];
cx q[16],q[29];
cx q[16],q[36];
cx q[16],q[45];
cx q[22],q[16];
h q[16];
cx q[16],q[22];
cx q[13],q[0];
cx q[0],q[22];
cx q[22],q[13];
cx q[25],q[21];
cx q[21],q[22];
cx q[22],q[25];
cx q[43],q[40];
cx q[40],q[22];
cx q[22],q[43];
cx q[47],q[44];
cx q[44],q[22];
cx q[22],q[47];
s q[7];
h q[7];
h q[9];
h q[16];
h q[18];
h q[21];
h q[23];
s q[24];
s q[28];
h q[28];
s q[28];
s q[29];
s q[30];
h q[31];
s q[32];
h q[32];
s q[34];
h q[35];
h q[39];
h q[40];
s q[43];
h q[43];
s q[43];
h q[44];
h q[49];
swap q[48],q[0];
cx q[48],q[16];
cx q[48],q[17];
cx q[48],q[30];
cx q[48],q[31];
cx q[48],q[35];
cx q[48],q[39];
cx q[48],q[44];
cx q[48],q[47];
cx q[9],q[48];
cx q[14],q[48];
cx q[20],q[48];
cx q[32],q[48];
cx q[3],q[21];
cx q[3],q[23];
cx q[3],q[24];
cx q[3],q[29];
cx q[3],q[36];
cx q[3],q[49];
cx q[48],q[3];
h q[3];
cx q[3],q[48];
cx q[18],q[7];
cx q[7],q[48];
cx q[48],q[18];
cx q[34],q[28];
cx q[28],q[48];
cx q[48],q[34];
cx q[43],q[40];
cx q[40],q[48];
cx q[48],q[43];
s q[7];
s q[9];
h q[9];
s q[13];
h q[13];
s q[13];
s q[16];
h q[16];
s q[17];
s q[25];
s q[28];
h q[28];
s q[28];
s q[29];
s q[32];
h q[33];
h q[34];
h q[36];
s q[36];
h q[37];
h q[41];
s q[43];
h q[44];
s q[45];
h q[46];
h q[47];
s q[47];
h q[49];
cx q[14],q[7];
cx q[14],q[33];
cx q[14],q[46];
cx q[0],q[14];
cx q[16],q[14];
cx q[24],q[14];
cx q[34],q[14];
cx q[37],q[14];
cx q[3],q[25];
cx q[3],q[32];
cx q[3],q[41];
cx q[3],q[43];
cx q[3],q[44];
cx q[3],q[49];
cx q[14],q[3];
h q[3];
cx q[3],q[14];
cx q[13],q[9];
cx q[9],q[14];
cx q[14],q[13];
cx q[20],q[17];
cx q[17],q[14];
cx q[14],q[20];
cx q[28],q[21];
cx q[21],q[14];
cx q[14],q[28];
cx q[36],q[29];
cx q[29],q[14];
cx q[14],q[36];
cx q[47],q[45];
cx q[45],q[14];
cx q[14],q[47];
s q[3];
h q[3];
s q[16];
h q[17];
s q[18];
h q[23];
s q[24];
h q[28];
s q[29];
h q[29];
s q[31];
s q[33];
s q[36];
s q[39];
h q[39];
s q[40];
h q[41];
h q[44];
h q[46];
s q[47];
h q[49];
cx q[29],q[9];
cx q[29],q[16];
cx q[29],q[20];
cx q[29],q[23];
cx q[29],q[31];
cx q[29],q[32];
cx q[29],q[33];
cx q[29],q[41];
cx q[29],q[43];
cx q[29],q[44];
cx q[29],q[47];
cx q[29],q[49];
cx q[3],q[29];
cx q[28],q[29];
cx q[30],q[29];
cx q[34],q[29];
cx q[7],q[13];
cx q[29],q[7];
h q[7];
cx q[7],q[29];
cx q[17],q[0];
cx q[0],q[29];
cx q[29],q[17];
cx q[24],q[18];
cx q[18],q[29];
cx q[29],q[24];
cx q[39],q[36];
cx q[36],q[29];
cx q[29],q[39];
cx q[46],q[40];
cx q[40],q[29];
cx q[29],q[46];
s q[0];
h q[0];
s q[0];
h q[3];
s q[3];
h q[13];
s q[13];
s q[17];
h q[17];
s q[18];
h q[18];
h q[25];
s q[31];
s q[32];
h q[32];
s q[32];
s q[34];
h q[34];
s q[34];
h q[35];
s q[35];
h q[39];
s q[40];
h q[40];
s q[40];
h q[43];
s q[45];
s q[46];
h q[47];
swap q[41],q[0];
cx q[41],q[20];
cx q[41],q[33];
cx q[41],q[39];
cx q[41],q[43];
cx q[41],q[0];
cx q[17],q[41];
cx q[37],q[41];
cx q[7],q[16];
cx q[7],q[25];
cx q[7],q[28];
cx q[7],q[31];
cx q[7],q[45];
cx q[7],q[46];
cx q[7],q[47];
cx q[7],q[49];
cx q[41],q[7];
h q[7];
cx q[7],q[41];
cx q[9],q[3];
cx q[3],q[41];
cx q[41],q[9];
cx q[18],q[13];
cx q[13],q[41];
cx q[41],q[18];
cx q[24],q[21];
cx q[21],q[41];
cx q[41],q[24];
cx q[34],q[32];
cx q[32],q[41];
cx q[41],q[34];
cx q[40],q[35];
cx q[35],q[41];
cx q[41],q[40];
s q[0];
h q[0];
s q[0];
h q[3];
s q[3];
h q[9];
s q[13];
h q[13];
s q[13];
s q[16];
h q[16];
h q[17];
s q[20];
h q[20];
s q[23];
h q[23];
h q[25];
s q[25];
h q[28];
s q[31];
s q[32];
s q[33];
h q[35];
s q[36];
h q[37];
s q[39];
s q[40];
h q[43];
s q[45];
h q[45];
h q[47];
s q[49];
swap q[23],q[0];
cx q[23],q[7];
cx q[23],q[9];
cx q[23],q[24];
cx q[23],q[32];
cx q[23],q[33];
cx q[23],q[36];
cx q[23],q[39];
cx q[23],q[43];
cx q[16],q[23];
cx q[17],q[23];
cx q[20],q[23];
cx q[21],q[23];
cx q[45],q[23];
cx q[46],q[23];
cx q[47],q[23];
cx q[0],q[23];
cx q[28],q[31];
cx q[28],q[37];
cx q[28],q[44];
cx q[28],q[49];
cx q[23],q[28];
h q[28];
cx q[28],q[23];
cx q[13],q[3];
cx q[3],q[23];
cx q[23],q[13];
cx q[34],q[25];
cx q[25],q[23];
cx q[23],q[34];
cx q[40],q[35];
cx q[35],q[23];
cx q[23],q[40];
h q[0];
h q[3];
s q[3];
h q[7];
s q[9];
s q[13];
h q[13];
s q[20];
h q[20];
h q[21];
s q[21];
s q[25];
s q[28];
s q[30];
h q[31];
h q[33];
s q[35];
s q[36];
s q[43];
h q[43];
h q[44];
s q[47];
h q[49];
cx q[21],q[9];
cx q[21],q[16];
cx q[21],q[30];
cx q[21],q[39];
cx q[21],q[47];
cx q[21],q[49];
cx q[0],q[21];
cx q[13],q[21];
cx q[20],q[21];
cx q[37],q[21];
cx q[40],q[21];
cx q[43],q[21];
cx q[44],q[21];
cx q[45],q[21];
cx q[46],q[21];
cx q[7],q[18];
cx q[7],q[25];
cx q[7],q[28];
cx q[7],q[31];
cx q[7],q[32];
cx q[7],q[33];
cx q[7],q[35];
cx q[21],q[7];
h q[7];
cx q[7],q[21];
cx q[36],q[3];
cx q[3],q[21];
cx q[21],q[36];
s q[0];
h q[0];
s q[0];
s q[3];
h q[3];
s q[3];
s q[9];
s q[13];
h q[13];
h q[17];
s q[20];
h q[25];
s q[28];
h q[28];
s q[30];
h q[31];
s q[32];
h q[32];
s q[34];
h q[36];
s q[36];
h q[39];
s q[40];
h q[40];
s q[40];
s q[43];
s q[44];
s q[45];
h q[45];
h q[46];
h q[47];
s q[47];
swap q[39],q[0];
cx q[39],q[17];
cx q[39],q[25];
cx q[39],q[35];
cx q[39],q[37];
cx q[39],q[44];
cx q[13],q[39];
cx q[16],q[39];
cx q[18],q[39];
cx q[28],q[39];
cx q[31],q[39];
cx q[33],q[39];
cx q[45],q[39];
cx q[46],q[39];
cx q[0],q[39];
cx q[9],q[30];
cx q[9],q[34];
cx q[9],q[43];
cx q[39],q[9];
h q[9];
cx q[9],q[39];
cx q[20],q[3];
cx q[3],q[39];
cx q[39],q[20];
cx q[36],q[32];
cx q[32],q[39];
cx q[39],q[36];
cx q[47],q[40];
cx q[40],q[39];
cx q[39],q[47];
s q[0];
h q[3];
h q[7];
h q[9];
s q[16];
h q[16];
h q[17];
s q[18];
h q[18];
h q[20];
h q[24];
s q[25];
s q[28];
h q[28];
h q[31];
h q[33];
h q[34];
h q[35];
s q[36];
h q[36];
s q[36];
h q[37];
h q[40];
h q[44];
s q[45];
h q[45];
swap q[47],q[0];
cx q[47],q[7];
cx q[47],q[9];
cx q[47],q[20];
cx q[47],q[32];
cx q[47],q[37];
cx q[47],q[44];
cx q[17],q[47];
cx q[18],q[47];
cx q[28],q[47];
cx q[31],q[47];
cx q[33],q[47];
cx q[40],q[47];
cx q[45],q[47];
cx q[13],q[25];
cx q[13],q[30];
cx q[13],q[34];
cx q[13],q[35];
cx q[13],q[0];
cx q[47],q[13];
h q[13];
cx q[13],q[47];
cx q[16],q[3];
cx q[3],q[47];
cx q[47],q[16];
cx q[36],q[24];
cx q[24],q[47];
cx q[47],q[36];
s q[0];
s q[3];
h q[3];
s q[3];
h q[7];
h q[13];
s q[24];
h q[28];
h q[31];
s q[33];
s q[34];
s q[35];
s q[37];
h q[37];
h q[43];
s q[43];
s q[44];
h q[44];
h q[45];
h q[46];
cx q[25],q[16];
cx q[25],q[24];
cx q[25],q[34];
cx q[25],q[35];
cx q[25],q[45];
cx q[25],q[49];
cx q[7],q[25];
cx q[18],q[25];
cx q[28],q[25];
cx q[37],q[25];
cx q[44],q[25];
cx q[13],q[20];
cx q[13],q[46];
cx q[25],q[13];
h q[13];
cx q[13],q[25];
cx q[3],q[0];
cx q[0],q[25];
cx q[25],q[3];
cx q[31],q[17];
cx q[17],q[25];
cx q[25],q[31];
cx q[43],q[33];
cx q[33],q[25];
cx q[25],q[43];
s q[0];
h q[0];
s q[0];
s q[3];
h q[3];
h q[7];
s q[7];
h q[13];
h q[16];
s q[18];
s q[20];
s q[24];
h q[24];
s q[28];
s q[30];
h q[31];
s q[32];
s q[34];
h q[34];
s q[35];
h q[35];
h q[36];
swap q[33],q[0];
cx q[33],q[13];
cx q[33],q[17];
cx q[33],q[18];
cx q[33],q[20];
cx q[33],q[31];
cx q[33],q[32];
cx q[33],q[37];
cx q[33],q[44];
cx q[3],q[33];
cx q[9],q[33];
cx q[16],q[33];
cx q[34],q[33];
cx q[35],q[33];
cx q[36],q[33];
cx q[0],q[33];
cx q[30],q[43];
cx q[33],q[30];
h q[30];
cx q[30],q[33];
cx q[24],q[7];
cx q[7],q[33];
cx q[33],q[24];
cx q[40],q[28];
cx q[28],q[33];
cx q[33],q[40];
s q[0];
h q[0];
s q[3];
h q[3];
s q[7];
h q[7];
s q[7];
s q[9];
s q[16];
h q[17];
h q[30];
s q[31];
h q[31];
s q[31];
s q[34];
s q[36];
h q[37];
s q[43];
h q[43];
s q[43];
h q[44];
h q[49];
cx q[31],q[16];
cx q[31],q[17];
cx q[31],q[24];
cx q[31],q[30];
cx q[31],q[34];
cx q[31],q[35];
cx q[31],q[45];
cx q[0],q[31];
cx q[3],q[31];
cx q[44],q[31];
cx q[9],q[7];
cx q[7],q[31];
cx q[31],q[9];
cx q[37],q[36];
cx q[36],q[31];
cx q[31],q[37];
cx q[49],q[43];
cx q[43],q[31];
cx q[31],q[49];
s q[0];
h q[0];
s q[0];
h q[3];
s q[3];
h q[7];
h q[9];
h q[13];
h q[16];
s q[17];
s q[18];
h q[18];
s q[24];
h q[24];
s q[32];
h q[32];
h q[35];
s q[37];
h q[40];
h q[43];
s q[44];
s q[45];
s q[46];
h q[46];
s q[49];
swap q[40],q[0];
cx q[40],q[17];
cx q[40],q[49];
cx q[13],q[40];
cx q[16],q[40];
cx q[18],q[40];
cx q[20],q[40];
cx q[24],q[40];
cx q[32],q[40];
cx q[34],q[40];
cx q[46],q[40];
cx q[0],q[40];
cx q[7],q[43];
cx q[7],q[44];
cx q[40],q[7];
h q[7];
cx q[7],q[40];
cx q[9],q[3];
cx q[3],q[40];
cx q[40],q[9];
cx q[35],q[30];
cx q[30],q[40];
cx q[40],q[35];
cx q[45],q[37];
cx q[37],q[40];
cx q[40],q[45];
s q[0];
h q[0];
h q[3];
s q[7];
h q[7];
s q[9];
s q[13];
h q[13];
s q[13];
h q[16];
s q[18];
h q[18];
s q[18];
s q[20];
s q[30];
h q[32];
h q[36];
s q[37];
s q[45];
h q[45];
swap q[16],q[0];
cx q[16],q[20];
cx q[16],q[35];
cx q[16],q[0];
cx q[7],q[16];
cx q[17],q[16];
cx q[32],q[16];
cx q[44],q[16];
cx q[3],q[28];
cx q[3],q[30];
cx q[3],q[34];
cx q[3],q[36];
cx q[3],q[43];
cx q[16],q[3];
h q[3];
cx q[3],q[16];
cx q[13],q[9];
cx q[9],q[16];
cx q[16],q[13];
cx q[37],q[18];
cx q[18],q[16];
cx q[16],q[37];
cx q[46],q[45];
cx q[45],q[16];
cx q[16],q[46];
h q[0];
s q[7];
h q[7];
s q[9];
h q[9];
s q[17];
h q[18];
s q[20];
h q[20];
h q[24];
s q[32];
s q[34];
s q[35];
h q[44];
h q[45];
s q[45];
swap q[20],q[0];
cx q[20],q[13];
cx q[20],q[17];
cx q[20],q[18];
cx q[20],q[24];
cx q[20],q[30];
cx q[20],q[32];
cx q[20],q[49];
cx q[9],q[20];
cx q[0],q[20];
cx q[36],q[43];
cx q[20],q[36];
h q[36];
cx q[36],q[20];
cx q[34],q[7];
cx q[7],q[20];
cx q[20],q[34];
cx q[44],q[35];
cx q[35],q[20];
cx q[20],q[44];
cx q[46],q[45];
cx q[45],q[20];
cx q[20],q[46];
s q[0];
h q[3];
s q[7];
s q[17];
h q[17];
s q[24];
s q[28];
s q[30];
h q[30];
s q[36];
h q[37];
h q[43];
s q[44];
h q[44];
s q[46];
swap q[35],q[0];
cx q[35],q[7];
cx q[35],q[49];
cx q[34],q[35];
cx q[37],q[35];
cx q[44],q[35];
cx q[3],q[18];
cx q[3],q[32];
cx q[3],q[46];
cx q[3],q[0];
cx q[35],q[3];
h q[3];
cx q[3],q[35];
cx q[24],q[17];
cx q[17],q[35];
cx q[35],q[24];
cx q[30],q[28];
cx q[28],q[35];
cx q[35],q[30];
cx q[43],q[36];
cx q[36],q[35];
cx q[35],q[43];
s q[0];
h q[0];
s q[0];
s q[3];
h q[3];
s q[9];
h q[9];
h q[13];
s q[17];
h q[17];
s q[24];
h q[24];
h q[32];
s q[37];
s q[43];
h q[43];
h q[46];
h q[49];
swap q[46],q[0];
cx q[46],q[13];
cx q[3],q[46];
cx q[9],q[46];
cx q[24],q[46];
cx q[32],q[46];
cx q[34],q[46];
cx q[43],q[46];
cx q[49],q[46];
cx q[0],q[46];
cx q[30],q[37];
cx q[30],q[45];
cx q[46],q[30];
h q[30];
cx q[30],q[46];
cx q[18],q[17];
cx q[17],q[46];
cx q[46],q[18];
s q[0];
h q[3];
s q[7];
h q[7];
s q[9];
h q[9];
h q[17];
s q[17];
h q[24];
h q[28];
s q[28];
s q[32];
h q[32];
h q[36];
s q[36];
h q[37];
h q[44];
h q[45];
cx q[37],q[44];
cx q[37],q[45];
cx q[37],q[49];
cx q[3],q[37];
cx q[13],q[37];
cx q[32],q[37];
cx q[24],q[30];
cx q[37],q[24];
h q[24];
cx q[24],q[37];
cx q[7],q[0];
cx q[0],q[37];
cx q[37],q[7];
cx q[17],q[9];
cx q[9],q[37];
cx q[37],q[17];
cx q[36],q[28];
cx q[28],q[37];
cx q[37],q[36];
s q[3];
h q[3];
s q[3];
h q[9];
h q[13];
h q[18];
h q[24];
h q[28];
s q[28];
s q[30];
h q[30];
h q[32];
h q[34];
s q[36];
s q[43];
s q[49];
swap q[7],q[3];
cx q[7],q[45];
cx q[7],q[49];
cx q[9],q[7];
cx q[24],q[7];
cx q[30],q[7];
cx q[32],q[7];
cx q[34],q[7];
cx q[13],q[36];
cx q[13],q[43];
cx q[13],q[3];
cx q[7],q[13];
h q[13];
cx q[13],q[7];
cx q[28],q[18];
cx q[18],q[7];
cx q[7],q[28];
s q[0];
h q[0];
h q[3];
s q[9];
h q[9];
s q[13];
h q[13];
s q[18];
s q[24];
s q[30];
h q[30];
h q[32];
s q[36];
s q[49];
cx q[24],q[28];
cx q[3],q[24];
cx q[9],q[24];
cx q[18],q[36];
cx q[18],q[44];
cx q[24],q[18];
h q[18];
cx q[18],q[24];
cx q[13],q[0];
cx q[0],q[24];
cx q[24],q[13];
cx q[32],q[30];
cx q[30],q[24];
cx q[24],q[32];
cx q[49],q[45];
cx q[45],q[24];
cx q[24],q[49];
s q[0];
h q[3];
s q[9];
h q[13];
s q[13];
s q[17];
h q[18];
s q[32];
h q[32];
s q[32];
s q[36];
h q[36];
s q[36];
h q[43];
h q[44];
s q[45];
h q[45];
s q[49];
h q[49];
swap q[17],q[0];
cx q[17],q[3];
cx q[17],q[9];
cx q[17],q[34];
cx q[17],q[0];
cx q[30],q[17];
cx q[43],q[17];
cx q[44],q[17];
cx q[45],q[17];
cx q[17],q[18];
h q[18];
cx q[18],q[17];
cx q[32],q[13];
cx q[13],q[17];
cx q[17],q[32];
cx q[49],q[36];
cx q[36],q[17];
cx q[17],q[49];
s q[0];
h q[0];
s q[13];
h q[13];
s q[13];
s q[18];
h q[28];
s q[30];
h q[30];
s q[34];
h q[36];
s q[36];
s q[45];
cx q[0],q[34];
cx q[30],q[0];
cx q[44],q[0];
cx q[49],q[0];
cx q[18],q[32];
cx q[18],q[43];
cx q[18],q[45];
cx q[0],q[18];
h q[18];
cx q[18],q[0];
cx q[13],q[3];
cx q[3],q[0];
cx q[0],q[13];
cx q[36],q[28];
cx q[28],q[0];
cx q[0],q[36];
s q[3];
h q[3];
s q[3];
s q[9];
h q[9];
h q[13];
h q[18];
s q[28];
s q[30];
s q[32];
h q[32];
s q[32];
s q[34];
h q[34];
h q[36];
s q[43];
h q[45];
swap q[30],q[3];
cx q[30],q[28];
cx q[30],q[43];
cx q[30],q[44];
cx q[30],q[45];
cx q[9],q[30];
cx q[36],q[49];
cx q[36],q[3];
cx q[30],q[36];
h q[36];
cx q[36],q[30];
cx q[18],q[13];
cx q[13],q[30];
cx q[30],q[18];
cx q[34],q[32];
cx q[32],q[30];
cx q[30],q[34];
s q[3];
h q[3];
s q[28];
s q[32];
h q[32];
s q[32];
h q[34];
s q[43];
h q[44];
s q[49];
h q[49];
swap q[43],q[3];
cx q[43],q[45];
cx q[9],q[43];
cx q[13],q[43];
cx q[49],q[43];
cx q[28],q[36];
cx q[28],q[44];
cx q[28],q[3];
cx q[43],q[28];
h q[28];
cx q[28],q[43];
cx q[34],q[32];
cx q[32],q[43];
cx q[43],q[34];
s q[3];
s q[9];
h q[9];
s q[13];
h q[13];
s q[18];
h q[32];
s q[44];
h q[44];
s q[44];
s q[49];
h q[49];
cx q[9],q[18];
cx q[13],q[18];
cx q[32],q[18];
cx q[34],q[18];
cx q[36],q[18];
cx q[45],q[18];
cx q[49],q[18];
cx q[44],q[3];
cx q[3],q[18];
cx q[18],q[44];
s q[3];
h q[3];
s q[3];
s q[9];
s q[13];
h q[13];
s q[13];
h q[28];
h q[34];
s q[36];
s q[44];
h q[44];
s q[44];
h q[45];
h q[49];
swap q[49],q[3];
cx q[49],q[34];
cx q[49],q[36];
cx q[49],q[45];
cx q[3],q[49];
cx q[9],q[28];
cx q[49],q[9];
h q[9];
cx q[9],q[49];
cx q[44],q[13];
cx q[13],q[49];
cx q[49],q[44];
h q[9];
s q[13];
h q[13];
h q[28];
h q[32];
s q[34];
s q[45];
h q[45];
cx q[28],q[45];
cx q[32],q[45];
cx q[36],q[45];
cx q[9],q[34];
cx q[45],q[9];
h q[9];
cx q[9],q[45];
cx q[13],q[3];
cx q[3],q[45];
cx q[45],q[13];
s q[3];
h q[3];
h q[9];
s q[13];
h q[13];
s q[28];
h q[34];
s q[44];
cx q[13],q[32];
cx q[13],q[44];
h q[44];
cx q[44],q[13];
cx q[9],q[3];
cx q[3],q[13];
cx q[13],q[9];
cx q[34],q[28];
cx q[28],q[13];
cx q[13],q[34];
h q[3];
s q[3];
h q[9];
s q[28];
s q[32];
h q[32];
s q[32];
h q[34];
s q[44];
h q[44];
s q[44];
cx q[34],q[28];
cx q[9],q[3];
cx q[3],q[34];
cx q[34],q[9];
cx q[44],q[32];
cx q[32],q[34];
cx q[34],q[44];
s q[3];
h q[3];
h q[36];
h q[44];
swap q[36],q[3];
cx q[44],q[36];
cx q[9],q[3];
cx q[36],q[9];
h q[9];
cx q[9],q[36];
h q[3];
s q[28];
s q[32];
h q[32];
h q[44];
cx q[32],q[3];
cx q[28],q[44];
cx q[3],q[28];
h q[28];
cx q[28],q[3];
s q[9];
h q[9];
s q[32];
h q[44];
cx q[9],q[28];
cx q[9],q[44];
cx q[9],q[32];
h q[32];
cx q[32],q[9];
h q[28];
s q[32];
h q[32];
swap q[32],q[28];
cx q[32],q[44];
cx q[28],q[32];
h q[28];
swap q[44],q[28];
cx q[28],q[44];
h q[28];
s q[28];
y q[1];
y q[2];
z q[4];
x q[6];
z q[7];
z q[8];
y q[9];
x q[10];
x q[12];
y q[13];
z q[14];
z q[16];
x q[17];
z q[19];
z q[20];
z q[21];
x q[22];
y q[23];
z q[24];
z q[28];
x q[29];
z q[31];
x q[32];
z q[33];
y q[34];
y q[36];
z q[38];
x q[39];
y q[40];
y q[41];
z q[42];
z q[43];
x q[44];
z q[45];
z q[47];
x q[48];
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
