--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.0

-- Started on 2020-06-30 18:05:18

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
-- TOC entry 203 (class 1259 OID 16409)
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id_group integer NOT NULL,
    group_number text NOT NULL,
    semester integer NOT NULL
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16496)
-- Name: groups_and_paras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups_and_paras (
    id_group integer,
    id_para integer
);


ALTER TABLE public.groups_and_paras OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16407)
-- Name: groups_id_group_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.groups_id_group_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_group_seq OWNER TO postgres;

--
-- TOC entry 2970 (class 0 OID 0)
-- Dependencies: 202
-- Name: groups_id_group_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.groups_id_group_seq OWNED BY public.groups.id_group;


--
-- TOC entry 207 (class 1259 OID 16438)
-- Name: lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson (
    id_lesson integer NOT NULL,
    lesson_name text
);


ALTER TABLE public.lesson OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16436)
-- Name: lesson_id_lesson_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_id_lesson_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lesson_id_lesson_seq OWNER TO postgres;

--
-- TOC entry 2971 (class 0 OID 0)
-- Dependencies: 206
-- Name: lesson_id_lesson_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_id_lesson_seq OWNED BY public.lesson.id_lesson;


--
-- TOC entry 211 (class 1259 OID 16462)
-- Name: para; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.para (
    id_para integer NOT NULL,
    id_teacher integer NOT NULL,
    id_lesson integer NOT NULL
);


ALTER TABLE public.para OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16460)
-- Name: para_id_para_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.para_id_para_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.para_id_para_seq OWNER TO postgres;

--
-- TOC entry 2972 (class 0 OID 0)
-- Dependencies: 210
-- Name: para_id_para_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.para_id_para_seq OWNED BY public.para.id_para;


--
-- TOC entry 216 (class 1259 OID 41106)
-- Name: rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rating (
    rating_id integer NOT NULL,
    id_sudent integer NOT NULL,
    id_para integer NOT NULL,
    rating_val text NOT NULL,
    semester integer NOT NULL
);


ALTER TABLE public.rating OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16422)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id_sudent integer NOT NULL,
    id_group integer,
    name text,
    surname text,
    otchestvo text
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16420)
-- Name: students_id_sudent_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_sudent_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_sudent_seq OWNER TO postgres;

--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 204
-- Name: students_id_sudent_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_sudent_seq OWNED BY public.students.id_sudent;


--
-- TOC entry 215 (class 1259 OID 16517)
-- Name: submitted_works; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.submitted_works (
    id_student integer,
    id_work integer
);


ALTER TABLE public.submitted_works OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16449)
-- Name: teacher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teacher (
    id_teacher integer NOT NULL,
    teacher_name text,
    teacher_surname text,
    teacher_otchestvo text,
    login text,
    password text
);


ALTER TABLE public.teacher OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16447)
-- Name: teacher_id_teacher_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teacher_id_teacher_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teacher_id_teacher_seq OWNER TO postgres;

--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 208
-- Name: teacher_id_teacher_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teacher_id_teacher_seq OWNED BY public.teacher.id_teacher;


--
-- TOC entry 213 (class 1259 OID 16482)
-- Name: works; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.works (
    id_work integer NOT NULL,
    id_para integer,
    work_name text,
    work_type text
);


ALTER TABLE public.works OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16480)
-- Name: works_id_work_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.works_id_work_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_id_work_seq OWNER TO postgres;

--
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 212
-- Name: works_id_work_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.works_id_work_seq OWNED BY public.works.id_work;


--
-- TOC entry 2783 (class 2604 OID 16412)
-- Name: groups id_group; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups ALTER COLUMN id_group SET DEFAULT nextval('public.groups_id_group_seq'::regclass);


--
-- TOC entry 2785 (class 2604 OID 16441)
-- Name: lesson id_lesson; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson ALTER COLUMN id_lesson SET DEFAULT nextval('public.lesson_id_lesson_seq'::regclass);


--
-- TOC entry 2787 (class 2604 OID 16465)
-- Name: para id_para; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.para ALTER COLUMN id_para SET DEFAULT nextval('public.para_id_para_seq'::regclass);


--
-- TOC entry 2784 (class 2604 OID 16425)
-- Name: students id_sudent; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id_sudent SET DEFAULT nextval('public.students_id_sudent_seq'::regclass);


--
-- TOC entry 2786 (class 2604 OID 16452)
-- Name: teacher id_teacher; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher ALTER COLUMN id_teacher SET DEFAULT nextval('public.teacher_id_teacher_seq'::regclass);


--
-- TOC entry 2788 (class 2604 OID 16485)
-- Name: works id_work; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.works ALTER COLUMN id_work SET DEFAULT nextval('public.works_id_work_seq'::regclass);


--
-- TOC entry 2951 (class 0 OID 16409)
-- Dependencies: 203
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groups (id_group, group_number, semester) FROM stdin;
1	181-362	4
2	181-361	4
3	191-363	2
4	191-362	2
\.


--
-- TOC entry 2962 (class 0 OID 16496)
-- Dependencies: 214
-- Data for Name: groups_and_paras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groups_and_paras (id_group, id_para) FROM stdin;
1	0
1	2
1	3
2	2
1	4
2	3
2	0
1	6
\.


--
-- TOC entry 2955 (class 0 OID 16438)
-- Dependencies: 207
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lesson (id_lesson, lesson_name) FROM stdin;
1	База Данных
2	Программирование python
3	Дискретная математика
4	Матанализ
5	1C
6	ООП
\.


--
-- TOC entry 2959 (class 0 OID 16462)
-- Dependencies: 211
-- Data for Name: para; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.para (id_para, id_teacher, id_lesson) FROM stdin;
0	0	3
1	0	4
2	1	3
3	1	4
4	1	1
5	1	5
6	2	2
\.


--
-- TOC entry 2964 (class 0 OID 41106)
-- Dependencies: 216
-- Data for Name: rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rating (rating_id, id_sudent, id_para, rating_val, semester) FROM stdin;
1	1	0	Отлично	4
2	2	0	Хорошо	4
3	1	2	Неудовлетворительно	4
4	4	0	Хорошо	4
5	1	6	Отлично	4
\.


--
-- TOC entry 2953 (class 0 OID 16422)
-- Dependencies: 205
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id_sudent, id_group, name, surname, otchestvo) FROM stdin;
1	1	Хван	Дмитрий	Алексеевич
2	1	Подов	Гордей	Семенович
3	2	Подов	Гордей	Семенович
4	2	Шапикн	undefined	undefined
5	1	Краснова	Анастасия	Сергеевна
6	3	Быкова	Елизавета	Данииловна
\.


--
-- TOC entry 2963 (class 0 OID 16517)
-- Dependencies: 215
-- Data for Name: submitted_works; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.submitted_works (id_student, id_work) FROM stdin;
1	0
2	0
1	4
4	0
1	11
\.


--
-- TOC entry 2957 (class 0 OID 16449)
-- Dependencies: 209
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teacher (id_teacher, teacher_name, teacher_surname, teacher_otchestvo, login, password) FROM stdin;
0	Галина	Жукова	Васильевна	jukova	asd
1	Галина	Бойкова	Васильевна	boykova	asd
2	Антон	Жуплев	Сергеевич	juplev	asd
\.


--
-- TOC entry 2961 (class 0 OID 16482)
-- Dependencies: 213
-- Data for Name: works; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.works (id_work, id_para, work_name, work_type) FROM stdin;
0	0	Матрицы	 Контрольная работа
1	1	Функции	 Лабораторная работа
2	2	Матрицы	 Контрольная работа
3	1	Функции	 Лабораторная работа
4	3	Интегралы	 Лабораторная работа
5	3	Интегралы	 Контрольная работа
6	2	Таблицы	 Лабораторная работа
7	2	Таблицы	 Лабораторная работа
8	4	Таблицы	 Лабораторная работа
9	2	Таблицы 2	 Лабораторная работа
10	4	Таблицы 2	 Лабораторная работа
11	6	Быстрая сотрировка	 Лабораторная работа
\.


--
-- TOC entry 2976 (class 0 OID 0)
-- Dependencies: 202
-- Name: groups_id_group_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groups_id_group_seq', 1, true);


--
-- TOC entry 2977 (class 0 OID 0)
-- Dependencies: 206
-- Name: lesson_id_lesson_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_id_lesson_seq', 6, true);


--
-- TOC entry 2978 (class 0 OID 0)
-- Dependencies: 210
-- Name: para_id_para_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.para_id_para_seq', 47, true);


--
-- TOC entry 2979 (class 0 OID 0)
-- Dependencies: 204
-- Name: students_id_sudent_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_sudent_seq', 4, true);


--
-- TOC entry 2980 (class 0 OID 0)
-- Dependencies: 208
-- Name: teacher_id_teacher_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teacher_id_teacher_seq', 1, true);


--
-- TOC entry 2981 (class 0 OID 0)
-- Dependencies: 212
-- Name: works_id_work_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.works_id_work_seq', 1, false);


--
-- TOC entry 2810 (class 2606 OID 16500)
-- Name: groups_and_paras groups_and_paras_id_group_id_para_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups_and_paras
    ADD CONSTRAINT groups_and_paras_id_group_id_para_key UNIQUE (id_group, id_para);


--
-- TOC entry 2790 (class 2606 OID 16419)
-- Name: groups groups_group_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_group_number_key UNIQUE (group_number);


--
-- TOC entry 2792 (class 2606 OID 16417)
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id_group);


--
-- TOC entry 2798 (class 2606 OID 16446)
-- Name: lesson lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (id_lesson);


--
-- TOC entry 2794 (class 2606 OID 32927)
-- Name: students name_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT name_uniq UNIQUE (id_group, name, surname, otchestvo);


--
-- TOC entry 2804 (class 2606 OID 16479)
-- Name: para para_id_teacher_id_lesson_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.para
    ADD CONSTRAINT para_id_teacher_id_lesson_key UNIQUE (id_teacher, id_lesson);


--
-- TOC entry 2806 (class 2606 OID 16467)
-- Name: para para_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.para
    ADD CONSTRAINT para_pkey PRIMARY KEY (id_para);


--
-- TOC entry 2812 (class 2606 OID 41110)
-- Name: rating rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (rating_id);


--
-- TOC entry 2814 (class 2606 OID 49304)
-- Name: rating student_para; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT student_para UNIQUE (id_sudent, id_para);


--
-- TOC entry 2796 (class 2606 OID 16430)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id_sudent);


--
-- TOC entry 2800 (class 2606 OID 16459)
-- Name: teacher teacher_login_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_login_key UNIQUE (login);


--
-- TOC entry 2802 (class 2606 OID 16457)
-- Name: teacher teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id_teacher);


--
-- TOC entry 2808 (class 2606 OID 16490)
-- Name: works works_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.works
    ADD CONSTRAINT works_pkey PRIMARY KEY (id_work);


--
-- TOC entry 2819 (class 2606 OID 16501)
-- Name: groups_and_paras groups_and_paras_id_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups_and_paras
    ADD CONSTRAINT groups_and_paras_id_group_fkey FOREIGN KEY (id_group) REFERENCES public.groups(id_group);


--
-- TOC entry 2820 (class 2606 OID 16506)
-- Name: groups_and_paras groups_and_paras_id_para_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups_and_paras
    ADD CONSTRAINT groups_and_paras_id_para_fkey FOREIGN KEY (id_para) REFERENCES public.para(id_para);


--
-- TOC entry 2817 (class 2606 OID 16473)
-- Name: para para_id_lesson_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.para
    ADD CONSTRAINT para_id_lesson_fkey FOREIGN KEY (id_lesson) REFERENCES public.lesson(id_lesson);


--
-- TOC entry 2816 (class 2606 OID 16468)
-- Name: para para_id_teacher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.para
    ADD CONSTRAINT para_id_teacher_fkey FOREIGN KEY (id_teacher) REFERENCES public.teacher(id_teacher);


--
-- TOC entry 2823 (class 2606 OID 41111)
-- Name: rating student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rating
    ADD CONSTRAINT student_id FOREIGN KEY (id_sudent) REFERENCES public.students(id_sudent) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2815 (class 2606 OID 32914)
-- Name: students students_id_group_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_id_group_fk FOREIGN KEY (id_group) REFERENCES public.groups(id_group) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 2822 (class 2606 OID 32919)
-- Name: submitted_works submitted_works_id_sudent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.submitted_works
    ADD CONSTRAINT submitted_works_id_sudent_fkey FOREIGN KEY (id_student) REFERENCES public.students(id_sudent) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- TOC entry 2821 (class 2606 OID 16525)
-- Name: submitted_works submitted_works_id_work_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.submitted_works
    ADD CONSTRAINT submitted_works_id_work_fkey FOREIGN KEY (id_work) REFERENCES public.works(id_work);


--
-- TOC entry 2818 (class 2606 OID 16491)
-- Name: works works_id_para_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.works
    ADD CONSTRAINT works_id_para_fkey FOREIGN KEY (id_para) REFERENCES public.para(id_para);


-- Completed on 2020-06-30 18:05:18

--
-- PostgreSQL database dump complete
--

