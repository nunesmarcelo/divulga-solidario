CREATE DATABASE  IF NOT EXISTS `u227666333_bd` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `u227666333_bd`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: sql50.main-hosting.eu    Database: u227666333_bd
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','divulga0123','Administrador');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contribuinte`
--

DROP TABLE IF EXISTS `contribuinte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contribuinte` (
  `id_contribuinte` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_contribuinte`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contribuinte`
--

LOCK TABLES `contribuinte` WRITE;
/*!40000 ALTER TABLE `contribuinte` DISABLE KEYS */;
INSERT INTO `contribuinte` VALUES (81,'marcelo','31 9 9855-8447','d'),(82,'Mathias','31 9 9999-9999','mathias@mathias.com'),(84,'Rafael','31 9 8550-8006','rafael.libanio.sp@gmail.com');
/*!40000 ALTER TABLE `contribuinte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicao`
--

DROP TABLE IF EXISTS `instituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituicao` (
  `id_instituicao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `responsavel` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `imagem_instituicao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_instituicao`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicao`
--

LOCK TABLES `instituicao` WRITE;
/*!40000 ALTER TABLE `instituicao` DISABLE KEYS */;
INSERT INTO `instituicao` VALUES (18,'Clínica Renascer','São Paulo','São Paulo','bairro arroba','rua augusto luís','1102','21 2 2222-2222','Joaquim','renascer@renascer.br','Sem descrição no momento.','3d5f8bad656059a50ed169681ab8a3ccn.png'),(19,'Associação de Pais e Amigos do Centro de Reabilita','Minas Gerais','Belo Horizonte','Planalto','Fernando Ferrari','173','31 9 8892-8882','Claudia','contato@aspacreabilitacao.org.br','A ASPAC – Associação de Pais e Amigos do Centro de Reabilitação foi fundada em 08 de junho de 2000, em Belo Horizonte, e é uma instituição filantrópica de assistência social dedicada à habilitação, reabilitação e à promoção social de crianças, adolescentes e adultos com diferentes tipos de necessida','5d9a39724b40f6fa7202b265583e0fdac.jpg'),(23,'ONG Projeto de Vida','Minas Gerais','Contagem','Amazonas','Rua Rio Branco','233','(31) 3361-7526','Francielle Santos (Coordenadora de Projetos)','abrigocasavidanova@gmail.com','Oferecer acolhimento, amparo e atendimento a aqueles que direta ou indiretamente sofrem com transtornos decorrentes do uso ou abuso de álcool ou outras drogas; bem como promover ações que contemplem a prática de uma vida saudável.\r\nSite: www.projetoevida.org.br\r\nFacebook: https://www.facebook.com/ON','46d2010737741d7263b013fc830a270fa.jpg');
/*!40000 ALTER TABLE `instituicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `entregue` tinyint(4) NOT NULL DEFAULT '0',
  `data_marcada` date DEFAULT NULL,
  `descricao_doacao` varchar(300) DEFAULT NULL,
  `instituicao_id_instituicao` int(11) NOT NULL,
  `contribuinte_id_contribuinte` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_item`,`instituicao_id_instituicao`),
  KEY `fk_item_instituicao_idx` (`instituicao_id_instituicao`),
  KEY `fk_item_contribuinte1_idx` (`contribuinte_id_contribuinte`),
  CONSTRAINT `fk_item_contribuinte1` FOREIGN KEY (`contribuinte_id_contribuinte`) REFERENCES `contribuinte` (`id_contribuinte`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_item_instituicao` FOREIGN KEY (`instituicao_id_instituicao`) REFERENCES `instituicao` (`id_instituicao`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (26,'Arroz','1','tipo 1',1,'2018-02-12','Almoço',18,82),(27,'Feijão','1','carioca',0,'0000-00-00','Almoço',18,NULL),(28,'Presunto','1','KG',0,'0000-00-00','Almoço',18,NULL),(29,'Material de Limpeza','1','Álcool Gel 500ml',0,'0000-00-00','Necessidades: material de escritório, pedagógico e de limpeza. Lanche.',19,NULL),(32,'Papel Higiênico','4','Qualquer marca',1,'2018-02-27','Teste',23,84),(33,'Papel Higiênico','5','Qualquer marca',0,'0000-00-00','Itens que precisamos no mês de fevereiro/2018. Agradecemos sua doação!!! E venham visitar nossa instituição. Abraços!',23,NULL),(34,'Sabão em Pó','3','Qualquer marca',0,'0000-00-00','Itens que precisamos no mês de fevereiro/2018. Agradecemos sua doação!!! E venham visitar nossa instituição. Abraços!',23,NULL),(35,'Detergente','10','Qualquer marca',0,'0000-00-00','Itens que precisamos no mês de fevereiro/2018. Agradecemos sua doação!!! E venham visitar nossa instituição. Abraços!',23,NULL),(36,'Sabonete','20','Qualquer marca',0,'0000-00-00','Itens que precisamos no mês de fevereiro/2018. Agradecemos sua doação!!! E venham visitar nossa instituição. Abraços!',23,NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-01  9:28:58
