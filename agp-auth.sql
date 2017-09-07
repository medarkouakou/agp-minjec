-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 24, 2017 at 01:32 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agp`
--

-- --------------------------------------------------------

--
-- Table structure for table `acte_recrutements`
--

CREATE TABLE IF NOT EXISTS `acte_recrutements` (
  `acte_recrutements_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_acte_rec` varchar(200) NOT NULL,
  `fiche_acte_rec` varchar(200) DEFAULT NULL,
  `acte_recrutements_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`acte_recrutements_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `acte_recrutements`
--


-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cat` varchar(5) DEFAULT NULL,
  `type_cat` varchar(5) DEFAULT NULL,
  `annee_cat` int(11) DEFAULT NULL,
  `categories_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `categories_has_indices`
--

CREATE TABLE IF NOT EXISTS `categories_has_indices` (
  `categories_categories_id` int(11) NOT NULL,
  `indices_indices_id` int(11) NOT NULL,
  PRIMARY KEY (`categories_categories_id`,`indices_indices_id`),
  KEY `fk_categories_has_indices_indices1_idx` (`indices_indices_id`),
  KEY `fk_categories_has_indices_categories1_idx` (`categories_categories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_has_indices`
--


-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `classes_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cla` int(11) DEFAULT NULL,
  `classes_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`classes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `classes`
--


-- --------------------------------------------------------

--
-- Table structure for table `classe_has_echelons`
--

CREATE TABLE IF NOT EXISTS `classe_has_echelons` (
  `classes_classes_id` int(11) NOT NULL,
  `echelons_echelons_id` int(11) NOT NULL,
  PRIMARY KEY (`classes_classes_id`,`echelons_echelons_id`),
  KEY `fk_classe_has_echelons_echelons1_idx` (`echelons_echelons_id`),
  KEY `fk_classe_has_echelons_classe1_idx` (`classes_classes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classe_has_echelons`
--


-- --------------------------------------------------------

--
-- Table structure for table `classe_has_grades`
--

CREATE TABLE IF NOT EXISTS `classe_has_grades` (
  `classes_classes_id` int(11) NOT NULL,
  `grades_grades_id` int(11) NOT NULL,
  PRIMARY KEY (`classes_classes_id`,`grades_grades_id`),
  KEY `fk_classe_has_grades_grades1_idx` (`grades_grades_id`),
  KEY `fk_classe_has_grades_classe1_idx` (`classes_classes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classe_has_grades`
--


-- --------------------------------------------------------

--
-- Table structure for table `conges`
--

CREATE TABLE IF NOT EXISTS `conges` (
  `conges_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_con` varchar(15) DEFAULT NULL,
  `date_debut_con` date DEFAULT NULL,
  `date_fin_con` date DEFAULT NULL,
  `personnels_personnels_id` int(11) NOT NULL,
  `conges_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`conges_id`,`personnels_personnels_id`),
  KEY `fk_congés_personnels1_idx` (`personnels_personnels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `conges`
--


-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `contacts_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(15) DEFAULT NULL,
  `personnels_personnels_id` int(11) NOT NULL,
  `contacts_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`contacts_id`,`personnels_personnels_id`),
  KEY `fk_contacts_personnels_idx` (`personnels_personnels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `contacts`
--


-- --------------------------------------------------------

--
-- Table structure for table `corps`
--

CREATE TABLE IF NOT EXISTS `corps` (
  `corps_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cor` varchar(100) DEFAULT NULL,
  `corps_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`corps_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `corps`
--


-- --------------------------------------------------------

--
-- Table structure for table `diplomes`
--

CREATE TABLE IF NOT EXISTS `diplomes` (
  `diplomes_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_dip` varchar(200) DEFAULT NULL,
  `annee_dip` int(11) DEFAULT NULL,
  `etablissement_dip` varchar(100) DEFAULT NULL,
  `dernier_dip` tinyint(1) DEFAULT NULL,
  `fonct_pub` tinyint(1) DEFAULT NULL,
  `personnels_personnels_id` int(11) NOT NULL,
  `diplomes_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`diplomes_id`,`personnels_personnels_id`),
  KEY `fk_diplomes_personnels1_idx` (`personnels_personnels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `diplomes`
--


-- --------------------------------------------------------

--
-- Table structure for table `echelons`
--

CREATE TABLE IF NOT EXISTS `echelons` (
  `echelons_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ech` int(11) DEFAULT NULL,
  `type_ech` varchar(45) DEFAULT NULL,
  `echelons_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`echelons_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `echelons`
--


-- --------------------------------------------------------

--
-- Table structure for table `ethnies`
--

CREATE TABLE IF NOT EXISTS `ethnies` (
  `ethnies_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_eth` varchar(100) DEFAULT NULL,
  `ethnies_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ethnies_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ethnies`
--


-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `grades_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) DEFAULT NULL,
  `type_gr` varchar(45) DEFAULT NULL,
  `grades_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`grades_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `grades`
--


-- --------------------------------------------------------

--
-- Table structure for table `grades_has_categories`
--

CREATE TABLE IF NOT EXISTS `grades_has_categories` (
  `grades_grades_id` int(11) NOT NULL,
  `categories_categories_id` int(11) NOT NULL,
  PRIMARY KEY (`grades_grades_id`,`categories_categories_id`),
  KEY `fk_grades_has_categories_categories1_idx` (`categories_categories_id`),
  KEY `fk_grades_has_categories_grades1_idx` (`grades_grades_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades_has_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `indices`
--

CREATE TABLE IF NOT EXISTS `indices` (
  `indices_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ind` int(11) DEFAULT NULL,
  `type_ind` varchar(15) DEFAULT NULL,
  `indices_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`indices_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `indices`
--


-- --------------------------------------------------------

--
-- Table structure for table `nominations`
--

CREATE TABLE IF NOT EXISTS `nominations` (
  `nominations_id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_nom` varchar(255) DEFAULT NULL,
  `date_nom` date DEFAULT NULL,
  `poste_occupes_poste_occupes_id` int(11) NOT NULL,
  `personnels_personnels_id` int(11) NOT NULL,
  `nominations_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`nominations_id`,`poste_occupes_poste_occupes_id`,`personnels_personnels_id`),
  KEY `fk_nominations_poste_occupes1_idx` (`poste_occupes_poste_occupes_id`),
  KEY `fk_nominations_personnels1_idx` (`personnels_personnels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nominations`
--


-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `pays_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_pays` varchar(100) DEFAULT NULL,
  `code_pays` varchar(5) DEFAULT NULL,
  `pays_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pays_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pays`
--


-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `permissions_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_per` varchar(45) DEFAULT NULL,
  `date_depart_per` date DEFAULT NULL,
  `date_retour_per` date DEFAULT NULL,
  `reference_per` varchar(100) DEFAULT NULL,
  `motif_per` text,
  `personnels_personnels_id` int(11) NOT NULL,
  `permissions_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`permissions_id`,`personnels_personnels_id`),
  KEY `fk_permission_personnels1_idx` (`personnels_personnels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `personnels`
--

CREATE TABLE IF NOT EXISTS `personnels` (
  `personnels_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_p` varchar(100) DEFAULT NULL,
  `prenom_p` varchar(100) DEFAULT NULL,
  `matricule_p` varchar(100) DEFAULT NULL,
  `sexe_p` tinyint(4) NOT NULL DEFAULT '0',
  `date_naiss` date DEFAULT NULL,
  `ethnies_ethnies_id` int(11) NOT NULL,
  `nom_de_jeune_fille_p` varchar(100) DEFAULT NULL,
  `reference_p` varchar(100) DEFAULT NULL,
  `corps_corps_id` int(11) NOT NULL,
  `statut_matrimonials_statut_matrimonials_id` int(11) NOT NULL,
  `acte_recrutements_acte_recrutements_id` int(11) NOT NULL,
  `pers_decedes_pers_decedes_id` int(11) NOT NULL,
  `photo_p` varchar(45) DEFAULT NULL,
  `personnels_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`personnels_id`,`ethnies_ethnies_id`,`corps_corps_id`,`statut_matrimonials_statut_matrimonials_id`,`acte_recrutements_acte_recrutements_id`,`pers_decedes_pers_decedes_id`),
  KEY `fk_personnels_ethnies1_idx` (`ethnies_ethnies_id`),
  KEY `fk_personnels_corps1_idx` (`corps_corps_id`),
  KEY `fk_personnels_statut_matrimonials1_idx` (`statut_matrimonials_statut_matrimonials_id`),
  KEY `fk_personnels_acte_recrutements1_idx` (`acte_recrutements_acte_recrutements_id`),
  KEY `fk_personnels_pers_decedes1_idx` (`pers_decedes_pers_decedes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `personnels`
--


-- --------------------------------------------------------

--
-- Table structure for table `personnels_has_categories`
--

CREATE TABLE IF NOT EXISTS `personnels_has_categories` (
  `personnels_personnels_id` int(11) NOT NULL,
  `personnels_ethnies_ethnies_id` int(11) NOT NULL,
  `categories_categories_id` int(11) NOT NULL,
  PRIMARY KEY (`personnels_personnels_id`,`personnels_ethnies_ethnies_id`,`categories_categories_id`),
  KEY `fk_personnels_has_categories_categories1_idx` (`categories_categories_id`),
  KEY `fk_personnels_has_categories_personnels1_idx` (`personnels_personnels_id`,`personnels_ethnies_ethnies_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personnels_has_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `personnels_has_services`
--

CREATE TABLE IF NOT EXISTS `personnels_has_services` (
  `personnels_personnels_id` int(11) NOT NULL,
  `personnels_ethnies_ethnies_id` int(11) NOT NULL,
  `personnels_corps_corps_id` int(11) NOT NULL,
  `personnels_statut_matrimonials_statut_matrimonials_id` int(11) NOT NULL,
  `services_services_id` int(11) NOT NULL,
  PRIMARY KEY (`personnels_personnels_id`,`personnels_ethnies_ethnies_id`,`personnels_corps_corps_id`,`personnels_statut_matrimonials_statut_matrimonials_id`,`services_services_id`),
  KEY `fk_personnels_has_services_services1_idx` (`services_services_id`),
  KEY `fk_personnels_has_services_personnels1_idx` (`personnels_personnels_id`,`personnels_ethnies_ethnies_id`,`personnels_corps_corps_id`,`personnels_statut_matrimonials_statut_matrimonials_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personnels_has_services`
--


-- --------------------------------------------------------

--
-- Table structure for table `pers_decedes`
--

CREATE TABLE IF NOT EXISTS `pers_decedes` (
  `pers_decedes_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_d` date DEFAULT NULL,
  `acte_d` varchar(45) DEFAULT NULL,
  `pers_decedes_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pers_decedes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pers_decedes`
--


-- --------------------------------------------------------

--
-- Table structure for table `poste_occupes`
--

CREATE TABLE IF NOT EXISTS `poste_occupes` (
  `poste_occupes_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_poste_o` varchar(200) DEFAULT NULL,
  `services_services_id` int(11) NOT NULL,
  `poste_occupes_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`poste_occupes_id`,`services_services_id`),
  KEY `fk_poste_occupes_services1_idx` (`services_services_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `poste_occupes`
--


-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `regions_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_r` varchar(100) DEFAULT NULL,
  `pays_pays_id` int(11) NOT NULL DEFAULT '0',
  `regions_regions_id` int(11) NOT NULL,
  `regions_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regions_id`,`pays_pays_id`,`regions_regions_id`),
  KEY `fk_regions_pays1_idx` (`pays_pays_id`),
  KEY `fk_regions_regions1_idx` (`regions_regions_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `regions`
--


-- --------------------------------------------------------

--
-- Table structure for table `regions_has_ethnies`
--

CREATE TABLE IF NOT EXISTS `regions_has_ethnies` (
  `regions_regions_id` int(11) NOT NULL,
  `ethnies_ethnies_id` int(11) NOT NULL,
  PRIMARY KEY (`regions_regions_id`,`ethnies_ethnies_id`),
  KEY `fk_regions_has_ethnies_ethnies1_idx` (`ethnies_ethnies_id`),
  KEY `fk_regions_has_ethnies_regions1_idx` (`regions_regions_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions_has_ethnies`
--


-- --------------------------------------------------------

--
-- Table structure for table `regions_has_services`
--

CREATE TABLE IF NOT EXISTS `regions_has_services` (
  `regions_regions_id` int(11) NOT NULL,
  `regions_pays_pays_id` int(11) NOT NULL,
  `regions_regions_regions_id` int(11) NOT NULL,
  `regions_regions_pays_pays_id` int(11) NOT NULL,
  `services_services_id` int(11) NOT NULL,
  PRIMARY KEY (`regions_regions_id`,`regions_pays_pays_id`,`regions_regions_regions_id`,`regions_regions_pays_pays_id`,`services_services_id`),
  KEY `fk_regions_has_services_services1_idx` (`services_services_id`),
  KEY `fk_regions_has_services_regions1_idx` (`regions_regions_id`,`regions_pays_pays_id`,`regions_regions_regions_id`,`regions_regions_pays_pays_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions_has_services`
--


-- --------------------------------------------------------

--
-- Table structure for table `retraites`
--

CREATE TABLE IF NOT EXISTS `retraites` (
  `retraites_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_ret` date DEFAULT NULL,
  `refence_ret` varchar(100) DEFAULT NULL,
  `personnels_personnels_id` int(11) NOT NULL,
  `retraites_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`retraites_id`,`personnels_personnels_id`),
  KEY `fk_retraites_personnels1_idx` (`personnels_personnels_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `retraites`
--


-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `services_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_s` varchar(200) DEFAULT NULL,
  `type_s` varchar(45) DEFAULT NULL,
  `anne_s` int(11) DEFAULT NULL,
  `services_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`services_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `services`
--


-- --------------------------------------------------------

--
-- Table structure for table `statut_matrimonials`
--

CREATE TABLE IF NOT EXISTS `statut_matrimonials` (
  `statut_matrimonials_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_staut_m` varchar(45) DEFAULT NULL,
  `statut_matrimonials_status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`statut_matrimonials_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `statut_matrimonials`
--




------------------------------------------------------------

--- Default Login

--  Username: admin@admin.com Password: password


DROP TABLE IF EXISTS `groups`;

#
# Table structure for table 'groups'
#

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table 'groups'
#

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
     (1,'admin','Administrator'),
     (2,'members','General User');



DROP TABLE IF EXISTS `users`;

#
# Table structure for table 'users'
#

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Dumping data for table 'users'
#

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
     ('1','127.0.0.1','administrator','$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36','','admin@admin.com','',NULL,'1268889823','1268889823','1', 'Admin','istrator','ADMIN','0');


DROP TABLE IF EXISTS `users_groups`;

#
# Table structure for table 'users_groups'
#

CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `uc_users_groups` UNIQUE (`user_id`, `group_id`),
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
     (1,1,1),
     (2,1,2);


DROP TABLE IF EXISTS `login_attempts`;

#
# Table structure for table 'login_attempts'
#

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


