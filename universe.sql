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
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    galaxy_id numeric(9,0) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth integer
);

ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    moon_id numeric(9,0) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth integer,
    planet_id numeric(9,0) NOT NULL
);

ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    planet_id numeric(9,0) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth integer,
    star_id numeric(9,0) NOT NULL
);

ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    spaceship_id numeric(9,0) NOT NULL,
    name character varying(100) NOT NULL,
    mission_name text NOT NULL,
    capacity integer,
    launch_year integer,
    is_manned boolean,
    has_returned boolean,
    planet_id numeric(9,0)
);

ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean,
    has_life boolean,
    star_id numeric(9,0) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth integer,
    galaxy_id numeric(9,0) NOT NULL
);

ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Our home galaxy', true, true, 100000001, 13600, 0);
INSERT INTO public.galaxy VALUES ('Andromeda', 'Nearest spiral galaxy to the Milky Way', true, false, 100000002, 10000, 2537000);
INSERT INTO public.galaxy VALUES ('Messier 87', 'Large elliptical galaxy in Virgo cluster', true, false, 100000003, 13000, 53000000);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 'Galaxy with bright nucleus and large central bulge', true, false, 100000004, 13000, 29000000);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 'Satellite galaxy of the Milky Way', false, false, 100000005, 10000, 163000);
INSERT INTO public.galaxy VALUES ('Triangulum Galaxy', 'Third-largest member of the Local Group', true, false, 100000006, 12000, 3000000);

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 'Only natural satellite of Earth', true, false, 400000001, 4500, 0, 300000001);
INSERT INTO public.moon VALUES ('Phobos', 'Larger and closer moon of Mars', false, false, 400000002, 4500, 0, 300000001);
INSERT INTO public.moon VALUES ('Deimos', 'Smaller and farther moon of Mars', false, false, 400000003, 4500, 0, 300000002);
INSERT INTO public.moon VALUES ('Europa', 'Icy moon with possible subsurface ocean', true, NULL, 400000004, 4500, 0, 300000002);
INSERT INTO public.moon VALUES ('Ganymede', 'Largest moon in the solar system', true, false, 400000005, 4500, 0, 300000003);
INSERT INTO public.moon VALUES ('Callisto', 'Heavily cratered moon of Jupiter', true, false, 400000006, 4500, 0, 300000003);
INSERT INTO public.moon VALUES ('Io', 'Volcanically active moon of Jupiter', true, false, 400000007, 4500, 0, 300000004);
INSERT INTO public.moon VALUES ('Titan', 'Thick atmosphere and surface lakes', true, NULL, 400000008, 4500, 0, 300000004);
INSERT INTO public.moon VALUES ('Enceladus', 'Water plumes and possible ocean', true, NULL, 400000009, 4500, 0, 300000005);
INSERT INTO public.moon VALUES ('Tethys', 'Icy moon with large crater', true, false, 400000010, 4500, 0, 300000005);
INSERT INTO public.moon VALUES ('Dione', 'Heavily cratered, possible subsurface ocean', true, NULL, 400000011, 4500, 0, 300000006);
INSERT INTO public.moon VALUES ('Rhea', 'Second-largest moon of Saturn', true, false, 400000012, 4500, 0, 300000006);
INSERT INTO public.moon VALUES ('Mimas', 'Looks like the Death Star', true, false, 400000013, 4500, 0, 300000007);
INSERT INTO public.moon VALUES ('Triton', 'Neptune’s largest moon, retrograde orbit', true, false, 400000014, 4500, 0, 300000007);
INSERT INTO public.moon VALUES ('Nereid', 'Highly eccentric orbit around Neptune', true, false, 400000015, 4500, 0, 300000008);
INSERT INTO public.moon VALUES ('Charon', 'Largest moon of Pluto', true, false, 400000016, 4500, 0, 300000008);
INSERT INTO public.moon VALUES ('Oberon', 'Second-largest Uranian moon', true, false, 400000017, 4500, 0, 300000009);
INSERT INTO public.moon VALUES ('Titania', 'Largest moon of Uranus', true, false, 400000018, 4500, 0, 300000009);
INSERT INTO public.moon VALUES ('Umbriel', 'Dark surface and ancient terrain', true, false, 400000019, 4500, 0, 300000010);
INSERT INTO public.moon VALUES ('Ariel', 'Brightest of Uranus’ major moons', true, false, 400000020, 4500, 0, 300000010);

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 'Only known planet to support life', true, true, 300000001, 4540, 0, 200000001);
INSERT INTO public.planet VALUES ('Mars', 'Known as the Red Planet, possible past water', true, false, 300000002, 4500, 0, 200000001);
INSERT INTO public.planet VALUES ('Venus', 'Hottest planet in the solar system', true, false, 300000003, 4500, 0, 200000002);
INSERT INTO public.planet VALUES ('Jupiter', 'Largest planet in the solar system', true, false, 300000004, 4500, 0, 200000002);
INSERT INTO public.planet VALUES ('Saturn', 'Famous for its stunning ring system', true, false, 300000005, 4500, 0, 200000003);
INSERT INTO public.planet VALUES ('Neptune', 'Coldest planet with strong winds', true, false, 300000006, 4500, 0, 200000003);
INSERT INTO public.planet VALUES ('Uranus', 'Tilted planet with icy atmosphere', true, false, 300000007, 4500, 0, 200000004);
INSERT INTO public.planet VALUES ('Mercury', 'Smallest planet and closest to the sun', true, false, 300000008, 4500, 0, 200000004);
INSERT INTO public.planet VALUES ('Kepler-452b', 'Exoplanet in the habitable zone', true, true, 300000009, 6000, 1400, 200000005);
INSERT INTO public.planet VALUES ('Proxima b', 'Exoplanet orbiting Proxima Centauri', true, true, 300000010, 4800, 4, 200000005);
INSERT INTO public.planet VALUES ('Gliese 581g', 'Potentially habitable exoplanet', true, true, 300000011, 7000, 20, 200000006);
INSERT INTO public.planet VALUES ('HD 209458 b', 'First exoplanet to have atmosphere detected', true, false, 300000012, 5000, 159, 200000006);

--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceship VALUES (500000001, 'Explorer I', 'Mars Research Alpha', 6, 2025, true, false, 300000001);
INSERT INTO public.spaceship VALUES (500000002, 'Odyssey', 'Europa Ice Core Study', 8, 2028, true, true, 300000002);
INSERT INTO public.spaceship VALUES (500000003, 'Pioneer', 'Venus Climate Mapping', 5, 2026, false, false, 300000003);

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 'The central star of our solar system', true, true, 200000001, 4600, 0, 100000001);
INSERT INTO public.star VALUES ('Proxima Centauri', 'Closest known star to the Sun', true, false, 200000002, 4500, 4, 100000001);
INSERT INTO public.star VALUES ('Betelgeuse', 'Red supergiant in the Orion constellation', true, false, 200000003, 10000, 643, 100000002);
INSERT INTO public.star VALUES ('Sirius A', 'Brightest star in the night sky', true, false, 200000004, 242, 9, 100000002);
INSERT INTO public.star VALUES ('Vega', 'Main sequence star in the Lyra constellation', true, false, 200000005, 455, 25, 100000003);
INSERT INTO public.star VALUES ('Rigel', 'Blue supergiant in the Orion constellation', true, false, 200000006, 800, 860, 100000003);

--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);

--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);

--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);

--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);

--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);

--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);

--
-- Name: spaceship spaceship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_name_key UNIQUE (name);

--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);

--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);

--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);

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
-- Name: spaceship spaceship_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);

--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);

--
-- PostgreSQL database dump complete
--


