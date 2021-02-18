--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: sdk; Type: TABLE DATA; Schema: public; Owner: nisq
--

INSERT INTO public.sdk VALUES ('93bb1be1-4d13-4c2b-9895-86e8bbb74abd', 'Qiskit');


--
-- Data for Name: implementation; Type: TABLE DATA; Schema: public; Owner: nisq
--

INSERT INTO public.implementation VALUES ('783c18da-8f69-4935-b22a-af8a58132bb9', NULL, 'https://raw.githubusercontent.com/UST-QuAntiL/nisq-analyzer-content/master/example-implementations/Shor/shor-fix-15-qiskit.py', 'b5df6c13-e619-496c-ada0-80fc3486f733', 'shor-fix-15-qiskit', 'processable(N, shor-fix-15-qiskit) :- N is 15.', NULL, '93bb1be1-4d13-4c2b-9895-86e8bbb74abd');
INSERT INTO public.implementation VALUES ('b85da828-2c89-4a01-84b5-b7ae89e2c33d', NULL, 'https://raw.githubusercontent.com/UST-QuAntiL/nisq-analyzer-content/master/example-implementations/Shor/shor-general-qiskit.py', 'b5df6c13-e619-496c-ada0-80fc3486f733', 'shor-general-qiskit', 'processable(N, shor-general-qiskit) :- N > 2, 1 is mod(N, 2).', NULL, '93bb1be1-4d13-4c2b-9895-86e8bbb74abd');
INSERT INTO public.implementation VALUES ('e7378003-7f86-4a97-bd48-97192031b243', NULL, 'https://raw.githubusercontent.com/UST-QuAntiL/nisq-analyzer-content/master/example-implementations/Grover-Truthtable/grover-general-truthtable-qiskit.py', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f', 'grover-general-truthtable-qiskit', 'processable(Oracle, grover-general-truthtable-qiskit) :- Oracle =~ ''^[01]+$'', atom_length(Oracle, X), X is X /\ (-X).', NULL, '93bb1be1-4d13-4c2b-9895-86e8bbb74abd');
INSERT INTO public.implementation VALUES ('71082d8b-a1b0-4c50-b224-65a529c62533', NULL, 'https://raw.githubusercontent.com/UST-QuAntiL/nisq-analyzer-content/master/example-implementations/Grover-Truthtable/grover-fix-truthtable-qiskit.py', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f', 'grover-fix-truthtable-qiskit', 'processable(Oracle, grover-fix-truthtable-qiskit) :- Oracle = ''0010000000000000''.', NULL, '93bb1be1-4d13-4c2b-9895-86e8bbb74abd');
INSERT INTO public.implementation VALUES ('40b99726-0d9b-4a2d-a9af-74817f447fc7', NULL, 'https://raw.githubusercontent.com/UST-QuAntiL/nisq-analyzer-content/master/example-implementations/Grover-SAT/grover-fix-sat-qiskit.py', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae', 'grover-fix-sat-qiskit', 'processable(Formula, grover-fix-sat-qiskit) :- Formula = ''(A | B) & (A | ~B) & (~A | B)''.', NULL, '93bb1be1-4d13-4c2b-9895-86e8bbb74abd');
INSERT INTO public.implementation VALUES ('00198ee0-b1aa-4ed1-8ab2-8533a315fed3', NULL, 'https://raw.githubusercontent.com/UST-QuAntiL/nisq-analyzer-content/master/example-implementations/Grover-SAT/grover-general-sat-qiskit.py', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae', 'grover-general-sat-qiskit', 'processable(Formula, grover-general-sat-qiskit) :- Formula =~ ''^[0-9A-Za-z|&()~^ ]+$''.', NULL, '93bb1be1-4d13-4c2b-9895-86e8bbb74abd');
INSERT INTO public.implementation VALUES ('803cfb36-f189-4e51-bf1e-dc3c50eb7ace', NULL, 'https://raw.githubusercontent.com/UST-QuAntiL/nisq-analyzer-content/master/example-implementations/Simon/simon-general-qiskit.py', '871f7eea-4722-4728-8cd9-1e61fe2dd285', 'simon-general-qiskit', 'processable(S, simon-general-qiskit) :- S =~ ''^[01]+$'', atom_length(S, X), X is X /\ (-X).', NULL, '93bb1be1-4d13-4c2b-9895-86e8bbb74abd');


--
-- Data for Name: qpu; Type: TABLE DATA; Schema: public; Owner: nisq
--

INSERT INTO public.qpu VALUES ('ab44dc01-b7c6-49d9-9a1f-d929fafdee73', 1696, 'ibmq_16_melbourne', 15, 54502.29);
INSERT INTO public.qpu VALUES ('8b8fcecf-9fa3-4a5b-8017-334f194f186b', 569, 'ibmq_5_yorktown', 5, 555046.4);


--
-- Data for Name: analysis_result; Type: TABLE DATA; Schema: public; Owner: nisq
--



--
-- Data for Name: analysis_result_input_parameters; Type: TABLE DATA; Schema: public; Owner: nisq
--



--
-- Data for Name: execution_result; Type: TABLE DATA; Schema: public; Owner: nisq
--



--
-- Data for Name: execution_result_input_parameters; Type: TABLE DATA; Schema: public; Owner: nisq
--



--
-- Data for Name: implementation_execution_results; Type: TABLE DATA; Schema: public; Owner: nisq
--



--
-- Data for Name: parameter; Type: TABLE DATA; Schema: public; Owner: nisq
--

INSERT INTO public.parameter VALUES ('a82aca11-83b2-4540-9d5b-3471a18fbc85', 'Integer to be factored', 'N', 'N = 15', 0);
INSERT INTO public.parameter VALUES ('63349804-1d57-4c52-b05f-8ad8d4f96081', 'Integer to be factored', 'N', 'N > 2', 0);
INSERT INTO public.parameter VALUES ('69a417dd-4e3b-4429-8f4a-ede8b37458e5', 'Truth table oracle for grover', 'Oracle', 'Oracle has to be a a binary string of function f in a truth table', 4);
INSERT INTO public.parameter VALUES ('6cb55858-e3b4-4d8a-abca-1f35b78bfb2c', 'Truth table oracle for grover', 'Oracle', 'Oracle = ''0010000000000000''', 4);
INSERT INTO public.parameter VALUES ('b9c2dcc2-8f1b-4a60-a05c-95dd5c3dd5bf', 'Formula for grover', 'Formula', 'Formula = (A | B) & (A | ~B) & (~A | B)', 4);
INSERT INTO public.parameter VALUES ('3cbb9519-fcde-4ad7-8992-f8946078c509', 'Boolean formula for grover', 'Formula', 'Formula has to be a Boolean formula', 4);
INSERT INTO public.parameter VALUES ('ec8e8638-bfe7-4e3e-90e1-018735f22cd8', 'Secret string defining the oracle', 'S', 'S in {0,1}, not empty, length of S has to be a power of two', 4);


--
-- Data for Name: implementation_input_parameters; Type: TABLE DATA; Schema: public; Owner: nisq
--

INSERT INTO public.implementation_input_parameters VALUES ('783c18da-8f69-4935-b22a-af8a58132bb9', 'a82aca11-83b2-4540-9d5b-3471a18fbc85');
INSERT INTO public.implementation_input_parameters VALUES ('b85da828-2c89-4a01-84b5-b7ae89e2c33d', '63349804-1d57-4c52-b05f-8ad8d4f96081');
INSERT INTO public.implementation_input_parameters VALUES ('e7378003-7f86-4a97-bd48-97192031b243', '69a417dd-4e3b-4429-8f4a-ede8b37458e5');
INSERT INTO public.implementation_input_parameters VALUES ('71082d8b-a1b0-4c50-b224-65a529c62533', '6cb55858-e3b4-4d8a-abca-1f35b78bfb2c');
INSERT INTO public.implementation_input_parameters VALUES ('40b99726-0d9b-4a2d-a9af-74817f447fc7', 'b9c2dcc2-8f1b-4a60-a05c-95dd5c3dd5bf');
INSERT INTO public.implementation_input_parameters VALUES ('00198ee0-b1aa-4ed1-8ab2-8533a315fed3', '3cbb9519-fcde-4ad7-8992-f8946078c509');
INSERT INTO public.implementation_input_parameters VALUES ('803cfb36-f189-4e51-bf1e-dc3c50eb7ace', 'ec8e8638-bfe7-4e3e-90e1-018735f22cd8');


--
-- Data for Name: implementation_output_parameters; Type: TABLE DATA; Schema: public; Owner: nisq
--



--
-- Data for Name: qpu_sdk; Type: TABLE DATA; Schema: public; Owner: nisq
--

INSERT INTO public.qpu_sdk VALUES ('ab44dc01-b7c6-49d9-9a1f-d929fafdee73', '93bb1be1-4d13-4c2b-9895-86e8bbb74abd');
INSERT INTO public.qpu_sdk VALUES ('8b8fcecf-9fa3-4a5b-8017-334f194f186b', '93bb1be1-4d13-4c2b-9895-86e8bbb74abd');


--
-- PostgreSQL database dump complete
--

