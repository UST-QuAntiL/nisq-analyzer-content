from qiskit.aqua.algorithms import Grover
from qiskit.aqua.components.oracles import TruthTableOracle


def get_circuit(**kwargs):
    oracle_string = kwargs["oracle"]   # input is binary String of a truth table, like '1000': A & B = 0 => f(x*) = 1

    oracle = TruthTableOracle(oracle_string)
    grover = Grover(oracle)
    grover_circuit = grover.construct_circuit(measurement=True)
    return grover_circuit
