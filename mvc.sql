-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 10 Août 2017 à 11:50
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresses`
--

CREATE TABLE `adresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adresses`
--

INSERT INTO `adresses` (`id`, `user_id`, `country`) VALUES
(1, 1, 'Morocco'),
(2, 2, 'UK');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` varchar(250) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'title1', 'body1', NULL, NULL),
(2, 1, 'title2', 'body2', NULL, NULL),
(3, 2, 'title3', 'body3', NULL, NULL),
(4, 2, 'title4', 'body4', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `body` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `commentable_id`, `commentable_type`) VALUES
(1, 'This is the first comment for the article', 1, 1, 'Article'),
(2, 'I comment to the User username2', 1, 2, 'User');

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `countries`
--

INSERT INTO `countries` (`id`, `country`) VALUES
(1, 'Morocco'),
(2, 'UK');

-- --------------------------------------------------------

--
-- Structure de la table `listcontrollers`
--

CREATE TABLE `listcontrollers` (
  `id` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `listcontrollers`
--

INSERT INTO `listcontrollers` (`id`, `nom`) VALUES
(2, 'Home'),
(3, 'Manage'),
(4, 'Relatinships'),
(5, 'Tester');

-- --------------------------------------------------------

--
-- Structure de la table `methods`
--

CREATE TABLE `methods` (
  `id` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `controller_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `methods`
--

INSERT INTO `methods` (`id`, `nom`, `controller_id`) VALUES
(1, 'add', 2),
(2, 'insert', 2),
(3, 'lister', 2),
(4, 'edit', 2),
(5, 'update', 2),
(6, 'create', 2),
(7, 'destroy', 2),
(8, 'relation', 2),
(9, 'listcontroller', 3),
(10, 'find', 3),
(11, 'tester', 3),
(12, 'profile', 4),
(13, 'country', 4),
(14, 'tester', 5),
(15, 'tester0', 5);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `country_id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `country_id`, `email`, `created_at`, `updated_at`) VALUES
(41, 'bertahatoukerfachi', 0, 'kobchlaba9ich', '2017-08-01 14:34:25', '2017-08-01 14:34:25'),
(2, 'username2', 2, 'email2', NULL, NULL),
(39, 'wwwwwww', 0, 'wwwwwww', '2017-07-31 14:31:37', '2017-07-31 14:31:37'),
(5, 'username5', 0, 'email5', NULL, NULL),
(7, 'dssd', 0, 'email', '2017-07-12 13:57:05', '2017-07-12 13:57:05'),
(37, 'azasza', 0, 'axza', '2017-07-31 13:50:39', '2017-07-31 13:50:39'),
(9, 'dssd', 0, 'email22', '2017-07-12 13:58:26', '2017-07-12 13:58:26'),
(10, 'dssd', 0, 'email00', '2017-07-12 14:00:06', '2017-07-12 14:00:06'),
(17, '123456789', 0, '123456789', '2017-07-31 11:26:17', '2017-07-31 11:26:17'),
(12, 'horyaaaaa', 0, 'emaaaaail', '2017-07-28 14:34:36', '2017-07-28 14:34:36'),
(18, 'not easy', 0, '0123689755', '2017-07-31 11:27:57', '2017-07-31 13:39:54'),
(19, 'Porter_edition', 0, 'email123', '2017-07-31 11:28:03', '2017-07-31 14:16:44'),
(40, 'xgbxg', 0, 'bgxg', '2017-08-01 14:31:35', '2017-08-01 14:31:35'),
(20, '123456789', 0, '123456789', '2017-07-31 11:30:05', '2017-07-31 11:30:05'),
(21, '123456789', 0, '123456789', '2017-07-31 11:31:31', '2017-07-31 11:31:31'),
(22, '0123', 0, '0123', '2017-07-31 11:31:49', '2017-07-31 11:31:49'),
(23, '0123', 0, '0123', '2017-07-31 11:32:41', '2017-07-31 11:32:41'),
(24, '0123', 0, '0123', '2017-07-31 11:32:45', '2017-07-31 11:32:45'),
(25, '0123', 0, '0123', '2017-07-31 11:34:22', '2017-07-31 11:34:22'),
(26, '0123', 0, '0123', '2017-07-31 11:34:25', '2017-07-31 11:34:25'),
(28, '0124578', 0, '0124578', '2017-07-31 12:38:11', '2017-07-31 12:38:11'),
(29, '0124578', 0, '0124578', '2017-07-31 12:38:16', '2017-07-31 12:38:16'),
(30, '0124578', 0, '0124578', '2017-07-31 12:38:20', '2017-07-31 12:38:20'),
(38, 'poster', 0, 'poster', '2017-07-31 13:50:53', '2017-07-31 13:50:53'),
(32, 'tester', 0, 'tester', '2017-07-31 12:44:51', '2017-08-07 07:44:07'),
(1, 'badreddine', 1, 'kglikgkj', NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adresses`
--
ALTER TABLE `adresses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `listcontrollers`
--
ALTER TABLE `listcontrollers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adresses`
--
ALTER TABLE `adresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `listcontrollers`
--
ALTER TABLE `listcontrollers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
