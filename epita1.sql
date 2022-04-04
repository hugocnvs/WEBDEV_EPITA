-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 04 avr. 2022 à 12:21
-- Version du serveur :  8.0.28-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `epita1`
--

-- --------------------------------------------------------

--
-- Structure de la table `association`
--

CREATE TABLE `association` (
  `Ass_Id` int NOT NULL,
  `Ass_Nom` varchar(128) NOT NULL,
  `Ass_Adr` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `association`
--

INSERT INTO `association` (`Ass_Id`, `Ass_Nom`, `Ass_Adr`) VALUES
(1, 'EPITA', '12 rue du lac'),
(2, 'AS_GOLF', '32 rue du golf'),
(3, 'EPITA ONE', '14 rue de Barehien'),
(4, 'ST Georges', 'Rue Watteau, Nogent');

-- --------------------------------------------------------

--
-- Structure de la table `CNI`
--

CREATE TABLE `CNI` (
  `CNI_Id` int NOT NULL,
  `Mem_Id` int NOT NULL,
  `CNI_Num` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CNI_Expi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `CNI`
--

INSERT INTO `CNI` (`CNI_Id`, `Mem_Id`, `CNI_Num`, `CNI_Expi`) VALUES
(3, 4, '123456789', '2025-06-13'),
(4, 6, '987654321', '2024-03-03'),
(5, 8, '547854678', '2021-12-22'),
(6, 9, '234575345', '2024-01-12'),
(7, 10, '896547656', '2026-11-14'),
(8, 11, '1982645736', '2023-09-19'),
(9, 12, '102938476', '2025-07-08'),
(10, 13, '6928371039', '2025-01-19'),
(11, 14, '628397635', '2022-01-11'),
(12, 15, '923795375', '2021-01-21');

-- --------------------------------------------------------

--
-- Structure de la table `cotisation`
--

CREATE TABLE `cotisation` (
  `ADH_Id` int NOT NULL,
  `ADH_Associd` int NOT NULL,
  `ADH_Memid` int NOT NULL,
  `ADH_Rec` int NOT NULL,
  `ADH_Dateexpi` date DEFAULT NULL,
  `ADH_Prix` int NOT NULL,
  `ADH_Isactual` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cotisation`
--

INSERT INTO `cotisation` (`ADH_Id`, `ADH_Associd`, `ADH_Memid`, `ADH_Rec`, `ADH_Dateexpi`, `ADH_Prix`, `ADH_Isactual`) VALUES
(1, 1, 3, 12, '2022-06-10', 55, 1),
(2, 1, 7, 12, '2022-04-10', 55, 1),
(3, 1, 11, 12, '2021-01-22', 55, 0),
(4, 1, 17, 12, '2023-12-01', 55, 1),
(5, 2, 4, 6, '2023-11-12', 20, 0),
(6, 2, 12, 6, '2022-01-30', 20, 1),
(7, 2, 16, 6, '0203-02-09', 20, 0),
(8, 3, 5, 12, '2019-08-17', 70, 0),
(9, 3, 8, 12, '2025-01-25', 70, 0),
(10, 3, 9, 12, '2047-11-11', 70, 1),
(11, 3, 13, 12, '2009-09-19', 70, 1),
(12, 4, 6, 8, '2022-09-19', 15, 1),
(13, 4, 10, 8, '2024-10-22', 15, 1),
(14, 4, 14, 8, '2021-01-01', 15, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Membres`
--

CREATE TABLE `Membres` (
  `Mem_Id` int NOT NULL,
  `Ass_Id` int NOT NULL,
  `Mem_Nom` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Mem_Prenom` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Mem_Age` int NOT NULL,
  `Mem_Genre` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Mem_Adr` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Mem_Ispres` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Membres`
--

INSERT INTO `Membres` (`Mem_Id`, `Ass_Id`, `Mem_Nom`, `Mem_Prenom`, `Mem_Age`, `Mem_Genre`, `Mem_Adr`, `Mem_Ispres`) VALUES
(3, 1, 'Duclos', 'Jean', 22, 'M', '123 rue de Nogent', 0),
(4, 2, 'Fontaine', 'Jeanne', 19, 'F', '32 rue du golf', 1),
(5, 3, 'Jacque', 'Pierre', 26, 'M', '34 rue du Prés', 0),
(6, 4, 'Valgrind', 'Henri', 36, 'M', '47 rue du caillou', 1),
(7, 1, 'Vladou', 'Thiery', 47, 'M', '47 rue du restaurant', 0),
(8, 3, 'Dubai', 'Micheline', 56, 'F', '99 rue de la fontaine', 1),
(9, 3, 'Jaquette', 'Paulette', 98, 'F', '13 rue de l\'Ephad', 1),
(10, 4, 'Dupuis', 'Rachelle', 56, 'F', '52 rue de l\'eglise', 1),
(11, 1, 'Taupe', 'Paul', 16, 'M', '1 rue de l\'accensseur', 0),
(12, 2, 'Pierre', 'Paul', 36, 'M', '12 rue de la biche', 1),
(13, 3, 'Chausson', 'Thiery', 22, 'M', '14 rue de la pantoufle', 1),
(14, 4, 'Davison', 'Harlette', 102, 'F', '36 rue de la retraite', 1),
(15, 1, 'Avenue', 'Pierette', 73, 'F', '22 place de la rue', 1),
(16, 2, 'Duclos', 'Jean', 22, 'M', '123 rue de Nogent', 1),
(17, 1, 'Dupuis', 'Rachelle', 56, 'F', '52 rue de l\'eglise', 0);

-- --------------------------------------------------------

--
-- Structure de la table `web_co`
--

CREATE TABLE `web_co` (
  `id` int NOT NULL,
  `CO_Nom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CO_Prenom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CO_Username` text NOT NULL,
  `CO_Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `web_co`
--

INSERT INTO `web_co` (`id`, `CO_Nom`, `CO_Prenom`, `CO_Username`, `CO_Password`) VALUES
(4, 'Verstappen', 'Max', 'Max-verst', 'maxmax'),
(9, 'admin', 'admin', 'admin', '99c3aa20f9821a4530734b4e980903c14aeda7a5d2168a8a2a9c9691d9d3e103dfe1852a0494fbfcc87ea5962e81cfbfad900075bfdae123f3ea9de02a1bf407');

-- --------------------------------------------------------

--
-- Structure de la table `web_message`
--

CREATE TABLE `web_message` (
  `MS_Id` int NOT NULL,
  `MS_Nom` text NOT NULL,
  `MS_Prenom` text NOT NULL,
  `MS_Objet` text NOT NULL,
  `MS_Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `web_message`
--

INSERT INTO `web_message` (`MS_Id`, `MS_Nom`, `MS_Prenom`, `MS_Objet`, `MS_Message`) VALUES
(5, 'Test', 'test', 'test', 'test'),
(6, 'Baydat', 'Baydat', 'Baydat', 'Baydat cousin, ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`Ass_Id`);

--
-- Index pour la table `CNI`
--
ALTER TABLE `CNI`
  ADD PRIMARY KEY (`CNI_Id`);

--
-- Index pour la table `cotisation`
--
ALTER TABLE `cotisation`
  ADD PRIMARY KEY (`ADH_Id`);

--
-- Index pour la table `Membres`
--
ALTER TABLE `Membres`
  ADD PRIMARY KEY (`Mem_Id`);

--
-- Index pour la table `web_co`
--
ALTER TABLE `web_co`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `web_message`
--
ALTER TABLE `web_message`
  ADD PRIMARY KEY (`MS_Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `association`
--
ALTER TABLE `association`
  MODIFY `Ass_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `CNI`
--
ALTER TABLE `CNI`
  MODIFY `CNI_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `cotisation`
--
ALTER TABLE `cotisation`
  MODIFY `ADH_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `Membres`
--
ALTER TABLE `Membres`
  MODIFY `Mem_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `web_co`
--
ALTER TABLE `web_co`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `web_message`
--
ALTER TABLE `web_message`
  MODIFY `MS_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
