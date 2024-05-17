import requests
from qiskit import QuantumCircuit
import json


def get_circuit(adj_matrix, betas, gammas):
    data = json.dumps({"adj_matrix": adj_matrix, "betas": betas, "gammas": gammas, })
    headers = {"Content-Type": "application/json"}
    response = requests.post('http://127.0.0.1:5073/algorithms/qaoa/maxcut', data=data, headers=headers)
    response_dict = json.loads(response.text)

    if response_dict['circuit'] is not None:
        circuit = QuantumCircuit.from_qasm_str(response_dict['circuit'])
        return circuit

    else:
        return None


def post_processing(adj_matrix, counts):
    data = json.dumps({"adj_matrix": adj_matrix, "counts": counts, "objFun": "Expectation", "visualization": "True"})
    headers = {"Content-Type": "application/json"}
    response = requests.post('http://127.0.0.1:5072/objective/max-cut', data=data, headers=headers)
    return json.dumps(response.text)