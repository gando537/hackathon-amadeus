-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 24 nov. 2022 à 16:50
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
(1, '0b980841-0daf-4e4a-9685-c946ab0618a6', 'Coupvray', NULL, 'https://www.disneylandparis.com/fr-fr/services-visiteurs', 'Disneyland Paris', 'Theme park', 'assets/images/Disneyland.jpeg', 5),
(2, '9a3284c9-36e6-4d7b-b191-a38c3c73747c', 'Les Epesses', NULL, 'https://www.puydufou.com/france/fr/faq', 'Puy du fou', 'Amusement park', 'assets/images/Puy du Fou.jpeg', 5),
(3, '8afc8257-92f9-4ec3-be03-9ec82473a33e', 'Chasseneuil-du-Poitou', NULL, 'https://www.futuroscope.com/fr/infos-pratiques/conseils-de-visite?them', 'Futuroscope', 'Amusement Parks and Theme Parks', 'assets/images/Futuroscope.jpeg', 5),
(4, '81f38ba9-706e-4608-b3ad-c22e6754a8e5', 'Plailly', NULL, 'https://www.parcasterix.fr/infos-pratiques/accessibilite-handicap', 'Parc Astérix', 'Theme park', 'assets/images/Parc Astérix.jpeg', 5),
(5, 'ba9495c9-76ab-4176-8f73-d028d98e9d05', 'Antibes', NULL, 'https://www.marineland.fr/preparer-votre-visite/informations-pratiques/comment-venir', 'Marineland', 'Theme park', 'assets/images/Marineland.jpeg', 4),
(6, '74885c60-8108-430e-b568-82e4e6851e43', 'Fréjus', NULL, 'https://www.aqualand.fr/frejus/', 'Aqualand', 'Water parks', 'assets/images/Aqualand.jpeg', 4),
(7, '', 'Saint-Ours-les-Roches', NULL, 'https://www.vulcania.com/service/accessibilite/', 'Vulcania', 'Theme park', 'assets/images/Vulcania.jpg', 3),
(8, '', 'Brest', NULL, 'https://www.oceanopolis.com/preparer-votre-visite/accessibilite', 'Oceanopolis', 'Aquariums', 'assets/images/Oceanopolis.jpg', 2),
(9, '', 'Dolancourt', NULL, 'https://www.nigloland.fr/accessibilite', 'Nigloland', 'Amusement park', 'assets/images/nigloland.jpg', 5),
(10, '', 'Toulouse', NULL, 'https://www.cite-espace.com/visiter/accessibilite/', 'Cité de l\'espace', 'Amusement park', 'assets/images/citedelespace.jpg', 4),
(11, '', 'Jeanménil', NULL, 'https://www.fraispertuis-city.fr/preparer-ma-journee/situation-de-handicap/', 'Fraispertuis City', 'Theme park', 'assets/images/fraispertuiscity.jpg', 3),
(12, '', 'Dennebrœucq', NULL, 'https://www.dennlys-parc.com/services.php', 'Dennlys parc', 'Amusement park', 'assets/images/dennlysparc.png', 3),
(13, '', 'Ermenonville', NULL, 'https://www.merdesable.fr/handicap-et-accessibilite', 'La Mer de Sable', 'Theme park', 'assets/images/lamerdusable.jpg\r\n', 2),
(14, '', 'Creusot', NULL, 'http://parcdescombes.com/preparer-sa-visite/', 'Parc des Combes', 'Amusement park', 'assets/images/parcdescombes.jpeg', 1),
(15, '', 'Avenières', NULL, 'https://www.ooparc.com/fr/188-Walibi_Rhone_Alpes/Infos/Accessibilite/', 'Walibi Rhône-Alpes', 'Amusement park', 'assets/images/walibi.png', 5),
(16, '', 'Rust', NULL, 'https://www.europapark.de/fr/parc-de-loisirs/billets-et-offres/personnes-en-situation-de-handicap\r\n', 'Europa-Park', 'Amusement park', 'assets/images/europapark.jpg', 5),
(17, '', 'Cuges-les-Pins ', NULL, 'https://www.okcorral.fr/okcorral/cms/5-162/accessibilite-psh-et-pmr.dhtml', 'OK Corral', 'Theme park\r\n', 'assets/images/okcorral.jpg', 4),
(18, '', 'Rang-du-Fliers', '', 'https://www.parcbagatelle.com/infos-pratiques/accessibilite', 'Parc Bagatelle', 'Amusement park', 'assets/images/parcbagatelle.jpg\r\n', 2),
(19, '', 'Maizières-lès-Metz', NULL, 'https://www.walygatorparc.com/sudouest/wp-content/uploads/2022/03/WSO-GUIDE-ACCESSIBILITE-2021-WEB.pdf', 'Walygator', 'Amusement park', 'assets/images/walygator.jpg', 1),
(20, '', 'Bretteville-sur-Odon', NULL, NULL, 'Festyland', 'Amusement park', 'assets/images/festyland.jpg', 1),
(21, '', 'Paris', '', 'https://www.louvre.fr/visiter/accessibilite', 'Musée du Louvre', 'Museum', 'assets/images/louvre.jpg', 5),
(22, '', 'Paris', NULL, 'https://www.musee-orsay.fr/fr/vous-etes/visiteurs-individuels/handicap-accessibilite', 'Musée d\'Orsay ', 'Museum', 'assets/images/orsay.jpg', 5),
(23, '', 'Lens', NULL, 'https://www.louvrelens.fr/informations-pratiques/accessibilite/', ' Louvre-Lens', 'Museum', 'assets/images/louvre-lens.jpg', 4),
(24, '', 'Lyon', NULL, 'https://acceslibre.beta.gouv.fr/app/69-lyon/a/musee/erp/musee-des-confluences-2/', 'Musée des Confluences', 'Museum', 'assets/images/confluences.jpg', 3),
(25, '', 'Monteux', NULL, 'https://www.parc-spirou.com/pmr/', 'Parc Spirou', 'Theme park', 'assets/images/parcspirou.jpg', 2),
(26, '', 'Angers', NULL, 'https://www.terrabotanica.fr/accessibilite/', 'Terra Botanica', 'Theme park', 'assets/images/terrabotanica.jpg', NULL),
(27, '', 'Barcelone', NULL, 'https://www.portaventuraworld.com/pdf/guide-de-accessibilite-pap.pdf', 'PortAventura Park', 'Theme park', 'assets/images/portaventura.jpg', 3),
(28, '', 'Janzé', NULL, 'https://www.enigmaparc.fr/registre-daccessibilite-enigmaparc/', 'Enigma Parc', 'Theme park', 'assets/images/enigmaparc.jpg', 4),
(29, '', 'Rust', NULL, 'https://www.europapark.de/fr/rulantica/billets-et-offres/bon-plans-et-offres/personnes-en-situation-de-handicap', 'Rulantica', 'Water park', 'assets/images/rutlantica.jpg', 3),
(30, '', 'Ungersheim', NULL, 'https://www.parcdupetitprince.com/content/medias/PPP/source/bf29df42-e17f-f9d3-2791-de7a2f83e2b3.pdf', 'Parc du Petit Prince', 'Theme park', 'assets/images/parcdupetitprince.jpg', 3);

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
