OPENQASM 2.0;
include "qelib1.inc";
gate Q q0,q1,q2,q3,q4,q5,q6 { x q5; h q5; x q2; x q0; x q1; ccx q0,q1,q2; x q0; x q1; x q3; x q0; ccx q0,q1,q3; x q0; x q4; x q1; ccx q0,q1,q4; x q1; mcx_vchain q2,q3,q4,q5,q6; x q2; x q0; x q1; ccx q0,q1,q2; x q0; x q1; x q3; x q0; ccx q0,q1,q3; x q0; x q4; x q1; ccx q0,q1,q4; x q1; h q5; x q5; h q1; h q0; x q0; x q1; h q1; cx q0,q1; h q1; x q0; x q1; h q0; h q1; }
qreg q[7];
creg c2[2];
h q[0];
h q[1];
Q q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> c2[0];
measure q[1] -> c2[1];
