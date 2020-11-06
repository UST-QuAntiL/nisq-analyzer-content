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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: analysis_result; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.analysis_result (
    id uuid NOT NULL,
    analysed_depth integer NOT NULL,
    analysed_width integer NOT NULL,
    implemented_algorithm uuid,
    "time" timestamp without time zone,
    implementation_id uuid,
    qpu_id uuid
);


ALTER TABLE public.analysis_result OWNER TO nisq;

--
-- Name: analysis_result_input_parameters; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.analysis_result_input_parameters (
    analysis_result_id uuid NOT NULL,
    input_parameters character varying(255),
    input_parameters_key character varying(255) NOT NULL
);


ALTER TABLE public.analysis_result_input_parameters OWNER TO nisq;

--
-- Name: execution_result; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.execution_result (
    id uuid NOT NULL,
    analyzed_depth integer NOT NULL,
    analyzed_width integer NOT NULL,
    result text,
    status integer,
    status_code character varying(255),
    executed_implementation_id uuid,
    executing_qpu_id uuid,
    analysis_result_id uuid
);


ALTER TABLE public.execution_result OWNER TO nisq;

--
-- Name: execution_result_input_parameters; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.execution_result_input_parameters (
    execution_result_id uuid NOT NULL,
    input_parameters character varying(255),
    input_parameters_key character varying(255) NOT NULL
);


ALTER TABLE public.execution_result_input_parameters OWNER TO nisq;

--
-- Name: implementation; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.implementation (
    id uuid NOT NULL,
    depth_rule character varying(255),
    file_location character varying(255),
    implemented_algorithm uuid,
    name character varying(255),
    selection_rule character varying(255),
    width_rule character varying(255),
    sdk_id uuid
);


ALTER TABLE public.implementation OWNER TO nisq;

--
-- Name: implementation_execution_results; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.implementation_execution_results (
    implementation_id uuid NOT NULL,
    execution_results_id uuid NOT NULL
);


ALTER TABLE public.implementation_execution_results OWNER TO nisq;

--
-- Name: implementation_input_parameters; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.implementation_input_parameters (
    implementation_id uuid NOT NULL,
    input_parameters_id uuid NOT NULL
);


ALTER TABLE public.implementation_input_parameters OWNER TO nisq;

--
-- Name: implementation_output_parameters; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.implementation_output_parameters (
    implementation_id uuid NOT NULL,
    output_parameters_id uuid NOT NULL
);


ALTER TABLE public.implementation_output_parameters OWNER TO nisq;

--
-- Name: parameter; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.parameter (
    id uuid NOT NULL,
    description character varying(255),
    name character varying(255),
    restriction character varying(255),
    type integer
);


ALTER TABLE public.parameter OWNER TO nisq;

--
-- Name: qpu; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.qpu (
    id uuid NOT NULL,
    max_gate_time real NOT NULL,
    name character varying(255),
    qubit_count integer NOT NULL,
    t1 real NOT NULL
);


ALTER TABLE public.qpu OWNER TO nisq;

--
-- Name: qpu_sdk; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.qpu_sdk (
    qpu_id uuid NOT NULL,
    sdk_id uuid NOT NULL
);


ALTER TABLE public.qpu_sdk OWNER TO nisq;

--
-- Name: sdk; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.sdk (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.sdk OWNER TO nisq;

--
-- Name: analysis_result_input_parameters analysis_result_input_parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.analysis_result_input_parameters
    ADD CONSTRAINT analysis_result_input_parameters_pkey PRIMARY KEY (analysis_result_id, input_parameters_key);


--
-- Name: analysis_result analysis_result_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.analysis_result
    ADD CONSTRAINT analysis_result_pkey PRIMARY KEY (id);


--
-- Name: execution_result_input_parameters execution_result_input_parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result_input_parameters
    ADD CONSTRAINT execution_result_input_parameters_pkey PRIMARY KEY (execution_result_id, input_parameters_key);


--
-- Name: execution_result execution_result_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result
    ADD CONSTRAINT execution_result_pkey PRIMARY KEY (id);


--
-- Name: implementation implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT implementation_pkey PRIMARY KEY (id);


--
-- Name: parameter parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (id);


--
-- Name: qpu qpu_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.qpu
    ADD CONSTRAINT qpu_pkey PRIMARY KEY (id);


--
-- Name: sdk sdk_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.sdk
    ADD CONSTRAINT sdk_pkey PRIMARY KEY (id);


--
-- Name: implementation_input_parameters uk_cok59x3vgd8xwhb4fwav79t10; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_input_parameters
    ADD CONSTRAINT uk_cok59x3vgd8xwhb4fwav79t10 UNIQUE (input_parameters_id);


--
-- Name: implementation_output_parameters uk_qnecksht5j0iksderlbdyx4v; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_output_parameters
    ADD CONSTRAINT uk_qnecksht5j0iksderlbdyx4v UNIQUE (output_parameters_id);


--
-- Name: implementation_execution_results uk_qq2knbyl7yfs28gbcga9oucj; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_execution_results
    ADD CONSTRAINT uk_qq2knbyl7yfs28gbcga9oucj UNIQUE (execution_results_id);


--
-- Name: sdk uk_tie0wxox8cj4d5nrmn1y9wif1; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.sdk
    ADD CONSTRAINT uk_tie0wxox8cj4d5nrmn1y9wif1 UNIQUE (name);


--
-- Name: analysis_result_input_parameters fk17iggcapwf03u4jjs8saabweb; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.analysis_result_input_parameters
    ADD CONSTRAINT fk17iggcapwf03u4jjs8saabweb FOREIGN KEY (analysis_result_id) REFERENCES public.analysis_result(id);


--
-- Name: implementation_input_parameters fk2ac09oep1t8yr2wo51yk5l9ht; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_input_parameters
    ADD CONSTRAINT fk2ac09oep1t8yr2wo51yk5l9ht FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- Name: implementation_input_parameters fk66ltck2e65pwb4a0sel5rq8f1; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_input_parameters
    ADD CONSTRAINT fk66ltck2e65pwb4a0sel5rq8f1 FOREIGN KEY (input_parameters_id) REFERENCES public.parameter(id);


--
-- Name: analysis_result fk6ikotsmrk7h12vk72fhhro1w; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.analysis_result
    ADD CONSTRAINT fk6ikotsmrk7h12vk72fhhro1w FOREIGN KEY (qpu_id) REFERENCES public.qpu(id);


--
-- Name: implementation_output_parameters fk9dfdtclo8y0v87b1iebr3p6lw; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_output_parameters
    ADD CONSTRAINT fk9dfdtclo8y0v87b1iebr3p6lw FOREIGN KEY (output_parameters_id) REFERENCES public.parameter(id);


--
-- Name: implementation_execution_results fkcbsjlbnwq7x0gvltksi1y1205; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_execution_results
    ADD CONSTRAINT fkcbsjlbnwq7x0gvltksi1y1205 FOREIGN KEY (execution_results_id) REFERENCES public.execution_result(id);


--
-- Name: qpu_sdk fkd0kb6d0d6ejxcwmiwi2sd2s4e; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.qpu_sdk
    ADD CONSTRAINT fkd0kb6d0d6ejxcwmiwi2sd2s4e FOREIGN KEY (sdk_id) REFERENCES public.sdk(id);


--
-- Name: implementation_output_parameters fkhor56dtojk0mt63jf8hi565gx; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_output_parameters
    ADD CONSTRAINT fkhor56dtojk0mt63jf8hi565gx FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- Name: execution_result fkie5mgayvkqvlay8eylv01r29g; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result
    ADD CONSTRAINT fkie5mgayvkqvlay8eylv01r29g FOREIGN KEY (executed_implementation_id) REFERENCES public.implementation(id);


--
-- Name: qpu_sdk fkj2odpkvccrctv2nycenj12hml; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.qpu_sdk
    ADD CONSTRAINT fkj2odpkvccrctv2nycenj12hml FOREIGN KEY (qpu_id) REFERENCES public.qpu(id);


--
-- Name: analysis_result fkkg46r78o8o1brxnvbrlvg1mqo; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.analysis_result
    ADD CONSTRAINT fkkg46r78o8o1brxnvbrlvg1mqo FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- Name: execution_result_input_parameters fkkvyn4g4vs5uo3tsm1rsa8s1hd; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result_input_parameters
    ADD CONSTRAINT fkkvyn4g4vs5uo3tsm1rsa8s1hd FOREIGN KEY (execution_result_id) REFERENCES public.execution_result(id);


--
-- Name: execution_result fkld7avvfa0sgn4vefk0hycr3pq; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result
    ADD CONSTRAINT fkld7avvfa0sgn4vefk0hycr3pq FOREIGN KEY (analysis_result_id) REFERENCES public.analysis_result(id);


--
-- Name: implementation fkn33hfev7eeu6je19kat24j6b0; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT fkn33hfev7eeu6je19kat24j6b0 FOREIGN KEY (sdk_id) REFERENCES public.sdk(id);


--
-- Name: execution_result fkofh9mmuaonk6ci7orkukw9eo4; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result
    ADD CONSTRAINT fkofh9mmuaonk6ci7orkukw9eo4 FOREIGN KEY (executing_qpu_id) REFERENCES public.qpu(id);


--
-- Name: implementation_execution_results fkt54sku19teb6etv0a9lcitk6g; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_execution_results
    ADD CONSTRAINT fkt54sku19teb6etv0a9lcitk6g FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- PostgreSQL database dump complete
--

