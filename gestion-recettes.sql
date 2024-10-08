-- MySQL dump 10.13  Distrib 8.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_recette
-- ------------------------------------------------------
-- Server version	8.4.0

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


CREATE DATABASE IF NOT EXISTS gestion_recette;
USE gestion_recette;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`nom`) VALUES
('Cuisine Française'),
('Pâtisserie'),
('Cuisine Italienne'),
('Végétarienne'),
('Fast Food'),
('Desserts'),
('Cuisine Japonaise'),
('Cuisine Chinoise'),
('Barbecue'),
('Cuisine Mexicaine');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recettes`
--

DROP TABLE IF EXISTS `recettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recettes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `ingredients` text,
  `categorie_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_categorie` (`categorie_id`),
  CONSTRAINT `fk_categorie` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recettes`
--

LOCK TABLES `recettes` WRITE;
/*!40000 ALTER TABLE `recettes` DISABLE KEYS */;
INSERT INTO `recettes` (`titre`, `type`, `ingredients`, `categorie_id`) VALUES
('Tarte aux pommes', 'Dessert', 'Pommes, Pâte brisée, Sucre, Cannelle', 6),
('Spaghetti Carbonara', 'Plat Principal', 'Spaghetti, Lardons, Oeufs, Parmesan', 3),
('Salade César', 'Entrée', 'Laitue, Poulet, Croutons, Parmesan, Sauce César', 4),
('Sushi Maki', 'Entrée', 'Riz, Algues nori, Poisson, Avocat, Sauce soja', 7),
('Burger maison', 'Plat Principal', 'Boeuf, Pain à burger, Fromage, Salade, Tomates', 5),
('Pizza Margherita', 'Plat Principal', 'Pâte à pizza, Sauce tomate, Mozzarella, Basilic', 3),
('Crêpes sucrées', 'Dessert', 'Farine, Lait, Oeufs, Sucre, Vanille', 2),
('Tacos au poulet', 'Plat Principal', 'Poulet, Tortilla, Légumes, Fromage, Sauce', 10),
('Riz cantonnais', 'Plat Principal', 'Riz, Oeufs, Crevettes, Petits pois, Sauce soja', 8),
('Ratatouille', 'Plat Principal', 'Tomates, Courgettes, Aubergines, Oignons, Poivrons', 4);

/*!40000 ALTER TABLE `recettes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 11:43:24
