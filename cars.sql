-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 12 sep. 2019 à 09:12
-- Version du serveur :  5.7.21
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `car-fleet`
--

-- --------------------------------------------------------

--
-- Structure de la table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_nb` int(11) NOT NULL,
  `fuel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `car`
--

INSERT INTO `car` (`id`, `brand`, `color`, `seat_nb`, `fuel`, `type`) VALUES
(1, 'JEEP', 'Bleu', 6, 'GPL', 'Citadine'),
(2, 'Nissan', 'rose', 9, 'Electrique', 'Monospace'),
(3, 'Dacia', 'vert', 7, 'Electrique', 'Pick Up'),
(4, 'Mini', 'rouge', 5, 'GPL', 'Utilitaire'),
(5, 'Mercedes', 'bleu', 6, 'Diesel', 'Cabriolet'),
(6, 'KIA', 'vert', 10, 'Hybrid', 'Cabriolet'),
(7, 'Fiat', 'bleu', 6, 'Hybrid', '4X4'),
(8, 'Mini', 'blanc', 8, 'Diesel', 'Citadine'),
(9, 'Nissan', 'noir', 2, 'Electrique', 'Citadine'),
(10, 'Alpha Romeo', 'rose', 9, 'GPL', '4X4'),
(11, 'Mini', 'vert', 2, 'GPL', 'SUV'),
(12, 'Citroen', 'rose', 2, 'Electrique', 'Pick Up'),
(13, 'Ford', 'bleu', 4, 'GPL', 'Pick Up'),
(14, 'KIA', 'gris', 4, 'Diesel', 'SUV'),
(15, 'Mercedes', 'rouge', 3, 'Essence', 'Cabriolet'),
(16, 'Renault', 'rose', 3, 'Electrique', 'Utilitaire'),
(17, 'JEEP', 'rouge', 7, 'Electrique', '4X4'),
(18, 'Chrisler', 'bleu', 9, 'Essence', 'Monospace'),
(19, 'Citroen', 'noir', 9, 'Diesel', 'Citadine'),
(20, 'Peugeot', 'noir', 2, 'Hybrid', 'Berline'),
(21, 'Mercedes', 'rose', 10, 'Diesel', 'Utilitaire'),
(22, 'HYUNDAI', 'noir', 5, 'Hybrid', 'Monospace'),
(23, 'Fiat', 'rose', 7, 'GPL', 'Monospace'),
(24, 'JEEP', 'rose', 4, 'Diesel', 'Monospace'),
(25, 'Fiat', 'rouge', 10, 'Electrique', 'Monospace'),
(26, 'BMW', 'bleu', 1, 'Electrique', 'Cabriolet'),
(27, 'Honda', 'orange', 9, 'Hybrid', 'Berline'),
(28, 'Nissan', 'noir', 6, 'Essence', 'Pick Up'),
(29, 'Maserati', 'noir', 5, 'Essence', 'SUV'),
(30, 'Ford', 'orange', 7, 'Hybrid', 'Utilitaire'),
(31, 'Mini', 'bleu', 7, 'Diesel', 'SUV'),
(32, 'Honda', 'rose', 8, 'GPL', 'Utilitaire'),
(33, 'Honda', 'gris', 7, 'Electrique', 'Utilitaire'),
(34, 'Seat', 'rose', 3, 'Diesel', '4X4'),
(35, 'Ford', 'noir', 2, 'GPL', 'Citadine'),
(36, 'Alpha Romeo', 'noir', 4, 'Essence', '4X4'),
(37, 'Citroen', 'vert', 1, 'Hybrid', 'Pick Up'),
(38, 'Citroen', 'orange', 5, 'Diesel', '4X4'),
(39, 'Peugeot', 'gris', 3, 'Hybrid', 'Cabriolet'),
(40, 'Chrisler', 'gris', 4, 'Essence', 'Monospace'),
(41, 'Mitsubishi', 'vert', 1, 'GPL', 'Citadine'),
(42, 'Mitsubishi', 'bleu', 1, 'Electrique', 'Pick Up'),
(43, 'Nissan', 'orange', 8, 'Essence', 'Utilitaire'),
(44, 'BMW', 'orange', 1, 'GPL', 'Monospace'),
(45, 'Peugeot', 'orange', 8, 'Essence', 'Citadine'),
(46, 'BMW', 'blanc', 10, 'Diesel', 'Monospace'),
(47, 'Seat', 'noir', 8, 'GPL', 'Citadine'),
(48, 'Alpha Romeo', 'rose', 2, 'Essence', 'Monospace'),
(49, 'Renault', 'rouge', 9, 'GPL', '4X4'),
(50, 'Peugeot', 'rouge', 2, 'Diesel', 'SUV'),
(51, 'Mitsubishi', 'gris', 1, 'Essence', 'Berline'),
(52, 'KIA', 'bleu', 3, 'Essence', 'Monospace'),
(53, 'Nissan', 'vert', 6, 'Hybrid', 'Cabriolet'),
(54, 'Dacia', 'blanc', 9, 'Electrique', 'Citadine'),
(55, 'Dacia', 'rouge', 7, 'Diesel', '4X4'),
(56, 'Seat', 'bleu', 3, 'Hybrid', 'Monospace'),
(57, 'Peugeot', 'blanc', 7, 'GPL', 'Berline'),
(58, 'Citroen', 'rose', 1, 'GPL', 'SUV'),
(59, 'Chrisler', 'noir', 7, 'Electrique', 'Monospace'),
(60, 'Audi', 'noir', 10, 'Essence', 'Citadine'),
(61, 'Renault', 'vert', 4, 'Hybrid', 'SUV'),
(62, 'Citroen', 'gris', 8, 'GPL', '4X4'),
(63, 'KIA', 'gris', 1, 'Hybrid', 'Berline'),
(64, 'Mini', 'orange', 9, 'Diesel', 'Citadine'),
(65, 'Alpha Romeo', 'rose', 3, 'Diesel', '4X4'),
(66, 'Peugeot', 'noir', 2, 'Electrique', 'Utilitaire'),
(67, 'Mini', 'blanc', 1, 'Hybrid', 'Monospace'),
(68, 'Seat', 'vert', 6, 'Hybrid', 'Pick Up'),
(69, 'Renault', 'orange', 9, 'Hybrid', 'Monospace'),
(70, 'Alpha Romeo', 'gris', 6, 'Electrique', 'Cabriolet'),
(71, 'Audi', 'blanc', 5, 'Electrique', 'Cabriolet'),
(72, 'KIA', 'vert', 7, 'Diesel', 'Cabriolet'),
(73, 'Chrisler', 'blanc', 1, 'Diesel', 'Cabriolet'),
(74, 'Audi', 'orange', 3, 'GPL', '4X4'),
(75, 'KIA', 'bleu', 10, 'Electrique', 'Monospace'),
(76, 'Land Rover', 'gris', 10, 'Electrique', 'Citadine'),
(77, 'Mini', 'bleu', 8, 'Diesel', 'SUV'),
(78, 'JEEP', 'noir', 1, 'Essence', 'Utilitaire'),
(79, 'Renault', 'vert', 5, 'Electrique', 'Pick Up'),
(80, 'JEEP', 'rose', 1, 'Diesel', 'Cabriolet'),
(81, 'Mitsubishi', 'rose', 3, 'Essence', 'Utilitaire'),
(82, 'Citroen', 'rouge', 4, 'Diesel', 'SUV'),
(83, 'Fiat', 'bleu', 10, 'Hybrid', 'Cabriolet'),
(84, 'KIA', 'bleu', 10, 'Diesel', 'Pick Up'),
(85, 'Renault', 'gris', 1, 'GPL', '4X4'),
(86, 'Citroen', 'rouge', 2, 'Diesel', 'Cabriolet'),
(87, 'Nissan', 'rose', 6, 'Essence', 'SUV'),
(88, 'Audi', 'orange', 10, 'Hybrid', 'Cabriolet'),
(89, 'HYUNDAI', 'rose', 6, 'Essence', '4X4'),
(90, 'Mitsubishi', 'rose', 4, 'Electrique', 'Citadine'),
(91, 'Fiat', 'orange', 9, 'GPL', 'SUV'),
(92, 'Renault', 'rouge', 10, 'Essence', 'Pick Up'),
(93, 'Mitsubishi', 'rouge', 7, 'Essence', 'Citadine'),
(94, 'Peugeot', 'bleu', 5, 'GPL', 'Citadine'),
(95, 'Nissan', 'blanc', 1, 'Hybrid', 'Monospace'),
(96, 'Seat', 'vert', 9, 'GPL', '4X4'),
(97, 'Maserati', 'bleu', 2, 'Hybrid', 'SUV'),
(98, 'Chrisler', 'bleu', 8, 'Hybrid', 'Cabriolet'),
(99, 'Mini', 'rose', 10, 'Hybrid', 'Citadine'),
(100, 'Fiat', 'rose', 1, 'Hybrid', 'SUV'),
(101, 'Renault', 'Vert', 5, 'Essence', 'Berline'),
(102, 'Renault', 'Gris', 5, 'Essence', 'Berline'),
(104, 'Lotus', 'Pourpre', 4, 'Solaire', 'Futuriste');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
