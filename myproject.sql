--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: account_branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_branch (
    accounts_id integer NOT NULL,
    branch_id integer NOT NULL
);


ALTER TABLE public.account_branch OWNER TO postgres;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    id integer NOT NULL,
    type character varying(20) NOT NULL,
    balance money NOT NULL,
    username character varying(20) NOT NULL,
    password character varying(128),
    customer_id integer NOT NULL
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_id_seq OWNER TO postgres;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;


--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: bankers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bankers (
    id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    address character varying(128) NOT NULL,
    branch_id integer NOT NULL
);


ALTER TABLE public.bankers OWNER TO postgres;

--
-- Name: bankers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bankers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bankers_id_seq OWNER TO postgres;

--
-- Name: bankers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bankers_id_seq OWNED BY public.bankers.id;


--
-- Name: branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.branch (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    address character varying(128) NOT NULL
);


ALTER TABLE public.branch OWNER TO postgres;

--
-- Name: branch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.branch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.branch_id_seq OWNER TO postgres;

--
-- Name: branch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.branch_id_seq OWNED BY public.branch.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    phone_number character varying(20) NOT NULL,
    email character varying(40)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);


--
-- Name: bankers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bankers ALTER COLUMN id SET DEFAULT nextval('public.bankers_id_seq'::regclass);


--
-- Name: branch id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch ALTER COLUMN id SET DEFAULT nextval('public.branch_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Data for Name: account_branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_branch (accounts_id, branch_id) FROM stdin;
1	2
2	7
3	2
4	1
5	9
6	2
7	1
8	7
9	2
10	10
11	2
12	3
13	1
14	5
15	5
16	9
17	1
18	6
19	8
20	7
21	7
22	6
23	4
24	9
25	5
26	8
27	9
28	5
29	6
30	8
31	2
32	2
33	1
34	8
35	3
36	3
37	1
38	8
39	7
40	4
41	2
42	10
43	9
44	3
45	3
46	10
47	10
48	9
49	4
50	6
51	7
52	2
53	3
54	4
55	4
56	4
57	9
58	9
59	5
60	7
61	6
62	8
63	5
64	6
65	1
66	9
67	3
68	6
69	10
70	1
71	3
72	6
73	7
74	8
75	8
76	9
77	8
78	7
79	2
80	7
81	5
82	6
83	9
84	10
85	2
86	4
87	7
88	3
89	4
90	9
91	5
92	5
93	1
94	8
95	9
96	8
97	9
98	2
99	4
100	10
\.


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts (id, type, balance, username, password, customer_id) FROM stdin;
2	Saving	$36,294.81	mbridie1	ZXk3ST	2
3	Saving	$455.35	fcoverdill2	JX6rFgizGl	3
4	Saving	$32,556.78	ryanyshev3	T5BQc0	4
5	Saving	$37,505.47	johowbane4	MZe8fX	5
6	Checking	$35,981.74	wjosifovic5	2kcSdYAbO	6
7	Saving	$44,322.10	vskamell6	LPar4d	7
8	Saving	$11,403.77	tarmitage7	JWFpWnSrZ0Nv	8
9	Saving	$29,535.32	sblanking8	sS1t43CDM0	9
10	Checking	$30,528.07	krowett9	RDIDj5S	10
11	Saving	$46,164.26	fyorstona	lNKisOJJEj7	11
12	Checking	$19,134.11	agoutcherb	z9Lv2i2dy	12
13	Checking	$49,605.25	iwurstc	JwnPmf7	13
14	Checking	$42,647.91	llattind	lnVrylvV	14
15	Checking	$2,982.31	eminarde	jGma8FitDND	15
16	Checking	$26,107.29	mhounsonf	gcsWd7K1dQ	16
17	Saving	$4,324.68	csickertg	XxTCfEI	17
18	Saving	$35,601.90	kchaiseh	JF381WTEOZ	18
19	Saving	$14,170.48	mmcclayi	4Q6kZGFh0o7U	19
20	Checking	$24,911.09	bmcilreavyj	54bmjkh	20
21	Checking	$31,063.44	wdoddemeedek	0jOo6aS	21
22	Checking	$42,597.65	ppickardl	QyAP3Opx7bIH	22
23	Checking	$47,119.03	rjoym	P1dIw7bER	23
24	Checking	$9,889.57	rlongcastern	nOLHxZ6F5D	24
25	Checking	$30,985.54	rraubheimo	IPdrWT	25
26	Checking	$7,054.00	ndorkenp	vT72kt	26
27	Saving	$47,115.27	bvaiseyq	RkyWfmYBz	27
28	Checking	$15,140.48	mleserr	ozqhFA	28
29	Checking	$4,303.11	omcdiarmids	JHfSU9Id	29
30	Saving	$16,539.40	tlucianit	jSg7ZOAGXv	30
31	Checking	$4,978.89	bjirouteku	DLJTtY	31
32	Saving	$47,533.46	ecripsv	wve4UiWuc	32
33	Checking	$25,120.55	sguinessw	nN02alPYMF	33
34	Checking	$40,776.46	pbumfordx	L3ylmS42P	34
35	Saving	$45,030.89	bbilovusy	RA4mCSFcINpa	35
36	Checking	$35,962.51	rfullertonz	qRdZqDak9s5	36
37	Checking	$41,954.24	vorrum10	Prymt2frf3aj	37
38	Checking	$34,315.22	gedmondson11	kt7Bc94aw	38
39	Saving	$38,699.62	ascurrell12	n2iMO7lpAleL	39
40	Saving	$1,858.44	jcapponer13	J6UZTkt6k2	40
41	Checking	$38,391.00	ospurden14	faCh8GZM	41
42	Checking	$25,950.13	gbau15	rWmaVzmWL	42
43	Checking	$6,997.09	kshallcrass16	fThxyHWhfYH	43
44	Checking	$3,489.24	rnind17	IZ5F9JVg	44
45	Checking	$23,556.54	swallwork18	wDz9DHoxcV	45
46	Saving	$43,547.07	awestwater19	Wd3F1DXvfgO	46
47	Saving	$28,232.26	jfay1a	s43jDf1vuyFf	47
48	Saving	$2,514.91	bgoodred1b	Eo6Rz4UBbqSB	48
49	Saving	$40,662.68	jguilloneau1c	Xn4cttVU	49
50	Checking	$7,488.30	plongfut1d	CDuss1qvDUm	50
51	Checking	$24,172.68	sborkin1e	Gd2rpE	51
52	Checking	$29,163.01	glandal1f	nAkuyN	52
53	Checking	$41,425.46	cpentin1g	oestaXnl	53
54	Checking	$38,396.50	hrupp1h	R0dg3Dm	54
55	Saving	$14,187.55	mkase1i	CVd3O38W	55
56	Saving	$39,405.23	ycordingly1j	BbGCXRzF	56
57	Saving	$7,732.64	espurgin1k	ZaHFuLxbk	57
58	Saving	$14,090.19	bchatwin1l	KWtT3bf9Lij9	58
59	Saving	$16,362.44	kshaplin1m	zjPQ2yHqokrS	59
60	Checking	$9,867.04	wbraisted1n	sqDwSWlE5WB8	60
61	Saving	$43,964.09	cviccary1o	JMO88HWcl0gJ	61
62	Saving	$47,548.46	orapper1p	YGxpVFycz7ch	62
63	Checking	$48,309.53	bklugman1q	yh8rXXs	63
64	Saving	$22,176.54	hbeek1r	Fd3QlElV	64
65	Checking	$29,729.76	battawell1s	DJUJ2mY0	65
66	Checking	$4,995.26	rpilmer1t	XpKWSnv9T	66
67	Checking	$20,041.89	jdumphry1u	iKBNCh	67
68	Checking	$28,093.59	mkember1v	MbK8n7ZqB	68
69	Saving	$22,832.34	ldishmon1w	BmTQKww7	69
70	Saving	$22,321.19	cmartusov1x	F5D9x6	70
71	Saving	$33,968.27	neskriet1y	TVdk5tx9	71
72	Saving	$49,814.94	nwhitby1z	6AM5zH8Is0	72
73	Checking	$11,777.87	mgrinyakin20	ga7X2wKkxI	73
74	Saving	$20,567.91	rsnowman21	3lNZda5yKY	74
75	Checking	$23,873.92	khemmingway22	nQax0yf0xm	75
76	Checking	$5,287.09	dchecklin23	XW1KRYA	76
77	Saving	$31,858.13	chyslop24	VuVmo1U77u	77
78	Checking	$22,062.63	renever25	SWI584TnAn	78
79	Saving	$8,318.34	bmckeag26	JrsOCT	79
80	Checking	$16,801.23	vhannibal27	BuqFfR5MJ	80
81	Checking	$34,585.97	jphethean28	jFoJOLlQ58SE	81
82	Saving	$9,227.00	agrinaway29	1xUjrJSnYx	82
83	Checking	$37,504.87	lbarnett2a	pKbeOHZ4Rol9	83
84	Checking	$16,076.91	mpatrickson2b	pMBQ8yGDj6	84
85	Checking	$6,138.80	fendacott2c	itxTnXJ1Y	85
86	Saving	$678.83	jgook2d	wTJU5Gbu9d	86
87	Saving	$35,009.01	kgatecliff2e	MurWtWKmmI	87
88	Saving	$47,503.37	ccaccavale2f	EEwyqb9n	88
89	Saving	$32,986.27	edeniscke2g	6Sr1kAYLRw	89
90	Checking	$39,080.25	kmeneely2h	9oF9bMmEK4a	90
91	Saving	$7,632.50	jparmiter2i	q77TMPtIoqw	91
92	Checking	$6,623.32	sboyde2j	PhjY6G	92
93	Saving	$2,065.28	dbartholomaus2k	1dj7Ev21mWJ	93
94	Saving	$37,263.76	cjellis2l	waZkK2	94
95	Saving	$32,847.51	cborman2m	UWGGSA7r	95
96	Checking	$46,086.98	goglethorpe2n	u0csU15	96
97	Saving	$35,706.26	fwagg2o	6RHgOKa8	97
98	Checking	$17,318.78	jdeane2p	ugDB37JH	98
99	Saving	$4,669.80	gmatthias2q	XPMwVh6th	99
1	Checking	$5,415.68	Bob	Bobby1234	1
100	Saving	$11,436.51	sandra	bob12345	100
101	Checking	$3,123.00	Bobby	84c140005642b297a78a32c3f7c3fa5323af8c0d312eee3749bdc07b34a9849e8bc2db6b9b6fa581410d74692590712cc77ad290d281400d07373e53bd82db89	115
\.


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
f9ccc0483293
\.


--
-- Data for Name: bankers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bankers (id, first_name, last_name, address, branch_id) FROM stdin;
2	Jermayne	Towle	3 Golden Leaf Hill	3
3	Cristi	Beggini	67 Oak Plaza	10
5	Dana	Dallow	35125 Northwestern Place	8
6	Dayna	Ellis	7 Delaware Crossing	6
7	Debora	Grafom	38246 Blackbird Center	1
8	Sashenka	Pickervance	0 Calypso Road	6
9	Inna	Krugmann	7 Claremont Trail	6
10	Gerardo	Shorten	47 West Hill	9
11	Britt	Cadamy	4357 Kropf Parkway	5
12	Yelena	Swynley	830 Mallory Park	6
13	Rivi	MacDonell	87065 Almo Terrace	9
14	Ches	Dabner	142 Menomonie Point	5
15	Norene	Jouandet	890 Hermina Lane	6
16	Der	Diggens	43386 Sommers Point	8
17	Lavina	Cesco	52 Judy Circle	9
18	Grayce	Rennolds	9 Garrison Hill	2
19	Dayle	Connikie	0665 Leroy Way	9
20	Carma	Burg	856 1st Circle	7
21	Valenka	Llewelly	16 Cottonwood Lane	1
22	Vanda	Petrashkov	837 Dunning Pass	9
23	Johna	Andrzejewski	91 Arapahoe Street	4
24	Valencia	Breede	21 Vahlen Parkway	1
27	sandy	Alan	630 south 8th street	1
29	alex	Alan	630 south 7th street	10
4	smith	Alan	630 south 5th street	7
\.


--
-- Data for Name: branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branch (id, name, address) FROM stdin;
2	Chatterbridge	005 Myrtle Park
3	Abatz	717 Golf View Hill
4	Kazu	5265 Arkansas Trail
5	Thoughtblab	95 Sachtjen Drive
6	Twitterbridge	197 Hayes Terrace
7	Abatz	52 Jackson Drive
8	Mymm	8333 Mayfield Hill
9	Avaveo	20234 Red Cloud Center
10	Livepath	284 Prentice Alley
12	Forever	614 south apple street
1	New	10 Barnett Terrace
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, first_name, last_name, phone_number, email) FROM stdin;
2	Maggee	Gammade	448-926-4288	\N
3	Corilla	Ciric	337-560-3446	cciric2@wordpress.org
4	Pavla	Mackinder	800-367-0433	pmackinder3@tripod.com
5	Pincus	Aime	338-221-5777	paime4@illinois.edu
6	Micheil	Munday	891-802-7328	\N
7	Noll	Cecil	635-729-7065	ncecil6@twitter.com
8	Gloriana	Farrance	951-824-5040	gfarrance7@google.pl
9	Marielle	Stennings	385-663-4419	mstennings8@google.cn
10	Bliss	Bowie	643-537-1052	bbowie9@github.com
11	Shelley	Curreen	682-667-7831	scurreena@fda.gov
12	Alexio	Meiningen	790-860-1009	ameiningenb@dedecms.com
13	Antonie	Freund	737-951-0957	afreundc@shareasale.com
14	Claire	Trayte	996-469-1860	ctrayted@mail.ru
15	Marina	McGibbon	738-170-3952	\N
16	Devina	Ratlee	792-176-1015	dratleef@e-recht24.de
17	Travus	Sholl	278-824-4790	tshollg@pagesperso-orange.fr
18	Svend	Ogles	933-325-2896	soglesh@timesonline.co.uk
19	Eda	Muggeridge	561-727-6952	emuggeridgei@alibaba.com
20	Skipper	Panichelli	920-162-5221	spanichellij@delicious.com
21	Dee	Richards	199-869-7578	drichardsk@tinyurl.com
22	Jacintha	Ownsworth	746-949-7100	jownsworthl@harvard.edu
23	Bessie	Sanbrooke	262-310-8799	bsanbrookem@timesonline.co.uk
24	Lindy	O'Cridigan	154-174-0872	locridigann@unblog.fr
25	Eleanore	Crews	494-526-8819	ecrewso@npr.org
26	Camala	Avramovic	349-269-2127	cavramovicp@guardian.co.uk
27	Dita	Pyson	783-117-7797	dpysonq@yahoo.com
28	Jens	Feldbau	394-676-5542	jfeldbaur@howstuffworks.com
29	Padraic	Legan	616-703-9647	plegans@typepad.com
30	Melisandra	Dudley	322-264-6522	\N
31	Wynn	Guerola	694-702-1197	wguerolau@weebly.com
32	Verney	McKissack	310-143-3766	vmckissackv@google.ru
33	Sarena	Fluger	684-733-4610	sflugerw@icio.us
34	Hayes	Clowser	820-680-0933	hclowserx@nih.gov
35	Bradford	Gosson	807-661-7872	bgossony@addthis.com
36	Melania	Pinsent	772-352-6419	\N
37	Jackie	Le Grys	667-109-3437	jlegrys10@globo.com
38	Paulette	Pieter	224-204-3974	\N
39	Lindie	Filasov	494-818-4421	\N
40	Bette-ann	Chatwood	214-706-8510	bchatwood13@rambler.ru
41	Lucilia	Brackley	490-129-7235	lbrackley14@abc.net.au
42	Wilmer	Treherne	970-674-4821	wtreherne15@wikispaces.com
43	Adoree	Fernandes	476-467-0597	\N
44	Marv	Brambill	366-691-3538	\N
45	Winny	Bound	398-884-7485	wbound18@purevolume.com
46	Kerry	Verity	614-298-9731	kverity19@vinaora.com
47	Charlene	Zanneli	524-873-4001	czanneli1a@msu.edu
48	Naomi	Gillean	951-403-6362	ngillean1b@jimdo.com
49	Randell	Iorizzo	324-444-2612	riorizzo1c@diigo.com
50	Tad	Huntress	523-321-0226	thuntress1d@booking.com
51	Annmarie	Benbough	958-858-0194	abenbough1e@illinois.edu
52	Lurline	Lathwell	969-930-8938	\N
53	Darnall	Aldrick	873-429-2931	daldrick1g@yahoo.com
54	Jilli	Prujean	996-532-3064	jprujean1h@ed.gov
55	Phyllis	Eskell	419-960-1052	peskell1i@technorati.com
56	Auria	Emmines	294-778-8756	aemmines1j@dyndns.org
57	Marquita	Dinneen	251-643-7158	\N
58	Eyde	Blackburn	940-201-6193	eblackburn1l@wix.com
59	Allister	Merrigans	458-659-2802	\N
60	Brittney	Grundon	228-434-2560	bgrundon1n@nba.com
61	Jeannie	Shovelin	857-324-3461	jshovelin1o@so-net.ne.jp
62	Dell	Castleton	500-440-6562	dcastleton1p@go.com
63	Shani	Sperski	975-263-2353	\N
64	Terrye	MacNess	450-731-3211	\N
65	Ode	Lopez	451-462-1006	olopez1s@thetimes.co.uk
66	Harriet	Oldman	536-170-1464	holdman1t@forbes.com
67	Leigha	Pixton	439-431-8437	lpixton1u@abc.net.au
68	Gates	Ellse	813-559-5725	\N
69	Aguistin	Maunsell	201-485-8337	\N
70	Una	Feronet	598-716-8387	uferonet1x@webeden.co.uk
71	Marla	Warwick	141-457-9950	\N
72	Row	Hartwell	435-229-2108	rhartwell1z@google.co.uk
73	Rozalin	Bridgen	484-902-4696	\N
74	Brook	Shinfield	974-706-0131	bshinfield21@foxnews.com
75	Nevsa	Arangy	726-725-6818	narangy22@soundcloud.com
76	Wilow	Gherardi	821-183-5680	wgherardi23@mlb.com
77	Dewain	Sammars	484-434-1416	dsammars24@joomla.org
78	Daisi	Avraham	323-319-9942	davraham25@yellowbook.com
79	Daphne	Nestoruk	839-293-5197	dnestoruk26@nsw.gov.au
80	Sallyanne	Hambling	324-104-9459	\N
81	Ulrich	Minards	712-266-5081	uminards28@aol.com
82	Rosa	Togwell	279-874-6668	rtogwell29@telegraph.co.uk
83	Geno	Blakeborough	323-580-8728	gblakeborough2a@wp.com
84	Violette	Scotsbrook	453-425-7766	\N
85	Arnuad	Tennock	636-281-4812	atennock2c@oracle.com
86	Rog	Stathor	373-753-5598	rstathor2d@google.it
87	Amata	Tudor	416-962-6248	atudor2e@google.it
88	Renard	Cleevely	139-213-5849	rcleevely2f@last.fm
89	Drusilla	Lanfere	239-169-8506	\N
90	Melamie	Willimott	326-667-5822	mwillimott2h@yolasite.com
91	Arlan	Kelbie	928-468-8350	akelbie2i@163.com
92	Guinna	Lowy	979-756-6638	\N
93	Giffie	Brockington	502-737-6117	gbrockington2k@miitbeian.gov.cn
94	Sasha	Murrigans	760-438-0234	smurrigans2l@i2i.jp
95	Tabbie	Thacke	768-743-8302	tthacke2m@seesaa.net
96	Lenore	Stonall	214-392-0268	lstonall2n@bandcamp.com
97	Tania	Januszewski	802-776-2575	tjanuszewski2o@howstuffworks.com
98	Nerte	Petrolli	800-502-7804	\N
99	Kaleena	Kurdani	208-881-4516	\N
100	Simonne	Seiller	962-711-3168	sseiller2r@a8.net
1	bob	bobby	123456789	bobby@hotmail.com
113	bob	bobby	123456789	@hotmail.com
115	bob	Alan	123456789	bob@hotmail.com
\.


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_id_seq', 101, true);


--
-- Name: bankers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bankers_id_seq', 29, true);


--
-- Name: branch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.branch_id_seq', 12, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 115, true);


--
-- Name: account_branch account_branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_branch
    ADD CONSTRAINT account_branch_pkey PRIMARY KEY (accounts_id, branch_id);


--
-- Name: accounts accounts_password_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_password_key UNIQUE (password);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: accounts accounts_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_username_key UNIQUE (username);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: bankers bankers_address_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bankers
    ADD CONSTRAINT bankers_address_key UNIQUE (address);


--
-- Name: bankers bankers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bankers
    ADD CONSTRAINT bankers_pkey PRIMARY KEY (id);


--
-- Name: branch branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (id);


--
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: customer; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX customer ON public.customers USING btree (first_name, last_name);


--
-- Name: account_branch account_branch_accounts_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_branch
    ADD CONSTRAINT account_branch_accounts_id_fkey FOREIGN KEY (accounts_id) REFERENCES public.accounts(id);


--
-- Name: account_branch account_branch_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_branch
    ADD CONSTRAINT account_branch_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.branch(id);


--
-- Name: accounts accounts_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: bankers bankers_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bankers
    ADD CONSTRAINT bankers_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.branch(id);


--
-- PostgreSQL database dump complete
--

