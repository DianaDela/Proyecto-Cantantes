-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: prueba
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `Cantantes`
--

DROP TABLE IF EXISTS `Cantantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cantantes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Genero` varchar(255) NOT NULL,
  `Debut` varchar(255) NOT NULL,
  `creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Actualizado` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Activo` char(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cantantes`
--

LOCK TABLES `Cantantes` WRITE;
/*!40000 ALTER TABLE `Cantantes` DISABLE KEYS */;
INSERT INTO `Cantantes` VALUES (1,'Jeon Jung-kook','1997-09-01','K-POP','2013','2022-11-18 00:09:05','2022-11-17 18:09:05','S'),(2,'Min Yoon-gi','1993-03-09','RAP','2013','2022-11-18 00:11:21','2022-11-17 18:11:21','S'),(3,'Kim Tae-Hyung','1995-12-30','POP','2014','2022-11-18 00:13:13','2022-11-17 18:13:13','S');
/*!40000 ALTER TABLE `Cantantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Edad` int NOT NULL,
  `Genero` char(1) DEFAULT NULL,
  `Usuario` varchar(255) NOT NULL,
  `Contraseña` varchar(255) NOT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Actualizado` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Activo` char(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'Diana ','De la o Veracruz',20,'F','de la o','pruebac','2002-01-11','2022-10-11 21:53:30','2022-10-11 16:53:30','s'),(2,'Adilene','ESpinoza Herrera',21,'F','ADI','pruebac','2000-12-05','2022-10-11 21:56:16','2022-10-11 16:56:16','s'),(3,'Itzel','Veracruz',20,'F','delaoitzel17@gmail.com','12345','2002-11-01','2022-10-24 21:39:27','2022-10-24 16:39:27','S'),(4,'Diana','Pulido',20,'F','delaoitzel17@gmail.com','54321','2002-11-01','2022-10-24 21:46:03','2022-10-24 16:46:03','S'),(5,'carla','guerrero',20,'F','isc19350640@gmail.com','$2a$10$bfy/4By880chfSg7PGUf1uy35ZbYl3AxlDDF3fr2bDy/wnY2a/8sy','2002-11-01','2022-10-26 23:11:38','2022-10-26 18:11:38','S'),(6,'Jesus','Lerdo',20,'F','Lerdo11@gmail.com','$2a$10$4GRq.8IMdf3lM3fE2VX/W.EcmMa1Pb7vzdGqNDfS93uoNFo7Dp.hC','2002-11-01','2022-10-26 23:13:06','2022-10-26 18:13:06','S'),(7,'Maria','Garcia',21,'F','maria@gmail.com','2025','2001-03-12','2022-10-30 21:10:49','2022-10-30 15:13:44','S'),(8,'Jesus','Moran',20,'M','chucho@gmail.com','$2a$10$0VYrpk3q0hFG0xHmRaGYFuyTapJ.4yhmXyo8wlC2lwZZ.sWcy.B0.}','2002-04-22','2022-10-30 21:25:27','2022-10-30 15:26:43','S'),(9,'Jesus','Moran',20,'M','chucho2@gmail.com','$2a$10$StOvkJCfeqdhBRfFwNB3euYNuyrlWCvvnilvHgZycCjsN1P9Mstqa}','2002-04-22','2022-10-30 21:35:18','2022-10-30 15:36:45','S');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 12:56:14
