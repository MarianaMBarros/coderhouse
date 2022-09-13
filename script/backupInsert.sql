-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: Netflix_projeto_final
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `content_type`
--

LOCK TABLES `content_type` WRITE;
/*!40000 ALTER TABLE `content_type` DISABLE KEYS */;
INSERT INTO `content_type` VALUES (1,'Movie'),(2,'TV Show');
/*!40000 ALTER TABLE `content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'United States'),(2,'South Africa'),(3,'Ghana'),(4,'Burkina Faso'),(5,'India'),(6,'United Kingdom'),(7,'Germany'),(8,'Ethiopia'),(9,'United Kingdom'),(12,'Antonia');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country_log`
--

LOCK TABLES `country_log` WRITE;
/*!40000 ALTER TABLE `country_log` DISABLE KEYS */;
INSERT INTO `country_log` VALUES (8,3,'Ghanao','update_before','root@172.19.0.1','2022-08-30 22:50:32'),(9,3,'Ghana','update_after','root@172.19.0.1','2022-08-30 22:50:32'),(10,12,'Antonia','insert_before','root@172.19.0.1','2022-08-30 23:49:32');
/*!40000 ALTER TABLE `country_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Kirsten Johnson'),(2,'Julien Leclercq'),(3,'Mike Flanagan'),(4,'Robert Cullen'),(5,'José Luis Ucha'),(6,'Haile Gerima'),(7,'Andy Devonshire'),(8,'Theodore Melfi'),(9,'Kongkiat Komesiri'),(10,'Christian Schwochow');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `duration`
--

LOCK TABLES `duration` WRITE;
/*!40000 ALTER TABLE `duration` DISABLE KEYS */;
INSERT INTO `duration` VALUES (1,'1 Season'),(2,'2 Seasons'),(3,'4 Seasons'),(4,'5 Season'),(5,'9 Seasons'),(6,'90 min'),(7,'91 min'),(8,'67 min'),(9,'104 min'),(10,'125 min');
/*!40000 ALTER TABLE `duration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `listed_in`
--

LOCK TABLES `listed_in` WRITE;
/*!40000 ALTER TABLE `listed_in` DISABLE KEYS */;
INSERT INTO `listed_in` VALUES (1,'Documentaries'),(2,'International TV Shows'),(3,'TV Dramas'),(4,'TV Mysteries'),(5,'Crime TV Shows'),(6,'International Movies'),(7,'TV Action & Adventure'),(8,'Docuseries'),(9,'Reality TV'),(10,'Romantic TV Shows');
/*!40000 ALTER TABLE `listed_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'PG-13'),(2,'TV-MA'),(3,'PG'),(4,'TV-14'),(5,'TV-PG'),(6,'TV-Y'),(7,'TV-Y7'),(8,'R');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `relat_dados_implementados_shows`
--

LOCK TABLES `relat_dados_implementados_shows` WRITE;
/*!40000 ALTER TABLE `relat_dados_implementados_shows` DISABLE KEYS */;
INSERT INTO `relat_dados_implementados_shows` VALUES (1,109,'Bangkok Breaking','root@172.19.0.1','2022-08-31','00:07:32'),(2,101,'Bangkok Breaking','root@172.19.0.1','2022-08-31','00:08:09'),(3,101,'Bangkok Breaking','root@172.19.0.1','2022-08-31','00:08:09');
/*!40000 ALTER TABLE `relat_dados_implementados_shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `relat_dados_implementados_shows_log`
--

LOCK TABLES `relat_dados_implementados_shows_log` WRITE;
/*!40000 ALTER TABLE `relat_dados_implementados_shows_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `relat_dados_implementados_shows_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `release_year`
--

LOCK TABLES `release_year` WRITE;
/*!40000 ALTER TABLE `release_year` DISABLE KEYS */;
INSERT INTO `release_year` VALUES (1,1993),(2,1994),(3,1998),(4,1999),(5,2000),(6,2001),(7,2010),(8,2012),(9,2020),(10,2021);
/*!40000 ALTER TABLE `release_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (1,2,'Dick Johnson Is Dead',NULL,1,'2020-03-25 00:00:00',9,1,6,'As her father nears the end of his life, filmmaker Kirsten Johnson stages his death in inventive and comical ways to help them both face the inevitable.'),(2,2,'Blood & Water','Ama Qamata',2,'2021-09-24 00:00:00',10,2,2,'After crossing paths at a party, a Cape Town teen sets out to prove whether a private-school swimming star is her sister who was abducted at birth'),(3,2,'Ganglands','Sami Bouajila',NULL,'2020-10-24 00:00:00',10,2,1,'To protect his family from a powerful drug lord, skilled thief Mehdi and his expert team of robbers are pulled into a violent and deadly turf war.'),(4,2,'Jailbirds New Orleans',NULL,NULL,'2020-09-14 00:00:00',10,2,1,'Feuds, flirtations and toilet talk go down among the incarcerated women at the Orleans Justice Center in New Orleans on this gritty reality series.'),(5,2,'Kota Factory','Mayur More',5,'2021-09-24 00:00:00',10,2,2,'In a city of coaching centers known to train India’s finest collegiate minds, an earnest but unexceptional student and his friends navigate campus life.'),(6,1,'My Little Pony: A New Generation','Vanessa Hudgens',1,'2020-05-22 00:00:00',10,3,7,'Equestrias divided. But a bright-eyed hero believes Earth Ponies, Pegasi and Unicorns should be pals — and, hoof to heart, she’s determined to prove it.'),(7,2,'Midnight Mass','Kate Siegel',NULL,'2021-09-24 00:00:00',10,2,1,'The arrival of a charismatic young priest brings glorious miracles, ominous mysteries and renewed religious fervor to a dying town desperate to believe.'),(8,1,'Sankofa','Kofi Ghanaba',1,'2021-10-28 00:00:00',1,2,10,'On a photo shoot in Ghana, an American model slips back in time, becomes enslaved on a plantation and bears witness to the agony of her ancestral past.'),(9,2,'The Great British Baking Show','Mel Giedroyc',6,'2021-09-24 00:00:00',10,4,5,'A talented batch of amateur bakers face off in a 10-week competition, whipping up their best dishes in the hopes of being named the U.K. best.'),(10,1,'The Starling','Melissa McCarthy',7,'2021-09-12 00:00:00',10,1,9,'A woman adjusting to life after a loss contends with a feisty bird that taken over her garden — and a husband who struggling to find a way forward.'),(11,1,'Bangkok Breaking','Kongkiat Komesiri',1,'2021-09-12 00:00:00',10,2,3,'Struggling to earn a living in Bangkok, a man joins an emergency rescue service and realizes he must unravel a citywide conspiracy.'),(101,1,'Bangkok Breaking','Kongkiat Komesiri',1,'2021-09-12 00:00:00',10,2,3,'Struggling to earn a living in Bangkok, a man joins an emergency rescue service and realizes he must unravel a citywide conspiracy.'),(109,1,'Bangkok Breaking','Kongkiat Komesiri',1,'2021-09-12 00:00:00',10,2,3,'Struggling to earn a living in Bangkok, a man joins an emergency rescue service and realizes he must unravel a citywide conspiracy.'),(10009,1,'Bangkok Breaking','Kongkiat Komesiri',1,'2021-09-12 00:00:00',10,2,3,'Struggling to earn a living in Bangkok, a man joins an emergency rescue service and realizes he must unravel a citywide conspiracy.');
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shows_director`
--

LOCK TABLES `shows_director` WRITE;
/*!40000 ALTER TABLE `shows_director` DISABLE KEYS */;
INSERT INTO `shows_director` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,1,1),(10,2,2);
/*!40000 ALTER TABLE `shows_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shows_listed_in`
--

LOCK TABLES `shows_listed_in` WRITE;
/*!40000 ALTER TABLE `shows_listed_in` DISABLE KEYS */;
INSERT INTO `shows_listed_in` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `shows_listed_in` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-13 18:56:48
