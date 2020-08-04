from qiskit.aqua.algorithms import Grover
from qiskit.aqua.components.oracles import LogicalExpressionOracle


def get_circuit(**kwargs):
    oracle_string = kwargs["oracle"]   # input is logical expression, like '(A | B) & (A | ~B) & (~A | B)'

    print(oracle_string)
    oracle = LogicalExpressionOracle(oracle_string)
    grover = Grover(oracle)
    grover_circuit = grover.construct_circuit(measurement=True)
    return grover_circuit
