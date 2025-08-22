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
-- Table structure for table `sesion`
--

DROP TABLE IF EXISTS `sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesion` (
  `id_sesion` int NOT NULL AUTO_INCREMENT,
  `fecha_sesion` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `comentarios_seg` mediumtext NOT NULL,
  `calificacion` int NOT NULL,
  `comentarios_seguimiento` varchar(200) NOT NULL,
  `id_solicitud` int NOT NULL,
  PRIMARY KEY (`id_sesion`),
  UNIQUE KEY `id_sesion` (`id_sesion`),
  KEY `id_solicitud` (`id_solicitud`),
  CONSTRAINT `sesion_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud_tutoria` (`id_solicitud`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion`
--

LOCK TABLES `sesion` WRITE;
/*!40000 ALTER TABLE `sesion` DISABLE KEYS */;
INSERT INTO `sesion` VALUES (1,'2024-04-01','10:00:00','11:00:00','Se resolvieron dudas básicas.',4,'Seguir practicando.',1),(2,'2024-04-02','11:00:00','12:00:00','Explicación de listas enlazadas.',5,'Excelente avance.',2),(3,'2024-04-03','14:00:00','15:30:00','Se practicaron consultas SQL.',5,'Revisar consultas JOIN.',3),(4,'2024-04-04','09:00:00','10:00:00','Conceptos básicos de administración.',3,'Necesita más ejemplos.',4),(5,'2024-04-05','16:00:00','17:00:00','Contabilidad aplicada.',4,'Revisar estados financieros.',5),(6,'2024-04-06','10:00:00','11:00:00','Introducción a gestión de proyectos.',4,'Revisar metodologías ágiles.',6),(7,'2024-04-07','09:00:00','10:30:00','Ejemplo de perceptrón simple.',5,'Practicar con datasets pequeños.',7),(8,'2024-04-08','15:00:00','16:00:00','Análisis de estados contables.',4,'Hacer más ejercicios.',8),(9,'2024-04-09','11:00:00','12:30:00','Plan de mercadeo aplicado.',3,'Revisar casos prácticos.',9),(10,'2024-04-10','13:00:00','14:00:00','Diseño de estructuras.',5,'Buen dominio del tema.',10);
/*!40000 ALTER TABLE `sesion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21 21:22:07
