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
-- Temporary view structure for view `AnoLançamento_duracao`
--

DROP TABLE IF EXISTS `AnoLançamento_duracao`;
/*!50001 DROP VIEW IF EXISTS `AnoLançamento_duracao`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `AnoLançamento_duracao` AS SELECT 
 1 AS `Ano_Lancamento`,
 1 AS `duraçao`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `content_type`
--

DROP TABLE IF EXISTS `content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_type` (
  `id` int NOT NULL,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_log`
--

DROP TABLE IF EXISTS `country_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_id` int DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `changedat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `documentarios`
--

DROP TABLE IF EXISTS `documentarios`;
/*!50001 DROP VIEW IF EXISTS `documentarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `documentarios` AS SELECT 
 1 AS `Título`,
 1 AS `descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `duration`
--

DROP TABLE IF EXISTS `duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duration` (
  `id` int NOT NULL,
  `temp` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `listarFilmes`
--

DROP TABLE IF EXISTS `listarFilmes`;
/*!50001 DROP VIEW IF EXISTS `listarFilmes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listarFilmes` AS SELECT 
 1 AS `titulo`,
 1 AS `estilo`,
 1 AS `descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `listed_in`
--

DROP TABLE IF EXISTS `listed_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listed_in` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `paisprodução_diretor`
--

DROP TABLE IF EXISTS `paisprodução_diretor`;
/*!50001 DROP VIEW IF EXISTS `paisprodução_diretor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `paisprodução_diretor` AS SELECT 
 1 AS `oais_de_producao`,
 1 AS `diretor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` int NOT NULL,
  `valor` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relat_dados_implementados_shows`
--

DROP TABLE IF EXISTS `relat_dados_implementados_shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relat_dados_implementados_shows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `show_id` int DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `hora` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relat_dados_implementados_shows_log`
--

DROP TABLE IF EXISTS `relat_dados_implementados_shows_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relat_dados_implementados_shows_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `show_id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `cast` varchar(1000) DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `rating_id` int DEFAULT NULL,
  `duration_id` int DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `changedat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `release_year`
--

DROP TABLE IF EXISTS `release_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `release_year` (
  `id` int NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows` (
  `id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `cast` varchar(1000) DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `rating_id` int DEFAULT NULL,
  `duration_id` int DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  KEY `duration_id` (`duration_id`),
  KEY `content_type_id` (`content_type_id`),
  KEY `rating_id` (`rating_id`),
  CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `shows_ibfk_2` FOREIGN KEY (`duration_id`) REFERENCES `duration` (`id`),
  CONSTRAINT `shows_ibfk_3` FOREIGN KEY (`content_type_id`) REFERENCES `content_type` (`id`),
  CONSTRAINT `shows_ibfk_4` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shows_director`
--

DROP TABLE IF EXISTS `shows_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows_director` (
  `id` int NOT NULL,
  `shows_id` int NOT NULL,
  `director_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `director_id` (`director_id`),
  KEY `shows_id` (`shows_id`),
  CONSTRAINT `shows_director_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`),
  CONSTRAINT `shows_director_ibfk_2` FOREIGN KEY (`shows_id`) REFERENCES `shows` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shows_listed_in`
--

DROP TABLE IF EXISTS `shows_listed_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows_listed_in` (
  `id` int NOT NULL,
  `shows_id` int NOT NULL,
  `listed_in_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listed_in_id` (`listed_in_id`),
  KEY `shows_id` (`shows_id`),
  CONSTRAINT `shows_listed_in_ibfk_1` FOREIGN KEY (`listed_in_id`) REFERENCES `listed_in` (`id`),
  CONSTRAINT `shows_listed_in_ibfk_2` FOREIGN KEY (`shows_id`) REFERENCES `shows` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `titulo_classificacao`
--

DROP TABLE IF EXISTS `titulo_classificacao`;
/*!50001 DROP VIEW IF EXISTS `titulo_classificacao`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `titulo_classificacao` AS SELECT 
 1 AS `titulo`,
 1 AS `data_adicionado`,
 1 AS `classificacao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `titulo_estilo_descricao`
--

DROP TABLE IF EXISTS `titulo_estilo_descricao`;
/*!50001 DROP VIEW IF EXISTS `titulo_estilo_descricao`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `titulo_estilo_descricao` AS SELECT 
 1 AS `titulo`,
 1 AS `estilo`,
 1 AS `descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `AnoLançamento_duracao`
--

/*!50001 DROP VIEW IF EXISTS `AnoLançamento_duracao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `AnoLançamento_duracao` AS select `release_year`.`year` AS `Ano_Lancamento`,`duration`.`temp` AS `duraçao` from (`release_year` join `duration`) where (`release_year`.`id` = `duration`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `documentarios`
--

/*!50001 DROP VIEW IF EXISTS `documentarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `documentarios` AS select `shows`.`title` AS `Título`,`shows`.`description` AS `descricao` from `shows` where (`shows`.`id` = (select `listed_in`.`id` from `listed_in` where (`listed_in`.`nome` = 'Documentaries'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listarFilmes`
--

/*!50001 DROP VIEW IF EXISTS `listarFilmes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listarFilmes` AS select `s`.`title` AS `titulo`,`ct`.`tipo` AS `estilo`,`s`.`description` AS `descricao` from (`shows` `s` join `content_type` `ct` on((`ct`.`id` = `s`.`content_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `paisprodução_diretor`
--

/*!50001 DROP VIEW IF EXISTS `paisprodução_diretor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `paisprodução_diretor` AS select `country`.`nome` AS `oais_de_producao`,`director`.`nome` AS `diretor` from (`country` join `director`) where (`country`.`id` = `director`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `titulo_classificacao`
--

/*!50001 DROP VIEW IF EXISTS `titulo_classificacao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `titulo_classificacao` AS select `shows`.`title` AS `titulo`,`shows`.`date_added` AS `data_adicionado`,`listed_in`.`nome` AS `classificacao` from (`shows` join `listed_in`) where (`listed_in`.`id` = `shows`.`id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `titulo_estilo_descricao`
--

/*!50001 DROP VIEW IF EXISTS `titulo_estilo_descricao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `titulo_estilo_descricao` AS select `shows`.`title` AS `titulo`,`content_type`.`tipo` AS `estilo`,`shows`.`description` AS `descricao` from (`shows` join `content_type` on((`content_type`.`id` = `shows`.`content_type_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-13 18:54:38
