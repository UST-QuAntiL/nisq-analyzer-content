OPENQASM 2.0;
include "qelib1.inc";
qreg q[50];
s q[0];
h q[0];
s q[0];
s q[1];
h q[2];
s q[2];
h q[6];
s q[7];
h q[7];
s q[8];
h q[9];
h q[12];
s q[13];
h q[15];
s q[16];
h q[16];
h q[17];
s q[18];
s q[23];
s q[26];
h q[27];
s q[27];
h q[28];
h q[31];
h q[32];
h q[33];
h q[34];
s q[35];
h q[36];
h q[39];
h q[40];
s q[40];
s q[41];
s q[42];
h q[43];
s q[45];
h q[45];
s q[45];
s q[46];
h q[46];
s q[47];
cx q[15],q[1];
cx q[15],q[5];
cx q[15],q[8];
cx q[15],q[13];
cx q[15],q[18];
cx q[15],q[26];
cx q[15],q[29];
cx q[15],q[30];
cx q[15],q[34];
cx q[15],q[35];
cx q[15],q[43];
cx q[15],q[44];
cx q[6],q[15];
cx q[12],q[15];
cx q[16],q[15];
cx q[20],q[15];
cx q[33],q[15];
cx q[49],q[15];
cx q[9],q[17];
cx q[9],q[19];
cx q[9],q[21];
cx q[9],q[22];
cx q[9],q[23];
cx q[9],q[24];
cx q[9],q[25];
cx q[9],q[31];
cx q[9],q[32];
cx q[9],q[41];
cx q[15],q[9];
h q[9];
cx q[9],q[15];
cx q[2],q[0];
cx q[0],q[15];
cx q[15],q[2];
cx q[7],q[3];
cx q[3],q[15];
cx q[15],q[7];
cx q[27],q[10];
cx q[10],q[15];
cx q[15],q[27];
cx q[36],q[28];
cx q[28],q[15];
cx q[15],q[36];
cx q[40],q[39];
cx q[39],q[15];
cx q[15],q[40];
cx q[45],q[42];
cx q[42],q[15];
cx q[15],q[45];
cx q[47],q[46];
cx q[46],q[15];
cx q[15],q[47];
s q[0];
h q[0];
s q[0];
h q[1];
h q[5];
s q[5];
s q[10];
h q[10];
h q[12];
h q[13];
h q[14];
s q[16];
h q[17];
h q[18];
h q[19];
h q[20];
s q[20];
h q[22];
s q[22];
s q[23];
s q[24];
h q[24];
s q[27];
h q[28];
h q[30];
s q[33];
h q[33];
s q[34];
h q[34];
s q[36];
h q[39];
s q[40];
h q[40];
h q[42];
s q[43];
s q[45];
s q[49];
swap q[36],q[0];
cx q[36],q[1];
cx q[36],q[2];
cx q[36],q[3];
cx q[36],q[7];
cx q[36],q[9];
cx q[36],q[19];
cx q[36],q[21];
cx q[36],q[28];
cx q[36],q[32];
cx q[36],q[35];
cx q[36],q[41];
cx q[36],q[43];
cx q[36],q[45];
cx q[36],q[46];
cx q[36],q[48];
cx q[36],q[49];
cx q[36],q[0];
cx q[8],q[36];
cx q[10],q[36];
cx q[17],q[36];
cx q[24],q[36];
cx q[25],q[36];
cx q[30],q[36];
cx q[33],q[36];
cx q[42],q[36];
cx q[4],q[12];
cx q[4],q[13];
cx q[4],q[14];
cx q[4],q[27];
cx q[4],q[38];
cx q[36],q[4];
h q[4];
cx q[4],q[36];
cx q[11],q[5];
cx q[5],q[36];
cx q[36],q[11];
cx q[18],q[16];
cx q[16],q[36];
cx q[36],q[18];
cx q[22],q[20];
cx q[20],q[36];
cx q[36],q[22];
cx q[34],q[23];
cx q[23],q[36];
cx q[36],q[34];
cx q[40],q[39];
cx q[39],q[36];
cx q[36],q[40];
h q[0];
h q[1];
s q[7];
h q[7];
s q[7];
h q[8];
h q[13];
s q[17];
h q[17];
s q[18];
h q[18];
h q[21];
s q[21];
h q[22];
s q[22];
s q[24];
h q[24];
h q[25];
h q[26];
s q[27];
h q[27];
s q[28];
h q[30];
s q[31];
h q[31];
s q[31];
h q[34];
s q[35];
s q[37];
h q[37];
s q[37];
s q[38];
h q[38];
s q[39];
s q[43];
h q[43];
s q[43];
h q[46];
s q[46];
s q[47];
swap q[1],q[0];
cx q[1],q[2];
cx q[1],q[5];
cx q[1],q[25];
cx q[1],q[28];
cx q[1],q[29];
cx q[1],q[32];
cx q[1],q[33];
cx q[1],q[35];
cx q[1],q[45];
cx q[1],q[47];
cx q[8],q[1];
cx q[13],q[1];
cx q[17],q[1];
cx q[18],q[1];
cx q[23],q[1];
cx q[38],q[1];
cx q[11],q[12];
cx q[11],q[20];
cx q[11],q[26];
cx q[11],q[0];
cx q[1],q[11];
h q[11];
cx q[11],q[1];
cx q[4],q[3];
cx q[3],q[1];
cx q[1],q[4];
cx q[9],q[7];
cx q[7],q[1];
cx q[1],q[9];
cx q[19],q[10];
cx q[10],q[1];
cx q[1],q[19];
cx q[22],q[21];
cx q[21],q[1];
cx q[1],q[22];
cx q[27],q[24];
cx q[24],q[1];
cx q[1],q[27];
cx q[31],q[30];
cx q[30],q[1];
cx q[1],q[31];
cx q[37],q[34];
cx q[34],q[1];
cx q[1],q[37];
cx q[40],q[39];
cx q[39],q[1];
cx q[1],q[40];
cx q[44],q[43];
cx q[43],q[1];
cx q[1],q[44];
cx q[48],q[46];
cx q[46],q[1];
cx q[1],q[48];
s q[0];
h q[0];
h q[2];
s q[3];
h q[3];
h q[4];
h q[5];
s q[9];
h q[9];
h q[10];
s q[10];
s q[11];
s q[14];
h q[14];
s q[16];
h q[16];
s q[20];
h q[20];
s q[22];
h q[22];
h q[23];
s q[24];
h q[24];
s q[24];
h q[25];
s q[25];
h q[26];
h q[29];
s q[29];
s q[30];
s q[31];
s q[32];
h q[33];
s q[34];
h q[34];
s q[34];
h q[37];
h q[42];
s q[42];
s q[44];
s q[45];
h q[45];
s q[46];
s q[47];
h q[47];
h q[48];
s q[49];
swap q[12],q[0];
cx q[12],q[7];
cx q[12],q[8];
cx q[12],q[13];
cx q[12],q[21];
cx q[12],q[27];
cx q[12],q[30];
cx q[12],q[32];
cx q[12],q[35];
cx q[12],q[41];
cx q[12],q[43];
cx q[12],q[46];
cx q[3],q[12];
cx q[5],q[12];
cx q[9],q[12];
cx q[14],q[12];
cx q[22],q[12];
cx q[33],q[12];
cx q[45],q[12];
cx q[48],q[12];
cx q[11],q[17];
cx q[11],q[23];
cx q[11],q[31];
cx q[11],q[37];
cx q[11],q[39];
cx q[11],q[44];
cx q[11],q[49];
cx q[11],q[0];
cx q[12],q[11];
h q[11];
cx q[11],q[12];
cx q[4],q[2];
cx q[2],q[12];
cx q[12],q[4];
cx q[16],q[10];
cx q[10],q[12];
cx q[12],q[16];
cx q[19],q[18];
cx q[18],q[12];
cx q[12],q[19];
cx q[24],q[20];
cx q[20],q[12];
cx q[12],q[24];
cx q[26],q[25];
cx q[25],q[12];
cx q[12],q[26];
cx q[34],q[29];
cx q[29],q[12];
cx q[12],q[34];
cx q[47],q[42];
cx q[42],q[12];
cx q[12],q[47];
s q[0];
h q[0];
s q[0];
s q[2];
h q[3];
s q[3];
h q[7];
h q[9];
h q[11];
s q[14];
h q[14];
h q[16];
h q[17];
h q[18];
s q[18];
s q[20];
h q[20];
s q[22];
s q[24];
h q[25];
s q[26];
h q[27];
s q[28];
h q[29];
s q[29];
h q[30];
s q[31];
h q[33];
s q[35];
s q[38];
h q[43];
s q[45];
h q[45];
s q[46];
h q[47];
s q[47];
s q[48];
h q[48];
s q[49];
h q[49];
s q[49];
cx q[0],q[7];
cx q[0],q[9];
cx q[0],q[16];
cx q[0],q[23];
cx q[0],q[24];
cx q[0],q[30];
cx q[0],q[34];
cx q[0],q[42];
cx q[0],q[44];
cx q[6],q[0];
cx q[11],q[0];
cx q[14],q[0];
cx q[19],q[0];
cx q[20],q[0];
cx q[21],q[0];
cx q[25],q[0];
cx q[27],q[0];
cx q[32],q[0];
cx q[40],q[0];
cx q[41],q[0];
cx q[45],q[0];
cx q[2],q[8];
cx q[2],q[13];
cx q[2],q[22];
cx q[2],q[26];
cx q[2],q[31];
cx q[2],q[33];
cx q[2],q[35];
cx q[2],q[39];
cx q[2],q[43];
cx q[2],q[46];
cx q[0],q[2];
h q[2];
cx q[2],q[0];
cx q[5],q[3];
cx q[3],q[0];
cx q[0],q[5];
cx q[18],q[17];
cx q[17],q[0];
cx q[0],q[18];
cx q[29],q[28];
cx q[28],q[0];
cx q[0],q[29];
cx q[47],q[38];
cx q[38],q[0];
cx q[0],q[47];
cx q[49],q[48];
cx q[48],q[0];
cx q[0],q[49];
s q[2];
h q[3];
s q[4];
s q[5];
h q[5];
h q[8];
h q[9];
s q[9];
h q[11];
s q[13];
h q[16];
s q[16];
h q[20];
s q[21];
s q[22];
s q[23];
s q[25];
h q[25];
s q[25];
h q[26];
s q[27];
s q[28];
h q[28];
h q[30];
h q[31];
s q[31];
h q[33];
s q[34];
h q[35];
h q[37];
h q[38];
h q[39];
h q[40];
s q[40];
s q[41];
h q[45];
s q[46];
s q[47];
h q[47];
s q[48];
s q[49];
swap q[4],q[2];
cx q[4],q[10];
cx q[4],q[21];
cx q[4],q[23];
cx q[4],q[24];
cx q[4],q[27];
cx q[4],q[37];
cx q[4],q[41];
cx q[4],q[48];
cx q[4],q[49];
cx q[4],q[2];
cx q[3],q[4];
cx q[5],q[4];
cx q[17],q[4];
cx q[19],q[4];
cx q[26],q[4];
cx q[28],q[4];
cx q[35],q[4];
cx q[43],q[4];
cx q[47],q[4];
cx q[6],q[7];
cx q[6],q[11];
cx q[6],q[22];
cx q[6],q[39];
cx q[6],q[44];
cx q[6],q[46];
cx q[4],q[6];
h q[6];
cx q[6],q[4];
cx q[9],q[8];
cx q[8],q[4];
cx q[4],q[9];
cx q[16],q[13];
cx q[13],q[4];
cx q[4],q[16];
cx q[25],q[20];
cx q[20],q[4];
cx q[4],q[25];
cx q[30],q[29];
cx q[29],q[4];
cx q[4],q[30];
cx q[33],q[31];
cx q[31],q[4];
cx q[4],q[33];
cx q[38],q[34];
cx q[34],q[4];
cx q[4],q[38];
cx q[45],q[40];
cx q[40],q[4];
cx q[4],q[45];
s q[2];
h q[3];
h q[5];
s q[6];
h q[6];
s q[6];
h q[7];
s q[8];
h q[9];
s q[13];
h q[13];
s q[14];
h q[14];
s q[16];
h q[16];
s q[17];
s q[18];
h q[18];
s q[24];
h q[24];
s q[24];
s q[25];
h q[25];
h q[26];
s q[27];
h q[27];
s q[28];
h q[28];
s q[29];
s q[30];
h q[32];
s q[35];
h q[37];
s q[38];
h q[38];
h q[39];
h q[40];
s q[40];
h q[42];
s q[42];
h q[43];
s q[45];
s q[46];
s q[47];
s q[49];
swap q[10],q[2];
cx q[10],q[31];
cx q[10],q[32];
cx q[10],q[35];
cx q[10],q[37];
cx q[10],q[41];
cx q[10],q[45];
cx q[10],q[48];
cx q[10],q[49];
cx q[10],q[2];
cx q[3],q[10];
cx q[5],q[10];
cx q[18],q[10];
cx q[22],q[10];
cx q[25],q[10];
cx q[26],q[10];
cx q[28],q[10];
cx q[43],q[10];
cx q[7],q[8];
cx q[7],q[17];
cx q[7],q[29];
cx q[7],q[30];
cx q[7],q[44];
cx q[7],q[46];
cx q[7],q[47];
cx q[10],q[7];
h q[7];
cx q[7],q[10];
cx q[9],q[6];
cx q[6],q[10];
cx q[10],q[9];
cx q[14],q[13];
cx q[13],q[10];
cx q[10],q[14];
cx q[24],q[16];
cx q[16],q[10];
cx q[10],q[24];
cx q[34],q[27];
cx q[27],q[10];
cx q[10],q[34];
cx q[39],q[38];
cx q[38],q[10];
cx q[10],q[39];
cx q[42],q[40];
cx q[40],q[10];
cx q[10],q[42];
h q[2];
h q[5];
s q[6];
h q[6];
s q[7];
h q[8];
s q[9];
h q[9];
h q[11];
s q[14];
h q[16];
h q[17];
h q[19];
h q[20];
s q[20];
s q[23];
h q[23];
s q[24];
h q[26];
s q[27];
h q[27];
s q[27];
h q[28];
s q[34];
h q[34];
h q[35];
s q[35];
h q[37];
s q[37];
h q[40];
s q[41];
s q[42];
h q[43];
h q[44];
h q[45];
s q[46];
h q[46];
s q[47];
h q[47];
h q[48];
s q[49];
h q[49];
swap q[3],q[2];
cx q[3],q[7];
cx q[3],q[24];
cx q[3],q[29];
cx q[3],q[41];
cx q[3],q[42];
cx q[5],q[3];
cx q[6],q[3];
cx q[9],q[3];
cx q[11],q[3];
cx q[13],q[3];
cx q[19],q[3];
cx q[22],q[3];
cx q[26],q[3];
cx q[34],q[3];
cx q[43],q[3];
cx q[46],q[3];
cx q[48],q[3];
cx q[49],q[3];
cx q[8],q[21];
cx q[8],q[25];
cx q[8],q[28];
cx q[8],q[30];
cx q[8],q[32];
cx q[8],q[38];
cx q[8],q[44];
cx q[3],q[8];
h q[8];
cx q[8],q[3];
cx q[16],q[14];
cx q[14],q[3];
cx q[3],q[16];
cx q[20],q[17];
cx q[17],q[3];
cx q[3],q[20];
cx q[27],q[23];
cx q[23],q[3];
cx q[3],q[27];
cx q[35],q[31];
cx q[31],q[3];
cx q[3],q[35];
cx q[40],q[37];
cx q[37],q[3];
cx q[3],q[40];
cx q[47],q[45];
cx q[45],q[3];
cx q[3],q[47];
h q[5];
h q[6];
h q[9];
s q[13];
h q[14];
s q[16];
s q[17];
h q[17];
s q[17];
h q[18];
s q[19];
h q[20];
s q[23];
h q[23];
h q[24];
s q[25];
s q[26];
h q[30];
s q[30];
h q[32];
s q[32];
s q[37];
s q[38];
h q[38];
s q[42];
h q[42];
s q[45];
h q[46];
h q[47];
s q[49];
cx q[2],q[8];
cx q[2],q[11];
cx q[2],q[13];
cx q[2],q[14];
cx q[2],q[21];
cx q[2],q[25];
cx q[2],q[27];
cx q[2],q[45];
cx q[2],q[47];
cx q[5],q[2];
cx q[18],q[2];
cx q[20],q[2];
cx q[24],q[2];
cx q[29],q[2];
cx q[35],q[2];
cx q[38],q[2];
cx q[40],q[2];
cx q[44],q[2];
cx q[9],q[16];
cx q[9],q[19];
cx q[9],q[22];
cx q[9],q[28];
cx q[9],q[39];
cx q[9],q[41];
cx q[9],q[48];
cx q[9],q[49];
cx q[2],q[9];
h q[9];
cx q[9],q[2];
cx q[17],q[6];
cx q[6],q[2];
cx q[2],q[17];
cx q[26],q[23];
cx q[23],q[2];
cx q[2],q[26];
cx q[32],q[30];
cx q[30],q[2];
cx q[2],q[32];
cx q[42],q[37];
cx q[37],q[2];
cx q[2],q[42];
cx q[46],q[43];
cx q[43],q[2];
cx q[2],q[46];
s q[5];
h q[5];
s q[11];
h q[11];
s q[13];
h q[16];
h q[17];
s q[19];
s q[21];
h q[21];
h q[22];
h q[23];
h q[24];
s q[25];
h q[29];
h q[31];
h q[32];
h q[34];
h q[37];
s q[39];
s q[40];
s q[41];
s q[43];
s q[47];
h q[47];
h q[49];
s q[49];
swap q[26],q[5];
cx q[26],q[17];
cx q[26],q[35];
cx q[26],q[37];
cx q[26],q[41];
cx q[26],q[42];
cx q[26],q[46];
cx q[9],q[26];
cx q[11],q[26];
cx q[14],q[26];
cx q[23],q[26];
cx q[24],q[26];
cx q[29],q[26];
cx q[30],q[26];
cx q[34],q[26];
cx q[47],q[26];
cx q[48],q[26];
cx q[5],q[26];
cx q[6],q[8];
cx q[6],q[13];
cx q[6],q[18];
cx q[6],q[19];
cx q[6],q[31];
cx q[6],q[38];
cx q[6],q[40];
cx q[26],q[6];
h q[6];
cx q[6],q[26];
cx q[20],q[16];
cx q[16],q[26];
cx q[26],q[20];
cx q[22],q[21];
cx q[21],q[26];
cx q[26],q[22];
cx q[32],q[25];
cx q[25],q[26];
cx q[26],q[32];
cx q[43],q[39];
cx q[39],q[26];
cx q[26],q[43];
cx q[49],q[44];
cx q[44],q[26];
cx q[26],q[49];
h q[5];
s q[5];
h q[6];
s q[7];
h q[7];
s q[7];
s q[8];
h q[8];
s q[9];
h q[9];
s q[11];
s q[13];
h q[16];
h q[18];
h q[19];
h q[20];
s q[20];
s q[22];
s q[23];
h q[23];
h q[25];
h q[27];
s q[27];
s q[28];
h q[28];
s q[30];
h q[32];
s q[33];
h q[33];
s q[34];
h q[34];
h q[35];
s q[37];
h q[37];
s q[38];
h q[38];
h q[39];
h q[42];
h q[49];
cx q[32],q[18];
cx q[32],q[19];
cx q[32],q[30];
cx q[32],q[35];
cx q[6],q[32];
cx q[9],q[32];
cx q[21],q[32];
cx q[23],q[32];
cx q[28],q[32];
cx q[29],q[32];
cx q[31],q[32];
cx q[33],q[32];
cx q[38],q[32];
cx q[41],q[32];
cx q[46],q[32];
cx q[48],q[32];
cx q[11],q[14];
cx q[11],q[16];
cx q[11],q[17];
cx q[11],q[22];
cx q[11],q[24];
cx q[11],q[25];
cx q[11],q[39];
cx q[11],q[40];
cx q[32],q[11];
h q[11];
cx q[11],q[32];
cx q[7],q[5];
cx q[5],q[32];
cx q[32],q[7];
cx q[13],q[8];
cx q[8],q[32];
cx q[32],q[13];
cx q[27],q[20];
cx q[20],q[32];
cx q[32],q[27];
cx q[37],q[34];
cx q[34],q[32];
cx q[32],q[37];
cx q[49],q[42];
cx q[42],q[32];
cx q[32],q[49];
s q[5];
s q[6];
h q[11];
h q[13];
s q[14];
s q[16];
h q[21];
s q[24];
h q[24];
s q[25];
s q[30];
h q[30];
s q[30];
h q[31];
s q[35];
h q[37];
s q[37];
h q[38];
s q[38];
s q[39];
s q[41];
h q[41];
s q[43];
s q[44];
h q[45];
h q[47];
s q[47];
h q[49];
swap q[22],q[6];
cx q[22],q[5];
cx q[22],q[13];
cx q[22],q[14];
cx q[22],q[27];
cx q[22],q[39];
cx q[22],q[42];
cx q[22],q[43];
cx q[22],q[44];
cx q[22],q[46];
cx q[17],q[22];
cx q[19],q[22];
cx q[21],q[22];
cx q[31],q[22];
cx q[40],q[22];
cx q[41],q[22];
cx q[49],q[22];
cx q[9],q[16];
cx q[9],q[20];
cx q[9],q[25];
cx q[9],q[35];
cx q[9],q[48];
cx q[22],q[9];
h q[9];
cx q[9],q[22];
cx q[24],q[11];
cx q[11],q[22];
cx q[22],q[24];
cx q[34],q[30];
cx q[30],q[22];
cx q[22],q[34];
cx q[38],q[37];
cx q[37],q[22];
cx q[22],q[38];
cx q[47],q[45];
cx q[45],q[22];
cx q[22],q[47];
h q[5];
s q[5];
h q[6];
s q[8];
s q[13];
h q[14];
h q[16];
s q[17];
s q[19];
s q[21];
s q[24];
s q[25];
s q[30];
s q[31];
h q[31];
h q[33];
h q[35];
h q[37];
s q[40];
h q[40];
s q[41];
h q[41];
s q[41];
s q[42];
h q[42];
s q[42];
s q[44];
h q[44];
s q[45];
s q[46];
h q[46];
h q[49];
swap q[27],q[5];
cx q[27],q[13];
cx q[27],q[16];
cx q[27],q[17];
cx q[27],q[33];
cx q[27],q[35];
cx q[27],q[37];
cx q[27],q[43];
cx q[6],q[27];
cx q[14],q[27];
cx q[23],q[27];
cx q[31],q[27];
cx q[38],q[27];
cx q[40],q[27];
cx q[47],q[27];
cx q[7],q[11];
cx q[7],q[24];
cx q[7],q[25];
cx q[7],q[30];
cx q[7],q[49];
cx q[7],q[5];
cx q[27],q[7];
h q[7];
cx q[7],q[27];
cx q[19],q[8];
cx q[8],q[27];
cx q[27],q[19];
cx q[28],q[21];
cx q[21],q[27];
cx q[27],q[28];
cx q[41],q[29];
cx q[29],q[27];
cx q[27],q[41];
cx q[44],q[42];
cx q[42],q[27];
cx q[27],q[44];
cx q[46],q[45];
cx q[45],q[27];
cx q[27],q[46];
s q[5];
h q[5];
s q[5];
s q[11];
h q[17];
h q[19];
s q[19];
h q[20];
s q[21];
h q[21];
s q[23];
h q[24];
s q[24];
h q[28];
s q[29];
h q[30];
h q[31];
h q[33];
h q[34];
h q[35];
h q[37];
h q[38];
s q[39];
h q[41];
h q[43];
h q[44];
s q[47];
swap q[44],q[5];
cx q[44],q[7];
cx q[44],q[8];
cx q[44],q[18];
cx q[44],q[23];
cx q[44],q[34];
cx q[44],q[37];
cx q[44],q[39];
cx q[44],q[40];
cx q[44],q[41];
cx q[44],q[48];
cx q[21],q[44];
cx q[30],q[44];
cx q[31],q[44];
cx q[33],q[44];
cx q[35],q[44];
cx q[43],q[44];
cx q[6],q[13];
cx q[6],q[14];
cx q[6],q[25];
cx q[6],q[28];
cx q[6],q[29];
cx q[6],q[38];
cx q[6],q[45];
cx q[6],q[47];
cx q[6],q[5];
cx q[44],q[6];
h q[6];
cx q[6],q[44];
cx q[11],q[9];
cx q[9],q[44];
cx q[44],q[11];
cx q[19],q[17];
cx q[17],q[44];
cx q[44],q[19];
cx q[24],q[20];
cx q[20],q[44];
cx q[44],q[24];
s q[5];
h q[5];
s q[5];
h q[8];
s q[11];
h q[13];
h q[16];
h q[17];
s q[19];
s q[21];
h q[23];
s q[24];
s q[25];
s q[29];
h q[29];
s q[30];
h q[30];
h q[31];
s q[31];
s q[34];
s q[35];
s q[38];
h q[38];
s q[40];
h q[42];
s q[42];
s q[43];
h q[43];
s q[45];
s q[46];
h q[46];
s q[47];
h q[48];
h q[49];
cx q[43],q[14];
cx q[43],q[21];
cx q[43],q[23];
cx q[43],q[25];
cx q[43],q[45];
cx q[8],q[43];
cx q[29],q[43];
cx q[33],q[43];
cx q[38],q[43];
cx q[46],q[43];
cx q[48],q[43];
cx q[6],q[16];
cx q[6],q[20];
cx q[6],q[24];
cx q[6],q[35];
cx q[6],q[39];
cx q[6],q[40];
cx q[6],q[47];
cx q[6],q[49];
cx q[43],q[6];
h q[6];
cx q[6],q[43];
cx q[11],q[5];
cx q[5],q[43];
cx q[43],q[11];
cx q[17],q[13];
cx q[13],q[43];
cx q[43],q[17];
cx q[30],q[19];
cx q[19],q[43];
cx q[43],q[30];
cx q[34],q[31];
cx q[31],q[43];
cx q[43],q[34];
cx q[42],q[41];
cx q[41],q[43];
cx q[43],q[42];
s q[5];
h q[5];
h q[6];
s q[7];
h q[9];
s q[9];
h q[13];
h q[14];
s q[16];
s q[18];
s q[20];
h q[20];
s q[20];
s q[21];
h q[21];
s q[23];
h q[24];
h q[25];
s q[28];
h q[29];
s q[31];
s q[33];
h q[34];
s q[35];
h q[38];
h q[40];
s q[41];
s q[45];
s q[46];
s q[47];
h q[47];
h q[48];
s q[49];
swap q[35],q[5];
cx q[35],q[16];
cx q[35],q[18];
cx q[35],q[19];
cx q[35],q[23];
cx q[35],q[29];
cx q[35],q[42];
cx q[35],q[48];
cx q[8],q[35];
cx q[13],q[35];
cx q[14],q[35];
cx q[21],q[35];
cx q[37],q[35];
cx q[39],q[35];
cx q[47],q[35];
cx q[7],q[11];
cx q[7],q[25];
cx q[7],q[28];
cx q[7],q[31];
cx q[7],q[33];
cx q[7],q[38];
cx q[7],q[40];
cx q[7],q[41];
cx q[7],q[45];
cx q[7],q[46];
cx q[7],q[5];
cx q[35],q[7];
h q[7];
cx q[7],q[35];
cx q[9],q[6];
cx q[6],q[35];
cx q[35],q[9];
cx q[24],q[20];
cx q[20],q[35];
cx q[35],q[24];
cx q[49],q[34];
cx q[34],q[35];
cx q[35],q[49];
s q[5];
h q[5];
s q[5];
h q[6];
s q[7];
s q[8];
s q[9];
h q[9];
h q[11];
h q[13];
s q[13];
h q[17];
s q[18];
h q[18];
s q[19];
h q[20];
s q[20];
s q[21];
s q[23];
h q[24];
h q[28];
s q[29];
h q[29];
h q[30];
s q[30];
h q[33];
h q[34];
h q[37];
h q[38];
s q[40];
h q[40];
h q[41];
s q[42];
h q[46];
h q[49];
swap q[47],q[5];
cx q[47],q[8];
cx q[47],q[17];
cx q[47],q[19];
cx q[47],q[28];
cx q[47],q[39];
cx q[47],q[46];
cx q[47],q[49];
cx q[16],q[47];
cx q[18],q[47];
cx q[25],q[47];
cx q[29],q[47];
cx q[48],q[47];
cx q[6],q[7];
cx q[6],q[11];
cx q[6],q[21];
cx q[6],q[23];
cx q[6],q[24];
cx q[6],q[33];
cx q[6],q[34];
cx q[6],q[37];
cx q[6],q[41];
cx q[6],q[42];
cx q[47],q[6];
h q[6];
cx q[6],q[47];
cx q[13],q[9];
cx q[9],q[47];
cx q[47],q[13];
cx q[30],q[20];
cx q[20],q[47];
cx q[47],q[30];
cx q[40],q[38];
cx q[38],q[47];
cx q[47],q[40];
s q[5];
h q[5];
s q[5];
s q[6];
h q[7];
s q[7];
s q[11];
h q[11];
s q[13];
h q[16];
s q[19];
h q[23];
s q[24];
s q[31];
h q[31];
s q[31];
h q[34];
h q[37];
s q[37];
s q[38];
h q[40];
h q[41];
h q[45];
h q[48];
cx q[23],q[28];
cx q[23],q[41];
cx q[23],q[45];
cx q[23],q[46];
cx q[23],q[48];
cx q[11],q[23];
cx q[16],q[23];
cx q[40],q[23];
cx q[6],q[13];
cx q[6],q[18];
cx q[6],q[20];
cx q[6],q[39];
cx q[6],q[49];
cx q[23],q[6];
h q[6];
cx q[6],q[23];
cx q[7],q[5];
cx q[5],q[23];
cx q[23],q[7];
cx q[17],q[14];
cx q[14],q[23];
cx q[23],q[17];
cx q[24],q[19];
cx q[19],q[23];
cx q[23],q[24];
cx q[33],q[31];
cx q[31],q[23];
cx q[23],q[33];
cx q[37],q[34];
cx q[34],q[23];
cx q[23],q[37];
cx q[42],q[38];
cx q[38],q[23];
cx q[23],q[42];
h q[5];
h q[6];
h q[8];
s q[11];
s q[14];
h q[14];
s q[16];
h q[16];
h q[18];
s q[19];
h q[21];
h q[25];
s q[29];
s q[30];
s q[31];
s q[41];
s q[45];
s q[48];
s q[49];
cx q[16],q[8];
cx q[16],q[11];
cx q[16],q[18];
cx q[16],q[29];
cx q[16],q[30];
cx q[16],q[49];
cx q[14],q[16];
cx q[24],q[16];
cx q[25],q[16];
cx q[42],q[16];
cx q[17],q[21];
cx q[17],q[37];
cx q[17],q[38];
cx q[17],q[41];
cx q[17],q[48];
cx q[16],q[17];
h q[17];
cx q[17],q[16];
cx q[6],q[5];
cx q[5],q[16];
cx q[16],q[6];
cx q[28],q[19];
cx q[19],q[16];
cx q[16],q[28];
cx q[34],q[31];
cx q[31],q[16];
cx q[16],q[34];
cx q[46],q[45];
cx q[45],q[16];
cx q[16],q[46];
s q[5];
h q[5];
h q[7];
s q[8];
s q[9];
h q[11];
s q[13];
h q[13];
s q[18];
s q[19];
h q[19];
h q[20];
h q[28];
s q[29];
h q[30];
h q[31];
h q[34];
s q[37];
h q[37];
s q[37];
s q[41];
h q[42];
h q[46];
s q[48];
h q[49];
swap q[19],q[5];
cx q[19],q[7];
cx q[19],q[9];
cx q[19],q[11];
cx q[19],q[20];
cx q[19],q[29];
cx q[19],q[42];
cx q[17],q[19];
cx q[28],q[19];
cx q[5],q[19];
cx q[18],q[31];
cx q[18],q[34];
cx q[18],q[38];
cx q[18],q[39];
cx q[18],q[41];
cx q[18],q[46];
cx q[18],q[48];
cx q[19],q[18];
h q[18];
cx q[18],q[19];
cx q[13],q[8];
cx q[8],q[19];
cx q[19],q[13];
cx q[30],q[21];
cx q[21],q[19];
cx q[19],q[30];
cx q[40],q[37];
cx q[37],q[19];
cx q[19],q[40];
cx q[49],q[45];
cx q[45],q[19];
cx q[19],q[49];
s q[5];
h q[5];
s q[5];
s q[6];
h q[7];
s q[8];
h q[8];
h q[9];
h q[11];
h q[13];
s q[14];
h q[18];
s q[25];
h q[25];
s q[25];
s q[31];
s q[33];
s q[38];
s q[39];
h q[41];
h q[42];
s q[46];
h q[46];
s q[46];
s q[48];
h q[48];
s q[48];
s q[49];
h q[49];
swap q[13],q[5];
cx q[13],q[31];
cx q[13],q[37];
cx q[13],q[42];
cx q[7],q[13];
cx q[8],q[13];
cx q[30],q[13];
cx q[45],q[13];
cx q[49],q[13];
cx q[6],q[9];
cx q[6],q[11];
cx q[6],q[14];
cx q[6],q[17];
cx q[6],q[18];
cx q[6],q[29];
cx q[6],q[39];
cx q[6],q[41];
cx q[6],q[5];
cx q[13],q[6];
h q[6];
cx q[6],q[13];
cx q[21],q[20];
cx q[20],q[13];
cx q[13],q[21];
cx q[33],q[25];
cx q[25],q[13];
cx q[13],q[33];
cx q[38],q[34];
cx q[34],q[13];
cx q[13],q[38];
cx q[48],q[46];
cx q[46],q[13];
cx q[13],q[48];
h q[5];
s q[5];
s q[6];
h q[6];
s q[7];
h q[14];
s q[14];
h q[17];
s q[17];
h q[18];
s q[21];
h q[21];
h q[24];
h q[25];
s q[28];
h q[29];
s q[30];
s q[31];
s q[33];
h q[37];
h q[38];
h q[42];
s q[42];
h q[48];
swap q[31],q[5];
cx q[31],q[7];
cx q[31],q[9];
cx q[31],q[33];
cx q[31],q[40];
cx q[31],q[49];
cx q[6],q[31];
cx q[8],q[31];
cx q[21],q[31];
cx q[24],q[31];
cx q[18],q[28];
cx q[18],q[34];
cx q[18],q[41];
cx q[18],q[48];
cx q[18],q[5];
cx q[31],q[18];
h q[18];
cx q[18],q[31];
cx q[17],q[14];
cx q[14],q[31];
cx q[31],q[17];
cx q[29],q[25];
cx q[25],q[31];
cx q[31],q[29];
cx q[37],q[30];
cx q[30],q[31];
cx q[31],q[37];
cx q[42],q[38];
cx q[38],q[31];
cx q[31],q[42];
s q[5];
h q[5];
h q[6];
h q[8];
h q[11];
s q[14];
s q[18];
h q[18];
s q[18];
s q[24];
h q[24];
s q[24];
s q[30];
s q[33];
s q[37];
h q[37];
h q[38];
h q[39];
h q[42];
h q[45];
h q[48];
h q[49];
swap q[25],q[8];
cx q[25],q[9];
cx q[25],q[14];
cx q[5],q[25];
cx q[6],q[25];
cx q[17],q[20];
cx q[17],q[29];
cx q[17],q[30];
cx q[17],q[33];
cx q[17],q[39];
cx q[17],q[41];
cx q[17],q[42];
cx q[17],q[46];
cx q[25],q[17];
h q[17];
cx q[17],q[25];
cx q[18],q[11];
cx q[11],q[25];
cx q[25],q[18];
cx q[37],q[24];
cx q[24],q[25];
cx q[25],q[37];
cx q[45],q[38];
cx q[38],q[25];
cx q[25],q[45];
cx q[49],q[48];
cx q[48],q[25];
cx q[25],q[49];
s q[5];
h q[6];
h q[7];
h q[8];
h q[9];
s q[11];
h q[11];
s q[17];
h q[17];
s q[18];
s q[24];
s q[29];
s q[30];
s q[33];
h q[33];
s q[37];
h q[37];
h q[38];
s q[40];
h q[40];
h q[41];
s q[41];
s q[42];
h q[42];
h q[45];
s q[46];
s q[48];
h q[48];
s q[48];
swap q[9],q[5];
cx q[9],q[8];
cx q[9],q[18];
cx q[9],q[24];
cx q[9],q[29];
cx q[9],q[5];
cx q[11],q[9];
cx q[17],q[9];
cx q[20],q[9];
cx q[33],q[9];
cx q[37],q[9];
cx q[42],q[9];
cx q[6],q[14];
cx q[6],q[38];
cx q[6],q[39];
cx q[6],q[45];
cx q[6],q[46];
cx q[9],q[6];
h q[6];
cx q[6],q[9];
cx q[30],q[7];
cx q[7],q[9];
cx q[9],q[30];
cx q[40],q[34];
cx q[34],q[9];
cx q[9],q[40];
cx q[48],q[41];
cx q[41],q[9];
cx q[9],q[48];
s q[5];
h q[5];
s q[5];
h q[7];
s q[11];
h q[17];
s q[17];
s q[18];
h q[18];
h q[20];
s q[21];
h q[21];
h q[28];
s q[29];
h q[29];
h q[30];
s q[30];
h q[33];
h q[34];
s q[40];
h q[40];
s q[40];
s q[41];
h q[42];
h q[49];
s q[49];
cx q[11],q[33];
cx q[6],q[11];
cx q[18],q[11];
cx q[20],q[11];
cx q[21],q[11];
cx q[37],q[11];
cx q[42],q[11];
cx q[7],q[14];
cx q[7],q[28];
cx q[7],q[45];
cx q[11],q[7];
h q[7];
cx q[7],q[11];
cx q[8],q[5];
cx q[5],q[11];
cx q[11],q[8];
cx q[29],q[17];
cx q[17],q[11];
cx q[11],q[29];
cx q[34],q[30];
cx q[30],q[11];
cx q[11],q[34];
cx q[40],q[38];
cx q[38],q[11];
cx q[11],q[40];
cx q[49],q[41];
cx q[41],q[11];
cx q[11],q[49];
s q[5];
h q[5];
s q[5];
h q[7];
s q[8];
h q[18];
s q[24];
h q[24];
h q[28];
s q[28];
s q[29];
h q[29];
h q[30];
h q[34];
s q[37];
h q[37];
h q[38];
h q[39];
h q[41];
s q[41];
s q[42];
h q[42];
s q[49];
swap q[48],q[5];
cx q[48],q[7];
cx q[48],q[8];
cx q[48],q[17];
cx q[48],q[34];
cx q[48],q[46];
cx q[48],q[5];
cx q[14],q[48];
cx q[33],q[48];
cx q[37],q[48];
cx q[39],q[48];
cx q[40],q[48];
cx q[18],q[20];
cx q[18],q[30];
cx q[18],q[38];
cx q[48],q[18];
h q[18];
cx q[18],q[48];
cx q[28],q[24];
cx q[24],q[48];
cx q[48],q[28];
cx q[41],q[29];
cx q[29],q[48];
cx q[48],q[41];
cx q[49],q[42];
cx q[42],q[48];
cx q[48],q[49];
s q[5];
h q[5];
s q[5];
s q[7];
h q[7];
s q[8];
h q[8];
s q[8];
h q[14];
s q[24];
s q[30];
h q[37];
h q[38];
s q[38];
h q[39];
s q[40];
h q[40];
h q[45];
s q[46];
s q[49];
cx q[30],q[17];
cx q[30],q[24];
cx q[30],q[29];
cx q[30],q[41];
cx q[30],q[45];
cx q[30],q[49];
cx q[6],q[30];
cx q[7],q[30];
cx q[34],q[30];
cx q[39],q[30];
cx q[40],q[30];
cx q[18],q[20];
cx q[18],q[28];
cx q[18],q[37];
cx q[18],q[46];
cx q[30],q[18];
h q[18];
cx q[18],q[30];
cx q[8],q[5];
cx q[5],q[30];
cx q[30],q[8];
cx q[38],q[14];
cx q[14],q[30];
cx q[30],q[38];
s q[5];
s q[7];
h q[14];
s q[18];
h q[18];
s q[21];
h q[21];
s q[29];
h q[33];
h q[34];
s q[38];
h q[38];
s q[39];
h q[40];
h q[41];
s q[42];
h q[45];
s q[46];
h q[46];
swap q[38],q[5];
cx q[38],q[29];
cx q[38],q[33];
cx q[38],q[39];
cx q[38],q[49];
cx q[18],q[38];
cx q[37],q[38];
cx q[45],q[38];
cx q[46],q[38];
cx q[5],q[38];
cx q[7],q[8];
cx q[7],q[14];
cx q[7],q[24];
cx q[7],q[34];
cx q[7],q[40];
cx q[7],q[42];
cx q[38],q[7];
h q[7];
cx q[7],q[38];
cx q[21],q[6];
cx q[6],q[38];
cx q[38],q[21];
cx q[41],q[28];
cx q[28],q[38];
cx q[38],q[41];
s q[6];
h q[6];
s q[7];
s q[8];
h q[8];
h q[14];
s q[17];
h q[17];
s q[18];
h q[18];
s q[20];
h q[20];
h q[21];
s q[21];
s q[24];
s q[28];
h q[28];
h q[29];
h q[33];
s q[33];
s q[37];
s q[40];
h q[40];
s q[42];
h q[42];
h q[45];
s q[46];
cx q[45],q[14];
cx q[45],q[37];
cx q[6],q[45];
cx q[17],q[45];
cx q[18],q[45];
cx q[29],q[45];
cx q[40],q[45];
cx q[42],q[45];
cx q[7],q[46];
cx q[45],q[7];
h q[7];
cx q[7],q[45];
cx q[8],q[5];
cx q[5],q[45];
cx q[45],q[8];
cx q[21],q[20];
cx q[20],q[45];
cx q[45],q[21];
cx q[28],q[24];
cx q[24],q[45];
cx q[45],q[28];
cx q[34],q[33];
cx q[33],q[45];
cx q[45],q[34];
h q[5];
s q[5];
h q[6];
s q[7];
s q[18];
h q[18];
s q[20];
h q[33];
h q[34];
s q[37];
s q[39];
h q[41];
s q[41];
h q[42];
h q[46];
s q[49];
swap q[17],q[5];
cx q[17],q[7];
cx q[17],q[20];
cx q[17],q[29];
cx q[17],q[33];
cx q[17],q[49];
cx q[6],q[17];
cx q[8],q[17];
cx q[18],q[17];
cx q[21],q[17];
cx q[46],q[17];
cx q[5],q[17];
cx q[14],q[34];
cx q[14],q[37];
cx q[14],q[40];
cx q[17],q[14];
h q[14];
cx q[14],q[17];
cx q[39],q[28];
cx q[28],q[17];
cx q[17],q[39];
cx q[42],q[41];
cx q[41],q[17];
cx q[17],q[42];
h q[5];
h q[6];
h q[7];
s q[8];
h q[8];
s q[18];
h q[18];
s q[18];
h q[21];
s q[24];
h q[33];
h q[37];
s q[37];
s q[39];
s q[40];
h q[40];
h q[41];
s q[46];
h q[46];
s q[49];
cx q[46],q[7];
cx q[46],q[21];
cx q[46],q[33];
cx q[46],q[49];
cx q[6],q[46];
cx q[8],q[46];
cx q[14],q[46];
cx q[40],q[46];
cx q[24],q[39];
cx q[24],q[41];
cx q[24],q[42];
cx q[46],q[24];
h q[24];
cx q[24],q[46];
cx q[18],q[5];
cx q[5],q[46];
cx q[46],q[18];
cx q[37],q[20];
cx q[20],q[46];
cx q[46],q[37];
s q[5];
h q[5];
h q[8];
h q[18];
s q[20];
s q[21];
h q[21];
s q[21];
h q[28];
s q[29];
h q[29];
s q[33];
h q[34];
s q[37];
h q[37];
s q[41];
h q[41];
h q[49];
swap q[14],q[21];
cx q[14],q[20];
cx q[14],q[24];
cx q[14],q[28];
cx q[14],q[33];
cx q[5],q[14];
cx q[8],q[14];
cx q[34],q[14];
cx q[40],q[14];
cx q[49],q[14];
cx q[14],q[18];
h q[18];
cx q[18],q[14];
cx q[37],q[29];
cx q[29],q[14];
cx q[14],q[37];
cx q[42],q[41];
cx q[41],q[14];
cx q[14],q[42];
s q[5];
h q[5];
s q[5];
h q[7];
s q[7];
s q[20];
s q[21];
h q[21];
s q[24];
h q[28];
s q[34];
h q[37];
h q[39];
h q[40];
h q[42];
s q[49];
swap q[18],q[5];
cx q[18],q[20];
cx q[18],q[24];
cx q[18],q[37];
cx q[18],q[40];
cx q[18],q[42];
cx q[18],q[5];
cx q[6],q[18];
cx q[8],q[18];
cx q[21],q[18];
cx q[39],q[18];
cx q[41],q[18];
cx q[34],q[49];
cx q[18],q[34];
h q[34];
cx q[34],q[18];
cx q[28],q[7];
cx q[7],q[18];
cx q[18],q[28];
s q[5];
h q[7];
s q[21];
h q[24];
s q[28];
s q[34];
h q[39];
h q[40];
h q[41];
s q[42];
swap q[29],q[7];
cx q[29],q[34];
cx q[29],q[37];
cx q[39],q[29];
cx q[40],q[29];
cx q[49],q[29];
cx q[5],q[21];
cx q[5],q[28];
cx q[5],q[41];
cx q[5],q[42];
cx q[29],q[5];
h q[5];
cx q[5],q[29];
cx q[24],q[8];
cx q[8],q[29];
cx q[29],q[24];
s q[5];
h q[5];
h q[6];
s q[7];
s q[20];
s q[21];
h q[21];
s q[21];
h q[24];
s q[28];
h q[39];
s q[41];
h q[42];
swap q[6],q[5];
cx q[6],q[24];
cx q[6],q[28];
cx q[6],q[41];
cx q[6],q[49];
cx q[39],q[6];
cx q[40],q[6];
cx q[42],q[6];
cx q[5],q[6];
cx q[7],q[8];
cx q[7],q[20];
cx q[7],q[34];
cx q[6],q[7];
h q[7];
cx q[7],q[6];
cx q[33],q[21];
cx q[21],q[6];
cx q[6],q[33];
s q[5];
s q[7];
h q[7];
h q[21];
h q[24];
s q[24];
s q[28];
h q[33];
s q[40];
h q[40];
h q[42];
h q[49];
s q[49];
swap q[8],q[5];
cx q[8],q[28];
cx q[8],q[33];
cx q[8],q[5];
cx q[7],q[8];
cx q[21],q[8];
cx q[41],q[8];
cx q[8],q[34];
h q[34];
cx q[34],q[8];
cx q[40],q[24];
cx q[24],q[8];
cx q[8],q[40];
cx q[49],q[42];
cx q[42],q[8];
cx q[8],q[49];
s q[5];
h q[5];
s q[5];
h q[7];
s q[7];
s q[20];
h q[21];
s q[21];
s q[28];
s q[37];
s q[40];
s q[41];
s q[49];
cx q[7],q[33];
cx q[7],q[40];
cx q[20],q[28];
cx q[20],q[34];
cx q[20],q[37];
cx q[20],q[39];
cx q[7],q[20];
h q[20];
cx q[20],q[7];
cx q[21],q[5];
cx q[5],q[7];
cx q[7],q[21];
cx q[49],q[41];
cx q[41],q[7];
cx q[7],q[49];
s q[5];
h q[21];
s q[28];
h q[33];
h q[34];
h q[37];
h q[39];
h q[40];
h q[41];
h q[49];
swap q[37],q[5];
cx q[37],q[49];
cx q[21],q[37];
cx q[33],q[37];
cx q[39],q[37];
cx q[40],q[37];
cx q[5],q[37];
cx q[37],q[20];
h q[20];
cx q[20],q[37];
cx q[28],q[24];
cx q[24],q[37];
cx q[37],q[28];
cx q[41],q[34];
cx q[34],q[37];
cx q[37],q[41];
h q[20];
s q[20];
s q[21];
h q[28];
h q[34];
s q[34];
h q[40];
s q[41];
h q[41];
s q[41];
h q[49];
cx q[41],q[21];
cx q[41],q[40];
cx q[41],q[49];
cx q[28],q[41];
cx q[34],q[20];
cx q[20],q[41];
cx q[41],q[34];
s q[5];
h q[5];
s q[5];
h q[20];
s q[20];
h q[21];
s q[21];
h q[24];
s q[39];
s q[40];
h q[42];
h q[49];
cx q[20],q[24];
cx q[20],q[40];
cx q[49],q[20];
cx q[20],q[28];
h q[28];
cx q[28],q[20];
cx q[21],q[5];
cx q[5],q[20];
cx q[20],q[21];
cx q[42],q[39];
cx q[39],q[20];
cx q[20],q[42];
s q[5];
h q[5];
h q[28];
h q[33];
h q[39];
s q[39];
s q[40];
s q[42];
h q[42];
swap q[21],q[5];
cx q[28],q[21];
cx q[34],q[21];
cx q[42],q[21];
cx q[40],q[49];
cx q[21],q[40];
h q[40];
cx q[40],q[21];
cx q[39],q[33];
cx q[33],q[21];
cx q[21],q[39];
s q[5];
h q[5];
s q[5];
h q[24];
s q[28];
h q[28];
s q[34];
h q[34];
h q[39];
h q[40];
h q[42];
h q[49];
swap q[34],q[5];
cx q[34],q[24];
cx q[34],q[39];
cx q[34],q[40];
cx q[34],q[42];
cx q[28],q[34];
cx q[33],q[34];
cx q[5],q[34];
cx q[34],q[49];
h q[49];
cx q[49],q[34];
h q[24];
s q[33];
h q[39];
s q[39];
swap q[28],q[5];
cx q[42],q[28];
cx q[33],q[49];
cx q[28],q[33];
h q[33];
cx q[33],q[28];
cx q[39],q[24];
cx q[24],q[28];
cx q[28],q[39];
s q[5];
h q[5];
s q[33];
s q[39];
h q[39];
s q[42];
s q[49];
swap q[40],q[5];
cx q[40],q[42];
cx q[40],q[49];
cx q[39],q[40];
cx q[33],q[5];
cx q[40],q[33];
h q[33];
cx q[33],q[40];
h q[24];
s q[33];
s q[42];
h q[42];
cx q[42],q[33];
cx q[33],q[49];
h q[49];
cx q[49],q[33];
cx q[24],q[5];
cx q[5],q[33];
cx q[33],q[24];
h q[5];
s q[5];
s q[24];
h q[24];
s q[42];
h q[49];
cx q[5],q[39];
cx q[5],q[49];
h q[49];
cx q[49],q[5];
cx q[42],q[24];
cx q[24],q[5];
cx q[5],q[42];
s q[24];
s q[39];
s q[49];
swap q[42],q[24];
cx q[42],q[49];
cx q[39],q[24];
cx q[42],q[39];
h q[39];
cx q[39],q[42];
h q[24];
s q[24];
s q[39];
h q[39];
h q[49];
swap q[49],q[24];
cx q[39],q[49];
cx q[24],q[49];
s q[24];
h q[24];
h q[39];
y q[0];
y q[1];
z q[2];
x q[3];
z q[4];
y q[5];
y q[6];
z q[7];
z q[10];
x q[11];
x q[13];
y q[18];
z q[19];
y q[20];
x q[21];
y q[22];
z q[23];
y q[24];
z q[25];
z q[26];
z q[27];
y q[28];
y q[29];
y q[30];
z q[36];
y q[38];
z q[39];
x q[41];
x q[42];
x q[43];
y q[44];
z q[46];
z q[48];
z q[49];
