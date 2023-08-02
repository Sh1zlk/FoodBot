--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE food;




--
-- Drop roles
--

DROP ROLE root;


--
-- Roles
--

CREATE ROLE root;
ALTER ROLE root WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:HbmEzd2AhKqPknUKDoOj5A==$iizmkSBcEfFoug8XPsQgDR0SmuH44C1WnrFGCy8HfKE=:WNzpq9FIT/RMcNcbl3TU//tsLkMc7qP8YS3lYA2JcWo=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO root;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: root
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: root
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: root
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "food" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

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
-- Name: food; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE food WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE food OWNER TO root;

\connect food

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
-- Name: beans; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.beans (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.beans OWNER TO root;

--
-- Name: beans_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.beans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.beans_id_seq OWNER TO root;

--
-- Name: beans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.beans_id_seq OWNED BY public.beans.id;


--
-- Name: bread; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.bread (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.bread OWNER TO root;

--
-- Name: bread_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.bread_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bread_id_seq OWNER TO root;

--
-- Name: bread_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.bread_id_seq OWNED BY public.bread.id;


--
-- Name: cakes; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.cakes (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.cakes OWNER TO root;

--
-- Name: cakes_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.cakes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cakes_id_seq OWNER TO root;

--
-- Name: cakes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.cakes_id_seq OWNED BY public.cakes.id;


--
-- Name: canned_meat; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.canned_meat (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.canned_meat OWNER TO root;

--
-- Name: canned_meat_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.canned_meat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.canned_meat_id_seq OWNER TO root;

--
-- Name: canned_meat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.canned_meat_id_seq OWNED BY public.canned_meat.id;


--
-- Name: cereals; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.cereals (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.cereals OWNER TO root;

--
-- Name: cereals_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.cereals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cereals_id_seq OWNER TO root;

--
-- Name: cereals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.cereals_id_seq OWNED BY public.cereals.id;


--
-- Name: crops; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.crops (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.crops OWNER TO root;

--
-- Name: crops_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.crops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crops_id_seq OWNER TO root;

--
-- Name: crops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.crops_id_seq OWNED BY public.crops.id;


--
-- Name: dairy_products; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.dairy_products (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.dairy_products OWNER TO root;

--
-- Name: dairy_products_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.dairy_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dairy_products_id_seq OWNER TO root;

--
-- Name: dairy_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.dairy_products_id_seq OWNED BY public.dairy_products.id;


--
-- Name: dried_fruits; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.dried_fruits (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.dried_fruits OWNER TO root;

--
-- Name: dried_fruits_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.dried_fruits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dried_fruits_id_seq OWNER TO root;

--
-- Name: dried_fruits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.dried_fruits_id_seq OWNED BY public.dried_fruits.id;


--
-- Name: eggs; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.eggs (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.eggs OWNER TO root;

--
-- Name: eggs_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.eggs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eggs_id_seq OWNER TO root;

--
-- Name: eggs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.eggs_id_seq OWNED BY public.eggs.id;


--
-- Name: fruit_n_berries; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.fruit_n_berries (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.fruit_n_berries OWNER TO root;

--
-- Name: fruit_n_berries_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.fruit_n_berries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fruit_n_berries_id_seq OWNER TO root;

--
-- Name: fruit_n_berries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.fruit_n_berries_id_seq OWNED BY public.fruit_n_berries.id;


--
-- Name: meat; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.meat (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.meat OWNER TO root;

--
-- Name: meat_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.meat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meat_id_seq OWNER TO root;

--
-- Name: meat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.meat_id_seq OWNED BY public.meat.id;


--
-- Name: mushrooms; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.mushrooms (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.mushrooms OWNER TO root;

--
-- Name: mushrooms_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.mushrooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mushrooms_id_seq OWNER TO root;

--
-- Name: mushrooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.mushrooms_id_seq OWNED BY public.mushrooms.id;


--
-- Name: nuts; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.nuts (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.nuts OWNER TO root;

--
-- Name: nuts_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.nuts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nuts_id_seq OWNER TO root;

--
-- Name: nuts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.nuts_id_seq OWNED BY public.nuts.id;


--
-- Name: sausages; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.sausages (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.sausages OWNER TO root;

--
-- Name: sausages_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.sausages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sausages_id_seq OWNER TO root;

--
-- Name: sausages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.sausages_id_seq OWNED BY public.sausages.id;


--
-- Name: seafood; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.seafood (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.seafood OWNER TO root;

--
-- Name: seafood_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.seafood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seafood_id_seq OWNER TO root;

--
-- Name: seafood_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.seafood_id_seq OWNED BY public.seafood.id;


--
-- Name: sweet; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.sweet (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.sweet OWNER TO root;

--
-- Name: sweet_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.sweet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sweet_id_seq OWNER TO root;

--
-- Name: sweet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.sweet_id_seq OWNED BY public.sweet.id;


--
-- Name: vegetables; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.vegetables (
    id integer NOT NULL,
    name character varying,
    water double precision,
    squirrels double precision,
    fats double precision,
    carbohydrates double precision,
    kcal integer
);


ALTER TABLE public.vegetables OWNER TO root;

--
-- Name: vegetables_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.vegetables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vegetables_id_seq OWNER TO root;

--
-- Name: vegetables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.vegetables_id_seq OWNED BY public.vegetables.id;


--
-- Name: beans id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.beans ALTER COLUMN id SET DEFAULT nextval('public.beans_id_seq'::regclass);


--
-- Name: bread id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.bread ALTER COLUMN id SET DEFAULT nextval('public.bread_id_seq'::regclass);


--
-- Name: cakes id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cakes ALTER COLUMN id SET DEFAULT nextval('public.cakes_id_seq'::regclass);


--
-- Name: canned_meat id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.canned_meat ALTER COLUMN id SET DEFAULT nextval('public.canned_meat_id_seq'::regclass);


--
-- Name: cereals id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cereals ALTER COLUMN id SET DEFAULT nextval('public.cereals_id_seq'::regclass);


--
-- Name: crops id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crops ALTER COLUMN id SET DEFAULT nextval('public.crops_id_seq'::regclass);


--
-- Name: dairy_products id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.dairy_products ALTER COLUMN id SET DEFAULT nextval('public.dairy_products_id_seq'::regclass);


--
-- Name: dried_fruits id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.dried_fruits ALTER COLUMN id SET DEFAULT nextval('public.dried_fruits_id_seq'::regclass);


--
-- Name: eggs id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.eggs ALTER COLUMN id SET DEFAULT nextval('public.eggs_id_seq'::regclass);


--
-- Name: fruit_n_berries id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.fruit_n_berries ALTER COLUMN id SET DEFAULT nextval('public.fruit_n_berries_id_seq'::regclass);


--
-- Name: meat id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.meat ALTER COLUMN id SET DEFAULT nextval('public.meat_id_seq'::regclass);


--
-- Name: mushrooms id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.mushrooms ALTER COLUMN id SET DEFAULT nextval('public.mushrooms_id_seq'::regclass);


--
-- Name: nuts id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nuts ALTER COLUMN id SET DEFAULT nextval('public.nuts_id_seq'::regclass);


--
-- Name: sausages id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sausages ALTER COLUMN id SET DEFAULT nextval('public.sausages_id_seq'::regclass);


--
-- Name: seafood id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.seafood ALTER COLUMN id SET DEFAULT nextval('public.seafood_id_seq'::regclass);


--
-- Name: sweet id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sweet ALTER COLUMN id SET DEFAULT nextval('public.sweet_id_seq'::regclass);


--
-- Name: vegetables id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.vegetables ALTER COLUMN id SET DEFAULT nextval('public.vegetables_id_seq'::regclass);


--
-- Data for Name: beans; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.beans (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Боби	83	6	0.1	8.3	58
2	Горох лущений	14	23	1.6	57.7	323
3	Горох цільний	14	23	1.2	53.3	303
4	Соя	12	34.9	17.3	26.5	395
5	Квасоля	14	22.3	1.7	54.5	309
6	Сочевиця	14	24.8	1.1	53.7	310
\.


--
-- Data for Name: bread; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.bread (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Хліб житній	42.4	4.7	0.7	49.8	214
2	Хліб пшеничний з борошна I сорту	34.3	7.7	2.4	53.4	254
3	Здобна випічка	26.1	7.6	4.5	60	297
4	Бублики	17	10.4	1.3	68.7	312
5	Сушіння	12	11	1.3	73	330
6	Сухарі пшеничні	12	11.2	1.4	72.4	331
7	Сухарі вершкові	8	8.5	10.6	71.3	397
8	Борошно пшеничне вищого сорту	14	10.3	0.9	74.2	327
9	Борошно пшеничне I сорту	14	10.6	1.3	73.2	329
10	Борошно пшеничне II сорту	14	11.7	1.8	70.8	328
11	Мука житня	14	6.9	1.1	76.9	326
\.


--
-- Data for Name: cakes; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.cakes (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Вафлі з фруктовими начинками	12	3.2	2.8	80.1	342
2	Вафлі з начинками жиросодержащими	1	3.4	30.2	64.7	530
3	Листкове тістечко з кремом	9	5.4	38.6	46.4	544
4	Листкове тістечко з яблуком	13	5.7	25.6	52.7	454
5	Тістечко бісквітне з фруктовою начинкою	21	4.7	9.3	84.4	344
6	Пряники	14.5	4.8	2.8	77.7	336
7	Торт бісквітний з фруктовою начинкою	25	4.7	20	49.8	386
8	Торт мигдальний	9.3	6.6	35.8	46.8	524
\.


--
-- Data for Name: canned_meat; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.canned_meat (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Яловичина тушкована	63	16.8	18.3	0	232
2	Сніданок туриста (яловичина)	66.9	20.5	10.4	0	176
3	Сніданок туриста (свинина)	65.6	16.9	15.4	0	206
4	Ковбасний фарш	63.2	15.2	15.7	2.8	213
5	Свинина тушкована	51.1	14.9	32.2	0	349
6	Грудинка сирокопчена	21	7.6	66.8	0	632
7	Корейка сирокопчена	37.3	10.5	47.2	0	467
8	Шинка	53.5	22.6	20.9	0	279
\.


--
-- Data for Name: cereals; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.cereals (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Гречана ядриця	14	12.6	2.6	68	329
2	Гречана просунув	14	9.5	1.9	72.2	326
3	Манна	14	11.3	0.7	73.3	326
4	Вівсяна	12	11.9	5.8	65.4	345
5	Перлова	14	9.3	1.1	73.7	324
6	Пшоно	14	12	2.9	69.3	334
7	Рисова	14	7	0.6	73.7	323
8	Пшенична «Полтавська»	14	12.7	1.1	70.6	325
9	Толокно	10	12.2	5.8	68.3	357
10	Ячна	14	10.4	1.3	71.7	322
11	Геркулес	12	13.1	6.2	65.7	355
12	Кукурудзяна	14	8.3	1.2	75	325
\.


--
-- Data for Name: crops; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.crops (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Пшениця м’яка озима	0	11.2	2.1	68.7	290
2	Пшениця тверда	0	13	2.5	66.6	301
3	Жито	0	9.9	2.2	70.9	287
4	Гречка	0	10.8	3.2	68.9	295
5	Кукурудза цукрова	0	11.2	4.5	40.4	245
6	Кукурудза	0	10.3	4.9	67.5	325
7	Овес	0	10	6.2	57.8	250
8	Просо	0	11.2	3.9	70.5	311
9	Рис	0	7.5	2.6	63.1	283
10	Ячмінь	0	10.3	2.4	62.4	264
\.


--
-- Data for Name: dairy_products; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.dairy_products (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Бринза з коров’ячого молока	52	17.9	20.1	0	260
2	Йогурт натуральний 1.5% жирності	88	5	1.5	3.5	51
3	Кефір нежирний	91.4	3	0.1	3.8	30
4	Кефір жирний	88.3	2.8	3.2	4.1	59
5	Молоко	88.5	2.8	3.2	4.7	58
6	Ацидофільне Молоко	81.7	2.8	3.2	10.8	83
7	Молоко сухе незбиране	4	25.6	25	39.4	475
8	Молоко згущене	74.1	7	7.9	9.5	135
9	Молоко згущене з цукром	26.5	7.2	8.5	56	315
10	Кисляк	88.4	2.8	3.2	4.1	58
11	Ряжанка	85.3	3	6	4.1	85
12	Вершки 10%	82.2	3	10	4	118
13	Вершки 20%	72.9	2.8	20	3.6	205
14	Сметана 10%	82.7	3	10	2.9	116
15	Сметана 20%	72.7	2.8	20	3.2	206
16	Сирки і маса сирні особливі	41	7.1	23	27.5	340
17	Сир український	40	23.4	30	0	371
18	Сир голландський	38.8	26.8	27.3	0	361
19	Сир швейцарський	36.4	24.9	31.8	0	396
20	Сир пошехонський	41	26	26.5	0	334
21	Сир плавлений	55	24	13.5	0	226
22	Сир жирний	64.7	14	18	1.3	226
23	Сир жирний	71	16.7	9	1.3	156
24	Сир нежирний	77.7	18	0.6	1.5	86
\.


--
-- Data for Name: dried_fruits; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.dried_fruits (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Урюк	18	5	0	67.5	278
2	Курага	20.2	5.2	0	65.9	272
3	Родзинки з кісточкою	19	1.8	0	70.9	276
4	Родзинки, кишмиш	18	2.3	0	71.2	279
5	Вишня	18	1.5	0	73	292
6	Груша	24	2.3	0	62.1	246
7	Персики	18	3	0	68.5	275
8	Чорнослив	25	2.3	0	65.6	264
9	Яблука	20	3.2	0	68	273
\.


--
-- Data for Name: eggs; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.eggs (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Яйце куряче	74	12.7	11.5	0.7	157
2	Яєчний порошок	6.8	45	37.3	7.1	542
3	Сухий білок	12.1	73.3	1.8	7	336
4	Сухий жовток	5.4	34.2	52.2	4.4	623
5	Яйце перепелине	73.3	11.9	13.1	0.6	168
\.


--
-- Data for Name: fruit_n_berries; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.fruit_n_berries (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Абрикоси	86	0.9	0	10.5	46
2	Айва	87.5	0.6	0	8.9	38
3	Алича	89	0.2	0	7.4	34
4	Ананас	86	0.4	0	11.8	48
5	Банани	74	1.5	0	22.4	91
6	Вишня	85.5	0.8	0	11.3	49
7	Гранат	85	0.9	0	11.8	52
8	Груша	87.5	0.4	0	10.7	42
9	Інжир	83	0.7	0	13.9	56
10	Кизил	85	1	0	9.7	45
11	Персики	86.5	0.9	0	10.4	44
12	Садова горобина	81	1.4	0	12.5	58
13	Горобина чорноплідна	80.5	1.5	0	12	54
14	Зливу садова	87	0.8	0	9.9	43
15	Фініки	20	2.5	0	72.1	281
16	Хурма	81.5	0.5	0	15.9	62
17	Черешня	85	1.1	0	12.3	52
18	Шовковиця	82.7	0.7	0	12.7	53
19	Яблука	86.5	0.4	0	11.3	46
20	Апельсин	87.5	0.9	0	8.4	38
21	Грейпфрут	89	0.9	0	7.3	35
22	Лимон	87.7	0.9	0	3.6	31
23	Мандарин	88.5	0.8	0	8.6	38
24	Брусниця	87	0.7	0	8.6	40
25	Виноград	80.2	0.4	0	17.5	69
26	Лохина	88.2	1	0	7.7	37
27	Ожина	88	2	0	5.3	33
28	Суниця	84.5	1.8	0	8.1	41
29	Журавлина	89.5	0.5	0	4.8	28
30	Аґрус	85	0.7	0	9.9	44
31	Малина	87	0.8	0	9	41
32	Морошка	83.3	0.8	0	6.8	31
33	Обліпиха	75	0.9	0	5.5	30
34	Смородина біла	86	0.3	0	8.7	39
35	Смородина червона	85.4	0.6	0	8	38
36	Смородина чорна	85	1	0	8	40
37	Чорниця	86.5	1.1	0	8.6	40
38	Шипшина свіжий	66	1.6	0	24	101
39	Шипшина сушена	14	4	0	60	253
\.


--
-- Data for Name: meat; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.meat (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Баранина	67.6	16.3	15.3	0	203
2	Яловичина	67.7	18.9	12.4	0	187
3	Конина	72.5	20.2	7	0	143
4	Кролик	65.3	20.7	12.9	0	199
5	Свинина нежирна	54.8	16.4	27.8	0	316
6	Свинина жирна	38.7	11.4	49.3	0	489
7	Телятина	78	19.7	1.2	0	90
8	Баранячі Нирки	79.7	13.6	2.5	0	77
9	Бараняча Печінка	71.2	18.7	2.9	0	101
10	Бараняче Серце	78.5	13.5	2.5	0	82
11	Яловичі Мізки	78.9	9.5	9.5	0	124
12	Яловича Печінка	72.9	17.4	3.1	0	98
13	Яловичі Нирки	82.7	12.5	1.8	0	66
14	Вим’я Яловиче	72.6	12.3	13.7	0	173
15	Яловиче Серце	79	15	3	0	87
16	Яловичий Язик	71.2	13.6	12.1	0	163
17	Нирки свинні	80.1	13	3.1	0	80
18	Печінка свинна	71.4	18.8	3.6	0	108
19	Серце свинне	78	15.1	3.2	0	89
20	Мова свинячий	66.1	14.2	16.8	0	208
21	Гуси	49.7	16.1	33.3	0	364
22	Індичка	64.5	21.6	12	0.8	197
23	Кури	68.9	20.8	8.8	0.6	165
24	Курчата	71.3	18.7	7.8	0.4	156
25	Качки	51.5	16.5	61.2	0	346
\.


--
-- Data for Name: mushrooms; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.mushrooms (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Білі свіжі	89.9	3.2	0.7	1.6	25
2	Білі сушені	13	27.6	6.8	10	209
3	Підберезники свіжі	91.6	2.3	0.9	3.7	31
4	Підосичники свіжі	91.1	3.3	0.5	3.4	31
5	Сироежи свіжі	83	1.7	0.3	1.4	17
\.


--
-- Data for Name: nuts; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.nuts (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Арахіс	26.3	45.2	9.9	551	3
2	Арахіс сушений	29.2	50.2	10.8	611	3
3	Волоські горіхи	15.6	65.2	10.2	648	3
4	Мигдаль солодкий	18.6	57.7	16.2	645	2
5	Соняшник (насіння)	20.7	52.9	3.4	578	2
6	Фундук	16.1	66.9	9.9	704	3
\.


--
-- Data for Name: sausages; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.sausages (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Варена ковбаса Діабетична	62.4	12.1	22.8	0	254
2	Варена ковбаса Дієтична	71.6	12.1	13.5	0	170
3	Варена ковбаса Докторська	60.8	13.7	22.8	0	260
4	Варена ковбаса Любительська	57	12.2	28	0	301
5	Варена ковбаса Молочна	62.8	11.7	22.8	0	252
6	Варена ковбаса Окрема	64.8	10.1	20.1	1.8	228
7	Варена ковбаса Теляча	55	12.5	29.6	0	316
8	Сардельки Свинячі	53.7	10.1	31.6	1.9	332
9	Сосиски Молочні	60	12.3	25.3	0	277
10	Сосиски Українські	66.2	12	19.1	0	220
11	Свинячі Сосиски	54.8	11.8	30.8	0	324
12	Варено-копчена Любительська	39.1	17.3	39	0	420
13	Варено-копчена Сервелат	39.6	28.2	27.5	0	360
14	Напівкопчена Краківська	34.6	16.2	44.6	0	466
15	Напівкопчена Мінська	52	23	17.4	2.7	259
16	Напівкопчена Полтавська	39.8	16.4	39	0	417
17	Напівкопчена Українська	44.4	16.5	34.4	0	376
18	Сирокопчена Любительська	25.2	20.9	47.8	0	514
19	Сирокопчена Київська	27.6	24.8	41.5	0	473
\.


--
-- Data for Name: seafood; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.seafood (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Бички	70.8	12.8	8.1	5.2	145
2	Горбуша	70.5	21	7	0	147
3	Камбала	79.5	16.1	2.6	0	88
4	Карась	78.9	17.7	1.8	0	87
5	Короп	79.1	16	3.6	0	96
6	Кета	71.3	22	5.6	0	138
7	Корюшка	79.8	15.5	3.2	0	91
8	Крижана	81.8	15.5	1.4	0	75
9	Лящ	77.7	17.1	4.1	0	105
10	Сьомга	62.9	20.8	15.1	0	219
11	Макрурус	85	13.2	0.8	0	60
12	Мінога	75	14.7	11.9	0	166
13	Минтай	80.1	15.9	0.7	0	70
14	Мойва	75	13.4	11.5	0	157
15	Навага	81.1	16.1	1	0	73
16	Минь	79.3	18.8	0.6	0	81
17	Нототенія мармурова	73.4	14.8	10.7	0	156
18	Окунь морський	75.4	17.6	5.2	0	117
19	Окунь річковий	79.2	18.5	0.9	0	82
20	Осетер	71.4	16.4	10.9	0	164
21	Палтус	76.9	18.9	3	0	103
22	Путасу	81.3	16.1	0.9	0	72
23	Риба-шабля	75.2	20.3	3.2	0	110
24	Рибець каспійський	77	19.2	2.4	0	98
25	Сазан	75.3	18.4	5.3	0	121
26	Сайра велика	59.8	18.6	20.8	0	262
27	Сайра дрібна	71.3	20.4	0.8	0	143
28	Салака	75.4	17.3	5.6	0	121
29	Оселедець	62.7	17.7	19.5	0	242
30	Сиг	72.3	19	7.5	0	144
31	Скумбрія	71.8	18	9	0	153
32	Сом	75	16.8	8.5	0	144
33	Ставрида	74.9	18.5	5	0	119
34	Стерлядь	74.9	17	6.1	0	320
35	Судак	78.9	19	0.8	0	83
36	Тріска	80.7	17.5	0.6	0	75
37	Тунець	74	22.7	0.7	0	96
38	Вугільна риба	71.5	13.2	11.6	0	158
39	Вугор морський	77.5	19.1	1.9	0	94
40	Вугор	53.5	14.5	30.5	0	333
41	Хек	79.9	16.6	2.2	0	86
42	Щука	70.4	18.8	0.7	0	82
43	Язь	80.1	18.2	0.3	0	117
44	Креветка далекосхідна	64.8	28.7	1.2	0	134
45	Печінка тріски	26.4	4.2	65.7	0	613
46	Кальмар	80.3	18	0.3	0	75
47	Краб	81.5	16	0.5	0	69
48	Креветка	77.5	18	0.8	0	83
49	Морська капуста	88	0.9	0.2	3	5
50	Паста «Океан»	72.2	18.9	6.8	0	137
51	Трепанг	89.4	7.3	0.6	0	35
\.


--
-- Data for Name: sweet; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.sweet (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Мед	17.2	0.8	0	80.3	308
2	Драже фруктове	7	3.7	10.2	73.1	384
3	Зефір	20	0.8	0	78.3	299
4	Ірис	6.5	3.3	7.5	81.8	387
5	Мармелад	21	0	0.1	77.7	296
6	Карамель (в середньому)	4.4	0	0.1	77.7	296
7	Цукерки, глазуровані шоколадом	7.9	2.9	10.7	76.6	396
8	Пастила	18	0.5	0	80.4	305
9	Цукор	0.2	0.3	0	99.5	374
10	Халва тахинная	3.9	12.7	29.9	50.6	510
11	Халва соняшникова	2.9	11.6	29.7	54	516
12	Темний Шоколад	0.8	5.4	35.3	52.6	540
13	Шоколад молочний	0.9	6.9	35.7	52.4	547
\.


--
-- Data for Name: vegetables; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.vegetables (id, name, water, squirrels, fats, carbohydrates, kcal) FROM stdin;
1	Баклажани	91	0.6	0.1	5.5	24
2	Бруква	87.5	1.2	0.1	8.1	37
3	Горошок зелений	80	5	0.2	13.3	72
4	Кабачки	93	0.6	0.3	5.7	27
5	Капуста білоголова	90	1.8	0	5.4	28
6	Капуста червоноголова	90	1.8	0	6.1	31
7	Капуста цвітна	90.9	2.5	0	4.9	29
8	Картопля	76	2	0.1	19.7	83
9	Цибуля зелена (перо)	92.5	1.3	0	4.3	22
10	Цибуля порей	87	3	0	7.3	40
11	Цибуля ріпчаста	86	1.7	0	9.5	43
12	Морква червона	88.5	1.3	0.1	7	33
13	Огірки грунтові	95	0.8	0	3	15
14	Огірки парникові	96.5	0.7	0	1.8	10
15	Перець зелений солодкий	92	1.3	0	4.7	23
16	Перець червоний солодкий	91	1.3	0	5.7	27
17	Петрушка (зелень)	85	3.7	0	8.1	45
18	Петрушка (корінь)	85	1.5	0	11	47
19	Ревінь (черешкова)	94.5	0.7	0	2.9	16
20	Редис	93	1.2	0	4.1	20
21	Редька	88.6	1.9	0	7	34
22	Ріпа	90.5	1.5	0	5.9	28
23	Салат	95	1.5	0	2.2	14
24	Буряк	86.5	1.7	0	10.8	48
25	Томати (ґрунтові)	93.5	0.6	0	4.2	19
26	Томати (парникові)	94.6	0.6	0	2.9	14
27	Зелена квасоля (стручок)	90	4	0	4.3	32
28	Хрін	77	2.5	0	16.3	71
29	Черемша	89	2.4	0	6.5	34
30	Часник	70	6.5	0	21.2	106
31	Шпинат	91.2	2.9	0	2.3	21
32	Щавель	90	1.5	0	5.3	28
\.


--
-- Name: beans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.beans_id_seq', 6, true);


--
-- Name: bread_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.bread_id_seq', 11, true);


--
-- Name: cakes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.cakes_id_seq', 8, true);


--
-- Name: canned_meat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.canned_meat_id_seq', 8, true);


--
-- Name: cereals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.cereals_id_seq', 12, true);


--
-- Name: crops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.crops_id_seq', 10, true);


--
-- Name: dairy_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.dairy_products_id_seq', 24, true);


--
-- Name: dried_fruits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.dried_fruits_id_seq', 9, true);


--
-- Name: eggs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.eggs_id_seq', 5, true);


--
-- Name: fruit_n_berries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.fruit_n_berries_id_seq', 39, true);


--
-- Name: meat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.meat_id_seq', 25, true);


--
-- Name: mushrooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.mushrooms_id_seq', 5, true);


--
-- Name: nuts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.nuts_id_seq', 6, true);


--
-- Name: sausages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.sausages_id_seq', 19, true);


--
-- Name: seafood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.seafood_id_seq', 51, true);


--
-- Name: sweet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.sweet_id_seq', 13, true);


--
-- Name: vegetables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.vegetables_id_seq', 32, true);


--
-- Name: beans beans_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.beans
    ADD CONSTRAINT beans_pkey PRIMARY KEY (id);


--
-- Name: bread bread_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.bread
    ADD CONSTRAINT bread_pkey PRIMARY KEY (id);


--
-- Name: cakes cakes_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cakes
    ADD CONSTRAINT cakes_pkey PRIMARY KEY (id);


--
-- Name: canned_meat canned_meat_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.canned_meat
    ADD CONSTRAINT canned_meat_pkey PRIMARY KEY (id);


--
-- Name: cereals cereals_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.cereals
    ADD CONSTRAINT cereals_pkey PRIMARY KEY (id);


--
-- Name: crops crops_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.crops
    ADD CONSTRAINT crops_pkey PRIMARY KEY (id);


--
-- Name: dairy_products dairy_products_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.dairy_products
    ADD CONSTRAINT dairy_products_pkey PRIMARY KEY (id);


--
-- Name: dried_fruits dried_fruits_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.dried_fruits
    ADD CONSTRAINT dried_fruits_pkey PRIMARY KEY (id);


--
-- Name: eggs eggs_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.eggs
    ADD CONSTRAINT eggs_pkey PRIMARY KEY (id);


--
-- Name: fruit_n_berries fruit_n_berries_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.fruit_n_berries
    ADD CONSTRAINT fruit_n_berries_pkey PRIMARY KEY (id);


--
-- Name: meat meat_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.meat
    ADD CONSTRAINT meat_pkey PRIMARY KEY (id);


--
-- Name: mushrooms mushrooms_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.mushrooms
    ADD CONSTRAINT mushrooms_pkey PRIMARY KEY (id);


--
-- Name: nuts nuts_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.nuts
    ADD CONSTRAINT nuts_pkey PRIMARY KEY (id);


--
-- Name: sausages sausages_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sausages
    ADD CONSTRAINT sausages_pkey PRIMARY KEY (id);


--
-- Name: seafood seafood_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.seafood
    ADD CONSTRAINT seafood_pkey PRIMARY KEY (id);


--
-- Name: sweet sweet_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.sweet
    ADD CONSTRAINT sweet_pkey PRIMARY KEY (id);


--
-- Name: vegetables vegetables_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.vegetables
    ADD CONSTRAINT vegetables_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO root;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: root
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

