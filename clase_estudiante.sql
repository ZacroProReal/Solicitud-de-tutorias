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
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int NOT NULL AUTO_INCREMENT,
  `id_semestre` int NOT NULL,
  `id_carrera` int NOT NULL,
  `nombre_est` varchar(20) NOT NULL,
  `cedula_est` varchar(20) NOT NULL,
  `telefono_est` varchar(20) DEFAULT NULL,
  `email_est` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  UNIQUE KEY `id_estudiante` (`id_estudiante`),
  UNIQUE KEY `cedula_est` (`cedula_est`),
  UNIQUE KEY `email_est` (`email_est`),
  KEY `id_semestre` (`id_semestre`),
  KEY `id_carrera` (`id_carrera`),
  CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id_semestre`),
  CONSTRAINT `estudiante_ibfk_2` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,1,1,'Juan Lopez','1001','300777888','juan@uni.edu'),(2,2,1,'Maria Diaz','1002','301777999','maria@uni.edu'),(3,3,1,'Pedro Ruiz','1003','302123456','pedro@uni.edu'),(4,1,2,'Laura Sanchez','2001','303111222','laura@uni.edu'),(5,2,2,'Diego Martinez','2002','304222333','diego@uni.edu'),(6,4,1,'Camila Torres','1004','306111222','camila@uni.edu'),(7,5,1,'Andres Ramirez','1005','306333444','andres@uni.edu'),(8,6,1,'Valeria Gomez','1006','306555666','valeria@uni.edu'),(9,4,2,'Felipe Alvarez','2003','307111222','felipe@uni.edu'),(10,5,2,'Lucia Morales','2004','307333444','lucia@uni.edu'),(11,6,3,'Mateo Pineda','3001','308111222','mateo@uni.edu'),(12,4,4,'Daniela Castro','4001','309111222','daniela@uni.edu'),(13,5,4,'Santiago Vargas','4002','309333444','santiago@uni.edu');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
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
