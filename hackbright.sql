--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: grades; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.grades (
    id integer NOT NULL,
    student_github character varying(30),
    project_title text,
    grade integer
);


ALTER TABLE public.grades OWNER TO vagrant;

--
-- Name: grades_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grades_id_seq OWNER TO vagrant;

--
-- Name: grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.project (
    id integer NOT NULL,
    title character varying(30),
    description text,
    max_grade integer
);


ALTER TABLE public.project OWNER TO vagrant;

--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_id_seq OWNER TO vagrant;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.project_id_seq OWNED BY public.project.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(30),
    last_name character varying(30),
    github character varying(30)
);


ALTER TABLE public.students OWNER TO vagrant;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO vagrant;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: grades id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);


--
-- Name: project id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.project ALTER COLUMN id SET DEFAULT nextval('public.project_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.grades (id, student_github, project_title, grade) FROM stdin;
1	jhacks	Markov	10
2	jhacks	Blockly	2
3	sdevelops	Markov	50
4	sdevelops	Blockly	100
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.project (id, title, description, max_grade) FROM stdin;
1	Markov	Tweets generated from Markov chains	50
2	Blockly	Programmatic Logic Puzzle Game	100
3	Cut Grass	Reduce all float values by half	30
4	Start Fire	Mutiply all integer values by 10	20
5	Wtie a book	Use tools to render a book on screen	110
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.students (id, first_name, last_name, github) FROM stdin;
1	Jane	Hacker	jhacks
2	Sarah	Developer	sdevelops
\.


--
-- Name: grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.grades_id_seq', 4, true);


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.project_id_seq', 5, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.students_id_seq', 2, true);


--
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

