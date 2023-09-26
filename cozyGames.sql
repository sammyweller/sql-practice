--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-09-26 11:58:35 EDT

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
-- TOC entry 217 (class 1259 OID 24587)
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    gameid integer NOT NULL,
    title character varying(100) NOT NULL,
    description character varying(2000),
    genreid integer NOT NULL,
    imgpath character varying(500)
);


ALTER TABLE public.games OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24586)
-- Name: games_gameid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_gameid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_gameid_seq OWNER TO postgres;

--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 216
-- Name: games_gameid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_gameid_seq OWNED BY public.games.gameid;


--
-- TOC entry 215 (class 1259 OID 24578)
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    genreid integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(1000)
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24577)
-- Name: genres_genreid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genres_genreid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_genreid_seq OWNER TO postgres;

--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 214
-- Name: genres_genreid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_genreid_seq OWNED BY public.genres.genreid;


--
-- TOC entry 221 (class 1259 OID 24608)
-- Name: user_fav; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_fav (
    favoriteid integer NOT NULL,
    userid integer,
    gameid integer
);


ALTER TABLE public.user_fav OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24607)
-- Name: user_fav_favoriteid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_fav_favoriteid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_fav_favoriteid_seq OWNER TO postgres;

--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 220
-- Name: user_fav_favoriteid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_fav_favoriteid_seq OWNED BY public.user_fav.favoriteid;


--
-- TOC entry 219 (class 1259 OID 24601)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    userid integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(50) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24600)
-- Name: users_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_userid_seq OWNER TO postgres;

--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 218
-- Name: users_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;


--
-- TOC entry 3455 (class 2604 OID 24590)
-- Name: games gameid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN gameid SET DEFAULT nextval('public.games_gameid_seq'::regclass);


--
-- TOC entry 3454 (class 2604 OID 24581)
-- Name: genres genreid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN genreid SET DEFAULT nextval('public.genres_genreid_seq'::regclass);


--
-- TOC entry 3457 (class 2604 OID 24611)
-- Name: user_fav favoriteid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_fav ALTER COLUMN favoriteid SET DEFAULT nextval('public.user_fav_favoriteid_seq'::regclass);


--
-- TOC entry 3456 (class 2604 OID 24604)
-- Name: users userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);


--
-- TOC entry 3614 (class 0 OID 24587)
-- Dependencies: 217
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.games (gameid, title, description, genreid, imgpath) VALUES (1, 'Cozy Grove', 'Welcome to Cozy Grove, a life-sim game about camping on a haunted, ever-changing island. As a Spirit Scount, you''ll wander the island''s forest each day, finding new hidden secrets and helping soothe the local ghosts.', 1, 'https://www.pockettactics.com/wp-content/sites/pockettactics/2021/03/cozy-grove-review-3.jpg');
INSERT INTO public.games (gameid, title, description, genreid, imgpath) VALUES (2, 'HOA', 'Experience the magic of nature and imagination as you play the main character, Hoa, on her journey through breathtaking environments back to where it all began.', 2, 'https://assets-prd.ignimgs.com/2021/08/23/hoa-blogroll01-1629697374458.jpg');
INSERT INTO public.games (gameid, title, description, genreid, imgpath) VALUES (3, 'A Short Hike', 'Follow the marked trails or explore the backcountry as you make your way to the summit. Along the way, meet other hikers, discover hidden treasures, and take in the world around you.', 3, 'https://image.api.playstation.com/vulcan/ap/rnd/202107/0919/9ewQXoMuOBkXXWXIoHyGGkXk.png');
INSERT INTO public.games (gameid, title, description, genreid, imgpath) VALUES (4, 'Smushi Come Home', 'Smushi Come Home is a cozy exploration adventure game where you play as a tiny mushroom who is trying to get back home! Play as Smushi, who was taken from its home unexpectedly and dropped into the middle of the forest.', 2, 'https://media.moddb.com/images/games/1/80/79485/ss_fffc45caa8a04a8ba23bd01db45c1d6c5.jpg');
INSERT INTO public.games (gameid, title, description, genreid, imgpath) VALUES (5, 'Hokko Life', 'Hop off the train and into your new life in the village of Hokko! Take over the old workshop and get creative; use crafted materials and design everything in town.', 1, 'https://images.nintendolife.com/07854b840ae29/1280x720.jpg');
INSERT INTO public.games (gameid, title, description, genreid, imgpath) VALUES (6, 'Mail Time', 'As a newly trained Mail Scout, put on your pack, grab those letters, and deliver them across Grumblewood Grove! The forest animals eagerly await the sight of your mushroom hat in this cozy, cottagecore light-platformer adventure!', 3, 'https://ksr-ugc.imgix.net/assets/035/639/105/6f282b1179978de1a38a1f9d56b811f0_original.png?ixlib=rb-4.1.0&crop=faces&w=1552&h=873&fit=crop&v=1637365923&auto=format&frame=1&q=92&s=947110596385116ec63df8dccc6fdf91');
INSERT INTO public.games (gameid, title, description, genreid, imgpath) VALUES (7, 'Townscraper', 'Build quaint island towns with curvy streets. Build small hamlets, soaring cathedrals, canal networks, or sky cities on stilts. Block by block. No goal.', 3, 'https://cdn.akamai.steamstatic.com/steam/apps/1291340/ss_07f2bedd6f510cb08bf5a0708e3a2e8ed299fbbd.1920x1080.jpg?t=1692102838');
INSERT INTO public.games (gameid, title, description, genreid, imgpath) VALUES (8, 'Stardew Valley', 'You''ve inherited your grandfather''s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life!', 2, 'https://cdn.akamai.steamstatic.com/steam/apps/413150/ss_a3ddf22cda3bd722df77dbdd58dbec393906b654.1920x1080.jpg?t=1666917466');
INSERT INTO public.games (gameid, title, description, genreid, imgpath) VALUES (9, 'Animal Crossing', 'Escape to a deserted island and create your own paradise as you explore, create, and customize in the Animal Crossing: New Horizons game.', 1, 'https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/software/switch/70010000027619/9989957eae3a6b545194c42fec2071675c34aadacd65e6b33fdfe7b3b6a86c3a');


--
-- TOC entry 3612 (class 0 OID 24578)
-- Dependencies: 215
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.genres (genreid, name, description) VALUES (1, 'Life simulation', 'Life simulation games form a subgenre of simulation video games in which the player lives or controls one or more virtual characters. Such a game can revolve around individuals and relationships, or it could be a simulation of an ecosystem. Other terms include artificial life game and simulated life game.');
INSERT INTO public.genres (genreid, name, description) VALUES (2, 'Adventure', 'An adventure game is a video game genre in which the player assumes the role of a protagonist in an interactive story, driven by exploration and/or puzzle-solving.');
INSERT INTO public.genres (genreid, name, description) VALUES (3, 'Indie', 'An indie game, short for independent video game, is a video game typically created by individuals or smaller development teams without the financial and technical support of a large game publisher.');


--
-- TOC entry 3618 (class 0 OID 24608)
-- Dependencies: 221
-- Data for Name: user_fav; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_fav (favoriteid, userid, gameid) VALUES (3, 2, 9);
INSERT INTO public.user_fav (favoriteid, userid, gameid) VALUES (4, 2, 2);
INSERT INTO public.user_fav (favoriteid, userid, gameid) VALUES (5, 3, 1);
INSERT INTO public.user_fav (favoriteid, userid, gameid) VALUES (6, 3, 3);
INSERT INTO public.user_fav (favoriteid, userid, gameid) VALUES (7, 4, 8);
INSERT INTO public.user_fav (favoriteid, userid, gameid) VALUES (8, 4, 1);
INSERT INTO public.user_fav (favoriteid, userid, gameid) VALUES (9, 5, 7);
INSERT INTO public.user_fav (favoriteid, userid, gameid) VALUES (10, 5, 3);


--
-- TOC entry 3616 (class 0 OID 24601)
-- Dependencies: 219
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (userid, username, password, email) VALUES (1, 'sammyweller', 'password1', 'fake1@fake.com');
INSERT INTO public.users (userid, username, password, email) VALUES (2, 'johndoe', 'password2', 'fake2@fake.com');
INSERT INTO public.users (userid, username, password, email) VALUES (3, 'janedoe', 'password3', 'fake3@fake.com');
INSERT INTO public.users (userid, username, password, email) VALUES (4, 'timsmith', 'password4', 'fake4@fake.com');
INSERT INTO public.users (userid, username, password, email) VALUES (5, 'piperpeach', 'password5', 'fake5@fake.com');


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 216
-- Name: games_gameid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_gameid_seq', 9, true);


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 214
-- Name: genres_genreid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_genreid_seq', 3, true);


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 220
-- Name: user_fav_favoriteid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_fav_favoriteid_seq', 10, true);


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 218
-- Name: users_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_userid_seq', 5, true);


--
-- TOC entry 3461 (class 2606 OID 24594)
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (gameid);


--
-- TOC entry 3459 (class 2606 OID 24585)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genreid);


--
-- TOC entry 3465 (class 2606 OID 24613)
-- Name: user_fav user_fav_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_fav
    ADD CONSTRAINT user_fav_pkey PRIMARY KEY (favoriteid);


--
-- TOC entry 3463 (class 2606 OID 24606)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);


--
-- TOC entry 3467 (class 2606 OID 24619)
-- Name: user_fav gamekey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_fav
    ADD CONSTRAINT gamekey FOREIGN KEY (gameid) REFERENCES public.games(gameid);


--
-- TOC entry 3466 (class 2606 OID 24595)
-- Name: games genrekey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT genrekey FOREIGN KEY (genreid) REFERENCES public.genres(genreid);


--
-- TOC entry 3468 (class 2606 OID 24614)
-- Name: user_fav userkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_fav
    ADD CONSTRAINT userkey FOREIGN KEY (userid) REFERENCES public.users(userid);


-- Completed on 2023-09-26 11:58:35 EDT

--
-- PostgreSQL database dump complete
--

