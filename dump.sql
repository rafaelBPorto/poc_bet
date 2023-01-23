--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

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
-- Name: guesses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.guesses (
    id integer NOT NULL,
    user_id integer NOT NULL,
    match_id integer NOT NULL,
    guess integer NOT NULL
);


--
-- Name: guesses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.guesses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: guesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.guesses_id_seq OWNED BY public.guesses.id;


--
-- Name: matches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.matches (
    id integer NOT NULL,
    home_team_id integer NOT NULL,
    visiting_team_id integer NOT NULL,
    result_match integer NOT NULL,
    date date NOT NULL
);


--
-- Name: matches_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.matches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: matches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.matches_id_seq OWNED BY public.matches.id;


--
-- Name: possibilities_guesses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.possibilities_guesses (
    id integer NOT NULL,
    description text NOT NULL
);


--
-- Name: possibilities_guesses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.possibilities_guesses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: possibilities_guesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.possibilities_guesses_id_seq OWNED BY public.possibilities_guesses.id;


--
-- Name: possibilities_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.possibilities_results (
    id integer NOT NULL,
    description text NOT NULL
);


--
-- Name: possibilities_results_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.possibilities_results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: possibilities_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.possibilities_results_id_seq OWNED BY public.possibilities_results.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teams (
    id integer NOT NULL,
    name text NOT NULL
);


--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: guesses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.guesses ALTER COLUMN id SET DEFAULT nextval('public.guesses_id_seq'::regclass);


--
-- Name: matches id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matches ALTER COLUMN id SET DEFAULT nextval('public.matches_id_seq'::regclass);


--
-- Name: possibilities_guesses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.possibilities_guesses ALTER COLUMN id SET DEFAULT nextval('public.possibilities_guesses_id_seq'::regclass);


--
-- Name: possibilities_results id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.possibilities_results ALTER COLUMN id SET DEFAULT nextval('public.possibilities_results_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.guesses VALUES (1, 1, 1, 2);
INSERT INTO public.guesses VALUES (27, 2, 1, 1);
INSERT INTO public.guesses VALUES (28, 2, 1, 1);
INSERT INTO public.guesses VALUES (29, 2, 1, 1);
INSERT INTO public.guesses VALUES (30, 2, 1, 1);
INSERT INTO public.guesses VALUES (31, 2, 1, 1);
INSERT INTO public.guesses VALUES (32, 2, 2, 3);


--
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.matches VALUES (2, 7, 5, 4, '2024-06-01');
INSERT INTO public.matches VALUES (1, 5, 9, 4, '2023-01-15');


--
-- Data for Name: possibilities_guesses; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.possibilities_guesses VALUES (1, 'tied game');
INSERT INTO public.possibilities_guesses VALUES (2, 'home team');
INSERT INTO public.possibilities_guesses VALUES (3, 'visiting team');


--
-- Data for Name: possibilities_results; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.possibilities_results VALUES (1, 'tied game');
INSERT INTO public.possibilities_results VALUES (2, 'home team');
INSERT INTO public.possibilities_results VALUES (3, 'visiting team');
INSERT INTO public.possibilities_results VALUES (4, 'unfinished');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.teams VALUES (1, 'Audax-RJ');
INSERT INTO public.teams VALUES (2, 'Bangu');
INSERT INTO public.teams VALUES (3, 'Boavista');
INSERT INTO public.teams VALUES (4, 'Botafogo');
INSERT INTO public.teams VALUES (5, 'Flamengo');
INSERT INTO public.teams VALUES (6, 'Fluminense');
INSERT INTO public.teams VALUES (7, 'Madureira');
INSERT INTO public.teams VALUES (8, 'Nova Iguaçu');
INSERT INTO public.teams VALUES (9, 'Portuguesa-RJ');
INSERT INTO public.teams VALUES (10, 'Resende');
INSERT INTO public.teams VALUES (11, 'Vasco');
INSERT INTO public.teams VALUES (12, 'Volta Redonda');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'Rafael');
INSERT INTO public.users VALUES (2, 'João');


--
-- Name: guesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.guesses_id_seq', 32, true);


--
-- Name: matches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.matches_id_seq', 2, true);


--
-- Name: possibilities_guesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.possibilities_guesses_id_seq', 4, true);


--
-- Name: possibilities_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.possibilities_results_id_seq', 4, true);


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.teams_id_seq', 12, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: guesses guesses_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pk PRIMARY KEY (id);


--
-- Name: matches matches_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_pk PRIMARY KEY (id);


--
-- Name: possibilities_guesses possibilities_guesses_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.possibilities_guesses
    ADD CONSTRAINT possibilities_guesses_pk PRIMARY KEY (id);


--
-- Name: possibilities_results possibilities_results_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.possibilities_results
    ADD CONSTRAINT possibilities_results_pk PRIMARY KEY (id);


--
-- Name: teams teams_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pk PRIMARY KEY (id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);


--
-- Name: guesses guesses_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_fk0 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: guesses guesses_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_fk1 FOREIGN KEY (match_id) REFERENCES public.matches(id);


--
-- Name: guesses guesses_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_fk2 FOREIGN KEY (guess) REFERENCES public.possibilities_guesses(id);


--
-- Name: matches matches_fk0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_fk0 FOREIGN KEY (home_team_id) REFERENCES public.teams(id);


--
-- Name: matches matches_fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_fk1 FOREIGN KEY (visiting_team_id) REFERENCES public.teams(id);


--
-- Name: matches matches_fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.matches
    ADD CONSTRAINT matches_fk2 FOREIGN KEY (result_match) REFERENCES public.possibilities_results(id);


--
-- PostgreSQL database dump complete
--

