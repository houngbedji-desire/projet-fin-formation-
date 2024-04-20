-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 18 avr. 2024 à 12:39
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `socialnetwork`
--

-- --------------------------------------------------------

--
-- Structure de la table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
CREATE TABLE IF NOT EXISTS `friendship` (
  `user1_id` int NOT NULL,
  `user2_id` int NOT NULL,
  `friendship_status` int NOT NULL,
  KEY `user1_id` (`user1_id`),
  KEY `user2_id` (`user2_id`)
) ;
-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_caption` text NOT NULL,
  `post_time` timestamp NOT NULL,
  `post_public` char(1) NOT NULL,
  `post_by` int NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `post_by` (`post_by`)
);
--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`post_id`, `post_caption`, `post_time`, `post_public`, `post_by`) VALUES
(1, 'essai', '2024-04-18 12:22:54', 'Y', 1),
(2, 'essaie de publication', '2024-04-18 12:30:41', 'Y', 2),
(3, 'Regis INON-ABININ has changed his profile picture.', '2024-04-18 12:31:05', 'N', 2),
(4, 'Regis INON-ABININ has changed his profile picture.', '2024-04-18 12:31:59', 'N', 2),
(5, '', '2024-04-18 12:35:16', 'N', 3),
(6, 'essai 3', '2024-04-18 12:37:05', 'Y', 4),
(7, '', '2024-04-18 12:37:25', 'N', 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_firstname` varchar(20) NOT NULL,
  `user_lastname` varchar(20) NOT NULL,
  `user_nickname` varchar(20) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_gender` char(1) NOT NULL,
  `user_birthdate` date NOT NULL,
  `user_status` char(1) DEFAULT NULL,
  `user_about` text,
  `user_hometown` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `user_nickname`, `user_password`, `user_email`, `user_gender`, `user_birthdate`, `user_status`, `user_about`, `user_hometown`) VALUES
(2, 'Regis', 'INON-ABININ', 'regisjr', '81dc9bdb52d04dc20036dbd8313ed055', 'regisia@gmail.com', 'M', '2001-06-16', 'S', 'super mon profil', 'Cotonou'),
(3, 'Gloria', 'HOUNKPE', 'regisjr', '81dc9bdb52d04dc20036dbd8313ed055', 'regisia1234@gmail.com', 'F', '1996-01-01', 'E', 'dssds', 'Cotonou'),
(4, 'Mariam', 'INON-ABININ', 'regisjr', '81dc9bdb52d04dc20036dbd8313ed055', 'regisia12345@gmail.com', 'F', '1996-01-01', 'S', 'wdf', 'Calavi');

-- --------------------------------------------------------

--
-- Structure de la table `user_phone`
--

DROP TABLE IF EXISTS `user_phone`;
CREATE TABLE IF NOT EXISTS `user_phone` (
  `user_id` int DEFAULT NULL,
  `user_phone` int DEFAULT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `user_phone`
--

INSERT INTO `user_phone` (`user_id`, `user_phone`) VALUES
(3, 60343681);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
