-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 26 Mai 2022 à 16:33
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `pfe`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(10) DEFAULT NULL,
  `prenom` varchar(10) DEFAULT NULL,
  `sexe` varchar(7) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `addresse` varchar(100) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `mots_de_passe` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `prenom`, `sexe`, `date_naissance`, `telephone`, `addresse`, `e_mail`, `mots_de_passe`) VALUES
(1, 'ELAZIZ', 'badr', 'homme', '2003-02-17', '+212 74038733', '40 chi 7aja', 'badrperfect@gmail.com', 'azizaziz123');

-- --------------------------------------------------------

--
-- Structure de la table `alopecie`
--

CREATE TABLE IF NOT EXISTS `alopecie` (
  `id_alop` int(11) NOT NULL AUTO_INCREMENT,
  `cuir_chevelu_Sourcils` tinyint(1) NOT NULL,
  `cuir_chevelu_cils` tinyint(1) NOT NULL,
  `cuir_chevelu_ barbe` tinyint(1) NOT NULL,
  `date_apparution` date NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_alop`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `alopecie`
--

INSERT INTO `alopecie` (`id_alop`, `cuir_chevelu_Sourcils`, `cuir_chevelu_cils`, `cuir_chevelu_ barbe`, `date_apparution`, `IP`) VALUES
(1, 0, 0, 0, '2022-04-05', 2);

-- --------------------------------------------------------

--
-- Structure de la table `constipation`
--

CREATE TABLE IF NOT EXISTS `constipation` (
  `frequence` double NOT NULL,
  `id_const` int(11) NOT NULL AUTO_INCREMENT,
  `date_apparution` date NOT NULL,
  `duree` int(11) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_const`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `constipation`
--

INSERT INTO `constipation` (`frequence`, `id_const`, `date_apparution`, `duree`, `IP`) VALUES
(15, 1, '2022-04-14', 1, 2),
(255, 2, '2022-04-14', 15, 2);

-- --------------------------------------------------------

--
-- Structure de la table `cure`
--

CREATE TABLE IF NOT EXISTS `cure` (
  `id_cure` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `type_cure` varchar(50) DEFAULT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `id_RV` int(7) unsigned DEFAULT NULL,
  `toxicnum` int(11) NOT NULL,
  `curenum` int(11) NOT NULL,
  PRIMARY KEY (`id_cure`),
  KEY `IP` (`IP`),
  KEY `id_RV` (`id_RV`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `cure`
--

INSERT INTO `cure` (`id_cure`, `type_cure`, `IP`, `id_RV`, `toxicnum`, `curenum`) VALUES
(1, 'rouge', 2, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `diarrhees`
--

CREATE TABLE IF NOT EXISTS `diarrhees` (
  `id_diar` int(11) NOT NULL AUTO_INCREMENT,
  `nbre_selles` int(11) NOT NULL,
  `aspect` text NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  `duree` int(11) NOT NULL,
  PRIMARY KEY (`id_diar`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `dossier_medical`
--

CREATE TABLE IF NOT EXISTS `dossier_medical` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `IP` int(10) unsigned DEFAULT NULL,
  `dossier` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `etat_patient`
--

CREATE TABLE IF NOT EXISTS `etat_patient` (
  `id_etat` int(11) NOT NULL AUTO_INCREMENT,
  `plaintes` tinyint(1) NOT NULL,
  `fatigue` tinyint(1) NOT NULL,
  `capacite_de_travailler` tinyint(1) NOT NULL,
  `Activite_quotidiennes` tinyint(1) NOT NULL,
  `autonomie` tinyint(1) NOT NULL,
  `appetit` tinyint(1) NOT NULL,
  `douleur` tinyint(1) NOT NULL,
  `anxiety/depression` tinyint(1) NOT NULL,
  `date_etat` date NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_etat`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `etat_patient`
--

INSERT INTO `etat_patient` (`id_etat`, `plaintes`, `fatigue`, `capacite_de_travailler`, `Activite_quotidiennes`, `autonomie`, `appetit`, `douleur`, `anxiety/depression`, `date_etat`, `IP`) VALUES
(1, 1, 0, 0, 0, 1, 0, 1, 1, '2022-04-13', 2);

-- --------------------------------------------------------

--
-- Structure de la table `fievre`
--

CREATE TABLE IF NOT EXISTS `fievre` (
  `thermometre` tinyint(1) NOT NULL,
  `temperature` double NOT NULL,
  `id_fievre` int(11) NOT NULL AUTO_INCREMENT,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  `duree` int(11) NOT NULL,
  PRIMARY KEY (`id_fievre`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id_grp` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `IP` int(10) unsigned DEFAULT NULL,
  `id_medcin` int(10) unsigned DEFAULT NULL,
  `date_rassemblement` date DEFAULT NULL,
  PRIMARY KEY (`id_grp`),
  KEY `IP` (`IP`),
  KEY `id_medcin` (`id_medcin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `indicateur`
--

CREATE TABLE IF NOT EXISTS `indicateur` (
  `id_ind` int(11) NOT NULL AUTO_INCREMENT,
  `id_mucite` int(11) NOT NULL,
  `ind` varchar(20) NOT NULL,
  `forme` text NOT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_ind`),
  KEY `id_mucite` (`id_mucite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `infilation_ademateuse`
--

CREATE TABLE IF NOT EXISTS `infilation_ademateuse` (
  `id_infiltration` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_infiltration`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mainsetpieds`
--

CREATE TABLE IF NOT EXISTS `mainsetpieds` (
  `id_mp` int(11) NOT NULL AUTO_INCREMENT,
  `douleur` tinyint(1) NOT NULL,
  `impact_act` text NOT NULL,
  `dysesthesie` tinyint(1) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_mp`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `medcin`
--

CREATE TABLE IF NOT EXISTS `medcin` (
  `id_medcin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(10) DEFAULT NULL,
  `prenom` varchar(10) DEFAULT NULL,
  `sexe` varchar(7) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `addresse` varchar(100) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `mots_de_passe` varchar(100) DEFAULT NULL,
  `picture` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_medcin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `medcin`
--

INSERT INTO `medcin` (`id_medcin`, `nom`, `prenom`, `sexe`, `date_naissance`, `telephone`, `addresse`, `e_mail`, `mots_de_passe`, `picture`) VALUES
(1, 'badr', 'eddine', 'homme', '2003-02-17', '+212 74038733', '(erojgerghr', 'lknth@hkjn,hkioh', 'eifoehoe''zg', ''),
(3, 'laghridat', 'hasnae', 'femme', '2003-02-20', '0674038733', '40 IMM C RES ELYASSMINE QU FRANCE SAFI', 'zanbou3@gmail.com', 'eskjuiesf', '');

-- --------------------------------------------------------

--
-- Structure de la table `mucite`
--

CREATE TABLE IF NOT EXISTS `mucite` (
  `id_mucite` int(11) NOT NULL AUTO_INCREMENT,
  `mucite_grade` int(11) NOT NULL,
  `aphte` tinyint(1) NOT NULL,
  `herpes` tinyint(1) NOT NULL,
  `gingivte` tinyint(1) NOT NULL,
  `douleur` tinyint(1) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_mucite`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `nauseeouvomissement`
--

CREATE TABLE IF NOT EXISTS `nauseeouvomissement` (
  `id_nv` int(11) NOT NULL AUTO_INCREMENT,
  `nbr_ep` int(11) NOT NULL,
  `nbr_repas` int(11) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  `duree` int(11) NOT NULL,
  PRIMARY KEY (`id_nv`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `neurologique_issue`
--

CREATE TABLE IF NOT EXISTS `neurologique_issue` (
  `id_issue` int(11) NOT NULL AUTO_INCREMENT,
  `picotement` tinyint(1) NOT NULL,
  `fourmillement` tinyint(1) NOT NULL,
  `dysethesies` tinyint(1) NOT NULL,
  `brulure` tinyint(1) NOT NULL,
  `escaliers_diff` tinyint(1) NOT NULL,
  `doits_ext_diff` tinyint(1) NOT NULL,
  `topologie` varchar(30) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_issue`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ongles`
--

CREATE TABLE IF NOT EXISTS `ongles` (
  `id_ongles` int(11) NOT NULL AUTO_INCREMENT,
  `inflammation` tinyint(1) NOT NULL,
  `purulure` tinyint(1) NOT NULL,
  `chaude` tinyint(1) NOT NULL,
  `douleureuse` tinyint(1) NOT NULL,
  `rouge` tinyint(1) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_ongles`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `IP` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(10) DEFAULT NULL,
  `prenom` varchar(10) DEFAULT NULL,
  `sexe` varchar(7) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `addresse` varchar(100) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `mots_de_passe` varchar(100) DEFAULT NULL,
  `picture` varchar(1000) NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `patient`
--

INSERT INTO `patient` (`IP`, `nom`, `prenom`, `sexe`, `date_naissance`, `telephone`, `addresse`, `e_mail`, `mots_de_passe`, `picture`) VALUES
(2, 'akali', 'fatima', 'femme', '1999-12-14', '161494651561615', 'quartier ANAS', 'akali@gmail.com', 'heeeeeeeeeeeeeeeeh', ''),
(3, 'ezfhuoeho', 'ezbjkezyez', 'homme', '2022-05-09', 'fezbkfegyygez', 'azyazdyguag', 'uefuigzezf', 'eskjuiesf', '');

-- --------------------------------------------------------

--
-- Structure de la table `rash_cutanee`
--

CREATE TABLE IF NOT EXISTS `rash_cutanee` (
  `id_rash` int(11) NOT NULL AUTO_INCREMENT,
  `surface_atteinte` text NOT NULL,
  `chronologie` tinyint(1) NOT NULL,
  `dermatite_simple` tinyint(1) NOT NULL,
  `surinfection_bacterienne` tinyint(1) NOT NULL,
  `surinfection_mycosique` tinyint(1) NOT NULL,
  `impact_act` tinyint(1) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_rash`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE IF NOT EXISTS `reclamation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IP` int(10) unsigned DEFAULT NULL,
  `reclamation` text,
  `vue` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `reclamation`
--

INSERT INTO `reclamation` (`id`, `IP`, `reclamation`, `vue`, `date`) VALUES
(2, 2, 'cure non enregistré', 0, '2022-12-08');

-- --------------------------------------------------------

--
-- Structure de la table `rendez_vous`
--

CREATE TABLE IF NOT EXISTS `rendez_vous` (
  `id_rendez_vous` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `addresse_hopital` varchar(100) DEFAULT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date` date NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id_rendez_vous`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `rendez_vous`
--

INSERT INTO `rendez_vous` (`id_rendez_vous`, `addresse_hopital`, `IP`, `date`, `details`) VALUES
(1, 'mohammed 5', 2, '2022-05-11', 'heeeeeeeeeeeeeeeeh'),
(4, 'loubilouss', 2, '2022-02-02', 'boobies'),
(6, 'mohamed6', 2, '2022-05-05', 'aaa3'),
(7, 'mohamed7', 2, '2022-06-15', 'aaa7'),
(8, 'mohamed7', 2, '2022-06-15', 'aaa7');

-- --------------------------------------------------------

--
-- Structure de la table `signe_ass`
--

CREATE TABLE IF NOT EXISTS `signe_ass` (
  `id_signe` int(11) NOT NULL AUTO_INCREMENT,
  `signe` varchar(100) NOT NULL,
  `duree` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_signe`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `toc_arthromyalgique`
--

CREATE TABLE IF NOT EXISTS `toc_arthromyalgique` (
  `id_arthr` int(11) NOT NULL AUTO_INCREMENT,
  `duree_evolution` int(11) NOT NULL,
  `topologie` text NOT NULL,
  `crampes_musculaires` tinyint(1) NOT NULL,
  `douleurs_diffuses` tinyint(1) NOT NULL,
  `arthralgies` tinyint(1) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_arthr`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `toubles_sexuelles`
--

CREATE TABLE IF NOT EXISTS `toubles_sexuelles` (
  `id_tr` int(11) NOT NULL AUTO_INCREMENT,
  `secheresse` tinyint(1) NOT NULL,
  `demangeaisons_genital` tinyint(1) NOT NULL,
  `ecoulement_anormal` tinyint(1) NOT NULL,
  `incomfort_intime` tinyint(1) NOT NULL,
  `dyspareunie` tinyint(1) NOT NULL,
  `gynecomastie` tinyint(1) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_tr`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `tox_gonadique`
--

CREATE TABLE IF NOT EXISTS `tox_gonadique` (
  `id_gon` int(11) NOT NULL AUTO_INCREMENT,
  `cure_nbr` int(11) NOT NULL,
  `irregularite_cycle` tinyint(1) NOT NULL,
  `modification_rythm/quantite` tinyint(1) NOT NULL,
  `interruption_des_regles` tinyint(1) NOT NULL,
  `derivation_ostrogenique` tinyint(1) NOT NULL,
  `IP` int(10) unsigned DEFAULT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_gon`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `tox_oculaire`
--

CREATE TABLE IF NOT EXISTS `tox_oculaire` (
  `IP` int(10) unsigned DEFAULT NULL,
  `id_oc` int(11) NOT NULL AUTO_INCREMENT,
  `rougeur` tinyint(1) NOT NULL,
  `larmoiement` tinyint(1) NOT NULL,
  `oedeme` tinyint(1) NOT NULL,
  `sensation_picotement` tinyint(1) NOT NULL,
  `date_apparution` date NOT NULL,
  PRIMARY KEY (`id_oc`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `updates`
--

CREATE TABLE IF NOT EXISTS `updates` (
  `id_update` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  `type_utilisateur` varchar(10) DEFAULT NULL,
  `commentaire` varchar(100) DEFAULT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `updates`
--

INSERT INTO `updates` (`id_update`, `nom`, `type_utilisateur`, `commentaire`, `update_date`) VALUES
(1, 'ELAZIZ15', 'patient', 'Le/la patient ELAZIZ15a Ã©tÃ© supprimÃ©(e)', '2022-04-20 10:36:18'),
(2, 'badrELAZIZ', 'patient', 'Le/la patient badrELAZIZa Ã©tÃ© supprimÃ©(e)', '2022-04-20 10:58:08'),
(3, 'memehmeh', 'patient', 'Le/la patient memehmeha Ã©tÃ© ajoutÃ©(e)', '2022-04-21 09:37:48'),
(4, '', 'patient', 'nom: -> bouzandoufa', '2022-04-21 09:47:57'),
(5, 'ajkbzdbazoiheiudn', 'patient', 'Le/la patient ajkbzdbazoiheiudna Ã©tÃ© ajoutÃ©(e)', '2022-04-21 09:55:49'),
(7, '', 'patient', 'prenom: -> elaziz', '2022-04-21 10:12:46'),
(8, '', 'patient', 'nom: -> yuvytv', '2022-04-21 10:13:04'),
(9, 'eddinebouzandouf', 'patient', 'Le/la patient eddinebouzandoufa Ã©tÃ© supprimÃ©(e)', '2022-04-21 10:13:16'),
(10, '', 'patient', 'prenom: -> fatima', '2022-04-28 13:12:31'),
(11, '', 'patient', 'nom: -> akali', '2022-04-28 13:13:04'),
(12, '', 'patient', 'nom: -> chi7aja', '2022-05-09 09:42:51'),
(13, '', 'patient', 'nom: -> akali', '2022-05-09 09:44:09'),
(14, '', 'patient', 'e_mail: -> akali@gmail.com', '2022-05-10 10:08:52'),
(15, '', 'patient', 'addresse: -> quartier ANAS', '2022-05-12 09:36:27');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `alopecie`
--
ALTER TABLE `alopecie`
  ADD CONSTRAINT `alopecie_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `constipation`
--
ALTER TABLE `constipation`
  ADD CONSTRAINT `constipation_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `cure`
--
ALTER TABLE `cure`
  ADD CONSTRAINT `cure_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`),
  ADD CONSTRAINT `cure_ibfk_2` FOREIGN KEY (`id_RV`) REFERENCES `rendez_vous` (`id_rendez_vous`);

--
-- Contraintes pour la table `diarrhees`
--
ALTER TABLE `diarrhees`
  ADD CONSTRAINT `diarrhees_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `dossier_medical`
--
ALTER TABLE `dossier_medical`
  ADD CONSTRAINT `dossier_medical_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `etat_patient`
--
ALTER TABLE `etat_patient`
  ADD CONSTRAINT `etat_patient_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `fievre`
--
ALTER TABLE `fievre`
  ADD CONSTRAINT `fievre_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`),
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`id_medcin`) REFERENCES `medcin` (`id_medcin`);

--
-- Contraintes pour la table `indicateur`
--
ALTER TABLE `indicateur`
  ADD CONSTRAINT `indicateur_ibfk_1` FOREIGN KEY (`id_mucite`) REFERENCES `mucite` (`id_mucite`);

--
-- Contraintes pour la table `infilation_ademateuse`
--
ALTER TABLE `infilation_ademateuse`
  ADD CONSTRAINT `infilation_ademateuse_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `mainsetpieds`
--
ALTER TABLE `mainsetpieds`
  ADD CONSTRAINT `mainsetpieds_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `mucite`
--
ALTER TABLE `mucite`
  ADD CONSTRAINT `mucite_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `nauseeouvomissement`
--
ALTER TABLE `nauseeouvomissement`
  ADD CONSTRAINT `nauseeouvomissement_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `neurologique_issue`
--
ALTER TABLE `neurologique_issue`
  ADD CONSTRAINT `neurologique_issue_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `ongles`
--
ALTER TABLE `ongles`
  ADD CONSTRAINT `ongles_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `rash_cutanee`
--
ALTER TABLE `rash_cutanee`
  ADD CONSTRAINT `rash_cutanee_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `reclamation_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD CONSTRAINT `rendez_vous_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `signe_ass`
--
ALTER TABLE `signe_ass`
  ADD CONSTRAINT `signe_ass_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `toc_arthromyalgique`
--
ALTER TABLE `toc_arthromyalgique`
  ADD CONSTRAINT `toc_arthromyalgique_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `toubles_sexuelles`
--
ALTER TABLE `toubles_sexuelles`
  ADD CONSTRAINT `toubles_sexuelles_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `tox_gonadique`
--
ALTER TABLE `tox_gonadique`
  ADD CONSTRAINT `tox_gonadique_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

--
-- Contraintes pour la table `tox_oculaire`
--
ALTER TABLE `tox_oculaire`
  ADD CONSTRAINT `tox_oculaire_ibfk_1` FOREIGN KEY (`IP`) REFERENCES `patient` (`IP`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
