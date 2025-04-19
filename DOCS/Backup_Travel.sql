--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-18 23:15:37

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5044 (class 1262 OID 24752)
-- Name: traveling_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE traveling_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-MX';


ALTER DATABASE traveling_db OWNER TO postgres;

\connect traveling_db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5021 (class 0 OID 24776)
-- Dependencies: 224
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 5017 (class 0 OID 24762)
-- Dependencies: 220
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	users	destino
8	users	reseña
9	users	profile
\.


--
-- TOC entry 5019 (class 0 OID 24770)
-- Dependencies: 222
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add destino	7	add_destino
26	Can change destino	7	change_destino
27	Can delete destino	7	delete_destino
28	Can view destino	7	view_destino
29	Can add reseña	8	add_reseña
30	Can change reseña	8	change_reseña
31	Can delete reseña	8	delete_reseña
32	Can view reseña	8	view_reseña
33	Can add profile	9	add_profile
34	Can change profile	9	change_profile
35	Can delete profile	9	delete_profile
36	Can view profile	9	view_profile
\.


--
-- TOC entry 5023 (class 0 OID 24784)
-- Dependencies: 226
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 5025 (class 0 OID 24790)
-- Dependencies: 228
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
5	pbkdf2_sha256$870000$qzBxeQIIQ43fVvnHyZc6ul$wDqGcfPcB9FiIDMaTbXubGHYgKeUmotoDed2s2mNMe0=	\N	f	juans	Juan sebastian ardila		juans@gmail.com	f	t	2025-04-18 15:59:22.809051-05
1	pbkdf2_sha256$870000$eATB8a8z3yBt9bljQYldKd$BeqntwijABQTkOWtSN2vS44tyoW/yHAsRkTxgv2Xw4g=	2025-04-18 20:55:01.280969-05	t	root			rodriguezm.michaelfernando@gmail.com	t	t	2025-03-27 15:39:46.55486-05
4	pbkdf2_sha256$870000$xaJsFebkGLINsw0KARCiZa$U5qB7PwkumOyax2/ow7I8LYP2vPqWnxPhVaiQoK9C80=	2025-04-18 21:25:42.103721-05	f	nata	Natalia		nata@gmail.com	f	t	2025-04-17 22:52:40.097161-05
3	pbkdf2_sha256$870000$gThUF7qiQAQHQKTLBODjBV$h2diAVtJ8wtNuLyjgnrAUkdtu9UTk1Dh0ybivbgunOE=	2025-04-18 14:53:28.341243-05	f	mc.maicfer			mc.maicfer@gmail.com	f	t	2025-04-17 22:41:46-05
\.


--
-- TOC entry 5027 (class 0 OID 24798)
-- Dependencies: 230
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 5029 (class 0 OID 24804)
-- Dependencies: 232
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 5031 (class 0 OID 24862)
-- Dependencies: 234
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2025-04-03 21:36:03.79888-05	2	Prueba	1	[{"added": {}}]	4	1
2	2025-04-15 16:57:20.668555-05	2	Prueba	2	[{"changed": {"fields": ["Email address"]}}]	4	1
3	2025-04-17 22:49:38.140651-05	3	mc.maicfer	2	[{"changed": {"fields": ["password"]}}]	4	1
4	2025-04-17 22:49:44.859931-05	3	mc.maicfer	2	[]	4	1
5	2025-04-18 16:06:22.836376-05	2	Prueba	3		4	1
6	2025-04-18 16:06:40.458661-05	6	perez1	3		4	1
\.


--
-- TOC entry 5015 (class 0 OID 24754)
-- Dependencies: 218
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-03-27 01:56:05.715656-05
2	auth	0001_initial	2025-03-27 01:56:05.796608-05
3	admin	0001_initial	2025-03-27 01:56:05.816957-05
4	admin	0002_logentry_remove_auto_add	2025-03-27 01:56:05.821954-05
5	admin	0003_logentry_add_action_flag_choices	2025-03-27 01:56:05.828997-05
6	contenttypes	0002_remove_content_type_name	2025-03-27 01:56:05.84277-05
7	auth	0002_alter_permission_name_max_length	2025-03-27 01:56:05.848712-05
8	auth	0003_alter_user_email_max_length	2025-03-27 01:56:05.854836-05
9	auth	0004_alter_user_username_opts	2025-03-27 01:56:05.859804-05
10	auth	0005_alter_user_last_login_null	2025-03-27 01:56:05.86497-05
11	auth	0006_require_contenttypes_0002	2025-03-27 01:56:05.86701-05
12	auth	0007_alter_validators_add_error_messages	2025-03-27 01:56:05.872024-05
13	auth	0008_alter_user_username_max_length	2025-03-27 01:56:05.884019-05
14	auth	0009_alter_user_last_name_max_length	2025-03-27 01:56:05.891062-05
15	auth	0010_alter_group_name_max_length	2025-03-27 01:56:05.897321-05
16	auth	0011_update_proxy_permissions	2025-03-27 01:56:05.903441-05
17	auth	0012_alter_user_first_name_max_length	2025-03-27 01:56:05.908846-05
18	sessions	0001_initial	2025-03-27 01:56:05.91825-05
20	users	0001_initial	2025-04-15 15:46:51.824581-05
21	users	0002_alter_destino_imagen	2025-04-16 12:44:43.71868-05
22	users	0003_reseña	2025-04-16 23:57:02.636048-05
23	users	0004_profile	2025-04-17 20:57:18.647399-05
24	users	0005_rename_ciudad_profile_city_and_more	2025-04-17 21:56:44.374999-05
25	users	0006_alter_destino_imagen	2025-04-18 00:25:58.613696-05
26	users	0007_profile_image	2025-04-18 14:29:41.148815-05
27	users	0008_rename_destino_reseña_ciudad_visitada	2025-04-18 17:37:46.305388-05
\.


--
-- TOC entry 5032 (class 0 OID 24890)
-- Dependencies: 235
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 5034 (class 0 OID 33104)
-- Dependencies: 237
-- Data for Name: users_destino; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_destino (id, nombre, pais, descripcion, imagen, enlace, precio) FROM stdin;
11	Miami	Estados Unidos	Playas vibrantes, vida nocturna activa y clima tropical.	https://www.miamiandbeaches.com/getmedia/f35e8173-0df2-4bed-86dc-727805570021/Miami-Aerial-Photos-Golden-Dusk-Photography-1440x900.jpg?width=1000&resizemode=force\n	\N	1500.00
12	Medellín	Colombia	Ciudad de la eterna primavera, innovación y cultura.	https://locationcolombia.com/wp-content/uploads/2022/04/MEDELLIN-Panoramicas-noche-SEC-CULTURA-MED-2007-1-1-2048x1328.jpg	\N	800.00
13	San Andrés	Colombia	Isla caribeña con mar de siete colores y playas paradisíacas.	https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Panor%C3%A1mica_de_San_Andres.JPG/1280px-Panor%C3%A1mica_de_San_Andres.JPG	\N	1200.00
14	Madrid	España	Capital vibrante llena de arte, historia y gastronomía.	https://madridando.com/wp-content/uploads/2018/10/plaza-de-cibeles.jpeg	\N	1800.00
15	París	Francia	La ciudad del amor, llena de monumentos icónicos y cultura.	https://www.viajarafrancia.com/wp-content/uploads/2016/04/Paris-760x500.jpg	\N	2000.00
16	Roma	Italia	Todos los caminos conducen a roma!, Cultura e historia.	https://res.cloudinary.com/dtljonz0f/image/upload/c_auto,ar_4:3,w_1920,g_auto/f_auto/q_auto/v1/gc-v1/rome-and-vatican-pass/vatican_at_night_1440x450_fo1vbm?_a=BAVAZGDX0	\N	2200.00
\.


--
-- TOC entry 5038 (class 0 OID 33120)
-- Dependencies: 241
-- Data for Name: users_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_profile (id, country, city, gender, user_id, birthdate, document_number, phone, profile_picture, image) FROM stdin;
1	Colombia	BOGOTA	Femenino	4	2000-04-04	10234564	3212565685		default.jpg
2	Colombia	BOGOTA	Masculino	5	1965-01-04	1023456789	3212569876		default.jpg
\.


--
-- TOC entry 5036 (class 0 OID 33112)
-- Dependencies: 239
-- Data for Name: users_reseña; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users_reseña" (id, nombre, correo, ciudad, comentario, fecha) FROM stdin;
1	Natalia	nata@gmail.com	Roma	Super bonito todo.	2025-04-18 17:42:10.482102-05
2	Juan Sebastían	juans@gmail.com	Medellín	Linda la piedra del peñol.	2025-04-18 17:51:23.358163-05
3	Michael	maakf@gmail.com	Paris	Me agrado la torre.	2025-04-18 21:24:50.888267-05
\.


--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 231
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 233
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 6, true);


--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 219
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 236
-- Name: users_destino_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_destino_id_seq', 15, true);


--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 240
-- Name: users_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_profile_id_seq', 3, true);


--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 238
-- Name: users_reseña_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users_reseña_id_seq"', 3, true);


-- Completed on 2025-04-18 23:15:37

--
-- PostgreSQL database dump complete
--

