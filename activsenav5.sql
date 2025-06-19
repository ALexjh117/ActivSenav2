-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: activsenav4
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad` (
  `IdActividad` int NOT NULL AUTO_INCREMENT,
  `NombreActi` varchar(150) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `HoraFin` time NOT NULL,
  `HoraInicio` time NOT NULL,
  `TipoLudica` varchar(50) NOT NULL,
  `Descripcion` text,
  `IdEvento` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdActividad`),
  KEY `Fk_IdEventoActivi` (`IdEvento`),
  CONSTRAINT `Fk_IdEventoActivi` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Actividad 1','2023-09-01','2023-09-01','12:00:00','10:00:00','Workshop','Actividad detallada 1',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Actividad 2','2023-09-02','2023-09-02','12:00:00','10:00:00','Seminario','Actividad detallada 2',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Actividad 3','2023-09-03','2023-09-03','12:00:00','10:00:00','Taller','Actividad detallada 3',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Actividad 4','2023-09-04','2023-09-04','12:00:00','10:00:00','Workshop','Actividad detallada 4',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Actividad 5','2023-09-05','2023-09-05','12:00:00','10:00:00','Seminario','Actividad detallada 5',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Actividad 6','2023-09-06','2023-09-06','12:00:00','10:00:00','Taller','Actividad detallada 6',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Actividad 7','2023-09-07','2023-09-07','12:00:00','10:00:00','Workshop','Actividad detallada 7',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Actividad 8','2023-09-08','2023-09-08','12:00:00','10:00:00','Seminario','Actividad detallada 8',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Actividad 9','2023-09-09','2023-09-09','12:00:00','10:00:00','Taller','Actividad detallada 9',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Actividad 10','2023-09-10','2023-09-10','12:00:00','10:00:00','Workshop','Actividad detallada 10',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Actividad 11','2023-09-11','2023-09-11','12:00:00','10:00:00','Seminario','Actividad detallada 11',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Actividad 12','2023-09-12','2023-09-12','12:00:00','10:00:00','Taller','Actividad detallada 12',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Actividad 13','2023-09-13','2023-09-13','12:00:00','10:00:00','Workshop','Actividad detallada 13',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Actividad 14','2023-09-14','2023-09-14','12:00:00','10:00:00','Seminario','Actividad detallada 14',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Actividad 15','2023-09-15','2023-09-15','12:00:00','10:00:00','Taller','Actividad detallada 15',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Actividad 16','2023-09-16','2023-09-16','12:00:00','10:00:00','Workshop','Actividad detallada 16',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Actividad 17','2023-09-17','2023-09-17','12:00:00','10:00:00','Seminario','Actividad detallada 17',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Actividad 18','2023-09-18','2023-09-18','12:00:00','10:00:00','Taller','Actividad detallada 18',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Actividad 19','2023-09-19','2023-09-19','12:00:00','10:00:00','Workshop','Actividad detallada 19',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Actividad 20','2023-09-20','2023-09-20','12:00:00','10:00:00','Seminario','Actividad detallada 20',20,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(21,'Actividad 22','2023-09-01','2023-09-01','12:00:00','10:00:00','Workshop','Actividad detallada 1',1,'2025-05-29 13:11:47','2025-05-29 13:11:47'),(22,'Actividad 2re','2023-09-01','2023-09-01','12:00:00','10:00:00','Workshop','Actividad detallada 1',2,'2025-05-29 21:26:41','2025-05-29 21:26:41');
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alquilerelementos`
--

DROP TABLE IF EXISTS `alquilerelementos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alquilerelementos` (
  `IdAlquiler` int NOT NULL AUTO_INCREMENT,
  `NombreElemento` varchar(50) NOT NULL,
  `FechaSolicitud` datetime NOT NULL,
  `FechaDevolucion` datetime NOT NULL,
  `RegistradoPor` varchar(50) NOT NULL,
  `Observaciones` text,
  `IdUsuario` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdAlquiler`),
  KEY `Fk_IdUsuaAlqEl` (`IdUsuario`),
  CONSTRAINT `Fk_IdUsuaAlqEl` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquilerelementos`
--

LOCK TABLES `alquilerelementos` WRITE;
/*!40000 ALTER TABLE `alquilerelementos` DISABLE KEYS */;
INSERT INTO `alquilerelementos` VALUES (1,'Elemento 1','2023-07-01 09:00:00','2023-07-01 17:00:00','Usuario 1','Observación 1',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Elemento 2','2023-07-02 09:00:00','2023-07-02 17:00:00','Usuario 2','Observación 2',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Elemento 3','2023-07-03 09:00:00','2023-07-03 17:00:00','Usuario 3','Observación 3',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Elemento 4','2023-07-04 09:00:00','2023-07-04 17:00:00','Usuario 4','Observación 4',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Elemento 5','2023-07-05 09:00:00','2023-07-05 17:00:00','Usuario 5','Observación 5',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Elemento 6','2023-07-06 09:00:00','2023-07-06 17:00:00','Usuario 6','Observación 6',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Elemento 7','2023-07-07 09:00:00','2023-07-07 17:00:00','Usuario 7','Observación 7',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Elemento 8','2023-07-08 09:00:00','2023-07-08 17:00:00','Usuario 8','Observación 8',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Elemento 9','2023-07-09 09:00:00','2023-07-09 17:00:00','Usuario 9','Observación 9',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Elemento 10','2023-07-10 09:00:00','2023-07-10 17:00:00','Usuario 10','Observación 10',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Elemento 11','2023-07-11 09:00:00','2023-07-11 17:00:00','Usuario 11','Observación 11',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Elemento 12','2023-07-12 09:00:00','2023-07-12 17:00:00','Usuario 12','Observación 12',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Elemento 13','2023-07-13 09:00:00','2023-07-13 17:00:00','Usuario 13','Observación 13',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Elemento 14','2023-07-14 09:00:00','2023-07-14 17:00:00','Usuario 14','Observación 14',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Elemento 15','2023-07-15 09:00:00','2023-07-15 17:00:00','Usuario 15','Observación 15',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Elemento 16','2023-07-16 09:00:00','2023-07-16 17:00:00','Usuario 16','Observación 16',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Elemento 17','2023-07-17 09:00:00','2023-07-17 17:00:00','Usuario 17','Observación 17',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Elemento 18','2023-07-18 09:00:00','2023-07-18 17:00:00','Usuario 18','Observación 18',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Elemento 19','2023-07-19 09:00:00','2023-07-19 17:00:00','Usuario 19','Observación 19',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Elemento 20','2023-07-20 09:00:00','2023-07-20 17:00:00','Usuario 20','Observación 20',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `alquilerelementos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `AsiId` int NOT NULL AUTO_INCREMENT,
  `AsiFecha` datetime NOT NULL,
  `AsiHorasAsistidas` int DEFAULT NULL,
  `QREntrada` varchar(100) NOT NULL,
  `QRSalida` varchar(255) DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  `IdActividad` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipo` varchar(20) NOT NULL,
  `AsiEntrada` tinyint(1) DEFAULT NULL,
  `AsiHoraEntrada` datetime DEFAULT NULL,
  `IdRegistradorEntrada` int DEFAULT NULL,
  `AsiEstado` varchar(20) DEFAULT NULL,
  `IdRegistradorSalida` int DEFAULT NULL,
  PRIMARY KEY (`AsiId`),
  KEY `Fk_IdUSuarioAsis` (`IdUsuario`),
  KEY `Fk_ActividadesAsis` (`IdActividad`),
  CONSTRAINT `Fk_ActividadesAsis` FOREIGN KEY (`IdActividad`) REFERENCES `actividad` (`IdActividad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Fk_IdUSuarioAsis` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (1,'2023-09-02 10:00:00',2,'QR_ENTRADA1','QR_SALIDA1',1,1,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(2,'2023-09-03 10:00:00',2,'QR_ENTRADA2','QR_SALIDA2',2,2,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(3,'2023-09-04 10:00:00',2,'QR_ENTRADA3','QR_SALIDA3',3,3,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(4,'2023-09-05 10:00:00',2,'QR_ENTRADA4','QR_SALIDA4',4,4,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(5,'2023-09-06 10:00:00',2,'QR_ENTRADA5','QR_SALIDA5',5,5,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(6,'2023-09-07 10:00:00',2,'QR_ENTRADA6','QR_SALIDA6',6,6,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(7,'2023-09-08 10:00:00',2,'QR_ENTRADA7','QR_SALIDA7',7,7,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(8,'2023-09-09 10:00:00',2,'QR_ENTRADA8','QR_SALIDA8',8,8,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(9,'2023-09-10 10:00:00',2,'QR_ENTRADA9','QR_SALIDA9',9,9,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(10,'2023-09-11 10:00:00',2,'QR_ENTRADA10','QR_SALIDA10',10,10,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(11,'2023-09-12 10:00:00',2,'QR_ENTRADA11','QR_SALIDA11',11,11,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(12,'2023-09-13 10:00:00',2,'QR_ENTRADA12','QR_SALIDA12',12,12,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(13,'2023-09-14 10:00:00',2,'QR_ENTRADA13','QR_SALIDA13',13,13,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(14,'2023-09-15 10:00:00',2,'QR_ENTRADA14','QR_SALIDA14',14,14,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(15,'2023-09-16 10:00:00',2,'QR_ENTRADA15','QR_SALIDA15',15,15,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(16,'2023-09-17 10:00:00',2,'QR_ENTRADA16','QR_SALIDA16',16,16,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(17,'2023-09-18 10:00:00',2,'QR_ENTRADA17','QR_SALIDA17',17,17,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(18,'2023-09-19 10:00:00',2,'QR_ENTRADA18','QR_SALIDA18',18,18,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(19,'2023-09-20 10:00:00',2,'QR_ENTRADA19','QR_SALIDA19',19,19,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(20,'2023-09-21 10:00:00',2,'QR_ENTRADA20','QR_SALIDA20',20,20,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(21,'2023-09-21 10:00:00',2,'QR_ENTRADA21','QR_SALIDA21',10,20,'2025-05-29 12:53:52','2025-05-29 12:53:52','',NULL,NULL,NULL,NULL,NULL),(22,'2023-09-02 10:00:00',2,'QR_ENTRADA2321','QR_SALIDA1',1,1,'2025-05-29 21:30:13','2025-05-29 21:30:13','',NULL,NULL,NULL,NULL,NULL),(23,'2025-06-16 17:05:36',NULL,'2025-06-16T22:05:36.371Z','2025-06-16T22:09:16.041Z',1,5,'2025-06-16 17:05:36','2025-06-16 17:09:16','salida',NULL,NULL,NULL,NULL,NULL),(24,'2025-06-16 17:19:11',0,'2025-06-16 17:19:11','2025-06-16 17:19:22',1,5,'2025-06-16 17:19:11','2025-06-16 17:19:22','salida',NULL,NULL,NULL,NULL,NULL),(25,'2025-06-16 18:08:40',NULL,'2025-06-16 18:08:40',NULL,1,5,'2025-06-16 18:08:40','2025-06-16 18:08:40','entrada',NULL,NULL,NULL,NULL,NULL),(26,'2025-06-16 18:13:00',0,'2025-06-16 18:13:00','2025-06-16 18:13:25',1,9,'2025-06-16 18:13:00','2025-06-16 18:13:25','salida',NULL,NULL,NULL,NULL,NULL),(27,'2025-06-16 18:13:00',NULL,'2025-06-16 18:13:00',NULL,1,9,'2025-06-16 18:13:00','2025-06-16 18:13:00','entrada',NULL,NULL,NULL,NULL,NULL),(28,'2025-06-16 18:17:21',0,'2025-06-16 18:17:21','2025-06-16 18:17:31',2,9,'2025-06-16 18:17:21','2025-06-16 18:17:31','salida',NULL,NULL,NULL,NULL,NULL),(29,'2025-06-16 18:17:21',NULL,'2025-06-16 18:17:21',NULL,2,9,'2025-06-16 18:17:21','2025-06-16 18:17:21','entrada',NULL,NULL,NULL,NULL,NULL),(30,'2025-06-16 18:18:10',0,'2025-06-16 18:18:10','2025-06-16 18:18:19',12,9,'2025-06-16 18:18:10','2025-06-16 18:18:19','salida',NULL,NULL,NULL,NULL,NULL),(31,'2025-06-16 18:18:10',NULL,'2025-06-16 18:18:10',NULL,12,9,'2025-06-16 18:18:10','2025-06-16 18:18:10','entrada',NULL,NULL,NULL,NULL,NULL),(32,'2025-06-16 20:33:42',0,'2025-06-16 20:33:42','2025-06-16 20:48:24',44,9,'2025-06-16 20:33:42','2025-06-16 20:48:24','salida',NULL,NULL,NULL,NULL,NULL),(33,'2025-06-16 20:33:46',0,'2025-06-16 20:33:46','2025-06-16 20:48:24',44,9,'2025-06-16 20:33:46','2025-06-16 20:48:24','salida',NULL,NULL,NULL,NULL,NULL),(34,'2025-06-16 20:38:05',NULL,'2025-06-16 20:38:05',NULL,44,9,'2025-06-16 20:38:05','2025-06-16 20:38:05','entrada',NULL,NULL,NULL,NULL,NULL),(35,'2025-06-16 20:41:22',NULL,'2025-06-16 20:41:22',NULL,44,9,'2025-06-16 20:41:22','2025-06-16 20:41:22','entrada',NULL,NULL,NULL,NULL,NULL),(36,'2025-06-16 20:43:27',NULL,'2025-06-16 20:43:27',NULL,44,9,'2025-06-16 20:43:27','2025-06-16 20:43:27','entrada',NULL,NULL,NULL,NULL,NULL),(37,'2025-06-16 20:44:46',NULL,'2025-06-16 20:44:46',NULL,44,9,'2025-06-16 20:44:46','2025-06-16 20:44:46','entrada',NULL,NULL,NULL,NULL,NULL),(38,'2025-06-16 20:46:08',NULL,'2025-06-16 20:46:08',NULL,44,9,'2025-06-16 20:46:08','2025-06-16 20:46:08','entrada',NULL,NULL,NULL,NULL,NULL),(39,'2025-06-16 20:46:08',NULL,'2025-06-16 20:46:08',NULL,44,9,'2025-06-16 20:46:08','2025-06-16 20:46:08','entrada',NULL,NULL,NULL,NULL,NULL),(40,'2025-06-16 20:57:56',0,'2025-06-16 20:57:56','2025-06-16 20:58:07',51,9,'2025-06-16 20:57:56','2025-06-16 20:58:07','salida',NULL,NULL,NULL,NULL,NULL),(43,'2025-06-16 21:42:39',NULL,'2025-06-16 21:45:11',NULL,52,5,'2025-06-16 21:42:39','2025-06-16 21:45:11','entrada',1,'2025-06-16 21:42:39',43,'Incompleta',NULL),(45,'2025-06-16 21:49:14',NULL,'2025-06-16 21:49:14','2025-06-16 22:01:38',52,9,'2025-06-16 21:49:14','2025-06-16 22:01:38','entrada',1,'2025-06-16 21:49:14',43,'Incompleta',NULL),(46,'2025-06-16 22:25:19',0,'2025-06-16 22:25:19','2025-06-16 22:25:30',53,9,'2025-06-16 22:25:19','2025-06-16 22:25:30','entrada',1,'2025-06-16 22:25:19',53,'Incompleta',NULL),(47,'2025-06-17 08:21:39',38,'2025-06-17 08:21:39','2025-06-18 22:16:56',54,9,'2025-06-17 08:21:39','2025-06-18 22:16:56','entrada',1,'2025-06-17 08:21:39',54,'Completa',54),(48,'2025-06-17 08:47:39',0,'2025-06-17 08:47:39','2025-06-17 08:48:27',55,9,'2025-06-17 08:47:39','2025-06-17 08:48:27','entrada',1,'2025-06-17 08:47:39',55,'Incompleta',NULL),(49,'2025-06-25 00:00:00',3,'2025-06-17 15:47:46','2025-06-17 15:47:46',1,1,'2025-06-17 15:47:46','2025-06-17 15:47:46','entrada',1,'2025-06-17 15:47:46',NULL,'Completa',NULL),(50,'2025-06-18 18:03:06',2,'2025-06-18 18:03:06','2025-06-18 20:23:03',56,9,'2025-06-18 18:03:06','2025-06-18 20:23:03','entrada',1,'2025-06-18 18:03:06',56,'Completa',56),(51,'2025-06-18 18:03:06',NULL,'2025-06-18 18:03:06',NULL,56,9,'2025-06-18 18:03:06','2025-06-18 18:03:06','entrada',1,'2025-06-18 18:03:06',56,'Incompleta',NULL),(52,'2025-06-18 19:54:22',NULL,'2025-06-18 19:54:22',NULL,7,12,'2025-06-18 19:54:22','2025-06-18 19:54:22','entrada',1,'2025-06-18 19:54:22',43,'Incompleta',NULL),(53,'2025-06-18 21:01:27',NULL,'2025-06-18 21:01:27',NULL,3,1,'2025-06-18 21:01:27','2025-06-18 21:01:27','entrada',1,'2025-06-18 21:01:27',43,'Incompleta',NULL),(54,'2025-06-18 21:11:12',0,'2025-06-18 21:11:12','2025-06-18 21:35:49',44,1,'2025-06-18 21:11:12','2025-06-18 21:35:49','entrada',1,'2025-06-18 21:11:12',43,'Completa',43),(55,'2025-06-18 21:39:05',0,'2025-06-18 21:39:05','2025-06-18 21:39:12',32,1,'2025-06-18 21:39:05','2025-06-18 21:39:12','entrada',1,'2025-06-18 21:39:05',43,'Completa',43),(56,'2025-06-18 22:23:27',0,'2025-06-18 22:23:27','2025-06-18 22:25:45',49,9,'2025-06-18 22:23:27','2025-06-18 22:25:45','entrada',1,'2025-06-18 22:23:27',49,'Completa',49);
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarioia`
--

DROP TABLE IF EXISTS `comentarioia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarioia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Comentario` text NOT NULL,
  `RecomendacionIA` varchar(255) NOT NULL,
  `IdUsuario` int NOT NULL,
  `IdEvento` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarioia`
--

LOCK TABLES `comentarioia` WRITE;
/*!40000 ALTER TABLE `comentarioia` DISABLE KEYS */;
INSERT INTO `comentarioia` VALUES (1,'Excelente actividad, aprendí mucho','positivo',1,1,'2025-06-17 19:17:46','2025-06-17 19:17:46'),(2,'Muy buena organización del evento','positivo',1,1,'2025-06-17 19:18:44','2025-06-17 19:18:44');
/*!40000 ALTER TABLE `comentarioia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentariosia`
--

DROP TABLE IF EXISTS `comentariosia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentariosia` (
  `IdComentario` int NOT NULL AUTO_INCREMENT,
  `Comentario` text NOT NULL,
  `RecomendacionIA` varchar(255) DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  `IdEvento` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ComentarioNormalizado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdComentario`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `IdEvento` (`IdEvento`),
  CONSTRAINT `comentariosia_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`),
  CONSTRAINT `comentariosia_ibfk_2` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentariosia`
--

LOCK TABLES `comentariosia` WRITE;
/*!40000 ALTER TABLE `comentariosia` DISABLE KEYS */;
INSERT INTO `comentariosia` VALUES (1,'La actividad estuvo excelente, aprendí mucho','mejorar contenido',1,2,'2025-06-17 18:18:49','2025-06-17 18:18:49',NULL),(2,'La actividad estuvo excelente, aprendí mucho','mejorar contenido',1,2,'2025-06-17 18:19:25','2025-06-17 18:19:25',NULL),(3,'me gusto la actividad','positivo',1,2,'2025-06-17 18:28:01','2025-06-17 18:28:01',NULL),(4,'me gusto la actividad','positivo',1,2,'2025-06-17 18:28:04','2025-06-17 18:28:04',NULL),(5,'no me gusto','positivo',1,2,'2025-06-17 18:31:06','2025-06-17 18:31:06',NULL),(6,'La actividad estuvo excelente, aprendí mucho','mejorar contenido',1,2,'2025-06-17 18:39:42','2025-06-17 18:39:42',NULL),(7,'La actividad estuvo excelente, aprendí mucho','mejorar contenido',1,2,'2025-06-17 18:45:28','2025-06-17 18:45:28',NULL),(8,'me gusto','positivo',1,2,'2025-06-17 18:51:24','2025-06-17 18:51:24',NULL),(9,'no me gusto','positivo',1,2,'2025-06-17 18:51:43','2025-06-17 18:51:43',NULL),(10,'me gusto','positivo',1,2,'2025-06-17 18:55:06','2025-06-17 18:55:06',NULL),(11,'no me gusto','Negativo',1,2,'2025-06-17 18:55:17','2025-06-17 18:55:17',NULL),(12,'El evento con ID 12 recibió 2 feedbacks y tuvo 3 asistencias.','positivo',7,12,'2025-06-17 19:03:59','2025-06-17 19:03:59',NULL),(13,'El evento con ID 2 recibió 0 feedbacks y tuvo 0 asistencias.','positivo',1,2,'2025-06-17 19:05:06','2025-06-17 19:05:06',NULL),(14,'El evento con ID 1 recibió 0 feedbacks y tuvo 0 asistencias.','positivo',1,1,'2025-06-17 19:27:17','2025-06-17 19:27:17',NULL),(15,'El evento con ID 1 recibió 0 feedbacks y tuvo 0 asistencias.','Negativo',1,1,'2025-06-17 19:29:36','2025-06-17 19:29:36',NULL),(16,'El evento con ID 1 recibió 0 feedbacks y tuvo 0 asistencias.','Negativo',1,1,'2025-06-17 19:32:33','2025-06-17 19:32:33',NULL),(17,'El evento con ID 3 recibió 2 feedbacks y tuvo 2 asistencias.','Positivo',3,3,'2025-06-17 19:43:52','2025-06-17 19:43:52',NULL),(18,'El evento con ID 3 recibió 2 feedbacks y tuvo 2 asistencias.','Sin respuesta de la IA.',3,3,'2025-06-17 19:59:51','2025-06-17 19:59:51','el evento con id 3 recibio 2 feedbacks y tuvo 2 asistencias'),(19,'la verdad  me gustó nada, fue aburrido','Sin respuesta de la IA.',3,3,'2025-06-17 20:04:58','2025-06-17 20:04:58','la verdad me gusto nada fue aburrido'),(20,'pudo ser mejor, mal organizado','Sin respuesta de la IA.',3,3,'2025-06-17 20:04:59','2025-06-17 20:04:59','pudo ser mejor mal organizado'),(21,'El evento con ID 2 recibió 0 feedbacks y tuvo 0 asistencias.','Sin respuesta de la IA.',1,2,'2025-06-17 20:08:00','2025-06-17 20:08:00','el evento con id 2 recibio 0 feedbacks y tuvo 0 asistencias'),(22,'El evento con ID 1 recibió 0 feedbacks y tuvo 0 asistencias.','Negativo',1,1,'2025-06-17 20:13:09','2025-06-17 20:13:09','el evento con id 1 recibio 0 feedbacks y tuvo 0 asistencias'),(23,'El evento con ID 12 recibió 2 feedbacks y tuvo 3 asistencias.','Positivo',7,12,'2025-06-17 20:13:30','2025-06-17 20:13:30','el evento con id 12 recibio 2 feedbacks y tuvo 3 asistencias'),(24,'El evento con ID 12 recibió 2 feedbacks y tuvo 1 asistencias.','Positivo',7,12,'2025-06-17 22:24:23','2025-06-17 22:24:23','el evento con id 12 recibio 2 feedbacks y tuvo 1 asistencias');
/*!40000 ALTER TABLE `comentariosia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confirmacionasistencia`
--

DROP TABLE IF EXISTS `confirmacionasistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `confirmacionasistencia` (
  `IdConfirmacion` int NOT NULL AUTO_INCREMENT,
  `IdUsuario` int NOT NULL,
  `IdEvento` int NOT NULL,
  `Confirmacion` enum('Asistiré','No asistiré','Tal vez') NOT NULL,
  `FechaConfirmacion` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Confirmado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`IdConfirmacion`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `IdEvento` (`IdEvento`),
  CONSTRAINT `confirmacionasistencia_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON UPDATE CASCADE,
  CONSTRAINT `confirmacionasistencia_ibfk_2` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmacionasistencia`
--

LOCK TABLES `confirmacionasistencia` WRITE;
/*!40000 ALTER TABLE `confirmacionasistencia` DISABLE KEYS */;
INSERT INTO `confirmacionasistencia` VALUES (1,1,3,'Asistiré',NULL,'2025-06-17 15:30:53','2025-06-17 15:30:53',1),(2,2,3,'Asistiré',NULL,'2025-06-17 15:30:53','2025-06-17 15:30:53',1),(3,3,3,'Asistiré',NULL,'2025-06-17 15:30:53','2025-06-17 15:30:53',1),(4,4,3,'Asistiré',NULL,'2025-06-17 15:31:01','2025-06-17 15:31:01',0),(5,1,1,'Asistiré','2025-06-17 16:02:41','2025-06-17 16:02:41','2025-06-17 16:02:41',0),(6,2,1,'Asistiré','2025-06-17 16:02:41','2025-06-17 16:02:41','2025-06-17 16:02:41',0),(7,3,3,'Asistiré','2025-06-17 16:02:41','2025-06-17 16:02:41','2025-06-17 16:02:41',0),(8,4,3,'Asistiré','2025-06-17 16:02:41','2025-06-17 16:02:41','2025-06-17 16:02:41',0),(9,5,3,'Asistiré','2025-06-17 16:02:41','2025-06-17 16:02:41','2025-06-17 16:02:41',0),(10,1,1,'Asistiré','2025-06-17 16:04:07','2025-06-17 16:04:07','2025-06-17 16:04:07',0),(11,2,1,'Asistiré','2025-06-17 16:04:07','2025-06-17 16:04:07','2025-06-17 16:04:07',0),(12,1,1,'Asistiré','2025-06-17 16:05:02','2025-06-17 16:05:02','2025-06-17 16:05:02',0),(13,2,1,'Asistiré','2025-06-17 16:05:02','2025-06-17 16:05:02','2025-06-17 16:05:02',0),(24,1,1,'Asistiré',NULL,'2025-06-17 19:25:38','2025-06-17 19:25:38',0),(25,2,1,'Asistiré',NULL,'2025-06-17 19:25:38','2025-06-17 19:25:38',0),(26,3,1,'Asistiré',NULL,'2025-06-17 19:25:38','2025-06-17 19:25:38',0),(27,4,1,'Asistiré',NULL,'2025-06-17 19:25:38','2025-06-17 19:25:38',0),(28,5,1,'Asistiré',NULL,'2025-06-17 19:25:38','2025-06-17 19:25:38',0),(29,1,1,'Asistiré',NULL,'2025-06-17 19:26:07','2025-06-17 19:26:07',0),(30,2,1,'Asistiré',NULL,'2025-06-17 19:26:07','2025-06-17 19:26:07',0),(31,3,1,'Asistiré',NULL,'2025-06-17 19:26:07','2025-06-17 19:26:07',0),(32,4,1,'Asistiré',NULL,'2025-06-17 19:26:07','2025-06-17 19:26:07',0),(33,5,1,'Asistiré',NULL,'2025-06-17 19:26:07','2025-06-17 19:26:07',0);
/*!40000 ALTER TABLE `confirmacionasistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constancia`
--

DROP TABLE IF EXISTS `constancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constancia` (
  `ConstanciaId` int NOT NULL AUTO_INCREMENT,
  `ConstanciaHorasCert` int DEFAULT NULL,
  `ConstanciaEstado` enum('Aprobado','Pendiente') DEFAULT NULL,
  `ConstanciaFecha` datetime DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ConstanciaId`),
  KEY `Fk_IdentificacionU` (`IdUsuario`),
  CONSTRAINT `Fk_IdentificacionU` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constancia`
--

LOCK TABLES `constancia` WRITE;
/*!40000 ALTER TABLE `constancia` DISABLE KEYS */;
INSERT INTO `constancia` VALUES (1,2,'Aprobado','2023-09-03 15:00:00',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,3,'Pendiente','2023-09-04 15:00:00',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,2,'Aprobado','2023-09-05 15:00:00',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,3,'Pendiente','2023-09-06 15:00:00',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,2,'Aprobado','2023-09-07 15:00:00',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,3,'Pendiente','2023-09-08 15:00:00',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,2,'Aprobado','2023-09-09 15:00:00',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,3,'Pendiente','2023-09-10 15:00:00',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,2,'Aprobado','2023-09-11 15:00:00',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,3,'Pendiente','2023-09-12 15:00:00',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,2,'Aprobado','2023-09-13 15:00:00',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,3,'Pendiente','2023-09-14 15:00:00',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,2,'Aprobado','2023-09-15 15:00:00',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,3,'Pendiente','2023-09-16 15:00:00',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,2,'Aprobado','2023-09-17 15:00:00',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,3,'Pendiente','2023-09-18 15:00:00',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,2,'Aprobado','2023-09-19 15:00:00',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,3,'Pendiente','2023-09-20 15:00:00',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,2,'Aprobado','2023-09-21 15:00:00',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,3,'Pendiente','2023-09-22 15:00:00',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `constancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultaia`
--

DROP TABLE IF EXISTS `consultaia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultaia` (
  `IdConsultaIA` int NOT NULL AUTO_INCREMENT,
  `Pregunta` text NOT NULL,
  `Respuesta` text NOT NULL,
  `Fecha` date NOT NULL,
  `Descripcion` text,
  `IdUsuario` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdConsultaIA`),
  KEY `Fk_IdUsuaConsul` (`IdUsuario`),
  CONSTRAINT `Fk_IdUsuaConsul` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultaia`
--

LOCK TABLES `consultaia` WRITE;
/*!40000 ALTER TABLE `consultaia` DISABLE KEYS */;
INSERT INTO `consultaia` VALUES (1,'Pregunta IA 1','Respuesta IA 1','2023-09-04','Descripcion consulta IA 1',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Pregunta IA 2','Respuesta IA 2','2023-09-05','Descripcion consulta IA 2',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Pregunta IA 3','Respuesta IA 3','2023-09-06','Descripcion consulta IA 3',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Pregunta IA 4','Respuesta IA 4','2023-09-07','Descripcion consulta IA 4',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Pregunta IA 5','Respuesta IA 5','2023-09-08','Descripcion consulta IA 5',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Pregunta IA 6','Respuesta IA 6','2023-09-09','Descripcion consulta IA 6',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Pregunta IA 7','Respuesta IA 7','2023-09-10','Descripcion consulta IA 7',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Pregunta IA 8','Respuesta IA 8','2023-09-11','Descripcion consulta IA 8',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Pregunta IA 9','Respuesta IA 9','2023-09-12','Descripcion consulta IA 9',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Pregunta IA 10','Respuesta IA 10','2023-09-13','Descripcion consulta IA 10',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Pregunta IA 11','Respuesta IA 11','2023-09-14','Descripcion consulta IA 11',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Pregunta IA 12','Respuesta IA 12','2023-09-15','Descripcion consulta IA 12',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Pregunta IA 13','Respuesta IA 13','2023-09-16','Descripcion consulta IA 13',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Pregunta IA 14','Respuesta IA 14','2023-09-17','Descripcion consulta IA 14',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Pregunta IA 15','Respuesta IA 15','2023-09-18','Descripcion consulta IA 15',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Pregunta IA 16','Respuesta IA 16','2023-09-19','Descripcion consulta IA 16',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Pregunta IA 17','Respuesta IA 17','2023-09-20','Descripcion consulta IA 17',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Pregunta IA 18','Respuesta IA 18','2023-09-21','Descripcion consulta IA 18',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Pregunta IA 19','Respuesta IA 19','2023-09-22','Descripcion consulta IA 19',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Pregunta IA 20','Respuesta IA 20','2023-09-23','Descripcion consulta IA 20',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `consultaia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `IdEvento` int NOT NULL AUTO_INCREMENT,
  `NombreEvento` varchar(255) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `HoraFin` time NOT NULL,
  `HoraInicio` time NOT NULL,
  `UbicacionEvento` varchar(255) NOT NULL,
  `IdPlanificarE` int DEFAULT NULL,
  `DescripcionEvento` text,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdEvento`),
  KEY `Fk_PlanificacionEv` (`IdPlanificarE`),
  CONSTRAINT `Fk_PlanificacionEv` FOREIGN KEY (`IdPlanificarE`) REFERENCES `planificacionevento` (`IdPlanificarE`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'Evento 1','2023-09-01','2023-09-01','17:00:00','09:00:00','Ubicacion 1',1,'Descripcion del Evento 1','2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Evento 2','2023-09-02','2023-09-02','17:00:00','09:00:00','Ubicacion 2',2,'Descripcion del Evento 2','2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Evento 3','2023-09-03','2023-09-03','17:00:00','09:00:00','Ubicacion 3',3,'Descripcion del Evento 3','2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Evento 4','2023-09-04','2023-09-04','17:00:00','09:00:00','Ubicacion 4',4,'Descripcion del Evento 4','2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Evento 5','2023-09-05','2023-09-05','17:00:00','09:00:00','Ubicacion 5',5,'Descripcion del Evento 5','2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Evento 6','2023-09-06','2023-09-06','17:00:00','09:00:00','Ubicacion 6',6,'Descripcion del Evento 6','2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Evento 7','2023-09-07','2023-09-07','17:00:00','09:00:00','Ubicacion 7',7,'Descripcion del Evento 7','2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Evento 8','2023-09-08','2023-09-08','17:00:00','09:00:00','Ubicacion 8',8,'Descripcion del Evento 8','2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Evento 9','2023-09-09','2023-09-09','17:00:00','09:00:00','Ubicacion 9',9,'Descripcion del Evento 9','2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Evento 10','2023-09-10','2023-09-10','17:00:00','09:00:00','Ubicacion 10',10,'Descripcion del Evento 10','2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Evento 11','2023-09-11','2023-09-11','17:00:00','09:00:00','Ubicacion 11',11,'Descripcion del Evento 11','2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Evento 12','2023-09-12','2023-09-12','17:00:00','09:00:00','Ubicacion 12',12,'Descripcion del Evento 12','2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Evento 13','2023-09-13','2023-09-13','17:00:00','09:00:00','Ubicacion 13',13,'Descripcion del Evento 13','2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Evento 14','2023-09-14','2023-09-14','17:00:00','09:00:00','Ubicacion 14',14,'Descripcion del Evento 14','2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Evento 15','2023-09-15','2023-09-15','17:00:00','09:00:00','Ubicacion 15',15,'Descripcion del Evento 15','2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Evento 16','2023-09-16','2023-09-16','17:00:00','09:00:00','Ubicacion 16',16,'Descripcion del Evento 16','2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Evento 17','2023-09-17','2023-09-17','17:00:00','09:00:00','Ubicacion 17',17,'Descripcion del Evento 17','2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Evento 18','2023-09-18','2023-09-18','17:00:00','09:00:00','Ubicacion 18',18,'Descripcion del Evento 18','2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Evento 19','2023-09-19','2023-09-19','17:00:00','09:00:00','Ubicacion 19',19,'Descripcion del Evento 19','2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Evento 20','2023-09-20','2023-09-20','17:00:00','09:00:00','Ubicacion 20',20,'Descripcion del Evento 20','2025-05-29 12:53:52','2025-05-29 12:53:52'),(21,'Evento Prueba IA','2025-06-25','2025-06-25','12:00:00','09:00:00','Auditorio Principal',1,'Evento para probar IA','2025-06-17 15:47:03','2025-06-17 15:47:03');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `IdFeedback` int NOT NULL AUTO_INCREMENT,
  `ComentarioFeedback` text NOT NULL,
  `FechaEnvio` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IdEvento` int DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  PRIMARY KEY (`IdFeedback`),
  KEY `FK_Feedback_Evento` (`IdEvento`),
  CONSTRAINT `FK_Feedback_Evento` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Feedback comentario 1','2023-09-06 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(2,'Feedback comentario 2','2023-09-07 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(3,'Feedback comentario 3','2023-09-08 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(4,'Feedback comentario 4','2023-09-09 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(5,'Feedback comentario 5','2023-09-10 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(6,'Feedback comentario 6','2023-09-11 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(7,'Feedback comentario 7','2023-09-12 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(8,'Feedback comentario 8','2023-09-13 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(9,'Feedback comentario 9','2023-09-14 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(10,'Feedback comentario 10','2023-09-15 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(11,'Feedback comentario 11','2023-09-16 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(12,'Feedback comentario 12','2023-09-17 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(13,'Feedback comentario 13','2023-09-18 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(14,'Feedback comentario 14','2023-09-19 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(15,'Feedback comentario 15','2023-09-20 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(16,'Feedback comentario 16','2023-09-21 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(17,'Feedback comentario 17','2023-09-22 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(18,'Feedback comentario 18','2023-09-23 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(19,'Feedback comentario 19','2023-09-24 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(20,'Feedback comentario 20','2023-09-25 10:00:00','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,NULL),(21,'Fue una actividad interesante, aprendí mucho y la organización fue excelente.','2025-06-25 00:00:00','2025-06-17 16:00:11','2025-06-17 16:00:11',1,9);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestionevento`
--

DROP TABLE IF EXISTS `gestionevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestionevento` (
  `IdGestionE` int NOT NULL AUTO_INCREMENT,
  `Aprobar` enum('Aprobado','Pendiente') DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdGestionE`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestionevento`
--

LOCK TABLES `gestionevento` WRITE;
/*!40000 ALTER TABLE `gestionevento` DISABLE KEYS */;
INSERT INTO `gestionevento` VALUES (1,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Aprobado','2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Pendiente','2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `gestionevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historialsolicitud`
--

DROP TABLE IF EXISTS `historialsolicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialsolicitud` (
  `IdHistorial` int NOT NULL AUTO_INCREMENT,
  `IdSolicitud` int NOT NULL,
  `EstadoNuevo` enum('Pendiente','En Proceso','Atendido','Finalizado') NOT NULL,
  `Comentario` text,
  `RolUsuario` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdHistorial`),
  KEY `FK_Solicitud_Historial` (`IdSolicitud`),
  KEY `FK_Usuario_Historial` (`RolUsuario`),
  CONSTRAINT `FK_Solicitud_Historial` FOREIGN KEY (`IdSolicitud`) REFERENCES `solicitudapoyo` (`IdSolicitud`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Usuario_Historial` FOREIGN KEY (`RolUsuario`) REFERENCES `rolusuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialsolicitud`
--

LOCK TABLES `historialsolicitud` WRITE;
/*!40000 ALTER TABLE `historialsolicitud` DISABLE KEYS */;
INSERT INTO `historialsolicitud` VALUES (2,1,'En Proceso','Se asignó psicólogo clínico',1,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(3,2,'Atendido','Seguimiento emocional realizado por tutor',2,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(4,3,'Finalizado','Apoyo económico aprobado por bienestar',3,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(5,4,'Finalizado','Sesión de orientación completada',4,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(6,5,'En Proceso','Se programó cita con psicólogo',5,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(7,6,'Atendido','Se realizaron dos sesiones de apoyo',6,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(8,7,'En Proceso','Ayuda económica en trámite',7,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(9,8,'Finalizado','Tutor acompañó al estudiante',8,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(10,9,'Finalizado','Caso cerrado tras evaluación psicológica',9,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(11,10,'En Proceso','Sesión inicial realizada',10,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(12,11,'Pendiente','Solicitud registrada, falta revisión',11,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(13,12,'Finalizado','Recibió ayuda por parte de bienestar',12,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(14,13,'Atendido','Se brindó orientación personal',13,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(15,14,'En Proceso','Psicólogo contactó al aprendiz',14,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(16,15,'Finalizado','El caso fue tratado y cerrado',15,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(17,16,'Pendiente','En espera de revisión del caso',16,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(18,17,'Atendido','Acompañamiento psicológico realizado',17,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(19,18,'Finalizado','Asesoría completada con éxito',18,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(20,19,'Atendido','El aprendiz mostró mejoría',19,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(21,20,'En Proceso','Se asignó especialista en oratoria',20,'2025-05-29 12:53:53','2025-05-29 12:53:53');
/*!40000 ALTER TABLE `historialsolicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificaciones` (
  `IdNotificacion` int NOT NULL AUTO_INCREMENT,
  `Mensaje` text NOT NULL,
  `TiposNotificacion` enum('Evento','Actividad','Anuncio') DEFAULT NULL,
  `FechaDeEnvio` date NOT NULL,
  `IdEvento` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdNotificacion`),
  KEY `Fk_IdEventoNoti` (`IdEvento`),
  CONSTRAINT `Fk_IdEventoNoti` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (1,'Notificación 1','Evento','2023-09-05',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Notificación 2','Actividad','2023-09-06',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Notificación 3','Anuncio','2023-09-07',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Notificación 4','Evento','2023-09-08',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Notificación 5','Actividad','2023-09-09',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Notificación 6','Anuncio','2023-09-10',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Notificación 7','Evento','2023-09-11',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Notificación 8','Actividad','2023-09-12',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Notificación 9','Anuncio','2023-09-13',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Notificación 10','Evento','2023-09-14',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Notificación 11','Actividad','2023-09-15',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Notificación 12','Anuncio','2023-09-16',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Notificación 13','Evento','2023-09-17',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Notificación 14','Actividad','2023-09-18',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Notificación 15','Anuncio','2023-09-19',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Notificación 16','Evento','2023-09-20',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Notificación 17','Actividad','2023-09-21',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Notificación 18','Anuncio','2023-09-22',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Notificación 19','Evento','2023-09-23',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Notificación 20','Actividad','2023-09-24',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planificacionevento`
--

DROP TABLE IF EXISTS `planificacionevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planificacionevento` (
  `IdPlanificarE` int NOT NULL AUTO_INCREMENT,
  `NombreEvento` varchar(150) NOT NULL,
  `FechaEvento` datetime NOT NULL,
  `LugarDeEvento` varchar(50) NOT NULL,
  `Recursos` text,
  `IdGestionE` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPlanificarE`),
  KEY `Fk_IdGestionE` (`IdGestionE`),
  CONSTRAINT `Fk_IdGestionE` FOREIGN KEY (`IdGestionE`) REFERENCES `gestionevento` (`IdGestionE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planificacionevento`
--

LOCK TABLES `planificacionevento` WRITE;
/*!40000 ALTER TABLE `planificacionevento` DISABLE KEYS */;
INSERT INTO `planificacionevento` VALUES (1,'Plan Evento 1','2023-08-01 09:00:00','Lugar 1','Recursos 1',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Plan Evento 2','2023-08-02 09:00:00','Lugar 2','Recursos 2',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Plan Evento 3','2023-08-03 09:00:00','Lugar 3','Recursos 3',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Plan Evento 4','2023-08-04 09:00:00','Lugar 4','Recursos 4',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Plan Evento 5','2023-08-05 09:00:00','Lugar 5','Recursos 5',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Plan Evento 6','2023-08-06 09:00:00','Lugar 6','Recursos 6',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Plan Evento 7','2023-08-07 09:00:00','Lugar 7','Recursos 7',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Plan Evento 8','2023-08-08 09:00:00','Lugar 8','Recursos 8',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Plan Evento 9','2023-08-09 09:00:00','Lugar 9','Recursos 9',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Plan Evento 10','2023-08-10 09:00:00','Lugar 10','Recursos 10',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Plan Evento 11','2023-08-11 09:00:00','Lugar 11','Recursos 11',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Plan Evento 12','2023-08-12 09:00:00','Lugar 12','Recursos 12',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Plan Evento 13','2023-08-13 09:00:00','Lugar 13','Recursos 13',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Plan Evento 14','2023-08-14 09:00:00','Lugar 14','Recursos 14',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Plan Evento 15','2023-08-15 09:00:00','Lugar 15','Recursos 15',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Plan Evento 16','2023-08-16 09:00:00','Lugar 16','Recursos 16',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Plan Evento 17','2023-08-17 09:00:00','Lugar 17','Recursos 17',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Plan Evento 18','2023-08-18 09:00:00','Lugar 18','Recursos 18',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Plan Evento 19','2023-08-19 09:00:00','Lugar 19','Recursos 19',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Plan Evento 20','2023-08-20 09:00:00','Lugar 20','Recursos 20',20,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(21,'Evento Prueba IA','2025-06-25 00:00:00','Auditorio Principal','Comida, sonido, sillas',1,'2025-06-17 15:47:03','2025-06-17 15:47:03');
/*!40000 ALTER TABLE `planificacionevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relusuarioevento`
--

DROP TABLE IF EXISTS `relusuarioevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relusuarioevento` (
  `IdUsuario` int NOT NULL,
  `IdEvento` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `Fk_IdUsuaEven` (`IdUsuario`),
  KEY `Fk_IdEvenUsua` (`IdEvento`),
  CONSTRAINT `Fk_IdEvenUsua` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Fk_IdUsuaEven` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relusuarioevento`
--

LOCK TABLES `relusuarioevento` WRITE;
/*!40000 ALTER TABLE `relusuarioevento` DISABLE KEYS */;
INSERT INTO `relusuarioevento` VALUES (1,1,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(2,2,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(3,3,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(4,4,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(5,5,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(6,6,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(7,7,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(8,8,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(9,9,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(10,10,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(11,11,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(12,12,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(13,13,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(14,14,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(15,15,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(16,16,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(17,17,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(18,18,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(19,19,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(20,20,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(1,4,'2025-06-02 14:55:25','2025-06-02 14:55:25'),(1,1,'2025-06-17 15:47:36','2025-06-17 15:47:36'),(2,1,'2025-06-17 15:47:36','2025-06-17 15:47:36');
/*!40000 ALTER TABLE `relusuarioevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relusuariofeedback`
--

DROP TABLE IF EXISTS `relusuariofeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relusuariofeedback` (
  `IdUsuario` int NOT NULL,
  `IdFeedback` int NOT NULL,
  `FechaRelUsuaFeed` date DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `Fk_IdUsuaFeed` (`IdUsuario`),
  KEY `Fk_IdFeedbackUsua` (`IdFeedback`),
  CONSTRAINT `Fk_IdFeedbackUsua` FOREIGN KEY (`IdFeedback`) REFERENCES `feedback` (`IdFeedback`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Fk_IdUsuaFeed` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relusuariofeedback`
--

LOCK TABLES `relusuariofeedback` WRITE;
/*!40000 ALTER TABLE `relusuariofeedback` DISABLE KEYS */;
INSERT INTO `relusuariofeedback` VALUES (1,1,'2023-09-07','2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,2,'2023-09-08','2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,3,'2023-09-09','2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,4,'2023-09-10','2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,5,'2023-09-11','2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,6,'2023-09-12','2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,7,'2023-09-13','2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,8,'2023-09-14','2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,9,'2023-09-15','2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,10,'2023-09-16','2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,11,'2023-09-17','2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,12,'2023-09-18','2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,13,'2023-09-19','2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,14,'2023-09-20','2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,15,'2023-09-21','2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,16,'2023-09-22','2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,17,'2023-09-23','2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,18,'2023-09-24','2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,19,'2023-09-25','2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,20,'2023-09-26','2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `relusuariofeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `resumeneventoia`
--

DROP TABLE IF EXISTS `resumeneventoia`;
/*!50001 DROP VIEW IF EXISTS `resumeneventoia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumeneventoia` AS SELECT 
 1 AS `IdEvento`,
 1 AS `NombreEvento`,
 1 AS `TotalConfirmados`,
 1 AS `TotalAsistieron`,
 1 AS `TotalInasistencias`,
 1 AS `Recursos`,
 1 AS `FechaEvento`,
 1 AS `FeedbackPromedioLargo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rolusuario`
--

DROP TABLE IF EXISTS `rolusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolusuario` (
  `IdRol` int NOT NULL AUTO_INCREMENT,
  `NombreRol` enum('Administrador','Aprendiz','Instructor') NOT NULL,
  `IdUsuario` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdRol`),
  KEY `FK_IdUsuarioRol` (`IdUsuario`),
  CONSTRAINT `FK_IdUsuarioRol` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolusuario`
--

LOCK TABLES `rolusuario` WRITE;
/*!40000 ALTER TABLE `rolusuario` DISABLE KEYS */;
INSERT INTO `rolusuario` VALUES (1,'Administrador',1,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(2,'Aprendiz',2,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(3,'Instructor',3,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(4,'Administrador',4,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(5,'Aprendiz',5,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(6,'Instructor',6,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(7,'Administrador',7,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(8,'Aprendiz',8,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(9,'Instructor',9,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(10,'Administrador',10,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(11,'Aprendiz',11,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(12,'Instructor',12,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(13,'Administrador',13,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(14,'Aprendiz',14,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(15,'Instructor',15,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(16,'Administrador',16,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(17,'Aprendiz',17,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(18,'Instructor',18,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(19,'Administrador',19,'2025-05-29 12:53:52','2025-05-29 12:53:52'),(20,'Aprendiz',20,'2025-05-29 12:53:52','2025-05-29 12:53:52');
/*!40000 ALTER TABLE `rolusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudapoyo`
--

DROP TABLE IF EXISTS `solicitudapoyo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudapoyo` (
  `IdSolicitud` int NOT NULL AUTO_INCREMENT,
  `TipoAyuda` enum('Psicologica','Emocional','Economica','Otra') NOT NULL,
  `Descripcion` text NOT NULL,
  `ContactoEmergencia` varchar(100) DEFAULT NULL,
  `Estado` enum('Pendiente','En Proceso','Atendido','Finalizado') DEFAULT 'Pendiente',
  `IdUsuario` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdSolicitud`),
  KEY `FK_Usuario_Solicitud` (`IdUsuario`),
  CONSTRAINT `FK_Usuario_Solicitud` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudapoyo`
--

LOCK TABLES `solicitudapoyo` WRITE;
/*!40000 ALTER TABLE `solicitudapoyo` DISABLE KEYS */;
INSERT INTO `solicitudapoyo` VALUES (1,'Psicologica','He sentido mucha ansiedad antes de los exámenes','3101234561','Pendiente',1,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(2,'Emocional','Problemas familiares están afectando mi rendimiento','3101234562','En Proceso',2,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(3,'Economica','No tengo recursos para transporte diario','3101234563','Atendido',3,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(4,'Otra','Quiero orientación vocacional','3101234564','Finalizado',4,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(5,'Psicologica','Dificultad para dormir por estrés académico','3101234565','Pendiente',5,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(6,'Emocional','Me siento aislado de mis compañeros','3101234566','Pendiente',6,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(7,'Economica','Solicito apoyo con materiales educativos','3101234567','En Proceso',7,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(8,'Otra','Necesito hablar sobre problemas personales','3101234568','Atendido',8,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(9,'Psicologica','Ansiedad en exposiciones orales','3101234569','Finalizado',9,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(10,'Emocional','Problemas de autoestima','3101234570','Pendiente',10,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(11,'Psicologica','Me cuesta concentrarme en clase','3101234571','Pendiente',11,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(12,'Economica','Solicito ayuda para cubrir alimentación','3101234572','Atendido',12,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(13,'Otra','Deseo mejorar mis habilidades sociales','3101234573','En Proceso',13,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(14,'Psicologica','Ataques de pánico ocasionales','3101234574','Pendiente',14,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(15,'Emocional','Quiero hablar con alguien de confianza','3101234575','Finalizado',15,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(16,'Economica','No puedo pagar fotocopias de estudio','3101234576','Pendiente',16,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(17,'Psicologica','Necesito acompañamiento psicológico','3101234577','En Proceso',17,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(18,'Otra','Asesoría para manejo de tiempo','3101234578','Atendido',18,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(19,'Emocional','Me siento frustrado con mi progreso','3101234579','Finalizado',19,'2025-05-29 12:53:53','2025-05-29 12:53:53'),(20,'Psicologica','Miedo escénico en presentaciones','3101234580','Pendiente',20,'2025-05-29 12:53:53','2025-05-29 12:53:53');
/*!40000 ALTER TABLE `solicitudapoyo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `IdUsuario` int NOT NULL AUTO_INCREMENT,
  `IdentificacionUsuario` varchar(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `FechaRegistro` date NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `token` varchar(6) DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IdUsuario`),
  UNIQUE KEY `IdentificacionUsuario` (`IdentificacionUsuario`),
  UNIQUE KEY `Correo` (`Correo`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'ID001','Juan','Perez','juan.perez@example.com','555-0001','pass1','2023-01-01','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(2,'ID002','Maria','Lopez','maria.lopez@example.com','555-0002','pass2','2023-01-02','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(3,'ID003','Carlos','Gomez','carlos.gomez@example.com','555-0003','pass3','2023-01-03','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(4,'ID004','Ana','Martinez','ana.martinez@example.com','555-0004','pass4','2023-01-04','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(5,'ID005','Luis','Rodriguez','luis.rodriguez@example.com','555-0005','pass5','2023-01-05','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(6,'ID006','Sofia','Ramirez','sofia.ramirez@example.com','555-0006','pass6','2023-01-06','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(7,'ID007','Miguel','Torres','miguel.torres@example.com','555-0007','pass7','2023-01-07','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(8,'ID008','Laura','Fernandez','laura.fernandez@example.com','555-0008','pass8','2023-01-08','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(9,'ID009','Diego','Sanchez','diego.sanchez@example.com','555-0009','pass9','2023-01-09','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(10,'ID010','Elena','Diaz','elena.diaz@example.com','555-0010','pass10','2023-01-10','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(11,'ID011','Jorge','Ramirez','jorge.ramirez@example.com','555-0011','pass11','2023-01-11','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(12,'ID012','Paula','Morales','paula.morales@example.com','555-0012','pass12','2023-01-12','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(13,'ID013','Andres','Rojas','andres.rojas@example.com','555-0013','pass13','2023-01-13','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(14,'ID014','Carla','Vargas','carla.vargas@example.com','555-0014','pass14','2023-01-14','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(15,'ID015','Ricardo','Castro','ricardo.castro@example.com','555-0015','pass15','2023-01-15','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(16,'ID016','Marta','Suarez','marta.suarez@example.com','555-0016','pass16','2023-01-16','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(17,'ID017','Esteban','Pardo','esteban.pardo@example.com','555-0017','pass17','2023-01-17','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(18,'ID018','Natalia','Ortiz','natalia.ortiz@example.com','555-0018','pass18','2023-01-18','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(19,'ID019','Hugo','Fuentes','hugo.fuentes@example.com','555-0019','pass19','2023-01-19','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(20,'ID020','Veronica','Mendoza','veronica.mendoza@example.com','555-0020','pass20','2023-01-20','2025-05-29 12:53:52','2025-05-29 12:53:52',NULL,0),(21,'ID002235','Juana','duque','juan.perez@exampl232ds.com','555-0001','$2b$10$2/6xHTCG3jRsB7IsK7iL5eGQZoNt8eE16w5YualmSnXbGP3UF.ftu','2023-01-01','2025-06-04 16:21:36','2025-06-04 16:21:36','540121',0),(25,'1178a39ds44','alexssdd','jhoansd','alex.jhdssoan@correo.com','555-0001','$2b$10$W3O8soIkBVxC8kBjjXCDhOlCXwrGf1bCvh3.IdtMgHZL7T0GBaZbG','2023-01-01','2025-06-04 17:53:13','2025-06-04 17:53:13','897424',0),(26,'1179909343','alexander','jhoanag','alexander@correo.com','555-0001','$2b$10$vB0UV2iRMe.4OnZ.A5QaUup7O8HpLfs2wGuKjd9zYF6M2q7Avq.vq','2023-01-01','2025-06-04 17:56:13','2025-06-04 17:56:13','542224',0),(27,'11799f43','alexandera','jhoanaag','alexandewr@correo.com','555-0001','$2b$10$y7h57a27i1nTkVQ.zhQ4.ud36lf7aZsYpiBFQq6kRbBmXrT8d00xq','2023-01-01','2025-06-04 18:06:54','2025-06-04 18:06:54','317372',0),(28,'1900785','juandiego','lasso','juandiegor@correo.com','555-0001','$2b$10$e3dz4GlrLUu05mI0gPj0se9zf0E2LdJbEeGzLc2OKuvZeAlTRfc5i','2023-01-01','2025-06-04 18:10:28','2025-06-04 18:10:28','890502',0),(29,'19002785','juandsiego','lassso','juandiaegor@correo.com','555-0001','$2b$10$7xg493XoVKzcnosaN0BTQuSSjzfpDx2VIIQKInIJ6A2ikLYui5Jra','2023-01-01','2025-06-04 18:13:11','2025-06-04 18:58:38','',1),(30,'193445','alexdiego','blacho','blacho117@correo.com','555-0001','$2b$10$6UC/ret5sCP1nM7.FeIhAOyf7YIRh4zoUuJVsoBEFQXd/.ilJIITu','2023-01-01','2025-06-04 20:34:03','2025-06-04 20:37:45','',1),(31,'ID11212001','lucho','gonzaoez','lucho@correo2.com','555-0001','$2b$10$vmX4pHB8Sj7DspBw5hH9Ce8.UhHboAXgpesqxx3Y2PPazGRNyT/IK','2023-01-01','2025-06-04 20:57:44','2025-06-04 21:00:33','',1),(32,'1061687450','Fredy Andres','Urbano ','fredyandres@example.com','3042945240','$2b$10$vvR48S.9EWZStct29T/6JOoCOzpWunHqfrVqCmrahZ6CqcoKUDz/G','2023-01-04','2025-06-05 09:48:58','2025-06-05 09:51:02','',1),(33,'ID0012244','MAIKOL','DAZA','maikoldaza.perez@example.com','555-0001112','$2b$10$PxceMm7nizv2e4sy.NiugOQlKXM6fQwZUZFu0.9b/PL.YJr3wpk1e','2023-01-01','2025-06-05 09:57:59','2025-06-05 18:10:29',NULL,0),(34,'ID001232244','MAIKOsdL','DAZAsds','maikoldazsdda.perez@example.com','555-0001112','$2b$10$NjcDdsV5mLmC1iD2uCu.K./b8TGOzx9l7lSsupH.YZ2/NKJCKw0Ui','2023-01-01','2025-06-05 09:58:49','2025-06-05 10:00:05','',1),(35,'90098','prueba','Prueba_de_prueba','prueba.prueba@example.com','555-0001','$2b$10$BluR21qfkbK8jftC615xUendUOyk4/QNrR5SuwNUJFZ1H3kBtIJTK','2023-01-01','2025-06-05 15:55:27','2025-06-05 18:02:56','',1),(36,'184343','victor','valencia','victor.valencia@example.com','555-0001','$2b$10$L1N.sjrCdC8untW8DKuYJ.f.F4oVgoRN.EC/RShej2mdQ748pjJ8.','2023-01-01','2025-06-06 07:01:00','2025-06-06 07:03:27','',1),(37,'123435','lina','ortega','lina,ortega@example.com','555-0001','$2b$10$vxnmtvrm6JoCIWwKdxTlA.ZqzAdQeW0YX0rspgGDpysGbVK7tW7IW','2023-01-01','2025-06-06 07:10:15','2025-06-06 09:55:06','',1),(38,'9034','alex','juan','alex.juan@example.com','555-0001','$2b$10$hWkUvfX4o/EtZExuaeBkKOCkbJi1j.0ljVXbbEcL4ZvohcN0gWxLW','2023-01-01','2025-06-09 17:44:56','2025-06-09 17:47:57','',1),(39,'23355671','Juanita','Perrez','juanita.perez@example.com','555-0001','$2b$10$ML.1t7iv/jnYiOP5S5qSOutdA4w.lYBYXnET/C695z8.SzdcP.H8q','2023-01-01','2025-06-10 08:38:32','2025-06-10 08:40:19','',1),(40,'1058548013','alex','diana','alex.diana@example.com','555-0001','$2b$10$gb1gS/JS/hA0RiM7DyOVAuJfayrtBKQeNXBDaoIU/lxsls7En.jnC','2023-01-01','2025-06-10 18:30:48','2025-06-10 18:48:33','',1),(41,'I1334','santiago','rengifo','santiago.rengifo@example.com','555-0001','$2b$10$cIbiQe8LB5A9qWRfT5WsT.ShCazgno1QOD3CgK4kp9psRd0pmqM7y','2023-01-01','2025-06-10 18:52:17','2025-06-10 18:53:34','',1),(42,'2344554','alex','gonzalez','alex.gonzalez@example.com','555-0001','$2b$10$BR7UUNSZPwHcCbk8KdVzYOEJ59NzSNvy4iVduDCOCTqtnCoYgHne2','2023-01-01','2025-06-10 19:05:49','2025-06-10 19:10:40','',1),(43,'1845454','nelson','alzate','nelson.alzate@example.com','555-0001','$2b$10$8A5iHr8x3097C2NTDjxsBOtvrglLUpPiN.k3FyyOHXQrbCJHuRR16','2023-01-01','2025-06-11 09:57:11','2025-06-11 10:02:19','',1),(44,'1179001','Alex','Chaguendo','Alex.Chaguendo@example.com','555-0001','$2b$10$2HFNyDDRI9UaJP7LlZV/ye.ZTRqdiQ33XzdgcLvUElT1KrPCySZWG','2023-01-01','2025-06-11 17:03:05','2025-06-11 17:03:44','',1),(45,'105812341','Diana','Camayo','diana.camayo@example.com','312567957','$2b$10$APNaHEt.byXonL5aTsUCCODdHnhs2393ZFM0k9S2FFYEKLnPY1uqi','2025-06-12','2025-06-11 21:21:22','2025-06-11 21:29:04','',1),(46,'9999003234','alexandra','chaguendo','alexa.chaguendo@example.com','33234545','$2b$10$A.oAoH4vW74agLf3ETaIuO2RV1mtQgxLfw91QPEvP/osw8PRqRhAG','2025-06-12','2025-06-11 21:26:16','2025-06-11 21:29:39','',1),(47,'9999211','jhon','duran','jhon.duran@example.com','33234990e','$2b$10$apNl05YV7rxpR2nkRF6tOesbLPuqXmv8hb6ofe9FxV9eu0Si6e5qW','2025-06-14','2025-06-11 22:20:23','2025-06-11 22:21:04','',1),(48,'13332443','victor','mosquera','victor.mosquera@example.com','33354354','$2b$10$TO7wGGOryUH4g/oOYHFt9OKNyrEOoU8sQRp.du3hAogdfWOfVtj2u','2025-06-19','2025-06-12 06:57:40','2025-06-12 06:58:06','',1),(49,'12908675','santiago','rengifo','santiago.rengifo12@example.com','32275684','$2b$10$tuqoE0ypGihkXxwoA2/ZDuKtYzKlhS54pbrpSRJKvW..RON7dME5S','2025-06-12','2025-06-12 07:03:45','2025-06-12 07:04:49','',1),(50,'1120097','kenner','guerrero','kener.guerrero@example.com','3212567','$2b$10$4wDuioH2x9s2aojaNVVIZuuMfExf5Uo0I7HhkN3Y/UL3NuPI.WjYO','2025-06-20','2025-06-12 10:04:08','2025-06-12 10:05:16','',1),(51,'776565','Juana','duque','juana.duque@example.com','555-0001','$2b$10$dwHW.4fS6v5LDDsHEXbIEOfPoxLXsw2vDzycXZs/kCCa8pzSzjX.K','2023-01-01','2025-06-16 20:55:17','2025-06-16 20:57:12','',1),(52,'99232','alexander','jhoan','alexander.jhoan@example.com','334454','$2b$10$X1xCPCioEuHFf2PatugpUOAwb7jmbhFi5Q77X3P2U5syVmG39C4j6','2025-06-17','2025-06-16 21:07:03','2025-06-16 21:07:54','',1),(53,'1213344','yury','juliana','yury.juliana@example.com','56789056','$2b$10$Bc23zv9LV6FLEJt82SWt0eVz0KopzzEiErkiozFVyDAEralYLTshK','2025-06-17','2025-06-16 22:24:08','2025-06-16 22:24:29','',1),(54,'125688','sebastian','lopez','sebastian.lopez@example.com','32125644','$2b$10$PArformYRyNz0ig1nhUche3pW2jScW7V8j3pQgClS0sR4hNwyKh5u','2025-06-17','2025-06-17 07:26:58','2025-06-17 07:27:13','',1),(55,'1232332','jorge','coral','jorge.coral@example.com','898809090','$2b$10$EatCRqgoFXVH06m63lZ5WettlMnBLTMJKIeEHsis94XGVKEZRvzaK','2025-06-17','2025-06-17 08:46:20','2025-06-17 08:46:45','',1),(56,'qqqqqq','henry','bastidas','henry.bastidas@example.com','samsung','$2b$10$JZzNdFJVQ.9q/SrG1ZCmSeY0CIlGujDj58xLwd/I1gx220RrkxRIG','2025-06-18','2025-06-18 12:41:52','2025-06-18 12:45:34','',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `resumeneventoia`
--

/*!50001 DROP VIEW IF EXISTS `resumeneventoia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`activsena`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resumeneventoia` AS select `e`.`IdEvento` AS `IdEvento`,`e`.`NombreEvento` AS `NombreEvento`,count(distinct `ca`.`IdUsuario`) AS `TotalConfirmados`,count(distinct `a`.`IdUsuario`) AS `TotalAsistieron`,(count(distinct `ca`.`IdUsuario`) - count(distinct `a`.`IdUsuario`)) AS `TotalInasistencias`,`pe`.`Recursos` AS `Recursos`,`pe`.`FechaEvento` AS `FechaEvento`,round(avg(char_length(`f`.`ComentarioFeedback`)),2) AS `FeedbackPromedioLargo` from (((((`evento` `e` left join `confirmacionasistencia` `ca` on(((`ca`.`IdEvento` = `e`.`IdEvento`) and (`ca`.`Confirmado` = true)))) left join `actividad` `act` on((`act`.`IdEvento` = `e`.`IdEvento`))) left join `asistencia` `a` on(((`a`.`IdActividad` = `act`.`IdActividad`) and (`a`.`AsiEstado` = 'Completa')))) left join `planificacionevento` `pe` on((`pe`.`IdPlanificarE` = `e`.`IdPlanificarE`))) left join `feedback` `f` on((`f`.`IdEvento` = `e`.`IdEvento`))) group by `e`.`IdEvento`,`e`.`NombreEvento`,`pe`.`Recursos`,`pe`.`FechaEvento` */;
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

-- Dump completed on 2025-06-19 17:58:50
