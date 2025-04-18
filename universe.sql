--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    number_of_stars integer,
    megegyoszlop integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    moon_id integer NOT NULL,
    description text NOT NULL,
    distance_from_planet numeric(12,3),
    planet_id integer,
    valami integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nemtommi; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nemtommi (
    nemtommi_id integer NOT NULL,
    name character varying(50),
    megegyoszlop integer DEFAULT 1 NOT NULL,
    masikmegegy integer DEFAULT 1 NOT NULL,
    valami integer
);


ALTER TABLE public.nemtommi OWNER TO freecodecamp;

--
-- Name: nemtommi_nemtommi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nemtommi_nemtommi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nemtommi_nemtommi_id_seq OWNER TO freecodecamp;

--
-- Name: nemtommi_nemtommi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nemtommi_nemtommi_id_seq OWNED BY public.nemtommi.nemtommi_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    description text NOT NULL,
    number_of_moons integer,
    has_moon boolean DEFAULT true NOT NULL,
    has_life boolean DEFAULT false NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL,
    megegyoszlop integer DEFAULT 1 NOT NULL,
    valami integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nemtommi nemtommi_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nemtommi ALTER COLUMN nemtommi_id SET DEFAULT nextval('public.nemtommi_nemtommi_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky way', 1, 'Home of our solar system', 400, 1);
INSERT INTO public.galaxy VALUES ('Alcyoneus', 2, 'lynx', 800, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 3, 'Mass effects story played here', 1200, 1);
INSERT INTO public.galaxy VALUES ('Antennae', 4, 'corvus', 546685, 1);
INSERT INTO public.galaxy VALUES ('Backward', 5, 'centaurus', 546987, 1);
INSERT INTO public.galaxy VALUES ('Bear paw', 6, 'lynx', 654987, 1);
INSERT INTO public.galaxy VALUES ('Black eye', 7, 'coma berenices', 54687654, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', 1, 'Moon of earth', 384400.000, 1, NULL);
INSERT INTO public.moon VALUES ('titan', 2, 'Vonnegut', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('europa', 3, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('ganymedes', 4, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('lo', 5, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('castillo', 6, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('amalthea', 7, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('kallichore', 8, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('lysithea', 9, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('euporie', 10, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('adrastea', 11, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('himalia', 12, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('s/2003 j 19', 13, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('otrhosie', 14, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('thebe', 15, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('sponde', 16, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('erinome', 17, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('kalyke', 18, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('eukelade', 19, 'ezisegyhold', 16654.000, 6, NULL);
INSERT INTO public.moon VALUES ('megaclite', 20, 'ezisegyhold', 16654.000, 6, NULL);


--
-- Data for Name: nemtommi; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nemtommi VALUES (1, 'name1', 1, 1, 1);
INSERT INTO public.nemtommi VALUES (2, 'name2', 1, 1, 2);
INSERT INTO public.nemtommi VALUES (3, 'name3', 1, 1, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 1, 'Our home', 1, true, true, 1);
INSERT INTO public.planet VALUES ('venus', 2, 'planet of woman', 0, true, false, 1);
INSERT INTO public.planet VALUES ('mars', 3, 'planet of men', 2, true, false, 1);
INSERT INTO public.planet VALUES ('mercury', 4, 'smallest planet', 0, true, false, 1);
INSERT INTO public.planet VALUES ('saturn', 5, 'with the belt', 247, true, false, 1);
INSERT INTO public.planet VALUES ('jupiter', 6, 'biggest in solar system', 95, true, false, 1);
INSERT INTO public.planet VALUES ('uranus', 7, 'funniest', 28, true, false, 1);
INSERT INTO public.planet VALUES ('neptune', 8, 'furthest', 16, true, false, 1);
INSERT INTO public.planet VALUES ('planetX', 9, 'myterious', 16, true, false, 1);
INSERT INTO public.planet VALUES ('planetY', 10, 'in the other direction', 16, true, false, 1);
INSERT INTO public.planet VALUES ('planetZ', 11, 'the last one', 16, true, false, 1);
INSERT INTO public.planet VALUES ('trantor', 12, 'the one with the domes', 16, true, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 'Closest to us', 1, 1, NULL);
INSERT INTO public.star VALUES ('star1', 2, 'desc1', 1, 1, NULL);
INSERT INTO public.star VALUES ('star2', 3, 'desc2', 2, 1, NULL);
INSERT INTO public.star VALUES ('star3', 4, 'desc3', 3, 1, NULL);
INSERT INTO public.star VALUES ('star4', 5, 'desc4', 1, 1, NULL);
INSERT INTO public.star VALUES ('star5', 6, 'desc5', 6, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nemtommi_nemtommi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nemtommi_nemtommi_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: planet kak122i; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT kak122i UNIQUE (name);


--
-- Name: planet kak124; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT kak124 UNIQUE (description);


--
-- Name: galaxy kak22i; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT kak22i UNIQUE (name);


--
-- Name: moon kak2i; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT kak2i UNIQUE (name);


--
-- Name: star kaki; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT kaki UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_valami_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_valami_key UNIQUE (valami);


--
-- Name: nemtommi nemtommi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nemtommi
    ADD CONSTRAINT nemtommi_pkey PRIMARY KEY (nemtommi_id);


--
-- Name: nemtommi nemtommi_valami_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nemtommi
    ADD CONSTRAINT nemtommi_valami_key UNIQUE (valami);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_valami_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_valami_key UNIQUE (valami);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

