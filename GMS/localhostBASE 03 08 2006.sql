-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Jeudi 03 Août 2006 à 11:56
-- Version du serveur: 4.1.9
-- Version de PHP: 4.3.10
-- 
-- Base de données: `prof_notes_2006_2007`
-- 
DROP DATABASE `prof_notes_2006_2007`;
CREATE DATABASE `prof_notes_2006_2007` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE prof_notes_2006_2007;

-- --------------------------------------------------------

-- 
-- Structure de la table `classe`
-- 

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `id_classe` int(2) NOT NULL auto_increment,
  `nom_classe` char(3) NOT NULL default '',
  `id_pp` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_classe`),
  KEY `fkPP` (`id_pp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Contenu de la table `classe`
-- 

INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (1, 'TES', 10);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (2, 'TSA', 5);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (3, 'TSB', 6);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (4, 'TL2', 7);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (5, 'TS1', 19);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (6, 'TS2', 19);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (7, '1ES', 22);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (8, '1SA', 17);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (9, '1SB', 12);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (10, '1L2', 78);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (11, '1S1', 78);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (12, '1S2', 78);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (13, '2A', 16);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (14, '2B', 18);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (15, '2C', 18);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (16, '2L', 8);
INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_pp`) VALUES (17, '2S', 8);

-- --------------------------------------------------------

-- 
-- Structure de la table `controle`
-- 

DROP TABLE IF EXISTS `controle`;
CREATE TABLE IF NOT EXISTS `controle` (
  `id_controle` int(2) NOT NULL auto_increment,
  `nom_controle` varchar(20) NOT NULL default '',
  `coefficient` float NOT NULL default '0',
  `id_matiere` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_controle`),
  KEY `fkmatiere` (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `controle`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `eleve`
-- 

DROP TABLE IF EXISTS `eleve`;
CREATE TABLE IF NOT EXISTS `eleve` (
  `id_eleve` int(2) NOT NULL auto_increment,
  `nom_eleve` varchar(20) NOT NULL default '',
  `prenom_eleve` varchar(20) NOT NULL default '',
  `id_classe` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_eleve`),
  KEY `fkCLASSE` (`id_classe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1 AUTO_INCREMENT=311 ;

-- 
-- Contenu de la table `eleve`
-- 

INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (1, 'ABOUSALEH', 'MOHAMED', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (2, 'AHNE', 'HABY BATH', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (3, 'BA', 'NDEYE KHADY', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (4, 'BADREDINE', 'FATIMA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (5, 'GOMIS', 'GAELLE AMINATA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (6, 'HANNOUCHE', 'SOUAD', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (7, 'KANE', 'IBRAHIMA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (8, 'KHALIL', 'RANIA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (9, 'LOPES', 'MARIE PIERRE ABSA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (10, 'MBENGUE', 'BAYE MOHAMED', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (11, 'MBOUP', 'COUMBA ARENE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (12, 'MOURAD', 'CHAIMA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (13, 'NDIAYE', 'MAME ISSEU DIOR', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (14, 'NEHME', 'CHERINE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (15, 'PIRES DIAS', 'NELLY', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (16, 'POPULO', 'LYDIA', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (17, 'POUYE', 'NDEYE NDIEME', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (18, 'SAAD', 'SAMAR', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (19, 'SARR', 'PAUL PIERRE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (20, 'WEHBE', 'NEIF CHRISTOPHE', 1);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (21, 'AMRANI HANCHI', 'SOUKAINA', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (22, 'ARDEKANI-DJONEIDI', 'NIKA', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (23, 'ATTYE', 'SAMIR', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (24, 'BAALBAKI', 'JOHANA HAOUI', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (25, 'CISSE', 'ZEINAB', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (26, 'DALUZ', 'LAURENT KEVIN', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (27, 'DEBOES', 'CHANELLE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (28, 'DOURERADIAM', 'RAMON K. JULIEN', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (29, 'FATTAH', 'MOHAMED', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (30, 'GAFARI', 'HELENE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (31, 'GHOZAYEL', 'JOANNA', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (32, 'HALAOUI', 'RIWANE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (33, 'ISSA', 'IBRAHIM', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (34, 'JABER', 'RACHA', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (35, 'KA', 'DJIBLIL CHIMERE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (36, 'KALACH', 'MOHAMED', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (37, 'KAMARA', 'KHADIJATOU', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (38, 'MATTA', 'JEAN', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (39, 'NDAO', 'MAMADOU', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (40, 'NEMER', 'RAYAN', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (41, 'NIANG', 'NDEYE NGONE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (42, 'SAHELI', 'YOUSSEF', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (43, 'SAHELI', 'AMAR ESTHER', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (44, 'SOW', 'CHEIKH TIDIANE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (45, 'YOUSSEF', 'JAMILE', 2);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (46, 'ADOU', 'SEMARIA JESSICA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (47, 'ALI YAHIA', 'SARAH', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (48, 'CHOUERI', 'LAURA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (49, 'DAW', 'RACHEL', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (50, 'DIAGNE', 'NDEYE FATOU', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (51, 'DIAGNE', 'PAPA OUSMANE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (52, 'DIAITE', 'CORINE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (53, 'FAUGER', 'MAISSA HAMIDOU', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (54, 'FILFILI', 'FOUAD', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (55, 'GHASSANI', 'ISSA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (56, 'GOMEZ', 'CELIA CORALIE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (57, 'HASSAN', 'WALID', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (58, 'HIE', 'SIRY ARNAUD BILICOL', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (59, 'KA', 'DIOUMEL', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (60, 'KANE', 'AWA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (61, 'KONE', 'DONECI', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (62, 'MBAYE', 'CHEIKH ANTA', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (63, 'NDIAYE', 'ALASSANE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (64, 'NEHME', 'MOHAMED', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (65, 'RAD', 'KRYSTELE', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (66, 'SALMAN', 'RYAN', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (67, 'SECK', 'AMINATA DIOR', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (68, 'SOUMARE', 'ASTA BANTJI', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (69, 'SY', 'KHALIFA ABABACAR', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (70, 'YOUNES', 'HUSSEIN', 3);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (71, 'BALDE', 'OUMOU', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (72, 'CISSOKO', 'BAIDALAYE', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (73, 'DIAKHATE', 'FATOUMATA', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (74, 'NDIAYE', 'DIEYNABA', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (75, 'NDIAYE', 'RAMATOULAYE', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (76, 'SENE', 'MOUHAMADOU', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (77, 'SY', 'EL HADJ ABDOU AZIIZ', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (78, 'WAYZANI', 'LAYAL', 4);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (79, 'DIA', 'ABDOULAYE', 5);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (80, 'DIENG', 'MARIAMA', 5);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (81, 'DIOP', 'MOHAMED LAMINE', 5);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (82, 'MBAYE', 'SERIGNE C. A. A.', 5);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (83, 'NDIAYE', 'MARIE STELLA C. C.', 5);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (84, 'SOW', 'MAODO MALICK', 5);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (85, 'SY', 'BIRAME ALDIOUMA', 5);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (86, 'BADAOUI', 'ZAHRAA', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (87, 'DIOP', 'HASSIM BACHIR', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (88, 'DIOP', 'PAPE MOCTAR', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (89, 'FALL', 'CHEIKH A. B', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (90, 'HABIB', 'EMILIE ELISABETH', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (91, 'NIANG', 'ALIMATOU YVONNE', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (92, 'NIANG', 'IBRAHIM', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (93, 'SAR', 'ANTA', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (94, 'YACOUB', 'ANTOINE', 6);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (95, 'ABDALLAH', 'MARWA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (96, 'AYAD', 'ZOHRA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (97, 'AYOUB BAALBAKI', 'CHARIFA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (98, 'BALESDENS', 'CHARLOTTE', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (99, 'BASMA', 'LOUWANA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (100, 'BOURGI', 'SANDRA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (101, 'DAHROUGE', 'RAISSA RANNDA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (102, 'DAW', 'AMANDA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (103, 'ESHOUR', 'ZEINA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (104, 'FARHAT', 'KARINA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (105, 'FILFILI', 'SAMI', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (106, 'GNASSOU', 'AUDE NATACHA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (107, 'HAWILI', 'NOUR', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (108, 'KAWAR', 'RAYSSA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (109, 'KHADRA', 'FADI', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (110, 'LANGLOIS', 'JULIE', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (111, 'LOFF FERNANDES', 'MARIE TESSY', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (112, 'MAHTOUB', 'MIRNA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (113, 'MARNA', 'CHLOE CAROLINE', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (114, 'NDIAYE', 'BENJAMIN', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (115, 'NEMER', 'STEPHANE', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (116, 'OMAIS', 'NABIL', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (117, 'RANDRIANASOLO', 'ANDY MICHAEL', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (118, 'SY', 'NDATE BAPTISTE', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (119, 'THIAW', 'NDEYE CATHY', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (120, 'THOUMAS', 'ANDREA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (121, 'VIERA', 'CECILE YVETTE LYDIA', 7);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (122, 'ABOUSALEH', 'MAYA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (123, 'AJAMI', 'MEHDI', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (124, 'ANDRIANOMEARISOA', 'LUC PHILIPPE PITER', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (125, 'BAZZOUNY', 'WASSIM', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (126, 'BITTAR', 'FREDERIC', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (127, 'DAKHLALLAH', 'ALI', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (128, 'DIALLO', 'ANTA COMBA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (129, 'DIAW', 'DIADAME JOCELYNE', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (130, 'DIOP', 'MAEVA ANTA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (131, 'FILFILI', 'RAMI', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (132, 'GIESING', 'JOHANNES RAPHAEL', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (133, 'HAKIM', 'HANADI', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (134, 'HEDROJ', 'ALI', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (135, 'SAHELI', 'AMINA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (136, 'SALLOUM', 'STEPHANE JOEL', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (137, 'SECK', 'ZEYNABOU', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (138, 'SERIFOU', 'ROCKIA', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (139, 'TALL', 'PAPE SALIOU', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (140, 'TARRAF-KOUJOCK', 'HUSSEIN SAID SEBASTI', 8);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (141, 'ANDRIANOMEARISOA', 'LISA CAROLINECLAIRE', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (142, 'AYOUB', 'ZEYNAB', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (143, 'BADREDINE', 'HUSSEIN', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (144, 'CHOUCAIR', 'LEA', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (145, 'DIAGNE', 'MOHAMED EL MOCTAR', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (146, 'DIALLO', 'MOHAMED', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (147, 'EZZEDINE', 'RIMA', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (148, 'FARHAT', 'LOUANA', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (149, 'FOLY-TOULON', 'EDSON PAUL M. E', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (150, 'HAMLA', 'YACINE', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (151, 'HAWILI', 'SHIRINE', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (152, 'LAFOIX', 'FRANCOIS XAVIER', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (153, 'PINA', 'ADRIEN', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (154, 'SANTOS', 'ARISTIDE M. A.', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (155, 'SEYE', 'MEDOUNE B, THOMAS', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (156, 'SOUMARE', 'MOUHAMED HAMOU', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (157, 'WIZANI', 'MIRNA', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (158, 'YASSINE', 'WASSIM', 9);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (159, 'BA', 'COUMBA', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (160, 'CHAOUCHAR', 'ALIA', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (161, 'COLY', 'NANCY DANY', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (162, 'FALL', 'THIENDELLA NGUENAR', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (163, 'GAYE', 'IBRAHIMA WALY RENE', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (164, 'GAYE', 'MARIE YVONNE', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (165, 'KONE', 'CYRIL FANGA-TOUGA', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (166, 'NDAO', 'MAIMOUNA', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (167, 'NDIAYE', 'MOUHAMADOU M.', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (168, 'NGOM', 'SODA MARIEME', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (169, 'SOW', 'AISSE LALLAH AICHA', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (170, 'SY', 'AMINATA GUENA', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (171, 'TOURE', 'ELIMANE IBRAHIM', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (172, 'TOURE', 'LALLA AICHA A. M.', 10);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (173, 'BA', 'MAME BETTY', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (174, 'COLY', 'AMIDOU DAGNIL', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (175, 'DIOUF', 'DIOLY', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (176, 'DIOUF', 'EL HADJI SOCE', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (177, 'KANE', 'DIEYNABA SALA TAMARA', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (178, 'SECK', 'SEYIDOUNA OMAR', 11);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (179, 'DAHER', 'ALY', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (180, 'DIOP', 'CHEIKH', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (181, 'GUEYE', 'AWA', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (182, 'KOFFI', 'NATEH KPEDRO LOINEL', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (183, 'MBENGUE', 'CHEIKH AHMADOU BAMBA', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (184, 'OYOUBA M. O', 'JUVELLE MATHURINE', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (185, 'SALL', 'FATIMATOU', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (186, 'SOW', 'HABY', 12);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (187, 'ASSI', 'GHAZI', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (188, 'ATTYE', 'FADI', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (189, 'AYAD', 'MOHAMAD', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (190, 'BADAOUI', 'RABIH', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (191, 'BARRY', 'ALYSSA KHADIDIATOU', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (192, 'BONI', 'CHRISTIANE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (193, 'DIAGNE', 'MARIEME SYLLA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (194, 'DIALLO', 'AMADOU OUMAR', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (195, 'DIOUF', 'ISMAILA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (196, 'EL FARRANE', 'KLARA MARIE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (197, 'FALL', 'KHADIDIATOU', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (198, 'GAYE', 'OULIMATA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (199, 'GHANDOUR', 'NEIFE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (200, 'HAKIM', 'HASSAN DANIEL', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (201, 'HARATI', 'CINDY', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (202, 'HELLAL', 'ANAIS', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (203, 'JOUBAILY', 'ZEINA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (204, 'KHALAF', 'FARAH', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (205, 'LATH', 'MARIE ANGELE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (206, 'MAAZ', 'MEHDI', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (207, 'MBODJI', 'YERIM', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (208, 'MERRE', 'FLORIAN CLAUDE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (209, 'NDIAYE', 'AWA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (210, 'NEHME', 'SABRINA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (211, 'OUIS', 'ADLANE CHAZIL', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (212, 'PONSARD', 'ADRIEN JOSEPH', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (213, 'RICOU', 'JOSEPHA VENISE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (214, 'SAHELI', 'FADEL', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (215, 'SAIEL', 'NOUR', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (216, 'SALL', 'PENDA SOLENE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (217, 'SEGUY', 'LOUIS MARIE JAMES', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (218, 'SOUFANE', 'HASSAN', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (219, 'TAGEDDINE', 'NADINE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (220, 'TALL', 'ABY MBAYE', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (221, 'TOURE', 'KHOUDIA YATMA', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (222, 'WAYZANI', 'DAMIR', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (223, 'WIZANI', 'RAMI', 13);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (224, 'ATTYE', 'RACHEL', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (225, 'AYOUB', 'ZAHRA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (226, 'BASMA', 'SALHA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (227, 'BAYLE', 'LUCAS', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (228, 'BOISSELET', 'SOPHIE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (229, 'CASTANO', 'MARINE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (230, 'CHIRARA', 'ZAM-ZAM', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (231, 'CHOKOR', 'SAMER', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (232, 'COLLIN', 'SYLVIE MARIE NDELLA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (233, 'DIARRA', 'REYANE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (234, 'EZZEDINE', 'RADWANE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (235, 'GBAGUIDI', 'ARNAUD MEDE TONDJI', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (236, 'GHABDOUNE', 'ZEINA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (237, 'GUEYE', 'AMINA FALY', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (238, 'HACHEM', 'ALI', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (239, 'HAJAALI', 'SADRY', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (240, 'HOBALLAH', 'NADER', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (241, 'JABER', 'MIRNA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (242, 'JOHER', 'SALIM', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (243, 'KIBBE', 'SARAH', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (244, 'KIBBE', 'SARAH', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (245, 'KONDE', 'CECILE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (246, 'LEMASLE', 'GUILLAUME', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (247, 'MATOKO', 'GUILLABERT E. FABIEN', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (248, 'MBENGUE', 'BABACAR J.', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (249, 'NAFFAH', 'MARIE JOSEPHINE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (250, 'NDIAYE', 'KHADIDIATOU', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (251, 'OUIS', 'LINA CHAHINEZ', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (252, 'SALME', 'ALY', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (253, 'SARR', 'ALPHONSE NDEME', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (254, 'SECK', 'MERRY ANN ANITA', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (255, 'SIDANI', 'ALI', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (256, 'SOW', 'NAOMI JIHANE', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (257, 'YASSINE', 'HUSSEIN JUNIOR', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (258, 'YOUSSEF', 'MAHDI', 14);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (259, 'ATTYE', 'MIRVATE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (260, 'AYAD', 'MEHDI', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (261, 'BA', 'SALLA TAMARA NALLA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (262, 'BADREDINE', 'MOHAMED', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (263, 'CISSE', 'REINE RAYMONDE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (264, 'DIDI', 'AWADA DAVID', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (265, 'DIENG', 'MASSAMBA ETIENNE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (266, 'DIOUF', 'RAMATOULAYE LOUISE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (267, 'EL SAYEGH', 'LARA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (268, 'GEBARA', 'ISSA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (269, 'GHASSANI', 'HANADI', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (270, 'GUIGON', 'LOREDANA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (271, 'HAKIM', 'SARAH', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (272, 'HOBALLAH', 'CHERINE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (273, 'HUSEINI', 'ABDEL KARIM', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (274, 'JABER', 'CHERINE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (275, 'KHADRA', 'HUSSEIN', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (276, 'KHOCHMAN', 'RYAN', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (277, 'LAKHDAR', 'MOHAMED ANIS', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (278, 'LOPES', 'AIDA MICHELLE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (279, 'MBODJI', 'MAME AWA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (280, 'MONTEIRO', 'ORNELLA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (281, 'NAFFAH', 'MARIE JOSEPHINE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (282, 'NDIAYE', 'ANTOINE M. J. S.', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (283, 'NDIAYE', 'KHADIJA ZEINAB', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (284, 'SALMAN', 'SARAH', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (285, 'SANE', 'ABIBATOU MARELA', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (286, 'SONKO', 'AISSATOU DIALLO', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (287, 'WAZNI', 'ALY FADEL', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (288, 'WEHBE', 'ROXANE SOUAD MARIE', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (289, 'YACTINE', 'HASSAN DANIEL', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (290, 'YONIS', 'FARIS LAURENT', 15);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (291, 'DIENE', 'SAÏNABOU THIEME', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (292, 'DIOP', 'NDEYE BINTA', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (293, 'FOFANA', 'LALA AÏCHA', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (294, 'GUEYE', 'DONA AICHA NDICKOU', 16);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (295, 'BOLSANE', 'PAUL ISSA MARTIAL', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (296, 'DIALLO', 'IBRAHIMA', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (297, 'DIOP', 'NDEYE MARIAMA', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (298, 'DIOP', 'MAME KHOUDIA', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (299, 'DIOUF', 'MAME AWA FLORENCE', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (300, 'FARHAT', 'ALI', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (301, 'FENAICHE', 'KARINA', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (302, 'ISSA', 'CHARBEL', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (303, 'LO', 'OLD AHMADOU', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (304, 'MBOUP', 'MAGUETTE', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (305, 'NDIAYE', 'AMADOU LAMINE', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (306, 'NDIAYE', 'NDEYE FAMA MODY', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (307, 'SAKHO', 'AMSATOU DIOUF', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (308, 'SANKE', 'KHADIM', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (309, 'SANKE', 'MOHAMED', 17);
INSERT INTO `eleve` (`id_eleve`, `nom_eleve`, `prenom_eleve`, `id_classe`) VALUES (310, 'THIAM', 'ANNA', 17);

-- --------------------------------------------------------

-- 
-- Structure de la table `enseigne`
-- 

DROP TABLE IF EXISTS `enseigne`;
CREATE TABLE IF NOT EXISTS `enseigne` (
  `id_professeur` int(2) NOT NULL default '0',
  `id_classe` int(2) NOT NULL default '0',
  `id_matiere` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_professeur`,`id_classe`,`id_matiere`),
  KEY `fkCLASSE` (`id_classe`),
  KEY `fkMATIERE` (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1;

-- 
-- Contenu de la table `enseigne`
-- 

INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 14, 23);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (7, 16, 23);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 16, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (8, 17, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (10, 13, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (16, 13, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (18, 14, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (19, 17, 2);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 16, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (23, 17, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (26, 14, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (36, 14, 3);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 13, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 14, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 16, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (64, 17, 7);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (67, 16, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (67, 17, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (69, 14, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (72, 14, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (75, 13, 4);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 13, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 13, 27);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 16, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (77, 17, 8);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (81, 13, 9);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (82, 13, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (85, 13, 23);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (87, 16, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (87, 17, 13);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (88, 16, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (88, 17, 15);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (89, 13, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (96, 13, 14);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (97, 14, 1);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (98, 13, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (98, 14, 5);
INSERT INTO `enseigne` (`id_professeur`, `id_classe`, `id_matiere`) VALUES (103, 14, 15);

-- --------------------------------------------------------

-- 
-- Structure de la table `matiere`
-- 

DROP TABLE IF EXISTS `matiere`;
CREATE TABLE IF NOT EXISTS `matiere` (
  `id_matiere` int(2) NOT NULL auto_increment,
  `nom_matiere` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- 
-- Contenu de la table `matiere`
-- 

INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (1, 'Francais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (2, 'Mathematiques');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (3, 'Informatique');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (4, 'SVT');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (5, 'Physique-Chimie');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (23, 'Sceinces Eco');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (7, 'Allemand');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (8, 'Anglais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (9, 'Arabe');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (10, 'Catéchèse');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (11, 'ECJS');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (12, 'EPS');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (13, 'Espagnol');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (14, 'Ethique');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (15, 'Histoire-Geo');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (16, 'Mathématiques');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (17, 'Philosophie');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (18, 'Spé Math');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (19, 'Spé Physique');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (20, 'Spé SVT');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (22, 'Heure de vie');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (24, 'Sciences Eco');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (25, 'Spe Anglais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (26, 'Spe SES');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (27, 'Anglais renforce');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (28, 'Module Anglais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (29, 'Module Francais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (30, 'Module HG');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (31, 'Module Maths');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (32, 'Soutien Francais');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (33, 'Soutien Maths');
INSERT INTO `matiere` (`id_matiere`, `nom_matiere`) VALUES (34, 'TPE');

-- --------------------------------------------------------

-- 
-- Structure de la table `moyenne`
-- 

DROP TABLE IF EXISTS `moyenne`;
CREATE TABLE IF NOT EXISTS `moyenne` (
  `id_moyenne` int(2) NOT NULL default '0',
  `nb_moyenne` float NOT NULL default '0',
  PRIMARY KEY  (`id_moyenne`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1;

-- 
-- Contenu de la table `moyenne`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `note`
-- 

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id_note` int(2) NOT NULL auto_increment,
  `note` int(2) default NULL,
  `id_controle` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_note`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Contenu de la table `note`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `obtient`
-- 

DROP TABLE IF EXISTS `obtient`;
CREATE TABLE IF NOT EXISTS `obtient` (
  `id_eleve` int(2) NOT NULL default '0',
  `id_note` int(2) NOT NULL default '0',
  KEY `fkNOTE` (`id_note`),
  KEY `fkELEVE` (`id_eleve`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `obtient`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `professeur`
-- 

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE IF NOT EXISTS `professeur` (
  `id_professeur` int(2) NOT NULL auto_increment,
  `nom_professeur` varchar(20) NOT NULL default '',
  `prenom_professeur` varchar(20) NOT NULL default '',
  `mdp` varchar(8) NOT NULL default '',
  `adr_mail` varchar(30) default NULL,
  PRIMARY KEY  (`id_professeur`),
  FULLTEXT KEY `prenom_professeur` (`prenom_professeur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

-- 
-- Contenu de la table `professeur`
-- 

INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (4, 'MONDOLONI', 'Jeanne', 'jmondolo', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (5, 'BLANDA', 'Patrick', 'pblanda', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (6, 'MONDOLONI', 'Michel', 'mmondolo', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (7, 'GBAGUIDI', 'Ambroise', 'agbaguid', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (8, 'DIENG', 'Sada', 'sdieng', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (10, 'LAGIER', 'Patrice', 'plagier', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (11, 'SORNADERE', 'Pierre', 'psornade', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (12, 'ANDRIANOMEARISOA', 'Toussaint', 'tandrian', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (13, 'FAYE', 'Alain', 'afaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (16, 'VULLIERME', 'Pierre', 'pvullier', 'vullierme@hotmail.com');
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (17, 'BERNARD', 'Marie Claire', 'mbernard', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (18, 'FOUCHER', 'Christophe', 'cfoucher', 'foucher_chrstop@yahoo.fr');
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (19, 'DIOUF', 'Mame Cheikh', 'mdiouf', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (20, 'MENRATH', 'Maryline', 'mmenrath', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (21, 'UTHEZA', 'Philippe', 'putheza', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (22, 'PAFADNAM', 'Christine', 'cpafadna', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (23, 'NDOUR', 'Pierre', 'pndour', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (24, 'SANTOS', 'Laurent', 'lsantos', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (25, 'LARDY', 'Fran?oise', 'flardy', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (26, 'NDIAYE', 'Assane', 'andiaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (27, 'NDIAYE', 'A?ssatou', 'andiaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (28, 'AUDINOS', 'Dominique', 'daudinos', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (29, 'PONS', 'Michel', 'mpons', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (31, 'MOUVY', 'Pascal', 'pmouvy', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (32, 'ESTRADE', 'Stephane', 'sestrade', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (36, 'SCHALCK', 'Baptiste', 'bschalck', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (64, 'SOW', 'Madeleine', 'msow', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (66, 'BASSE', 'Ababacar Laye', 'abasse', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (67, 'SAMBOU', 'Henri Philippe', 'hsambou', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (68, 'BADJI', 'Ibrahima', 'ibadji', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (69, 'COLY', 'Philémon', 'pcoly', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (70, 'SAGNA', 'Gabriel', 'gsagna', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (71, 'SYLVA', 'Valdemar', 'vsylva', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (72, 'TEBECHIRANI', 'Valerie', 'vtebechi', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (73, 'ROUX', 'Florence', 'froux', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (74, 'KARTMANN', 'Liza', 'lkartman', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (75, 'DIARA', 'Mariline', 'mdiara', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (76, 'RAHAL', 'Antoinette', 'arahal', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (77, 'SILVA', 'Alain', 'asilva', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (78, 'FAYE', 'Georges', 'gfaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (79, 'GBAGUIDI', 'Rachel', 'rgbaguid', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (80, 'CISSE', 'Irene', 'icisse', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (81, 'BASSE', 'Abacar Laye', 'abasse', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (82, 'DIOKHANE', 'Dame', 'ddiokhan', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (83, 'NDIONE', 'Josephine', 'jndione', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (84, 'NDIAYE', 'Aissatou', 'andiaye', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (85, 'DE LOUSTAL', 'Thierry', 'tde lous', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (86, 'CABANE', 'Romain', 'rcabane', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (87, 'SARR', 'Francois', 'fsarr', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (88, 'WANE', 'Ahmadou Tidiane', 'awane', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (89, 'DACOSTA', 'Suzanne', 'sdacosta', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (90, 'SORBADERE', 'Pierre', 'psorbade', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (91, 'DERWICHE', 'Rina', 'rderwich', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (92, 'BECHARA', 'Evelyn', 'ebechara', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (93, 'BECHARA', 'Evelyne', 'ebechara', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (94, 'SALEH', 'Najat', 'nsaleh', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (95, 'SY', 'Jacqueline', 'jsy', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (96, 'BIAGUI', 'Adolphe', 'abiagui', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (97, 'GROUAS', 'Valerie', 'vgrouas', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (98, 'MAERTENS', 'Philippe', 'pmaerten', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (99, 'NDIONE', 'Pierre-Claver', 'pndione', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (100, 'BRUNO', 'Frere', 'fbruno', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (101, 'GABGUIDI', 'Ambroise', 'agabguid', NULL);
INSERT INTO `professeur` (`id_professeur`, `nom_professeur`, `prenom_professeur`, `mdp`, `adr_mail`) VALUES (103, 'NDOUR', 'Birame', 'bndour', NULL);

-- --------------------------------------------------------

-- 
-- Structure de la table `trimestre`
-- 

DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE IF NOT EXISTS `trimestre` (
  `id_eleve` int(2) NOT NULL default '0',
  `id_moyenne` int(2) NOT NULL default '0',
  `id_matiere` int(2) NOT NULL default '0',
  `trimestre` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id_eleve`,`id_moyenne`,`id_matiere`),
  KEY `fkELEVE` (`id_eleve`),
  KEY `fkMOYENNE` (`id_moyenne`),
  KEY `fkMATIERE` (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 DELAY_KEY_WRITE=1;

-- 
-- Contenu de la table `trimestre`
-- 

