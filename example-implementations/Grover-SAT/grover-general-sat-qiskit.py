from qiskit.algorithms import Grover, AmplificationProblem
from qiskit.circuit.library.phase_oracle import PhaseOracle


def get_circuit(**kwargs):
    oracle_string = kwargs["formula"]   # input is logical expression, like '(A | B) & (A | ~B) & (~A | B)'

    print(oracle_string)
    oracle = PhaseOracle(oracle_string)
    problem = AmplificationProblem(oracle, is_good_state=oracle.evaluate_bitstring)
    grover = Grover()
    grover_circuit = grover.construct_circuit(problem=problem, measurement=True)
    return grover_circuit
