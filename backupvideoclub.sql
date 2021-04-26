-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: videoclub
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `alquileres`
--

DROP TABLE IF EXISTS `alquileres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alquileres` (
  `idAlquiler` int NOT NULL AUTO_INCREMENT,
  `idClientesFK6` int DEFAULT NULL,
  `idPeliculasFK7` int DEFAULT NULL,
  PRIMARY KEY (`idAlquiler`),
  KEY `idClientesFK6` (`idClientesFK6`),
  KEY `idPeliculasFK7` (`idPeliculasFK7`),
  CONSTRAINT `alquileres_ibfk_1` FOREIGN KEY (`idClientesFK6`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `alquileres_ibfk_2` FOREIGN KEY (`idPeliculasFK7`) REFERENCES `peliculas` (`idPelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquileres`
--

LOCK TABLES `alquileres` WRITE;
/*!40000 ALTER TABLE `alquileres` DISABLE KEYS */;
INSERT INTO `alquileres` VALUES (1,1,1);
/*!40000 ALTER TABLE `alquileres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blueray`
--

DROP TABLE IF EXISTS `blueray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blueray` (
  `idBlueray` int NOT NULL AUTO_INCREMENT,
  `disponibilidadBlueray` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idPeliculasFK5` int DEFAULT NULL,
  PRIMARY KEY (`idBlueray`),
  KEY `idPeliculasFK5` (`idPeliculasFK5`),
  CONSTRAINT `blueray_ibfk_1` FOREIGN KEY (`idPeliculasFK5`) REFERENCES `peliculas` (`idPelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blueray`
--

LOCK TABLES `blueray` WRITE;
/*!40000 ALTER TABLE `blueray` DISABLE KEYS */;
INSERT INTO `blueray` VALUES (1,'Disponible',1);
/*!40000 ALTER TABLE `blueray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniCliente` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correoCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idDependientesFK2` int DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `idDependientesFK2` (`idDependientesFK2`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`idDependientesFK2`) REFERENCES `dependientes` (`idDependiente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Aragorn','Folde Oeste','12233345B','HeredoaltronodeGondor@gmail.com',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependientes`
--

DROP TABLE IF EXISTS `dependientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependientes` (
  `idDependiente` int NOT NULL AUTO_INCREMENT,
  `nombreDependiente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoDependiente` int DEFAULT NULL,
  `idDependienteEncargadoFK1` int DEFAULT NULL,
  PRIMARY KEY (`idDependiente`),
  KEY `idDependienteEncargadoFK1` (`idDependienteEncargadoFK1`),
  CONSTRAINT `dependientes_ibfk_1` FOREIGN KEY (`idDependienteEncargadoFK1`) REFERENCES `dependientes` (`idDependiente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependientes`
--

LOCK TABLES `dependientes` WRITE;
/*!40000 ALTER TABLE `dependientes` DISABLE KEYS */;
INSERT INTO `dependientes` VALUES (1,'Gandalf',955012322,1);
/*!40000 ALTER TABLE `dependientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvd`
--

DROP TABLE IF EXISTS `dvd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dvd` (
  `idDVD` int NOT NULL AUTO_INCREMENT,
  `categoriaDVD` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idPeliculasFK4` int DEFAULT NULL,
  PRIMARY KEY (`idDVD`),
  KEY `idPeliculasFK4` (`idPeliculasFK4`),
  CONSTRAINT `dvd_ibfk_1` FOREIGN KEY (`idPeliculasFK4`) REFERENCES `peliculas` (`idPelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvd`
--

LOCK TABLES `dvd` WRITE;
/*!40000 ALTER TABLE `dvd` DISABLE KEYS */;
INSERT INTO `dvd` VALUES (1,'Fantasia',1);
/*!40000 ALTER TABLE `dvd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro1`
--

DROP TABLE IF EXISTS `libro1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro1` (
  `idPropietario` int DEFAULT NULL,
  `propietario` text COLLATE utf8mb4_spanish2_ci,
  `direccion` text COLLATE utf8mb4_spanish2_ci,
  `telefono` int DEFAULT NULL,
  `dni` text COLLATE utf8mb4_spanish2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro1`
--

LOCK TABLES `libro1` WRITE;
/*!40000 ALTER TABLE `libro1` DISABLE KEYS */;
INSERT INTO `libro1` VALUES (1,'Isildur','Minas Tirith',662447788,'12345678G');
/*!40000 ALTER TABLE `libro1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `idPelicula` int NOT NULL AUTO_INCREMENT,
  `nombrePelicula` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `directorPelicula` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idPropietarioFK3` int DEFAULT NULL,
  PRIMARY KEY (`idPelicula`),
  KEY `idPropietarioFK3` (`idPropietarioFK3`),
  CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`idPropietarioFK3`) REFERENCES `propietario` (`idPropietario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'El Señor de los Anillos','Peter Jackson',1);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario`
--

DROP TABLE IF EXISTS `propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietario` (
  `idPropietario` int NOT NULL AUTO_INCREMENT,
  `nombrePropietario` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionPropietario` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoPropietario` int DEFAULT NULL,
  `dniPropietario` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idPropietario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
INSERT INTO `propietario` VALUES (1,'Isildur','Minas Tirith',662447788,'12345678G');
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 17:51:41
