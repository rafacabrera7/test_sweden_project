--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

-- Started on 2021-11-09 16:02:08

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
-- TOC entry 2887 (class 0 OID 68307)
-- Dependencies: 205
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.city OVERRIDING SYSTEM VALUE VALUES (4, 'Stockholms län');
INSERT INTO public.city OVERRIDING SYSTEM VALUE VALUES (5, 'Bogota');
INSERT INTO public.city OVERRIDING SYSTEM VALUE VALUES (6, 'Jcity');
INSERT INTO public.city OVERRIDING SYSTEM VALUE VALUES (7, 'Glasgow');


--
-- TOC entry 2889 (class 0 OID 68312)
-- Dependencies: 207
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (15, 'Umi & Chao AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (16, 'Tingvalla Pizzeria i Märsta AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (17, 'Bistro Fiesta');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (18, 'Bommersvik AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (19, 'FIGFY AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (20, 'Shinegerel AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (21, 'J2 Uthyrning AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (22, 'Fridhemsplan Hotell AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (23, 'Jalvi Restaurang AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (24, 'Le Kebab Odenplan AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (25, 'Trömer Pizzeria HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (26, 'Deli Italia i Danderyd AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (27, 'The Good Gringo AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (28, 'Babs Kök och Bar/Benedictsson & Hertz AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (29, 'Öarnas Lanthandel AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (30, 'Taco Bar Gamla Stan');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (31, 'Keemchi');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (32, 'Micobilo HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (33, 'Monsky 13 AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (34, 'Eat By J AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (35, 'B8 SVERIGE AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (36, 'Sushiwakasaya');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (37, 'FKR i Folkungagatan AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (38, 'Zynca AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (39, 'SHIMLA HOUSE HB, Restaurang');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (40, 'Siy-Ya Pizzeria HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (41, 'Mariaplan AB, Restaurang');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (42, 'FISK OCH SUSHI I VÄLLINGBY AB /Restaurang CHINA!');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (43, 'Lilla Rött AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (44, 'Swemon städ AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (45, 'Taco Bar');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (46, 'Café Levinsky AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (47, 'Erdene AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (48, 'Dolks kök');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (49, 'Café Toasty AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (50, 'DGs Grill HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (51, 'Erdogdu Restaurang AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (52, 'SHR Sub AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (53, 'Blå+');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (54, 'Babas burger & bites sweden 2 AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (55, 'Sushikultur AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (56, 'Dabiqaj, Zoje- Café Food Wise');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (57, 'Ramenramen AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (58, 'Burger Mansion AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (59, 'KUNGSBILJARDEN');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (60, 'Enskede Värdshus AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (61, 'Gärdets pasta och sallad AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (62, 'Um Thai & Sushi Huddinge AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (63, 'Blue Light Yokohama AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (64, 'Långholmen Hotell & Restaurang AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (65, 'Rebel kitchen');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (66, 'Ampawa99 AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (67, 'Il Tempo AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (68, 'TACO BAR');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (69, 'Indian Inn AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (70, 'Rodolfino since 1972');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (71, 'ICV Restaurang AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (72, 'Restaurang nya Energikällan HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (73, 'Högdalen Sushi AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (74, 'Rykis lunchrestaurang');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (75, 'LOOPEN MARIN AKTIEBOLAG');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (76, 'Pierre & Samir AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (77, 'Mias Sushi AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (78, 'Sultan Sverige AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (79, 'Rockin Burgers');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (80, 'NaTu AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (81, 'Indian Garden Matlåda AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (82, 'Ellinors Kök & bar');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (83, 'HELLSTRÖMS BAR & RESTAURANG');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (84, 'Wang Sthlm AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (85, 'Kokulu Arikan');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (86, 'Restaurang Josefina AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (87, 'GKB Stockholm AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (88, 'Pizzel''s AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (89, 'Ugglan Boule & Bar AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (90, 'El Beik Restaurang AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (91, 'Domarudden Friluftsgård AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (92, 'Sezer Ibrahim');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (93, 'G&P Sushi AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (94, 'Berazi Sweden AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (95, 'Indian Dream Garden AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (96, 'Messina, Pizzeria');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (97, 'Yaogao & Nijuan AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (98, 'Five Moments AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (99, 'Thai Enjoy AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (100, 'entity');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (101, 'Macchina Espresso Bar');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (102, 'Stigen av Knut');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (103, 'Karamellan-Café & Restaurang på Drottningholm');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (104, 'Navana International HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (105, 'Burger King Rosersberg');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (106, 'FUSCHI BAR');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (107, 'ESAD HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (108, 'Noble Vision AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (109, 'ELLAS');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (110, 'Stora Gungan AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (111, 'Kurvans Subs AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (112, 'Amida Kolgrill AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (113, 'Dagsgrillen HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (114, 'Fyra Systrar AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (115, 'Järnvägsgatans Thai');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (116, 'Jtp Gruppen AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (117, 'Tallkrogens Restaurang AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (118, 'Gori Gabriel');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (119, 'Ta det lunch AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (120, 'Mbq HB, Restaurang');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (121, 'Sushinara AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (122, 'Jcompany');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (123, 'gululu');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (124, 'El Taco Bar AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (125, 'Yusuf Varli Grill AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (126, 'Uniparsco AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (127, 'Grilles AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (128, 'Batum Pizzeria HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (129, 'Italiana');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (130, 'Campino AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (131, 'Mana Restauranger AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (132, 'Gula Rosa HB, Pizzeria');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (133, 'Pdf Burger AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (134, 'Lilla Italien HB, Restaurang');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (135, 'Ms Fastighet & Restaurang i Stockholm AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (136, 'Eataly Stockholm AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (137, 'DagSar AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (138, 'Norrtälje Pizzeria Arena AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (139, 'LA PIAZZA DJURSHOLM AB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (140, 'Akdeves Pizzeria, Ahmet');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (141, 'Stockholms Bästa Pizzeria G&G HB');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (142, 'Bistro Lillströmma');
INSERT INTO public.company OVERRIDING SYSTEM VALUE VALUES (143, 'Chrille''s Restaurang Pizzeria AB');


--
-- TOC entry 2891 (class 0 OID 68317)
-- Dependencies: 209
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (1, 'Rafa', 'rafaelcabrerajimenez7@gmail.com', 'prueba', '2021-11-01', 'AKIAUJOMKZ2YWM34O65V', 'BOlS9p5Ui3bv3Klk+ns90jU1pvlBq4RXDYhafqMpzidF');
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (3, 'Pepito', 'p1', 'p1', NULL, NULL, NULL);
INSERT INTO public.customer OVERRIDING SYSTEM VALUE VALUES (4, 'Juan', 'juan@12345.123', 'hellohello', '2021-11-08', NULL, NULL);


--
-- TOC entry 2894 (class 0 OID 68325)
-- Dependencies: 212
-- Data for Name: main_sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_sector OVERRIDING SYSTEM VALUE VALUES (4, 'Hotell, restaurang, storhushåll');
INSERT INTO public.main_sector OVERRIDING SYSTEM VALUE VALUES (5, 'prueba');
INSERT INTO public.main_sector OVERRIDING SYSTEM VALUE VALUES (6, 'Jmaincat');
INSERT INTO public.main_sector OVERRIDING SYSTEM VALUE VALUES (7, 'Farming');


--
-- TOC entry 2898 (class 0 OID 68335)
-- Dependencies: 216
-- Data for Name: subcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.subcategory OVERRIDING SYSTEM VALUE VALUES (3, 'Restaurant and kitchen assistants etc.');
INSERT INTO public.subcategory OVERRIDING SYSTEM VALUE VALUES (4, 'prueba');
INSERT INTO public.subcategory OVERRIDING SYSTEM VALUE VALUES (5, 'Jsubcat');
INSERT INTO public.subcategory OVERRIDING SYSTEM VALUE VALUES (6, 'hello');
INSERT INTO public.subcategory OVERRIDING SYSTEM VALUE VALUES (7, 'Pizzabagare m.fl.');


--
-- TOC entry 2893 (class 0 OID 68322)
-- Dependencies: 211
-- Data for Name: job_offer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.job_offer VALUES (25262539, 'Köksbiträde till asiatisk restaurang sökes', 'Köksbiträde', 'info@umichao.se', 15, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25262539', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25257197, 'Vi behöver extrapersonal i disken!', 'Diskare', 'jennie.akerlund@bommersvik.se', 18, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25257197', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25255877, 'Taco bar', 'Restaurangbiträde', 'tacobargamlastan@gmail.com', 30, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25255877', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25255832, 'KEEMCHI söker Restaurangbiträde', 'Restaurangbiträde', 'info@keemchi.se', 31, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25255832', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25252295, 'restaurang biträde', 'Restaurangbiträde', 'mico553@hotmail.com', 32, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25252295', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25248875, 'Köksbiträde', 'Köksbiträde', 'info@bergasushi.nu', 33, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25248875', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25248686, 'Är du en av 5 personer som vill jobba med oss', 'Restaurangbiträde', 'jan.samri@nancysfood.se', 34, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25248686', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25246506, 'Köksbiträde', 'Köksbiträde', 'Sushiwakasaya@gmail.com', 36, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25246506', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25246488, 'Köksbiträde', 'Köksbiträde', 'Sushiwakasaya@gmail.com', 36, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25246488', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25246165, 'Restaurangbiträde', 'Restaurangbiträde', 'kebabistan.ab@gmail.com', 37, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25246165', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25246096, 'Är du en stjärna inom restaurangbranschen? SE HIT!', 'Diskare', 'michelle@zynca.se', 38, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25246096', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25242199, 'Restaurang biträde och kock assistent', 'Restaurangbiträde', 'golams.khondaker@gmail.com', 39, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25242199', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25242172, 'Servitör/Servitris', 'Restaurangbiträde', 'info@sapori.se', 40, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25242172', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25242006, 'Restaurang biträde', 'Restaurangbiträde', 'robertmariaplan@gmail.com', 41, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25242006', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25241397, 'Vi söker diskare', 'Diskare', 'tiffany@jappi.se', 42, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25241397', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25241386, 'Köksbiträde / Diskare', 'Diskare', 'mesut@rott.se', 43, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25241386', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25237793, 'Medarbetare', 'Restaurangbiträde', 'nynashamn@tacobar.se', 45, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25237793', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25235381, 'Köksbiträde', 'Köksbiträde', 'levinskys.kitchen@gmail.com', 46, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25235381', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25057133, 'Restaurangbiträde asiatisk restaurang', 'Köksbiträde', 'erdeneab@gmail.com', 47, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25057133', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25232187, 'Restaurangbiträde sökes!', 'Köksbiträde', 'loviina@hotmail.com', 48, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25232187', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25230402, 'Restaurangbiträde', 'Restaurangbiträde', 'dgs.grill@outlook.com', 50, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25230402', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25229219, 'Restaurangbiträde', 'Restaurangbiträde', 'erdogduab55@gmail.com', 51, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25229219', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25227812, 'Kökbiträde sökes till en japansk restaurang', 'Köksbiträde', 'Enguunujin01@yahoo.com', 55, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25227812', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25226248, 'Köksbiträde & Städare', 'Köksbiträde', 'agimdeli1969@gmail.com', 56, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25226248', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25224745, 'Köksbiträde sökes till Märsta Kolgrill', 'Köksbiträde', 'rodi2017@hotmail.com', 16, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25224745', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25223630, 'Noodle production', 'Köksbiträde', 'noodles@airamen.se', 57, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25223630', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25219737, 'Restaurangmedarbetare', 'Restaurangbiträde', 'Brin-barwari@hotmail.com', 58, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25219737', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25215517, 'Restaurangbiträde Lunch Kale & Crave', 'Restaurangbiträde', 'jobb@kaleandcrave.se', 19, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25215517', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25214772, '1Kassa personal 1 restaurangbiträde', 'Restaurangbiträde', 'ginsarasushi@gmail.com', 20, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25214772', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25210339, 'Köksbiträde', 'Köksbiträde', 'rekrytering@jlwf.se', 21, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25210339', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25209735, 'Frukostpersonal', 'Frukostvärd/Frukostvärdinna', 'frukostansokan@fridhemsplan.se', 22, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25209735', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25208494, 'Köksbiträde KOREA Garden Solna', 'Köksbiträde', 'jalvirestaurang@hotmail.com', 23, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25208494', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25208372, 'Köksbiträde Le Kebab', 'Köksbiträde', 'jobb@lekebab.se', 24, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25208372', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25207773, 'Restaurangbiträde', 'Restaurangbiträde', 'tromerhb@gmail.com', 25, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25207773', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25207738, 'Restaurangbiträde', 'Restaurangbiträde', 'deli.italia55@hotmail.com', 26, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25207738', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25207090, 'Team member', 'Restaurangbiträde', 'kenneth@thegoodgringo.se', 27, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25207090', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25206678, 'Restaurangbiträde', 'Restaurangbiträde', 'mili00@hotmail.com', 28, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25206678', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25204584, 'Matlagare till delikatessbutik', 'Köksbiträde', 'anna@oarnaslanthandel.se', 29, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25204584', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25260803, 'Bistro Fiesta söker ny Måltidsbiträde/Restaurangbiträde', 'Restaurangbiträde', 'jobb@restaurangfiesta.se', 17, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25260803', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25221822, 'Restaurangansvarig till UM Thai & Sushi Huddinge', 'Restaurangbiträde', 'jobb@umthaisushi.se', 62, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25221822', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25221074, 'Kitchen staff Japanese restaurant', 'Restaurangbiträde', 'job@bluelightyokohama.com', 63, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25221074', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25220855, 'Frukostansvarig', 'Frukostvärd/Frukostvärdinna', 'jobb@langholmen.com', 64, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25220855', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25218224, 'Extrajobb thairestaurang', 'Restaurangbiträde', 'ampawawok99@gmail.com', 66, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25218224', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25218189, 'Il Tempo söker medarbetare i tjänst köksbiträde.', 'Köksbiträde', 'ansokan.om.jobb@hotmail.com', 67, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25218189', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25218058, 'Taco bar', 'Restaurangbiträde', 'tacosveavagen@gmail.com', 68, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25218058', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25218008, 'vi söker nu ett köksbiträde med tandorikunskaper', 'Köksbiträde', 'nahar.indianinn@hotmail.com', 69, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25218008', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25204114, 'italian slice köksbiträde', 'Köksbiträde', 'eroleken@hotmail.com', 71, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25204114', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25199361, 'Restaurangbiträde', 'Restaurangbiträde', 'Mashakempp@gmail.com', 73, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25199361', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25199356, 'Restaurangbiträde', 'Restaurangbiträde', 'Mashakempp@gmail.com', 73, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25199356', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25199337, 'Diskare och köksbiträdet', 'Köksbiträde', 'bras937@gmail.com', 74, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25199337', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25186702, 'RUNNERS TILL JULBORD', 'Restaurangbiträde', 'Personal@josefina.nu', 86, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25186702', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25161664, 'Söks 2 köksbiträde och 2 tandoori kockar', 'Köksbiträde', 'indiangardennacka.se@gmail.com', 95, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25161664', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25151876, 'kassör', 'Restaurangbiträde', 'wulihua111@hotmail.com', 97, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25151876', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25072365, 'Restaurang biträde', 'Köksbiträde', 'filmakuten_boss@hotmail.com', 76, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25072365', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25061272, 'kock orientalisk mat', 'Köksbiträde', 'info@sultancafe.se', 78, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25061272', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25028780, 'Rockin Burgers', 'Restaurangbiträde', 'info@rockinburgers.se', 79, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25028780', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25002637, 'Köksbiträde', 'Köksbiträde', 'mdm_tseegii@yahoo.com', 80, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25002637', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25002634, 'Köksbiträde', 'Köksbiträde', 'mdm_tseegii@yahoo.com', 80, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25002634', 4, 4, 3);
INSERT INTO public.job_offer VALUES (24984295, 'Söks 2 kontorsarbetare och 2 köksbiträde/diskare', 'Köksbiträde', 'indiangarden.norrkoping.se@gmail.com', 81, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/24984295', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25223519, 'Diskare till restaurang i centrala Stockholm', 'Diskare', 'jobb@kungsbiljarden.se', 59, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25223519', 4, 4, 3);
INSERT INTO public.job_offer VALUES (124, 'prueba2', 'p2', 'emp2.p2_1234@', 100, '2021-11-08', NULL, NULL, 5, 4);
INSERT INTO public.job_offer VALUES (567, 'A very cool job', 'Need frontend stack', 'recruiter@gmail.com', 123, '2021-11-08', 'gululu.com', 7, 7, 6);
INSERT INTO public.job_offer VALUES (123, 'prueba', 'prueba', 'rafael.enriquec@hotmail.com', 100, '2021-11-01', 'prueba.com', 5, 5, 4);
INSERT INTO public.job_offer VALUES (25296174, 'Medarbetare till Norrländska "Stigen"', 'Restaurangbiträde', 'taby@stigenavknut.se', 102, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25296174', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25295318, 'JULBORDS-Diskare sökes!', 'Diskare', 'jobb@karamellan.org', 103, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25295318', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25291619, 'söks diskare', 'Diskare', 'saiful_noami@hotmail.com', 104, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25291619', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25291532, 'Medarbetare Kassa', 'Restaurangbiträde', 'avd6007@kingfood.se', 105, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25291532', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25291268, 'Extra personal Sushikock/Köksbiträde/diskare', 'Diskare', 'sushi@kimama.org', 106, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25291268', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25289553, 'Restaurangbiträde', 'Restaurangbiträde', 'pizzeria.esad@hotmail.com', 107, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25289553', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25288682, 'sushi kock', 'Köksbiträde', 'noblevision.ab@gmail.com', 108, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25288682', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25287000, 'resturang biträde', 'Restaurangbiträde', 'info@simadeli.com', 109, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25287000', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25286848, 'Vi söker en duktig restaurang/kökbiträde', 'Köksbiträde', 'Alexandrali888@gmail.com', 84, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25286848', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25286711, 'Kock & Köksbiträde till Julsäsong på Krogen Stora Gungan', 'Köksbiträde', 'info@krogenstoragungan.se', 110, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25286711', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25286384, 'Restaurang', 'Restaurangbiträde', 'subway.kurva@gmail.com', 111, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25286384', 4, 4, 3);
INSERT INTO public.job_offer VALUES (24925166, 'Köksbiträde', 'Köksbiträde', 'info@amida.se', 112, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/24925166', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25283660, 'Gatukökbiträde', 'Restaurangbiträde', 'bolbol227@hotmail.com', 113, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25283660', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25282321, 'Restaurangmedarbetare', 'Restaurangbiträde', 'jobb@mackverket.se', 114, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25282321', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25282105, 'Köksbiträde Asiatisk krog Sundbyberg', 'Restaurangbiträde', 'info@jarnvagsgatansthai.se', 115, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25282105', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25281245, 'Diskare/Köksbiträde sökes till restaurang i Gamla Stan', 'Köksbiträde', 'ninosduru92@gmail.com', 116, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25281245', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25277692, 'Erfarna Restaurangbiträden och Pizzabagare Sökes omgående!', 'Restaurangbiträde', 'Pixelristorant@Gmail.com', 88, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25277692', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25274101, 'Vill du vara med & skapa en magisk restaurangmiljö? SE HIT!', 'Restaurangbiträde', 'michelle@zynca.se', 38, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25274101', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25273021, 'Restaurang Prinsen söker Diskare/ restaurangbiträde', 'Restaurangbiträde', 'ansokan.om.jobb@hotmail.com', 118, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25273021', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25272080, 'Köksbiträde sökes till espressobar i centrala Stockholm', 'Köksbiträde', 'felix@rnventures.se', 101, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25272080', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25271706, 'Diskare', 'Diskare', 'info@tadetlunch.one', 119, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25271706', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25267151, 'Restaurangbiträde', 'Restaurangbiträde', 'pine_dust@hotmail.com', 120, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25267151', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25267052, 'Köksbiträde', 'Köksbiträde', 'recruitment@chiliandsoy.se', 121, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25267052', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25262256, 'KÖKSBITRÄDE i MÄRSTA', 'Köksbiträde', 'rodi2017@hotmail.com', 16, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25262256', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25222380, 'köksbiträde julbordsnisse', 'Köksbiträde', 'aron@enskedevardshus.se', 60, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25222380', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25109289, 'Kock och kassabiträde till Thaikök Järfälla', 'Köksbiträde', 'luknam@thaienjoy.se', 99, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25109289', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25247053, 'Restaurangbiträde', 'Restaurangbiträde', 'grevturegatan1@beijing8.com', 35, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25247053', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25238661, 'Sushi kock', 'Köksbiträde', 'swemonstad@outlook.com', 44, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25238661', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25231389, 'Daily''s Bistro söker köksbiträde', 'Köksbiträde', 'cafetoasty@gmail.com', 49, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25231389', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25228117, 'Köksbiträde Blå Porten AB', 'Köksbiträde', 'linda.kontoret@gmail.com', 53, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25228117', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25222045, 'Restaurangbiträde sökes till Gärdets pasta och Sallad AB', 'Restaurangbiträde', 'turgut-yilmaz48@hotmail.com', 61, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25222045', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25217833, 'diskare', 'Diskare', 'rodolfino1972@gmail.com', 70, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25217833', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25201230, 'Restaurangbiträde sökes till Restaurang nya Energikällan', 'Restaurangbiträde', 'ayhan83@live.se', 72, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25201230', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25193813, 'servering, kök', 'Restaurangbiträde', 'loopenmarin@hotmail.com', 75, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25193813', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25193789, 'Köksbiträde sökes till Märsta Kolgrill', 'Köksbiträde', 'rodi2017@hotmail.com', 16, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25193789', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25071321, 'Restaurangassistent / Kassör (heltid)', 'Restaurangbiträde', 'anderssonjay408@gmail.com', 77, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25071321', 4, 4, 3);
INSERT INTO public.job_offer VALUES (22885155, 'Restaurang & Bar', 'Restaurangbiträde', 'ellinorsbar@hotmail.com', 82, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/22885155', 4, 4, 3);
INSERT INTO public.job_offer VALUES (24952478, 'Bartendare', 'Köksbiträde', 'info@hellstromsbar.se', 83, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/24952478', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25193554, 'Vi söker en duktig restaurang/kökbiträde', 'Köksbiträde', 'Alexandrali888@gmail.com', 84, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25193554', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25187164, 'Restaurangbiträde', 'Restaurangbiträde', 'pizzeria.prezzomolo@hotmail.com', 85, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25187164', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25182342, 'Nu söker vi nya medarbetare i köket!', 'Köksbiträde', 'vallingby@grekiska.se', 87, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25182342', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25181688, 'Restaurangbiträden och Servering Sökes omgående!', 'Restaurangbiträde', 'Pixelristorant@Gmail.com', 88, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25181688', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25179490, 'Ugglan behöver hjälp i köket heltid eller deltid', 'Köksbiträde', 'kontakt@ugglanboulebar.se', 89, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25179490', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25176823, 'Köksbiträde', 'Köksbiträde', 'info@elbeik.se', 90, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25176823', 4, 4, 3);
INSERT INTO public.job_offer VALUES (24680144, 'Köksbiträde', 'Köksbiträde', 'info@domarudden.se', 91, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/24680144', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25169818, 'Restaurangbiträde och serveringspersonal', 'Restaurangbiträde', 'suayname@gmail.com', 92, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25169818', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25168449, 'Köksbiträde/Restaurangbiträde i Tumba', 'Köksbiträde', 'Sktumba@hotmail.com', 93, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25168449', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25164802, 'Diskare/ köksbiträde', 'Diskare', 'edriss@live.se', 94, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25164802', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25161063, 'Restaurangbiträde', 'Restaurangbiträde', 'pizzeriamissina@gmail.com', 96, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25161063', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25118171, 'Runner sökes till våra Arenor', 'Restaurangbiträde', 'personal@fivemoments.se', 98, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25118171', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25118114, 'Vi söker köksbiträden till Galor och event', 'Köksbiträde', 'personal@fivemoments.se', 98, '2021-11-08', 'https://arbetsformedlingen.se/platsbanken/annonser/25118114', 4, 4, 3);
INSERT INTO public.job_offer VALUES (25290789, 'Pizzabagare', 'Pizzabagare', 'info@ilconte.nu', 124, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25290789', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25290077, 'Pizzabagare sökes till italiensk restaurang i gamla stan', 'Pizzabagare', 'Ninosduru92@gmail.com', 116, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25290077', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25288694, 'Dalparken Gatukök | Sushi | Wok söker', 'Grillbiträde/Gatuköksbiträde', 'Gabriel.varli@hotmail.com', 125, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25288694', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25282496, 'Napolitans Pizza Bagare sökes', 'Pizzabagare', 'kontor@mediskokochbar.se', 126, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25282496', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25277738, 'Serviceminded Fastfoodmaker', 'Grillkock, snabbmat', 'Personal@grilladd.nu', 127, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25277738', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25267465, 'Vi behöver Pizzabagare för heltidstjänst', 'Pizzabagare', 'tekin_yesilova@hotmail.com', 128, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25267465', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25266824, 'Pizzabagare', 'Pizzabagare', 'Aframchamun@live.se', 129, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25266824', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25262276, 'Pizzabagare sökes till Tingvalla Pizzeria i Märsta', 'Pizzabagare', 'rodi2017@hotmail.com', 16, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25262276', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25261271, 'Pizzeria Campino söker Pizzabagare till Märsta', 'Pizzabagare', 'dany_campino@hotmail.com', 130, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25261271', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25260828, 'Pizzabagare sökes på deltid', 'Pizzabagare', 'ansokan@hotmail.com', 131, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25260828', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25253924, 'Pizzabagare!', 'Pizzabagare', 'kurd.s@hotmail.com', 132, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25253924', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25250251, 'Hamburger kock', 'Grillkock, snabbmat', 'dani.zazi@gmail.com', 133, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25250251', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25246402, 'PIZZABAGARE', 'Pizzabagare', 'muammer_arikan@hotmail.co', 134, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25246402', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25241883, 'Pizzabagare i Stockholm', 'Pizzabagare', 'msrestaurang@hotmail.com', 135, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25241883', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25235252, 'Pizza maker', 'Pizzabagare', 'HR@eataly.se', 136, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25235252', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25233666, 'Pizzabagare', 'Pizzabagare', 'Epa-12648@hotmail.com', 137, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25233666', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25218216, 'Pizzabagare sökes i Norrtälje', 'Pizzabagare', 'fadi_yakob@hotmail.com', 138, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25218216', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25216953, 'Pizzakock', 'Pizzabagare', 'bjorn@lapiazzadjursholm.se', 139, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25216953', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25214657, 'Pizzabagare', 'Pizzabagare', 'pizzeria.grantomta@hotmail.com', 140, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25214657', 4, 4, 7);
INSERT INTO public.job_offer VALUES (25212752, 'Pizzabagare', 'Pizzabagare', 'ilfornouno@outlook.com', 141, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/25212752', 4, 4, 7);
INSERT INTO public.job_offer VALUES (24974692, 'Pizzabagare sökes', 'Pizzabagare', 'jobb.stromma@gmail.com', 142, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/24974692', 4, 4, 7);
INSERT INTO public.job_offer VALUES (24975607, 'Pizzabagare I Tyresö', 'Pizzabagare', 'ghassan.mlke@hotmail.com', 143, '2021-11-09', 'https://arbetsformedlingen.se/platsbanken/annonser/24975607', 4, 4, 7);


--
-- TOC entry 2884 (class 0 OID 68296)
-- Dependencies: 202
-- Data for Name: application; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.application VALUES (3, 25210339, '2021-11-08');
INSERT INTO public.application VALUES (3, 123, '2021-11-08');
INSERT INTO public.application VALUES (1, 124, '2021-11-09');
INSERT INTO public.application VALUES (1, 123, '2021-11-09');


--
-- TOC entry 2885 (class 0 OID 68299)
-- Dependencies: 203
-- Data for Name: body_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.body_message OVERRIDING SYSTEM VALUE VALUES (1, 2, 'Hi, I am Rafel and I would like to apply for a job.');
INSERT INTO public.body_message OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Hi, I am body 1');
INSERT INTO public.body_message OVERRIDING SYSTEM VALUE VALUES (1, 3, 'Hello hello hello');
INSERT INTO public.body_message OVERRIDING SYSTEM VALUE VALUES (1, 4, 'Hi2, I am Rafel and I would like to apply for a job.');


--
-- TOC entry 2896 (class 0 OID 68330)
-- Dependencies: 214
-- Data for Name: resume; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.resume OVERRIDING SYSTEM VALUE VALUES (1, 1, 'test1', NULL);
INSERT INTO public.resume OVERRIDING SYSTEM VALUE VALUES (1, 3, 'test2', NULL);
INSERT INTO public.resume OVERRIDING SYSTEM VALUE VALUES (1, 4, 'test2', NULL);
INSERT INTO public.resume OVERRIDING SYSTEM VALUE VALUES (1, 2, 'test1', '/home/test');
INSERT INTO public.resume OVERRIDING SYSTEM VALUE VALUES (1, 5, 'PyE_Taller1.pdf', NULL);
INSERT INTO public.resume OVERRIDING SYSTEM VALUE VALUES (1, 6, 'Tarea_Taller_1.pdf', '/home/rafa/Desktop/Sweden_Proyect/Database/CVs/id_customer_1/id_cv_6/Tarea_Taller_1.pdf');


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 204
-- Name: body_message_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.body_message_body_id_seq', 4, true);


--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 206
-- Name: city_id_city_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.city_id_city_seq', 7, true);


--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 208
-- Name: company_id_company_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_id_company_seq', 143, true);


--
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 210
-- Name: customer_id_customer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_id_customer_seq', 4, true);


--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 213
-- Name: main_sector_id_sector_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_sector_id_sector_seq', 7, true);


--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 215
-- Name: resume_id_cv_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resume_id_cv_seq', 6, true);


--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 217
-- Name: subcategory_id_subcategory_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subcategory_id_subcategory_seq', 7, true);


-- Completed on 2021-11-09 16:02:09

--
-- PostgreSQL database dump complete
--

