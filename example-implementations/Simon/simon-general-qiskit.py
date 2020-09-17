from qiskit.aqua.algorithms import Simon
from qiskit.aqua.components.oracles import TruthTableOracle


def get_circuit(**kwargs):
    oracle_string = kwargs["oracle"]   # input is binary String of a truth table, like '1000': A & B = 0 => f(x*) = 1

    oracle = TruthTableOracle(oracle_string)
    simon = Simon(oracle)
    simon_circuit = simon.construct_circuit(measurement=True)
    return simon_circuit
