-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: caso2
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `ad_id` varchar(50) NOT NULL,
  `event_id` int NOT NULL,
  `ads_watched` int DEFAULT NULL,
  PRIMARY KEY (`ad_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `ads_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `play_events` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES ('ad001',4,6),('ad002',5,5),('ad003',6,5),('ad004',10,7),('ad005',11,6),('ad006',14,8),('ad007',15,7),('ad008',20,9),('ad009',21,8),('ad010',26,6),('ad011',27,5),('ad012',30,7),('ad013',31,6),('ad014',34,6),('ad015',35,5),('ad016',38,8),('ad017',39,7);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `antiguas_vs_recientes`
--

DROP TABLE IF EXISTS `antiguas_vs_recientes`;
/*!50001 DROP VIEW IF EXISTS `antiguas_vs_recientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `antiguas_vs_recientes` AS SELECT 
 1 AS `tipo_consumo`,
 1 AS `total_reproducciones`,
 1 AS `avg_completion_rate`,
 1 AS `avg_seconds_played`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `artistas_reproducciones_engagement`
--

DROP TABLE IF EXISTS `artistas_reproducciones_engagement`;
/*!50001 DROP VIEW IF EXISTS `artistas_reproducciones_engagement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `artistas_reproducciones_engagement` AS SELECT 
 1 AS `artist_id`,
 1 AS `artist_name`,
 1 AS `total_de_reproducciones`,
 1 AS `total_likes`,
 1 AS `promedio_completion`,
 1 AS `total_de_repeats`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` int NOT NULL,
  `artist_name` varchar(50) NOT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Arctic Monkeys'),(2,'Cage The Elephant'),(3,'Tame Impala'),(4,'The 1975'),(5,'The Killers'),(6,'The Strokes');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `calidad_por_artista`
--

DROP TABLE IF EXISTS `calidad_por_artista`;
/*!50001 DROP VIEW IF EXISTS `calidad_por_artista`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `calidad_por_artista` AS SELECT 
 1 AS `artist_name`,
 1 AS `avg_completion`,
 1 AS `avg_repeticiones`,
 1 AS `total_skips`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `calidad_por_fuente`
--

DROP TABLE IF EXISTS `calidad_por_fuente`;
/*!50001 DROP VIEW IF EXISTS `calidad_por_fuente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `calidad_por_fuente` AS SELECT 
 1 AS `discovery_source`,
 1 AS `avg_completion`,
 1 AS `avg_segundos`,
 1 AS `total_skips`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `calidad_por_suscripcion`
--

DROP TABLE IF EXISTS `calidad_por_suscripcion`;
/*!50001 DROP VIEW IF EXISTS `calidad_por_suscripcion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `calidad_por_suscripcion` AS SELECT 
 1 AS `subscription_type`,
 1 AS `avg_completion`,
 1 AS `avg_repeticiones`,
 1 AS `total_skips`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `canales_adquisicion`
--

DROP TABLE IF EXISTS `canales_adquisicion`;
/*!50001 DROP VIEW IF EXISTS `canales_adquisicion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `canales_adquisicion` AS SELECT 
 1 AS `acquisition_channel`,
 1 AS `total_usuarios`,
 1 AS `total_reproducciones`,
 1 AS `tiempo_total_segundos`,
 1 AS `total_likes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `device_id` varchar(50) NOT NULL,
  `device_type` varchar(50) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `app_version` varchar(50) DEFAULT NULL,
  `connection_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES ('d001','Desktop','MacOS','1.4.0','WiFi'),('d002','Desktop','Windows','1.4.0','WiFi'),('d003','Mobile','Android','1.4.1','Datos'),('d004','Mobile','iOS','1.4.1','WiFi'),('d005','Tablet','iOS','1.4.1','WiFi');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `discovery_engagement`
--

DROP TABLE IF EXISTS `discovery_engagement`;
/*!50001 DROP VIEW IF EXISTS `discovery_engagement`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `discovery_engagement` AS SELECT 
 1 AS `discovery_source`,
 1 AS `total_plays`,
 1 AS `avg_completion`,
 1 AS `avg_repeticiones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `discovery_interacciones`
--

DROP TABLE IF EXISTS `discovery_interacciones`;
/*!50001 DROP VIEW IF EXISTS `discovery_interacciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `discovery_interacciones` AS SELECT 
 1 AS `discovery_source`,
 1 AS `total_saves`,
 1 AS `total_shares`,
 1 AS `total_likes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `discovery_por_suscripcion`
--

DROP TABLE IF EXISTS `discovery_por_suscripcion`;
/*!50001 DROP VIEW IF EXISTS `discovery_por_suscripcion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `discovery_por_suscripcion` AS SELECT 
 1 AS `subscription_type`,
 1 AS `discovery_source`,
 1 AS `total_plays`,
 1 AS `avg_completion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `event_device`
--

DROP TABLE IF EXISTS `event_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_device` (
  `event_id` int NOT NULL,
  `device_id` varchar(50) NOT NULL,
  PRIMARY KEY (`event_id`,`device_id`),
  KEY `device_id` (`device_id`),
  CONSTRAINT `event_device_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `play_events` (`event_id`),
  CONSTRAINT `event_device_ibfk_2` FOREIGN KEY (`device_id`) REFERENCES `devices` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_device`
--

LOCK TABLES `event_device` WRITE;
/*!40000 ALTER TABLE `event_device` DISABLE KEYS */;
INSERT INTO `event_device` VALUES (7,'d001'),(8,'d001'),(9,'d001'),(18,'d001'),(19,'d001'),(36,'d001'),(37,'d001'),(28,'d002'),(29,'d002'),(4,'d003'),(5,'d003'),(6,'d003'),(10,'d003'),(11,'d003'),(14,'d003'),(15,'d003'),(20,'d003'),(21,'d003'),(26,'d003'),(27,'d003'),(30,'d003'),(31,'d003'),(34,'d003'),(35,'d003'),(38,'d003'),(39,'d003'),(1,'d004'),(2,'d004'),(3,'d004'),(12,'d004'),(13,'d004'),(22,'d004'),(23,'d004'),(24,'d004'),(25,'d004'),(32,'d004'),(33,'d004'),(40,'d004'),(16,'d005'),(17,'d005');
/*!40000 ALTER TABLE `event_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_playlist`
--

DROP TABLE IF EXISTS `event_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_playlist` (
  `event_id` int NOT NULL,
  `playlist_id` varchar(50) NOT NULL,
  PRIMARY KEY (`event_id`,`playlist_id`),
  KEY `playlist_id` (`playlist_id`),
  CONSTRAINT `event_playlist_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `play_events` (`event_id`),
  CONSTRAINT `event_playlist_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`playlist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_playlist`
--

LOCK TABLES `event_playlist` WRITE;
/*!40000 ALTER TABLE `event_playlist` DISABLE KEYS */;
INSERT INTO `event_playlist` VALUES (22,'pl001'),(23,'pl001'),(16,'pl002'),(17,'pl002'),(34,'pl002'),(35,'pl002'),(7,'pl003'),(8,'pl003'),(9,'pl003'),(18,'pl003'),(19,'pl003'),(24,'pl004'),(25,'pl004'),(28,'pl005'),(29,'pl005'),(20,'pl006'),(21,'pl006'),(1,'pl007'),(2,'pl007'),(3,'pl007'),(10,'pl008'),(11,'pl008'),(26,'pl009'),(27,'pl009'),(4,'pl010'),(5,'pl010'),(6,'pl010'),(36,'pl011'),(37,'pl011'),(40,'pl011'),(12,'pl012'),(13,'pl012'),(14,'pl013'),(15,'pl013'),(30,'pl013'),(31,'pl013'),(38,'pl013'),(39,'pl013'),(32,'pl014'),(33,'pl014');
/*!40000 ALTER TABLE `event_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `free_vs_premium`
--

DROP TABLE IF EXISTS `free_vs_premium`;
/*!50001 DROP VIEW IF EXISTS `free_vs_premium`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `free_vs_premium` AS SELECT 
 1 AS `subscription_type`,
 1 AS `avg_session_duration`,
 1 AS `avg_repeat`,
 1 AS `avg_save`,
 1 AS `avg_share`,
 1 AS `avg_completion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `interactions`
--

DROP TABLE IF EXISTS `interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interactions` (
  `interaction_id` varchar(50) NOT NULL,
  `event_id` int NOT NULL,
  `liked` tinyint(1) DEFAULT NULL,
  `saved_to_library` tinyint(1) DEFAULT NULL,
  `added_to_playlist` tinyint(1) DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `downloaded` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`interaction_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `interactions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `play_events` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactions`
--

LOCK TABLES `interactions` WRITE;
/*!40000 ALTER TABLE `interactions` DISABLE KEYS */;
INSERT INTO `interactions` VALUES ('int001',1,1,1,1,0,1),('int002',2,1,1,1,0,0),('int003',3,1,0,1,0,0),('int004',4,1,1,1,1,0),('int005',5,0,0,0,0,0),('int006',6,1,1,1,0,0),('int007',7,1,1,1,1,1),('int008',8,1,0,1,0,0),('int009',9,0,0,0,0,0),('int010',10,0,0,0,0,0),('int011',11,1,1,1,0,0),('int012',12,1,1,1,1,1),('int013',13,0,0,0,0,0),('int014',14,1,1,1,1,0),('int015',15,0,0,0,0,0),('int016',16,1,1,1,0,0),('int017',17,1,0,1,0,0),('int018',18,1,1,1,1,1),('int019',19,1,0,1,0,0),('int020',20,1,1,1,1,0),('int021',21,0,0,0,0,0),('int022',22,1,1,1,0,1),('int023',23,1,1,1,0,0),('int024',24,1,1,1,0,0),('int025',25,0,0,0,0,0),('int026',26,1,1,1,0,0),('int027',27,0,0,0,0,0),('int028',28,1,1,1,1,1),('int029',29,1,0,1,0,0),('int030',30,1,1,1,1,0),('int031',31,0,0,0,0,0),('int032',32,1,1,1,0,1),('int033',33,1,1,1,0,0),('int034',34,1,1,1,1,0),('int035',35,0,0,0,0,0),('int036',36,1,1,1,1,1),('int037',37,1,0,1,0,0),('int038',38,1,1,1,1,0),('int039',39,0,0,0,0,0),('int040',40,1,1,1,0,1);
/*!40000 ALTER TABLE `interactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_events`
--

DROP TABLE IF EXISTS `play_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play_events` (
  `event_id` int NOT NULL,
  `user_id` int NOT NULL,
  `song_id` int NOT NULL,
  `session_id` varchar(50) NOT NULL,
  `play_date` date DEFAULT NULL,
  `play_time` time DEFAULT NULL,
  `seconds_played` int DEFAULT NULL,
  `completion_rate` decimal(5,2) DEFAULT NULL,
  `skipped` tinyint(1) DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `discovery_source` varchar(50) DEFAULT NULL,
  `search_query` varchar(50) DEFAULT NULL,
  `device_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `user_id` (`user_id`),
  KEY `song_id` (`song_id`),
  KEY `session_id` (`session_id`),
  KEY `device_id` (`device_id`),
  CONSTRAINT `play_events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `play_events_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`),
  CONSTRAINT `play_events_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`session_id`),
  CONSTRAINT `play_events_ibfk_4` FOREIGN KEY (`device_id`) REFERENCES `devices` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_events`
--

LOCK TABLES `play_events` WRITE;
/*!40000 ALTER TABLE `play_events` DISABLE KEYS */;
INSERT INTO `play_events` VALUES (1,301,1,'s201','2024-03-01','08:00:00',222,100.00,0,6,'Search','mr brightside','d004'),(2,301,2,'s201','2024-03-01','08:05:00',193,100.00,0,5,'Playlist','last nite','d004'),(3,301,3,'s201','2024-03-01','08:10:00',245,100.00,0,2,'Search','human','d004'),(4,302,4,'s202','2024-03-01','09:00:00',272,100.00,0,3,'Search','do i wanna know','d003'),(5,302,5,'s202','2024-03-01','09:07:00',120,34.00,1,0,'Autoplay','somebody else','d003'),(6,302,6,'s202','2024-03-01','09:10:00',253,100.00,0,4,'Search','505','d003'),(7,303,7,'s203','2024-03-01','10:10:00',216,100.00,0,7,'Search','tame impala','d001'),(8,303,8,'s203','2024-03-01','10:15:00',210,100.00,0,2,'Playlist','cigarette daydreams','d001'),(9,303,9,'s203','2024-03-01','10:20:00',100,43.00,1,0,'Autoplay','borderline','d001'),(10,304,10,'s204','2024-03-01','11:00:00',110,50.00,1,0,'NewRelease','reptilia','d003'),(11,304,6,'s204','2024-03-01','11:05:00',253,100.00,0,3,'Search','505','d003'),(12,305,11,'s205','2024-03-01','12:00:00',220,100.00,0,5,'Playlist','when you were young','d004'),(13,305,12,'s205','2024-03-01','12:06:00',120,48.00,1,0,'Autoplay','the sound','d004'),(14,306,13,'s206','2024-03-01','13:00:00',183,100.00,0,6,'Search','i wanna be yours','d003'),(15,306,9,'s206','2024-03-01','13:05:00',95,41.00,1,0,'Autoplay','borderline','d003'),(16,307,14,'s207','2024-03-02','09:20:00',187,100.00,0,5,'Search','someday','d005'),(17,307,15,'s207','2024-03-02','09:25:00',172,100.00,0,2,'Playlist','aint no rest','d005'),(18,308,16,'s208','2024-03-02','10:30:00',360,100.00,0,8,'Search','new person same old mistakes','d001'),(19,308,3,'s208','2024-03-02','10:38:00',245,100.00,0,2,'Playlist','human','d001'),(20,309,6,'s209','2024-03-02','11:00:00',253,100.00,0,7,'Search','505','d003'),(21,309,17,'s209','2024-03-02','11:05:00',85,31.00,1,0,'Autoplay','love it if we made it','d003'),(22,310,1,'s210','2024-03-02','12:00:00',222,100.00,0,9,'Search','mr brightside','d004'),(23,310,2,'s210','2024-03-02','12:05:00',193,100.00,0,7,'Playlist','last nite','d004'),(24,311,18,'s211','2024-03-02','13:00:00',240,100.00,0,4,'Search','read my mind','d004'),(25,311,19,'s211','2024-03-02','13:05:00',120,50.00,1,0,'Autoplay','chocolate','d004'),(26,312,14,'s212','2024-03-02','14:00:00',187,100.00,0,3,'Search','someday','d003'),(27,312,20,'s212','2024-03-02','14:05:00',100,45.00,1,0,'Autoplay','come a little closer','d003'),(28,313,21,'s213','2024-03-02','15:00:00',200,100.00,0,6,'Search','tame impala','d002'),(29,313,3,'s213','2024-03-02','15:10:00',245,100.00,0,2,'Playlist','human','d002'),(30,314,22,'s214','2024-03-02','16:00:00',193,100.00,0,5,'Search','snap out of it','d003'),(31,314,12,'s214','2024-03-02','16:05:00',90,36.00,1,0,'Autoplay','the sound','d003'),(32,315,1,'s215','2024-03-02','17:00:00',222,100.00,0,10,'Search','mr brightside','d004'),(33,315,10,'s215','2024-03-02','17:05:00',217,100.00,0,6,'Playlist','reptilia','d004'),(34,316,13,'s216','2024-03-02','18:00:00',183,100.00,0,6,'Search','i wanna be yours','d003'),(35,316,9,'s216','2024-03-02','18:05:00',95,41.00,1,0,'Autoplay','borderline','d003'),(36,317,7,'s217','2024-03-02','19:00:00',216,100.00,0,9,'Search','tame impala','d001'),(37,317,18,'s217','2024-03-02','19:10:00',240,100.00,0,3,'Playlist','read my mind','d001'),(38,318,2,'s218','2024-03-02','20:00:00',193,100.00,0,7,'Search','last nite','d003'),(39,318,19,'s218','2024-03-02','20:05:00',80,33.00,1,0,'Autoplay','chocolate','d003'),(40,319,4,'s219','2024-03-02','21:00:00',272,100.00,0,5,'Search','do i wanna know','d004');
/*!40000 ALTER TABLE `play_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `playlist_id` varchar(50) NOT NULL,
  `playlist_name` varchar(50) NOT NULL,
  `playlist_category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`playlist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES ('pl001','All Time Indie','Nostalgia'),('pl002','Chill Indie','Mood'),('pl003','Deep Focus','Focus'),('pl004','Evening Indie','Mood'),('pl005','Focus Indie','Focus'),('pl006','Heartbreak Indie','Mood'),('pl007','Indie Classics','Nostalgia'),('pl008','Indie Mix','Editorial'),('pl009','Indie Starter','Editorial'),('pl010','Moody Indie','Mood'),('pl011','Night Indie','Mood'),('pl012','Roadtrip','Commute'),('pl013','Viral Indie','Viral'),('pl014','Workout Indie','Workout');
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `relacion_interacciones`
--

DROP TABLE IF EXISTS `relacion_interacciones`;
/*!50001 DROP VIEW IF EXISTS `relacion_interacciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `relacion_interacciones` AS SELECT 
 1 AS `user_name`,
 1 AS `repeat_count`,
 1 AS `liked`,
 1 AS `saved_to_library`,
 1 AS `added_to_playlist`,
 1 AS `song_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `repeticiones_por_user`
--

DROP TABLE IF EXISTS `repeticiones_por_user`;
/*!50001 DROP VIEW IF EXISTS `repeticiones_por_user`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `repeticiones_por_user` AS SELECT 
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `subscription_type`,
 1 AS `total_repeticiones`,
 1 AS `promedio_repeticion`,
 1 AS `max_repeticion_individual`,
 1 AS `canciones_escuchadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `resumen_consumo_usuario`
--

DROP TABLE IF EXISTS `resumen_consumo_usuario`;
/*!50001 DROP VIEW IF EXISTS `resumen_consumo_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumen_consumo_usuario` AS SELECT 
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `subscription_type`,
 1 AS `age`,
 1 AS `country`,
 1 AS `eventos`,
 1 AS `reps`,
 1 AS `avg_comp`,
 1 AS `skipped`,
 1 AS `liked`,
 1 AS `saved`,
 1 AS `in_playlist`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `resumen_negocio`
--

DROP TABLE IF EXISTS `resumen_negocio`;
/*!50001 DROP VIEW IF EXISTS `resumen_negocio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumen_negocio` AS SELECT 
 1 AS `segmento`,
 1 AS `total`,
 1 AS `avg_reps`,
 1 AS `avg_completion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(50) NOT NULL,
  `session_duration_min` int DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('s201',55),('s202',18),('s203',65),('s204',12),('s205',50),('s206',16),('s207',60),('s208',75),('s209',10),('s210',70),('s211',45),('s212',14),('s213',80),('s214',11),('s215',60),('s216',13),('s217',85),('s218',10),('s219',58);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `song_id` int NOT NULL,
  `song_name` varchar(50) NOT NULL,
  `album` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `track_duration_sec` int DEFAULT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Mr Brightside','Hot Fuss','Alt Rock',2004,222,5),(2,'Last Nite','Is This It','Alt Rock',2001,193,6),(3,'Human','Day & Age','Alt Rock',2008,245,5),(4,'Do I Wanna Know','AM','Alt Rock',2013,272,1),(5,'Somebody Else','I Like It When You Sleep','Alt Rock',2016,347,4),(6,'505','Favourite Worst Nightmare','Alt Rock',2007,253,1),(7,'The Less I Know The Better','Currents','Alt Rock',2015,216,3),(8,'Cigarette Daydreams','Melophobia','Alt Rock',2013,210,2),(9,'Borderline','The Slow Rush','Alt Rock',2020,230,3),(10,'Reptilia','Room On Fire','Alt Rock',2003,217,6),(11,'When You Were Young','Sams Town','Alt Rock',2006,220,5),(12,'The Sound','I Like It When You Sleep','Alt Rock',2016,248,4),(13,'I Wanna Be Yours','AM','Alt Rock',2013,183,1),(14,'Someday','Is This It','Alt Rock',2001,187,6),(15,'Aint No Rest for the Wicked','Cage The Elephant','Alt Rock',2008,172,2),(16,'New Person Same Old Mistakes','Currents','Alt Rock',2015,360,3),(17,'Love It If We Made It','A Brief Inquiry','Alt Rock',2018,274,4),(18,'Read My Mind','Sams Town','Alt Rock',2006,240,5),(19,'Chocolate','The 1975','Alt Rock',2013,240,4),(20,'Come A Little Closer','Melophobia','Alt Rock',2013,220,2),(21,'Feels Like We Only Go Backwards','Lonerism','Alt Rock',2012,200,3),(22,'Snap Out Of It','AM','Alt Rock',2013,193,1);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tipo_de_usuarios`
--

DROP TABLE IF EXISTS `tipo_de_usuarios`;
/*!50001 DROP VIEW IF EXISTS `tipo_de_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tipo_de_usuarios` AS SELECT 
 1 AS `user_name`,
 1 AS `subscription_type`,
 1 AS `reps`,
 1 AS `avg_comp`,
 1 AS `segmento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_canciones`
--

DROP TABLE IF EXISTS `top_canciones`;
/*!50001 DROP VIEW IF EXISTS `top_canciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_canciones` AS SELECT 
 1 AS `song_name`,
 1 AS `artist_name`,
 1 AS `total_repeticiones`,
 1 AS `usuarios_que_la_repiten`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `age` int DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `subscription_type` varchar(50) DEFAULT NULL,
  `monthly_fee_mxn` decimal(10,2) DEFAULT NULL,
  `acquisition_channel` varchar(50) DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  `last_active_date` date DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (301,'leo23',23,'Mexico','CDMX','Premium',129.00,'Instagram','2022-06-10','2024-03-10','Tarjeta'),(302,'mia21',21,'Chile','Santiago','Free',0.00,'TikTok','2024-01-20','2024-03-08',NULL),(303,'daniel25',25,'Mexico','Guadalajara','Premium',149.00,'Referral','2021-11-02','2024-03-12','Tarjeta'),(304,'sara19',19,'Argentina','Buenos Aires','Free',0.00,'YouTube','2024-02-14','2024-03-07',NULL),(305,'pablo27',27,'Colombia','Medellin','Premium',129.00,'Referral','2022-04-10','2024-03-13','Tarjeta'),(306,'lucas22',22,'Mexico','Puebla','Free',0.00,'TikTok','2024-02-25','2024-03-09',NULL),(307,'emma24',24,'Chile','Santiago','Premium',149.00,'Instagram','2023-03-01','2024-03-11','Tarjeta'),(308,'mateo26',26,'Mexico','CDMX','Premium',129.00,'Referral','2022-08-15','2024-03-14','PayPal'),(309,'vale20',20,'Peru','Lima','Free',0.00,'TikTok','2024-03-01','2024-03-10',NULL),(310,'nico28',28,'Mexico','Monterrey','Premium',149.00,'Referral','2021-12-20','2024-03-13','Tarjeta'),(311,'andres29',29,'Mexico','CDMX','Premium',149.00,'Instagram','2023-01-10','2024-03-12','Tarjeta'),(312,'sofia23',23,'Colombia','Bogota','Free',0.00,'YouTube','2024-02-10','2024-03-08',NULL),(313,'julio30',30,'Mexico','CDMX','Premium',149.00,'Referral','2021-09-15','2024-03-14','PayPal'),(314,'clara21',21,'Argentina','Buenos Aires','Free',0.00,'TikTok','2024-03-02','2024-03-10',NULL),(315,'raul27',27,'Mexico','Monterrey','Premium',129.00,'Referral','2022-07-10','2024-03-13','Tarjeta'),(316,'lucia22',22,'Chile','Santiago','Free',0.00,'Instagram','2024-02-18','2024-03-09',NULL),(317,'ivan29',29,'Mexico','CDMX','Premium',149.00,'Referral','2022-01-05','2024-03-14','Tarjeta'),(318,'marco24',24,'Peru','Lima','Free',0.00,'TikTok','2024-03-03','2024-03-10',NULL),(319,'ana26',26,'Mexico','CDMX','Premium',149.00,'Instagram','2023-04-01','2024-03-12','Tarjeta');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'caso2'
--

--
-- Final view structure for view `antiguas_vs_recientes`
--

/*!50001 DROP VIEW IF EXISTS `antiguas_vs_recientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `antiguas_vs_recientes` AS select (case when (`c`.`release_year` < 2015) then 'Nostalgia' else 'Reciente' end) AS `tipo_consumo`,count(`r`.`event_id`) AS `total_reproducciones`,avg(`r`.`completion_rate`) AS `avg_completion_rate`,avg(`r`.`seconds_played`) AS `avg_seconds_played` from (`play_events` `r` join `songs` `c` on((`r`.`song_id` = `c`.`song_id`))) group by `tipo_consumo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `artistas_reproducciones_engagement`
--

/*!50001 DROP VIEW IF EXISTS `artistas_reproducciones_engagement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `artistas_reproducciones_engagement` AS select `a`.`artist_id` AS `artist_id`,`a`.`artist_name` AS `artist_name`,count(`pe`.`event_id`) AS `total_de_reproducciones`,sum((case when (`i`.`liked` = true) then 1 else 0 end)) AS `total_likes`,avg(`pe`.`completion_rate`) AS `promedio_completion`,sum(`pe`.`repeat_count`) AS `total_de_repeats` from (((`play_events` `pe` join `songs` `s` on((`pe`.`song_id` = `s`.`song_id`))) join `artists` `a` on((`s`.`artist_id` = `a`.`artist_id`))) left join `interactions` `i` on((`pe`.`event_id` = `i`.`event_id`))) group by `a`.`artist_id`,`a`.`artist_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `calidad_por_artista`
--

/*!50001 DROP VIEW IF EXISTS `calidad_por_artista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `calidad_por_artista` AS select `a`.`artist_name` AS `artist_name`,round(avg(`pe`.`completion_rate`),2) AS `avg_completion`,round(avg(`pe`.`repeat_count`),2) AS `avg_repeticiones`,sum(`pe`.`skipped`) AS `total_skips` from ((`play_events` `pe` join `songs` `s` on((`pe`.`song_id` = `s`.`song_id`))) join `artists` `a` on((`s`.`artist_id` = `a`.`artist_id`))) group by `a`.`artist_name` order by `avg_completion` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `calidad_por_fuente`
--

/*!50001 DROP VIEW IF EXISTS `calidad_por_fuente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `calidad_por_fuente` AS select `play_events`.`discovery_source` AS `discovery_source`,round(avg(`play_events`.`completion_rate`),2) AS `avg_completion`,round(avg(`play_events`.`seconds_played`),2) AS `avg_segundos`,sum(`play_events`.`skipped`) AS `total_skips` from `play_events` group by `play_events`.`discovery_source` order by `avg_completion` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `calidad_por_suscripcion`
--

/*!50001 DROP VIEW IF EXISTS `calidad_por_suscripcion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `calidad_por_suscripcion` AS select `u`.`subscription_type` AS `subscription_type`,round(avg(`pe`.`completion_rate`),2) AS `avg_completion`,round(avg(`pe`.`repeat_count`),2) AS `avg_repeticiones`,sum(`pe`.`skipped`) AS `total_skips` from (`play_events` `pe` join `users` `u` on((`pe`.`user_id` = `u`.`user_id`))) group by `u`.`subscription_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `canales_adquisicion`
--

/*!50001 DROP VIEW IF EXISTS `canales_adquisicion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `canales_adquisicion` AS select `u`.`acquisition_channel` AS `acquisition_channel`,count(distinct `u`.`user_id`) AS `total_usuarios`,count(`pe`.`event_id`) AS `total_reproducciones`,sum(`pe`.`seconds_played`) AS `tiempo_total_segundos`,sum((case when (`i`.`liked` = true) then 1 else 0 end)) AS `total_likes` from ((`users` `u` left join `play_events` `pe` on((`u`.`user_id` = `pe`.`user_id`))) left join `interactions` `i` on((`pe`.`event_id` = `i`.`event_id`))) where (`u`.`acquisition_channel` in ('TikTok','Instagram','YouTube','Referral')) group by `u`.`acquisition_channel` order by `total_reproducciones` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `discovery_engagement`
--

/*!50001 DROP VIEW IF EXISTS `discovery_engagement`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `discovery_engagement` AS select `play_events`.`discovery_source` AS `discovery_source`,count(0) AS `total_plays`,round(avg(`play_events`.`completion_rate`),2) AS `avg_completion`,round(avg(`play_events`.`repeat_count`),2) AS `avg_repeticiones` from `play_events` group by `play_events`.`discovery_source` order by `avg_completion` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `discovery_interacciones`
--

/*!50001 DROP VIEW IF EXISTS `discovery_interacciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `discovery_interacciones` AS select `pe`.`discovery_source` AS `discovery_source`,sum(`i`.`saved_to_library`) AS `total_saves`,sum(`i`.`shared`) AS `total_shares`,sum(`i`.`liked`) AS `total_likes` from (`play_events` `pe` join `interactions` `i` on((`pe`.`event_id` = `i`.`event_id`))) group by `pe`.`discovery_source` order by `total_saves` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `discovery_por_suscripcion`
--

/*!50001 DROP VIEW IF EXISTS `discovery_por_suscripcion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `discovery_por_suscripcion` AS select `u`.`subscription_type` AS `subscription_type`,`pe`.`discovery_source` AS `discovery_source`,count(0) AS `total_plays`,round(avg(`pe`.`completion_rate`),2) AS `avg_completion` from (`play_events` `pe` join `users` `u` on((`pe`.`user_id` = `u`.`user_id`))) group by `u`.`subscription_type`,`pe`.`discovery_source` order by `u`.`subscription_type`,`avg_completion` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `free_vs_premium`
--

/*!50001 DROP VIEW IF EXISTS `free_vs_premium`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `free_vs_premium` AS select `u`.`subscription_type` AS `subscription_type`,avg(`s`.`session_duration_min`) AS `avg_session_duration`,avg(`r`.`repeat_count`) AS `avg_repeat`,avg((case when (`i`.`saved_to_library` = true) then 1.0 else 0.0 end)) AS `avg_save`,avg((case when (`i`.`shared` = true) then 1.0 else 0.0 end)) AS `avg_share`,avg(`r`.`completion_rate`) AS `avg_completion` from (((`play_events` `r` join `users` `u` on((`r`.`user_id` = `u`.`user_id`))) join `sessions` `s` on((`r`.`session_id` = `s`.`session_id`))) left join `interactions` `i` on((`r`.`event_id` = `i`.`event_id`))) group by `u`.`subscription_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `relacion_interacciones`
--

/*!50001 DROP VIEW IF EXISTS `relacion_interacciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `relacion_interacciones` AS select `u`.`user_name` AS `user_name`,`e`.`repeat_count` AS `repeat_count`,`i`.`liked` AS `liked`,`i`.`saved_to_library` AS `saved_to_library`,`i`.`added_to_playlist` AS `added_to_playlist`,`s`.`song_name` AS `song_name` from (((`users` `u` join `play_events` `e` on((`u`.`user_id` = `e`.`user_id`))) join `songs` `s` on((`e`.`song_id` = `s`.`song_id`))) join `interactions` `i` on((`e`.`event_id` = `i`.`event_id`))) where (`e`.`repeat_count` > 0) order by `e`.`repeat_count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `repeticiones_por_user`
--

/*!50001 DROP VIEW IF EXISTS `repeticiones_por_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `repeticiones_por_user` AS select `u`.`user_id` AS `user_id`,`u`.`user_name` AS `user_name`,`u`.`subscription_type` AS `subscription_type`,sum(`e`.`repeat_count`) AS `total_repeticiones`,avg(`e`.`repeat_count`) AS `promedio_repeticion`,max(`e`.`repeat_count`) AS `max_repeticion_individual`,count(`e`.`event_id`) AS `canciones_escuchadas` from (`users` `u` join `play_events` `e` on((`u`.`user_id` = `e`.`user_id`))) group by `u`.`user_id`,`u`.`user_name`,`u`.`subscription_type` order by `total_repeticiones` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resumen_consumo_usuario`
--

/*!50001 DROP VIEW IF EXISTS `resumen_consumo_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resumen_consumo_usuario` AS select `u`.`user_id` AS `user_id`,`u`.`user_name` AS `user_name`,`u`.`subscription_type` AS `subscription_type`,`u`.`age` AS `age`,`u`.`country` AS `country`,count(`e`.`event_id`) AS `eventos`,sum(`e`.`repeat_count`) AS `reps`,avg(`e`.`completion_rate`) AS `avg_comp`,sum((`e`.`skipped` = 'Si')) AS `skipped`,sum((`i`.`liked` = 'Si')) AS `liked`,sum((`i`.`saved_to_library` = 'Si')) AS `saved`,sum((`i`.`added_to_playlist` = 'Si')) AS `in_playlist` from ((`users` `u` join `play_events` `e` on((`u`.`user_id` = `e`.`user_id`))) join `interactions` `i` on((`e`.`event_id` = `i`.`event_id`))) group by `u`.`user_id`,`u`.`user_name`,`u`.`subscription_type`,`u`.`age`,`u`.`country` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resumen_negocio`
--

/*!50001 DROP VIEW IF EXISTS `resumen_negocio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resumen_negocio` AS select `tipo_de_usuarios`.`segmento` AS `segmento`,count(0) AS `total`,round(avg(`tipo_de_usuarios`.`reps`),1) AS `avg_reps`,round(avg(`tipo_de_usuarios`.`avg_comp`),1) AS `avg_completion` from `tipo_de_usuarios` group by `tipo_de_usuarios`.`segmento` order by `total` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tipo_de_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `tipo_de_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tipo_de_usuarios` AS select `u`.`user_name` AS `user_name`,`u`.`subscription_type` AS `subscription_type`,sum(`e`.`repeat_count`) AS `reps`,avg(`e`.`completion_rate`) AS `avg_comp`,(case when ((sum(`e`.`repeat_count`) >= 10) and (avg(`e`.`completion_rate`) >= 95)) then 'Fan Hardcore' when ((sum(`e`.`repeat_count`) >= 4) and (avg(`e`.`completion_rate`) >= 80)) then 'Casual' else 'Explorador/Pasivo' end) AS `segmento` from (`users` `u` join `play_events` `e` on((`u`.`user_id` = `e`.`user_id`))) group by `u`.`user_id`,`u`.`user_name`,`u`.`subscription_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_canciones`
--

/*!50001 DROP VIEW IF EXISTS `top_canciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_canciones` AS select `s`.`song_name` AS `song_name`,`a`.`artist_name` AS `artist_name`,sum(`e`.`repeat_count`) AS `total_repeticiones`,count(distinct `e`.`user_id`) AS `usuarios_que_la_repiten` from ((`songs` `s` join `artists` `a` on((`s`.`artist_id` = `a`.`artist_id`))) join `play_events` `e` on((`s`.`song_id` = `e`.`song_id`))) group by `s`.`song_id`,`s`.`song_name`,`a`.`artist_name` having (sum(`e`.`repeat_count`) > 0) order by `total_repeticiones` desc limit 10 */;
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

-- Dump completed on 2026-04-16 10:28:07
