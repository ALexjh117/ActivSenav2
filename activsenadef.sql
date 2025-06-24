-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: activsena
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
  `NombreActi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `HoraInicio` time NOT NULL,
  `HoraFin` time NOT NULL,
  `TipoLudica` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descripcion` text COLLATE utf8mb4_unicode_ci,
  `Imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ubicacion` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IdEvento` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdActividad`),
  KEY `fk_actividad_evento` (`IdEvento`),
  CONSTRAINT `fk_actividad_evento` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Actividad React Básico','2025-07-01','2025-07-01','08:00:00','10:00:00','Recreativa','Introducción a React.',NULL,'Sala 1',1,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(2,'Actividad Node Middleware','2025-07-05','2025-07-05','09:00:00','11:00:00','Recreativa','Middleware en Node.js.',NULL,'Sala 2',2,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(3,'Actividad IA Algoritmos','2025-07-10','2025-07-10','10:00:00','12:00:00','Teórica','Algoritmos de IA.',NULL,'Auditorio',3,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(4,'Actividad Cierre Premiacion','2025-07-15','2025-07-15','15:00:00','17:00:00','Lúdica','Premiación de asistentes.',NULL,'Salón Principal',4,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(5,'Actividad Evaluacion Final','2025-07-20','2025-07-20','09:00:00','11:00:00','Teórica','Evaluación del semestre.',NULL,'Sala de Juntas',5,'2025-06-23 22:11:13','2025-06-23 22:11:13');
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
  `NombreElemento` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaSolicitud` date NOT NULL,
  `FechaDevolucion` date NOT NULL,
  `RegistradoPor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Observaciones` text COLLATE utf8mb4_unicode_ci,
  `IdUsuario` int DEFAULT NULL,
  `Imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdAlquiler`),
  KEY `fk_alquiler_usuario` (`IdUsuario`),
  CONSTRAINT `fk_alquiler_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquilerelementos`
--

LOCK TABLES `alquilerelementos` WRITE;
/*!40000 ALTER TABLE `alquilerelementos` DISABLE KEYS */;
INSERT INTO `alquilerelementos` VALUES (1,'Laptop Dell','2025-06-25','2025-07-01','Juan Perez','Sin daños',1,NULL,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(2,'Proyector Epson','2025-06-26','2025-07-02','Maria Gomez','Con cable HDMI',2,NULL,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(3,'Micrófono','2025-06-27','2025-07-03','Carlos Lopez','Funciona bien',3,NULL,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(4,'Cámara Web','2025-06-28','2025-07-04','Ana Martinez','Se debe cuidar',4,NULL,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(5,'Tablet Samsung','2025-06-29','2025-07-05','Luis Rodriguez','Sin accesorios',5,NULL,'2025-06-23 22:11:13','2025-06-23 22:11:13');
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
  `AsiFecha` date NOT NULL,
  `AsiHorasAsistidas` int DEFAULT NULL,
  `QREntrada` datetime DEFAULT NULL,
  `QRSalida` datetime DEFAULT NULL,
  `tipo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AsiEntrada` tinyint(1) DEFAULT NULL,
  `AsiHoraEntrada` datetime DEFAULT NULL,
  `AsiEstado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'Incompleta',
  `IdUsuario` int NOT NULL,
  `IdActividad` int NOT NULL,
  `IdRegistradorEntrada` int DEFAULT NULL,
  `IdRegistradorSalida` int DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AsiId`),
  KEY `fk_asistencia_usuario` (`IdUsuario`),
  KEY `fk_asistencia_actividad` (`IdActividad`),
  KEY `fk_asistencia_registrador_entrada` (`IdRegistradorEntrada`),
  KEY `fk_asistencia_registrador_salida` (`IdRegistradorSalida`),
  CONSTRAINT `fk_asistencia_actividad` FOREIGN KEY (`IdActividad`) REFERENCES `actividad` (`IdActividad`),
  CONSTRAINT `fk_asistencia_registrador_entrada` FOREIGN KEY (`IdRegistradorEntrada`) REFERENCES `usuario` (`IdUsuario`),
  CONSTRAINT `fk_asistencia_registrador_salida` FOREIGN KEY (`IdRegistradorSalida`) REFERENCES `usuario` (`IdUsuario`),
  CONSTRAINT `fk_asistencia_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (1,'2025-07-01',2,'2025-07-01 08:00:00','2025-07-01 10:00:00','Presencial',1,'2025-07-01 08:00:00','Completa',1,1,3,3,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(2,'2025-07-05',2,'2025-07-05 09:00:00','2025-07-05 11:00:00','Presencial',1,'2025-07-05 09:00:00','Completa',2,2,3,3,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(3,'2025-07-10',2,'2025-07-10 10:00:00','2025-07-10 12:00:00','Presencial',1,'2025-07-10 10:00:00','Completa',4,3,3,3,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(4,'2025-07-15',2,'2025-07-15 15:00:00','2025-07-15 17:00:00','Presencial',1,'2025-07-15 15:00:00','Completa',5,4,3,3,'2025-06-23 22:11:13','2025-06-23 22:11:13'),(5,'2025-07-20',2,'2025-07-20 09:00:00','2025-07-20 11:00:00','Presencial',1,'2025-07-20 09:00:00','Completa',1,5,3,3,'2025-06-23 22:11:13','2025-06-23 22:11:13');
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentariosia`
--

DROP TABLE IF EXISTS `comentariosia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentariosia` (
  `IdComentario` int NOT NULL AUTO_INCREMENT,
  `Comentario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecomendacionIA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ComentarioNormalizado` text COLLATE utf8mb4_unicode_ci,
  `IdUsuario` int DEFAULT NULL,
  `IdEvento` int DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdComentario`),
  KEY `fk_comentarioia_usuario` (`IdUsuario`),
  KEY `fk_comentarioia_evento` (`IdEvento`),
  CONSTRAINT `fk_comentarioia_evento` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`),
  CONSTRAINT `fk_comentarioia_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentariosia`
--

LOCK TABLES `comentariosia` WRITE;
/*!40000 ALTER TABLE `comentariosia` DISABLE KEYS */;
INSERT INTO `comentariosia` VALUES (1,'Muy buen evento, aprendí mucho.','Más ejemplos prácticos.','muy buen evento aprendi mucho',1,1,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(2,'La charla fue un poco larga.','Reducir duración.','charla fue un poco larga',2,2,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(3,'Excelente contenido.','Incluir talleres.','excelente contenido',3,3,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(4,'Falta material didáctico.','Proveer material.','falta material didactico',4,4,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(5,'La organización fue impecable.','Mantener organización.','organizacion fue impecable',5,5,'2025-06-23 22:11:14','2025-06-23 22:11:14');
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
  `Confirmado` tinyint(1) DEFAULT '0',
  `IdUsuario` int NOT NULL,
  `IdEvento` int NOT NULL,
  `Confirmacion` enum('Asistiré','No asistiré','Tal vez') COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaConfirmacion` date DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdConfirmacion`),
  KEY `fk_confirmacion_usuario` (`IdUsuario`),
  KEY `fk_confirmacion_evento` (`IdEvento`),
  CONSTRAINT `fk_confirmacion_evento` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`),
  CONSTRAINT `fk_confirmacion_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmacionasistencia`
--

LOCK TABLES `confirmacionasistencia` WRITE;
/*!40000 ALTER TABLE `confirmacionasistencia` DISABLE KEYS */;
INSERT INTO `confirmacionasistencia` VALUES (1,1,1,1,'Asistiré','2025-06-25','2025-06-23 22:11:14','2025-06-23 22:11:14'),(2,0,2,2,'No asistiré','2025-06-26','2025-06-23 22:11:14','2025-06-23 22:11:14'),(3,1,3,3,'Tal vez','2025-06-27','2025-06-23 22:11:14','2025-06-23 22:11:14'),(4,1,4,4,'Asistiré','2025-06-28','2025-06-23 22:11:14','2025-06-23 22:11:14'),(5,0,5,5,'No asistiré','2025-06-29','2025-06-23 22:11:14','2025-06-23 22:11:14');
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
  `ConstanciaHorasCert` int NOT NULL,
  `ConstanciaEstado` enum('Aprobado','Pendiente') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ConstanciaFecha` date NOT NULL,
  `IdUsuario` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ConstanciaId`),
  KEY `fk_constancia_usuario` (`IdUsuario`),
  CONSTRAINT `fk_constancia_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constancia`
--

LOCK TABLES `constancia` WRITE;
/*!40000 ALTER TABLE `constancia` DISABLE KEYS */;
INSERT INTO `constancia` VALUES (1,40,'Aprobado','2025-06-30',1,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(2,30,'Pendiente','2025-06-25',2,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(3,50,'Aprobado','2025-06-28',3,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(4,20,'Pendiente','2025-06-20',4,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(5,35,'Aprobado','2025-06-27',5,'2025-06-23 22:11:14','2025-06-23 22:11:14');
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
  `Pregunta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Respuesta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Descripcion` text COLLATE utf8mb4_unicode_ci,
  `IdUsuario` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`IdConsultaIA`),
  KEY `IdUsuario` (`IdUsuario`),
  CONSTRAINT `consultaia_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultaia`
--

LOCK TABLES `consultaia` WRITE;
/*!40000 ALTER TABLE `consultaia` DISABLE KEYS */;
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
  `NombreEvento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `HoraInicio` time NOT NULL,
  `HoraFin` time NOT NULL,
  `UbicacionEvento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IdPlanificarE` int DEFAULT NULL,
  `DescripcionEvento` text COLLATE utf8mb4_unicode_ci,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdEvento`),
  KEY `fk_evento_planificacion` (`IdPlanificarE`),
  CONSTRAINT `fk_evento_planificacion` FOREIGN KEY (`IdPlanificarE`) REFERENCES `planificacionevento` (`IdPlanificarE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'Evento React','2025-07-01','2025-07-01','08:00:00','12:00:00','Sala 1',1,'Curso introductorio a React.','2025-06-23 22:11:14','2025-06-23 22:11:14'),(2,'Evento Node','2025-07-05','2025-07-05','09:00:00','13:00:00','Sala 2',2,'Taller avanzado de Node.js.','2025-06-23 22:11:14','2025-06-23 22:11:14'),(3,'Evento IA','2025-07-10','2025-07-10','10:00:00','15:00:00','Auditorio',3,'Conferencia sobre IA y Machine Learning.','2025-06-23 22:11:14','2025-06-23 22:11:14'),(4,'Evento Cierre','2025-07-15','2025-07-15','14:00:00','18:00:00','Salón Principal',4,'Evento de cierre del semestre.','2025-06-23 22:11:14','2025-06-23 22:11:14'),(5,'Evento Evaluacion','2025-07-20','2025-07-20','08:30:00','11:30:00','Sala de Juntas',5,'Reunión de evaluación final.','2025-06-23 22:11:14','2025-06-23 22:11:14');
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
  `ComentarioFeedback` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaEnvio` date DEFAULT NULL,
  `IdEvento` int DEFAULT NULL,
  `IdUsuario` int DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdFeedback`),
  KEY `fk_feedback_evento` (`IdEvento`),
  KEY `fk_feedback_usuario` (`IdUsuario`),
  CONSTRAINT `fk_feedback_evento` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`),
  CONSTRAINT `fk_feedback_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Muy buena organización.','2025-07-02',1,1,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(2,'Se puede mejorar el audio.','2025-07-03',2,2,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(3,'Excelente ponente.','2025-07-04',3,3,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(4,'Faltó tiempo para preguntas.','2025-07-05',4,4,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(5,'Quiero más eventos así.','2025-07-06',5,5,'2025-06-23 22:11:14','2025-06-23 22:11:14');
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
  `Aprobar` enum('Aprobado','Pendiente') COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdGestionE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestionevento`
--

LOCK TABLES `gestionevento` WRITE;
/*!40000 ALTER TABLE `gestionevento` DISABLE KEYS */;
INSERT INTO `gestionevento` VALUES (1,'Pendiente','2025-06-23 22:11:14','2025-06-23 22:11:14'),(2,'Aprobado','2025-06-23 22:11:14','2025-06-23 22:11:14'),(3,'Pendiente','2025-06-23 22:11:14','2025-06-23 22:11:14'),(4,'Aprobado','2025-06-23 22:11:14','2025-06-23 22:11:14'),(5,'Pendiente','2025-06-23 22:11:14','2025-06-23 22:11:14'),(6,'Pendiente','2025-06-23 22:11:14','2025-06-23 22:11:14'),(7,'Aprobado','2025-06-23 22:11:14','2025-06-23 22:11:14'),(8,'Pendiente','2025-06-23 22:11:14','2025-06-23 22:11:14'),(9,'Aprobado','2025-06-23 22:11:14','2025-06-23 22:11:14'),(10,'Pendiente','2025-06-23 22:11:14','2025-06-23 22:11:14');
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
  `EstadoNuevo` enum('Pendiente','En Proceso','Atendido','Finalizado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Comentario` text COLLATE utf8mb4_unicode_ci,
  `IdUsuario` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdHistorial`),
  KEY `fk_historialsolicitud_solicitud` (`IdSolicitud`),
  KEY `fk_historialsolicitud_usuario` (`IdUsuario`),
  CONSTRAINT `fk_historialsolicitud_solicitud` FOREIGN KEY (`IdSolicitud`) REFERENCES `solicitudapoyo` (`IdSolicitud`),
  CONSTRAINT `fk_historialsolicitud_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialsolicitud`
--

LOCK TABLES `historialsolicitud` WRITE;
/*!40000 ALTER TABLE `historialsolicitud` DISABLE KEYS */;
INSERT INTO `historialsolicitud` VALUES (1,1,'Pendiente','Solicitud recibida',2,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(2,2,'En Proceso','Apoyo asignado',4,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(3,3,'Atendido','Ayuda entregada',5,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(4,4,'Finalizado','Caso cerrado',1,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(5,5,'Pendiente','Esperando revisión',3,'2025-06-23 22:11:14','2025-06-23 22:11:14');
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
  `Mensaje` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TiposNotificacion` enum('Evento','Actividad','Anuncio') COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaDeEnvio` date NOT NULL,
  `IdEvento` int NOT NULL,
  `IdUsuario` int NOT NULL,
  `Confirmado` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdNotificacion`),
  KEY `fk_notificaciones_evento` (`IdEvento`),
  KEY `fk_notificaciones_usuario` (`IdUsuario`),
  CONSTRAINT `fk_notificaciones_evento` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`),
  CONSTRAINT `fk_notificaciones_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (1,'Evento React confirmado.','Evento','2025-06-25',1,1,1,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(2,'Nueva actividad en Node.','Actividad','2025-06-26',2,2,0,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(3,'Anuncio importante.','Anuncio','2025-06-27',3,3,1,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(4,'Recordatorio de cierre.','Evento','2025-06-28',4,4,0,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(5,'Actualización de calendario.','Anuncio','2025-06-29',5,5,1,'2025-06-23 22:11:14','2025-06-23 22:11:14');
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
  `NombreEvento` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaEvento` date NOT NULL,
  `LugarDeEvento` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Recursos` text COLLATE utf8mb4_unicode_ci,
  `IdGestionE` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdPlanificarE`),
  KEY `fk_planificacion_gestion` (`IdGestionE`),
  CONSTRAINT `fk_planificacion_gestion` FOREIGN KEY (`IdGestionE`) REFERENCES `gestionevento` (`IdGestionE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planificacionevento`
--

LOCK TABLES `planificacionevento` WRITE;
/*!40000 ALTER TABLE `planificacionevento` DISABLE KEYS */;
INSERT INTO `planificacionevento` VALUES (1,'Planificación Curso React','2025-07-01','Sala 1','Proyector, Laptop',1,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(2,'Planificación Taller Node','2025-07-05','Sala 2','Pizarra, Material Didáctico',2,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(3,'Planificación Conferencia IA','2025-07-10','Auditorio','Micrófonos, Laptop',3,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(4,'Planificación Evento de Cierre','2025-07-15','Salón Principal','Decoración, Equipo Sonido',4,'2025-06-23 22:11:14','2025-06-23 22:11:14'),(5,'Planificación Reunión de Evaluación','2025-07-20','Sala de Juntas','Computadoras',5,'2025-06-23 22:11:14','2025-06-23 22:11:14');
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
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdUsuario`,`IdEvento`),
  KEY `fk_relusuarioevento_evento` (`IdEvento`),
  CONSTRAINT `fk_relusuarioevento_evento` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IdEvento`),
  CONSTRAINT `fk_relusuarioevento_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relusuarioevento`
--

LOCK TABLES `relusuarioevento` WRITE;
/*!40000 ALTER TABLE `relusuarioevento` DISABLE KEYS */;
INSERT INTO `relusuarioevento` VALUES (1,1,'2025-06-23 22:04:23','2025-06-23 22:04:23'),(2,2,'2025-06-23 22:04:23','2025-06-23 22:04:23'),(3,3,'2025-06-23 22:04:23','2025-06-23 22:04:23'),(4,4,'2025-06-23 22:04:23','2025-06-23 22:04:23'),(5,5,'2025-06-23 22:04:23','2025-06-23 22:04:23');
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
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdUsuario`,`IdFeedback`),
  KEY `fk_relusuariotfeedback_feedback` (`IdFeedback`),
  CONSTRAINT `fk_relusuariotfeedback_feedback` FOREIGN KEY (`IdFeedback`) REFERENCES `feedback` (`IdFeedback`),
  CONSTRAINT `fk_relusuariotfeedback_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relusuariofeedback`
--

LOCK TABLES `relusuariofeedback` WRITE;
/*!40000 ALTER TABLE `relusuariofeedback` DISABLE KEYS */;
INSERT INTO `relusuariofeedback` VALUES (1,1,'2025-07-03','2025-06-23 22:04:58','2025-06-23 22:04:58'),(2,2,'2025-07-04','2025-06-23 22:04:58','2025-06-23 22:04:58'),(3,3,'2025-07-05','2025-06-23 22:04:58','2025-06-23 22:04:58'),(4,4,'2025-07-06','2025-06-23 22:04:58','2025-06-23 22:04:58'),(5,5,'2025-07-07','2025-06-23 22:04:58','2025-06-23 22:04:58');
/*!40000 ALTER TABLE `relusuariofeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolusuario`
--

DROP TABLE IF EXISTS `rolusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolusuario` (
  `IdRol` int NOT NULL AUTO_INCREMENT,
  `NombreRol` enum('Administrador','Aprendiz','Instructor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdRol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolusuario`
--

LOCK TABLES `rolusuario` WRITE;
/*!40000 ALTER TABLE `rolusuario` DISABLE KEYS */;
INSERT INTO `rolusuario` VALUES (1,'Administrador','2025-06-23 22:13:48','2025-06-23 22:13:48'),(2,'Aprendiz','2025-06-23 22:13:48','2025-06-23 22:13:48'),(3,'Instructor','2025-06-23 22:13:48','2025-06-23 22:13:48'),(4,'Aprendiz','2025-06-23 22:13:48','2025-06-23 22:13:48'),(5,'Instructor','2025-06-23 22:13:48','2025-06-23 22:13:48');
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
  `Descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ContactoEmergencia` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TipoAyuda` enum('Psicologica','Emocional','Economica','Otra') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estado` enum('Pendiente','En Proceso','Atendido','Finalizado') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IdUsuario` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdSolicitud`),
  KEY `fk_solicitudapoyo_usuario` (`IdUsuario`),
  CONSTRAINT `fk_solicitudapoyo_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudapoyo`
--

LOCK TABLES `solicitudapoyo` WRITE;
/*!40000 ALTER TABLE `solicitudapoyo` DISABLE KEYS */;
INSERT INTO `solicitudapoyo` VALUES (1,'Necesito apoyo psicológico para manejar estrés.','mama@correo.com','Psicologica','Pendiente',2,'2025-06-23 22:13:45','2025-06-23 22:13:45'),(2,'Apoyo emocional por problemas personales.','hermano@correo.com','Emocional','En Proceso',4,'2025-06-23 22:13:45','2025-06-23 22:13:45'),(3,'Solicitud de ayuda económica para transporte.','amigo@correo.com','Economica','Atendido',5,'2025-06-23 22:13:45','2025-06-23 22:13:45'),(4,'Requiere apoyo para actividades escolares.','padre@correo.com','Otra','Finalizado',1,'2025-06-23 22:13:45','2025-06-23 22:13:45'),(5,'Asistencia psicológica por ansiedad.','familiar@correo.com','Psicologica','Pendiente',3,'2025-06-23 22:13:45','2025-06-23 22:13:45'),(6,'hola',NULL,'Psicologica','Pendiente',7,'2025-06-23 22:29:25','2025-06-23 22:29:25');
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
  `IdentificacionUsuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IdRol` int NOT NULL,
  `Nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Telefono` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contrasena` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FechaRegistro` date NOT NULL,
  `token` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IdUsuario`),
  KEY `fk_usuario_rol` (`IdRol`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'123456789',1,'Juan','Perez','juan.perez@example.com','3001234567','hashedpass1','2025-06-01',NULL,1,'2025-06-23 22:13:39','2025-06-23 22:13:39'),(2,'987654321',2,'Maria','Gomez','maria.gomez@example.com','3007654321','hashedpass2','2025-06-02',NULL,1,'2025-06-23 22:13:39','2025-06-23 22:13:39'),(3,'111222333',3,'Carlos','Lopez','carlos.lopez@example.com','3001112223','hashedpass3','2025-06-03',NULL,0,'2025-06-23 22:13:39','2025-06-23 22:13:39'),(4,'444555666',2,'Ana','Martinez','ana.martinez@example.com','3004445556','hashedpass4','2025-06-04',NULL,1,'2025-06-23 22:13:39','2025-06-23 22:13:39'),(5,'777888999',3,'Luis','Rodriguez','luis.rodriguez@example.com','3007778889','hashedpass5','2025-06-05',NULL,0,'2025-06-23 22:13:39','2025-06-23 22:13:39'),(6,'000000000',1,'Admin','Admin','admin@activsena.com','3000000000','hashedpassword','2025-06-23',NULL,1,'2025-06-23 22:13:39','2025-06-23 22:13:39'),(7,'123456',2,'Alex','chaguendo','alexa.chaguendo@example.com','322667890','$2b$10$P1Hx/NhcpiCV4APoMbNnkOK5H8AbGTmN0S9C7zrb1JmCNWugSMuOq','2025-06-24','',1,'2025-06-23 22:27:03','2025-06-23 22:27:44');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-24 13:56:16
