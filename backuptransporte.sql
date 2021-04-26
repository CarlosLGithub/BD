-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: transporte
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
-- Table structure for table `camiones`
--

DROP TABLE IF EXISTS `camiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camiones` (
  `idCamion` int NOT NULL AUTO_INCREMENT,
  `matriculaCamion` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `marcaCamion` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `modeloCamion` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tonelajeCamion` int DEFAULT NULL,
  `fechaCompraCamion` date DEFAULT NULL,
  `kilometrajeCamion` int DEFAULT NULL,
  PRIMARY KEY (`idCamion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camiones`
--

LOCK TABLES `camiones` WRITE;
/*!40000 ALTER TABLE `camiones` DISABLE KEYS */;
INSERT INTO `camiones` VALUES (1,'1A2B3C','Pegaso','Troner',100,'2021-02-18',1850);
/*!40000 ALTER TABLE `camiones` ENABLE KEYS */;
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
  `apellidosCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoCliente` int DEFAULT NULL,
  `correoElectronicoCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Carlos','León Vázquez','11122233C',12345678,'micorreo@gmail.com','Virreinato de Nueva Granada');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conducciones`
--

DROP TABLE IF EXISTS `conducciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conducciones` (
  `idConduccion` int NOT NULL AUTO_INCREMENT,
  `fechaConduccion` date DEFAULT NULL,
  `horaInicioConduccion` time DEFAULT NULL,
  `horaFinConduccion` time DEFAULT NULL,
  `idCamionFK` int DEFAULT NULL,
  `idEmpleadoFK` int DEFAULT NULL,
  PRIMARY KEY (`idConduccion`),
  KEY `idCamionFK` (`idCamionFK`),
  KEY `idEmpleadoFK` (`idEmpleadoFK`),
  CONSTRAINT `conducciones_ibfk_1` FOREIGN KEY (`idCamionFK`) REFERENCES `camiones` (`idCamion`),
  CONSTRAINT `conducciones_ibfk_2` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conducciones`
--

LOCK TABLES `conducciones` WRITE;
/*!40000 ALTER TABLE `conducciones` DISABLE KEYS */;
INSERT INTO `conducciones` VALUES (3,'2020-05-05','16:00:00','18:00:00',1,1);
/*!40000 ALTER TABLE `conducciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `dniEmpleado` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `nombreEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidoEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoEmpleado` int DEFAULT NULL,
  `domicilioEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaIngresoEmpleado` date DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'54321911O','Rafael','Donatello',999887766,'Avenida Wall Street','1993-09-05');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios`
--

DROP TABLE IF EXISTS `envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envios` (
  `idEnvio` int NOT NULL AUTO_INCREMENT,
  `fechaEnvio` date DEFAULT NULL,
  `idClienteOrigenFK` int DEFAULT NULL,
  `idClienteDestinoFK` int DEFAULT NULL,
  `idCamionFK` int DEFAULT NULL,
  PRIMARY KEY (`idEnvio`),
  KEY `idClienteOrigenFK` (`idClienteOrigenFK`),
  KEY `idClienteDestinoFK` (`idClienteDestinoFK`),
  KEY `idCamionFK` (`idCamionFK`),
  CONSTRAINT `envios_ibfk_1` FOREIGN KEY (`idClienteOrigenFK`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `envios_ibfk_2` FOREIGN KEY (`idClienteDestinoFK`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `envios_ibfk_3` FOREIGN KEY (`idCamionFK`) REFERENCES `camiones` (`idCamion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios`
--

LOCK TABLES `envios` WRITE;
/*!40000 ALTER TABLE `envios` DISABLE KEYS */;
INSERT INTO `envios` VALUES (1,'2021-07-18',1,1,1);
/*!40000 ALTER TABLE `envios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 18:03:18
