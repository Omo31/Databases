--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE universe OWNER TO postgres;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    magnitude numeric,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    orbital_period text,
    distance_to_earth_km numeric
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    diameter_in_km integer,
    distance_from_sun numeric,
    has_moon boolean
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(20) NOT NULL,
    number text
);


ALTER TABLE public.solar_system OWNER TO postgres;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO postgres;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description character varying(300),
    colour text,
    star_class character varying(10)
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 3.44, false, 3);
INSERT INTO public.galaxy VALUES (2, 'sombrero', 8, false, 4);
INSERT INTO public.galaxy VALUES (3, 'whirlpool', 8.4, false, 2);
INSERT INTO public.galaxy VALUES (4, 'triangulum', 5.72, false, 1);
INSERT INTO public.galaxy VALUES (6, 'pinwheel', 7.9, false, 5);
INSERT INTO public.galaxy VALUES (7, 'cartwheel', 15.2, false, 4);
INSERT INTO public.galaxy VALUES (9, 'black eye', 9.36, false, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moon VALUES (1, 'moon', 4, '27 days', 384400);
INSERT INTO public.moon VALUES (2, 'phobos', 5, '8 hr', 77.79);
INSERT INTO public.moon VALUES (3, 'deimos', 5, '30 hr', 77.79);
INSERT INTO public.moon VALUES (4, 'europa', 7, '85 hr', 628.3);
INSERT INTO public.moon VALUES (5, 'ganymede', 7, '172 hr', 628.3);
INSERT INTO public.moon VALUES (6, 'callisto', 7, '17 days', 628.3);
INSERT INTO public.moon VALUES (8, 'titan', 8, '16 days', NULL);
INSERT INTO public.moon VALUES (9, 'mimas', 8, '23 hrs', NULL);
INSERT INTO public.moon VALUES (10, 'dione', 8, '66 hrs', NULL);
INSERT INTO public.moon VALUES (11, 'lapetus', 8, '79 days', NULL);
INSERT INTO public.moon VALUES (12, 'titania', 9, '209 hr', 2723);
INSERT INTO public.moon VALUES (13, 'oberion', 9, '13 days', NULL);
INSERT INTO public.moon VALUES (14, 'cressida', 9, '11 hrs', NULL);
INSERT INTO public.moon VALUES (15, 'nereid', 10, '360 days', NULL);
INSERT INTO public.moon VALUES (16, 'despina', 10, '8 hrs', NULL);
INSERT INTO public.moon VALUES (17, 'charon', 12, '153 hrs', NULL);
INSERT INTO public.moon VALUES (18, 'nix', 12, '25 days', NULL);
INSERT INTO public.moon VALUES (19, 'dysnomia', 14, '16 days', NULL);
INSERT INTO public.moon VALUES (20, 'io', 7, '42 hrs', 628.3);
INSERT INTO public.moon VALUES (21, 'amalthea', 7, '12 hrs', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet VALUES (2, 'mercury', 1, 4878, 0.39, false);
INSERT INTO public.planet VALUES (3, 'venus', 2, 12104, 0.72, false);
INSERT INTO public.planet VALUES (4, 'earth', 3, 12756, 1, true);
INSERT INTO public.planet VALUES (5, 'mars', 4, 6787, 0.11, true);
INSERT INTO public.planet VALUES (7, 'jupiter', 1, 142800, 5.20, true);
INSERT INTO public.planet VALUES (8, 'saturn', 4, 120000, 9.54, true);
INSERT INTO public.planet VALUES (9, 'uranus', 1, 51118, 19.18, true);
INSERT INTO public.planet VALUES (10, 'neptune', 1, 49528, 30.06, true);
INSERT INTO public.planet VALUES (12, 'pluto', 5, 2300, 39.44, true);
INSERT INTO public.planet VALUES (13, 'makemake', 6, 1300, 45.79, false);
INSERT INTO public.planet VALUES (14, 'eris', 6, 2400, 67.67, true);
INSERT INTO public.planet VALUES (11, 'ceres', 5, 975, 2.77, false);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.solar_system VALUES (1, 'star', '200 billion');
INSERT INTO public.solar_system VALUES (2, 'sun', '1');
INSERT INTO public.solar_system VALUES (3, 'planet', '8');
INSERT INTO public.solar_system VALUES (4, 'dwarf planet', '5');
INSERT INTO public.solar_system VALUES (5, 'moon', '752');
INSERT INTO public.solar_system VALUES (6, 'asterioids', '1 million');
INSERT INTO public.solar_system VALUES (7, 'comets', '3743');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star VALUES (1, 'sun', 'The sun is a star, the only one we can see in the day time', ' white', 'G2V');
INSERT INTO public.star VALUES (2, 'hesperus', 'an evening star, especially venus', 'golden yellow', 'Olympus');
INSERT INTO public.star VALUES (3, 'sirus', 'the acolade of the brightest star viewed from earth', 'blue-white', 'A Type');
INSERT INTO public.star VALUES (4, 'antares', 'tantares is a very large star located in the southern sky', 'red', 'M1.5lab-lb');
INSERT INTO public.star VALUES (5, 'altair', 'altair is a white hued star located equitorial constellation of aquila the eagle', 'bluish-white', 'A7V');
INSERT INTO public.star VALUES (6, 'proxime centauri', 'proxime centauri is the dimmest and smallest of the alpha centauri system', 'red', 'M5.5Ve');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

