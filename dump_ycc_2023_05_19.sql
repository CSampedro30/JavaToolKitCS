-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 10.0.0.10    Database: ycc_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.15-MariaDB-0+deb11u1

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
-- Table structure for table `Utilisateurs`
--

DROP TABLE IF EXISTS `Utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Utilisateurs` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(100) NOT NULL,
  `sel` varchar(100) NOT NULL,
  `SHA` varchar(512) NOT NULL,
  `Compte_bloque` int(11) DEFAULT NULL,
  `Compte_desactiver` int(11) DEFAULT NULL,
  `tentative_rater` int(11) NOT NULL DEFAULT 0,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  PRIMARY KEY (`id_utilisateur`),
  UNIQUE KEY `Utilisateurs_UN` (`identifiant`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Utilisateurs`
--

LOCK TABLES `Utilisateurs` WRITE;
/*!40000 ALTER TABLE `Utilisateurs` DISABLE KEYS */;
INSERT INTO `Utilisateurs` VALUES (1,'a','a','a',0,0,0,'Jack','Doe'),(3,'test','9caaebac308e46efaa7c9ad0335adeed4aee86a3','662f913622eab2003ce1e7ffc359ea3e',0,0,1,'Jane','Doe'),(5,'test1','9caaebac308e46efaa7c9ad0335adeed4aee86a3','b471dff902e025709d4b845002a39907448ef7c3ad24db20fa065ee0a25afc08dfcdc7144bf395cd0ffdb979b23dbbed749f78bc96f8fe9033a42238ee725d73',0,0,0,'Malo','Loe'),(6,'desac','9caaebac308e46efaa7c9ad0335adeed4aee86a3','db01992a487648607684346e7ff1eab232c851007ce44133f7342a32e50174ed8ab7924c8e93a29cee8eec0c0909b33438c067ccb4ab7f53920dfa8114324aff',0,1,0,'Eddy','Smurf'),(7,'bloq','9caaebac308e46efaa7c9ad0335adeed4aee86a3','9308fa9df3421fd6347ed2a39b912b07dd79d1bda820de72ba2e81248782cdbe769963179c91e9a428f23a02f357741709dad0eb6867228c0cb0abf1a07f7f5c',1,0,0,'Cyril','Sampe'),(8,'acheteur','9caaebac308e46efaa7c9ad0335adeed4aee86a3158b8c5d27def','0a6dd4eed958e74405334c16e2ece47360ea651f4c1df61ec8ea447934f848ee04047b21c61af0fcbd947f97d7f6b28c9021efc9260c9c077f6e59c79aeb5f7c',0,0,2,'Nico','Lolo'),(9,'acheteur1','9caaebac308e46efaa7c9ad0335adeed4aee86a3','65a22787a8cf0d607bd4e6a07e446ea683d7ecdfe2d6f09298f086b8c8ade383b0e8ac95c980c2235f3134247412400393b59cd9dfd0d16c93ff8cac49906834',0,0,0,'Nathan','Lael'),(10,'vendeur','9caaebac308e46efaa7c9ad0335adeed4aee86a3','6e77582249ac37b5bd720aecb6032b8f0aada823a379539ffa7db298d84425ea7b983ba5682cb7a22029b2bca99eb1414edf2008d5aa9c6462c651945dce5f4d',0,0,0,'Cyril','Sampo'),(11,'acheteur_vendeur','9caaebac308e46efaa7c9ad0335adeed4aee86a3','76598a273d96c2dc0b565174e273b858b9ccee2029baa3f68f0a53795c7dd0bc1ddf8406fdd10696cfa7a209420a2c9acec7b98b8ebd1667af51ddaa07598280',0,0,0,'Francois','Capon'),(12,'01.acheteur@test.com','81bde0b4188ecbc5b37ea27efd6ee299','9d5e5eb714396fd087f6e8edc0d2e8e2956e5046756a2ccccc676134a12ab3c90d322efdafd1573f1f3d22d7dd891183c7dfde484a7563caf26f597e3fa1cf53',0,0,0,'Nicolas','Lebras'),(13,'02.acheteur@test.com','15275018740a2c5599f46f6d649c0494','c988b438e19e7738a1b32e66b7953113804e68da93e87be155929e21164847a129a4268960018d1b656dc03e6ab96f3eb62ad673b0dcee420e3dd66ada3dd089',0,0,0,'Malo','Rouri'),(14,'01.vendeur@test.com','b3735814433db3bee4107dc7eea12314','ffd2b5c9671f73b1055a4d1e231222918a37b2f4e980f61186c8c0357783b2f9b8e5baed2f69284081f86ed9b5ad825045130f934c2bce929ad72138d24211c5',0,0,0,'Nathan','Doe'),(15,'02.vendeur@test.com','657967ec780ae6c1d9dad6a81c6fb49a','c8137d144609c715bf3b7e021347fd61b62c902ffa3c4c8faf3a6f696d7598274f4dc98758c9538d92c5b7cbf5285f9cd02699103a98030e08fcedb88b842fe3',0,0,0,'Cyril','Dean');
/*!40000 ALTER TABLE `Utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asso_utilisateur_vente`
--

DROP TABLE IF EXISTS `asso_utilisateur_vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asso_utilisateur_vente` (
  `id_vente` int(11) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  KEY `asso_acheteur_vendeur_FK` (`id_utilisateur`),
  KEY `asso_acheteur_vendeur_FK_1` (`id_vente`),
  CONSTRAINT `asso_acheteur_vendeur_FK` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateurs` (`id_utilisateur`),
  CONSTRAINT `asso_acheteur_vendeur_FK_1` FOREIGN KEY (`id_vente`) REFERENCES `vente` (`id_vente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asso_utilisateur_vente`
--

LOCK TABLES `asso_utilisateur_vente` WRITE;
/*!40000 ALTER TABLE `asso_utilisateur_vente` DISABLE KEYS */;
/*!40000 ALTER TABLE `asso_utilisateur_vente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie_collection`
--

DROP TABLE IF EXISTS `categorie_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie_collection` (
  `id_categorie_collection` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categorie_collection`),
  UNIQUE KEY `libelle` (`libelle`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie_collection`
--

LOCK TABLES `categorie_collection` WRITE;
/*!40000 ALTER TABLE `categorie_collection` DISABLE KEYS */;
INSERT INTO `categorie_collection` VALUES (4,'Ancêtres'),(8,'Après-guerre'),(7,'Avant-guerre'),(1,'categorie1'),(2,'categorie2'),(3,'categorie3'),(5,'edwardians'),(6,'Vintage'),(9,'Youngtimers');
/*!40000 ALTER TABLE `categorie_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie_collection__vente`
--

DROP TABLE IF EXISTS `categorie_collection__vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie_collection__vente` (
  `id_vente` int(11) NOT NULL,
  `id_categorie_collection` int(11) NOT NULL,
  PRIMARY KEY (`id_vente`,`id_categorie_collection`),
  KEY `id_categorie_collection` (`id_categorie_collection`),
  CONSTRAINT `categorie_collection__vente_ibfk_1` FOREIGN KEY (`id_vente`) REFERENCES `vente` (`id_vente`),
  CONSTRAINT `categorie_collection__vente_ibfk_2` FOREIGN KEY (`id_categorie_collection`) REFERENCES `categorie_collection` (`id_categorie_collection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie_collection__vente`
--

LOCK TABLES `categorie_collection__vente` WRITE;
/*!40000 ALTER TABLE `categorie_collection__vente` DISABLE KEYS */;
INSERT INTO `categorie_collection__vente` VALUES (2,1),(2,2),(4,1),(5,2),(6,3);
/*!40000 ALTER TABLE `categorie_collection__vente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `categorie_vente`
--

DROP TABLE IF EXISTS `categorie_vente`;
/*!50001 DROP VIEW IF EXISTS `categorie_vente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `categorie_vente` (
  `id_vente` tinyint NOT NULL,
  `libelle` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `constructeur`
--

DROP TABLE IF EXISTS `constructeur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constructeur` (
  `id_constructeur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date DEFAULT NULL,
  PRIMARY KEY (`id_constructeur`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constructeur`
--

LOCK TABLES `constructeur` WRITE;
/*!40000 ALTER TABLE `constructeur` DISABLE KEYS */;
INSERT INTO `constructeur` VALUES (1,'constructeur1','2010-10-05',NULL),(2,'constructeur2','1970-02-17',NULL),(3,'constructeur3','1990-04-18',NULL),(4,'DeLorean Motor','1975-01-01',NULL),(5,'citroën','1919-01-01',NULL),(6,'Ford','1903-06-16',NULL),(7,'Alpine','1955-06-22',NULL),(8,'Renault','1899-02-25',NULL),(9,'Porsche','1931-01-01',NULL);
/*!40000 ALTER TABLE `constructeur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `mail_expediteur` varchar(50) NOT NULL,
  `objet` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_motif` int(11) NOT NULL,
  `RGPD` text NOT NULL,
  PRIMARY KEY (`id_contact`),
  KEY `id_motif` (`id_motif`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`id_motif`) REFERENCES `motif_contact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'a@a.a','qsdf','qsdfqsdf','2022-12-16 06:39:49','2022-12-16 06:39:49',3,''),(2,'a@a.a','s','sqdf','2022-12-16 06:44:36','2022-12-16 06:44:36',3,'');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enchere`
--

DROP TABLE IF EXISTS `enchere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enchere` (
  `id_enchere` int(11) NOT NULL AUTO_INCREMENT,
  `montant` decimal(10,2) NOT NULL,
  `enchere_adjudicatrice` int(1) NOT NULL DEFAULT 0,
  `id_utilisateur` int(11) NOT NULL,
  `id_vente` int(11) NOT NULL,
  `numero_lot` int(11) NOT NULL,
  `date_enchere` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_enchere`),
  KEY `enchere_utilisateur_FK` (`id_utilisateur`),
  KEY `enchere_lot_FK` (`id_vente`,`numero_lot`),
  CONSTRAINT `enchere_lot_FK` FOREIGN KEY (`id_vente`, `numero_lot`) REFERENCES `lot` (`id_vente`, `numero`),
  CONSTRAINT `enchere_utilisateur_FK` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateurs` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enchere`
--

LOCK TABLES `enchere` WRITE;
/*!40000 ALTER TABLE `enchere` DISABLE KEYS */;
INSERT INTO `enchere` VALUES (1,100.00,1,13,2,1,'2023-04-09 13:39:02'),(2,11000.00,0,13,9,10,'2023-04-02 08:00:00'),(3,12000.00,0,13,9,10,'2023-04-02 08:05:00'),(4,13000.00,1,13,9,11,'2023-04-02 08:10:00'),(5,16000.00,0,13,10,12,'2023-04-02 09:00:00'),(6,17000.00,1,13,10,12,'2023-04-02 09:05:00');
/*!40000 ALTER TABLE `enchere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etat_inscription_vente`
--

DROP TABLE IF EXISTS `etat_inscription_vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etat_inscription_vente` (
  `id_etat` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  PRIMARY KEY (`id_etat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etat_inscription_vente`
--

LOCK TABLES `etat_inscription_vente` WRITE;
/*!40000 ALTER TABLE `etat_inscription_vente` DISABLE KEYS */;
/*!40000 ALTER TABLE `etat_inscription_vente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id_image` int(11) NOT NULL AUTO_INCREMENT,
  `id_public` varchar(30) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `id_public` (`id_public`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'125874694537','La 205 à Malo'),(2,'135494657825','Une poubelle'),(3,'116487532219','la deudeuch'),(4,'548798653215','retour vers le futur'),(5,'1548765186','voiture 5'),(6,'85641984612','voiture 6'),(7,'54845185465','Deux chevaux'),(8,'45876526484','delorean'),(9,'7895616744','Ford mustang'),(10,'778554262954','Alpine A110'),(11,'541565986184','R5 Turbo'),(12,'886456548554','Porsche 911');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_voiture`
--

DROP TABLE IF EXISTS `image_voiture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_voiture` (
  `id_image` int(11) NOT NULL,
  `id_vente` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id_image`),
  KEY `id_vente` (`id_vente`,`numero`),
  CONSTRAINT `image_voiture_ibfk_1` FOREIGN KEY (`id_image`) REFERENCES `image` (`id_image`),
  CONSTRAINT `image_voiture_ibfk_2` FOREIGN KEY (`id_vente`, `numero`) REFERENCES `lot` (`id_vente`, `numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_voiture`
--

LOCK TABLES `image_voiture` WRITE;
/*!40000 ALTER TABLE `image_voiture` DISABLE KEYS */;
INSERT INTO `image_voiture` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,4,1),(8,4,2),(9,4,3),(10,4,4),(11,4,5),(12,4,6);
/*!40000 ALTER TABLE `image_voiture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieu`
--

DROP TABLE IF EXISTS `lieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieu` (
  `id_lieu` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_lieu`),
  UNIQUE KEY `libelle` (`libelle`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieu`
--

LOCK TABLES `lieu` WRITE;
/*!40000 ALTER TABLE `lieu` DISABLE KEYS */;
INSERT INTO `lieu` VALUES (1,'lieu1'),(2,'lieu2'),(3,'lieu3'),(4,'lieu4'),(5,'Lyon : salon automobile');
/*!40000 ALTER TABLE `lieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lot`
--

DROP TABLE IF EXISTS `lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lot` (
  `id_vente` int(11) NOT NULL,
  `id_utilisateur_lot` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `a_publier` int(11) NOT NULL,
  `mise_a_prix` int(11) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `couleur` varchar(50) NOT NULL,
  `id_voiture` int(11) NOT NULL,
  `coup_de_coeur` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_vente`,`numero`),
  KEY `id_voiture` (`id_voiture`),
  KEY `lot_FK` (`id_utilisateur_lot`),
  CONSTRAINT `lot_FK` FOREIGN KEY (`id_utilisateur_lot`) REFERENCES `Utilisateurs` (`id_utilisateur`),
  CONSTRAINT `lot_ibfk_1` FOREIGN KEY (`id_vente`) REFERENCES `vente` (`id_vente`),
  CONSTRAINT `lot_ibfk_2` FOREIGN KEY (`id_voiture`) REFERENCES `voiture` (`id_voiture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lot`
--

LOCK TABLES `lot` WRITE;
/*!40000 ALTER TABLE `lot` DISABLE KEYS */;
INSERT INTO `lot` VALUES (2,NULL,1,1,5000,190000,'bleu',1,1),(2,NULL,2,1,10000,65000,'vert',3,0),(2,NULL,3,1,8000,78000,'mauve',2,1),(2,NULL,4,1,75000,50000,'rouge',4,0),(2,NULL,5,1,15000,78000,'rouge',6,0),(2,NULL,6,1,15000,78000,'rouge',7,0),(4,NULL,1,1,1500,50000,'jaune',8,1),(4,NULL,2,1,65000,8500,'grise',9,0),(4,NULL,3,1,32000,45500,'rouge',10,1),(4,NULL,4,1,150000,15000,'blanche',11,0),(4,NULL,5,1,58500,13500,'gris',12,1),(4,NULL,6,1,75000,88000,'gris',13,0),(9,13,10,1,10000,50000,'rouge',1,0),(9,13,11,1,15000,30000,'noir',2,1),(10,13,12,1,20000,25000,'blanc',3,0);
/*!40000 ALTER TABLE `lot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `lot_details`
--

DROP TABLE IF EXISTS `lot_details`;
/*!50001 DROP VIEW IF EXISTS `lot_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `lot_details` (
  `coup_de_coeur` tinyint NOT NULL,
  `id_vente` tinyint NOT NULL,
  `numero` tinyint NOT NULL,
  `mise_a_prix` tinyint NOT NULL,
  `kilometrage` tinyint NOT NULL,
  `couleur` tinyint NOT NULL,
  `VIN` tinyint NOT NULL,
  `modele` tinyint NOT NULL,
  `annee_construction` tinyint NOT NULL,
  `cylindre` tinyint NOT NULL,
  `id_type_voiture` tinyint NOT NULL,
  `id_categorie_collection` tinyint NOT NULL,
  `id_constructeur` tinyint NOT NULL,
  `id_voiture` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `lots`
--

DROP TABLE IF EXISTS `lots`;
/*!50001 DROP VIEW IF EXISTS `lots`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `lots` (
  `coup_de_coeur` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `lots2`
--

DROP TABLE IF EXISTS `lots2`;
/*!50001 DROP VIEW IF EXISTS `lots2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `lots2` (
  `coup_de_coeur` tinyint NOT NULL,
  `id_vente` tinyint NOT NULL,
  `numero` tinyint NOT NULL,
  `mise_a_prix` tinyint NOT NULL,
  `kilometrage` tinyint NOT NULL,
  `couleur` tinyint NOT NULL,
  `VIN` tinyint NOT NULL,
  `modele` tinyint NOT NULL,
  `annee_construction` tinyint NOT NULL,
  `cylindre` tinyint NOT NULL,
  `id_type_voiture` tinyint NOT NULL,
  `id_categorie_collection` tinyint NOT NULL,
  `id_constructeur` tinyint NOT NULL,
  `id_voiture` tinyint NOT NULL,
  `nom` tinyint NOT NULL,
  `date_debut` tinyint NOT NULL,
  `date_fin` tinyint NOT NULL,
  `id_public` tinyint NOT NULL,
  `image_voiture_lib` tinyint NOT NULL,
  `libelle` tinyint NOT NULL,
  `type_voiture_lib` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `lots3`
--

DROP TABLE IF EXISTS `lots3`;
/*!50001 DROP VIEW IF EXISTS `lots3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `lots3` (
  `coup_de_coeur` tinyint NOT NULL,
  `id_vente` tinyint NOT NULL,
  `numero` tinyint NOT NULL,
  `mise_a_prix` tinyint NOT NULL,
  `kilometrage` tinyint NOT NULL,
  `couleur` tinyint NOT NULL,
  `VIN` tinyint NOT NULL,
  `modele` tinyint NOT NULL,
  `annee_construction` tinyint NOT NULL,
  `cylindre` tinyint NOT NULL,
  `id_type_voiture` tinyint NOT NULL,
  `id_categorie_collection` tinyint NOT NULL,
  `id_constructeur` tinyint NOT NULL,
  `id_voiture` tinyint NOT NULL,
  `nom` tinyint NOT NULL,
  `date_debut` tinyint NOT NULL,
  `date_fin` tinyint NOT NULL,
  `id_public` tinyint NOT NULL,
  `image_voiture_lib` tinyint NOT NULL,
  `libelle` tinyint NOT NULL,
  `type_voiture_lib` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `lots4`
--

DROP TABLE IF EXISTS `lots4`;
/*!50001 DROP VIEW IF EXISTS `lots4`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `lots4` (
  `coup_de_coeur` tinyint NOT NULL,
  `id_vente` tinyint NOT NULL,
  `numero` tinyint NOT NULL,
  `mise_a_prix` tinyint NOT NULL,
  `kilometrage` tinyint NOT NULL,
  `couleur` tinyint NOT NULL,
  `VIN` tinyint NOT NULL,
  `modele` tinyint NOT NULL,
  `annee_construction` tinyint NOT NULL,
  `cylindre` tinyint NOT NULL,
  `id_type_voiture` tinyint NOT NULL,
  `id_categorie_collection` tinyint NOT NULL,
  `id_constructeur` tinyint NOT NULL,
  `id_voiture` tinyint NOT NULL,
  `nom` tinyint NOT NULL,
  `date_debut` tinyint NOT NULL,
  `date_fin` tinyint NOT NULL,
  `id_public` tinyint NOT NULL,
  `image_voiture_lib` tinyint NOT NULL,
  `libelle` tinyint NOT NULL,
  `type_voiture_lib` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `lots_coup_de_coeur`
--

DROP TABLE IF EXISTS `lots_coup_de_coeur`;
/*!50001 DROP VIEW IF EXISTS `lots_coup_de_coeur`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `lots_coup_de_coeur` (
  `coup_de_coeur` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `lots_infos_completes`
--

DROP TABLE IF EXISTS `lots_infos_completes`;
/*!50001 DROP VIEW IF EXISTS `lots_infos_completes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `lots_infos_completes` (
  `coup_de_coeur` tinyint NOT NULL,
  `id_vente` tinyint NOT NULL,
  `numero` tinyint NOT NULL,
  `mise_a_prix` tinyint NOT NULL,
  `kilometrage` tinyint NOT NULL,
  `couleur` tinyint NOT NULL,
  `VIN` tinyint NOT NULL,
  `modele` tinyint NOT NULL,
  `annee_construction` tinyint NOT NULL,
  `cylindre` tinyint NOT NULL,
  `id_type_voiture` tinyint NOT NULL,
  `id_categorie_collection` tinyint NOT NULL,
  `id_constructeur` tinyint NOT NULL,
  `id_voiture` tinyint NOT NULL,
  `nom` tinyint NOT NULL,
  `date_debut` tinyint NOT NULL,
  `date_fin` tinyint NOT NULL,
  `id_public` tinyint NOT NULL,
  `image_voiture_lib` tinyint NOT NULL,
  `libelle` tinyint NOT NULL,
  `type_voiture_lib` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `motif_contact`
--

DROP TABLE IF EXISTS `motif_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motif_contact` (
  `libellés` text NOT NULL,
  `ordre` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motif_contact`
--

LOCK TABLES `motif_contact` WRITE;
/*!40000 ALTER TABLE `motif_contact` DISABLE KEYS */;
INSERT INTO `motif_contact` VALUES ('je veux participer à une vente',1,3),('je veux vendre une voiture',2,4),('j\' ai un problème avec le site',3,5),('demande de contact',4,6),('autre',5,7),('default',99999,99999);
/*!40000 ALTER TABLE `motif_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_voiture`
--

DROP TABLE IF EXISTS `type_voiture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_voiture` (
  `id_type_voiture` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id_type_voiture`),
  UNIQUE KEY `libelle` (`libelle`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_voiture`
--

LOCK TABLES `type_voiture` WRITE;
/*!40000 ALTER TABLE `type_voiture` DISABLE KEYS */;
INSERT INTO `type_voiture` VALUES (4,'Ancêtres'),(8,'Aprés-guerre'),(7,'Avant-guerre'),(5,'edwardians'),(1,'type1'),(2,'type2'),(3,'type3'),(6,'Vintage'),(10,'Youngtimers');
/*!40000 ALTER TABLE `type_voiture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs_extranet`
--

DROP TABLE IF EXISTS `utilisateurs_extranet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateurs_extranet` (
  `id_utilisateur_extranet` int(11) NOT NULL,
  `est_vendeur` int(11) DEFAULT NULL,
  `est_acheteur` int(11) DEFAULT NULL,
  KEY `utilisateurs_extranet_FK` (`id_utilisateur_extranet`),
  CONSTRAINT `utilisateurs_extranet_FK` FOREIGN KEY (`id_utilisateur_extranet`) REFERENCES `Utilisateurs` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs_extranet`
--

LOCK TABLES `utilisateurs_extranet` WRITE;
/*!40000 ALTER TABLE `utilisateurs_extranet` DISABLE KEYS */;
INSERT INTO `utilisateurs_extranet` VALUES (9,0,1),(10,1,0),(11,1,1),(12,0,1),(13,1,1),(14,1,0),(15,1,1);
/*!40000 ALTER TABLE `utilisateurs_extranet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vente`
--

DROP TABLE IF EXISTS `vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vente` (
  `id_vente` int(11) NOT NULL AUTO_INCREMENT,
  `a_publier` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date DEFAULT NULL,
  `id_lieu` int(11) NOT NULL,
  PRIMARY KEY (`id_vente`),
  KEY `id_lieu` (`id_lieu`),
  CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`id_lieu`) REFERENCES `lieu` (`id_lieu`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vente`
--

LOCK TABLES `vente` WRITE;
/*!40000 ALTER TABLE `vente` DISABLE KEYS */;
INSERT INTO `vente` VALUES (1,0,'2022-11-20','2022-11-24',1),(2,1,'2023-01-23',NULL,3),(3,0,'2023-03-12','2023-03-13',1),(4,1,'2023-03-12','0000-00-00',2),(5,1,'2022-10-02','2022-10-03',2),(6,1,'2022-08-20','2022-08-22',3),(7,1,'2023-08-25','2023-08-25',3),(8,1,'2024-08-25','2024-08-25',2),(9,1,'2023-04-01','2023-04-10',1),(10,1,'2023-04-15','2023-04-25',2);
/*!40000 ALTER TABLE `vente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vente_future_a_publier`
--

DROP TABLE IF EXISTS `vente_future_a_publier`;
/*!50001 DROP VIEW IF EXISTS `vente_future_a_publier`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vente_future_a_publier` (
  `id_vente` tinyint NOT NULL,
  `date_debut` tinyint NOT NULL,
  `date_fin` tinyint NOT NULL,
  `id_lieu` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vente_passe_a_publier`
--

DROP TABLE IF EXISTS `vente_passe_a_publier`;
/*!50001 DROP VIEW IF EXISTS `vente_passe_a_publier`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vente_passe_a_publier` (
  `id_vente` tinyint NOT NULL,
  `a_publier` tinyint NOT NULL,
  `date_debut` tinyint NOT NULL,
  `date_fin` tinyint NOT NULL,
  `id_lieu` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voiture` (
  `id_voiture` int(11) NOT NULL AUTO_INCREMENT,
  `VIN` varchar(50) NOT NULL,
  `modele` varchar(50) NOT NULL,
  `annee_construction` smallint(6) NOT NULL,
  `cylindre` decimal(15,1) NOT NULL,
  `id_type_voiture` int(11) NOT NULL,
  `id_categorie_collection` int(11) NOT NULL,
  `id_constructeur` int(11) NOT NULL,
  PRIMARY KEY (`id_voiture`),
  UNIQUE KEY `VIN` (`VIN`),
  KEY `id_type_voiture` (`id_type_voiture`),
  KEY `id_categorie_collection` (`id_categorie_collection`),
  KEY `id_constructeur` (`id_constructeur`),
  CONSTRAINT `voiture_ibfk_1` FOREIGN KEY (`id_type_voiture`) REFERENCES `type_voiture` (`id_type_voiture`),
  CONSTRAINT `voiture_ibfk_2` FOREIGN KEY (`id_categorie_collection`) REFERENCES `categorie_collection` (`id_categorie_collection`),
  CONSTRAINT `voiture_ibfk_3` FOREIGN KEY (`id_constructeur`) REFERENCES `constructeur` (`id_constructeur`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voiture`
--

LOCK TABLES `voiture` WRITE;
/*!40000 ALTER TABLE `voiture` DISABLE KEYS */;
INSERT INTO `voiture` VALUES (1,'00000000000000001','model1',1980,60.0,1,2,1),(2,'00000000000000002','model1',1970,60.0,1,2,1),(3,'00000000000000003','model4',1974,60.0,2,1,1),(4,'00000000000000004','model3',1964,60.0,2,2,2),(5,'00000000000000005','model2',1954,30.0,3,1,3),(6,'8','modele5',1980,60.0,3,3,2),(7,'9','6',1970,60.0,3,3,2),(8,'1B3ES56C55D137449','deux CV',1960,435.0,8,8,5),(9,'JH4KA3261JC024072','delorean',1981,2849.0,10,9,4),(10,'JT4RN01P0N7057480','Ford mustang',1973,5000.0,8,9,6),(11,'1G3NL12E9YC404176','Alpine A110',1963,1798.0,8,9,7),(12,'1HGCP263X8A035447','R5 Turbo',1980,1397.0,10,9,8),(13,'JH4DA9340MS002938','Porsche 911',1964,2195.0,8,8,9);
/*!40000 ALTER TABLE `voiture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vue_images_voitures`
--

DROP TABLE IF EXISTS `vue_images_voitures`;
/*!50001 DROP VIEW IF EXISTS `vue_images_voitures`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vue_images_voitures` (
  `id_image` tinyint NOT NULL,
  `id_public` tinyint NOT NULL,
  `libelle` tinyint NOT NULL,
  `id_vente` tinyint NOT NULL,
  `numero` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vue_lot`
--

DROP TABLE IF EXISTS `vue_lot`;
/*!50001 DROP VIEW IF EXISTS `vue_lot`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vue_lot` (
  `id_vente` tinyint NOT NULL,
  `numero` tinyint NOT NULL,
  `a_publier` tinyint NOT NULL,
  `mise_a_prix` tinyint NOT NULL,
  `kilometrage` tinyint NOT NULL,
  `couleur` tinyint NOT NULL,
  `id_voiture` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vue_utilisateurs`
--

DROP TABLE IF EXISTS `vue_utilisateurs`;
/*!50001 DROP VIEW IF EXISTS `vue_utilisateurs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vue_utilisateurs` (
  `id_utilisateur` tinyint NOT NULL,
  `identifiant` tinyint NOT NULL,
  `sel` tinyint NOT NULL,
  `SHA` tinyint NOT NULL,
  `Compte_bloque` tinyint NOT NULL,
  `Compte_desactiver` tinyint NOT NULL,
  `tentative_rater` tinyint NOT NULL,
  `id_utilisateur_extranet` tinyint NOT NULL,
  `est_vendeur` tinyint NOT NULL,
  `est_acheteur` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'ycc_dev'
--

--
-- Final view structure for view `categorie_vente`
--

/*!50001 DROP TABLE IF EXISTS `categorie_vente`*/;
/*!50001 DROP VIEW IF EXISTS `categorie_vente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `categorie_vente` AS select `vente`.`id_vente` AS `id_vente`,`cc`.`libelle` AS `libelle` from ((`vente` join `categorie_collection__vente` `ccv` on(`ccv`.`id_vente` = `vente`.`id_vente`)) join `categorie_collection` `cc` on(`cc`.`id_categorie_collection` = `ccv`.`id_categorie_collection`)) where `vente`.`a_publier` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lot_details`
--

/*!50001 DROP TABLE IF EXISTS `lot_details`*/;
/*!50001 DROP VIEW IF EXISTS `lot_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `lot_details` AS select `lot`.`coup_de_coeur` AS `coup_de_coeur`,`lot`.`id_vente` AS `id_vente`,`lot`.`numero` AS `numero`,`lot`.`mise_a_prix` AS `mise_a_prix`,`lot`.`kilometrage` AS `kilometrage`,`lot`.`couleur` AS `couleur`,`v`.`VIN` AS `VIN`,`v`.`modele` AS `modele`,`v`.`annee_construction` AS `annee_construction`,`v`.`cylindre` AS `cylindre`,`v`.`id_type_voiture` AS `id_type_voiture`,`v`.`id_categorie_collection` AS `id_categorie_collection`,`v`.`id_constructeur` AS `id_constructeur`,`v`.`id_voiture` AS `id_voiture` from (`lot` join `voiture` `v` on(`lot`.`id_voiture` = `v`.`id_voiture`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lots`
--

/*!50001 DROP TABLE IF EXISTS `lots`*/;
/*!50001 DROP VIEW IF EXISTS `lots`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `lots` AS select `lot`.`coup_de_coeur` AS `coup_de_coeur` from (`lot` join `lots_infos_completes` on(`lot`.`numero` = `lots_infos_completes`.`numero`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lots2`
--

/*!50001 DROP TABLE IF EXISTS `lots2`*/;
/*!50001 DROP VIEW IF EXISTS `lots2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `lots2` AS select `lot`.`coup_de_coeur` AS `coup_de_coeur`,`lots_infos_completes`.`id_vente` AS `id_vente`,`lots_infos_completes`.`numero` AS `numero`,`lots_infos_completes`.`mise_a_prix` AS `mise_a_prix`,`lots_infos_completes`.`kilometrage` AS `kilometrage`,`lots_infos_completes`.`couleur` AS `couleur`,`lots_infos_completes`.`VIN` AS `VIN`,`lots_infos_completes`.`modele` AS `modele`,`lots_infos_completes`.`annee_construction` AS `annee_construction`,`lots_infos_completes`.`cylindre` AS `cylindre`,`lots_infos_completes`.`id_type_voiture` AS `id_type_voiture`,`lots_infos_completes`.`id_categorie_collection` AS `id_categorie_collection`,`lots_infos_completes`.`id_constructeur` AS `id_constructeur`,`lots_infos_completes`.`id_voiture` AS `id_voiture`,`lots_infos_completes`.`nom` AS `nom`,`lots_infos_completes`.`date_debut` AS `date_debut`,`lots_infos_completes`.`date_fin` AS `date_fin`,`lots_infos_completes`.`id_public` AS `id_public`,`lots_infos_completes`.`image_voiture_lib` AS `image_voiture_lib`,`lots_infos_completes`.`libelle` AS `libelle`,`lots_infos_completes`.`type_voiture_lib` AS `type_voiture_lib` from (`lot` join `lots_infos_completes` on(`lot`.`numero` = `lots_infos_completes`.`numero`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lots3`
--

/*!50001 DROP TABLE IF EXISTS `lots3`*/;
/*!50001 DROP VIEW IF EXISTS `lots3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `lots3` AS select `lots2`.`coup_de_coeur` AS `coup_de_coeur`,`lots2`.`id_vente` AS `id_vente`,`lots2`.`numero` AS `numero`,`lots2`.`mise_a_prix` AS `mise_a_prix`,`lots2`.`kilometrage` AS `kilometrage`,`lots2`.`couleur` AS `couleur`,`lots2`.`VIN` AS `VIN`,`lots2`.`modele` AS `modele`,`lots2`.`annee_construction` AS `annee_construction`,`lots2`.`cylindre` AS `cylindre`,`lots2`.`id_type_voiture` AS `id_type_voiture`,`lots2`.`id_categorie_collection` AS `id_categorie_collection`,`lots2`.`id_constructeur` AS `id_constructeur`,`lots2`.`id_voiture` AS `id_voiture`,`lots2`.`nom` AS `nom`,`lots2`.`date_debut` AS `date_debut`,`lots2`.`date_fin` AS `date_fin`,`lots2`.`id_public` AS `id_public`,`lots2`.`image_voiture_lib` AS `image_voiture_lib`,`lots2`.`libelle` AS `libelle`,`lots2`.`type_voiture_lib` AS `type_voiture_lib` from `lots2` group by `lots2`.`numero` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lots4`
--

/*!50001 DROP TABLE IF EXISTS `lots4`*/;
/*!50001 DROP VIEW IF EXISTS `lots4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `lots4` AS select distinct `lots2`.`coup_de_coeur` AS `coup_de_coeur`,`lots2`.`id_vente` AS `id_vente`,`lots2`.`numero` AS `numero`,`lots2`.`mise_a_prix` AS `mise_a_prix`,`lots2`.`kilometrage` AS `kilometrage`,`lots2`.`couleur` AS `couleur`,`lots2`.`VIN` AS `VIN`,`lots2`.`modele` AS `modele`,`lots2`.`annee_construction` AS `annee_construction`,`lots2`.`cylindre` AS `cylindre`,`lots2`.`id_type_voiture` AS `id_type_voiture`,`lots2`.`id_categorie_collection` AS `id_categorie_collection`,`lots2`.`id_constructeur` AS `id_constructeur`,`lots2`.`id_voiture` AS `id_voiture`,`lots2`.`nom` AS `nom`,`lots2`.`date_debut` AS `date_debut`,`lots2`.`date_fin` AS `date_fin`,`lots2`.`id_public` AS `id_public`,`lots2`.`image_voiture_lib` AS `image_voiture_lib`,`lots2`.`libelle` AS `libelle`,`lots2`.`type_voiture_lib` AS `type_voiture_lib` from `lots2` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lots_coup_de_coeur`
--

/*!50001 DROP TABLE IF EXISTS `lots_coup_de_coeur`*/;
/*!50001 DROP VIEW IF EXISTS `lots_coup_de_coeur`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `lots_coup_de_coeur` AS select `lot`.`coup_de_coeur` AS `coup_de_coeur` from `lot` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lots_infos_completes`
--

/*!50001 DROP TABLE IF EXISTS `lots_infos_completes`*/;
/*!50001 DROP VIEW IF EXISTS `lots_infos_completes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `lots_infos_completes` AS select `ld`.`coup_de_coeur` AS `coup_de_coeur`,`ld`.`id_vente` AS `id_vente`,`ld`.`numero` AS `numero`,`ld`.`mise_a_prix` AS `mise_a_prix`,`ld`.`kilometrage` AS `kilometrage`,`ld`.`couleur` AS `couleur`,`ld`.`VIN` AS `VIN`,`ld`.`modele` AS `modele`,`ld`.`annee_construction` AS `annee_construction`,`ld`.`cylindre` AS `cylindre`,`ld`.`id_type_voiture` AS `id_type_voiture`,`ld`.`id_categorie_collection` AS `id_categorie_collection`,`ld`.`id_constructeur` AS `id_constructeur`,`ld`.`id_voiture` AS `id_voiture`,`c`.`nom` AS `nom`,`c`.`date_debut` AS `date_debut`,`c`.`date_fin` AS `date_fin`,`viv`.`id_public` AS `id_public`,`viv`.`libelle` AS `image_voiture_lib`,`cc`.`libelle` AS `libelle`,`tv`.`libelle` AS `type_voiture_lib` from ((((`lot_details` `ld` left join `vue_images_voitures` `viv` on(`ld`.`id_vente` = `viv`.`id_vente` and `ld`.`numero` = `viv`.`numero`)) join `constructeur` `c` on(`ld`.`id_constructeur` = `c`.`id_constructeur`)) join `categorie_collection` `cc` on(`cc`.`id_categorie_collection` = `ld`.`id_categorie_collection`)) join `type_voiture` `tv` on(`tv`.`id_type_voiture` = `ld`.`id_type_voiture`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vente_future_a_publier`
--

/*!50001 DROP TABLE IF EXISTS `vente_future_a_publier`*/;
/*!50001 DROP VIEW IF EXISTS `vente_future_a_publier`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `vente_future_a_publier` AS select `vente`.`id_vente` AS `id_vente`,`vente`.`date_debut` AS `date_debut`,`vente`.`date_fin` AS `date_fin`,`vente`.`id_lieu` AS `id_lieu` from `vente` where `vente`.`a_publier` = 1 and `vente`.`date_debut` > current_timestamp() */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vente_passe_a_publier`
--

/*!50001 DROP TABLE IF EXISTS `vente_passe_a_publier`*/;
/*!50001 DROP VIEW IF EXISTS `vente_passe_a_publier`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `vente_passe_a_publier` AS select `vente`.`id_vente` AS `id_vente`,`vente`.`a_publier` AS `a_publier`,`vente`.`date_debut` AS `date_debut`,`vente`.`date_fin` AS `date_fin`,`vente`.`id_lieu` AS `id_lieu` from `vente` where `vente`.`date_fin` < current_timestamp() and `vente`.`a_publier` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_images_voitures`
--

/*!50001 DROP TABLE IF EXISTS `vue_images_voitures`*/;
/*!50001 DROP VIEW IF EXISTS `vue_images_voitures`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `vue_images_voitures` AS select `i`.`id_image` AS `id_image`,`i`.`id_public` AS `id_public`,`i`.`libelle` AS `libelle`,`iv`.`id_vente` AS `id_vente`,`iv`.`numero` AS `numero` from (`image` `i` join `image_voiture` `iv` on(`i`.`id_image` = `iv`.`id_image`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_lot`
--

/*!50001 DROP TABLE IF EXISTS `vue_lot`*/;
/*!50001 DROP VIEW IF EXISTS `vue_lot`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `vue_lot` AS select `lot`.`id_vente` AS `id_vente`,`lot`.`numero` AS `numero`,`lot`.`a_publier` AS `a_publier`,`lot`.`mise_a_prix` AS `mise_a_prix`,`lot`.`kilometrage` AS `kilometrage`,`lot`.`couleur` AS `couleur`,`lot`.`id_voiture` AS `id_voiture` from `lot` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_utilisateurs`
--

/*!50001 DROP TABLE IF EXISTS `vue_utilisateurs`*/;
/*!50001 DROP VIEW IF EXISTS `vue_utilisateurs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `vue_utilisateurs` AS select distinct `u`.`id_utilisateur` AS `id_utilisateur`,`u`.`identifiant` AS `identifiant`,`u`.`sel` AS `sel`,`u`.`SHA` AS `SHA`,`u`.`Compte_bloque` AS `Compte_bloque`,`u`.`Compte_desactiver` AS `Compte_desactiver`,`u`.`tentative_rater` AS `tentative_rater`,`ue`.`id_utilisateur_extranet` AS `id_utilisateur_extranet`,`ue`.`est_vendeur` AS `est_vendeur`,`ue`.`est_acheteur` AS `est_acheteur` from (`Utilisateurs` `u` join `utilisateurs_extranet` `ue` on(`u`.`id_utilisateur` = `ue`.`id_utilisateur_extranet`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 10:09:46
