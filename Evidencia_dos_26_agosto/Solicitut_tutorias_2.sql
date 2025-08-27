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
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `id_carrera` int NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(30) NOT NULL,
  `facultad` varchar(30) NOT NULL,
  `codigo_carrera` int NOT NULL,
  PRIMARY KEY (`id_carrera`),
  UNIQUE KEY `id_carrera` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingeniería de Sistemas','Ingeniería',101),(2,'Administración','Ciencias Económicas',102),(3,'Contaduría Pública','Ciencias Económicas',103),(4,'Ingeniería Civil','Ingeniería',104);
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `id_docente` int NOT NULL AUTO_INCREMENT,
  `nombre_doc` varchar(20) NOT NULL,
  `area_doc` varchar(20) NOT NULL,
  `direccion_doc` varchar(15) NOT NULL,
  `telefono_doc` varchar(15) NOT NULL,
  `email_doc` varchar(50) NOT NULL,
  PRIMARY KEY (`id_docente`),
  UNIQUE KEY `id_docente` (`id_docente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Carlos Perez','Sistemas','Calle 10','300111222','cperez@uni.edu'),(2,'Ana Gomez','Administración','Cra 5','300333444','agomez@uni.edu'),(3,'Luis Torres','Matemáticas','Av 7','300555666','ltorres@uni.edu'),(4,'Marta Rios','Contabilidad','Calle 20','305111222','mrios@uni.edu'),(5,'Jorge Herrera','Civil','Cra 18','305333444','jherrera@uni.edu'),(6,'Sofia Alvarez','IA','Av 45','305555666','salvarez@uni.edu');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `id_semestre` int NOT NULL,
  `id_carrera` int NOT NULL,
  `nombre_materia` varchar(255) NOT NULL,
  `codigo_materia` int NOT NULL,
  `creditos` int NOT NULL,
  PRIMARY KEY (`id_materia`),
  UNIQUE KEY `id_materia` (`id_materia`),
  KEY `id_carrera` (`id_carrera`),
  KEY `id_semestre` (`id_semestre`),
  CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`),
  CONSTRAINT `materia_ibfk_2` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id_semestre`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,1,1,'Programación I',1101,4),(2,2,1,'Estructuras de Datos',1102,4),(3,3,1,'Bases de Datos',1103,3),(4,1,2,'Introducción a la Administración',2101,3),(5,2,2,'Contabilidad I',2102,4),(6,4,1,'Ingeniería de Software',1104,4),(7,5,1,'Inteligencia Artificial',1105,4),(8,6,1,'Seguridad Informática',1106,3),(9,4,2,'Mercadeo',2103,3),(10,5,2,'Finanzas Corporativas',2104,4),(11,6,3,'Contabilidad de Costos',3101,3),(12,4,4,'Mecánica de Fluidos',4101,4),(13,5,4,'Estructuras de Concreto',4102,4);
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia_docente`
--

DROP TABLE IF EXISTS `materia_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia_docente` (
  `id_materia` int NOT NULL,
  `id_docente` int NOT NULL,
  `fecha_asignacion` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_materia`,`id_docente`),
  UNIQUE KEY `fecha_asignacion` (`fecha_asignacion`),
  KEY `id_docente` (`id_docente`),
  CONSTRAINT `materia_docente_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`),
  CONSTRAINT `materia_docente_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_docente`
--

LOCK TABLES `materia_docente` WRITE;
/*!40000 ALTER TABLE `materia_docente` DISABLE KEYS */;
INSERT INTO `materia_docente` VALUES (1,1,'2024-01-10 08:00:00',1),(2,1,'2024-02-12 09:00:00',1),(3,1,'2024-03-05 10:00:00',1),(4,2,'2024-01-15 08:00:00',1),(5,2,'2024-02-20 10:00:00',1),(6,1,'2024-04-01 08:00:00',1),(7,3,'2024-05-01 08:30:00',1),(8,3,'2024-06-01 09:00:00',1),(9,2,'2024-04-10 10:00:00',1),(10,4,'2024-05-15 11:00:00',1),(11,4,'2024-06-20 12:00:00',1),(12,5,'2024-04-12 14:00:00',1),(13,6,'2024-05-18 15:00:00',1);
/*!40000 ALTER TABLE `materia_docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestre`
--

DROP TABLE IF EXISTS `semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semestre` (
  `id_semestre` int NOT NULL AUTO_INCREMENT,
  `nro_semestre` int NOT NULL,
  `año` int NOT NULL,
  PRIMARY KEY (`id_semestre`),
  UNIQUE KEY `id_semestre` (`id_semestre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestre`
--

LOCK TABLES `semestre` WRITE;
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
INSERT INTO `semestre` VALUES (1,1,2024),(2,2,2024),(3,3,2024),(4,4,2024),(5,5,2024),(6,6,2025);
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `sesion` VALUES (1,'2024-04-01','10:00:00','11:00:00',4,'Seguir practicando.',1),(2,'2024-04-02','11:00:00','12:00:00',5,'Excelente avance.',2),(3,'2024-04-03','14:00:00','15:30:00',5,'Revisar consultas JOIN.',3),(4,'2024-04-04','09:00:00','10:00:00',3,'Necesita más ejemplos.',4),(5,'2024-04-05','16:00:00','17:00:00',4,'Revisar estados financieros.',5),(6,'2024-04-06','10:00:00','11:00:00',4,'Revisar metodologías ágiles.',6),(7,'2024-04-07','09:00:00','10:30:00',5,'Practicar con datasets pequeños.',7),(8,'2024-04-08','15:00:00','16:00:00',4,'Hacer más ejercicios.',8),(9,'2024-04-09','11:00:00','12:30:00',3,'Revisar casos prácticos.',9),(10,'2024-04-10','13:00:00','14:00:00',5,'Buen dominio del tema.',10);
/*!40000 ALTER TABLE `sesion` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2025-08-26 21:28:12
