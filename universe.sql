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
    galaxy_id integer NOT NULL,
    name character varying(25),
    description text,
    diameter numeric NOT NULL,
    has_life boolean
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
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    name character varying(30) NOT NULL,
    age integer,
    star_id integer,
    meteor_id integer NOT NULL
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(25),
    isfrozen boolean,
    planet_id integer,
    moonsize integer NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(25),
    planetsize integer NOT NULL,
    star_id integer,
    description character varying(40)
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
    star_id integer NOT NULL,
    name character varying(25),
    starsize integer NOT NULL,
    isdwarf boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy containing our Solar System.', 100000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'A spiral galaxy approximately 2.537 million light-years away.', 220000, false);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'A supergiant elliptical galaxy in the constellation Virgo.', 600000, false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy', 'A small spiral galaxy about 3 million light-years from Earth.', 50000, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'An unbarred spiral galaxy in the constellation Virgo.', 150000, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', 'A face-on spiral galaxy located in the constellation Ursa Major.', 130000, false);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 'A classic spiral galaxy located in the constellation Canes Venatici.', 70000, false);
INSERT INTO public.galaxy VALUES (8, 'Cigar Galaxy', 'An interacting pair of galaxies in the constellation Ursa Major.', 60000, false);
INSERT INTO public.galaxy VALUES (9, 'Antennae Galaxies', 'A pair of colliding galaxies in the constellation Corvus.', 200000, false);
INSERT INTO public.galaxy VALUES (10, 'Bode''s Galaxy', 'A spiral galaxy in the constellation Ursa Major.', 60000, false);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES ('Halley', 4500, 1, 6);
INSERT INTO public.meteor VALUES ('Shoemaker-Levy 9', 4500, 2, 7);
INSERT INTO public.meteor VALUES ('Encke', 4500, 3, 8);
INSERT INTO public.meteor VALUES ('Tempel-Tuttle', 4500, 4, 9);
INSERT INTO public.meteor VALUES ('Hale-Bopp', 4500, 5, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (61, 'Luna', false, 29, 1);
INSERT INTO public.moon VALUES (62, 'Phobos', false, 30, 1);
INSERT INTO public.moon VALUES (63, 'Deimos', false, 30, 1);
INSERT INTO public.moon VALUES (64, 'Io', false, 31, 1);
INSERT INTO public.moon VALUES (65, 'Europa', false, 31, 1);
INSERT INTO public.moon VALUES (66, 'Ganymede', false, 31, 2);
INSERT INTO public.moon VALUES (67, 'Callisto', false, 31, 2);
INSERT INTO public.moon VALUES (68, 'Titan', false, 32, 1);
INSERT INTO public.moon VALUES (69, 'Enceladus', false, 32, 1);
INSERT INTO public.moon VALUES (70, 'Mimas', false, 32, 1);
INSERT INTO public.moon VALUES (71, 'Triton', false, 34, 1);
INSERT INTO public.moon VALUES (72, 'Charon', false, 35, 1);
INSERT INTO public.moon VALUES (73, 'Titania', false, 33, 1);
INSERT INTO public.moon VALUES (74, 'Oberon', false, 33, 1);
INSERT INTO public.moon VALUES (75, 'Miranda', false, 33, 1);
INSERT INTO public.moon VALUES (76, 'Phoebe', false, 44, 1);
INSERT INTO public.moon VALUES (77, 'Dione', false, 32, 1);
INSERT INTO public.moon VALUES (78, 'Rhea', false, 32, 1);
INSERT INTO public.moon VALUES (79, 'Iapetus', false, 32, 1);
INSERT INTO public.moon VALUES (80, 'Hyperion', false, 32, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (27, 'Mercury', 1, 1, 'Closest to Sun');
INSERT INTO public.planet VALUES (28, 'Venus', 1, 2, 'Second from Sun');
INSERT INTO public.planet VALUES (29, 'Earth', 1, 3, 'Home planet');
INSERT INTO public.planet VALUES (30, 'Mars', 1, 4, 'Red Planet');
INSERT INTO public.planet VALUES (31, 'Jupiter', 10, 5, 'Largest in Sys');
INSERT INTO public.planet VALUES (32, 'Saturn', 9, 6, 'Known for rings');
INSERT INTO public.planet VALUES (33, 'Uranus', 4, 7, 'Tipped side');
INSERT INTO public.planet VALUES (34, 'Neptune', 4, 8, 'Farthest from Sun');
INSERT INTO public.planet VALUES (35, 'Pluto', 1, 9, 'Dwarf planet');
INSERT INTO public.planet VALUES (36, 'Eris', 1, 10, 'Dwarf planet in Kuiper');
INSERT INTO public.planet VALUES (37, 'Ceres', 1, 11, 'Dwarf planet in asteroid');
INSERT INTO public.planet VALUES (38, 'Kepler-186f', 1, 12, 'Earth-sized exoplanet');
INSERT INTO public.planet VALUES (39, 'Proxima Centauri b', 1, 13, 'Exoplanet orbiting Proxima');
INSERT INTO public.planet VALUES (40, 'Mercury', 1, 1, 'Closest to Sun');
INSERT INTO public.planet VALUES (41, 'Venus', 1, 2, 'Second from Sun');
INSERT INTO public.planet VALUES (42, 'Earth', 1, 3, 'Home planet');
INSERT INTO public.planet VALUES (43, 'Mars', 1, 4, 'Red Planet');
INSERT INTO public.planet VALUES (44, 'Jupiter', 10, 5, 'Largest in Sys');
INSERT INTO public.planet VALUES (45, 'Saturn', 9, 6, 'Known for rings');
INSERT INTO public.planet VALUES (46, 'Uranus', 4, 7, 'Tipped side');
INSERT INTO public.planet VALUES (47, 'Neptune', 4, 8, 'Farthest from Sun');
INSERT INTO public.planet VALUES (48, 'Pluto', 1, 9, 'Dwarf planet');
INSERT INTO public.planet VALUES (49, 'Eris', 1, 10, 'Dwarf planet in Kuiper');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, false, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 2, false, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 3, false, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 2, false, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, true, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 10, false, 2);
INSERT INTO public.star VALUES (7, 'Rigel', 8, false, 2);
INSERT INTO public.star VALUES (8, 'Pollux', 6, false, 2);
INSERT INTO public.star VALUES (9, 'Arcturus', 7, false, 2);
INSERT INTO public.star VALUES (10, 'Vega', 3, false, 3);
INSERT INTO public.star VALUES (11, 'Alpha Centauri C', 1, true, 1);
INSERT INTO public.star VALUES (12, 'Barnard''s Star', 1, true, 1);
INSERT INTO public.star VALUES (13, 'Wolf 359', 1, true, 1);
INSERT INTO public.star VALUES (14, 'Luhman 16', 1, true, 1);
INSERT INTO public.star VALUES (15, 'Tau Ceti', 3, false, 1);
INSERT INTO public.star VALUES (16, 'Gliese 581', 2, false, 1);
INSERT INTO public.star VALUES (17, 'TRAPPIST-1', 1, true, 1);
INSERT INTO public.star VALUES (18, 'Kepler-62', 2, false, 1);
INSERT INTO public.star VALUES (19, 'HD 40307', 4, false, 1);
INSERT INTO public.star VALUES (20, 'Eta Cassiopeiae', 3, false, 1);
INSERT INTO public.star VALUES (21, 'Sirius B', 1, true, 2);
INSERT INTO public.star VALUES (22, 'Alpha Centauri C', 1, true, 2);
INSERT INTO public.star VALUES (23, 'Barnard''s Star', 1, true, 2);
INSERT INTO public.star VALUES (24, 'Wolf 359', 1, true, 2);
INSERT INTO public.star VALUES (25, 'Luhman 16', 1, true, 2);
INSERT INTO public.star VALUES (26, 'Tau Ceti', 3, false, 2);
INSERT INTO public.star VALUES (27, 'Gliese 581', 2, false, 2);
INSERT INTO public.star VALUES (28, 'TRAPPIST-1', 1, true, 2);
INSERT INTO public.star VALUES (29, 'Kepler-62', 2, false, 2);
INSERT INTO public.star VALUES (30, 'HD 40307', 4, false, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 80, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 49, true);


--
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 30, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: meteor unique_meteor_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT unique_meteor_id UNIQUE (meteor_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: meteor fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

