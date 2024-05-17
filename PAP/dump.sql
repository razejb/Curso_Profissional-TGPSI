CREATE DATABASE  IF NOT EXISTS `jsprojectd_pap` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jsprojectd_pap`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: jsprojectd_pap
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `CodCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `DataNascimento` varchar(45) NOT NULL,
  `Morada` varchar(45) NOT NULL,
  `Telemovel` int(9) NOT NULL,
  `Telefone` int(9) DEFAULT NULL,
  `CodigoPostal` varchar(8) NOT NULL,
  `NIF` int(9) NOT NULL,
  PRIMARY KEY (`CodCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (9,'João','21/01/2003','Rua Manuel Nº3',919917280,253234532,'2080-154',256091030),(10,'André','21/01/2003','Rua',919917280,0,'1234-21',123456789),(12,'António','21/01/2003','Rua',919917280,0,'1234-21',123456789),(13,'Carla','03/09/1970','Rua',912345678,0,'2080-154',256975421);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_fornecedor`
--

DROP TABLE IF EXISTS `compra_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra_fornecedor` (
  `CodCompra` int(11) NOT NULL AUTO_INCREMENT,
  `CodFornecedor` int(11) NOT NULL,
  `NomeFornecedor` varchar(45) NOT NULL,
  `DataDosPedidos` varchar(10) NOT NULL,
  `TotalCompra` decimal(8,2) NOT NULL,
  PRIMARY KEY (`CodCompra`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_fornecedor`
--

LOCK TABLES `compra_fornecedor` WRITE;
/*!40000 ALTER TABLE `compra_fornecedor` DISABLE KEYS */;
INSERT INTO `compra_fornecedor` VALUES (1,1,'Joao ccccc','21/07/2021',246.00),(2,1,'Joao ccccc','03/07/2021',24.00),(3,2,'Flights LDA','07/07/2021',45.00),(4,3,'Drones Company','20/07/2021',98.00),(5,2,'Flights LDA','20/07/2021',25.00);
/*!40000 ALTER TABLE `compra_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encomendas`
--

DROP TABLE IF EXISTS `encomendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encomendas` (
  `CodEncomenda` int(11) NOT NULL AUTO_INCREMENT,
  `CodCliente` int(11) NOT NULL,
  `NomeCLiente` varchar(45) NOT NULL,
  `DatadosPedidos` varchar(10) NOT NULL,
  `TotalDaEncomenda` decimal(8,2) NOT NULL,
  PRIMARY KEY (`CodEncomenda`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encomendas`
--

LOCK TABLES `encomendas` WRITE;
/*!40000 ALTER TABLE `encomendas` DISABLE KEYS */;
INSERT INTO `encomendas` VALUES (3,10,'André','20/01/2021',10.00),(4,11,'Ricardo','21/01/2021',57.00),(5,11,'Ricardo','  /  /',0.00),(6,11,'Ricardo','  /  /',19.00),(7,11,'Ricardo','  /  /',12.00),(8,10,'André','  /  /',5.00),(9,10,'André','07/07/2021',88.00),(10,13,'Carla','20/07/2021',36.00);
/*!40000 ALTER TABLE `encomendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `CodFornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `MoradaEmpresa` varchar(45) NOT NULL,
  `Telemovel` int(9) NOT NULL,
  `Telefone` int(9) DEFAULT NULL,
  `CodigoPostal` varchar(8) NOT NULL,
  `Pais` varchar(45) NOT NULL,
  `NIF` varchar(45) NOT NULL,
  PRIMARY KEY (`CodFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (2,'Flights LDA','Rua',919234567,256789531,'2050-123','Portugal','123456782'),(3,'Drones Company','Rua',919234567,254567980,'2020-123','França','256897653');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `Codfuncionarios` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Morada` varchar(45) NOT NULL,
  `NTelemovel` int(9) NOT NULL,
  `NIF` int(9) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `CodCliente` int(11) DEFAULT NULL,
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `perm` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Codfuncionarios`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (3,'Joao santos','Rua',919,123456789,'joaobgsantos@gmail.com',NULL,'joao','1234','Administrador'),(7,'Rodrigo','rua José Fernandes',912345346,256091456,'rodrigo@gmail.com',NULL,'rodrigo','1234','Administrador');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `CodProduto` int(11) NOT NULL AUTO_INCREMENT,
  `NomeProduto` varchar(45) NOT NULL,
  `UnidadeStock` int(11) NOT NULL,
  `Preco` decimal(8,2) NOT NULL,
  PRIMARY KEY (`CodProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'1',4,2.00),(2,'Drone f50',29,5.00),(3,'Drone xy400',37,0.00),(4,'Drone qA2000',19,3.00),(5,'D70',27,7.00),(6,'four',40,4.00),(7,'QI predator',17,20.00),(9,'W5',0,10.00);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `CodVenda` int(11) NOT NULL AUTO_INCREMENT,
  `CodCliente` int(11) NOT NULL,
  `NomeCliente` varchar(45) NOT NULL,
  `DataDosPedidos` varchar(10) NOT NULL,
  `TotalDaVenda` decimal(8,2) NOT NULL,
  PRIMARY KEY (`CodVenda`),
  KEY `CodCliente_idx` (`CodCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (100,9,'João','0000-00-00',14.00),(101,9,'João','21/01/2003',7.00),(102,9,'João','01/12/2002',7.00),(103,9,'João','12/03/2000',7.00),(104,9,'João','22/22/2222',14.00),(105,9,'João','21/01/2003',17.00),(106,9,'João','21/02/2021',7.00),(107,9,'João','12/01/2020',2.00),(108,9,'João','22/01/2021',2.00),(109,11,'Ricardo','21/03/2021',11.00),(110,11,'Ricardo','21/01/2021',159.00),(111,10,'André','21/03/2021',24.00),(112,10,'André','07/07/2021',35.00),(113,10,'André','07/07/2021',35.00),(114,13,'Carla','20/07/2021',17.00);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-16 21:52:45
