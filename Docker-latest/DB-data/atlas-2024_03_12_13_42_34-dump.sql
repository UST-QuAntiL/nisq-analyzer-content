--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Debian 12.14-1.pgdg110+1)
-- Dumped by pg_dump version 15.1

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
-- Name: planqk; Type: DATABASE; Schema: -; Owner: planqk
--

CREATE DATABASE planqk WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE planqk OWNER TO planqk;

\connect planqk

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: algorithm; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm (
    acronym character varying(255),
    algo_parameter text,
    assumptions character varying(255),
    computation_model integer,
    input_format text,
    intent text,
    name character varying(255),
    output_format text,
    problem text,
    solution text,
    id uuid NOT NULL
);


ALTER TABLE public.algorithm OWNER TO planqk;

--
-- Name: algorithm_application_area; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_application_area (
    algorithm_id uuid NOT NULL,
    application_area_id uuid NOT NULL
);


ALTER TABLE public.algorithm_application_area OWNER TO planqk;

--
-- Name: algorithm_learning_method; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_learning_method (
    algorithm_id uuid NOT NULL,
    learning_method_id uuid NOT NULL
);


ALTER TABLE public.algorithm_learning_method OWNER TO planqk;

--
-- Name: algorithm_problem_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_problem_type (
    algorithm_id uuid NOT NULL,
    problem_type_id uuid NOT NULL
);


ALTER TABLE public.algorithm_problem_type OWNER TO planqk;

--
-- Name: algorithm_publication; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_publication (
    algorithm_id uuid NOT NULL,
    publication_id uuid NOT NULL
);


ALTER TABLE public.algorithm_publication OWNER TO planqk;

--
-- Name: algorithm_relation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_relation (
    id uuid NOT NULL,
    description character varying(255),
    algorithm_relation_type_id uuid,
    source_algorithm uuid,
    target_algorithm uuid
);


ALTER TABLE public.algorithm_relation OWNER TO planqk;

--
-- Name: algorithm_relation_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_relation_type (
    id uuid NOT NULL,
    name character varying(255),
    inverse_type_name character varying(255)
);


ALTER TABLE public.algorithm_relation_type OWNER TO planqk;

--
-- Name: algorithm_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    acronym character varying(255),
    algo_parameter text,
    assumptions character varying(255),
    computation_model integer,
    input_format text,
    intent text,
    name character varying(255),
    output_format text,
    problem text,
    solution text
);


ALTER TABLE public.algorithm_revisions OWNER TO planqk;

--
-- Name: algorithm_tag; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.algorithm_tag (
    algorithm_id uuid NOT NULL,
    tag_value character varying(255) NOT NULL
);


ALTER TABLE public.algorithm_tag OWNER TO planqk;

--
-- Name: application_area; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.application_area (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.application_area OWNER TO planqk;

--
-- Name: classic_algorithm; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_algorithm (
    id uuid NOT NULL
);


ALTER TABLE public.classic_algorithm OWNER TO planqk;

--
-- Name: classic_algorithm_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_algorithm_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL
);


ALTER TABLE public.classic_algorithm_revisions OWNER TO planqk;

--
-- Name: classic_implementation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_implementation (
    id uuid NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.classic_implementation OWNER TO planqk;

--
-- Name: classic_implementation_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.classic_implementation_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.classic_implementation_revisions OWNER TO planqk;

--
-- Name: cloud_service; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.cloud_service (
    id uuid NOT NULL,
    cost_model character varying(255),
    description character varying(255),
    name character varying(255),
    provider character varying(255),
    url character varying(255)
);


ALTER TABLE public.cloud_service OWNER TO planqk;

--
-- Name: cloud_services_compute_resources; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.cloud_services_compute_resources (
    cloud_service_id uuid NOT NULL,
    compute_resource_id uuid NOT NULL
);


ALTER TABLE public.cloud_services_compute_resources OWNER TO planqk;

--
-- Name: compute_resource; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.compute_resource (
    dtype character varying(31) NOT NULL,
    id uuid NOT NULL,
    name character varying(255),
    quantum_computation_model integer,
    technology character varying(255),
    vendor character varying(255),
    qprov_origin boolean
);


ALTER TABLE public.compute_resource OWNER TO planqk;

--
-- Name: compute_resource_property; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.compute_resource_property (
    id uuid NOT NULL,
    value character varying(255),
    algorithm_id uuid,
    compute_resource_id uuid,
    compute_resource_property_type_id uuid,
    implementation_id uuid
);


ALTER TABLE public.compute_resource_property OWNER TO planqk;

--
-- Name: compute_resource_property_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.compute_resource_property_type (
    id uuid NOT NULL,
    datatype integer,
    description character varying(255),
    name character varying(255)
);


ALTER TABLE public.compute_resource_property_type OWNER TO planqk;

--
-- Name: discussion_comment; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.discussion_comment (
    id uuid NOT NULL,
    date timestamp without time zone,
    text character varying(255),
    discussion_topic_id uuid,
    reply_to_id uuid
);


ALTER TABLE public.discussion_comment OWNER TO planqk;

--
-- Name: discussion_topic; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.discussion_topic (
    date timestamp without time zone,
    description character varying(255),
    status character varying(255),
    title character varying(255),
    id uuid NOT NULL,
    knowledge_artifact_id uuid NOT NULL
);


ALTER TABLE public.discussion_topic OWNER TO planqk;

--
-- Name: file; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.file (
    fileurl character varying(255),
    mime_type character varying(255),
    name character varying(255),
    id uuid NOT NULL
);


ALTER TABLE public.file OWNER TO planqk;

--
-- Name: file_data; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.file_data (
    id uuid NOT NULL,
    data bytea,
    file_id uuid
);


ALTER TABLE public.file_data OWNER TO planqk;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: planqk
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO planqk;

--
-- Name: image; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.image (
    image bytea,
    id uuid NOT NULL,
    mime_type character varying(255),
    sketch_id uuid
);


ALTER TABLE public.image OWNER TO planqk;

--
-- Name: implementation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation (
    assumptions character varying(255),
    contributors character varying(255),
    dependencies character varying(255),
    description character varying(255),
    input_format text,
    license character varying(255),
    link character varying(255),
    name character varying(255),
    technology character varying(255),
    output_format text,
    parameter character varying(255),
    problem_statement text,
    version character varying(255),
    id uuid NOT NULL,
    implemented_algorithm_id uuid
);


ALTER TABLE public.implementation OWNER TO planqk;

--
-- Name: implementation_package; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_package (
    dtype character varying(31) NOT NULL,
    id uuid NOT NULL,
    description character varying(255),
    name character varying(255),
    package_type integer,
    implementation_id uuid
);


ALTER TABLE public.implementation_package OWNER TO planqk;

--
-- Name: implementation_package_file; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_package_file (
    file_id uuid,
    implementation_package_id uuid NOT NULL
);


ALTER TABLE public.implementation_package_file OWNER TO planqk;

--
-- Name: implementation_publication; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_publication (
    implementation_id uuid NOT NULL,
    publication_id uuid NOT NULL
);


ALTER TABLE public.implementation_publication OWNER TO planqk;

--
-- Name: implementation_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    assumptions character varying(255),
    contributors character varying(255),
    dependencies character varying(255),
    description text,
    input_format text,
    license character varying(255),
    name character varying(255),
    output_format text,
    parameter character varying(255),
    problem_statement text,
    technology character varying(255),
    version character varying(255),
    implemented_algorithm_id uuid
);


ALTER TABLE public.implementation_revisions OWNER TO planqk;

--
-- Name: implementation_software_platforms; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_software_platforms (
    implementation_id uuid NOT NULL,
    software_platform_id uuid NOT NULL
);


ALTER TABLE public.implementation_software_platforms OWNER TO planqk;

--
-- Name: implementation_tag; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.implementation_tag (
    implementation_id uuid NOT NULL,
    tag_value character varying(255) NOT NULL
);


ALTER TABLE public.implementation_tag OWNER TO planqk;

--
-- Name: knowledge_artifact; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.knowledge_artifact (
    id uuid NOT NULL,
    creation_date timestamp without time zone,
    last_modified_at timestamp without time zone
);


ALTER TABLE public.knowledge_artifact OWNER TO planqk;

--
-- Name: knowledge_artifact_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.knowledge_artifact_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    revtype smallint,
    creation_date timestamp without time zone,
    last_modified_at timestamp without time zone
);


ALTER TABLE public.knowledge_artifact_revisions OWNER TO planqk;

--
-- Name: learning_method; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.learning_method (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.learning_method OWNER TO planqk;

--
-- Name: pattern_relation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.pattern_relation (
    id uuid NOT NULL,
    description character varying(255),
    pattern bytea,
    algorithm_id uuid,
    pattern_relation_type_id uuid
);


ALTER TABLE public.pattern_relation OWNER TO planqk;

--
-- Name: pattern_relation_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.pattern_relation_type (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.pattern_relation_type OWNER TO planqk;

--
-- Name: pattern_uris; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.pattern_uris (
    implementation_id uuid NOT NULL,
    pattern_uri character varying(255) NOT NULL
);


ALTER TABLE public.pattern_uris OWNER TO planqk;

--
-- Name: pattern_uris_aud; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.pattern_uris_aud (
    rev integer NOT NULL,
    implementation_id uuid NOT NULL,
    pattern_uri character varying(255) NOT NULL,
    revtype smallint
);


ALTER TABLE public.pattern_uris_aud OWNER TO planqk;

--
-- Name: problem_type; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.problem_type (
    id uuid NOT NULL,
    name character varying(255),
    parent_problem_type uuid
);


ALTER TABLE public.problem_type OWNER TO planqk;

--
-- Name: publication; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.publication (
    doi character varying(255),
    title character varying(255),
    url character varying(255),
    id uuid NOT NULL
);


ALTER TABLE public.publication OWNER TO planqk;

--
-- Name: publication_authors; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.publication_authors (
    publication_id uuid NOT NULL,
    authors character varying(255)
);


ALTER TABLE public.publication_authors OWNER TO planqk;

--
-- Name: quantum_algorithm; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.quantum_algorithm (
    nisq_ready boolean NOT NULL,
    quantum_computation_model integer,
    speed_up character varying(255),
    id uuid NOT NULL
);


ALTER TABLE public.quantum_algorithm OWNER TO planqk;

--
-- Name: quantum_algorithm_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.quantum_algorithm_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    nisq_ready boolean,
    quantum_computation_model integer,
    speed_up character varying(255)
);


ALTER TABLE public.quantum_algorithm_revisions OWNER TO planqk;

--
-- Name: quantum_implementation; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.quantum_implementation (
    id uuid NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.quantum_implementation OWNER TO planqk;

--
-- Name: quantum_implementation_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.quantum_implementation_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.quantum_implementation_revisions OWNER TO planqk;

--
-- Name: revinfo; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.revinfo (
    rev integer NOT NULL,
    revtstmp bigint
);


ALTER TABLE public.revinfo OWNER TO planqk;

--
-- Name: sketch; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.sketch (
    description text,
    imageurl text,
    id uuid NOT NULL,
    algorithm_id uuid
);


ALTER TABLE public.sketch OWNER TO planqk;

--
-- Name: software_platform; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.software_platform (
    id uuid NOT NULL,
    licence character varying(255),
    link character varying(255),
    name character varying(255),
    version character varying(255)
);


ALTER TABLE public.software_platform OWNER TO planqk;

--
-- Name: software_platform_cloud_services; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.software_platform_cloud_services (
    software_platform_id uuid NOT NULL,
    cloud_service_id uuid NOT NULL
);


ALTER TABLE public.software_platform_cloud_services OWNER TO planqk;

--
-- Name: software_platforms_compute_resources; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.software_platforms_compute_resources (
    software_platform_id uuid NOT NULL,
    compute_resource_id uuid NOT NULL
);


ALTER TABLE public.software_platforms_compute_resources OWNER TO planqk;

--
-- Name: tag; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.tag (
    value character varying(255) NOT NULL,
    category character varying(255)
);


ALTER TABLE public.tag OWNER TO planqk;

--
-- Name: tosca_application; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.tosca_application (
    id uuid NOT NULL,
    created_at timestamp without time zone,
    created_by character varying(255),
    importid uuid,
    modified_at timestamp without time zone,
    modified_by character varying(255),
    name character varying(255),
    toscaid character varying(255),
    tosca_name character varying(255),
    tosca_namespace character varying(255),
    winery_location character varying(255)
);


ALTER TABLE public.tosca_application OWNER TO planqk;

--
-- Name: tosca_application_revisions; Type: TABLE; Schema: public; Owner: planqk
--

CREATE TABLE public.tosca_application_revisions (
    id uuid NOT NULL,
    rev integer NOT NULL,
    revtype smallint,
    created_at timestamp without time zone,
    created_by character varying(255),
    importid uuid,
    modified_at timestamp without time zone,
    modified_by character varying(255),
    name character varying(255),
    toscaid character varying(255),
    tosca_name character varying(255),
    tosca_namespace character varying(255),
    winery_location character varying(255)
);


ALTER TABLE public.tosca_application_revisions OWNER TO planqk;

--
-- Data for Name: algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, 'N: N > 0, N odd', NULL, 1, 'N: Integer', 'Integer factorization', 'Shor', 'Factors: Integer Array', 'The algorithm of Shor is a ploynomial-time quantum computer algorithm for factorizing integers. It solves the following problem: GIven an integer N, find its prime factors. The American mathematician Peter Shor invented the algorithm in 1994.', NULL, 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Grover-SAT', NULL, NULL, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Grover-Truthtable', NULL, NULL, NULL, '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Simon', NULL, NULL, NULL, '871f7eea-4722-4728-8cd9-1e61fe2dd285');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 2, NULL, NULL, 'Grover SAT', NULL, NULL, NULL, '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'bv-fix-00110-qiskit', NULL, NULL, NULL, 'a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 0, NULL, NULL, 'Randomized-4-Qubit', NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-3-Qubit', NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-10-Qubit', NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-5-Qubit', NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-15-Qubit', NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.algorithm (acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution, id) VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-20-Qubit', NULL, NULL, NULL, '32c3d185-08df-47ec-acb7-03d3ebadffea');


--
-- Data for Name: algorithm_application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_application_area (algorithm_id, application_area_id) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'ce597b06-c55e-46ce-976c-8de398e049b9');


--
-- Data for Name: algorithm_learning_method; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: algorithm_problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_problem_type (algorithm_id, problem_type_id) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', '76d773b5-4635-4d67-877c-e565b9f08496');


--
-- Data for Name: algorithm_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_publication (algorithm_id, publication_id) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'f05c9136-2f9f-433f-9c35-85009111ee3c');


--
-- Data for Name: algorithm_relation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: algorithm_relation_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 1, NULL, NULL, NULL, 2, NULL, NULL, 'grov-test', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 3, NULL, NULL, NULL, 2, NULL, NULL, 'Grover', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 5, NULL, NULL, NULL, 2, NULL, NULL, 'Grover SAT', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 7, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-5-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4', 8, NULL, NULL, NULL, 1, NULL, NULL, 'bv-fix-00110-qiskit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf', 32, NULL, NULL, NULL, 0, NULL, NULL, 'Randomized-4-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('95818e95-3573-491d-983a-4fa58552b5cd', 56, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-3-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('2ce20f37-2797-4d78-93d8-0c93d606e51d', 67, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-5-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 69, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-10-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('2ce20f37-2797-4d78-93d8-0c93d606e51d', 70, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-10-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 71, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-5-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('94c3ca45-430b-41ad-8f2c-3e1e04edae82', 93, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-15-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions (id, rev, acronym, algo_parameter, assumptions, computation_model, input_format, intent, name, output_format, problem, solution) VALUES ('32c3d185-08df-47ec-acb7-03d3ebadffea', 102, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-20-Qubit', NULL, NULL, NULL);


--
-- Data for Name: algorithm_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_tag (algorithm_id, tag_value) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'Factorization');


--
-- Data for Name: application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.application_area (id, name) VALUES ('ce597b06-c55e-46ce-976c-8de398e049b9', 'Cryptography');
INSERT INTO public.application_area (id, name) VALUES ('12b0d326-8b6a-4f7c-8717-d9cc5eb4a567', 'Classification');
INSERT INTO public.application_area (id, name) VALUES ('da982d08-30a8-48f7-8db1-204c0b4f1865', 'Machine Learning');


--
-- Data for Name: classic_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.classic_algorithm (id) VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf');


--
-- Data for Name: classic_algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.classic_algorithm_revisions (id, rev) VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf', 32);


--
-- Data for Name: classic_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: classic_implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: cloud_service; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_service (id, cost_model, description, name, provider, url) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', NULL, NULL, 'IBMQ', 'IBM', 'https://quantum-computing.ibm.com/');
INSERT INTO public.cloud_service (id, cost_model, description, name, provider, url) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', NULL, NULL, 'Rigetti', 'Rigetti', 'https://www.rigetti.com/');


--
-- Data for Name: cloud_services_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'faea0025-9096-4582-b2f9-93096358dbc2');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '2e683cee-8363-4327-8765-3b5f957acc90');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'c0fc8141-4d19-4654-910b-109882b4b99b');
INSERT INTO public.cloud_services_compute_resources (cloud_service_id, compute_resource_id) VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '82df8861-b7de-464d-9dab-4adabbe78cd2');


--
-- Data for Name: compute_resource; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'faea0025-9096-4582-b2f9-93096358dbc2', 'ibmq_16_melbourne', 0, '', 'IBMQ', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c0fc8141-4d19-4654-910b-109882b4b99b', 'ibmqx2', 0, NULL, 'IBMQ', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2e683cee-8363-4327-8765-3b5f957acc90', 'Rigetti 19Q', 0, 'Superconducting', 'Rigetti', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '82df8861-b7de-464d-9dab-4adabbe78cd2', 'Rigetti 8Q', 0, 'Superconducting', 'Rigetti', NULL);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a9616cd6-d155-4ef5-aa37-7e097e6a2abb', 'ibmq_quito', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9ef63dd1-dd66-49d3-91db-af263943981b', 'ibmq_armonk', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3427e405-fac6-45a6-9674-55bf477d0b66', 'ibmq_santiago', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c986d064-55f4-4d1f-859e-901a21c79373', 'ibmq_qasm_simulator', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '963332dd-ae4d-4584-87e4-194cc5f9406a', 'ibmq_lima', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5ddcac47-3edf-4294-9f95-f2289c079fe3', 'ibmq_belem', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9426d0c1-a5ca-4840-9cef-e871aabfc3fb', 'simulator_stabilizer', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c5bb9149-9e85-4f38-8227-3c0bcf466f02', 'ibmq_bogota', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'da09c2b8-db44-4711-adc0-d3e4200137be', 'simulator_extended_stabilizer', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f78df158-1fb8-4cdc-bc4a-cb443f369c3a', 'simulator_mps', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c2e00d42-325b-4150-87aa-c9cc7ec064d3', 'simulator_statevector', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2a4d6669-fa05-451f-b1b9-5f61aced2d00', 'ibmq_manila', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '351b453f-c2ab-48b8-ac40-6086df45bc8d', 'dm1', NULL, NULL, 'aws', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b2b0beea-7609-4b58-bae0-a155af2a7261', 'SV1', NULL, NULL, 'aws', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9b09570a-e3db-4286-86a8-b54933d4b097', 'Aspen-M-3', NULL, NULL, 'rigetti', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cc2407e6-c23f-48ca-bbcb-a17fcf4a63a0', 'ibmq_kolkata', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3644fdad-1c83-411c-a0bd-56d7444a4dcf', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dd0f7e69-9ffb-43bb-8ef4-c4c773de333c', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bfd54efd-9c98-4e06-8a7c-286b7993d788', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '12d690f8-fbff-49e0-bf72-b93ddd28064a', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '65072a06-49c3-4c25-9e6a-51ced22db7f6', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '856601df-56e6-4583-986a-5f67b100d5c8', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eb1fef74-785d-486d-b92f-52afe95523cf', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '892d91cc-e9cd-4f08-a8bf-119ec451d74e', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6e0afe25-851e-4a3f-943d-2aa60226bc03', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8698bec7-2995-4a3b-b293-d636fb2bcb4e', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dab0f6d6-a19d-4cc8-8d24-57bc93a8c195', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c2191d31-af08-479b-861f-3e50df6a6a9c', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f9973d75-3bcd-4466-a5ea-241abf6a4f6b', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0907dcf6-03ea-4148-b06f-ea92cc5054ad', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '62b8b29c-d284-41be-b6e5-daa1faea9ade', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6270eabf-4a5f-4d2d-9c8b-f934049edfec', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'be858de5-4c8d-473e-bd82-da77aab23594', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5e514a62-0a36-454b-9484-f94e2fb001da', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '69bb4dbd-5061-456f-8d0a-72a6d0ad5121', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2b7ea52c-699b-436d-b3bf-cc444e948538', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4f18e16a-7065-45b3-a0c3-5e2c5504651a', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e8794327-5af7-4840-b055-f4874b961f77', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6781f4e2-7e21-43b6-81af-f14ba02954db', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1ff986fb-6d36-439b-929e-bd8a30dbdab9', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9ce4cfe6-fabd-41e0-9434-42860a32316b', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7833c940-e58a-4d8f-aefa-2c3b575b3698', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd23c580c-85c1-4fd1-a320-a26aa95a0300', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '548eb77a-0879-43ee-98ba-8ac2c26ad12e', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '46f46f8a-205b-499c-aa85-06017796e998', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'efb6a4c4-a965-4b61-814c-215111d5bdff', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3137eb59-09f6-44ff-8702-43a8ed551ba3', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2923d425-99a6-4ee6-833c-6716cad7a63d', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ba1619e2-8415-477b-bc83-0460acc1bd06', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a66ea771-e027-4a26-8a09-c10ae7124fcf', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6e5d7b46-2dfc-47c0-bcc4-c5b7b6b75b19', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f9908f50-a71f-4000-8144-d99c03298bf4', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '39e71bda-ba7c-48bb-9cc6-3e481ec9d694', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e8a96f8d-82b7-4b96-be35-bc0b5cd12732', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '477ea6a0-77d9-44c8-813f-165683230039', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2992cee3-3f91-4523-8e5d-ae7586e74b84', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ae752289-5ae1-4052-b0dc-4dba90c0e8a9', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e6a66d8f-4da5-49b3-9cb6-48ae74a351f3', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b2d64260-b875-4559-9ca4-f28ec7bbed4a', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1cf4ad70-6216-42cb-91ad-958d2a22ad61', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fa8c7b93-3675-4424-b2d3-3bdd5935798e', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7152c99b-bb22-4458-b47d-d6d39ba5ac2c', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '480d2b63-b1e3-4242-9e46-c6b003903b94', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0be694ef-99e1-48cf-b038-469cf2711d16', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9ebdfd76-4ba5-49da-aad9-d9b305d73fcc', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '66a20df8-b16a-402b-8b7b-fe15c491a0f3', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'db13e0ae-b4e0-4826-8ffe-7410790d9c56', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ac9c8526-721c-4829-818e-1c47dc197775', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '626c5080-d1a1-4e20-b14f-30dc7471b584', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2cfd42b1-3736-477a-9612-3df2f8038a99', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0c1733dc-4201-41c8-aeef-0e9ae7676b38', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4b84e80a-c49c-4c2a-83c4-384be3c9c481', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ba343d6f-34ef-4724-87db-12be06832f4c', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eb00066d-330b-4f34-b7df-ab40843a01f4', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '09f0b204-ef51-42c4-a124-63cf1fbc0c2d', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1b9c710c-aecf-4504-94ef-8a2166e1f5bb', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ad4dda38-6cc9-4e5a-9038-a0eda79ab327', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3ba7b3d7-9721-4e56-bf29-787b7facea88', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '018e55a0-d03e-4382-864e-348b0a6be811', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b052cb4e-2224-4cdb-ad13-0bd74ddee6f8', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5fdff535-95fc-4079-9685-1ee4539645ff', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3990981f-39f4-43a5-b43b-3fbdeee75d18', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6f4ff873-8698-454e-bef6-74e9bddc88a8', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd3cb0b4c-bb78-4d2e-bbde-888a27316bdc', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c8ff86ee-6b12-4b7b-9649-20e11a5a91ed', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0acd8c8b-6274-41e8-958b-d646a993e71e', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '571ae23a-1f58-4f4a-bca5-e761ce249d16', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6b089228-6b1a-490f-9175-4450cf5b1ac9', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c9f57c17-940f-43de-b766-a0893f1641b7', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '859aa19f-064b-4dbf-8ff2-6f7b59f995b2', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '40539619-fa9b-4735-81f7-65d33ffd8272', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '461f0f07-39ea-4181-bc76-d7e3c6c66373', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'be26e259-823a-4bd0-b044-33eddc288156', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4609c460-8a56-46e5-b3a9-688f8f1282c1', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd79d8a71-c15e-4395-b38c-af078a09f8b8', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '87d1bc81-3a43-4350-8dc4-f40605c5c741', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a56721a9-46b3-49b1-8f86-922de5a4fa47', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9b960670-a58b-4ed0-ae47-727741bb5eeb', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b1bd56df-841c-42cb-ac96-b990db438d09', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b8c213da-2fca-4845-915c-b2279afbb3f3', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2811a05a-ec00-4d99-9757-62bd1f30a1b5', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c3871fc7-7f0f-481c-8e12-00fa52e75e41', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '81e53b37-1a47-4477-8be3-fa5d09a60a79', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e8a78648-1334-4171-b41e-882d0e73ddfa', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7650023a-9055-4ded-bd3e-addcf11df076', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '281b7143-4334-4e7a-a3f1-f98c74bff51e', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9506949c-67bb-4625-9770-bf8a53f75fe0', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'faa27a61-6484-43f6-8629-c735fc7915c1', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b4fff985-4f88-4281-88bb-b5ab68d9004e', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b59b4c4e-4f73-49f3-bbf1-b4a484838765', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '16a80e57-ba34-475c-86e3-8bf7da9feb44', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd723d1ba-4762-4c9a-8968-e2b2f77c81dd', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2ba7aeba-ada6-42ad-bc16-b285bf34acf5', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6dedd68d-8b10-4e49-a3ae-58a58710c465', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '211cd7e9-ca0c-4895-84dd-41e16677d574', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e82c322b-fb82-4e1f-a0a4-0955b7b346eb', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5f3ecd9-a77f-489b-9765-b1c9d0c7a99c', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9c0c273c-c983-46ed-9c92-e1b2b75d416f', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f66f663b-1542-49bb-8713-d589a789ed2e', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5c8fd780-6d9c-45b1-87db-bf595a5232c3', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4756a6ac-0061-414f-ad93-b91193de37db', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '51847fca-09bf-447c-95e6-5be10c23c249', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6d63d3ed-f308-46ad-bf31-5a25986c4a10', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7189587c-3ce3-4979-be58-8309f77fc3ca', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f16d8a52-252c-4760-8029-eb53fdc745e8', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5629c79-4796-4280-97ad-b685dd2aaf8a', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fd357bd3-e3f2-4376-a952-e42d496ef6c6', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '19860975-0577-4c1a-8374-79b195a1b6d2', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd6d6b418-4559-4d08-9ef5-2c1525498a39', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ea4ca890-15b9-49aa-893f-9af4e8f2d1b5', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '47788739-eec8-4d14-a5e3-563aaa7f8d2f', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e955ee95-6dde-4a00-9226-ddae654857e8', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '26b59f85-20e1-46bb-9d88-13c8c856eda2', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '24e554ff-8204-42e2-b932-0443f85ba44d', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9d39147a-ead2-4d82-86f8-0f01f4255f7a', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f500d07d-ab10-4000-8534-51747656a33e', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9521345e-fbf5-4aa0-b8ae-792edf76a595', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cbc49378-ca29-477d-99e1-1ac8eb902532', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '91930d76-0017-4406-84a8-4c2928a5c723', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '439327f7-ff1b-494a-a2a7-51f5caca04d1', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '88cf4a47-04e5-48de-8185-88eac97d0053', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '063f1696-6ade-482e-afdb-9789bee3635f', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f9ccab64-b81e-4786-92eb-4a5727b2f3bd', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '81bb0894-1c7c-4054-8d42-7f644e08ed13', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4947085d-9555-48ce-95b7-e0e908e0b312', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dc41030f-0ef8-4f8d-ad3b-2107bc05de3d', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '75bbf4cd-ae40-477d-ac55-73b572d55e32', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8239ef0a-0111-4202-b35d-10b149272d6e', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c8b32598-80c5-43a6-9232-6df27aef9a1e', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0c573841-4c25-4c70-9935-0b9bc8ca8cd5', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '086be339-2487-4121-b715-1399b673de01', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '88c063a1-6a2b-4eb5-948e-fdd2a4ec6628', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '84012a50-12d8-489c-9334-f5dcb670cac6', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8cd01902-5b71-4b4b-bc2f-80b5e2d68858', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7a3b60dd-3cd4-4226-89ca-4fc4d6b94d2d', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a8d7ff67-bb27-45cd-a7d8-9fa767149df2', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a8d51d9c-2fb3-4f0c-b58d-a5b3c029695e', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd50a6f78-012c-4d0f-9b8e-f5dbf8ced50a', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '605c979e-0ea7-4ce9-96b1-6800f5dcc8b5', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6fade5b0-0d71-458a-88ef-23a2a5bbb6bc', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '81e998f5-379e-49f3-84bc-a90edd6d95f3', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd651688f-eb17-4cb8-a798-901711d77316', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '134c9a43-fa04-4d0b-a0b2-51961304d22f', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5398b884-0d79-4548-b174-4ae92ffa93b4', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'baff6b99-9a28-441d-acc5-39b6f2f9fd8c', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'df929288-80df-4a9c-aeb1-214b8a023939', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '560e7eb1-f409-47f6-a530-c75aa0fb245b', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '740c755e-9663-4c71-9fce-ef195327cd79', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd8cdbca7-9eb0-45ef-a6f9-5e3045a0f947', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c4275a8f-0840-4d12-b5f2-a9efee5d692b', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9f659c11-4cfe-4b8e-87b9-d0f9827d5c87', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '16ab23e3-e044-4197-8652-4dafb0d79d76', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bd936661-2035-4d54-8958-2b52e0f66f1c', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6af4e1a1-0c92-433c-93b1-4be497a38c7e', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9740825d-ace7-4a1c-8e0b-32ffd967b1e4', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e3e8f685-fa13-4eb0-a6be-2bcbd567d898', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b40e3f1d-0f82-4df3-ab22-8030e7d847b0', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd0f57403-6aae-4ef5-8200-aa4caf6938f6', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7dab607d-42c9-4373-a8f9-5b2b76c68000', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '288d6f63-7f41-409c-b63a-eb5560eee2a4', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a32cfb93-5ff3-4674-81e7-15db9bdc47e0', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '04a9a0fb-7cd3-47c9-9161-c241cd24e9f3', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bfc368da-b001-4ac8-9af0-11b892697719', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '73f8adb0-c7fd-481e-9576-2bae3973253c', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e88df60d-a6e6-4549-9d51-b1dd05e519dd', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cf77b5d3-5c32-4684-b986-fb03a63d8bed', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6421e4c0-8735-4805-b92d-a3e9862a81e6', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8e5e0949-de01-4737-abf4-079763f5c335', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b3135438-0509-45fb-938d-2708cae5581b', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9a184cee-ac90-4d3a-aa2c-cc487b90577c', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bc1cf19a-c98e-43f5-b296-6f43884750db', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4f408762-eaee-4332-874f-f7300f39d83f', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7e87a07b-c3b3-4731-9065-97369419f5a2', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c829240a-fc12-41eb-8b4f-368502dad85e', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c92079f7-f64c-4ea0-bd6c-056dbde2540c', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '49631c05-d9ae-4c78-8cd8-2f2a52e2c2d4', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7d5f0029-9c37-4ee9-aa56-99fa5f658cad', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b38e692a-0e92-41fa-bcec-fd230ad5f60b', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '187a3d73-c4f2-4e14-ab1d-abf0c4252e74', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '442a9b0c-ead7-4cbb-aae9-d56224a6991d', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ebd194c8-c627-40a7-83b5-9e43796acc37', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5b5b8da-e02f-40fe-85f0-cb8c0fca0e16', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '12871bba-2556-4258-9604-e3c1428f91f6', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6790ce04-2065-42e5-a472-75a923499526', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e68bf1fb-6d37-462e-b62c-d351bde60aac', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'abb6c8cc-e357-4330-b0c7-2148dfe2a796', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '36bd99bd-b512-4a2c-a816-1fe738c8a96f', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '32de0b66-9944-4b11-8dc0-4f67a12a017b', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3ab8e526-0602-4d13-a229-e8ba25f94147', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '24dd4b17-09fb-4dde-b4dd-b3e5ea0c69e4', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '008fa998-d59c-4ed5-8d78-e712e3589717', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a6231044-9df6-4ded-9a3d-6b7c90e86b4d', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fbc77cff-f715-4924-9f33-63796bce5460', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '47be0ab3-b648-4926-8ac7-8071c7f5c8e7', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0554539a-ba51-4f3d-bb62-cd0e4b34a24f', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '33dadb91-3d3d-4e8c-b251-777fcb01acd0', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c4796d36-5f95-4ede-bf59-b682ca930d94', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b9209890-3e0f-4b13-802d-1fa6a6537f9f', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '588672e1-dbb7-48d2-bffc-664d1ff40fc3', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c4aef42e-7184-4f8c-9f8f-198835ca33a4', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7157703e-a659-4207-83bc-2dba1c658367', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'afae22fa-9a83-4f90-b282-0d1805ea647c', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8afa57a7-ad4b-4184-8ed8-c24f2fe163be', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6f0fc97e-6ea8-442e-886f-1b1536dcb077', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4767a897-b546-483f-8403-e2addd0ad4ca', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0b3b34b6-f5fb-495b-b7be-17a3a5f84d4a', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '307652b0-f9af-4549-a0c2-d40ef09f8cfd', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'be635dda-7752-4761-b49c-b8cc4246db97', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fd8e4c97-3bb8-489f-badd-8aa30c8dad94', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b8fef775-b4a0-4779-ba10-af88eefa879b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6645db55-b291-487b-8c68-69aa6f0bd145', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eba7de8e-0ed7-426d-b597-9e2d70cdbb7c', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f94ef5e9-3b4c-4ab9-8136-4be374b39b41', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6c209f22-0853-41cf-841a-c239d77f8b83', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fdc774aa-9a9e-48a3-823b-4bdd36c91dc0', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '36676982-2757-4418-a223-0a3dc472b35c', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8df4a865-5ac3-4ce7-ac67-b14a2e6b8d05', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '40bb89a8-1133-49df-a1d3-622927c26074', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '911f21f1-be86-42e4-8a42-58f4120d2316', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3874fa1e-254f-4147-8839-f43827ebcdbb', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '61fee919-77e1-474b-84ee-34e0675cffdd', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '72c7fec7-b51e-4406-9e85-867846e0d8e5', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'abe4cbc5-00df-4577-9699-1ce15ed75c99', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '40ec1424-8462-4157-9973-8ab440023e8f', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a11c53b1-60cb-42bc-a6ac-7e0427223125', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f911e846-2a90-4cde-bfb8-df3ba6fe920c', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4769a1a1-89f8-4feb-9efc-b55a99a36476', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c0496042-5e91-4e90-a06e-0d020b6d3e73', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f4bf7c2d-2dd0-4ee9-9522-cda918050cf0', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd2065327-1a15-4d8e-954f-a4ad37c35d66', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f7636e57-32fe-4695-bc56-68fe706df4ff', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f571ffb6-b727-4215-b825-ef7f980411bf', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd15bcb4e-6ae2-42dc-b1dd-7623c0cb163f', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '659f6c49-7f28-4715-97cf-962cca39235d', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4107c7bb-888c-4272-8c43-c914dd2d376f', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '785c2694-29ad-4400-bde8-ee2cb5ca4150', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd2a11849-1d1e-4d55-9a9c-fe141effdb40', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8f9e193d-a7c2-48f5-8257-c5390936d80c', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '05c0fc08-b851-45c0-881b-9d960a5384b8', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '368cd9b7-2872-43de-bfb5-651d5ba0ab9b', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5f8fd5f7-38de-4770-9271-094a53c94a8b', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a4add8e8-06dc-4921-8576-138824edf79d', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '11643569-6962-4a0a-9288-cac27b571270', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2bbb59f4-6a42-4b53-a032-a6c207413411', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '89b3efc4-cf0c-4983-8bef-23d810e6579b', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5a886906-11ee-4793-9d5b-894d42430207', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3fc09fb7-5ac4-484b-aa95-b285b9223d40', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9821dd8b-ff85-4607-9884-8df99d290d1d', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd81e26ba-045b-4ae7-aa31-3d77f2289365', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0b1dd508-3b70-45dd-8d55-33af3132568c', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5768d999-fdae-4733-ac77-e3ab50de4868', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '13c78750-3bd1-4f81-b286-b3aeec5f8d3b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '26289acf-371e-4d58-b366-be1a9ee4e667', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f2751f83-8483-4ebf-a957-88b3a21e1312', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2a80b48a-a934-43cb-841f-e7a9a51ad7b6', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6c50d16d-1362-4920-9a91-cd9b0a053f2f', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ee0dc4a4-e0e1-49d0-bf91-b7b3fad1eb4b', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '605b33ed-8d17-43f9-a325-04ce0a8b19a4', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7fd4d94b-6276-42f5-a34d-119fb3b43c8f', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '15248090-9aab-4bfb-98c8-5896e5c64433', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '01f0386c-30f9-4550-8db7-54efe1158318', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd6f543c1-d25a-4b6e-b194-1f3c0144534e', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd5f1d1b6-2653-4efb-b563-ce3dd1d6b0bd', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c7d5c709-3c74-4ca6-a217-dffa3608e052', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b53c2b52-f625-4fc5-8be2-097b6eadc1a2', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '85305e60-92c1-42b2-bdd2-cc0ef3c5ccf3', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bf5cff08-39e0-4146-8fb1-8cb9f644fb40', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5d4525b2-a3c0-4e3b-8e62-a65c05805477', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '46d87230-586c-4433-b559-db225ac9ac86', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3000c5f5-c6d4-4033-99e8-ae8d77237c3a', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a4386aa7-0f5e-4f0c-89f9-1042244bf85f', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fe817e62-47d1-42d9-bea8-1a60fa6a51f5', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '940aa0ab-f662-43c1-9e5a-7df4ff6c9be8', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bf713175-a33b-44e2-a8d5-6fafd26292fb', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3cffa10c-68c1-44ed-a142-8250d3105a0f', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '160cecc8-4734-4a95-8325-cc7b2bab322f', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2642af43-42a3-4c51-b471-a02060a74cc9', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dca51fd1-727e-451d-bb62-1a17d0e5a08d', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8968f710-da57-47d7-8785-197cbf294d7a', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd96f32b6-d4ca-4dfc-b3e7-025b44e9ffc6', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '153e63cc-dec4-4f3f-bbcb-d754a1b23559', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1ce6efe8-2e96-4f53-9766-4adb54d5fbc1', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6923b02f-bf23-4bd5-8a5a-4f725fb90f70', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd8026609-b7be-41fb-8438-f28a9dc05f39', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b7678d5a-1be0-4176-b630-e11d8d80809a', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eaa45bd9-613d-4a7f-93ae-c391696c3345', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd0da17e3-748b-40aa-8fdb-1bc950efbebd', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eec70813-82ce-4367-9c6c-3e9e203fddfa', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ab0fe710-1388-42b8-b789-aa8fddf8fd6b', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f0207a17-4202-4bd1-8833-25c1f6d8eff0', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '42854cc1-637a-4add-944d-e5864ad852f0', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2a6ec9f4-52f8-49d0-bf15-4e337ef860bf', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '76fa7095-cd4e-4188-b6db-716a6d60d001', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd88797b0-73b8-4fad-bf6b-c77113ce67d9', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dd74c45b-080c-4461-9051-1b925bd1074e', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dd96e41d-8c83-408f-a91c-554f49ba361a', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '63edc705-17e4-4e38-8bd0-0e0329ce3556', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '93990776-21f6-44fc-8afe-7c3ec0c90c25', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '70f486c7-29fd-425e-9d43-1a2386d7f76b', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dcc0e024-cde0-489b-92b8-ea623b67a835', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '614f95e0-a7a0-4f26-9d77-3183ee3ef669', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a20ddd3b-2802-4eb0-96fa-1aca8690d626', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4652db54-fb4e-4abe-b3e9-729f2834385a', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '29b300f1-70cd-48cf-a06c-9e341d7a04ee', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9798e249-fd57-4cbd-ae3f-baf0ed486821', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '90fd6ece-65a8-4376-93c7-275fc86a6ebc', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '12462ed9-1be9-4c6c-bf74-6a597f4fbb6a', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9019a4f3-095e-416c-81d2-b17ab141e697', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3bdac6ef-3f98-43f0-8037-878a885d6c46', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '11a746ac-bac0-4760-a650-23b953f87159', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eafb22b4-89d2-4187-9466-a7fb222d98c9', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6e874209-759d-4bce-8d64-4114c1a25929', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '171f4d13-a51b-4ac6-be53-36b8b7b2c765', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c110d289-cd11-4b5c-ab31-4a3863400d86', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c3926e8a-faae-47fa-88eb-d19c5de0d7cc', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd2dddfb2-fde6-4e94-86e7-fe7ac54c82d4', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '28c61419-045f-4900-908b-5bb7146c8e9c', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '34b4dbcd-23e3-495d-808b-ef8ac8e9ccaf', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9031f91c-c9a2-47f3-bf88-ed8ab600eff6', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fdc5ad19-47e5-48a8-8a5d-ea7b82702ccb', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b8f990d8-bb98-4ab3-a322-d61c8634e5e7', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ebd96d99-36e8-4f4b-a2fd-e8c1df1fc9d8', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3be0d32a-71e8-4188-8702-6284473d5d91', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1960b9c7-32aa-44be-96c5-987ee0796531', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4286539d-679d-440f-9bf6-70afbf31ac13', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '80d77cd7-c52a-46e7-9c78-6cce3d8cb526', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1c113fe6-f9a3-449e-a38f-f13337a5d9fb', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '06f802af-c295-4778-aff6-87e5d10d11bb', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '78df7703-2f56-40f5-8afb-131fc6f45a2d', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7717caf2-6f39-46d3-885d-1a0966773171', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8505b07a-b973-4e99-9dfe-c4aa8556b158', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '55c28906-776e-49ed-a450-cb0265d9d957', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '16e363e7-c54b-4bf4-a9fc-0e40021bec0d', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '202c86fa-1d3f-45e2-906f-2b687f9e7a7b', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5e8ec46-d43d-4bb1-8c38-dd021f6a7aec', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7fd96b69-f798-4014-b20d-85a094960f53', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3422d690-b2e3-4c38-bd39-bf5f719c3038', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0cc8ac11-6f8e-49a7-9074-297ec4085baf', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ff95868a-febc-41e7-8e0e-d571819cd5ee', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dc53167b-ae66-4df9-a8bd-528a8231990b', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dc82b71e-a8c1-4515-b05e-5c8dba118e7f', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bfd8a2d1-41cb-4e0e-b668-fb7ebc7a672c', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cb2cc49c-9d2e-45c2-abfb-f254c6e3ad0a', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'af2fd152-2f25-4315-950a-56dbb4f87c26', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '21983dec-3280-44c6-8544-b049bbf7aa08', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '92b42139-8ea0-4d2d-bb33-1879b8a328d8', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '09f2114f-9208-434e-8bde-3e858d15f920', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '090a8fc7-0078-41ae-a24c-9440e1b30dfc', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b64b79d4-f82b-4611-b94d-4e394daf4f06', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd3d205b7-be1b-4eff-b94a-2c1f9473d28a', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b17ac076-7b42-438c-be6f-a510d3f67177', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '70f7c4d8-289d-444b-9827-d08a16b9b84f', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fde132ba-2483-44ec-9e30-0b1233fa0de8', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e2b6c78e-7a42-4ea7-adff-cca37eb04b23', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5b7cff0d-2a08-4bc6-8dfc-8ddd7413ebd2', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e96352e1-cee2-49a9-92b8-2367a712eefe', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9654d1bb-b013-429f-b66d-2e39c857a71f', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4d650aba-d270-4b8e-b0e5-79bf35342d68', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '11d68fa3-b164-45e6-8c2d-0c1e5a7a0aed', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a66cb6e1-5b2f-4393-9cc5-003d36a40787', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '83bf044d-bf8d-448b-aa8c-c602bbef87d2', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0d08b1bf-3310-4453-a2f9-9364fca2fdb8', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd6a31259-2467-4edc-a258-91bc96174d68', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '25d8ef5c-ed4a-41b4-a526-026626b9935a', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ec200aa2-7b61-4a46-90db-79f40d459afd', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ab9786fe-cf6c-49cb-93e2-b81b8ece9983', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f01ed7b7-fd50-415a-8297-f7f43db42317', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8c359f20-bc8e-48c7-bc2d-a7da15d7ebd2', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fc21392e-d9e7-4382-839d-0879d99798e1', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b2fc1b95-30ff-4359-a0d8-dd12e99917e4', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bd9a32a3-0e39-48e0-88ed-691fbdbf50f9', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '380dee8f-b63f-4d1f-8197-4a94ab9a1927', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7af6a440-ad24-4b40-b1bb-ef472bc9c245', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7a17b8f7-764c-40a0-a421-3adec42d3d77', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f52a08f4-7a2b-41a7-984e-b5d5d133eb38', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8fc86c90-07ea-497b-b803-ab35e744bc22', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '95857cb1-9f65-40c1-a1d3-f1e9bf62c46f', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f108b56d-3748-403f-8580-376347c9f381', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bffad3cf-9bd0-4ee1-b5f4-abd0a041282b', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0df44bea-eff5-450b-9a7e-6a9e1e443e57', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3cf0225b-8b31-486a-b2cc-226fc404a10a', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b0eee057-9e6e-46f3-9646-c46dc1200b38', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '188c1dce-5e4f-460f-bb4a-5878da5785aa', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd905112e-e005-4946-88e5-47e62e66ea7d', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'edaf79ea-8899-407a-a062-6618e195b133', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2ecc8b57-ba01-4e3f-b252-54f160ae78f3', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b92aa670-9269-4f9e-a898-c078cef32ceb', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7c2355ad-da49-4347-a34b-dc8462516f08', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '052b729b-dead-478f-81a0-0bb6b304e92f', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '39d0f28c-7d81-4097-b199-30bfb199a006', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f6aa59e9-6e83-4314-9507-1c13c2394f26', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2b939f7c-2a3a-41ae-8741-caf438b08d6a', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '41c044cb-5393-43c3-8990-e940c4872e6a', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '80563382-a573-46e0-bfa2-da8ad30b4267', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd6cb745b-3dd2-4459-879f-99b9285c7f8f', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f8d6bac7-2369-454f-8a34-03fef3a2f39c', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8fda4bb1-42c2-416e-a48d-36272eabdb08', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9b45230e-c26c-4888-8a2f-75a57ac36bc8', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd541ad1b-195a-4be5-889a-1eb502d99f07', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '86519a3d-72c9-47d5-89be-8f42ab814320', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '39eae074-13e4-4159-84d5-aa54a58ea181', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7c928a27-0213-42d3-a234-a73a7fff5e42', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9c2dede1-6416-4dfd-b99f-acb6658946cd', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6f6f47f7-b943-42da-a646-82d4bec02b60', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f973843e-61ca-4fa3-9425-4f57ad967e4d', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '32bb7bd3-cb28-4c1a-94eb-c791bbc540ed', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '33ab8c86-5ad5-4f9b-b511-ed7910a0f0f1', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '95c6e989-b34b-4f7f-bce5-f645c1e8d0ca', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cc131b2b-327e-4f31-83a1-a1429af2a5fa', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '64504d61-b955-48d0-8f56-19313e91cef0', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5955b4f3-31db-4092-b843-5a2238ef2045', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5ca24ea9-8e42-4dc5-a001-a1fba19883f1', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '506689e6-44ab-4add-aa40-e917ae31c721', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4acc507c-667a-4d50-bdff-6e4881c7e128', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '615c9d10-9c28-4ebd-bd25-10ffd544bd2f', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fb43ab57-1cfb-44fe-95f7-8955beff4c09', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3b8baf69-41e4-4c5c-8fac-02540adf4d1c', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'aa6474c9-2391-4304-8e82-3d683c5b87cc', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e819f84c-7d9b-404d-8d92-2f56da20d4c1', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3ca761f1-a9ae-409b-bf6e-21d01626fb9d', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5670f61-20dd-4a81-b69d-2f1f6ece06e6', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '29ce29f1-d768-4fe7-8020-90714d1cf727', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e3089743-df90-4bf7-98c2-b8c29725613f', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '583ea959-fdfb-4141-969e-51880bc198e9', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7d956e92-65b5-4da4-b6bc-30f36c1b4a77', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e2e24fea-ca71-48f7-9cd0-e7122d845215', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7d957a19-a7e2-41b3-a984-072b2c6c0961', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3fbf547f-0c5b-4d47-a73f-6fae9ca552ca', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e55fe970-c45f-4041-9558-7762e90c370e', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '87cddfef-5bbd-44e4-8a3e-acb875ee83a9', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fb3014c4-e385-43ed-8c41-e698452db9f9', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9e196eb5-1813-44b7-a2e3-c72bbf45020a', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '79640922-127d-4f82-a363-bbe8d5acfe3e', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd89c2f8e-48ca-4ea9-929c-9930b66c3e6a', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '02722023-f5d5-4c53-ae5a-f305ece16cc1', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ebe4390e-29da-4376-9af9-25d6f4118d8a', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a4a8b6fe-dca6-430d-b54e-b6bf3372a1e5', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '426a28f2-ef4f-40f9-a708-3da2675a9cc4', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0ba676c4-1ed3-4c8f-a06e-c5c14190daee', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1a90a480-2d41-41f3-8ff1-98872ad94b10', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2b24b537-841f-47a0-bb70-a5b49b63b7e0', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '60d13b43-f8fd-447b-a5b5-9a50ee935f36', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dcc55ed0-c04f-4c83-89c0-e72ecbf13ae8', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b7c13b28-9f4f-4906-a10a-80f752abe291', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f4566043-319c-4098-ac99-25786e4b6459', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '63cb3031-1eb7-4dd9-b2b3-037eb5fca93d', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3b51ec98-8cc3-4b21-b484-b3be73c54a52', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '00ff5613-2bc1-4742-8629-57767ba81e74', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ee22faec-682b-4709-aa39-13835a3f9c4a', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7ba78108-e67a-4a16-b93d-4c382519bae8', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '90955873-15bf-4c80-84ba-85a1988dfa3b', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5270f6f4-825c-47ce-9e33-3d3278fb06d0', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd569a7a2-8f91-407f-be20-dd738e2e1be9', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e009981c-7cf4-48d8-8313-52045607326e', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8ee7caaf-479c-45b2-b5be-bf17ae875399', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5fd6ef2e-0497-42b6-99fd-8c664d9ddec5', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8b9a42fa-9707-4648-a70d-8d67b934b323', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8a464eb6-b6ce-4a79-811d-f2904cd7c568', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5af1a740-3d63-4ca8-a393-85f7d1fc9c1b', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '677acdac-f373-4d7d-95d6-94739953e688', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2f42f3b9-55ad-4c73-a2b5-a737301df35e', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e0494135-405f-4125-8606-8119db2c7b74', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f160de60-24b5-4b35-bc7b-369412f88e11', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7838a807-c35b-4354-9616-eafce137d08d', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '11ad5ba1-d4b9-4beb-b6d5-00ba076a02f0', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '50efe24d-6b1a-4fe7-9571-a654fe0411cd', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7c8b31b1-61ae-4c9c-a2e5-f300b0eea87f', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ed90cb6f-62bc-4654-9801-d2672e195f80', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '80dd2520-00e9-496e-86a2-6d89e8dd0e64', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3587cb05-6704-4a5e-8067-c159f2992c90', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3bd1f0ab-1cea-439a-a865-1786c16ba5a9', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '17efc595-a6a2-47fd-a7ba-8d8ce41912c1', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '892e21f0-ae05-449d-971e-f829c94ae559', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5158582c-f13d-49d4-a174-85f1d571d379', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7c410541-5809-4428-b18c-f87b70b5ff3d', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'acd8b5eb-ce2f-4463-ac7b-e25dad3b131d', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4f13cad6-1e9e-46a7-a62a-a8689a987ad3', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2dfde1e4-ba0f-4df2-968e-9d0b8a8cc040', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7109f4b1-e81f-4e23-9d35-4ce92c38c7f3', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd003ff80-ebad-41e9-a573-f008cf7c90cd', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '283816a7-39eb-4c9d-abef-c2a9a9f499e2', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2b29a63f-79bf-4561-b291-96d98fa1c0e9', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'db64bdd8-4bf0-47b4-9e2c-c86fdb15790a', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '65234e3f-8c9c-427d-b7d1-4b0d11ec2b1b', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7b4a08d5-23c8-463c-a2c5-09d087d50de4', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '33cb6fc2-f660-44a3-b0eb-4d2682aac018', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c39074ea-797a-4ec4-887a-394a8970f73f', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'de6016e5-8786-4aa3-99eb-2e78362887f7', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5b34ec0c-8e99-4cba-ace0-250dc1288aa7', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7e90be2c-ed58-4b5d-88d1-fa7c335a95b9', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ddeb1ad7-4091-4245-823e-36ad43a01d42', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bc572894-b8ad-481f-9514-08e724b18038', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bad4ae91-4adb-4623-bf66-fea3b6791dd9', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9382b8aa-941b-4a57-b7cf-65359e86fd45', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5711636c-8bfc-43b9-9c45-75613c1f95db', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '08c84aa8-8fd2-4b29-a801-3bbc658f763a', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3a408a98-7519-4191-b281-1857917497de', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c5bb7295-8735-4abf-a0fc-a94fdf05770b', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '99d37213-bbea-4d95-96d6-fa28c2111fb4', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '59609503-30ab-43b8-97fe-66c943582d56', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1122ab8f-a303-44f8-b9d6-0dfc8b607f5d', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5f668aee-7746-485b-9dbc-6fda2ba03954', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ec9aa47d-cf10-4b66-a996-e8ed2c75b53b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '22e2f982-3385-475c-8c5c-42eb0aded758', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bd90799a-c6fe-4fa4-a9bb-937398e3fc00', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6bd617c6-88b4-4d5d-b090-abad85c33769', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cc46bc4c-5415-4bbd-9ceb-040310016cb1', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5dc1becd-77e9-4a46-81fd-536285f34cc9', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8420526b-ab6f-4061-bace-17893b7f88c7', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '30fdc4f9-3991-4b3d-adf2-2cbea214adae', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd2d2b94e-8b1a-4010-86c6-fa5230108601', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5e04d977-79a4-45ea-bf5f-eb63abd54f4d', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ff19cccf-6a05-4931-982f-d1b352746e21', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fbe7aaf9-5a0f-4384-babf-74d4f3fec0c0', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '69101f41-08b1-4ce2-acb4-d8ec86a6aa84', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '11d097ca-ffd9-4813-a0f4-2355210c215b', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2ccbcabe-e503-4290-b91f-3be3c12f047b', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '34ad0204-b98c-4e12-8e27-2be524cedce9', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '93bc853c-c862-42a0-a69a-21a928e24f7f', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ec6af594-017f-4a9a-ae93-6d749b863f1a', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3cf19140-7b1b-410d-ba77-5b4bbe487f78', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4051714c-84f1-4b61-892b-745f641cdfea', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '19ff335f-e99c-4e81-bf8b-1a860dae1dca', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8e025a25-b813-4957-b115-7272173ed76e', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5a0bd39d-0354-4508-bd08-da417dba21ae', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bff879ff-fa43-4eaa-89f1-c42b9e2c3b02', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3135462a-3842-43c7-b6d8-ca8bf67f84be', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e6fd277a-a95b-4c5c-9754-c76134796635', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8702f63a-ee16-4c5b-aff8-b8796eae8c2c', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4488c18a-b9a1-4d35-b47c-7aca87f80302', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '39000c28-88f8-4611-89fe-779b3b520958', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '92ff808f-49c3-44c9-8f7d-87f64986505d', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2d59e6fe-3d81-4004-9ef8-620c438cf3f7', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fdf0f36b-d31e-482d-aee2-c16ecf792918', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2cffda08-34f3-4cc1-aeb7-d77e2fe4b767', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4e50823a-4426-46e2-8122-b20c7f8c8992', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ba841e1a-5a2b-4951-bbfc-4d788bc781b9', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '131210dd-80bb-4485-9e78-b53f84030978', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '21dad2ae-1d3d-4d25-8da7-dc480b24ac2d', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8696498e-9f76-40c8-a83f-c695c33a03bb', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '908207bb-85a4-433d-bce4-a3b68d5e319c', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9b16e2c2-89e0-4b54-a6d6-07ddf017042e', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a531d35d-a871-4477-815b-450d3f78de1d', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0cdce223-e1fc-4c4f-ab11-e7b969c6beb0', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0335fa1a-b2fb-43b3-b564-9da0564b08f9', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6c7986bb-5eaa-4414-9e2e-831b39e7cef5', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '40c6a68a-f9af-43d8-9cb0-fe04adc396ff', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f095ffd9-52d3-4258-9141-d0cb74b5b67d', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd3be61a1-6a11-4218-a1f0-a4ee6cceb4d0', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8deeb901-32ab-4f4f-9614-7b3b83660f2e', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '51b43da1-bef5-408b-920d-7fa821b93728', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b4c21f62-cdc7-4ee9-88bc-8b4ce4b2fd79', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7f8cdc5d-c7eb-4452-bea6-700a5cbc898d', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '153e2ae9-2114-4808-9c9f-6ada3e512a31', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ff3f572d-9d3c-45ae-99fa-1416eee95333', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6d107857-ed5d-468b-82a5-0f24acedb1a3', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'be104e2a-7ee8-4735-aa77-8560463d4c41', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e94ae29b-b843-4c9b-be8b-12679c380538', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '15edd60c-45cc-455a-ac8a-249cc5669901', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8f7fff12-b39c-4e27-a504-a4b171364b87', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '231920f7-8ff6-4ea2-9ab5-d77be6a83798', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2f88317f-2fde-482c-b589-6122d355be7e', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5ff056c-f595-4b1d-b621-87736b86c1df', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a058374c-57a4-4df7-b18e-700bfd15193b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ada3dade-6fda-42b0-9a0e-e30c193aba5c', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fb9bb826-44fd-4049-ab58-dfaa02981502', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f9ca2ec4-bb37-4c38-af62-edc7f078c3bc', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7cac2df8-7b12-4d25-8043-402f39b24859', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fab4f155-1226-4b26-8cb1-e7216bf57cc6', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e436fb8e-a1ec-4111-81da-a3009c9b4153', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0649e8c4-73f6-45eb-ae0d-9c9ddca0a730', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '006b0133-9f28-4a13-8889-2e678e15c59f', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '67137275-3c9a-40a3-99fc-dbfeed3c323e', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'aee7257e-5cbe-4326-8f26-e83f4ad28103', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4a50fdbf-23d0-4cdb-ab91-ca2378c88d8d', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b1ba0e10-b336-4674-b3b1-d47b8595eb8b', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2f647ae1-bf2c-4e56-9b99-c7a19fa66530', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0dc9596b-84f9-4021-9919-6de8e50632d2', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2e59dc04-fc82-41ab-bf71-d4bfdd6ae972', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cfddf6f3-7814-4b40-910e-9617b000133b', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '227c0a3a-ef09-4973-97fe-57dc1fa907d1', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ed823029-a084-435f-8c45-cc3e45064690', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3d44e2c0-8095-4446-908d-c8d4f797da2f', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '53a2fcc4-e6a3-4f91-9817-98016367c0bf', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0f5b0868-a344-4ca0-9c15-b256a5726ed4', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8b3d7f47-0e1a-4a81-84bd-2b0b9b359531', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5278260f-4ba2-474d-b7f6-bcf21230d675', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0e53bba0-3e93-496f-b232-0070cfbb9f7c', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '52674ba3-3e69-4118-a397-0477a3bb5109', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7550f4e8-62c3-4d8a-a9f4-9421c7f44e2b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3f07da82-8931-48df-8559-f8788f1ba9fc', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2d7a2e51-9a33-4271-ade5-601456b230e7', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '43fcf20d-d880-4f22-886c-4b4073339dbd', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '17e0c561-f9ca-4ab9-8491-7b7446ed2389', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1e69f9ad-418c-4ff3-a4db-318f8cb68bbf', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '98d42ca4-c876-4e0a-b969-a31ba0cf4970', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5a7e7793-d345-4c7a-8ca5-8c28b450bbeb', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'be2f3b84-fc44-4827-8b9f-f3d8487b83b5', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '065de4ac-9f1b-4c73-8f64-1a8298111a68', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fb82ab9e-a1fb-4fcd-b949-52cc8e8fec26', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e4456761-e96a-4c63-b271-ee45e9df0233', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fa3f622c-bf18-497c-ac00-ea615cc661b5', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cf5aa265-5913-40fa-b22e-8516fdefc85b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f8c8ee78-9b3c-4175-9aa7-525801c239f7', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2cc2deb5-97f3-42f6-83a8-53c756e9ed38', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5396f1d-b36a-4c7c-86b5-c595715fe520', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dd1fa2bd-cc01-4c54-8f29-1e0add4c3c11', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c3983c8a-d024-4568-b04d-59f4d4b3742f', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dba4ae98-f053-48ba-918a-7bdd07bad9c4', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5aaa4c6-64cb-42b1-8258-5e6b2b26b23f', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '97d0028e-31e7-4b48-9c4a-2a63ac642660', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd236e00e-6297-4cb4-891a-d985f92bd74b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '56b23f1a-6657-4677-bc56-cf3b1519480e', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e2b7ac92-3d18-4631-ad8d-64f4ceadb36c', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c547f00f-c89b-4e2d-9037-d5771b9d3a84', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4944e6f5-5fe6-41b2-a703-21831a644548', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '073ddab5-842d-4144-a859-743577b6935b', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '15eedf27-6762-40e0-b04a-1f23198df488', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '90dc2710-8777-4f1e-8eb0-f3d561b499c6', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '23b1ba6a-d668-4541-9a19-1643cf2e08b0', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '46597973-8fca-47a7-b12d-f83fad404e6a', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eb7fa03c-0344-4203-ab43-14a8d20a7eb8', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5044bdf3-001c-40e3-bd80-e7018326ae1f', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cffafc46-7f42-4b41-ab89-30106c6faf58', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2f6c7d84-26c0-4d0d-bf8d-36ab5288a538', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a0469cda-e012-451a-b4d2-b3fe4e930b54', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f84d5d26-3d12-4ed2-91c6-7d86d51adb26', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3257da5e-4276-432b-bb42-87363f755c9d', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e0560f9a-b624-44ec-b95f-0db94baa1e86', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bf56ec39-7fbb-4d61-961a-1533d0ecd276', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2b752503-6f99-498c-9a1b-ecd1b1164625', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ec223a98-0ad2-47b3-813a-5b7ac73c63c9', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ec61b7d5-49e4-42f7-9b44-47dad730a4e8', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b9e653e8-45bd-481c-9bcb-16d2572abf8b', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '00515033-d46f-4f20-bd17-b9519414911b', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd3a97518-00b7-461d-8574-7cbcb4948acc', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8b3c3dab-a745-469d-9b96-c03ac4440809', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '05be8ca6-c1b3-493f-ac1f-91f5652ce481', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ce755a37-e07f-47ff-9e1a-7227ddda5607', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '242b71df-9517-4b95-bda0-697c5a2c9d4e', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fd84d2cb-b172-42bf-98c0-8089c8a5c28f', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '321c6c8c-6092-4835-8cbf-133ed0bec8c2', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bfb2a21a-fc7b-4e14-b694-a250b990069e', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9a7ce9aa-8024-45a4-81ed-f8247896469a', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd9cd24b3-b7d1-4900-bcee-0cfd93524970', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8f458c83-f97c-4a21-87cc-9e2091ae5607', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c911c6d6-054d-4a95-8b57-dd15c66c0abd', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4ca49c4b-3c41-41f1-9668-80c7f9ff17dc', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '941d61a2-25c3-4fc2-9b14-91af0fb5b407', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'aaec860e-5854-4774-b3e8-bde1e53a790a', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '34083333-0c6a-409b-8384-2de043edff2a', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e4a595f7-c9d6-4498-8b67-5e0b3a807736', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9f4a5c2f-c508-40f3-8797-97c847408945', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '39cc6d16-a3b8-4a8a-993d-91f7efd6c9a3', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '55fd4d55-7053-4a0d-908f-8819ccfaa173', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd073eede-396c-4187-922e-d80baf41512c', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1ff83ccc-a00e-434a-b7a2-0e93d31ec482', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '698235fd-37f8-48f6-8cb0-e40670e859d9', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '76a941af-d6c3-4e3f-b780-1a893bf8b4d0', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '62ea8b51-4bcc-4f62-b401-7cb3fa39ea1d', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2f573d36-ed1a-4861-b57d-e2652577e428', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '327b6119-2f6f-4bb1-8652-1aa5ab0a224c', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'daf48608-fef7-44aa-8154-e3a181bf658b', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '498f0b5c-b455-44b9-b128-4d58f57ff530', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f4dadb83-b6e1-464a-ba13-bf9c02c136b4', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a2acbd6c-e3cd-48d3-900c-3e11e096fd6d', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '64c422e0-8168-4338-bf2c-40ce98b1bdb3', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6590ed3a-523f-4944-b331-6f9c3d76cf09', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8ebecf43-e648-456f-ac6e-fdd1e659e3b5', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5aff2423-d144-4208-b90b-bcfd2b5dc49b', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd23dabc1-f42c-4f4a-bddb-129785975d55', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '27afdec2-9adf-4d68-828e-a7d1c0f771aa', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a3da35b6-ee1a-4efc-abbe-4ed72725da32', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bf079e65-0beb-4933-8991-2727588401ce', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e0b8f24f-2da4-43a6-bc78-ebd6785ed0c4', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c7f2b7f2-5372-42cc-bb95-d5927a97cff7', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9c0cd1cb-c613-4490-bce8-865ade5f6fd3', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fbed6f47-61e1-4718-83ac-0dbba9e53015', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1240b324-10df-45b8-9016-f667878c6d6e', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4297cd3d-9b96-483d-8f17-67ee94b0333e', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '05877e53-1c2f-4642-a3fd-21512f78c58d', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4c699bc7-fb7a-4273-88cf-ed8d798ea974', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '150ff78a-f21a-41d5-b7cc-5bd30e1a0d23', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fc1c56d3-401a-4a26-af08-a2fcdeb79acd', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5dbed37-0a8c-49db-876f-e4287ffe30f2', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a696bea7-ab47-42e9-b5ae-1624d535c5bf', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f11264f1-472e-48b7-804c-32c6a743aff0', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6e6c3cdf-e60e-458d-9e83-612d11d9dd52', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2e5ffc51-7ae6-4f78-be96-a29a17d7bcb8', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f15f5f74-8668-4453-84a3-777a3be0e6bd', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd092e427-14b2-4395-90e2-241deaa8b6e7', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6e857871-0bae-4cd8-9c7e-3d45c3cefabf', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0c62f6df-62ff-4bfc-b6f5-96744bac1063', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7f7068bf-c5b7-434a-8e0c-52cea41beee2', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0091340b-361f-4fba-8630-69694bc4e1e3', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd37a550f-706d-4624-8828-23b5dcd261bf', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a20a94e8-7752-41ab-a63d-cce484541b26', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5caf8cbf-be83-471e-986c-d386a373154d', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c1c5f499-755c-47a8-8cf5-831b2ec5cfea', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ddac3748-9e2a-4d0e-8522-393006cb51a7', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b991d1d1-4066-4a62-8a99-c4f8f11f588d', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e9a139a8-098d-496f-a015-3c203aae50fc', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eab3629e-310c-4013-b1d9-0059b5fae2d7', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '25bd7a42-6844-4c4f-a245-0d3abe254423', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b7d78d91-211d-43f7-a770-e921ca4c583a', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd0f1550a-87fe-4679-969a-2e7991e535e3', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8443def0-c7e8-4c6e-a1cc-48633edc4229', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cd9fd803-2f6d-4add-9683-4ea8446da151', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '46299446-d2e4-4123-ad70-bef086f70d10', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '92f5bc31-33b1-44f8-97e8-522bb01110b6', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6b0ec30a-b87e-4b35-8860-568b21a547c1', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e3e3b519-8bb2-45da-9501-9e2b5f6bc4a2', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f0faba7c-35e1-4411-b64d-b0a603ce2332', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6217d9ac-c1c8-4834-837c-fff8c1cff4ba', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4c699af5-2e5a-4e2e-95f1-196988439cd8', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a420e0cd-5b62-4db3-b162-42ceedcb6d2a', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '82780450-a37c-4f02-83a4-f67e2911100c', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '179da842-b8ee-4343-810a-32b1248eeae9', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2b978b4e-4f19-4df5-8b3f-7a180c5169ab', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fb3b8047-5978-4a9b-bbdc-194407831fef', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cd6b5429-1db4-4d49-a609-4e2302b77ae8', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5f4d3f5-3a81-4524-856d-5cae9eeb5481', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8bc291db-f2fd-4389-b7db-c0d3980a0c79', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '360b2384-14fe-4900-ab24-861a5d58a2fb', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0b1eda47-e5e3-409a-8ebc-f828163f9d06', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c4d9cc95-095c-4405-944b-42d48505e909', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2cc8a0a2-6cbe-431c-aa8a-68a466115d73', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4d4c1ce0-05d6-4479-8a1f-a42f951e4992', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '64d66ed5-822c-45c7-b3ac-f998b83b44bf', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '04917f71-fadf-4595-86aa-e581179d03d4', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9e7cb05d-c243-41a2-a5c1-9615eed3b318', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e15169f7-930c-4fff-b8cd-6217c71b97ad', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2b191ef9-e765-4143-8e0f-ef1b7d27e7af', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '794810b0-7684-4b3e-8bd6-c97993b7f48b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '878c125a-cda6-4676-bba3-35e0a1843479', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0a6c24ce-efa6-4b86-bb63-f03be80e9da1', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '182152ec-cd73-464d-90b1-1ef5c6811a5e', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e02ccb87-d7fb-450c-89fa-8a0b52bc92f1', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '825d507d-8977-434c-a899-e75839dc03aa', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5471d610-9cce-457e-9dde-200920ea5e81', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1f0e06d6-e062-4399-9ede-3acb72b8be52', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c6e93079-b416-42c9-b3d4-c990613af5b1', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a21134e9-acd1-4003-9dc8-b51f4e443b21', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '52b5a5f8-ea72-4b02-8d09-bca3b3cbb5c9', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eae04031-978f-42cf-bc97-0481c5195890', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1a6ea10a-3b9e-464e-a75c-bfe868b44da9', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5f714383-48f6-4905-b96c-81226e26d222', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '29aa5d03-b7f6-4f6e-ba33-0318be904c14', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fe0ee86a-cea2-4d38-9523-a02426be3561', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c12143c6-8e09-4928-bee4-c11fd66198a7', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2ddc2ea6-cd53-4c5d-9e0b-ae2ebcb9d3eb', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '93517f95-61e2-4689-ba2f-7ccef562b4d1', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '386a9630-1367-4202-acfc-57e1576b8860', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '61003a54-5c3b-43a3-965e-51655dff727c', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cbb2579a-4715-4e9a-a611-8c71e2fc1174', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3c04abca-d1f6-43e7-a738-167497fef0f5', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '34c15be4-694b-47fe-89c8-aa61ddfb596b', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '508e095d-79ed-4604-9868-d736717a78d6', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ddc20d4d-5fd8-43b8-8f42-d32bebab983b', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6fa39146-6b76-4724-87d1-64fffc088946', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7d1645e9-bbdf-4042-adc1-c37656e8a154', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1e01532d-e57a-46a4-9517-0e16d82ae79e', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ba4781a9-02e8-412b-b737-13fb43a3a0d8', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '08a35f82-d8d6-42d8-934a-f4c0d76994b7', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '26e6baba-0e81-4fff-888e-ef033d8ccab7', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '718071fe-feb3-4157-b645-db2ae147553b', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f58d73a4-dd1b-4f50-a8e5-4bfd5c2278a6', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '184d6f92-aa85-4dac-a6f6-8f015dbe4b23', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0c245bf5-3d16-4a5b-882c-43f0ad3ecabc', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '52bd18e4-1fe0-4051-aefd-aca44e817b53', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7e3a77da-539a-46ff-90f0-959fc8fd05de', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8c3c1cda-128e-40cf-9dba-98acab4fe55e', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9600ec60-9aee-4e8f-a791-6fb6941f8004', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4f26cb29-811c-4873-a26c-184340df4128', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd132a98a-9ad2-424b-b5f9-eb02c6a66bf0', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b8edec01-0262-4101-b856-d18ae7c57fd8', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '40cd8dba-34a9-4f8f-871e-1827cdab77a1', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '31a139ea-88cb-472b-860c-db69d8888725', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '95d00ec3-a0bd-4e50-8ba3-2f174227550d', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c5a35e88-7232-4a64-91ee-a7b7ecfe6943', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'de9693fb-9e18-4201-bfe7-b4f5a6b9f7a9', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cb7af0ea-d579-4375-a0c5-8946dd1c10df', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '346cfe70-8ada-4e68-853b-c808a63965c2', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fadc62a6-1fac-4031-bbd8-62fa50f39baa', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '468fbb9d-b512-453e-8329-d7015c42df03', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fb4f9467-97a8-4d79-9f97-84301b124f7c', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9a04a961-234e-4219-a3b6-1925ed0346a2', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '97bf7ba7-8ef0-4d3b-8124-81c457a3db31', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bf903731-34ab-419b-bf5b-0eb6d1bdf607', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c5f58c2b-00b4-4972-813f-43582e07c21b', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9736d1fd-3f2f-4a12-a952-dba7c55ebff2', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0e835d28-7609-4556-b821-97f86e3ddb3a', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '97c6abe4-8e9c-4ecf-b13d-94b12ed9e469', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '48e9006c-0bbd-41b2-85c6-7e345fb7386c', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e69bf45d-44e0-41c0-92d7-db16c9b07371', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4e69dd3f-bdd5-47cf-a0dd-93076bd3ac41', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e393b26b-f714-4ede-b33b-3bccfa786959', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '017d103b-d6d4-47dc-a10f-88bdafc9e38f', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3836fa11-2f3c-4ced-95cc-f3ca7f1e98c2', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '47450998-9280-4f37-8922-1cfb25e7d326', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dde28109-a0c9-4802-b331-525cf9bb76f5', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd1cef65d-0b8f-43ab-8cc8-1ea849ef276e', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a55335bf-f66a-49a3-892d-a2f25012d936', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6d74d0fa-d818-48db-817c-8e9efa3e116f', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2cb56027-a5e8-43de-bf08-dfa0f6831ff0', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1036efca-52c5-4fe6-96f9-de7d360d55e2', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd1e6f51c-a02f-46ed-ac66-60074a98a358', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3882b3d6-8535-4464-b004-fbba7354d3fb', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c1b270d3-43bb-4697-aed7-a053a1b02ce9', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '718d7a65-e342-4dcb-8eff-e4c3ae4fa0bf', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c1c19687-7365-4df0-bf64-7b2ac07337eb', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e6aec597-baef-4178-a014-6975883a58e4', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4abf91e7-56ef-48a1-adc9-138e7929600e', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '77e451d3-8a83-4123-9d70-6983ea3d6543', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '33e191f1-9040-4468-abff-5c91c83fd380', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '12040c6e-4771-41de-bcc5-1c0326deab24', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0302c657-f344-47d9-8b72-bd0ea9ca3b0f', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9f99e3e0-f023-493a-88b7-6e54e6374775', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4e6fc5e1-e579-46ba-9ed8-d669c9c8194f', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e4770c5a-e4d3-4222-a1db-3922bd89e566', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'beb2e7a6-8560-49c0-ae95-2111e764fa5a', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3ad8c1f8-2e22-429e-8273-91368c40d151', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '28ef4ea5-eabe-489c-85a1-b819f99dc901', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '98adf2b0-2f0b-4b35-96c3-7353543fe2b7', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eb914432-3531-4ccd-9707-fd43cb269171', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a630b119-7954-4361-a477-738073ced739', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '954da8ed-390d-4d3f-9e44-627d08ec1525', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'afa9f0ff-feb1-4b72-b853-43678107cf0e', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '78d5d138-99ff-49e6-9124-f40c9c67369d', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5d0619e8-b776-4dfa-99ff-fd5837d346ba', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3063fb23-0263-4f6f-a2d5-63ad8cab4504', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd48b0a15-2e46-41ec-93a3-40396964319a', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '63b1c926-d06c-46ca-bced-895b7f31f40e', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '657c9257-73ee-4f9c-969f-7464c07609dd', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1a215eb1-5aa0-4170-828c-fb6f7b18fc6f', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7fdcb527-094b-4608-8470-e856864e91b9', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7e2fb9b2-3795-4a90-9685-feb3a3284c36', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c62f31c0-17ce-4784-af73-a6d4b761b58a', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bcfe304e-6ce9-460a-bd74-61bb7c93b8b4', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'af6c0db9-a9c7-426e-b25c-8ccf275cc698', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1b9e1bce-fbcf-4e10-826e-6e8a93237152', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '020b6a99-670a-4df4-a8ea-625365695dfd', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1a2e66b2-b9f5-44e3-a5d0-7665ebe26966', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '78f75d39-d21a-4af5-ab2a-fb0ce3ef0ad2', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'efb3ece4-7707-4146-9cbe-9ac8cdf6d532', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b28e2b66-4ab4-44d1-84e3-8eb5f44919f1', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fef7ed20-631f-41f1-93d1-cf3f28d83a32', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '17a2a0e5-9a8b-4e76-b8a7-9420cf2d0e11', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1bc8ee07-a679-4195-b2d8-797cfb2e3cb3', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f3dc1f0e-5e05-44ad-83a9-74ec870128ae', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b692688a-a238-46d1-9845-d62a5b308e6e', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'df826f3d-0ac2-4c36-9776-712e14655d07', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1f796386-36cc-464e-bf9d-4927574351f6', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a20fc45e-a0c3-4067-bfa8-996b522c4831', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2b0faf20-2877-45b2-95de-d93c1d98013e', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '706124d9-d265-4d32-828d-39b192465f9d', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '99bc50b5-6dc5-4b62-b5a0-67d5d481e65f', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '611c1974-3370-495c-8734-14429ac1649a', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '62487605-2b0d-4c40-8112-aa98f107f0ce', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1c0eb3ae-4e2b-41f0-9c05-34dca42127bd', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '83108d24-6064-4ee8-a8c4-a9993e7ea264', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ba6cb417-fd76-4f16-9040-19c7ebc2c657', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b317914a-04dc-4300-8fbd-7ac8f7496c1a', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c2de6289-96c0-41ad-af75-7262202db8ac', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bd3cdbff-5796-482d-b42d-0bb13ab8263e', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '540ca1d8-8adf-4a53-b959-9539e5e88aeb', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b98219c7-a7ef-4819-a971-c746a9ab0ca4', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ce2b6be2-38bf-4162-805d-dacbe676a8cb', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c7d44837-2946-4df4-b82f-20fcb5e5b92b', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '97e5d297-2c6d-4b97-a2d2-9e36279eabd4', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e23810d4-f895-4d57-b141-514f1e0e8981', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '527a70f3-7a4e-44e8-9f56-c6b4cdd88245', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd10637af-113e-4fb8-ab32-1c55247fdcda', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5a9036df-f5b8-45a6-a2b9-851fb7bd27df', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e3ec98db-b771-4a40-a180-a2a1e8a6caee', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'bbe95e90-5faf-46d1-86ef-bcc04a2e09d5', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '676be1b0-6d05-4681-bfe5-00b6569e6e91', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '24bdea89-20f7-42fd-950d-f73db1ed89cf', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'eb1102e8-6a0e-4bf8-9737-60a1d75a7dbd', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8706de7a-504b-49e3-a29f-19955e2040ff', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '52a609eb-c7c2-480e-97a8-017a60828a4b', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '578c87d4-6db2-4e3f-805a-3584dec58894', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'da294fb1-c001-413e-b25d-f3cde9d2b7cd', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2ffbc085-44a2-4274-8141-89005750820e', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd3e466d1-b7f4-40e5-a9bf-81336bbf95c1', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0a41b2f0-e9a3-4382-bcd2-0ee5da12fe52', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a07adca3-2d73-43bd-a738-373a948722ca', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fd48f171-3ace-4b2c-a317-6d7a1293f76a', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '51f8e33a-5589-4706-a626-c5d50d4b8b97', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c7b0b93a-c506-4700-86d9-f508e3d98eda', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd85264d6-2d46-4748-9994-8754ef4964da', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b7d5c120-de5b-46d0-8655-1bd658efd788', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f0629b9b-d9a1-48a7-83b6-81d38bc75fc9', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b22ad8ee-e96f-46ae-a500-d89c55a3d40f', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '7bfa2e56-4c50-4354-94a0-32494d3f66f0', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8505a32d-70b3-4aaf-a848-67cd20f26f89', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8a248322-d154-44e7-a35d-6f83f8711769', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '35d9afda-d199-4df9-9b09-71df7f8023fc', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '50100b27-9acd-4dab-9037-7cdaccc217a8', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e33caeb6-3696-4730-b57f-1639bfa4119b', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f706905f-2d1c-41fc-b14d-8dc7b0b00d8a', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b3ed5ffe-4754-4bcd-86f5-c53dbefc934f', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3dec3729-7869-454e-9bf1-23567454df20', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f7c960b9-d490-4a9d-a7cd-eb6243598338', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd84ac464-9d40-45bb-a5c4-b8bcc5d13bdf', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd539c169-076f-4058-8d1b-5398e08588fe', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a0b3881a-6e1d-409e-b6d9-a87cafd8a8bc', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '88fca836-a034-46a8-8b41-10c27329258b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2e7910d4-baed-4809-b716-e8b983576e80', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e0fdd603-a5cc-4b08-95b4-d67ac9206221', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '271d2aac-f6ee-4525-a325-1c2f39f84d7e', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '012b8077-1f1c-455d-9d0e-5f29dd238c47', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0698a998-1e4d-4df9-8638-a1f901f77503', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3523727a-c8d5-4794-8f46-98886535ce20', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '391b87ab-1c6d-4c34-a54f-0106f7ee1985', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cbdad4a5-f25c-4363-93ee-4fbe9a156f4b', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '288f1b0e-072f-46e0-b6b4-7de9c72b39d5', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6eb6162b-10e3-4bab-8981-35640e146f7b', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b411a02a-02bc-45e2-90b7-1e5e55df6163', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '17d00600-01a5-425d-9729-bd2162779098', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '085898fb-0305-4b1b-b250-8724f3e25f71', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9be4ce04-316f-44b5-8741-228f56fd8151', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fdbf082b-78ff-4f69-9188-b46c4a6cb722', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c0acd162-092f-495d-9cf6-afc925b04df4', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4ed08928-058e-43cd-8b20-279b07fb85a1', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1a5fabed-2c2f-4f92-b887-b977d6e61375', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'f17fe24a-1729-4c24-8b46-85377477f8df', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2d68721a-7af5-42a4-9adc-48b3d2e5bd6a', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e5818acd-5297-4d5d-b8b4-f9ee19340f9d', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3180f699-5a01-42b5-bb00-7c2ed2eabc6e', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'daacd169-269f-447c-8b57-e60f43b6cbec', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4ecd7fe9-03aa-47ef-b0dc-13271a7f1c23', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c6b36976-2b3d-40ae-ae9d-e49e81f891d1', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '4c7e7577-8b4b-40bc-85ef-13e7705f0bce', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '300768e4-8b2c-4a56-be75-32dd306d8c55', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '2053ccfb-382b-498e-aafd-ef56b51a1712', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9265fb6c-5770-49d0-9c13-d068d61ddffc', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'acd3b113-188e-4c18-a6f6-568e0e87df2b', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b107d0e7-b185-4270-954e-0fc9b8050e6b', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8db6287b-a4b8-49b7-aaf6-bd81ef78399a', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '09487c87-08eb-4fda-8f81-bb71c377752d', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a02cc2ca-2a6f-4366-8afb-3d2776e96761', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd48209ac-3b9d-4660-a563-af26620e5bee', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '68cd0834-9f42-4c5f-a3ec-be22b95980c9', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b390a287-603d-4381-8bb3-6a4189a36e3f', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '729fdc77-c98c-4582-a3d1-558c41d17d53', 'Forte 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '10565a14-29f9-435c-88af-9dc95adbad6b', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a36accc9-b1f5-4833-9ebc-fe58032bc3f6', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '315d7a51-dfea-48c7-8219-e1213373890c', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c537a504-6ced-4fbe-9615-a26eeb6131eb', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '8a253e03-b319-49c7-8ece-2ca387017245', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fd839980-23fc-4ed9-8d41-a51587900e7c', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'a8cdf7e4-c2a3-4b1c-8b0a-5ec9845e0bca', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b5098dd1-6f5a-48d1-939d-8cfd6a81a83b', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '21751907-5276-4914-91a2-8b9d6137bab4', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '09cb2c1b-09ca-4d92-b62c-d1715fce5a05', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '9e98c88c-578b-49d3-9a03-56b4d0e18355', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '22013a0d-488a-44ee-9685-773355e1252d', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c566b95a-a5bd-4d3c-98bd-a5fadf236831', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b2554e7c-5947-4162-9780-c5934f0b51b3', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'c2acb968-8a91-428a-858d-8c5a56a94fa5', 'ibm_osaka', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ecbc685a-9370-4f4d-8faa-e8e4a5d4853d', 'Harmony', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '71f50fc4-fd02-4a08-a4d6-3c01a0539073', 'ibm_algiers', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '3c59a76f-d155-4e4c-87da-7fe1b66185d3', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0c98c722-49df-4fdc-a988-ec563c9a7471', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '22efcbdd-3b0d-4023-9700-c6e777440de2', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1eddf319-5495-4013-9676-40a959f9c1a4', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '56e614ba-7511-4339-965e-b27f3fe1a05e', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6c2e78f8-9502-4478-bb00-d863a3ec11b2', 'ibm_sherbrooke', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '46737c63-e244-4ded-8545-b4e602970ff6', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd697073d-22fb-4db6-aaec-301f04d6f641', 'ibm_cairo', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '991ede9c-5001-4c0b-b1db-131c57983660', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'ab758bc5-b611-44b4-a475-23fd6d2b6359', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'e089b4cb-c7b2-4909-963f-fc8f9e1339cd', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '6be8a553-2d5f-4f69-8ecf-b46f968c3ccc', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'cf21363f-6d53-4a30-ad98-3a2190c485c7', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '228e2ca9-f6b0-4a05-9222-912f4f413452', 'ibm_brisbane', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '260cefcc-473b-45fa-9e5e-e9e13439182b', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '5b68ad18-f84d-491d-8f40-ff685a893ee3', 'Aria 2', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'dd41ccfb-8fd8-4564-a3f7-452764c7d445', 'Aria 1', NULL, NULL, 'ionq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '0608510f-2262-4a31-b367-3758d02b5ab5', 'ibm_kyoto', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '1f2afbdb-6252-4e19-afa5-a1b90efd64f4', 'ibm_hanoi', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', '24a59953-cdf5-4e49-9059-657d8bb795a0', 'ibmq_mumbai', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'd162baff-1810-4e15-9d42-7bc57be7d905', 'ibm_nazca', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'b803adef-4dba-49c8-9294-d40bdb7cac5a', 'ibm_cusco', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource (dtype, id, name, quantum_computation_model, technology, vendor, qprov_origin) VALUES ('ComputeResource', 'fd4b5912-5079-4ed3-a6d3-f494c61ac356', 'Aria 2', NULL, NULL, 'ionq', true);


--
-- Data for Name: compute_resource_property; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('92376664-12fc-4143-9ce3-0ce2a7372e05', '15', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('f052fab4-8fa7-4b20-a053-a655f362e5b7', '50063.8361', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('5d57ecb5-f071-472f-a0c3-213d99569f8e', '1043', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('29d3b8b6-9523-4610-9587-98a1019035e0', '5', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('039b068c-cadd-4a95-a408-e3f058a540e2', '62104.6608', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('428ac66a-c08d-441c-96a7-3c5976daa08d', '391', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('79834b76-82d5-4962-b78a-012f374fe4b1', '20', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('064f93f4-d50a-49ae-a7e4-ea36fc67a662', '20330', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('51d3b698-0698-4058-bb9b-2de809a3a704', '214', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('486fbc6f-20b2-4247-8742-b36cfd5b3c44', '8', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('d772d10b-0614-480a-b2ec-b33a32d74e42', '13406.25', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property (id, value, algorithm_id, compute_resource_id, compute_resource_property_type_id, implementation_id) VALUES ('dde0fa28-a69d-4e51-83c7-5e23d06aeb2a', '198', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);


--
-- Data for Name: compute_resource_property_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('e658e9bb-ca15-4b3a-9dd2-833ccd144e50', 0, '', 'Number of Qubits');
INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', 2, '', 't1');
INSERT INTO public.compute_resource_property_type (id, datatype, description, name) VALUES ('ff58dc2e-b805-4d32-b2ac-a059464e5102', 0, '', 'Max gate time');


--
-- Data for Name: discussion_comment; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: discussion_topic; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: file; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: file_data; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, NULL, 'forest-shor', NULL, 'Factors: Integer Array', 'N: N > 2', NULL, NULL, 'e07898e3-280f-4701-9d54-7d051af8d448', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, NULL, 'qiskit-aqua-shor', NULL, 'Factors: Integer Array', 'N: N > 2', NULL, NULL, '170eff66-733f-4043-a56b-3189bf474d62', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-sat-qiskit', NULL, NULL, NULL, NULL, NULL, '8179d686-afa1-4f03-8ec9-95899002488a', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-sat-qiskit', NULL, NULL, NULL, NULL, NULL, '7de45de7-aca2-4966-a5f9-8ef018688722', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, '10bc87a9-9317-41c8-8d19-fc6594d23383', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, 'e7a33256-0ab4-4baa-a805-0296b97960d6', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-fix-15-qiskit', NULL, NULL, NULL, NULL, NULL, 'c293bbf4-b8cf-4393-a403-a359a77b868c', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-general-qiskit', NULL, NULL, NULL, NULL, NULL, '816a96fc-696d-419f-8bd4-98752cc72aac', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'simon-general-qiskit', NULL, NULL, NULL, NULL, NULL, '649859eb-7709-4beb-9738-d57f11d80455', '871f7eea-4722-4728-8cd9-1e61fe2dd285');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grover SAT Qiskit', NULL, NULL, NULL, NULL, NULL, '75568260-17e1-4585-9bc3-a5659fe29cbf', '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bv-fix-00110-qiskit', NULL, NULL, NULL, NULL, NULL, '6377b427-e877-4620-bb98-c0da6ada22b6', 'a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, 'ed35ebaf-8069-4276-a884-78a4d1af9658', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, 'ddff99e3-0458-4c36-864f-077afa7d516c', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '1769a8e2-5df3-492f-a03c-63c4f32cfdfb', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '9d5cf328-ff7b-482d-b3a5-a5d42c8a965d', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '5903fb15-178e-46b8-95fc-090758a9952c', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '56478381-4f4b-4007-960e-1935aa5b7ced', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs50seed1', NULL, NULL, NULL, NULL, NULL, '8b55eead-ee3e-4a11-a319-5d95046f6bab', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '4c5dfec5-af79-4a93-ae27-590384ccb844', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, 'ba2e9174-9b4d-487e-becb-1421b83fab14', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'fd3b251a-c570-469d-ac13-1b9d074f2c6d', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '7852bb4a-1801-44ed-b031-b845ca237e79', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '3d93fa11-9ea7-49ab-b36e-05a9841d0cfc', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '86926d33-7d76-4bfc-a550-7334bbfab8e7', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '64949a5d-28a7-411d-8bea-6e5000c36fdc', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, 'aedc7760-8431-4c00-a178-3f4c1edf9ddf', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '3c595064-498f-406b-80f2-4264d28fb6a7', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '26fb11f7-aa91-4b42-a27f-a62d4f60ff1a', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '6fab858b-5f47-4c9b-ba9b-cf82a2527ff7', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, 'd2c29f7a-b182-4bfd-b19b-6db299d6db4a', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '1e91e015-4587-4841-bc72-ac18d01a482e', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '066e4576-7f81-4db5-be57-d60030b4d446', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, 'e5db8606-04e5-43ef-a4cf-b2c2b097c0aa', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '200f408f-c9de-487d-b617-66cf56b76716', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, 'e60ab200-cd1c-417f-88a3-4f36df580d08', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'c78e0d22-6cda-4820-8f66-9b9c48abd9ce', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, 'a464c134-67ad-4151-9e9d-47b49da6f95b', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '5a76a5ae-b560-4330-82af-dbd2d7b6e50a', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '745e92d1-9ceb-46a9-b0b4-0e60ce178eb4', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '9a95dfdd-1e85-4381-b095-7388119e6aab', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '79734c73-a64a-4172-9a03-be8a23a22495', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, 'c0314c3f-572c-45ef-9910-900dd85a1b54', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '143ec937-21c4-42d4-bf9b-0640ea2a3f68', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, 'd18c04d3-8dd1-4567-86cf-2fc8d1bb71cb', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '26080569-f76f-495d-ad08-1164c33b82e2', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'cda440df-4988-4be7-b7f9-609584b04d11', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '07b79588-412e-4a64-9e2b-60c1f9812925', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '7232bf19-c469-4b9d-b403-8fd8c535d8dd', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, 'd533a8b9-dab5-42c6-871e-e223e00ed5a7', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, 'e84b3f5d-0911-479f-8238-d5c279e1dca7', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '913d97f8-350d-4ea7-ac90-86c03b44ab5b', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'fc0c7023-d47a-4170-9cc4-c7e967a93736', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '20e4485d-d299-4ed1-a613-623d9a0046ed', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, 'a1f3f8be-52cd-4e0a-803d-f6181b5787c6', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, 'dfe6c89d-fc6d-4830-b998-9beeb47b8cc4', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '34027eb0-f1d3-403f-a597-5abb8ec79a83', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '6233a2b6-b8bb-4da5-936f-d7845787b4e6', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, 'a1628a38-4396-4526-a708-cafc61bd8b2f', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, 'c30f4531-ee1f-47ac-9fc8-1ff829357178', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '808e1fde-a169-48da-9c45-eb4eec5ab658', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '870c512b-7cbe-4b2c-907f-6e85507046c9', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '34386126-28ab-4efe-8dda-d7541e4ae049', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'bfb6e49a-9bb2-46a3-8ec1-05ed79770950', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '55536ef2-fc2d-4fe6-bc91-a3049da5be3a', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-sat-pyquil', NULL, NULL, NULL, NULL, NULL, '17392e71-95a5-4488-9233-15213efc678d', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1', NULL, NULL, NULL, NULL, NULL, 'a5aaa03d-3c81-4388-9a27-103bc416f58a', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1RegulatedDepth', NULL, NULL, NULL, NULL, NULL, '9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits1-rb_length_0_seed_0', NULL, NULL, NULL, NULL, NULL, '924e0c63-cf14-461b-ab8f-3eb064dd5b68', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits13-rb_length_0_seed_6', NULL, NULL, NULL, NULL, NULL, '389994fb-0872-426a-bdbc-7f8454817cc2', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1RegulatedDepthTooBig', NULL, NULL, NULL, NULL, NULL, 'b7663a84-914a-4d6a-8d41-9fa180c05ca9', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits10-rb_length_1_seed_4', NULL, NULL, NULL, NULL, NULL, '36172360-c474-4b67-99b1-887ac69d56ec', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits1-rb_length_0_seed_0', NULL, NULL, NULL, NULL, NULL, '677493f5-5ecb-4061-9732-bd2ed53d259b', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits11-rb_length_0_seed_5', NULL, NULL, NULL, NULL, NULL, '0aba979a-0739-49b6-94c7-701f7aa0259c', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits14-rb_length_1_seed_6', NULL, NULL, NULL, NULL, NULL, '6f3171a4-3c4d-4660-abf7-09e2e5d1c5f4', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits15-rb_length_0_seed_7', NULL, NULL, NULL, NULL, NULL, '0c57e963-890e-40d6-99a3-d58561122d7e', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits16-rb_length_1_seed_7', NULL, NULL, NULL, NULL, NULL, '3786317d-3202-4739-968f-6b7b77323e76', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits17-rb_length_0_seed_8', NULL, NULL, NULL, NULL, NULL, '1313942d-d113-4a26-b4c7-e5bf80547659', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits18-rb_length_1_seed_8', NULL, NULL, NULL, NULL, NULL, '8d2b36b3-e1fd-44e8-b724-2c56a2f52911', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits19-rb_length_0_seed_9', NULL, NULL, NULL, NULL, NULL, '9f088345-cacd-4766-8214-1ac33b5a9088', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits20-rb_length_1_seed_9', NULL, NULL, NULL, NULL, NULL, 'ae6ce7f4-7ee6-4fdc-9546-23385aa8c657', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits3-rb_length_0_seed_1', NULL, NULL, NULL, NULL, NULL, '6b403bbd-a6fe-4fa9-9ebd-c640768eefaa', '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits1-rb_length_0_seed_0', NULL, NULL, NULL, NULL, NULL, '2978e345-a538-4ced-9a90-2e2918980c23', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits10-rb_length_0_seed_3', NULL, NULL, NULL, NULL, NULL, 'c5679601-4d6a-4a80-8fc8-4fe26fde0b71', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits11-rb_length_1_seed_3', NULL, NULL, NULL, NULL, NULL, 'a3c4937f-e615-4264-9fa8-ec9393445df7', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits12-rb_length_2_seed_3', NULL, NULL, NULL, NULL, NULL, '19f9ca0f-9b36-4f93-9559-d40f1dc6b0d1', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits13-rb_length_0_seed_4', NULL, NULL, NULL, NULL, NULL, '068ca2f7-3d37-4c2d-afc8-33a9d5a1992b', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits14-rb_length_1_seed_4', NULL, NULL, NULL, NULL, NULL, '042628a8-9159-4858-a73f-87552e570f7c', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits15-rb_length_2_seed_4', NULL, NULL, NULL, NULL, NULL, 'e8d603b7-dd1c-491f-8358-fb43488b60d2', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-fix-qasm', NULL, NULL, NULL, NULL, NULL, '481d3bf0-788c-46dc-a036-ced2ef3a5eb6', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits1-rb_length_0_seed_0', NULL, NULL, NULL, NULL, NULL, '0a13a36d-37c5-40b1-9083-dba5f73335b0', '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits1-rb_length_0_seed_0narrow', NULL, NULL, NULL, NULL, NULL, '2e7fb5d4-7492-4fcd-9af4-798cf2b886ed', '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits1-rb_length_0_seed_0narrow', NULL, NULL, NULL, NULL, NULL, '7d9582a6-91ca-46a4-bdc4-5ed176b2bc7b', '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits1-rb_length_0_seed_0narrow1', NULL, NULL, NULL, NULL, NULL, 'd3bd634b-3a03-47ef-9ce7-6dc29f325a4f', '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits3-rb_length_0_seed_1narrow', NULL, NULL, NULL, NULL, NULL, '9c5641e8-2695-46a7-9d29-55d061de93af', '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits1-rb_length_0_seed_0narrow1', NULL, NULL, NULL, NULL, NULL, 'ca0e8f0b-cdb4-472f-a754-9c351c333a27', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits11-rb_length_0_seed_2narrow1', NULL, NULL, NULL, NULL, NULL, '92651aba-e4e2-4bce-9996-f25aa91a0cfd', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits6-rb_length_0_seed_1narrow1', NULL, NULL, NULL, NULL, NULL, '20d6470c-7a42-4520-9702-812d82381d0c', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits21-rb_length_0_seed_4narrow1', NULL, NULL, NULL, NULL, NULL, '17cb4d7f-af1e-4ee4-b876-0f21b1eb6aae', '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation (assumptions, contributors, dependencies, description, input_format, license, link, name, technology, output_format, parameter, problem_statement, version, id, implemented_algorithm_id) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-sat-quil', NULL, NULL, NULL, NULL, NULL, '3d36cef0-b735-4685-af0a-b73257ee2fb3', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');


--
-- Data for Name: implementation_package; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: implementation_package_file; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: implementation_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_publication (implementation_id, publication_id) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.implementation_publication (implementation_id, publication_id) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 'f05c9136-2f9f-433f-9c35-85009111ee3c');


--
-- Data for Name: implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', 2, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-aandb-sat-qasm', NULL, NULL, NULL, NULL, NULL, '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Grover SAT Qiskit', NULL, NULL, NULL, NULL, NULL, '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', 6, NULL, NULL, 'Python3', NULL, 'U: Float Array; Precision: Integer', NULL, 'forest-qpe', 'Eigenvalue: Integer Array', 'U: unitary matrix; precision: precision > 0', NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', 6, NULL, NULL, 'Python3', NULL, NULL, NULL, 'qiskit-qpe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('6377b427-e877-4620-bb98-c0da6ada22b6', 9, NULL, NULL, NULL, NULL, NULL, NULL, 'bv-fix-00110-qiskit', NULL, NULL, NULL, NULL, NULL, 'a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('ed35ebaf-8069-4276-a884-78a4d1af9658', 10, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('ddff99e3-0458-4c36-864f-077afa7d516c', 11, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('1769a8e2-5df3-492f-a03c-63c4f32cfdfb', 12, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9d5cf328-ff7b-482d-b3a5-a5d42c8a965d', 13, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('5903fb15-178e-46b8-95fc-090758a9952c', 14, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('56478381-4f4b-4007-960e-1935aa5b7ced', 15, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('8b55eead-ee3e-4a11-a319-5d95046f6bab', 16, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs50seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('4c5dfec5-af79-4a93-ae27-590384ccb844', 17, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('ba2e9174-9b4d-487e-becb-1421b83fab14', 18, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('fd3b251a-c570-469d-ac13-1b9d074f2c6d', 19, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('7852bb4a-1801-44ed-b031-b845ca237e79', 20, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('3d93fa11-9ea7-49ab-b36e-05a9841d0cfc', 21, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('86926d33-7d76-4bfc-a550-7334bbfab8e7', 22, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('64949a5d-28a7-411d-8bea-6e5000c36fdc', 23, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('aedc7760-8431-4c00-a178-3f4c1edf9ddf', 24, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('3c595064-498f-406b-80f2-4264d28fb6a7', 25, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('26fb11f7-aa91-4b42-a27f-a62d4f60ff1a', 26, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('6fab858b-5f47-4c9b-ba9b-cf82a2527ff7', 27, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('d2c29f7a-b182-4bfd-b19b-6db299d6db4a', 28, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('1e91e015-4587-4841-bc72-ac18d01a482e', 29, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('066e4576-7f81-4db5-be57-d60030b4d446', 30, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('e5db8606-04e5-43ef-a4cf-b2c2b097c0aa', 31, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('200f408f-c9de-487d-b617-66cf56b76716', 33, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('e60ab200-cd1c-417f-88a3-4f36df580d08', 34, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('c78e0d22-6cda-4820-8f66-9b9c48abd9ce', 35, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('a464c134-67ad-4151-9e9d-47b49da6f95b', 36, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('5a76a5ae-b560-4330-82af-dbd2d7b6e50a', 37, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('745e92d1-9ceb-46a9-b0b4-0e60ce178eb4', 38, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9a95dfdd-1e85-4381-b095-7388119e6aab', 40, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('79734c73-a64a-4172-9a03-be8a23a22495', 41, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('c0314c3f-572c-45ef-9910-900dd85a1b54', 42, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('143ec937-21c4-42d4-bf9b-0640ea2a3f68', 43, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('d18c04d3-8dd1-4567-86cf-2fc8d1bb71cb', 44, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('26080569-f76f-495d-ad08-1164c33b82e2', 45, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('cda440df-4988-4be7-b7f9-609584b04d11', 46, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('07b79588-412e-4a64-9e2b-60c1f9812925', 47, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('7232bf19-c469-4b9d-b403-8fd8c535d8dd', 48, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('d533a8b9-dab5-42c6-871e-e223e00ed5a7', 49, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('e84b3f5d-0911-479f-8238-d5c279e1dca7', 50, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('913d97f8-350d-4ea7-ac90-86c03b44ab5b', 51, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('fc0c7023-d47a-4170-9cc4-c7e967a93736', 52, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('20e4485d-d299-4ed1-a613-623d9a0046ed', 53, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('a1f3f8be-52cd-4e0a-803d-f6181b5787c6', 54, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('dfe6c89d-fc6d-4830-b998-9beeb47b8cc4', 55, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('34027eb0-f1d3-403f-a597-5abb8ec79a83', 57, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('6233a2b6-b8bb-4da5-936f-d7845787b4e6', 58, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('a1628a38-4396-4526-a708-cafc61bd8b2f', 59, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('c30f4531-ee1f-47ac-9fc8-1ff829357178', 60, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('808e1fde-a169-48da-9c45-eb4eec5ab658', 61, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('870c512b-7cbe-4b2c-907f-6e85507046c9', 62, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('34386126-28ab-4efe-8dda-d7541e4ae049', 63, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('bfb6e49a-9bb2-46a3-8ec1-05ed79770950', 64, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('55536ef2-fc2d-4fe6-bc91-a3049da5be3a', 65, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('17392e71-95a5-4488-9233-15213efc678d', 66, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-sat-pyquil', NULL, NULL, NULL, NULL, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('a5aaa03d-3c81-4388-9a27-103bc416f58a', 68, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 72, NULL, NULL, NULL, NULL, NULL, NULL, 'https://raw.githubusercontent.com/UST-QuAntiL/nisq-analyzer-content/master/benchmarking/generated-10-qubit-circuits/randomCliffCirc10Qubits1RegulatedDepth.qasm', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 73, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1RegulatedDepth', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 74, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1RegulatedDepthTooBig', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('b7663a84-914a-4d6a-8d41-9fa180c05ca9', 75, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1RegulatedDepth', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 76, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1Regulated', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('b7663a84-914a-4d6a-8d41-9fa180c05ca9', 77, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1RegulatedDepthTooBig', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 78, NULL, NULL, NULL, NULL, NULL, NULL, 'randomCliffCirc10Qubits1RegulatedDepth', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('924e0c63-cf14-461b-ab8f-3eb064dd5b68', 79, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits1-rb_length_0_seed_0', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('36172360-c474-4b67-99b1-887ac69d56ec', 80, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits10-rb_length_1_seed_4', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('677493f5-5ecb-4061-9732-bd2ed53d259b', 81, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits1-rb_length_0_seed_0', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('0aba979a-0739-49b6-94c7-701f7aa0259c', 82, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits11-rb_length_0_seed_5', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('389994fb-0872-426a-bdbc-7f8454817cc2', 83, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits13-rb_length_0_seed_6', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('6f3171a4-3c4d-4660-abf7-09e2e5d1c5f4', 84, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits14-rb_length_1_seed_6', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('0c57e963-890e-40d6-99a3-d58561122d7e', 85, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits15-rb_length_0_seed_7', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('3786317d-3202-4739-968f-6b7b77323e76', 86, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits16-rb_length_1_seed_7', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('1313942d-d113-4a26-b4c7-e5bf80547659', 87, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits17-rb_length_0_seed_8', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('8d2b36b3-e1fd-44e8-b724-2c56a2f52911', 88, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits18-rb_length_1_seed_8', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9f088345-cacd-4766-8214-1ac33b5a9088', 89, NULL, NULL, NULL, NULL, NULL, NULL, 'https://raw.githubusercontent.com/UST-QuAntiL/nisq-analyzer-content/master/benchmarking/generated-10-qubit-circuits/randomzedCircuit10Qubits19-rb_length_0_seed_9.qasm', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9f088345-cacd-4766-8214-1ac33b5a9088', 90, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits19-rb_length_0_seed_9', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('ae6ce7f4-7ee6-4fdc-9546-23385aa8c657', 91, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits20-rb_length_1_seed_9', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('6b403bbd-a6fe-4fa9-9ebd-c640768eefaa', 92, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit10Qubits3-rb_length_0_seed_1', NULL, NULL, NULL, NULL, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('2978e345-a538-4ced-9a90-2e2918980c23', 94, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits1-rb_length_0_seed_0', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('c5679601-4d6a-4a80-8fc8-4fe26fde0b71', 95, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits10-rb_length_0_seed_3', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('a3c4937f-e615-4264-9fa8-ec9393445df7', 96, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits11-rb_length_1_seed_3', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('19f9ca0f-9b36-4f93-9559-d40f1dc6b0d1', 97, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits12-rb_length_2_seed_3', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('068ca2f7-3d37-4c2d-afc8-33a9d5a1992b', 98, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits13-rb_length_0_seed_4', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('042628a8-9159-4858-a73f-87552e570f7c', 99, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits14-rb_length_1_seed_4', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('e8d603b7-dd1c-491f-8358-fb43488b60d2', 100, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits15-rb_length_2_seed_4', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('481d3bf0-788c-46dc-a036-ced2ef3a5eb6', 101, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-fix-qasm', NULL, NULL, NULL, NULL, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('0a13a36d-37c5-40b1-9083-dba5f73335b0', 103, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits1-rb_length_0_seed_0', NULL, NULL, NULL, NULL, NULL, '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('2e7fb5d4-7492-4fcd-9af4-798cf2b886ed', 104, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits1-rb_length_0_seed_0narrow', NULL, NULL, NULL, NULL, NULL, '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('7d9582a6-91ca-46a4-bdc4-5ed176b2bc7b', 105, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits1-rb_length_0_seed_0narrow', NULL, NULL, NULL, NULL, NULL, '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('d3bd634b-3a03-47ef-9ce7-6dc29f325a4f', 106, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits1-rb_length_0_seed_0narrow1', NULL, NULL, NULL, NULL, NULL, '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('9c5641e8-2695-46a7-9d29-55d061de93af', 107, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit20Qubits3-rb_length_0_seed_1narrow', NULL, NULL, NULL, NULL, NULL, '32c3d185-08df-47ec-acb7-03d3ebadffea');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('ca0e8f0b-cdb4-472f-a754-9c351c333a27', 108, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits1-rb_length_0_seed_0narrow1', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('92651aba-e4e2-4bce-9996-f25aa91a0cfd', 109, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits11-rb_length_0_seed_2narrow1', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('20d6470c-7a42-4520-9702-812d82381d0c', 110, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits6-rb_length_0_seed_1narrow1', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('17cb4d7f-af1e-4ee4-b876-0f21b1eb6aae', 111, NULL, NULL, NULL, NULL, NULL, NULL, 'randomzedCircuit15Qubits21-rb_length_0_seed_4narrow1', NULL, NULL, NULL, NULL, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.implementation_revisions (id, rev, assumptions, contributors, dependencies, description, input_format, license, name, output_format, parameter, problem_statement, technology, version, implemented_algorithm_id) VALUES ('3d36cef0-b735-4685-af0a-b73257ee2fb3', 112, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-sat-quil', NULL, NULL, NULL, NULL, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');


--
-- Data for Name: implementation_software_platforms; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', '7c2c4b2e-5b4e-421c-a487-54fd897bfe41');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms (implementation_id, software_platform_id) VALUES ('649859eb-7709-4beb-9738-d57f11d80455', '41299c3c-297a-4d61-be24-cc957186306e');


--
-- Data for Name: implementation_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 'Factorization');
INSERT INTO public.implementation_tag (implementation_id, tag_value) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 'Factorization');


--
-- Data for Name: knowledge_artifact; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('170eff66-733f-4043-a56b-3189bf474d62', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('f05c9136-2f9f-433f-9c35-85009111ee3c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3c7722e2-09c3-4667-9a0d-a45d3ddc42ae', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('0e5af2cf-f3c8-48dd-9743-cfdea65f320f', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('871f7eea-4722-4728-8cd9-1e61fe2dd285', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('649859eb-7709-4beb-9738-d57f11d80455', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('6377b427-e877-4620-bb98-c0da6ada22b6', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('ed35ebaf-8069-4276-a884-78a4d1af9658', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('ddff99e3-0458-4c36-864f-077afa7d516c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('1769a8e2-5df3-492f-a03c-63c4f32cfdfb', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('9d5cf328-ff7b-482d-b3a5-a5d42c8a965d', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('5903fb15-178e-46b8-95fc-090758a9952c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('56478381-4f4b-4007-960e-1935aa5b7ced', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('8b55eead-ee3e-4a11-a319-5d95046f6bab', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('4c5dfec5-af79-4a93-ae27-590384ccb844', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('ba2e9174-9b4d-487e-becb-1421b83fab14', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('fd3b251a-c570-469d-ac13-1b9d074f2c6d', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('7852bb4a-1801-44ed-b031-b845ca237e79', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3d93fa11-9ea7-49ab-b36e-05a9841d0cfc', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('86926d33-7d76-4bfc-a550-7334bbfab8e7', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('64949a5d-28a7-411d-8bea-6e5000c36fdc', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('aedc7760-8431-4c00-a178-3f4c1edf9ddf', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3c595064-498f-406b-80f2-4264d28fb6a7', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('26fb11f7-aa91-4b42-a27f-a62d4f60ff1a', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('6fab858b-5f47-4c9b-ba9b-cf82a2527ff7', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('d2c29f7a-b182-4bfd-b19b-6db299d6db4a', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('1e91e015-4587-4841-bc72-ac18d01a482e', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('066e4576-7f81-4db5-be57-d60030b4d446', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e5db8606-04e5-43ef-a4cf-b2c2b097c0aa', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('200f408f-c9de-487d-b617-66cf56b76716', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e60ab200-cd1c-417f-88a3-4f36df580d08', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('c78e0d22-6cda-4820-8f66-9b9c48abd9ce', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('a464c134-67ad-4151-9e9d-47b49da6f95b', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('5a76a5ae-b560-4330-82af-dbd2d7b6e50a', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('745e92d1-9ceb-46a9-b0b4-0e60ce178eb4', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('9a95dfdd-1e85-4381-b095-7388119e6aab', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('79734c73-a64a-4172-9a03-be8a23a22495', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('c0314c3f-572c-45ef-9910-900dd85a1b54', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('143ec937-21c4-42d4-bf9b-0640ea2a3f68', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('d18c04d3-8dd1-4567-86cf-2fc8d1bb71cb', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('26080569-f76f-495d-ad08-1164c33b82e2', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('cda440df-4988-4be7-b7f9-609584b04d11', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('07b79588-412e-4a64-9e2b-60c1f9812925', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('7232bf19-c469-4b9d-b403-8fd8c535d8dd', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('d533a8b9-dab5-42c6-871e-e223e00ed5a7', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e84b3f5d-0911-479f-8238-d5c279e1dca7', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('913d97f8-350d-4ea7-ac90-86c03b44ab5b', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('fc0c7023-d47a-4170-9cc4-c7e967a93736', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('20e4485d-d299-4ed1-a613-623d9a0046ed', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('a1f3f8be-52cd-4e0a-803d-f6181b5787c6', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('dfe6c89d-fc6d-4830-b998-9beeb47b8cc4', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('95818e95-3573-491d-983a-4fa58552b5cd', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('34027eb0-f1d3-403f-a597-5abb8ec79a83', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('6233a2b6-b8bb-4da5-936f-d7845787b4e6', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('a1628a38-4396-4526-a708-cafc61bd8b2f', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('c30f4531-ee1f-47ac-9fc8-1ff829357178', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('808e1fde-a169-48da-9c45-eb4eec5ab658', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('870c512b-7cbe-4b2c-907f-6e85507046c9', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('34386126-28ab-4efe-8dda-d7541e4ae049', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('bfb6e49a-9bb2-46a3-8ec1-05ed79770950', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('55536ef2-fc2d-4fe6-bc91-a3049da5be3a', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('17392e71-95a5-4488-9233-15213efc678d', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('2ce20f37-2797-4d78-93d8-0c93d606e51d', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('a5aaa03d-3c81-4388-9a27-103bc416f58a', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('b7663a84-914a-4d6a-8d41-9fa180c05ca9', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('924e0c63-cf14-461b-ab8f-3eb064dd5b68', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('36172360-c474-4b67-99b1-887ac69d56ec', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('677493f5-5ecb-4061-9732-bd2ed53d259b', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('0aba979a-0739-49b6-94c7-701f7aa0259c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('389994fb-0872-426a-bdbc-7f8454817cc2', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('6f3171a4-3c4d-4660-abf7-09e2e5d1c5f4', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('0c57e963-890e-40d6-99a3-d58561122d7e', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3786317d-3202-4739-968f-6b7b77323e76', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('1313942d-d113-4a26-b4c7-e5bf80547659', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('8d2b36b3-e1fd-44e8-b724-2c56a2f52911', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('9f088345-cacd-4766-8214-1ac33b5a9088', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('ae6ce7f4-7ee6-4fdc-9546-23385aa8c657', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('6b403bbd-a6fe-4fa9-9ebd-c640768eefaa', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('94c3ca45-430b-41ad-8f2c-3e1e04edae82', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('2978e345-a538-4ced-9a90-2e2918980c23', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('c5679601-4d6a-4a80-8fc8-4fe26fde0b71', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('a3c4937f-e615-4264-9fa8-ec9393445df7', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('19f9ca0f-9b36-4f93-9559-d40f1dc6b0d1', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('068ca2f7-3d37-4c2d-afc8-33a9d5a1992b', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('042628a8-9159-4858-a73f-87552e570f7c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('e8d603b7-dd1c-491f-8358-fb43488b60d2', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('481d3bf0-788c-46dc-a036-ced2ef3a5eb6', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('32c3d185-08df-47ec-acb7-03d3ebadffea', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('0a13a36d-37c5-40b1-9083-dba5f73335b0', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('2e7fb5d4-7492-4fcd-9af4-798cf2b886ed', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('7d9582a6-91ca-46a4-bdc4-5ed176b2bc7b', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('d3bd634b-3a03-47ef-9ce7-6dc29f325a4f', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('9c5641e8-2695-46a7-9d29-55d061de93af', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('ca0e8f0b-cdb4-472f-a754-9c351c333a27', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('92651aba-e4e2-4bce-9996-f25aa91a0cfd', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('20d6470c-7a42-4520-9702-812d82381d0c', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('17cb4d7f-af1e-4ee4-b876-0f21b1eb6aae', NULL, NULL);
INSERT INTO public.knowledge_artifact (id, creation_date, last_modified_at) VALUES ('3d36cef0-b735-4685-af0a-b73257ee2fb3', NULL, NULL);


--
-- Data for Name: knowledge_artifact_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 1, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', 2, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 3, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', 4, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 5, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', 6, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', 6, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 7, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4', 8, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('6377b427-e877-4620-bb98-c0da6ada22b6', 9, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('ed35ebaf-8069-4276-a884-78a4d1af9658', 10, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('ddff99e3-0458-4c36-864f-077afa7d516c', 11, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('1769a8e2-5df3-492f-a03c-63c4f32cfdfb', 12, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9d5cf328-ff7b-482d-b3a5-a5d42c8a965d', 13, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('5903fb15-178e-46b8-95fc-090758a9952c', 14, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('56478381-4f4b-4007-960e-1935aa5b7ced', 15, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('8b55eead-ee3e-4a11-a319-5d95046f6bab', 16, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('4c5dfec5-af79-4a93-ae27-590384ccb844', 17, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('ba2e9174-9b4d-487e-becb-1421b83fab14', 18, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('fd3b251a-c570-469d-ac13-1b9d074f2c6d', 19, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('7852bb4a-1801-44ed-b031-b845ca237e79', 20, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('3d93fa11-9ea7-49ab-b36e-05a9841d0cfc', 21, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('86926d33-7d76-4bfc-a550-7334bbfab8e7', 22, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('64949a5d-28a7-411d-8bea-6e5000c36fdc', 23, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('aedc7760-8431-4c00-a178-3f4c1edf9ddf', 24, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('3c595064-498f-406b-80f2-4264d28fb6a7', 25, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('26fb11f7-aa91-4b42-a27f-a62d4f60ff1a', 26, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('6fab858b-5f47-4c9b-ba9b-cf82a2527ff7', 27, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('d2c29f7a-b182-4bfd-b19b-6db299d6db4a', 28, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('1e91e015-4587-4841-bc72-ac18d01a482e', 29, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('066e4576-7f81-4db5-be57-d60030b4d446', 30, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('e5db8606-04e5-43ef-a4cf-b2c2b097c0aa', 31, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf', 32, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('200f408f-c9de-487d-b617-66cf56b76716', 33, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('e60ab200-cd1c-417f-88a3-4f36df580d08', 34, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('c78e0d22-6cda-4820-8f66-9b9c48abd9ce', 35, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('a464c134-67ad-4151-9e9d-47b49da6f95b', 36, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('5a76a5ae-b560-4330-82af-dbd2d7b6e50a', 37, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('745e92d1-9ceb-46a9-b0b4-0e60ce178eb4', 38, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9a95dfdd-1e85-4381-b095-7388119e6aab', 40, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('79734c73-a64a-4172-9a03-be8a23a22495', 41, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('c0314c3f-572c-45ef-9910-900dd85a1b54', 42, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('143ec937-21c4-42d4-bf9b-0640ea2a3f68', 43, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('d18c04d3-8dd1-4567-86cf-2fc8d1bb71cb', 44, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('26080569-f76f-495d-ad08-1164c33b82e2', 45, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('cda440df-4988-4be7-b7f9-609584b04d11', 46, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('07b79588-412e-4a64-9e2b-60c1f9812925', 47, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('7232bf19-c469-4b9d-b403-8fd8c535d8dd', 48, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('d533a8b9-dab5-42c6-871e-e223e00ed5a7', 49, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('e84b3f5d-0911-479f-8238-d5c279e1dca7', 50, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('913d97f8-350d-4ea7-ac90-86c03b44ab5b', 51, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('fc0c7023-d47a-4170-9cc4-c7e967a93736', 52, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('20e4485d-d299-4ed1-a613-623d9a0046ed', 53, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('a1f3f8be-52cd-4e0a-803d-f6181b5787c6', 54, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('dfe6c89d-fc6d-4830-b998-9beeb47b8cc4', 55, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('95818e95-3573-491d-983a-4fa58552b5cd', 56, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('34027eb0-f1d3-403f-a597-5abb8ec79a83', 57, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('6233a2b6-b8bb-4da5-936f-d7845787b4e6', 58, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('a1628a38-4396-4526-a708-cafc61bd8b2f', 59, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('c30f4531-ee1f-47ac-9fc8-1ff829357178', 60, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('808e1fde-a169-48da-9c45-eb4eec5ab658', 61, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('870c512b-7cbe-4b2c-907f-6e85507046c9', 62, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('34386126-28ab-4efe-8dda-d7541e4ae049', 63, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('bfb6e49a-9bb2-46a3-8ec1-05ed79770950', 64, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('55536ef2-fc2d-4fe6-bc91-a3049da5be3a', 65, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('17392e71-95a5-4488-9233-15213efc678d', 66, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('2ce20f37-2797-4d78-93d8-0c93d606e51d', 67, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('a5aaa03d-3c81-4388-9a27-103bc416f58a', 68, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 69, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('2ce20f37-2797-4d78-93d8-0c93d606e51d', 70, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 71, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 72, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 73, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 74, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('b7663a84-914a-4d6a-8d41-9fa180c05ca9', 75, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 76, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('b7663a84-914a-4d6a-8d41-9fa180c05ca9', 77, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9dfce60e-2d3f-4cf9-bd30-c56ba5ea3233', 78, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('924e0c63-cf14-461b-ab8f-3eb064dd5b68', 79, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('36172360-c474-4b67-99b1-887ac69d56ec', 80, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('677493f5-5ecb-4061-9732-bd2ed53d259b', 81, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('0aba979a-0739-49b6-94c7-701f7aa0259c', 82, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('389994fb-0872-426a-bdbc-7f8454817cc2', 83, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('6f3171a4-3c4d-4660-abf7-09e2e5d1c5f4', 84, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('0c57e963-890e-40d6-99a3-d58561122d7e', 85, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('3786317d-3202-4739-968f-6b7b77323e76', 86, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('1313942d-d113-4a26-b4c7-e5bf80547659', 87, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('8d2b36b3-e1fd-44e8-b724-2c56a2f52911', 88, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9f088345-cacd-4766-8214-1ac33b5a9088', 89, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9f088345-cacd-4766-8214-1ac33b5a9088', 90, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('ae6ce7f4-7ee6-4fdc-9546-23385aa8c657', 91, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('6b403bbd-a6fe-4fa9-9ebd-c640768eefaa', 92, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('94c3ca45-430b-41ad-8f2c-3e1e04edae82', 93, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('2978e345-a538-4ced-9a90-2e2918980c23', 94, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('c5679601-4d6a-4a80-8fc8-4fe26fde0b71', 95, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('a3c4937f-e615-4264-9fa8-ec9393445df7', 96, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('19f9ca0f-9b36-4f93-9559-d40f1dc6b0d1', 97, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('068ca2f7-3d37-4c2d-afc8-33a9d5a1992b', 98, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('042628a8-9159-4858-a73f-87552e570f7c', 99, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('e8d603b7-dd1c-491f-8358-fb43488b60d2', 100, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('481d3bf0-788c-46dc-a036-ced2ef3a5eb6', 101, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('32c3d185-08df-47ec-acb7-03d3ebadffea', 102, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('0a13a36d-37c5-40b1-9083-dba5f73335b0', 103, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('2e7fb5d4-7492-4fcd-9af4-798cf2b886ed', 104, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('7d9582a6-91ca-46a4-bdc4-5ed176b2bc7b', 105, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('d3bd634b-3a03-47ef-9ce7-6dc29f325a4f', 106, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('9c5641e8-2695-46a7-9d29-55d061de93af', 107, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('ca0e8f0b-cdb4-472f-a754-9c351c333a27', 108, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('92651aba-e4e2-4bce-9996-f25aa91a0cfd', 109, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('20d6470c-7a42-4520-9702-812d82381d0c', 110, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('17cb4d7f-af1e-4ee4-b876-0f21b1eb6aae', 111, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions (id, rev, revtype, creation_date, last_modified_at) VALUES ('3d36cef0-b735-4685-af0a-b73257ee2fb3', 112, 0, NULL, NULL);


--
-- Data for Name: learning_method; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: pattern_relation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: pattern_relation_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: pattern_uris; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: pattern_uris_aud; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.problem_type (id, name, parent_problem_type) VALUES ('76d773b5-4635-4d67-877c-e565b9f08496', 'Integer Factorization', NULL);


--
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1137/S0097539795293172', 'Polynomial-Time Algorithms for Prime Factorization and Discrete Logarithms on a Quantum Computer', 'https://arxiv.org/abs/quant-ph/9508027', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1109/TSMCB.2008.925743', 'Quantum reinforcement learning', 'https://arxiv.org/abs/0810.3828', '87d697a4-6256-4f84-b545-c2024ab380c2');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1038/s41586-019-0980-2', 'Supervised learning with quantum enhanced feature spaces', 'https://arxiv.org/abs/1804.11326', '3aac6a37-10de-4a95-a2bd-381d357df2a4');
INSERT INTO public.publication (doi, title, url, id) VALUES ('10.1016/j.cpc.2019.107006', 'Support vector machines on the D-Wave quantum annealer', 'https://arxiv.org/abs/1906.06283', 'ae6bdf6f-2656-45bd-9b96-0820eea3cdab');


--
-- Data for Name: publication_authors; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.publication_authors (publication_id, authors) VALUES ('f05c9136-2f9f-433f-9c35-85009111ee3c', 'Peter W. Shor');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Daoyl Dong');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Chunlin Chen');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Hanxiong Li');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Tzyh-Jong Tarn');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Vojtech Havlicek');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Antionio D. Córcoles');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Kristian Temme');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Aram W. Harrow');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Abhinav Kandala');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Jerry M. Chow');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Jay M. Gambetta');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Dennis Willsch');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Madita Willsch');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Hans De Raedt');
INSERT INTO public.publication_authors (publication_id, authors) VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Kristel Michielsen');


--
-- Data for Name: quantum_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, 'exponential', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '871f7eea-4722-4728-8cd9-1e61fe2dd285');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, 'a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '2ce20f37-2797-4d78-93d8-0c93d606e51d');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '94c3ca45-430b-41ad-8f2c-3e1e04edae82');
INSERT INTO public.quantum_algorithm (nisq_ready, quantum_computation_model, speed_up, id) VALUES (false, 0, NULL, '32c3d185-08df-47ec-acb7-03d3ebadffea');


--
-- Data for Name: quantum_algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 1, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 3, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 5, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 7, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4', 8, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('95818e95-3573-491d-983a-4fa58552b5cd', 56, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('2ce20f37-2797-4d78-93d8-0c93d606e51d', 67, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 69, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('2ce20f37-2797-4d78-93d8-0c93d606e51d', 70, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 71, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('94c3ca45-430b-41ad-8f2c-3e1e04edae82', 93, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions (id, rev, nisq_ready, quantum_computation_model, speed_up) VALUES ('32c3d185-08df-47ec-acb7-03d3ebadffea', 102, false, 0, NULL);


--
-- Data for Name: quantum_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: quantum_implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: revinfo; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.revinfo (rev, revtstmp) VALUES (1, 1646386332904);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (2, 1646386395187);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (3, 1646391842475);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (4, 1646391860235);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (5, 1646391870671);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (6, 1646405385046);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (7, 1646405415331);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (8, 1646405449856);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (9, 1646405455763);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (10, 1646407141542);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (11, 1646410899998);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (12, 1646414837602);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (13, 1646417451512);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (14, 1646468752863);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (15, 1646469114983);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (16, 1646473074339);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (17, 1646473814686);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (18, 1646477561973);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (19, 1646482370140);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (20, 1646487191387);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (21, 1646492245484);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (22, 1646497473585);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (23, 1646503235083);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (24, 1646511410536);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (25, 1646515121095);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (26, 1646566814788);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (27, 1646574657439);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (28, 1646581724939);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (29, 1646583720417);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (30, 1646589590101);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (31, 1646590974748);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (32, 1646591615674);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (33, 1646638473698);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (34, 1646642149922);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (35, 1646667910982);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (36, 1646723700121);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (37, 1646732091311);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (38, 1646732599795);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (40, 1646758694507);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (41, 1646848282093);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (42, 1646898363576);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (43, 1646906326148);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (44, 1646908819014);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (45, 1647112467032);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (46, 1647117498233);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (47, 1647120419046);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (48, 1647122873255);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (49, 1647163972594);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (50, 1647164557706);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (51, 1647165136847);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (52, 1647169655612);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (53, 1647174196936);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (54, 1647176931958);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (55, 1647180645248);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (56, 1647188245003);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (57, 1647188267218);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (58, 1647191485392);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (59, 1647196526250);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (60, 1647198413807);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (61, 1647199871468);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (62, 1647200261838);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (63, 1647200606737);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (64, 1647200964482);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (65, 1647201362804);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (66, 1702641692024);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (67, 1702650036054);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (68, 1702650071756);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (69, 1702652869069);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (70, 1702652888033);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (71, 1702652898379);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (72, 1702653147620);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (73, 1702653173555);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (74, 1702654813045);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (75, 1702654830643);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (76, 1702654858492);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (77, 1702654872655);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (78, 1702654881483);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (79, 1702894914551);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (80, 1702896894528);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (81, 1702898677217);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (82, 1702898868399);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (83, 1702905918108);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (84, 1702910336868);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (85, 1702971134463);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (86, 1702977740222);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (87, 1702979448960);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (88, 1702985559654);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (89, 1702996363012);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (90, 1702996382754);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (91, 1703011210561);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (92, 1703056650361);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (93, 1703065466378);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (94, 1703065470758);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (95, 1703068187651);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (96, 1703072849221);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (97, 1703077827573);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (98, 1703148020431);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (99, 1703161148761);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (100, 1703245073960);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (101, 1703267238743);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (102, 1703268770183);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (103, 1703268796264);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (104, 1703270698884);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (105, 1703271340867);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (106, 1703272658181);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (107, 1703274057555);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (108, 1703275282052);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (109, 1703276498538);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (110, 1703277730824);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (111, 1703278980679);
INSERT INTO public.revinfo (rev, revtstmp) VALUES (112, 1703347830393);


--
-- Data for Name: sketch; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: software_platform; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.software_platform (id, licence, link, name, version) VALUES ('7c2c4b2e-5b4e-421c-a487-54fd897bfe41', 'Apache-2.0 License', 'https://pyquil-docs.rigetti.com/en/stable/', 'Forest', NULL);
INSERT INTO public.software_platform (id, licence, link, name, version) VALUES ('41299c3c-297a-4d61-be24-cc957186306e', 'Apache-2.0 License', 'https://github.com/Qiskit/qiskit', 'Qiskit', '0.21.0');
INSERT INTO public.software_platform (id, licence, link, name, version) VALUES ('3327c5ee-2248-4245-8c14-e0b7fba4876d', NULL, NULL, 'PyQuil', NULL);


--
-- Data for Name: software_platform_cloud_services; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: software_platforms_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.tag (value, category) VALUES ('Phase Estimation', 'Subroutine');
INSERT INTO public.tag (value, category) VALUES ('Reinforcement learning', 'Algorithm class');
INSERT INTO public.tag (value, category) VALUES ('Classification', 'Algorithm class');
INSERT INTO public.tag (value, category) VALUES ('Factorization', 'Algorithm class');


--
-- Data for Name: tosca_application; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: tosca_application_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: planqk
--

SELECT pg_catalog.setval('public.hibernate_sequence', 112, true);


--
-- Name: algorithm_application_area algorithm_application_area_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_application_area
    ADD CONSTRAINT algorithm_application_area_pkey PRIMARY KEY (algorithm_id, application_area_id);


--
-- Name: algorithm_learning_method algorithm_learning_method_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_learning_method
    ADD CONSTRAINT algorithm_learning_method_pkey PRIMARY KEY (algorithm_id, learning_method_id);


--
-- Name: algorithm algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm
    ADD CONSTRAINT algorithm_pkey PRIMARY KEY (id);


--
-- Name: algorithm_problem_type algorithm_problem_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_problem_type
    ADD CONSTRAINT algorithm_problem_type_pkey PRIMARY KEY (algorithm_id, problem_type_id);


--
-- Name: algorithm_publication algorithm_publication_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_publication
    ADD CONSTRAINT algorithm_publication_pkey PRIMARY KEY (algorithm_id, publication_id);


--
-- Name: algorithm_relation algorithm_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT algorithm_relation_pkey PRIMARY KEY (id);


--
-- Name: algorithm_relation_type algorithm_relation_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation_type
    ADD CONSTRAINT algorithm_relation_type_pkey PRIMARY KEY (id);


--
-- Name: algorithm_revisions algorithm_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_revisions
    ADD CONSTRAINT algorithm_revisions_pkey PRIMARY KEY (id, rev);


--
-- Name: algorithm_tag algorithm_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_tag
    ADD CONSTRAINT algorithm_tag_pkey PRIMARY KEY (algorithm_id, tag_value);


--
-- Name: application_area application_area_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.application_area
    ADD CONSTRAINT application_area_pkey PRIMARY KEY (id);


--
-- Name: classic_algorithm classic_algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm
    ADD CONSTRAINT classic_algorithm_pkey PRIMARY KEY (id);


--
-- Name: classic_algorithm_revisions classic_algorithm_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm_revisions
    ADD CONSTRAINT classic_algorithm_revisions_pkey PRIMARY KEY (id, rev);


--
-- Name: classic_implementation classic_implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation
    ADD CONSTRAINT classic_implementation_pkey PRIMARY KEY (id);


--
-- Name: classic_implementation_revisions classic_implementation_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation_revisions
    ADD CONSTRAINT classic_implementation_revisions_pkey PRIMARY KEY (id, rev);


--
-- Name: cloud_service cloud_service_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_service
    ADD CONSTRAINT cloud_service_pkey PRIMARY KEY (id);


--
-- Name: cloud_services_compute_resources cloud_services_compute_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_services_compute_resources
    ADD CONSTRAINT cloud_services_compute_resources_pkey PRIMARY KEY (cloud_service_id, compute_resource_id);


--
-- Name: compute_resource compute_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource
    ADD CONSTRAINT compute_resource_pkey PRIMARY KEY (id);


--
-- Name: compute_resource_property compute_resource_property_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT compute_resource_property_pkey PRIMARY KEY (id);


--
-- Name: compute_resource_property_type compute_resource_property_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property_type
    ADD CONSTRAINT compute_resource_property_type_pkey PRIMARY KEY (id);


--
-- Name: discussion_comment discussion_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_comment
    ADD CONSTRAINT discussion_comment_pkey PRIMARY KEY (id);


--
-- Name: discussion_topic discussion_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_topic
    ADD CONSTRAINT discussion_topic_pkey PRIMARY KEY (id);


--
-- Name: file_data file_data_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.file_data
    ADD CONSTRAINT file_data_pkey PRIMARY KEY (id);


--
-- Name: file file_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_pkey PRIMARY KEY (id);


--
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- Name: implementation_package_file implementation_package_file_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package_file
    ADD CONSTRAINT implementation_package_file_pkey PRIMARY KEY (implementation_package_id);


--
-- Name: implementation_package implementation_package_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package
    ADD CONSTRAINT implementation_package_pkey PRIMARY KEY (id);


--
-- Name: implementation implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT implementation_pkey PRIMARY KEY (id);


--
-- Name: implementation_publication implementation_publication_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_publication
    ADD CONSTRAINT implementation_publication_pkey PRIMARY KEY (implementation_id, publication_id);


--
-- Name: implementation_revisions implementation_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_revisions
    ADD CONSTRAINT implementation_revisions_pkey PRIMARY KEY (id, rev);


--
-- Name: implementation_software_platforms implementation_software_platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_software_platforms
    ADD CONSTRAINT implementation_software_platforms_pkey PRIMARY KEY (implementation_id, software_platform_id);


--
-- Name: implementation_tag implementation_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_tag
    ADD CONSTRAINT implementation_tag_pkey PRIMARY KEY (implementation_id, tag_value);


--
-- Name: knowledge_artifact knowledge_artifact_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.knowledge_artifact
    ADD CONSTRAINT knowledge_artifact_pkey PRIMARY KEY (id);


--
-- Name: knowledge_artifact_revisions knowledge_artifact_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.knowledge_artifact_revisions
    ADD CONSTRAINT knowledge_artifact_revisions_pkey PRIMARY KEY (id, rev);


--
-- Name: learning_method learning_method_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.learning_method
    ADD CONSTRAINT learning_method_pkey PRIMARY KEY (id);


--
-- Name: pattern_relation pattern_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation
    ADD CONSTRAINT pattern_relation_pkey PRIMARY KEY (id);


--
-- Name: pattern_relation_type pattern_relation_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation_type
    ADD CONSTRAINT pattern_relation_type_pkey PRIMARY KEY (id);


--
-- Name: pattern_uris_aud pattern_uris_aud_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_uris_aud
    ADD CONSTRAINT pattern_uris_aud_pkey PRIMARY KEY (rev, implementation_id, pattern_uri);


--
-- Name: pattern_uris pattern_uris_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_uris
    ADD CONSTRAINT pattern_uris_pkey PRIMARY KEY (implementation_id, pattern_uri);


--
-- Name: problem_type problem_type_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.problem_type
    ADD CONSTRAINT problem_type_pkey PRIMARY KEY (id);


--
-- Name: publication publication_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT publication_pkey PRIMARY KEY (id);


--
-- Name: quantum_algorithm quantum_algorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm
    ADD CONSTRAINT quantum_algorithm_pkey PRIMARY KEY (id);


--
-- Name: quantum_algorithm_revisions quantum_algorithm_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm_revisions
    ADD CONSTRAINT quantum_algorithm_revisions_pkey PRIMARY KEY (id, rev);


--
-- Name: quantum_implementation quantum_implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation
    ADD CONSTRAINT quantum_implementation_pkey PRIMARY KEY (id);


--
-- Name: quantum_implementation_revisions quantum_implementation_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation_revisions
    ADD CONSTRAINT quantum_implementation_revisions_pkey PRIMARY KEY (id, rev);


--
-- Name: revinfo revinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.revinfo
    ADD CONSTRAINT revinfo_pkey PRIMARY KEY (rev);


--
-- Name: sketch sketch_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.sketch
    ADD CONSTRAINT sketch_pkey PRIMARY KEY (id);


--
-- Name: software_platform_cloud_services software_platform_cloud_services_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform_cloud_services
    ADD CONSTRAINT software_platform_cloud_services_pkey PRIMARY KEY (software_platform_id, cloud_service_id);


--
-- Name: software_platform software_platform_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform
    ADD CONSTRAINT software_platform_pkey PRIMARY KEY (id);


--
-- Name: software_platforms_compute_resources software_platforms_compute_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platforms_compute_resources
    ADD CONSTRAINT software_platforms_compute_resources_pkey PRIMARY KEY (software_platform_id, compute_resource_id);


--
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (value);


--
-- Name: tosca_application tosca_application_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.tosca_application
    ADD CONSTRAINT tosca_application_pkey PRIMARY KEY (id);


--
-- Name: tosca_application_revisions tosca_application_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.tosca_application_revisions
    ADD CONSTRAINT tosca_application_revisions_pkey PRIMARY KEY (id, rev);


--
-- Name: image uk_jqvkpvfxplx2ikya5bme8jpk2; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT uk_jqvkpvfxplx2ikya5bme8jpk2 UNIQUE (sketch_id);


--
-- Name: file uk_n5wsqy9uctlh9ihpgvm5evrqi; Type: CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT uk_n5wsqy9uctlh9ihpgvm5evrqi UNIQUE (fileurl);


--
-- Name: sketch fk1127ygjhclmhfr5twkvoymhum; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.sketch
    ADD CONSTRAINT fk1127ygjhclmhfr5twkvoymhum FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- Name: pattern_relation fk2hap3a25ae7i3n1ir2srffhq9; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation
    ADD CONSTRAINT fk2hap3a25ae7i3n1ir2srffhq9 FOREIGN KEY (pattern_relation_type_id) REFERENCES public.pattern_relation_type(id);


--
-- Name: algorithm_tag fk2k599458h8m62np4m75ukcvm0; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_tag
    ADD CONSTRAINT fk2k599458h8m62np4m75ukcvm0 FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- Name: publication fk2m528opx84shvoyy4fxpok7t5; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT fk2m528opx84shvoyy4fxpok7t5 FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- Name: software_platform_cloud_services fk33jvx36u9tc8y97amj90aq4p5; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform_cloud_services
    ADD CONSTRAINT fk33jvx36u9tc8y97amj90aq4p5 FOREIGN KEY (cloud_service_id) REFERENCES public.cloud_service(id);


--
-- Name: software_platforms_compute_resources fk3idoyrtaifamtyfdqr5ewvdtv; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platforms_compute_resources
    ADD CONSTRAINT fk3idoyrtaifamtyfdqr5ewvdtv FOREIGN KEY (compute_resource_id) REFERENCES public.compute_resource(id);


--
-- Name: compute_resource_property fk3ilvgc8wusnfhy0cgl8cvqsrs; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fk3ilvgc8wusnfhy0cgl8cvqsrs FOREIGN KEY (compute_resource_property_type_id) REFERENCES public.compute_resource_property_type(id);


--
-- Name: classic_implementation fk3je79xy3m07m7de0rxt3pts8d; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation
    ADD CONSTRAINT fk3je79xy3m07m7de0rxt3pts8d FOREIGN KEY (algorithm_id) REFERENCES public.classic_algorithm(id);


--
-- Name: implementation_tag fk3p2fgn1pojdw4kr6l4t6w3l87; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_tag
    ADD CONSTRAINT fk3p2fgn1pojdw4kr6l4t6w3l87 FOREIGN KEY (tag_value) REFERENCES public.tag(value);


--
-- Name: quantum_implementation_revisions fk3so4s4qwyqav6839107xqyips; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation_revisions
    ADD CONSTRAINT fk3so4s4qwyqav6839107xqyips FOREIGN KEY (id, rev) REFERENCES public.implementation_revisions(id, rev);


--
-- Name: implementation_package_file fk3uh0o0od9c1eovvua5trb3pp1; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package_file
    ADD CONSTRAINT fk3uh0o0od9c1eovvua5trb3pp1 FOREIGN KEY (implementation_package_id) REFERENCES public.implementation_package(id);


--
-- Name: algorithm_application_area fk4kjef0upq0qftpafdd25l7t0c; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_application_area
    ADD CONSTRAINT fk4kjef0upq0qftpafdd25l7t0c FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- Name: algorithm_publication fk4ksdqnqv8lw1685grhv4kjywf; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_publication
    ADD CONSTRAINT fk4ksdqnqv8lw1685grhv4kjywf FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- Name: implementation_package_file fk5atkjjk7le6sb882i7h4tsijv; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package_file
    ADD CONSTRAINT fk5atkjjk7le6sb882i7h4tsijv FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- Name: algorithm_relation fk5p53wf3j277a176t73ef3wuv2; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT fk5p53wf3j277a176t73ef3wuv2 FOREIGN KEY (target_algorithm) REFERENCES public.algorithm(id);


--
-- Name: algorithm_tag fk5skhq8p0k8aso9cl8cds8q3q1; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_tag
    ADD CONSTRAINT fk5skhq8p0k8aso9cl8cds8q3q1 FOREIGN KEY (tag_value) REFERENCES public.tag(value);


--
-- Name: publication_authors fk6iioc1g7j5y16e7vw3x1anodj; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.publication_authors
    ADD CONSTRAINT fk6iioc1g7j5y16e7vw3x1anodj FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- Name: software_platforms_compute_resources fk71k3mlsekeell9ei812sduh8o; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platforms_compute_resources
    ADD CONSTRAINT fk71k3mlsekeell9ei812sduh8o FOREIGN KEY (software_platform_id) REFERENCES public.software_platform(id);


--
-- Name: quantum_implementation fk793p84p7n3qh71le8iqyvchv9; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation
    ADD CONSTRAINT fk793p84p7n3qh71le8iqyvchv9 FOREIGN KEY (algorithm_id) REFERENCES public.quantum_algorithm(id);


--
-- Name: discussion_comment fk7st41tqwtxhelg9euc4y4qqm4; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_comment
    ADD CONSTRAINT fk7st41tqwtxhelg9euc4y4qqm4 FOREIGN KEY (discussion_topic_id) REFERENCES public.discussion_topic(id);


--
-- Name: classic_algorithm_revisions fk8df15f4k8eyh0hvpmtxw6g0fe; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm_revisions
    ADD CONSTRAINT fk8df15f4k8eyh0hvpmtxw6g0fe FOREIGN KEY (id, rev) REFERENCES public.algorithm_revisions(id, rev);


--
-- Name: algorithm_learning_method fk8jqnda2x7hwqfd0ssnrfphkir; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_learning_method
    ADD CONSTRAINT fk8jqnda2x7hwqfd0ssnrfphkir FOREIGN KEY (learning_method_id) REFERENCES public.learning_method(id);


--
-- Name: pattern_relation fk9by0eabrmyinhakiirdy7finm; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_relation
    ADD CONSTRAINT fk9by0eabrmyinhakiirdy7finm FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- Name: algorithm_relation fk9cbjg9pmuosnnifvfqqnu77aa; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT fk9cbjg9pmuosnnifvfqqnu77aa FOREIGN KEY (source_algorithm) REFERENCES public.algorithm(id);


--
-- Name: implementation fkahksfpw97e0c9jet3vu489ohb; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT fkahksfpw97e0c9jet3vu489ohb FOREIGN KEY (implemented_algorithm_id) REFERENCES public.algorithm(id);


--
-- Name: classic_implementation_revisions fkbeqxuyccy9rf3a7ougkr9fqcg; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation_revisions
    ADD CONSTRAINT fkbeqxuyccy9rf3a7ougkr9fqcg FOREIGN KEY (id, rev) REFERENCES public.implementation_revisions(id, rev);


--
-- Name: algorithm_problem_type fkbqoq02m0qsrxllbnb0d7k52vi; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_problem_type
    ADD CONSTRAINT fkbqoq02m0qsrxllbnb0d7k52vi FOREIGN KEY (problem_type_id) REFERENCES public.problem_type(id);


--
-- Name: algorithm_learning_method fkcgobnecnyo8tn6y7yybhkhqm0; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_learning_method
    ADD CONSTRAINT fkcgobnecnyo8tn6y7yybhkhqm0 FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- Name: implementation_publication fkch41y23ssi6oj169speo5dxoy; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_publication
    ADD CONSTRAINT fkch41y23ssi6oj169speo5dxoy FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- Name: algorithm_problem_type fkd383l41lvcuvooum4re1trytr; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_problem_type
    ADD CONSTRAINT fkd383l41lvcuvooum4re1trytr FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- Name: cloud_services_compute_resources fkdyyng98y8qeuks8qjfeg9jime; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_services_compute_resources
    ADD CONSTRAINT fkdyyng98y8qeuks8qjfeg9jime FOREIGN KEY (cloud_service_id) REFERENCES public.cloud_service(id);


--
-- Name: knowledge_artifact_revisions fkeb7ea1o9q4mtn2l9fdd0ixude; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.knowledge_artifact_revisions
    ADD CONSTRAINT fkeb7ea1o9q4mtn2l9fdd0ixude FOREIGN KEY (rev) REFERENCES public.revinfo(rev);


--
-- Name: discussion_topic fkeet74vudcv9mlofm7f2ttpa4p; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_topic
    ADD CONSTRAINT fkeet74vudcv9mlofm7f2ttpa4p FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- Name: sketch fkehjal9c57gebep6lsrrfkbq61; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.sketch
    ADD CONSTRAINT fkehjal9c57gebep6lsrrfkbq61 FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- Name: algorithm_publication fkeks3idqeo7ys2f6duiny918dr; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_publication
    ADD CONSTRAINT fkeks3idqeo7ys2f6duiny918dr FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- Name: implementation_software_platforms fkf2yb5f1c98uplaxylmmgpms91; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_software_platforms
    ADD CONSTRAINT fkf2yb5f1c98uplaxylmmgpms91 FOREIGN KEY (software_platform_id) REFERENCES public.software_platform(id);


--
-- Name: classic_algorithm fkf8hl76cv1lapta56g1vjdyyow; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_algorithm
    ADD CONSTRAINT fkf8hl76cv1lapta56g1vjdyyow FOREIGN KEY (id) REFERENCES public.algorithm(id);


--
-- Name: classic_implementation fkftorvyxvkj4ok7apanwd4n5m6; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.classic_implementation
    ADD CONSTRAINT fkftorvyxvkj4ok7apanwd4n5m6 FOREIGN KEY (id) REFERENCES public.implementation(id);


--
-- Name: implementation_tag fkgllsrswnpwu9bfhvcghyj19oo; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_tag
    ADD CONSTRAINT fkgllsrswnpwu9bfhvcghyj19oo FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- Name: pattern_uris_aud fkgm5i3dyhygku0ahrfycuhl3sk; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_uris_aud
    ADD CONSTRAINT fkgm5i3dyhygku0ahrfycuhl3sk FOREIGN KEY (rev) REFERENCES public.revinfo(rev);


--
-- Name: algorithm fkh714p5lo5u77x1bc14s4g8b3t; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm
    ADD CONSTRAINT fkh714p5lo5u77x1bc14s4g8b3t FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- Name: discussion_comment fkhvhl406lwx2yrn62u7pdf5se5; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_comment
    ADD CONSTRAINT fkhvhl406lwx2yrn62u7pdf5se5 FOREIGN KEY (reply_to_id) REFERENCES public.discussion_comment(id);


--
-- Name: compute_resource_property fkk7lt36lixpn6vtn3bnwk3i1e3; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fkk7lt36lixpn6vtn3bnwk3i1e3 FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- Name: quantum_algorithm fkksxr1gyvxadejxfhfrfkh5m1; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm
    ADD CONSTRAINT fkksxr1gyvxadejxfhfrfkh5m1 FOREIGN KEY (id) REFERENCES public.algorithm(id);


--
-- Name: software_platform_cloud_services fkl8r1e28p0o06sar2ujke0yx4o; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.software_platform_cloud_services
    ADD CONSTRAINT fkl8r1e28p0o06sar2ujke0yx4o FOREIGN KEY (software_platform_id) REFERENCES public.software_platform(id);


--
-- Name: file_data fklhlj7vm95enmdk81fj3lain36; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.file_data
    ADD CONSTRAINT fklhlj7vm95enmdk81fj3lain36 FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- Name: image fkltsrliwwi922e2s4gng5m6wqx; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkltsrliwwi922e2s4gng5m6wqx FOREIGN KEY (sketch_id) REFERENCES public.sketch(id);


--
-- Name: tosca_application_revisions fklu7vxdc1vikl8mjxixrc44hbg; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.tosca_application_revisions
    ADD CONSTRAINT fklu7vxdc1vikl8mjxixrc44hbg FOREIGN KEY (rev) REFERENCES public.revinfo(rev);


--
-- Name: implementation_publication fklv2uiqj4rrymnmqbuudet7fjb; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_publication
    ADD CONSTRAINT fklv2uiqj4rrymnmqbuudet7fjb FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- Name: quantum_implementation fkm4d7ussdf2l8kf5627q84k7ld; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_implementation
    ADD CONSTRAINT fkm4d7ussdf2l8kf5627q84k7ld FOREIGN KEY (id) REFERENCES public.implementation(id);


--
-- Name: compute_resource_property fkmnnvywwb2eqox08q7x6nnyscf; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fkmnnvywwb2eqox08q7x6nnyscf FOREIGN KEY (algorithm_id) REFERENCES public.algorithm(id);


--
-- Name: pattern_uris fknnipprfcfwr83abjhq95xj0em; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.pattern_uris
    ADD CONSTRAINT fknnipprfcfwr83abjhq95xj0em FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- Name: implementation fknqdt30hn1h4sm25ah5gdi38u0; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT fknqdt30hn1h4sm25ah5gdi38u0 FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- Name: discussion_topic fknx1gpextw0013t1hb0lett1sk; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.discussion_topic
    ADD CONSTRAINT fknx1gpextw0013t1hb0lett1sk FOREIGN KEY (knowledge_artifact_id) REFERENCES public.knowledge_artifact(id);


--
-- Name: algorithm_revisions fkot3e5cot23vsjlm3gu3qjxbdp; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_revisions
    ADD CONSTRAINT fkot3e5cot23vsjlm3gu3qjxbdp FOREIGN KEY (id, rev) REFERENCES public.knowledge_artifact_revisions(id, rev);


--
-- Name: implementation_package fkp1jt3ecfmmfooabum8bmbqcdw; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_package
    ADD CONSTRAINT fkp1jt3ecfmmfooabum8bmbqcdw FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- Name: implementation_revisions fkpuly5cychyseh24dwlcc3ortc; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_revisions
    ADD CONSTRAINT fkpuly5cychyseh24dwlcc3ortc FOREIGN KEY (id, rev) REFERENCES public.knowledge_artifact_revisions(id, rev);


--
-- Name: cloud_services_compute_resources fkqklkuiospnsfn6n5k7uh57mwh; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.cloud_services_compute_resources
    ADD CONSTRAINT fkqklkuiospnsfn6n5k7uh57mwh FOREIGN KEY (compute_resource_id) REFERENCES public.compute_resource(id);


--
-- Name: quantum_algorithm_revisions fkqtm60vujwu1ojuryrxavjm97e; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.quantum_algorithm_revisions
    ADD CONSTRAINT fkqtm60vujwu1ojuryrxavjm97e FOREIGN KEY (id, rev) REFERENCES public.algorithm_revisions(id, rev);


--
-- Name: algorithm_application_area fkr5g50nihf4cl2e6cwv4hfs1p; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_application_area
    ADD CONSTRAINT fkr5g50nihf4cl2e6cwv4hfs1p FOREIGN KEY (application_area_id) REFERENCES public.application_area(id);


--
-- Name: image fkrgn16rchq4y9vhhx26m1pj2kh; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkrgn16rchq4y9vhhx26m1pj2kh FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- Name: file fkslri61hv3myrsoy2k83pv29il; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT fkslri61hv3myrsoy2k83pv29il FOREIGN KEY (id) REFERENCES public.knowledge_artifact(id);


--
-- Name: algorithm_relation fksoc9d6qhee9xmia2o80adfymt; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.algorithm_relation
    ADD CONSTRAINT fksoc9d6qhee9xmia2o80adfymt FOREIGN KEY (algorithm_relation_type_id) REFERENCES public.algorithm_relation_type(id);


--
-- Name: compute_resource_property fktdgysfhlbm4cj20vfw7suap8i; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.compute_resource_property
    ADD CONSTRAINT fktdgysfhlbm4cj20vfw7suap8i FOREIGN KEY (compute_resource_id) REFERENCES public.compute_resource(id);


--
-- Name: implementation_software_platforms fktmwiwx6s8svey7vl5wd1wbp25; Type: FK CONSTRAINT; Schema: public; Owner: planqk
--

ALTER TABLE ONLY public.implementation_software_platforms
    ADD CONSTRAINT fktmwiwx6s8svey7vl5wd1wbp25 FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

