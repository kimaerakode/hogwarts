--
-- PostgreSQL database dump
--

\restrict e6S7KyfZ5rNB8jcKvESfwSf82EOqDzBynbK09fnEIeibMarabfQ94LpA2qdz22t

-- Dumped from database version 18.6 (Postgres.app)
-- Dumped by pg_dump version 18.6 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: hogwarts; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA hogwarts;


ALTER SCHEMA hogwarts OWNER TO postgres;

--
-- Name:  ; Type: SEQUENCE; Schema: hogwarts; Owner: postgres
--

CREATE SEQUENCE hogwarts." "
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hogwarts." " OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: course_levels; Type: TABLE; Schema: hogwarts; Owner: postgres
--

CREATE TABLE hogwarts.course_levels (
    name character varying NOT NULL,
    schoolyear integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE hogwarts.course_levels OWNER TO postgres;

--
-- Name: course_levels_id_seq; Type: SEQUENCE; Schema: hogwarts; Owner: postgres
--

ALTER TABLE hogwarts.course_levels ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME hogwarts.course_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: course_students; Type: TABLE; Schema: hogwarts; Owner: postgres
--

CREATE TABLE hogwarts.course_students (
    student_id integer CONSTRAINT courses_students_student_id_not_null NOT NULL,
    course_id integer,
    id integer CONSTRAINT courses_students_id_not_null NOT NULL
);


ALTER TABLE hogwarts.course_students OWNER TO postgres;

--
-- Name: courses; Type: TABLE; Schema: hogwarts; Owner: postgres
--

CREATE TABLE hogwarts.courses (
    id integer NOT NULL,
    name text,
    teacher_id integer,
    type character varying,
    level character varying,
    school_year int4range
);


ALTER TABLE hogwarts.courses OWNER TO postgres;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: hogwarts; Owner: postgres
--

ALTER TABLE hogwarts.courses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME hogwarts.courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 666
    CACHE 1
);


--
-- Name: courses_students_id_seq; Type: SEQUENCE; Schema: hogwarts; Owner: postgres
--

ALTER TABLE hogwarts.course_students ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME hogwarts.courses_students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: exams; Type: TABLE; Schema: hogwarts; Owner: postgres
--

CREATE TABLE hogwarts.exams (
    course character varying,
    student character varying NOT NULL,
    grade integer NOT NULL
);


ALTER TABLE hogwarts.exams OWNER TO postgres;

--
-- Name: grades; Type: TABLE; Schema: hogwarts; Owner: postgres
--

CREATE TABLE hogwarts.grades (
    letter character varying,
    name character varying,
    description character varying,
    passed boolean
);


ALTER TABLE hogwarts.grades OWNER TO postgres;

--
-- Name: houses; Type: TABLE; Schema: hogwarts; Owner: postgres
--

CREATE TABLE hogwarts.houses (
    name text,
    color text,
    founder text,
    id integer NOT NULL
);


ALTER TABLE hogwarts.houses OWNER TO postgres;

--
-- Name: houses_id_seq; Type: SEQUENCE; Schema: hogwarts; Owner: postgres
--

ALTER TABLE hogwarts.houses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME hogwarts.houses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 666
    CACHE 1
);


--
-- Name: students; Type: TABLE; Schema: hogwarts; Owner: postgres
--

CREATE TABLE hogwarts.students (
    id integer NOT NULL,
    name text,
    year integer,
    house text,
    birthday date,
    school_year integer
);


ALTER TABLE hogwarts.students OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: hogwarts; Owner: postgres
--

ALTER TABLE hogwarts.students ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME hogwarts.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 666
    CACHE 1
);


--
-- Name: teachers; Type: TABLE; Schema: hogwarts; Owner: postgres
--

CREATE TABLE hogwarts.teachers (
    id integer NOT NULL,
    name text,
    house_id integer,
    employment_start integer,
    currently_active boolean,
    deceased boolean
);


ALTER TABLE hogwarts.teachers OWNER TO postgres;

--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: hogwarts; Owner: postgres
--

ALTER TABLE hogwarts.teachers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME hogwarts.teachers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 666
    CACHE 1
);


--
-- Data for Name: course_levels; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.course_levels OVERRIDING SYSTEM VALUE VALUES ('O.W.L', 5, 1);
INSERT INTO hogwarts.course_levels OVERRIDING SYSTEM VALUE VALUES ('N.E.W.T', 7, 2);


--
-- Data for Name: course_students; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.course_students OVERRIDING SYSTEM VALUE VALUES (2, 1, 1);
INSERT INTO hogwarts.course_students OVERRIDING SYSTEM VALUE VALUES (5, 1, 2);
INSERT INTO hogwarts.course_students OVERRIDING SYSTEM VALUE VALUES (8, 1, 3);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (13, 'Apparition', NULL, 'Extra-curricular', NULL, NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (14, 'Field Studies', NULL, 'Extra-curricular', NULL, NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (15, 'Flying', NULL, 'Extra-curricular', NULL, NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (2, 'Potions', NULL, 'Core', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (3, 'Defence Against the Dark Arts', NULL, 'Core', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (4, 'History of Magic', NULL, 'Core', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (5, 'Astronomy', NULL, 'Core', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (6, 'Herbology', NULL, 'Core', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (8, 'Arithmancy', NULL, 'Elective', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (10, 'Divination', NULL, 'Elective', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (11, 'Muggle Studies', NULL, 'Elective', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (12, 'Study of Ancient Runes', NULL, 'Elective', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (7, 'Transfiguration', 2, 'Core', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (1, 'Charms', 11, 'Core', 'O.W.L', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (9, 'Care of Magical Creatures', 10, 'Elective', 'O.W.L', NULL);


--
-- Data for Name: exams; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--



--
-- Data for Name: grades; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--



--
-- Data for Name: houses; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.houses OVERRIDING SYSTEM VALUE VALUES ('Gryffindor', 'red', 'Godric Gryffindor', 1);
INSERT INTO hogwarts.houses OVERRIDING SYSTEM VALUE VALUES ('Hufflepuff', 'yellow', 'Helga Hufflepuff', 2);
INSERT INTO hogwarts.houses OVERRIDING SYSTEM VALUE VALUES ('Ravenclaw', 'blue', 'Rowena Ravenclaw', 3);
INSERT INTO hogwarts.houses OVERRIDING SYSTEM VALUE VALUES ('Slytherin', 'green', 'Salazar Slytherin', 4);


--
-- Data for Name: students; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.students OVERRIDING SYSTEM VALUE VALUES (1, 'Harry Potter', 1, 'Gryffindor', NULL, NULL);
INSERT INTO hogwarts.students OVERRIDING SYSTEM VALUE VALUES (3, 'Luna Lovegood', 1, 'Ravenclaw', NULL, NULL);
INSERT INTO hogwarts.students OVERRIDING SYSTEM VALUE VALUES (2, 'Hermione Granger', 1, 'Gryffindor', NULL, NULL);


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (2, 'Minerva McGonagall', 1, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (6, 'Remus Lupin', 1, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (7, 'Charity Burbage', 1, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (8, 'Albus Dumbledore', 1, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (9, 'Pomona Sprout', 2, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (11, 'Filius Flitwick', 3, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (12, 'Quirinus Quirrell', 3, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (13, 'Gilderoy Lockhart', 3, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (14, 'Sybill Trelawney', 3, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (5, 'Severus Snape', 4, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (16, 'Dolores Umbridge', 4, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (10, 'Silvanus Kettleburn', 2, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (15, 'Horace Slughorn', 4, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (17, 'Aurora Sinistra', NULL, NULL, NULL, NULL);
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (18, 'Alastor Moody', NULL, NULL, NULL, NULL);


--
-- Name:  ; Type: SEQUENCE SET; Schema: hogwarts; Owner: postgres
--

SELECT pg_catalog.setval('hogwarts." "', 1, false);


--
-- Name: course_levels_id_seq; Type: SEQUENCE SET; Schema: hogwarts; Owner: postgres
--

SELECT pg_catalog.setval('hogwarts.course_levels_id_seq', 2, true);


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: hogwarts; Owner: postgres
--

SELECT pg_catalog.setval('hogwarts.courses_id_seq', 15, true);


--
-- Name: courses_students_id_seq; Type: SEQUENCE SET; Schema: hogwarts; Owner: postgres
--

SELECT pg_catalog.setval('hogwarts.courses_students_id_seq', 3, true);


--
-- Name: houses_id_seq; Type: SEQUENCE SET; Schema: hogwarts; Owner: postgres
--

SELECT pg_catalog.setval('hogwarts.houses_id_seq', 4, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: hogwarts; Owner: postgres
--

SELECT pg_catalog.setval('hogwarts.students_id_seq', 4, true);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: hogwarts; Owner: postgres
--

SELECT pg_catalog.setval('hogwarts.teachers_id_seq', 18, true);


--
-- Name: course_levels course_levels_pk; Type: CONSTRAINT; Schema: hogwarts; Owner: postgres
--

ALTER TABLE ONLY hogwarts.course_levels
    ADD CONSTRAINT course_levels_pk PRIMARY KEY (id);


--
-- Name: course_students course_students_pk; Type: CONSTRAINT; Schema: hogwarts; Owner: postgres
--

ALTER TABLE ONLY hogwarts.course_students
    ADD CONSTRAINT course_students_pk PRIMARY KEY (id);


--
-- Name: courses courses_pk; Type: CONSTRAINT; Schema: hogwarts; Owner: postgres
--

ALTER TABLE ONLY hogwarts.courses
    ADD CONSTRAINT courses_pk PRIMARY KEY (id);


--
-- Name: houses houses_pk; Type: CONSTRAINT; Schema: hogwarts; Owner: postgres
--

ALTER TABLE ONLY hogwarts.houses
    ADD CONSTRAINT houses_pk PRIMARY KEY (id);


--
-- Name: students students_pk; Type: CONSTRAINT; Schema: hogwarts; Owner: postgres
--

ALTER TABLE ONLY hogwarts.students
    ADD CONSTRAINT students_pk PRIMARY KEY (id);


--
-- Name: teachers teachers_pk; Type: CONSTRAINT; Schema: hogwarts; Owner: postgres
--

ALTER TABLE ONLY hogwarts.teachers
    ADD CONSTRAINT teachers_pk PRIMARY KEY (id);


--
-- Name: courses fk_courses_teacher; Type: FK CONSTRAINT; Schema: hogwarts; Owner: postgres
--

ALTER TABLE ONLY hogwarts.courses
    ADD CONSTRAINT fk_courses_teacher FOREIGN KEY (teacher_id) REFERENCES hogwarts.teachers(id) ON DELETE SET NULL;


--
-- Name: teachers house_id_fk; Type: FK CONSTRAINT; Schema: hogwarts; Owner: postgres
--

ALTER TABLE ONLY hogwarts.teachers
    ADD CONSTRAINT house_id_fk FOREIGN KEY (house_id) REFERENCES hogwarts.houses(id);


--
-- PostgreSQL database dump complete
--

\unrestrict e6S7KyfZ5rNB8jcKvESfwSf82EOqDzBynbK09fnEIeibMarabfQ94LpA2qdz22t

