--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2024-05-10 11:09:30

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
-- TOC entry 5 (class 2615 OID 26126)
-- Name: TestTaskSchema; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "TestTaskSchema";


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 26168)
-- Name: ItRole; Type: TABLE; Schema: TestTaskSchema; Owner: -
--

CREATE TABLE "TestTaskSchema"."ItRole" (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    "corporatePhoneNumber" character varying(4) NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 26167)
-- Name: ItRole_id_seq; Type: SEQUENCE; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE "TestTaskSchema"."ItRole" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "TestTaskSchema"."ItRole_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 26139)
-- Name: Passwords; Type: TABLE; Schema: TestTaskSchema; Owner: -
--

CREATE TABLE "TestTaskSchema"."Passwords" (
    id integer NOT NULL,
    "userId" character varying(22) NOT NULL,
    password character varying(20) NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 26138)
-- Name: Passwords_id_seq; Type: SEQUENCE; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE "TestTaskSchema"."Passwords" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "TestTaskSchema"."Passwords_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 26145)
-- Name: RequestRight; Type: TABLE; Schema: TestTaskSchema; Owner: -
--

CREATE TABLE "TestTaskSchema"."RequestRight" (
    id integer NOT NULL,
    name text NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 26144)
-- Name: RequestRight_id_seq; Type: SEQUENCE; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE "TestTaskSchema"."RequestRight" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "TestTaskSchema"."RequestRight_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 26152)
-- Name: User; Type: TABLE; Schema: TestTaskSchema; Owner: -
--

CREATE TABLE "TestTaskSchema"."User" (
    login character varying(22) NOT NULL,
    "lastName" character varying(20) NOT NULL,
    "firstName" character varying(20) NOT NULL,
    "middleName" character varying(20) NOT NULL,
    "telephoneNumber" character varying(20) NOT NULL,
    "isLead" boolean NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 26173)
-- Name: UserITRole; Type: TABLE; Schema: TestTaskSchema; Owner: -
--

CREATE TABLE "TestTaskSchema"."UserITRole" (
    "userId" character varying(22) NOT NULL,
    "roleId" integer NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 26162)
-- Name: UserRequestRight; Type: TABLE; Schema: TestTaskSchema; Owner: -
--

CREATE TABLE "TestTaskSchema"."UserRequestRight" (
    "userId" character varying(22) NOT NULL,
    "rightId" integer NOT NULL
);


--
-- TOC entry 215 (class 1259 OID 26127)
-- Name: _MigrationHistory; Type: TABLE; Schema: TestTaskSchema; Owner: -
--

CREATE TABLE "TestTaskSchema"."_MigrationHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


--
-- TOC entry 4879 (class 0 OID 26168)
-- Dependencies: 223
-- Data for Name: ItRole; Type: TABLE DATA; Schema: TestTaskSchema; Owner: -
--

INSERT INTO "TestTaskSchema"."ItRole" VALUES (1, 'Главный помошник по anydesk', '1111');
INSERT INTO "TestTaskSchema"."ItRole" VALUES (2, 'Мастер бэкапов', '1337');
INSERT INTO "TestTaskSchema"."ItRole" VALUES (3, 'Главный по настройке мониторов', '0322');
INSERT INTO "TestTaskSchema"."ItRole" VALUES (4, 'Заклинатель принтеров', '0228');
INSERT INTO "TestTaskSchema"."ItRole" VALUES (5, 'Уполномоченный по чистке компов', '1234');


--
-- TOC entry 4873 (class 0 OID 26139)
-- Dependencies: 217
-- Data for Name: Passwords; Type: TABLE DATA; Schema: TestTaskSchema; Owner: -
--

INSERT INTO "TestTaskSchema"."Passwords" VALUES (607, 'GlavnyyNN', 'Password');
INSERT INTO "TestTaskSchema"."Passwords" VALUES (608, 'UdalennyyAA', 'Password');
INSERT INTO "TestTaskSchema"."Passwords" VALUES (609, 'testUserToCreate', 'testPassword');


--
-- TOC entry 4875 (class 0 OID 26145)
-- Dependencies: 219
-- Data for Name: RequestRight; Type: TABLE DATA; Schema: TestTaskSchema; Owner: -
--

INSERT INTO "TestTaskSchema"."RequestRight" VALUES (1, 'создание заявок');
INSERT INTO "TestTaskSchema"."RequestRight" VALUES (2, 'получение информации о заявке');
INSERT INTO "TestTaskSchema"."RequestRight" VALUES (3, 'получение информации о всех заявках');
INSERT INTO "TestTaskSchema"."RequestRight" VALUES (4, 'получение информации о заявках по сотруднику');
INSERT INTO "TestTaskSchema"."RequestRight" VALUES (5, 'оценивание качества предоставленной услуги');
INSERT INTO "TestTaskSchema"."RequestRight" VALUES (6, 'изменение статусов заявок(без окончательного закрытия)');
INSERT INTO "TestTaskSchema"."RequestRight" VALUES (7, 'изменение статусов заявок(с окончательным закрытием)');
INSERT INTO "TestTaskSchema"."RequestRight" VALUES (8, 'изменение исполнителя заявки');
INSERT INTO "TestTaskSchema"."RequestRight" VALUES (9, 'написание отчета о проделанной работе');


--
-- TOC entry 4876 (class 0 OID 26152)
-- Dependencies: 220
-- Data for Name: User; Type: TABLE DATA; Schema: TestTaskSchema; Owner: -
--

INSERT INTO "TestTaskSchema"."User" VALUES ('GlavnyyNN', 'Главный', 'Начальник', 'Начальникович', '88005553535', true);
INSERT INTO "TestTaskSchema"."User" VALUES ('UdalennyyAA', 'Удаленный', 'Александр', 'АЛександрович', '81234567890', false);
INSERT INTO "TestTaskSchema"."User" VALUES ('testUserToCreate', '', '', '', '', false);


--
-- TOC entry 4880 (class 0 OID 26173)
-- Dependencies: 224
-- Data for Name: UserITRole; Type: TABLE DATA; Schema: TestTaskSchema; Owner: -
--



--
-- TOC entry 4877 (class 0 OID 26162)
-- Dependencies: 221
-- Data for Name: UserRequestRight; Type: TABLE DATA; Schema: TestTaskSchema; Owner: -
--

INSERT INTO "TestTaskSchema"."UserRequestRight" VALUES ('GlavnyyNN', 1);
INSERT INTO "TestTaskSchema"."UserRequestRight" VALUES ('GlavnyyNN', 2);
INSERT INTO "TestTaskSchema"."UserRequestRight" VALUES ('GlavnyyNN', 3);
INSERT INTO "TestTaskSchema"."UserRequestRight" VALUES ('GlavnyyNN', 4);
INSERT INTO "TestTaskSchema"."UserRequestRight" VALUES ('GlavnyyNN', 7);
INSERT INTO "TestTaskSchema"."UserRequestRight" VALUES ('GlavnyyNN', 8);


--
-- TOC entry 4871 (class 0 OID 26127)
-- Dependencies: 215
-- Data for Name: _MigrationHistory; Type: TABLE DATA; Schema: TestTaskSchema; Owner: -
--

INSERT INTO "TestTaskSchema"."_MigrationHistory" VALUES ('20240202115700_Initial', '7.0.13');
INSERT INTO "TestTaskSchema"."_MigrationHistory" VALUES ('20240215125114_Simpler', '7.0.13');


--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 222
-- Name: ItRole_id_seq; Type: SEQUENCE SET; Schema: TestTaskSchema; Owner: -
--

SELECT pg_catalog.setval('"TestTaskSchema"."ItRole_id_seq"', 5, true);


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 216
-- Name: Passwords_id_seq; Type: SEQUENCE SET; Schema: TestTaskSchema; Owner: -
--

SELECT pg_catalog.setval('"TestTaskSchema"."Passwords_id_seq"', 609, true);


--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 218
-- Name: RequestRight_id_seq; Type: SEQUENCE SET; Schema: TestTaskSchema; Owner: -
--

SELECT pg_catalog.setval('"TestTaskSchema"."RequestRight_id_seq"', 9, true);


--
-- TOC entry 4725 (class 2606 OID 26172)
-- Name: ItRole PK_ItRole; Type: CONSTRAINT; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE ONLY "TestTaskSchema"."ItRole"
    ADD CONSTRAINT "PK_ItRole" PRIMARY KEY (id);


--
-- TOC entry 4717 (class 2606 OID 26143)
-- Name: Passwords PK_Passwords; Type: CONSTRAINT; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE ONLY "TestTaskSchema"."Passwords"
    ADD CONSTRAINT "PK_Passwords" PRIMARY KEY (id);


--
-- TOC entry 4719 (class 2606 OID 26151)
-- Name: RequestRight PK_RequestRight; Type: CONSTRAINT; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE ONLY "TestTaskSchema"."RequestRight"
    ADD CONSTRAINT "PK_RequestRight" PRIMARY KEY (id);


--
-- TOC entry 4721 (class 2606 OID 26156)
-- Name: User PK_User; Type: CONSTRAINT; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE ONLY "TestTaskSchema"."User"
    ADD CONSTRAINT "PK_User" PRIMARY KEY (login);


--
-- TOC entry 4727 (class 2606 OID 26177)
-- Name: UserITRole PK_UserITRole; Type: CONSTRAINT; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE ONLY "TestTaskSchema"."UserITRole"
    ADD CONSTRAINT "PK_UserITRole" PRIMARY KEY ("roleId", "userId");


--
-- TOC entry 4723 (class 2606 OID 26166)
-- Name: UserRequestRight PK_UserRequestRight; Type: CONSTRAINT; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE ONLY "TestTaskSchema"."UserRequestRight"
    ADD CONSTRAINT "PK_UserRequestRight" PRIMARY KEY ("rightId", "userId");


--
-- TOC entry 4715 (class 2606 OID 26131)
-- Name: _MigrationHistory PK__MigrationHistory; Type: CONSTRAINT; Schema: TestTaskSchema; Owner: -
--

ALTER TABLE ONLY "TestTaskSchema"."_MigrationHistory"
    ADD CONSTRAINT "PK__MigrationHistory" PRIMARY KEY ("MigrationId");


-- Completed on 2024-05-10 11:09:30

--
-- PostgreSQL database dump complete
--

