-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clase
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `solicitud_tutoria`
--

DROP TABLE IF EXISTS `solicitud_tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_tutoria` (
  `id_solicitud` int NOT NULL AUTO_INCREMENT,
  `fecha_hora_tutoria` datetime NOT NULL,
  `tema_tutoria` varchar(100) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `id_docente` int NOT NULL,
  `id_estudiante` int NOT NULL,
  `id_materia` int NOT NULL,
  PRIMARY KEY (`id_solicitud`),
  UNIQUE KEY `id_solicitud` (`id_solicitud`),
  KEY `id_docente` (`id_docente`),
  KEY `id_estudiante` (`id_estudiante`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `solicitud_tutoria_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`),
  CONSTRAINT `solicitud_tutoria_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`),
  CONSTRAINT `solicitud_tutoria_ibfk_3` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_tutoria`
--

LOCK TABLES `solicitud_tutoria` WRITE;
/*!40000 ALTER TABLE `solicitud_tutoria` DISABLE KEYS */;
INSERT INTO `solicitud_tutoria` VALUES (1,'2024-04-01 10:00:00','Apoyo en ejercicios básicos','Pendiente',1,1,1),(2,'2024-04-02 11:00:00','Listas enlazadas','Pendiente',1,2,2),(3,'2024-04-03 14:00:00','Consultas SQL','Aprobada',1,3,3),(4,'2024-04-04 09:00:00','Introducción conceptos','Pendiente',2,4,4),(5,'2024-04-05 16:00:00','Balances iniciales','Aprobada',2,5,5),(6,'2024-04-06 10:00:00','Metodología de proyectos','Pendiente',1,6,6),(7,'2024-04-07 09:00:00','Redes neuronales básicas','Pendiente',6,7,7),(8,'2024-04-08 15:00:00','Auditoría contable','Aprobada',4,11,11),(9,'2024-04-09 11:00:00','Mercadeo digital','Pendiente',2,8,9),(10,'2024-04-10 13:00:00','Concreto armado','Aprobada',5,13,13);
/*!40000 ALTER TABLE `solicitud_tutoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21 21:22:08
