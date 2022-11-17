--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Debian 12.5-1.pgdg100+1)
-- Dumped by pg_dump version 12.5 (Debian 12.5-1.pgdg100+1)

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

ALTER TABLE ONLY public.implementation_software_platforms DROP CONSTRAINT fktmwiwx6s8svey7vl5wd1wbp25;
ALTER TABLE ONLY public.compute_resource_property DROP CONSTRAINT fktdgysfhlbm4cj20vfw7suap8i;
ALTER TABLE ONLY public.algorithm_relation DROP CONSTRAINT fksoc9d6qhee9xmia2o80adfymt;
ALTER TABLE ONLY public.file DROP CONSTRAINT fkslri61hv3myrsoy2k83pv29il;
ALTER TABLE ONLY public.image DROP CONSTRAINT fkrgn16rchq4y9vhhx26m1pj2kh;
ALTER TABLE ONLY public.algorithm_application_area DROP CONSTRAINT fkr5g50nihf4cl2e6cwv4hfs1p;
ALTER TABLE ONLY public.quantum_algorithm_revisions DROP CONSTRAINT fkqtm60vujwu1ojuryrxavjm97e;
ALTER TABLE ONLY public.cloud_services_compute_resources DROP CONSTRAINT fkqklkuiospnsfn6n5k7uh57mwh;
ALTER TABLE ONLY public.implementation_revisions DROP CONSTRAINT fkpuly5cychyseh24dwlcc3ortc;
ALTER TABLE ONLY public.implementation_package DROP CONSTRAINT fkp1jt3ecfmmfooabum8bmbqcdw;
ALTER TABLE ONLY public.algorithm_revisions DROP CONSTRAINT fkot3e5cot23vsjlm3gu3qjxbdp;
ALTER TABLE ONLY public.discussion_topic DROP CONSTRAINT fknx1gpextw0013t1hb0lett1sk;
ALTER TABLE ONLY public.implementation DROP CONSTRAINT fknqdt30hn1h4sm25ah5gdi38u0;
ALTER TABLE ONLY public.compute_resource_property DROP CONSTRAINT fkmnnvywwb2eqox08q7x6nnyscf;
ALTER TABLE ONLY public.quantum_implementation DROP CONSTRAINT fkm4d7ussdf2l8kf5627q84k7ld;
ALTER TABLE ONLY public.implementation_publication DROP CONSTRAINT fklv2uiqj4rrymnmqbuudet7fjb;
ALTER TABLE ONLY public.tosca_application_revisions DROP CONSTRAINT fklu7vxdc1vikl8mjxixrc44hbg;
ALTER TABLE ONLY public.image DROP CONSTRAINT fkltsrliwwi922e2s4gng5m6wqx;
ALTER TABLE ONLY public.software_platform_cloud_services DROP CONSTRAINT fkl8r1e28p0o06sar2ujke0yx4o;
ALTER TABLE ONLY public.quantum_algorithm DROP CONSTRAINT fkksxr1gyvxadejxfhfrfkh5m1;
ALTER TABLE ONLY public.compute_resource_property DROP CONSTRAINT fkk7lt36lixpn6vtn3bnwk3i1e3;
ALTER TABLE ONLY public.discussion_comment DROP CONSTRAINT fkhvhl406lwx2yrn62u7pdf5se5;
ALTER TABLE ONLY public.algorithm DROP CONSTRAINT fkh714p5lo5u77x1bc14s4g8b3t;
ALTER TABLE ONLY public.implementation_tag DROP CONSTRAINT fkgllsrswnpwu9bfhvcghyj19oo;
ALTER TABLE ONLY public.classic_implementation DROP CONSTRAINT fkftorvyxvkj4ok7apanwd4n5m6;
ALTER TABLE ONLY public.classic_algorithm DROP CONSTRAINT fkf8hl76cv1lapta56g1vjdyyow;
ALTER TABLE ONLY public.implementation_software_platforms DROP CONSTRAINT fkf2yb5f1c98uplaxylmmgpms91;
ALTER TABLE ONLY public.algorithm_publication DROP CONSTRAINT fkeks3idqeo7ys2f6duiny918dr;
ALTER TABLE ONLY public.sketch DROP CONSTRAINT fkehjal9c57gebep6lsrrfkbq61;
ALTER TABLE ONLY public.discussion_topic DROP CONSTRAINT fkeet74vudcv9mlofm7f2ttpa4p;
ALTER TABLE ONLY public.knowledge_artifact_revisions DROP CONSTRAINT fkeb7ea1o9q4mtn2l9fdd0ixude;
ALTER TABLE ONLY public.cloud_services_compute_resources DROP CONSTRAINT fkdyyng98y8qeuks8qjfeg9jime;
ALTER TABLE ONLY public.algorithm_problem_type DROP CONSTRAINT fkd383l41lvcuvooum4re1trytr;
ALTER TABLE ONLY public.implementation_publication DROP CONSTRAINT fkch41y23ssi6oj169speo5dxoy;
ALTER TABLE ONLY public.algorithm_learning_method DROP CONSTRAINT fkcgobnecnyo8tn6y7yybhkhqm0;
ALTER TABLE ONLY public.algorithm_problem_type DROP CONSTRAINT fkbqoq02m0qsrxllbnb0d7k52vi;
ALTER TABLE ONLY public.classic_implementation_revisions DROP CONSTRAINT fkbeqxuyccy9rf3a7ougkr9fqcg;
ALTER TABLE ONLY public.implementation DROP CONSTRAINT fkahksfpw97e0c9jet3vu489ohb;
ALTER TABLE ONLY public.algorithm_relation DROP CONSTRAINT fk9cbjg9pmuosnnifvfqqnu77aa;
ALTER TABLE ONLY public.pattern_relation DROP CONSTRAINT fk9by0eabrmyinhakiirdy7finm;
ALTER TABLE ONLY public.algorithm_learning_method DROP CONSTRAINT fk8jqnda2x7hwqfd0ssnrfphkir;
ALTER TABLE ONLY public.classic_algorithm_revisions DROP CONSTRAINT fk8df15f4k8eyh0hvpmtxw6g0fe;
ALTER TABLE ONLY public.discussion_comment DROP CONSTRAINT fk7st41tqwtxhelg9euc4y4qqm4;
ALTER TABLE ONLY public.quantum_implementation DROP CONSTRAINT fk793p84p7n3qh71le8iqyvchv9;
ALTER TABLE ONLY public.software_platforms_compute_resources DROP CONSTRAINT fk71k3mlsekeell9ei812sduh8o;
ALTER TABLE ONLY public.publication_authors DROP CONSTRAINT fk6iioc1g7j5y16e7vw3x1anodj;
ALTER TABLE ONLY public.algorithm_tag DROP CONSTRAINT fk5skhq8p0k8aso9cl8cds8q3q1;
ALTER TABLE ONLY public.algorithm_relation DROP CONSTRAINT fk5p53wf3j277a176t73ef3wuv2;
ALTER TABLE ONLY public.implementation_package_file DROP CONSTRAINT fk5atkjjk7le6sb882i7h4tsijv;
ALTER TABLE ONLY public.algorithm_publication DROP CONSTRAINT fk4ksdqnqv8lw1685grhv4kjywf;
ALTER TABLE ONLY public.algorithm_application_area DROP CONSTRAINT fk4kjef0upq0qftpafdd25l7t0c;
ALTER TABLE ONLY public.implementation_package_file DROP CONSTRAINT fk3uh0o0od9c1eovvua5trb3pp1;
ALTER TABLE ONLY public.quantum_implementation_revisions DROP CONSTRAINT fk3so4s4qwyqav6839107xqyips;
ALTER TABLE ONLY public.implementation_tag DROP CONSTRAINT fk3p2fgn1pojdw4kr6l4t6w3l87;
ALTER TABLE ONLY public.classic_implementation DROP CONSTRAINT fk3je79xy3m07m7de0rxt3pts8d;
ALTER TABLE ONLY public.compute_resource_property DROP CONSTRAINT fk3ilvgc8wusnfhy0cgl8cvqsrs;
ALTER TABLE ONLY public.software_platforms_compute_resources DROP CONSTRAINT fk3idoyrtaifamtyfdqr5ewvdtv;
ALTER TABLE ONLY public.software_platform_cloud_services DROP CONSTRAINT fk33jvx36u9tc8y97amj90aq4p5;
ALTER TABLE ONLY public.publication DROP CONSTRAINT fk2m528opx84shvoyy4fxpok7t5;
ALTER TABLE ONLY public.algorithm_tag DROP CONSTRAINT fk2k599458h8m62np4m75ukcvm0;
ALTER TABLE ONLY public.pattern_relation DROP CONSTRAINT fk2hap3a25ae7i3n1ir2srffhq9;
ALTER TABLE ONLY public.sketch DROP CONSTRAINT fk1127ygjhclmhfr5twkvoymhum;
ALTER TABLE ONLY public.file DROP CONSTRAINT uk_n5wsqy9uctlh9ihpgvm5evrqi;
ALTER TABLE ONLY public.image DROP CONSTRAINT uk_jqvkpvfxplx2ikya5bme8jpk2;
ALTER TABLE ONLY public.tosca_application_revisions DROP CONSTRAINT tosca_application_revisions_pkey;
ALTER TABLE ONLY public.tosca_application DROP CONSTRAINT tosca_application_pkey;
ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_pkey;
ALTER TABLE ONLY public.software_platforms_compute_resources DROP CONSTRAINT software_platforms_compute_resources_pkey;
ALTER TABLE ONLY public.software_platform DROP CONSTRAINT software_platform_pkey;
ALTER TABLE ONLY public.software_platform_cloud_services DROP CONSTRAINT software_platform_cloud_services_pkey;
ALTER TABLE ONLY public.sketch DROP CONSTRAINT sketch_pkey;
ALTER TABLE ONLY public.revinfo DROP CONSTRAINT revinfo_pkey;
ALTER TABLE ONLY public.quantum_implementation_revisions DROP CONSTRAINT quantum_implementation_revisions_pkey;
ALTER TABLE ONLY public.quantum_implementation DROP CONSTRAINT quantum_implementation_pkey;
ALTER TABLE ONLY public.quantum_algorithm_revisions DROP CONSTRAINT quantum_algorithm_revisions_pkey;
ALTER TABLE ONLY public.quantum_algorithm DROP CONSTRAINT quantum_algorithm_pkey;
ALTER TABLE ONLY public.publication DROP CONSTRAINT publication_pkey;
ALTER TABLE ONLY public.problem_type DROP CONSTRAINT problem_type_pkey;
ALTER TABLE ONLY public.pattern_relation_type DROP CONSTRAINT pattern_relation_type_pkey;
ALTER TABLE ONLY public.pattern_relation DROP CONSTRAINT pattern_relation_pkey;
ALTER TABLE ONLY public.learning_method DROP CONSTRAINT learning_method_pkey;
ALTER TABLE ONLY public.knowledge_artifact_revisions DROP CONSTRAINT knowledge_artifact_revisions_pkey;
ALTER TABLE ONLY public.knowledge_artifact DROP CONSTRAINT knowledge_artifact_pkey;
ALTER TABLE ONLY public.implementation_tag DROP CONSTRAINT implementation_tag_pkey;
ALTER TABLE ONLY public.implementation_software_platforms DROP CONSTRAINT implementation_software_platforms_pkey;
ALTER TABLE ONLY public.implementation_revisions DROP CONSTRAINT implementation_revisions_pkey;
ALTER TABLE ONLY public.implementation_publication DROP CONSTRAINT implementation_publication_pkey;
ALTER TABLE ONLY public.implementation DROP CONSTRAINT implementation_pkey;
ALTER TABLE ONLY public.implementation_package DROP CONSTRAINT implementation_package_pkey;
ALTER TABLE ONLY public.implementation_package_file DROP CONSTRAINT implementation_package_file_pkey;
ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
ALTER TABLE ONLY public.file DROP CONSTRAINT file_pkey;
ALTER TABLE ONLY public.discussion_topic DROP CONSTRAINT discussion_topic_pkey;
ALTER TABLE ONLY public.discussion_comment DROP CONSTRAINT discussion_comment_pkey;
ALTER TABLE ONLY public.compute_resource_property_type DROP CONSTRAINT compute_resource_property_type_pkey;
ALTER TABLE ONLY public.compute_resource_property DROP CONSTRAINT compute_resource_property_pkey;
ALTER TABLE ONLY public.compute_resource DROP CONSTRAINT compute_resource_pkey;
ALTER TABLE ONLY public.cloud_services_compute_resources DROP CONSTRAINT cloud_services_compute_resources_pkey;
ALTER TABLE ONLY public.cloud_service DROP CONSTRAINT cloud_service_pkey;
ALTER TABLE ONLY public.classic_implementation_revisions DROP CONSTRAINT classic_implementation_revisions_pkey;
ALTER TABLE ONLY public.classic_implementation DROP CONSTRAINT classic_implementation_pkey;
ALTER TABLE ONLY public.classic_algorithm_revisions DROP CONSTRAINT classic_algorithm_revisions_pkey;
ALTER TABLE ONLY public.classic_algorithm DROP CONSTRAINT classic_algorithm_pkey;
ALTER TABLE ONLY public.application_area DROP CONSTRAINT application_area_pkey;
ALTER TABLE ONLY public.algorithm_tag DROP CONSTRAINT algorithm_tag_pkey;
ALTER TABLE ONLY public.algorithm_revisions DROP CONSTRAINT algorithm_revisions_pkey;
ALTER TABLE ONLY public.algorithm_relation_type DROP CONSTRAINT algorithm_relation_type_pkey;
ALTER TABLE ONLY public.algorithm_relation DROP CONSTRAINT algorithm_relation_pkey;
ALTER TABLE ONLY public.algorithm_publication DROP CONSTRAINT algorithm_publication_pkey;
ALTER TABLE ONLY public.algorithm_problem_type DROP CONSTRAINT algorithm_problem_type_pkey;
ALTER TABLE ONLY public.algorithm DROP CONSTRAINT algorithm_pkey;
ALTER TABLE ONLY public.algorithm_learning_method DROP CONSTRAINT algorithm_learning_method_pkey;
ALTER TABLE ONLY public.algorithm_application_area DROP CONSTRAINT algorithm_application_area_pkey;
DROP TABLE public.tosca_application_revisions;
DROP TABLE public.tosca_application;
DROP TABLE public.tag;
DROP TABLE public.software_platforms_compute_resources;
DROP TABLE public.software_platform_cloud_services;
DROP TABLE public.software_platform;
DROP TABLE public.sketch;
DROP TABLE public.revinfo;
DROP TABLE public.quantum_implementation_revisions;
DROP TABLE public.quantum_implementation;
DROP TABLE public.quantum_algorithm_revisions;
DROP TABLE public.quantum_algorithm;
DROP TABLE public.publication_authors;
DROP TABLE public.publication;
DROP TABLE public.problem_type;
DROP TABLE public.pattern_relation_type;
DROP TABLE public.pattern_relation;
DROP TABLE public.learning_method;
DROP TABLE public.knowledge_artifact_revisions;
DROP TABLE public.knowledge_artifact;
DROP TABLE public.implementation_tag;
DROP TABLE public.implementation_software_platforms;
DROP TABLE public.implementation_revisions;
DROP TABLE public.implementation_publication;
DROP TABLE public.implementation_package_file;
DROP TABLE public.implementation_package;
DROP TABLE public.implementation;
DROP TABLE public.image;
DROP SEQUENCE public.hibernate_sequence;
DROP TABLE public.file;
DROP TABLE public.discussion_topic;
DROP TABLE public.discussion_comment;
DROP TABLE public.compute_resource_property_type;
DROP TABLE public.compute_resource_property;
DROP TABLE public.compute_resource;
DROP TABLE public.cloud_services_compute_resources;
DROP TABLE public.cloud_service;
DROP TABLE public.classic_implementation_revisions;
DROP TABLE public.classic_implementation;
DROP TABLE public.classic_algorithm_revisions;
DROP TABLE public.classic_algorithm;
DROP TABLE public.application_area;
DROP TABLE public.algorithm_tag;
DROP TABLE public.algorithm_revisions;
DROP TABLE public.algorithm_relation_type;
DROP TABLE public.algorithm_relation;
DROP TABLE public.algorithm_publication;
DROP TABLE public.algorithm_problem_type;
DROP TABLE public.algorithm_learning_method;
DROP TABLE public.algorithm_application_area;
DROP TABLE public.algorithm;
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

INSERT INTO public.algorithm VALUES (NULL, 'N: N > 0, N odd', NULL, 1, 'N: Integer', 'Integer factorization', 'Shor', 'Factors: Integer Array', 'The algorithm of Shor is a ploynomial-time quantum computer algorithm for factorizing integers. It solves the following problem: GIven an integer N, find its prime factors. The American mathematician Peter Shor invented the algorithm in 1994.', NULL, 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.algorithm VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Grover-SAT', NULL, NULL, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.algorithm VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Grover-Truthtable', NULL, NULL, NULL, '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.algorithm VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Simon', NULL, NULL, NULL, '871f7eea-4722-4728-8cd9-1e61fe2dd285');
INSERT INTO public.algorithm VALUES (NULL, NULL, NULL, 2, NULL, NULL, 'Grover SAT', NULL, NULL, NULL, '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.algorithm VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-5-Qubit', NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.algorithm VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'bv-fix-00110-qiskit', NULL, NULL, NULL, 'a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4');
INSERT INTO public.algorithm VALUES (NULL, NULL, NULL, 0, NULL, NULL, 'Randomized-4-Qubit', NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.algorithm VALUES (NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-3-Qubit', NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');


--
-- Data for Name: algorithm_application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_application_area VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'ce597b06-c55e-46ce-976c-8de398e049b9');


--
-- Data for Name: algorithm_learning_method; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: algorithm_problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_problem_type VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', '76d773b5-4635-4d67-877c-e565b9f08496');


--
-- Data for Name: algorithm_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_publication VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'f05c9136-2f9f-433f-9c35-85009111ee3c');


--
-- Data for Name: algorithm_relation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: algorithm_relation_type; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_revisions VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 1, NULL, NULL, NULL, 2, NULL, NULL, 'grov-test', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 3, NULL, NULL, NULL, 2, NULL, NULL, 'Grover', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 5, NULL, NULL, NULL, 2, NULL, NULL, 'Grover SAT', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 7, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-5-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions VALUES ('a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4', 8, NULL, NULL, NULL, 1, NULL, NULL, 'bv-fix-00110-qiskit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf', 32, NULL, NULL, NULL, 0, NULL, NULL, 'Randomized-4-Qubit', NULL, NULL, NULL);
INSERT INTO public.algorithm_revisions VALUES ('95818e95-3573-491d-983a-4fa58552b5cd', 56, NULL, NULL, NULL, 1, NULL, NULL, 'Randomized-3-Qubit', NULL, NULL, NULL);


--
-- Data for Name: algorithm_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.algorithm_tag VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', 'Factorization');


--
-- Data for Name: application_area; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.application_area VALUES ('ce597b06-c55e-46ce-976c-8de398e049b9', 'Cryptography');
INSERT INTO public.application_area VALUES ('12b0d326-8b6a-4f7c-8717-d9cc5eb4a567', 'Classification');
INSERT INTO public.application_area VALUES ('da982d08-30a8-48f7-8db1-204c0b4f1865', 'Machine Learning');


--
-- Data for Name: classic_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.classic_algorithm VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf');


--
-- Data for Name: classic_algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.classic_algorithm_revisions VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf', 32);


--
-- Data for Name: classic_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: classic_implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: cloud_service; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_service VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', NULL, NULL, 'IBMQ', 'IBM', 'https://quantum-computing.ibm.com/');
INSERT INTO public.cloud_service VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', NULL, NULL, 'Rigetti', 'Rigetti', 'https://www.rigetti.com/');


--
-- Data for Name: cloud_services_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.cloud_services_compute_resources VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'faea0025-9096-4582-b2f9-93096358dbc2');
INSERT INTO public.cloud_services_compute_resources VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '2e683cee-8363-4327-8765-3b5f957acc90');
INSERT INTO public.cloud_services_compute_resources VALUES ('7ac0786f-4d4d-4ab6-beb8-6d3c9d80857d', 'c0fc8141-4d19-4654-910b-109882b4b99b');
INSERT INTO public.cloud_services_compute_resources VALUES ('bac9b43d-6ced-41c6-ae85-ef065e280d8b', '82df8861-b7de-464d-9dab-4adabbe78cd2');


--
-- Data for Name: compute_resource; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource VALUES ('ComputeResource', 'faea0025-9096-4582-b2f9-93096358dbc2', 'ibmq_16_melbourne', 0, '', 'IBMQ', NULL);
INSERT INTO public.compute_resource VALUES ('ComputeResource', 'c0fc8141-4d19-4654-910b-109882b4b99b', 'ibmqx2', 0, NULL, 'IBMQ', NULL);
INSERT INTO public.compute_resource VALUES ('ComputeResource', '2e683cee-8363-4327-8765-3b5f957acc90', 'Rigetti 19Q', 0, 'Superconducting', 'Rigetti', NULL);
INSERT INTO public.compute_resource VALUES ('ComputeResource', '82df8861-b7de-464d-9dab-4adabbe78cd2', 'Rigetti 8Q', 0, 'Superconducting', 'Rigetti', NULL);
INSERT INTO public.compute_resource VALUES ('ComputeResource', 'a9616cd6-d155-4ef5-aa37-7e097e6a2abb', 'ibmq_quito', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', '9ef63dd1-dd66-49d3-91db-af263943981b', 'ibmq_armonk', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', '3427e405-fac6-45a6-9674-55bf477d0b66', 'ibmq_santiago', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', 'c986d064-55f4-4d1f-859e-901a21c79373', 'ibmq_qasm_simulator', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', '963332dd-ae4d-4584-87e4-194cc5f9406a', 'ibmq_lima', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', '5ddcac47-3edf-4294-9f95-f2289c079fe3', 'ibmq_belem', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', '9426d0c1-a5ca-4840-9cef-e871aabfc3fb', 'simulator_stabilizer', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', 'c5bb9149-9e85-4f38-8227-3c0bcf466f02', 'ibmq_bogota', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', 'da09c2b8-db44-4711-adc0-d3e4200137be', 'simulator_extended_stabilizer', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', 'f78df158-1fb8-4cdc-bc4a-cb443f369c3a', 'simulator_mps', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', 'c2e00d42-325b-4150-87aa-c9cc7ec064d3', 'simulator_statevector', NULL, NULL, 'ibmq', true);
INSERT INTO public.compute_resource VALUES ('ComputeResource', '2a4d6669-fa05-451f-b1b9-5f61aced2d00', 'ibmq_manila', NULL, NULL, 'ibmq', true);


--
-- Data for Name: compute_resource_property; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource_property VALUES ('92376664-12fc-4143-9ce3-0ce2a7372e05', '15', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property VALUES ('f052fab4-8fa7-4b20-a053-a655f362e5b7', '50063.8361', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property VALUES ('5d57ecb5-f071-472f-a0c3-213d99569f8e', '1043', NULL, 'faea0025-9096-4582-b2f9-93096358dbc2', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property VALUES ('29d3b8b6-9523-4610-9587-98a1019035e0', '5', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property VALUES ('039b068c-cadd-4a95-a408-e3f058a540e2', '62104.6608', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property VALUES ('428ac66a-c08d-441c-96a7-3c5976daa08d', '391', NULL, 'c0fc8141-4d19-4654-910b-109882b4b99b', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property VALUES ('79834b76-82d5-4962-b78a-012f374fe4b1', '20', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property VALUES ('064f93f4-d50a-49ae-a7e4-ea36fc67a662', '20330', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property VALUES ('51d3b698-0698-4058-bb9b-2de809a3a704', '214', NULL, '2e683cee-8363-4327-8765-3b5f957acc90', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);
INSERT INTO public.compute_resource_property VALUES ('486fbc6f-20b2-4247-8742-b36cfd5b3c44', '8', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', 'e658e9bb-ca15-4b3a-9dd2-833ccd144e50', NULL);
INSERT INTO public.compute_resource_property VALUES ('d772d10b-0614-480a-b2ec-b33a32d74e42', '13406.25', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', '6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', NULL);
INSERT INTO public.compute_resource_property VALUES ('dde0fa28-a69d-4e51-83c7-5e23d06aeb2a', '198', NULL, '82df8861-b7de-464d-9dab-4adabbe78cd2', 'ff58dc2e-b805-4d32-b2ac-a059464e5102', NULL);


--
-- Data for Name: compute_resource_property_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.compute_resource_property_type VALUES ('e658e9bb-ca15-4b3a-9dd2-833ccd144e50', 0, '', 'Number of Qubits');
INSERT INTO public.compute_resource_property_type VALUES ('6fd6e29e-8fa4-4682-9ea6-f1b9a1cb2553', 2, '', 't1');
INSERT INTO public.compute_resource_property_type VALUES ('ff58dc2e-b805-4d32-b2ac-a059464e5102', 0, '', 'Max gate time');


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
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation VALUES (NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, NULL, 'forest-shor', NULL, 'Factors: Integer Array', 'N: N > 2', NULL, NULL, 'e07898e3-280f-4701-9d54-7d051af8d448', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation VALUES (NULL, NULL, 'Python3', NULL, 'N: Integer', NULL, NULL, 'qiskit-aqua-shor', NULL, 'Factors: Integer Array', 'N: N > 2', NULL, NULL, '170eff66-733f-4043-a56b-3189bf474d62', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-sat-qiskit', NULL, NULL, NULL, NULL, NULL, '8179d686-afa1-4f03-8ec9-95899002488a', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-sat-qiskit', NULL, NULL, NULL, NULL, NULL, '7de45de7-aca2-4966-a5f9-8ef018688722', '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, '10bc87a9-9317-41c8-8d19-fc6594d23383', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-general-truthtable-qiskit', NULL, NULL, NULL, NULL, NULL, 'e7a33256-0ab4-4baa-a805-0296b97960d6', '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-fix-15-qiskit', NULL, NULL, NULL, NULL, NULL, 'c293bbf4-b8cf-4393-a403-a359a77b868c', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shor-general-qiskit', NULL, NULL, NULL, NULL, NULL, '816a96fc-696d-419f-8bd4-98752cc72aac', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'simon-general-qiskit', NULL, NULL, NULL, NULL, NULL, '649859eb-7709-4beb-9738-d57f11d80455', '871f7eea-4722-4728-8cd9-1e61fe2dd285');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Grover SAT Qiskit', NULL, NULL, NULL, NULL, NULL, '75568260-17e1-4585-9bc3-a5659fe29cbf', '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bv-fix-00110-qiskit', NULL, NULL, NULL, NULL, NULL, '6377b427-e877-4620-bb98-c0da6ada22b6', 'a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, 'ed35ebaf-8069-4276-a884-78a4d1af9658', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, 'ddff99e3-0458-4c36-864f-077afa7d516c', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '1769a8e2-5df3-492f-a03c-63c4f32cfdfb', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '9d5cf328-ff7b-482d-b3a5-a5d42c8a965d', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '5903fb15-178e-46b8-95fc-090758a9952c', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '56478381-4f4b-4007-960e-1935aa5b7ced', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs50seed1', NULL, NULL, NULL, NULL, NULL, '8b55eead-ee3e-4a11-a319-5d95046f6bab', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '4c5dfec5-af79-4a93-ae27-590384ccb844', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, 'ba2e9174-9b4d-487e-becb-1421b83fab14', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'fd3b251a-c570-469d-ac13-1b9d074f2c6d', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '7852bb4a-1801-44ed-b031-b845ca237e79', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '3d93fa11-9ea7-49ab-b36e-05a9841d0cfc', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '86926d33-7d76-4bfc-a550-7334bbfab8e7', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '64949a5d-28a7-411d-8bea-6e5000c36fdc', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, 'aedc7760-8431-4c00-a178-3f4c1edf9ddf', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '3c595064-498f-406b-80f2-4264d28fb6a7', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '26fb11f7-aa91-4b42-a27f-a62d4f60ff1a', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '6fab858b-5f47-4c9b-ba9b-cf82a2527ff7', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, 'd2c29f7a-b182-4bfd-b19b-6db299d6db4a', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '1e91e015-4587-4841-bc72-ac18d01a482e', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '066e4576-7f81-4db5-be57-d60030b4d446', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, 'e5db8606-04e5-43ef-a4cf-b2c2b097c0aa', '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '200f408f-c9de-487d-b617-66cf56b76716', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, 'e60ab200-cd1c-417f-88a3-4f36df580d08', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'c78e0d22-6cda-4820-8f66-9b9c48abd9ce', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, 'a464c134-67ad-4151-9e9d-47b49da6f95b', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '5a76a5ae-b560-4330-82af-dbd2d7b6e50a', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '745e92d1-9ceb-46a9-b0b4-0e60ce178eb4', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '9a95dfdd-1e85-4381-b095-7388119e6aab', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '79734c73-a64a-4172-9a03-be8a23a22495', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, 'c0314c3f-572c-45ef-9910-900dd85a1b54', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '143ec937-21c4-42d4-bf9b-0640ea2a3f68', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, 'd18c04d3-8dd1-4567-86cf-2fc8d1bb71cb', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '26080569-f76f-495d-ad08-1164c33b82e2', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'cda440df-4988-4be7-b7f9-609584b04d11', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '07b79588-412e-4a64-9e2b-60c1f9812925', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '7232bf19-c469-4b9d-b403-8fd8c535d8dd', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, 'd533a8b9-dab5-42c6-871e-e223e00ed5a7', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, 'e84b3f5d-0911-479f-8238-d5c279e1dca7', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '913d97f8-350d-4ea7-ac90-86c03b44ab5b', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'fc0c7023-d47a-4170-9cc4-c7e967a93736', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '20e4485d-d299-4ed1-a613-623d9a0046ed', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, 'a1f3f8be-52cd-4e0a-803d-f6181b5787c6', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, 'dfe6c89d-fc6d-4830-b998-9beeb47b8cc4', '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '34027eb0-f1d3-403f-a597-5abb8ec79a83', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '6233a2b6-b8bb-4da5-936f-d7845787b4e6', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, 'a1628a38-4396-4526-a708-cafc61bd8b2f', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, 'c30f4531-ee1f-47ac-9fc8-1ff829357178', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '808e1fde-a169-48da-9c45-eb4eec5ab658', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '870c512b-7cbe-4b2c-907f-6e85507046c9', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '34386126-28ab-4efe-8dda-d7541e4ae049', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, 'bfb6e49a-9bb2-46a3-8ec1-05ed79770950', '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '55536ef2-fc2d-4fe6-bc91-a3049da5be3a', '95818e95-3573-491d-983a-4fa58552b5cd');


--
-- Data for Name: implementation_package; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: implementation_package_file; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: implementation_publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_publication VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.implementation_publication VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 'f05c9136-2f9f-433f-9c35-85009111ee3c');


--
-- Data for Name: implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_revisions VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', 2, NULL, NULL, NULL, NULL, NULL, NULL, 'grover-fix-aandb-sat-qasm', NULL, NULL, NULL, NULL, NULL, '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.implementation_revisions VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', 4, NULL, NULL, NULL, NULL, NULL, NULL, 'Grover SAT Qiskit', NULL, NULL, NULL, NULL, NULL, '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.implementation_revisions VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', 6, NULL, NULL, 'Python3', NULL, 'U: Float Array; Precision: Integer', NULL, 'forest-qpe', 'Eigenvalue: Integer Array', 'U: unitary matrix; precision: precision > 0', NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', 6, NULL, NULL, 'Python3', NULL, NULL, NULL, 'qiskit-qpe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.implementation_revisions VALUES ('6377b427-e877-4620-bb98-c0da6ada22b6', 9, NULL, NULL, NULL, NULL, NULL, NULL, 'bv-fix-00110-qiskit', NULL, NULL, NULL, NULL, NULL, 'a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4');
INSERT INTO public.implementation_revisions VALUES ('ed35ebaf-8069-4276-a884-78a4d1af9658', 10, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('ddff99e3-0458-4c36-864f-077afa7d516c', 11, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('1769a8e2-5df3-492f-a03c-63c4f32cfdfb', 12, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('9d5cf328-ff7b-482d-b3a5-a5d42c8a965d', 13, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('5903fb15-178e-46b8-95fc-090758a9952c', 14, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('56478381-4f4b-4007-960e-1935aa5b7ced', 15, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('8b55eead-ee3e-4a11-a319-5d95046f6bab', 16, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2_3-4nCliffs50seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('4c5dfec5-af79-4a93-ae27-590384ccb844', 17, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('ba2e9174-9b4d-487e-becb-1421b83fab14', 18, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('fd3b251a-c570-469d-ac13-1b9d074f2c6d', 19, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('7852bb4a-1801-44ed-b031-b845ca237e79', 20, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_4_2-3nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('3d93fa11-9ea7-49ab-b36e-05a9841d0cfc', 21, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('86926d33-7d76-4bfc-a550-7334bbfab8e7', 22, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('64949a5d-28a7-411d-8bea-6e5000c36fdc', 23, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('aedc7760-8431-4c00-a178-3f4c1edf9ddf', 24, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('3c595064-498f-406b-80f2-4264d28fb6a7', 25, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('26fb11f7-aa91-4b42-a27f-a62d4f60ff1a', 26, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('6fab858b-5f47-4c9b-ba9b-cf82a2527ff7', 27, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('d2c29f7a-b182-4bfd-b19b-6db299d6db4a', 28, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('1e91e015-4587-4841-bc72-ac18d01a482e', 29, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('066e4576-7f81-4db5-be57-d60030b4d446', 30, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-4_1_2-3nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('e5db8606-04e5-43ef-a4cf-b2c2b097c0aa', 31, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1_3-4nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.implementation_revisions VALUES ('200f408f-c9de-487d-b617-66cf56b76716', 33, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('e60ab200-cd1c-417f-88a3-4f36df580d08', 34, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('c78e0d22-6cda-4820-8f66-9b9c48abd9ce', 35, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('a464c134-67ad-4151-9e9d-47b49da6f95b', 36, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('5a76a5ae-b560-4330-82af-dbd2d7b6e50a', 37, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_3_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('745e92d1-9ceb-46a9-b0b4-0e60ce178eb4', 38, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('9a95dfdd-1e85-4381-b095-7388119e6aab', 40, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('79734c73-a64a-4172-9a03-be8a23a22495', 41, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('c0314c3f-572c-45ef-9910-900dd85a1b54', 42, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('143ec937-21c4-42d4-bf9b-0640ea2a3f68', 43, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_3-1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('d18c04d3-8dd1-4567-86cf-2fc8d1bb71cb', 44, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('26080569-f76f-495d-ad08-1164c33b82e2', 45, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('cda440df-4988-4be7-b7f9-609584b04d11', 46, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('07b79588-412e-4a64-9e2b-60c1f9812925', 47, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('7232bf19-c469-4b9d-b403-8fd8c535d8dd', 48, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('d533a8b9-dab5-42c6-871e-e223e00ed5a7', 49, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_1_2nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('e84b3f5d-0911-479f-8238-d5c279e1dca7', 50, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('913d97f8-350d-4ea7-ac90-86c03b44ab5b', 51, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs10seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('fc0c7023-d47a-4170-9cc4-c7e967a93736', 52, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('20e4485d-d299-4ed1-a613-623d9a0046ed', 53, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs1seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('a1f3f8be-52cd-4e0a-803d-f6181b5787c6', 54, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('dfe6c89d-fc6d-4830-b998-9beeb47b8cc4', 55, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-3_2-1nCliffs20seed2', NULL, NULL, NULL, NULL, NULL, '311b2ab1-0fd6-4505-9b0c-1318182f0bdf');
INSERT INTO public.implementation_revisions VALUES ('34027eb0-f1d3-403f-a597-5abb8ec79a83', 57, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions VALUES ('6233a2b6-b8bb-4da5-936f-d7845787b4e6', 58, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions VALUES ('a1628a38-4396-4526-a708-cafc61bd8b2f', 59, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-1_2nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions VALUES ('c30f4531-ee1f-47ac-9fc8-1ff829357178', 60, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions VALUES ('808e1fde-a169-48da-9c45-eb4eec5ab658', 61, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions VALUES ('870c512b-7cbe-4b2c-907f-6e85507046c9', 62, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern0-2_1nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions VALUES ('34386126-28ab-4efe-8dda-d7541e4ae049', 63, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs10seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions VALUES ('bfb6e49a-9bb2-46a3-8ec1-05ed79770950', 64, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs1seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');
INSERT INTO public.implementation_revisions VALUES ('55536ef2-fc2d-4fe6-bc91-a3049da5be3a', 65, NULL, NULL, NULL, NULL, NULL, NULL, 'pattern1-2_0nCliffs20seed1', NULL, NULL, NULL, NULL, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');


--
-- Data for Name: implementation_software_platforms; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_software_platforms VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', '7c2c4b2e-5b4e-421c-a487-54fd897bfe41');
INSERT INTO public.implementation_software_platforms VALUES ('170eff66-733f-4043-a56b-3189bf474d62', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', '41299c3c-297a-4d61-be24-cc957186306e');
INSERT INTO public.implementation_software_platforms VALUES ('649859eb-7709-4beb-9738-d57f11d80455', '41299c3c-297a-4d61-be24-cc957186306e');


--
-- Data for Name: implementation_tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.implementation_tag VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', 'Factorization');
INSERT INTO public.implementation_tag VALUES ('170eff66-733f-4043-a56b-3189bf474d62', 'Factorization');


--
-- Data for Name: knowledge_artifact; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.knowledge_artifact VALUES ('b5df6c13-e619-496c-ada0-80fc3486f733', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('e07898e3-280f-4701-9d54-7d051af8d448', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('170eff66-733f-4043-a56b-3189bf474d62', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('f05c9136-2f9f-433f-9c35-85009111ee3c', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('3c7722e2-09c3-4667-9a0d-a45d3ddc42ae', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('8179d686-afa1-4f03-8ec9-95899002488a', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('7de45de7-aca2-4966-a5f9-8ef018688722', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('0e5af2cf-f3c8-48dd-9743-cfdea65f320f', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('10bc87a9-9317-41c8-8d19-fc6594d23383', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('e7a33256-0ab4-4baa-a805-0296b97960d6', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('c293bbf4-b8cf-4393-a403-a359a77b868c', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('816a96fc-696d-419f-8bd4-98752cc72aac', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('871f7eea-4722-4728-8cd9-1e61fe2dd285', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('649859eb-7709-4beb-9738-d57f11d80455', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('6377b427-e877-4620-bb98-c0da6ada22b6', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('ed35ebaf-8069-4276-a884-78a4d1af9658', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('ddff99e3-0458-4c36-864f-077afa7d516c', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('1769a8e2-5df3-492f-a03c-63c4f32cfdfb', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('9d5cf328-ff7b-482d-b3a5-a5d42c8a965d', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('5903fb15-178e-46b8-95fc-090758a9952c', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('56478381-4f4b-4007-960e-1935aa5b7ced', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('8b55eead-ee3e-4a11-a319-5d95046f6bab', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('4c5dfec5-af79-4a93-ae27-590384ccb844', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('ba2e9174-9b4d-487e-becb-1421b83fab14', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('fd3b251a-c570-469d-ac13-1b9d074f2c6d', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('7852bb4a-1801-44ed-b031-b845ca237e79', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('3d93fa11-9ea7-49ab-b36e-05a9841d0cfc', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('86926d33-7d76-4bfc-a550-7334bbfab8e7', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('64949a5d-28a7-411d-8bea-6e5000c36fdc', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('aedc7760-8431-4c00-a178-3f4c1edf9ddf', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('3c595064-498f-406b-80f2-4264d28fb6a7', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('26fb11f7-aa91-4b42-a27f-a62d4f60ff1a', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('6fab858b-5f47-4c9b-ba9b-cf82a2527ff7', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('d2c29f7a-b182-4bfd-b19b-6db299d6db4a', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('1e91e015-4587-4841-bc72-ac18d01a482e', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('066e4576-7f81-4db5-be57-d60030b4d446', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('e5db8606-04e5-43ef-a4cf-b2c2b097c0aa', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('200f408f-c9de-487d-b617-66cf56b76716', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('e60ab200-cd1c-417f-88a3-4f36df580d08', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('c78e0d22-6cda-4820-8f66-9b9c48abd9ce', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('a464c134-67ad-4151-9e9d-47b49da6f95b', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('5a76a5ae-b560-4330-82af-dbd2d7b6e50a', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('745e92d1-9ceb-46a9-b0b4-0e60ce178eb4', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('9a95dfdd-1e85-4381-b095-7388119e6aab', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('79734c73-a64a-4172-9a03-be8a23a22495', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('c0314c3f-572c-45ef-9910-900dd85a1b54', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('143ec937-21c4-42d4-bf9b-0640ea2a3f68', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('d18c04d3-8dd1-4567-86cf-2fc8d1bb71cb', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('26080569-f76f-495d-ad08-1164c33b82e2', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('cda440df-4988-4be7-b7f9-609584b04d11', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('07b79588-412e-4a64-9e2b-60c1f9812925', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('7232bf19-c469-4b9d-b403-8fd8c535d8dd', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('d533a8b9-dab5-42c6-871e-e223e00ed5a7', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('e84b3f5d-0911-479f-8238-d5c279e1dca7', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('913d97f8-350d-4ea7-ac90-86c03b44ab5b', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('fc0c7023-d47a-4170-9cc4-c7e967a93736', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('20e4485d-d299-4ed1-a613-623d9a0046ed', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('a1f3f8be-52cd-4e0a-803d-f6181b5787c6', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('dfe6c89d-fc6d-4830-b998-9beeb47b8cc4', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('95818e95-3573-491d-983a-4fa58552b5cd', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('34027eb0-f1d3-403f-a597-5abb8ec79a83', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('6233a2b6-b8bb-4da5-936f-d7845787b4e6', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('a1628a38-4396-4526-a708-cafc61bd8b2f', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('c30f4531-ee1f-47ac-9fc8-1ff829357178', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('808e1fde-a169-48da-9c45-eb4eec5ab658', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('870c512b-7cbe-4b2c-907f-6e85507046c9', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('34386126-28ab-4efe-8dda-d7541e4ae049', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('bfb6e49a-9bb2-46a3-8ec1-05ed79770950', NULL, NULL);
INSERT INTO public.knowledge_artifact VALUES ('55536ef2-fc2d-4fe6-bc91-a3049da5be3a', NULL, NULL);


--
-- Data for Name: knowledge_artifact_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.knowledge_artifact_revisions VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 1, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', 2, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 3, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('75568260-17e1-4585-9bc3-a5659fe29cbf', 4, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 5, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('b3b616b6-6e4a-49b1-baf7-f08fa962a441', 6, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('1066e01c-e3ac-4830-b610-eb613187850c', 6, 1, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 7, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4', 8, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('6377b427-e877-4620-bb98-c0da6ada22b6', 9, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('ed35ebaf-8069-4276-a884-78a4d1af9658', 10, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('ddff99e3-0458-4c36-864f-077afa7d516c', 11, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('1769a8e2-5df3-492f-a03c-63c4f32cfdfb', 12, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('9d5cf328-ff7b-482d-b3a5-a5d42c8a965d', 13, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('5903fb15-178e-46b8-95fc-090758a9952c', 14, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('56478381-4f4b-4007-960e-1935aa5b7ced', 15, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('8b55eead-ee3e-4a11-a319-5d95046f6bab', 16, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('4c5dfec5-af79-4a93-ae27-590384ccb844', 17, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('ba2e9174-9b4d-487e-becb-1421b83fab14', 18, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('fd3b251a-c570-469d-ac13-1b9d074f2c6d', 19, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('7852bb4a-1801-44ed-b031-b845ca237e79', 20, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('3d93fa11-9ea7-49ab-b36e-05a9841d0cfc', 21, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('86926d33-7d76-4bfc-a550-7334bbfab8e7', 22, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('64949a5d-28a7-411d-8bea-6e5000c36fdc', 23, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('aedc7760-8431-4c00-a178-3f4c1edf9ddf', 24, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('3c595064-498f-406b-80f2-4264d28fb6a7', 25, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('26fb11f7-aa91-4b42-a27f-a62d4f60ff1a', 26, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('6fab858b-5f47-4c9b-ba9b-cf82a2527ff7', 27, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('d2c29f7a-b182-4bfd-b19b-6db299d6db4a', 28, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('1e91e015-4587-4841-bc72-ac18d01a482e', 29, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('066e4576-7f81-4db5-be57-d60030b4d446', 30, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('e5db8606-04e5-43ef-a4cf-b2c2b097c0aa', 31, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('311b2ab1-0fd6-4505-9b0c-1318182f0bdf', 32, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('200f408f-c9de-487d-b617-66cf56b76716', 33, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('e60ab200-cd1c-417f-88a3-4f36df580d08', 34, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('c78e0d22-6cda-4820-8f66-9b9c48abd9ce', 35, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('a464c134-67ad-4151-9e9d-47b49da6f95b', 36, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('5a76a5ae-b560-4330-82af-dbd2d7b6e50a', 37, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('745e92d1-9ceb-46a9-b0b4-0e60ce178eb4', 38, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('9a95dfdd-1e85-4381-b095-7388119e6aab', 40, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('79734c73-a64a-4172-9a03-be8a23a22495', 41, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('c0314c3f-572c-45ef-9910-900dd85a1b54', 42, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('143ec937-21c4-42d4-bf9b-0640ea2a3f68', 43, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('d18c04d3-8dd1-4567-86cf-2fc8d1bb71cb', 44, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('26080569-f76f-495d-ad08-1164c33b82e2', 45, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('cda440df-4988-4be7-b7f9-609584b04d11', 46, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('07b79588-412e-4a64-9e2b-60c1f9812925', 47, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('7232bf19-c469-4b9d-b403-8fd8c535d8dd', 48, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('d533a8b9-dab5-42c6-871e-e223e00ed5a7', 49, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('e84b3f5d-0911-479f-8238-d5c279e1dca7', 50, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('913d97f8-350d-4ea7-ac90-86c03b44ab5b', 51, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('fc0c7023-d47a-4170-9cc4-c7e967a93736', 52, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('20e4485d-d299-4ed1-a613-623d9a0046ed', 53, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('a1f3f8be-52cd-4e0a-803d-f6181b5787c6', 54, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('dfe6c89d-fc6d-4830-b998-9beeb47b8cc4', 55, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('95818e95-3573-491d-983a-4fa58552b5cd', 56, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('34027eb0-f1d3-403f-a597-5abb8ec79a83', 57, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('6233a2b6-b8bb-4da5-936f-d7845787b4e6', 58, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('a1628a38-4396-4526-a708-cafc61bd8b2f', 59, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('c30f4531-ee1f-47ac-9fc8-1ff829357178', 60, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('808e1fde-a169-48da-9c45-eb4eec5ab658', 61, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('870c512b-7cbe-4b2c-907f-6e85507046c9', 62, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('34386126-28ab-4efe-8dda-d7541e4ae049', 63, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('bfb6e49a-9bb2-46a3-8ec1-05ed79770950', 64, 0, NULL, NULL);
INSERT INTO public.knowledge_artifact_revisions VALUES ('55536ef2-fc2d-4fe6-bc91-a3049da5be3a', 65, 0, NULL, NULL);


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
-- Data for Name: problem_type; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.problem_type VALUES ('76d773b5-4635-4d67-877c-e565b9f08496', 'Integer Factorization', NULL);


--
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.publication VALUES ('10.1137/S0097539795293172', 'Polynomial-Time Algorithms for Prime Factorization and Discrete Logarithms on a Quantum Computer', 'https://arxiv.org/abs/quant-ph/9508027', 'f05c9136-2f9f-433f-9c35-85009111ee3c');
INSERT INTO public.publication VALUES ('10.1109/TSMCB.2008.925743', 'Quantum reinforcement learning', 'https://arxiv.org/abs/0810.3828', '87d697a4-6256-4f84-b545-c2024ab380c2');
INSERT INTO public.publication VALUES ('10.1038/s41586-019-0980-2', 'Supervised learning with quantum enhanced feature spaces', 'https://arxiv.org/abs/1804.11326', '3aac6a37-10de-4a95-a2bd-381d357df2a4');
INSERT INTO public.publication VALUES ('10.1016/j.cpc.2019.107006', 'Support vector machines on the D-Wave quantum annealer', 'https://arxiv.org/abs/1906.06283', 'ae6bdf6f-2656-45bd-9b96-0820eea3cdab');


--
-- Data for Name: publication_authors; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.publication_authors VALUES ('f05c9136-2f9f-433f-9c35-85009111ee3c', 'Peter W. Shor');
INSERT INTO public.publication_authors VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Daoyl Dong');
INSERT INTO public.publication_authors VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Chunlin Chen');
INSERT INTO public.publication_authors VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Hanxiong Li');
INSERT INTO public.publication_authors VALUES ('87d697a4-6256-4f84-b545-c2024ab380c2', 'Tzyh-Jong Tarn');
INSERT INTO public.publication_authors VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Vojtech Havlicek');
INSERT INTO public.publication_authors VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Antionio D. Córcoles');
INSERT INTO public.publication_authors VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Kristian Temme');
INSERT INTO public.publication_authors VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Aram W. Harrow');
INSERT INTO public.publication_authors VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Abhinav Kandala');
INSERT INTO public.publication_authors VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Jerry M. Chow');
INSERT INTO public.publication_authors VALUES ('3aac6a37-10de-4a95-a2bd-381d357df2a4', 'Jay M. Gambetta');
INSERT INTO public.publication_authors VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Dennis Willsch');
INSERT INTO public.publication_authors VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Madita Willsch');
INSERT INTO public.publication_authors VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Hans De Raedt');
INSERT INTO public.publication_authors VALUES ('ae6bdf6f-2656-45bd-9b96-0820eea3cdab', 'Kristel Michielsen');


--
-- Data for Name: quantum_algorithm; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.quantum_algorithm VALUES (false, 0, 'exponential', 'b5df6c13-e619-496c-ada0-80fc3486f733');
INSERT INTO public.quantum_algorithm VALUES (false, 0, NULL, '3c7722e2-09c3-4667-9a0d-a45d3ddc42ae');
INSERT INTO public.quantum_algorithm VALUES (false, 0, NULL, '0e5af2cf-f3c8-48dd-9743-cfdea65f320f');
INSERT INTO public.quantum_algorithm VALUES (false, 0, NULL, '871f7eea-4722-4728-8cd9-1e61fe2dd285');
INSERT INTO public.quantum_algorithm VALUES (false, 0, NULL, '386f45af-1b6e-4f54-b8df-d275faa9798f');
INSERT INTO public.quantum_algorithm VALUES (false, 0, NULL, '56c66829-a3f0-4cfe-b23c-0fe549cec067');
INSERT INTO public.quantum_algorithm VALUES (false, 0, NULL, 'a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4');
INSERT INTO public.quantum_algorithm VALUES (false, 0, NULL, '95818e95-3573-491d-983a-4fa58552b5cd');


--
-- Data for Name: quantum_algorithm_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.quantum_algorithm_revisions VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 1, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 3, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions VALUES ('386f45af-1b6e-4f54-b8df-d275faa9798f', 5, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions VALUES ('56c66829-a3f0-4cfe-b23c-0fe549cec067', 7, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions VALUES ('a7a9f5c6-f56c-4036-a5c6-6e88d5f6aec4', 8, false, 0, NULL);
INSERT INTO public.quantum_algorithm_revisions VALUES ('95818e95-3573-491d-983a-4fa58552b5cd', 56, false, 0, NULL);


--
-- Data for Name: quantum_implementation; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: quantum_implementation_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: revinfo; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.revinfo VALUES (1, 1646386332904);
INSERT INTO public.revinfo VALUES (2, 1646386395187);
INSERT INTO public.revinfo VALUES (3, 1646391842475);
INSERT INTO public.revinfo VALUES (4, 1646391860235);
INSERT INTO public.revinfo VALUES (5, 1646391870671);
INSERT INTO public.revinfo VALUES (6, 1646405385046);
INSERT INTO public.revinfo VALUES (7, 1646405415331);
INSERT INTO public.revinfo VALUES (8, 1646405449856);
INSERT INTO public.revinfo VALUES (9, 1646405455763);
INSERT INTO public.revinfo VALUES (10, 1646407141542);
INSERT INTO public.revinfo VALUES (11, 1646410899998);
INSERT INTO public.revinfo VALUES (12, 1646414837602);
INSERT INTO public.revinfo VALUES (13, 1646417451512);
INSERT INTO public.revinfo VALUES (14, 1646468752863);
INSERT INTO public.revinfo VALUES (15, 1646469114983);
INSERT INTO public.revinfo VALUES (16, 1646473074339);
INSERT INTO public.revinfo VALUES (17, 1646473814686);
INSERT INTO public.revinfo VALUES (18, 1646477561973);
INSERT INTO public.revinfo VALUES (19, 1646482370140);
INSERT INTO public.revinfo VALUES (20, 1646487191387);
INSERT INTO public.revinfo VALUES (21, 1646492245484);
INSERT INTO public.revinfo VALUES (22, 1646497473585);
INSERT INTO public.revinfo VALUES (23, 1646503235083);
INSERT INTO public.revinfo VALUES (24, 1646511410536);
INSERT INTO public.revinfo VALUES (25, 1646515121095);
INSERT INTO public.revinfo VALUES (26, 1646566814788);
INSERT INTO public.revinfo VALUES (27, 1646574657439);
INSERT INTO public.revinfo VALUES (28, 1646581724939);
INSERT INTO public.revinfo VALUES (29, 1646583720417);
INSERT INTO public.revinfo VALUES (30, 1646589590101);
INSERT INTO public.revinfo VALUES (31, 1646590974748);
INSERT INTO public.revinfo VALUES (32, 1646591615674);
INSERT INTO public.revinfo VALUES (33, 1646638473698);
INSERT INTO public.revinfo VALUES (34, 1646642149922);
INSERT INTO public.revinfo VALUES (35, 1646667910982);
INSERT INTO public.revinfo VALUES (36, 1646723700121);
INSERT INTO public.revinfo VALUES (37, 1646732091311);
INSERT INTO public.revinfo VALUES (38, 1646732599795);
INSERT INTO public.revinfo VALUES (40, 1646758694507);
INSERT INTO public.revinfo VALUES (41, 1646848282093);
INSERT INTO public.revinfo VALUES (42, 1646898363576);
INSERT INTO public.revinfo VALUES (43, 1646906326148);
INSERT INTO public.revinfo VALUES (44, 1646908819014);
INSERT INTO public.revinfo VALUES (45, 1647112467032);
INSERT INTO public.revinfo VALUES (46, 1647117498233);
INSERT INTO public.revinfo VALUES (47, 1647120419046);
INSERT INTO public.revinfo VALUES (48, 1647122873255);
INSERT INTO public.revinfo VALUES (49, 1647163972594);
INSERT INTO public.revinfo VALUES (50, 1647164557706);
INSERT INTO public.revinfo VALUES (51, 1647165136847);
INSERT INTO public.revinfo VALUES (52, 1647169655612);
INSERT INTO public.revinfo VALUES (53, 1647174196936);
INSERT INTO public.revinfo VALUES (54, 1647176931958);
INSERT INTO public.revinfo VALUES (55, 1647180645248);
INSERT INTO public.revinfo VALUES (56, 1647188245003);
INSERT INTO public.revinfo VALUES (57, 1647188267218);
INSERT INTO public.revinfo VALUES (58, 1647191485392);
INSERT INTO public.revinfo VALUES (59, 1647196526250);
INSERT INTO public.revinfo VALUES (60, 1647198413807);
INSERT INTO public.revinfo VALUES (61, 1647199871468);
INSERT INTO public.revinfo VALUES (62, 1647200261838);
INSERT INTO public.revinfo VALUES (63, 1647200606737);
INSERT INTO public.revinfo VALUES (64, 1647200964482);
INSERT INTO public.revinfo VALUES (65, 1647201362804);


--
-- Data for Name: sketch; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: software_platform; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.software_platform VALUES ('7c2c4b2e-5b4e-421c-a487-54fd897bfe41', 'Apache-2.0 License', 'https://pyquil-docs.rigetti.com/en/stable/', 'Forest', NULL);
INSERT INTO public.software_platform VALUES ('41299c3c-297a-4d61-be24-cc957186306e', 'Apache-2.0 License', 'https://github.com/Qiskit/qiskit', 'Qiskit', '0.21.0');


--
-- Data for Name: software_platform_cloud_services; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: software_platforms_compute_resources; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: planqk
--

INSERT INTO public.tag VALUES ('Phase Estimation', 'Subroutine');
INSERT INTO public.tag VALUES ('Reinforcement learning', 'Algorithm class');
INSERT INTO public.tag VALUES ('Classification', 'Algorithm class');
INSERT INTO public.tag VALUES ('Factorization', 'Algorithm class');


--
-- Data for Name: tosca_application; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Data for Name: tosca_application_revisions; Type: TABLE DATA; Schema: public; Owner: planqk
--



--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: planqk
--

SELECT pg_catalog.setval('public.hibernate_sequence', 65, true);


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
-- PostgreSQL database dump complete
--

