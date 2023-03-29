--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Homebrew)
-- Dumped by pg_dump version 14.7 (Homebrew)

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: KamiliaTahiri
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO "KamiliaTahiri";

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: KamiliaTahiri
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO "KamiliaTahiri";

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: KamiliaTahiri
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: KamiliaTahiri
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO "KamiliaTahiri";

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: KamiliaTahiri
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO "KamiliaTahiri";

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: KamiliaTahiri
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: KamiliaTahiri
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO "KamiliaTahiri";

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: KamiliaTahiri
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO "KamiliaTahiri";

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: KamiliaTahiri
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: KamiliaTahiri
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "KamiliaTahiri";

--
-- Name: menus; Type: TABLE; Schema: public; Owner: KamiliaTahiri
--

CREATE TABLE public.menus (
    id bigint NOT NULL,
    title character varying,
    subtitle character varying,
    description text,
    price double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    bestoff boolean
);


ALTER TABLE public.menus OWNER TO "KamiliaTahiri";

--
-- Name: menus_id_seq; Type: SEQUENCE; Schema: public; Owner: KamiliaTahiri
--

CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menus_id_seq OWNER TO "KamiliaTahiri";

--
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: KamiliaTahiri
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- Name: reservations; Type: TABLE; Schema: public; Owner: KamiliaTahiri
--

CREATE TABLE public.reservations (
    id bigint NOT NULL,
    phone_number character varying,
    date date,
    "time" time without time zone,
    people_number integer,
    allergy character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    email character varying,
    lastname character varying
);


ALTER TABLE public.reservations OWNER TO "KamiliaTahiri";

--
-- Name: reservations_id_seq; Type: SEQUENCE; Schema: public; Owner: KamiliaTahiri
--

CREATE SEQUENCE public.reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reservations_id_seq OWNER TO "KamiliaTahiri";

--
-- Name: reservations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: KamiliaTahiri
--

ALTER SEQUENCE public.reservations_id_seq OWNED BY public.reservations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: KamiliaTahiri
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "KamiliaTahiri";

--
-- Name: slots; Type: TABLE; Schema: public; Owner: KamiliaTahiri
--

CREATE TABLE public.slots (
    id bigint NOT NULL,
    date date,
    "time" time without time zone,
    reservation_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.slots OWNER TO "KamiliaTahiri";

--
-- Name: slots_id_seq; Type: SEQUENCE; Schema: public; Owner: KamiliaTahiri
--

CREATE SEQUENCE public.slots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.slots_id_seq OWNER TO "KamiliaTahiri";

--
-- Name: slots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: KamiliaTahiri
--

ALTER SEQUENCE public.slots_id_seq OWNED BY public.slots.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: KamiliaTahiri
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    firstname character varying,
    lastname character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    allergy character varying,
    people_number integer
);


ALTER TABLE public.users OWNER TO "KamiliaTahiri";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: KamiliaTahiri
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "KamiliaTahiri";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: KamiliaTahiri
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- Name: reservations id; Type: DEFAULT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.reservations ALTER COLUMN id SET DEFAULT nextval('public.reservations_id_seq'::regclass);


--
-- Name: slots id; Type: DEFAULT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.slots ALTER COLUMN id SET DEFAULT nextval('public.slots_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: KamiliaTahiri
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	illustration	Menu	1	1	2023-03-27 15:23:25.854243
2	illustration	Menu	2	2	2023-03-27 15:42:59.36674
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: KamiliaTahiri
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	8halhr8wbrkh6w2h76ia7m9it2o2	pexels-maria-bortolotto-6270541.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	3028593	a1ZTN6EQS66WL+OEPn/Viw==	2023-03-27 15:23:25.839346
2	t56yeugtpgii0zqbbrfhox1hnis0	Palette coolors.png	image/png	{"identified":true,"analyzed":true}	local	2552985	Gy5xC81chs8VhVSpvqlpQA==	2023-03-27 15:42:59.363973
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: KamiliaTahiri
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: KamiliaTahiri
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-03-27 14:40:41.365594	2023-03-27 14:40:41.365594
\.


--
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: KamiliaTahiri
--

COPY public.menus (id, title, subtitle, description, price, created_at, updated_at, bestoff) FROM stdin;
1	Gambas	Gambasito	fjslkjfslfjsjfklfjsf\r\nasdlkfjasldkfj\r\nasdkfjaslkdfjasf	22	2023-03-27 15:23:25.792741	2023-03-27 15:42:35.065992	t
2	Burger	Burgerito	asdflkj\r\nasdjlkfajs\r\nasfdlkjaslkdfj	15	2023-03-27 15:42:59.342699	2023-03-27 15:42:59.368807	f
\.


--
-- Data for Name: reservations; Type: TABLE DATA; Schema: public; Owner: KamiliaTahiri
--

COPY public.reservations (id, phone_number, date, "time", people_number, allergy, created_at, updated_at, email, lastname) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: KamiliaTahiri
--

COPY public.schema_migrations (version) FROM stdin;
20230314153939
20230317104823
20230323151434
20230323152301
20230323155846
20230324153932
20230327143842
20230327151017
20230327151828
\.


--
-- Data for Name: slots; Type: TABLE DATA; Schema: public; Owner: KamiliaTahiri
--

COPY public.slots (id, date, "time", reservation_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: KamiliaTahiri
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, firstname, lastname, created_at, updated_at, allergy, people_number) FROM stdin;
1	kami@k.k	$2a$12$rR6s4hT4dx9Akt2YxOtLaOe0tNy42O9KC0fgLZqTU.Bxmg3NH2Vo6	\N	\N	\N	k	k	2023-03-27 14:41:42.863813	2023-03-27 14:41:42.863813		\N
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: KamiliaTahiri
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 2, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: KamiliaTahiri
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 2, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: KamiliaTahiri
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: KamiliaTahiri
--

SELECT pg_catalog.setval('public.menus_id_seq', 2, true);


--
-- Name: reservations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: KamiliaTahiri
--

SELECT pg_catalog.setval('public.reservations_id_seq', 1, false);


--
-- Name: slots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: KamiliaTahiri
--

SELECT pg_catalog.setval('public.slots_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: KamiliaTahiri
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- Name: reservations reservations_pkey; Type: CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: slots slots_pkey; Type: CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.slots
    ADD CONSTRAINT slots_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: KamiliaTahiri
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: KamiliaTahiri
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: KamiliaTahiri
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: KamiliaTahiri
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_slots_on_reservation_id; Type: INDEX; Schema: public; Owner: KamiliaTahiri
--

CREATE INDEX index_slots_on_reservation_id ON public.slots USING btree (reservation_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: KamiliaTahiri
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: KamiliaTahiri
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: slots fk_rails_6450cc91e6; Type: FK CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.slots
    ADD CONSTRAINT fk_rails_6450cc91e6 FOREIGN KEY (reservation_id) REFERENCES public.reservations(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: KamiliaTahiri
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

