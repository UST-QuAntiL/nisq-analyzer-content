from pyquil import Program, get_qc
from pyquil.gates import *
import numpy as np

# https://quantum-circuit.com/app_details/about/66bpe6Jf5mgQMahgd
# oracle = '(A | B) & (A | ~B) & (~A | B)'

p = Program()
ro = p.declare('ro', 'BIT', 2)
p += H(0)
p += X(0)
p += H(1)
p += X(1)
p += X(2)
p += CCNOT(0, 1, 2)
p += X(0)
p += X(1)
p += X(1)
p += X(3)
p += CCNOT(0, 1, 3)
p += X(0)
p += X(1)
p += X(4)
p += CCNOT(1, 0, 4)
p += X(0)
p += X(0)
p += CCNOT(3, 2, 5)
p += CCNOT(5, 4, 6)
p += X(7)
p += H(7)
p += CNOT(6, 7)
p += CCNOT(4, 5, 6)
p += CCNOT(2, 3, 5)
p += X(2)
p += X(3)
p += X(4)
p += CCNOT(0, 1, 4)
p += X(0)
p += X(1)
p += CCNOT(0, 1, 3)
p += X(0)
p += X(1)
p += X(1)
p += CCNOT(0, 1, 2)
p += X(0)
p += H(0)
p += X(0)
p += X(1)
p += H(1)
p += X(1)
p += CZ(0, 1)
p += X(0)
p += H(0)
p += X(1)
p += H(1)
p += MEASURE(0, ro[0])
p += MEASURE(1, ro[1])