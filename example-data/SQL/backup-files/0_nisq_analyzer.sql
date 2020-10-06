--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 13.0 (Ubuntu 13.0-1.pgdg18.04+1)

-- Started on 2020-10-06 14:30:32 CEST

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
-- TOC entry 202 (class 1259 OID 16773)
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
    executing_qpu_id uuid
);


ALTER TABLE public.execution_result OWNER TO nisq;

--
-- TOC entry 203 (class 1259 OID 16781)
-- Name: execution_result_input_parameters; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.execution_result_input_parameters (
    execution_result_id uuid NOT NULL,
    input_parameters character varying(255),
    input_parameters_key character varying(255) NOT NULL
);


ALTER TABLE public.execution_result_input_parameters OWNER TO nisq;

--
-- TOC entry 204 (class 1259 OID 16789)
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
-- TOC entry 205 (class 1259 OID 16797)
-- Name: implementation_execution_results; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.implementation_execution_results (
    implementation_id uuid NOT NULL,
    execution_results_id uuid NOT NULL
);


ALTER TABLE public.implementation_execution_results OWNER TO nisq;

--
-- TOC entry 206 (class 1259 OID 16800)
-- Name: implementation_input_parameters; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.implementation_input_parameters (
    implementation_id uuid NOT NULL,
    input_parameters_id uuid NOT NULL
);


ALTER TABLE public.implementation_input_parameters OWNER TO nisq;

--
-- TOC entry 207 (class 1259 OID 16803)
-- Name: implementation_output_parameters; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.implementation_output_parameters (
    implementation_id uuid NOT NULL,
    output_parameters_id uuid NOT NULL
);


ALTER TABLE public.implementation_output_parameters OWNER TO nisq;

--
-- TOC entry 208 (class 1259 OID 16806)
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
-- TOC entry 209 (class 1259 OID 16814)
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
-- TOC entry 210 (class 1259 OID 16819)
-- Name: qpu_sdk; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.qpu_sdk (
    qpu_id uuid NOT NULL,
    sdk_id uuid NOT NULL
);


ALTER TABLE public.qpu_sdk OWNER TO nisq;

--
-- TOC entry 211 (class 1259 OID 16822)
-- Name: sdk; Type: TABLE; Schema: public; Owner: nisq
--

CREATE TABLE public.sdk (
    id uuid NOT NULL,
    name character varying(255)
);


ALTER TABLE public.sdk OWNER TO nisq;

--
-- TOC entry 2818 (class 2606 OID 16788)
-- Name: execution_result_input_parameters execution_result_input_parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result_input_parameters
    ADD CONSTRAINT execution_result_input_parameters_pkey PRIMARY KEY (execution_result_id, input_parameters_key);


--
-- TOC entry 2816 (class 2606 OID 16780)
-- Name: execution_result execution_result_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result
    ADD CONSTRAINT execution_result_pkey PRIMARY KEY (id);


--
-- TOC entry 2820 (class 2606 OID 16796)
-- Name: implementation implementation_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT implementation_pkey PRIMARY KEY (id);


--
-- TOC entry 2828 (class 2606 OID 16813)
-- Name: parameter parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 16818)
-- Name: qpu qpu_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.qpu
    ADD CONSTRAINT qpu_pkey PRIMARY KEY (id);


--
-- TOC entry 2832 (class 2606 OID 16826)
-- Name: sdk sdk_pkey; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.sdk
    ADD CONSTRAINT sdk_pkey PRIMARY KEY (id);


--
-- TOC entry 2824 (class 2606 OID 16830)
-- Name: implementation_input_parameters uk_cok59x3vgd8xwhb4fwav79t10; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_input_parameters
    ADD CONSTRAINT uk_cok59x3vgd8xwhb4fwav79t10 UNIQUE (input_parameters_id);


--
-- TOC entry 2826 (class 2606 OID 16832)
-- Name: implementation_output_parameters uk_qnecksht5j0iksderlbdyx4v; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_output_parameters
    ADD CONSTRAINT uk_qnecksht5j0iksderlbdyx4v UNIQUE (output_parameters_id);


--
-- TOC entry 2822 (class 2606 OID 16828)
-- Name: implementation_execution_results uk_qq2knbyl7yfs28gbcga9oucj; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_execution_results
    ADD CONSTRAINT uk_qq2knbyl7yfs28gbcga9oucj UNIQUE (execution_results_id);


--
-- TOC entry 2834 (class 2606 OID 16834)
-- Name: sdk uk_tie0wxox8cj4d5nrmn1y9wif1; Type: CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.sdk
    ADD CONSTRAINT uk_tie0wxox8cj4d5nrmn1y9wif1 UNIQUE (name);


--
-- TOC entry 2842 (class 2606 OID 16870)
-- Name: implementation_input_parameters fk2ac09oep1t8yr2wo51yk5l9ht; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_input_parameters
    ADD CONSTRAINT fk2ac09oep1t8yr2wo51yk5l9ht FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 2841 (class 2606 OID 16865)
-- Name: implementation_input_parameters fk66ltck2e65pwb4a0sel5rq8f1; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_input_parameters
    ADD CONSTRAINT fk66ltck2e65pwb4a0sel5rq8f1 FOREIGN KEY (input_parameters_id) REFERENCES public.parameter(id);


--
-- TOC entry 2843 (class 2606 OID 16875)
-- Name: implementation_output_parameters fk9dfdtclo8y0v87b1iebr3p6lw; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_output_parameters
    ADD CONSTRAINT fk9dfdtclo8y0v87b1iebr3p6lw FOREIGN KEY (output_parameters_id) REFERENCES public.parameter(id);


--
-- TOC entry 2839 (class 2606 OID 16855)
-- Name: implementation_execution_results fkcbsjlbnwq7x0gvltksi1y1205; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_execution_results
    ADD CONSTRAINT fkcbsjlbnwq7x0gvltksi1y1205 FOREIGN KEY (execution_results_id) REFERENCES public.execution_result(id);


--
-- TOC entry 2845 (class 2606 OID 16885)
-- Name: qpu_sdk fkd0kb6d0d6ejxcwmiwi2sd2s4e; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.qpu_sdk
    ADD CONSTRAINT fkd0kb6d0d6ejxcwmiwi2sd2s4e FOREIGN KEY (sdk_id) REFERENCES public.sdk(id);


--
-- TOC entry 2844 (class 2606 OID 16880)
-- Name: implementation_output_parameters fkhor56dtojk0mt63jf8hi565gx; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_output_parameters
    ADD CONSTRAINT fkhor56dtojk0mt63jf8hi565gx FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 2835 (class 2606 OID 16835)
-- Name: execution_result fkie5mgayvkqvlay8eylv01r29g; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result
    ADD CONSTRAINT fkie5mgayvkqvlay8eylv01r29g FOREIGN KEY (executed_implementation_id) REFERENCES public.implementation(id);


--
-- TOC entry 2846 (class 2606 OID 16890)
-- Name: qpu_sdk fkj2odpkvccrctv2nycenj12hml; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.qpu_sdk
    ADD CONSTRAINT fkj2odpkvccrctv2nycenj12hml FOREIGN KEY (qpu_id) REFERENCES public.qpu(id);


--
-- TOC entry 2837 (class 2606 OID 16845)
-- Name: execution_result_input_parameters fkkvyn4g4vs5uo3tsm1rsa8s1hd; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result_input_parameters
    ADD CONSTRAINT fkkvyn4g4vs5uo3tsm1rsa8s1hd FOREIGN KEY (execution_result_id) REFERENCES public.execution_result(id);


--
-- TOC entry 2838 (class 2606 OID 16850)
-- Name: implementation fkn33hfev7eeu6je19kat24j6b0; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation
    ADD CONSTRAINT fkn33hfev7eeu6je19kat24j6b0 FOREIGN KEY (sdk_id) REFERENCES public.sdk(id);


--
-- TOC entry 2836 (class 2606 OID 16840)
-- Name: execution_result fkofh9mmuaonk6ci7orkukw9eo4; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.execution_result
    ADD CONSTRAINT fkofh9mmuaonk6ci7orkukw9eo4 FOREIGN KEY (executing_qpu_id) REFERENCES public.qpu(id);


--
-- TOC entry 2840 (class 2606 OID 16860)
-- Name: implementation_execution_results fkt54sku19teb6etv0a9lcitk6g; Type: FK CONSTRAINT; Schema: public; Owner: nisq
--

ALTER TABLE ONLY public.implementation_execution_results
    ADD CONSTRAINT fkt54sku19teb6etv0a9lcitk6g FOREIGN KEY (implementation_id) REFERENCES public.implementation(id);


-- Completed on 2020-10-06 14:30:32 CEST

--
-- PostgreSQL database dump complete
--

