--
-- PostgreSQL database dump
--

\restrict cFSp2xEbxUCC6DZaXuwefJHiz9BtMzLJPS2zbX9Heh8Rxc5mXKd6SSMtmXrfPvc

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
-- Name: content; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA content;


ALTER SCHEMA content OWNER TO postgres;

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
    teacher_id integer
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
    house text
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
    house text
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
-- Data for Name: course_students; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.course_students OVERRIDING SYSTEM VALUE VALUES (2, 1, 1);
INSERT INTO hogwarts.course_students OVERRIDING SYSTEM VALUE VALUES (5, 1, 2);
INSERT INTO hogwarts.course_students OVERRIDING SYSTEM VALUE VALUES (8, 1, 3);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (1, 'Charms', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (2, 'Potions', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (3, 'Defence Against the Dark Arts', NULL);
INSERT INTO hogwarts.courses OVERRIDING SYSTEM VALUE VALUES (4, 'History of Magic', NULL);


--
-- Data for Name: houses; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.houses OVERRIDING SYSTEM VALUE VALUES ('Gryffindor', NULL, 'Godric Gryffindor', 1);
INSERT INTO hogwarts.houses OVERRIDING SYSTEM VALUE VALUES ('Hufflepuff', NULL, 'Helga Hufflepuff', 2);
INSERT INTO hogwarts.houses OVERRIDING SYSTEM VALUE VALUES ('Ravenclaw', NULL, 'Rowena Ravenclaw', 3);
INSERT INTO hogwarts.houses OVERRIDING SYSTEM VALUE VALUES ('Slytherin', NULL, 'Salazar Slytherin', 4);


--
-- Data for Name: students; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.students OVERRIDING SYSTEM VALUE VALUES (1, 'Harry Potter', 1, 'Gryffindor');
INSERT INTO hogwarts.students OVERRIDING SYSTEM VALUE VALUES (3, 'Luna Lovegood', 1, 'Ravenclaw');
INSERT INTO hogwarts.students OVERRIDING SYSTEM VALUE VALUES (2, 'Hermione Granger', 1, 'Gryffindor');


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: hogwarts; Owner: postgres
--

INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (2, 'Minerva McGonagall', 'Gryffindor');
INSERT INTO hogwarts.teachers OVERRIDING SYSTEM VALUE VALUES (5, 'Severus Snape', 'Slytherin');


--
-- Name:  ; Type: SEQUENCE SET; Schema: hogwarts; Owner: postgres
--

SELECT pg_catalog.setval('hogwarts." "', 1, false);


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: hogwarts; Owner: postgres
--

SELECT pg_catalog.setval('hogwarts.courses_id_seq', 4, true);


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

SELECT pg_catalog.setval('hogwarts.teachers_id_seq', 5, true);


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
-- PostgreSQL database dump complete
--

\unrestrict cFSp2xEbxUCC6DZaXuwefJHiz9BtMzLJPS2zbX9Heh8Rxc5mXKd6SSMtmXrfPvc

