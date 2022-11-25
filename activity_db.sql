-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 24 nov. 2022 à 07:34
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `activity_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `id` bigint NOT NULL,
  `activity_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_accessibility` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activity`
--

INSERT INTO `activity` (`id`, `activity_code`, `city`, `image_url`, `link`, `name`, `type`, `image_link`, `level_accessibility`) VALUES
(1, '0b980841-0daf-4e4a-9685-c946ab0618a6', 'Coupvray', NULL, 'https://www.disneylandparis.com/fr-fr/services-visiteurs', 'Disneyland Paris', 'Theme park', 'assets/images/Disneyland.jpeg', 1),
(2, '9a3284c9-36e6-4d7b-b191-a38c3c73747c', 'Les Epesses', NULL, 'https://www.puydufou.com/france/fr/faq', 'Puy du fou', 'Amusement park\'', 'assets/images/Puy du Fou.jpeg', 1),
(3, '8afc8257-92f9-4ec3-be03-9ec82473a33e', 'Chasseneuil-du-Poitou', NULL, 'https://www.futuroscope.com/fr/infos-pratiques/conseils-de-visite?them', 'Futuroscope', 'Amusement Parks and Theme Parks', 'assets/images/Futuroscope.jpeg', 1),
(4, '81f38ba9-706e-4608-b3ad-c22e6754a8e5', 'Plailly', NULL, 'https://www.parcasterix.fr/infos-pratiques/accessibilite-handicap', 'Parc Astérix', 'Theme park', 'assets/images/Parc Astérix.jpeg', 1),
(5, 'ba9495c9-76ab-4176-8f73-d028d98e9d05', 'Antibes', NULL, 'https://www.marineland.fr/preparer-votre-visite/informations-pratiques/comment-venir', 'Marineland', 'Theme park', 'assets/images/Marineland.jpeg', 1),
(6, '74885c60-8108-430e-b568-82e4e6851e43', 'Fréjus', NULL, 'https://www.aqualand.fr/frejus/', 'Aqualand', '\r\n\r\nWater parks', 'assets/images/Aqualand.jpeg', 1),
(7, '', 'Saint-Ours-les-Roches', NULL, 'https://www.vulcania.com/service/accessibilite/', 'Vulcania', NULL, 'assets/images/Vulcania.jpg', 1),
(8, '', 'Brest', NULL, 'https://www.oceanopolis.com/preparer-votre-visite/accessibilite', 'Oceanopolis', '\r\naquariums', 'assets/images/Oceanopolis.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
