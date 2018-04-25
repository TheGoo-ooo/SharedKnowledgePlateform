-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 25 Avril 2018 à 12:43
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jeeproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `date_create` date DEFAULT NULL,
  `date_modif` date DEFAULT NULL,
  `content` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `color` varchar(10) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `image`, `description`, `color`, `parent_id`) VALUES
(1, 'Algèbre linéaire', '', 'Des maths comme il en faut!', '#ff745b', -1),
(2, 'Physique', '', 'De la balistique à la quantique, tout y passe.', '#ff5b7c', -1),
(3, 'Chimie', '', 'Make gold with silver!', '#ff5bcb', -1),
(4, 'Matrices', '', 'Des matrices pour l\'amour de dieu', '#e553ff', -1),
(5, 'Alchimie', '', 'Magic!', '#9253ff', -1),
(6, 'Robotique', '', 'asdf', '#517fff', -1),
(7, 'Illusion', '', 'lol', '#ff745b', -1),
(8, 'Invocation', '', 'demonqiue', '#ff5b7c', -1);

-- --------------------------------------------------------

--
-- Structure de la table `usergroups`
--

CREATE TABLE `usergroups` (
  `usergroup_id` int(11) NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `usergroups`
--

INSERT INTO `usergroups` (`usergroup_id`, `groupname`, `username`) VALUES
(2, 'modo', 'deni'),
(3, 'user', 'luca'),
(4, 'admin', 'super');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `avatar` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`user_id`, `name`, `avatar`, `description`, `password`) VALUES
(3, 'super', NULL, NULL, '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(4, 'luca', NULL, NULL, 'd70f47790f689414789eeff231703429c7f88a10210775906460edbf38589d90'),
(5, 'deni', NULL, NULL, '1831a378efa8272418d2c512f406a3b49758968c1849e741ceafe9a9ff8875c2');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Index pour la table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Index pour la table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`usergroup_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `usergroup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
