--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO blog;

--
-- Name: booking; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE booking (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    phone character varying(255),
    amount integer,
    post_id integer,
    published_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.booking OWNER TO blog;

--
-- Name: booking_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE booking_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.booking_id_seq OWNER TO blog;

--
-- Name: booking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE booking_id_seq OWNED BY booking.id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE category (
    id integer NOT NULL,
    name character varying(100),
    slug character varying(100),
    is_menu integer
);


ALTER TABLE public.category OWNER TO blog;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO blog;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE category_id_seq OWNED BY category.id;


--
-- Name: contact; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE contact (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255),
    published_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.contact OWNER TO blog;

--
-- Name: contact_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_id_seq OWNER TO blog;

--
-- Name: contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE contact_id_seq OWNED BY contact.id;


--
-- Name: email; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE email (
    id integer NOT NULL,
    email character varying(255),
    name character varying(255),
    published_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.email OWNER TO blog;

--
-- Name: email_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_id_seq OWNER TO blog;

--
-- Name: email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE email_id_seq OWNED BY email.id;


--
-- Name: emailgroup; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE emailgroup (
    id integer NOT NULL,
    email_id integer,
    group_id integer,
    published_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.emailgroup OWNER TO blog;

--
-- Name: emailgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE emailgroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emailgroup_id_seq OWNER TO blog;

--
-- Name: emailgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE emailgroup_id_seq OWNED BY emailgroup.id;


--
-- Name: event; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE event (
    id integer NOT NULL,
    title character varying(500),
    slug character varying(500),
    description text,
    date timestamp without time zone,
    feature_image text,
    views integer,
    user_id integer,
    published_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.event OWNER TO blog;

--
-- Name: event_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_id_seq OWNER TO blog;

--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE event_id_seq OWNED BY event.id;


--
-- Name: group; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE "group" (
    id integer NOT NULL,
    name character varying(255),
    published_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public."group" OWNER TO blog;

--
-- Name: group_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_id_seq OWNER TO blog;

--
-- Name: group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE group_id_seq OWNED BY "group".id;


--
-- Name: page; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE page (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    description text,
    published_at timestamp without time zone DEFAULT now(),
    is_menu integer
);


ALTER TABLE public.page OWNER TO blog;

--
-- Name: page_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_id_seq OWNER TO blog;

--
-- Name: page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE page_id_seq OWNED BY page.id;


--
-- Name: partner; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE partner (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    url character varying(255),
    feature_image text,
    published_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.partner OWNER TO blog;

--
-- Name: partner_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE partner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_id_seq OWNER TO blog;

--
-- Name: partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE partner_id_seq OWNED BY partner.id;


--
-- Name: post; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE post (
    id integer NOT NULL,
    title character varying(255),
    description text,
    feature_image text,
    slug character varying(255),
    category_id integer,
    user_id integer,
    file character varying(255),
    published_at timestamp without time zone DEFAULT now(),
    views integer
);


ALTER TABLE public.post OWNER TO blog;

--
-- Name: post_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_id_seq OWNER TO blog;

--
-- Name: post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE post_id_seq OWNED BY post.id;


--
-- Name: user_member; Type: TABLE; Schema: public; Owner: blog; Tablespace: 
--

CREATE TABLE user_member (
    id integer NOT NULL,
    name character varying(50),
    email character varying(100),
    password character varying(600),
    password2 character varying(200),
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.user_member OWNER TO blog;

--
-- Name: user_member_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

CREATE SEQUENCE user_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_member_id_seq OWNER TO blog;

--
-- Name: user_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blog
--

ALTER SEQUENCE user_member_id_seq OWNED BY user_member.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY booking ALTER COLUMN id SET DEFAULT nextval('booking_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY category ALTER COLUMN id SET DEFAULT nextval('category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY contact ALTER COLUMN id SET DEFAULT nextval('contact_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY email ALTER COLUMN id SET DEFAULT nextval('email_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY emailgroup ALTER COLUMN id SET DEFAULT nextval('emailgroup_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY event ALTER COLUMN id SET DEFAULT nextval('event_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY "group" ALTER COLUMN id SET DEFAULT nextval('group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY page ALTER COLUMN id SET DEFAULT nextval('page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY partner ALTER COLUMN id SET DEFAULT nextval('partner_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY post ALTER COLUMN id SET DEFAULT nextval('post_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: blog
--

ALTER TABLE ONLY user_member ALTER COLUMN id SET DEFAULT nextval('user_member_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY alembic_version (version_num) FROM stdin;
854ddec9d8e9
\.


--
-- Data for Name: booking; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY booking (id, name, email, phone, amount, post_id, published_at) FROM stdin;
\.


--
-- Name: booking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('booking_id_seq', 1, false);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY category (id, name, slug, is_menu) FROM stdin;
1	Template	template	1
3	Blog	blog	0
\.


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('category_id_seq', 3, true);


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY contact (id, firstname, lastname, email, published_at) FROM stdin;
\.


--
-- Name: contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('contact_id_seq', 1, false);


--
-- Data for Name: email; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY email (id, email, name, published_at) FROM stdin;
\.


--
-- Name: email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('email_id_seq', 1, false);


--
-- Data for Name: emailgroup; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY emailgroup (id, email_id, group_id, published_at) FROM stdin;
\.


--
-- Name: emailgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('emailgroup_id_seq', 1, false);


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY event (id, title, slug, description, date, feature_image, views, user_id, published_at) FROM stdin;
\.


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('event_id_seq', 1, false);


--
-- Data for Name: group; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY "group" (id, name, published_at) FROM stdin;
\.


--
-- Name: group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('group_id_seq', 1, false);


--
-- Data for Name: page; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY page (id, title, slug, description, published_at, is_menu) FROM stdin;
2	About	about	<h2><strong>&nbsp; &nbsp; &nbsp; Amoogli is an engine for:</strong></h2>\r\n\r\n<ul>\r\n\t<li>web publishing with backlings and URL tracking integration. Blogers and web publishers used the system with custom domain and host IP.anding page building for automate marking and SEO.</li>\r\n\t<li>persionalize group mails communication using Gmail SMTP with its own WebmailUI.</li>\r\n\t<li>social medias Facebook, LinkedIn, Twitter publishing direct from WebmailUi.</li>\r\n</ul>\r\n	2016-07-25 13:40:04.001962	1
1	Contact	contact	<p>This is our comtact page</p>\r\n	2016-07-25 09:34:09.154096	0
\.


--
-- Name: page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('page_id_seq', 2, true);


--
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY partner (id, name, slug, url, feature_image, published_at) FROM stdin;
\.


--
-- Name: partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('partner_id_seq', 1, false);


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY post (id, title, description, feature_image, slug, category_id, user_id, file, published_at, views) FROM stdin;
1	ddd	<p>dddddddd</p>\r\n	data:image/jpeg;base64,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	ddd	1	1	20160725094528783005_12473982_937106653033521_3595530463091971883_o-300x200.jpg	2016-07-25 09:45:28.716297	0
2	First templat download	<p>dddddddd</p>\r\n	data:image/jpeg;base64,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	first-templat-download	1	1	20160725101405648203_12473982_937106653033521_3595530463091971883_o-300x200.jpg	2016-07-25 10:14:05.593468	1
\.


--
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('post_id_seq', 2, true);


--
-- Data for Name: user_member; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY user_member (id, name, email, password, password2, created_at) FROM stdin;
1	KImsal	kimsalsan007@gmail.com	$6$rounds=61891$J1gX7wrlO9yXc4wO$RonZcgiUIEB5py/kBItOfj/ACgbQhrOViOefkApyZRue7O9G/IoPunRKIkfWDnJHizNy3LMTPf4Dlo1PcgBYQ0	kimsal	2016-07-25 09:32:40.485661
\.


--
-- Name: user_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('user_member_id_seq', 2, true);


--
-- Name: booking_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (id);


--
-- Name: category_name_key; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_name_key UNIQUE (name);


--
-- Name: category_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: contact_email_key; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_email_key UNIQUE (email);


--
-- Name: contact_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- Name: email_email_key; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY email
    ADD CONSTRAINT email_email_key UNIQUE (email);


--
-- Name: email_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY email
    ADD CONSTRAINT email_pkey PRIMARY KEY (id);


--
-- Name: emailgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY emailgroup
    ADD CONSTRAINT emailgroup_pkey PRIMARY KEY (id);


--
-- Name: event_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: event_slug_key; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY event
    ADD CONSTRAINT event_slug_key UNIQUE (slug);


--
-- Name: group_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY "group"
    ADD CONSTRAINT group_pkey PRIMARY KEY (id);


--
-- Name: page_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY page
    ADD CONSTRAINT page_pkey PRIMARY KEY (id);


--
-- Name: page_title_key; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY page
    ADD CONSTRAINT page_title_key UNIQUE (title);


--
-- Name: partner_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY partner
    ADD CONSTRAINT partner_pkey PRIMARY KEY (id);


--
-- Name: post_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- Name: post_slug_key; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY post
    ADD CONSTRAINT post_slug_key UNIQUE (slug);


--
-- Name: post_title_key; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY post
    ADD CONSTRAINT post_title_key UNIQUE (title);


--
-- Name: user_member_email_key; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY user_member
    ADD CONSTRAINT user_member_email_key UNIQUE (email);


--
-- Name: user_member_pkey; Type: CONSTRAINT; Schema: public; Owner: blog; Tablespace: 
--

ALTER TABLE ONLY user_member
    ADD CONSTRAINT user_member_pkey PRIMARY KEY (id);


--
-- Name: booking_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: blog
--

ALTER TABLE ONLY booking
    ADD CONSTRAINT booking_post_id_fkey FOREIGN KEY (post_id) REFERENCES post(id);


--
-- Name: event_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: blog
--

ALTER TABLE ONLY event
    ADD CONSTRAINT event_user_id_fkey FOREIGN KEY (user_id) REFERENCES user_member(id);


--
-- Name: post_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: blog
--

ALTER TABLE ONLY post
    ADD CONSTRAINT post_category_id_fkey FOREIGN KEY (category_id) REFERENCES category(id);


--
-- Name: post_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: blog
--

ALTER TABLE ONLY post
    ADD CONSTRAINT post_user_id_fkey FOREIGN KEY (user_id) REFERENCES user_member(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

