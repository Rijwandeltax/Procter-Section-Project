-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2017 at 08:06 AM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--
CREATE DATABASE `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) collate latin1_general_ci default NULL,
  `interpret` varchar(200) collate latin1_general_ci default NULL,
  `jahr` int(11) default NULL,
  `id` bigint(20) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `details`
--
CREATE DATABASE `details` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `details`;

-- --------------------------------------------------------

--
-- Table structure for table `btech`
--

CREATE TABLE IF NOT EXISTS `btech` (
  `prog` varchar(50) default NULL,
  `Branch` varchar(50) default NULL,
  `Scholar` varchar(50) NOT NULL default '',
  `Exam` varchar(50) default NULL,
  `Rank` varchar(50) default NULL,
  `Under` varchar(50) default NULL,
  `Name` varchar(50) default NULL,
  `Father_Name` varchar(50) default NULL,
  `Mother_Name` varchar(50) default NULL,
  `Address` varchar(50) default NULL,
  `DOB` varchar(50) default NULL,
  `City` varchar(50) default NULL,
  `Image` mediumtext,
  `Contact` varchar(50) default NULL,
  `Pin` varchar(50) default NULL,
  `Email` varchar(50) default NULL,
  `State` varchar(50) default NULL,
  `Marriage` varchar(50) default NULL,
  `Blood` varchar(50) default NULL,
  `Gender` varchar(50) default NULL,
  `Religion` varchar(50) default NULL,
  `Belong` varchar(50) default NULL,
  `Income` varchar(50) default NULL,
  `Father_occupation` varchar(50) default NULL,
  `Mother_occupation` varchar(50) default NULL,
  `tenSubject` varchar(50) default NULL,
  `tenBoard` varchar(50) default NULL,
  `tenPass` varchar(50) default NULL,
  `tenMarks` varchar(50) default NULL,
  `tweSubject` varchar(50) default NULL,
  `tweBoard` varchar(50) default NULL,
  `twePass` varchar(50) default NULL,
  `tweMarks` varchar(50) default NULL,
  `ugSubject` varchar(50) default NULL,
  `ugBoard` varchar(50) default NULL,
  `ugPass` varchar(50) default NULL,
  `ugMarks` varchar(50) default NULL,
  `TenScorecard` tinyint(4) NOT NULL default '0',
  `TweScorecard` tinyint(4) NOT NULL default '0',
  `DOB_Certificate` tinyint(4) NOT NULL default '0',
  `Caste_Certificate` tinyint(4) NOT NULL default '0',
  `DipandBtechScorecard` tinyint(4) NOT NULL default '0',
  `PHandEX_Certificate` tinyint(4) NOT NULL default '0',
  `Tc` tinyint(4) NOT NULL default '0',
  `Other` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`Scholar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btech`
--

INSERT INTO `btech` (`prog`, `Branch`, `Scholar`, `Exam`, `Rank`, `Under`, `Name`, `Father_Name`, `Mother_Name`, `Address`, `DOB`, `City`, `Image`, `Contact`, `Pin`, `Email`, `State`, `Marriage`, `Blood`, `Gender`, `Religion`, `Belong`, `Income`, `Father_occupation`, `Mother_occupation`, `tenSubject`, `tenBoard`, `tenPass`, `tenMarks`, `tweSubject`, `tweBoard`, `twePass`, `tweMarks`, `ugSubject`, `ugBoard`, `ugPass`, `ugMarks`, `TenScorecard`, `TweScorecard`, `DOB_Certificate`, `Caste_Certificate`, `DipandBtechScorecard`, `PHandEX_Certificate`, `Tc`, `Other`) VALUES
('btech', 'ECE', 'ecb20130208', 'JEE', '', 'SFS', 'ankit kumar', 'ishwar lal swami', 'geeta swami', 'jhunjhunu', '09-May-2017', '', NULL, '', '', '', 'Rajasthan', 'Unmarried', 'A+', 'Male', 'HINDU', 'NULL', '', '', '', 'math', '', '', '90', 'math', '', '', '80', 'b.tech', '', '', '70', 1, 1, 1, 1, 0, 0, 0, 0),
('btech', 'ECE', 'ecb201302035', 'JEE', '20', 'SFS', 'ishaan vohra', 'arun vohra', 'poonam vohra', 'biakner', '04-May-2017', '', NULL, '925653258', '333705', 'ishu@gmail.com', 'Rajasthan', 'Married', 'O+', 'Male', 'HINDU', 'NULL', '2.3', '', '', 'Math', '', '', '96', 'Math', '', '', '60', '', '', '', '70', 1, 1, 1, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btechdocumentdetails`
--

CREATE TABLE IF NOT EXISTS `btechdocumentdetails` (
  `Scholar` varchar(50) NOT NULL,
  `XMarkSheet` tinyint(4) NOT NULL default '0',
  `XIIMarkSheet` tinyint(4) NOT NULL default '0',
  `taxDeducation` tinyint(4) NOT NULL default '0',
  `regStdBon` tinyint(4) NOT NULL default '0',
  `aictcAppCerti` tinyint(4) NOT NULL default '0',
  `loan` tinyint(4) NOT NULL default '0',
  `IyearNoDues` tinyint(4) NOT NULL default '0',
  `IIyearNoDues` tinyint(4) NOT NULL default '0',
  `IIIyearNoDues` tinyint(4) NOT NULL default '0',
  `IVyearNoDues` tinyint(4) NOT NULL default '0',
  `withMidCourse` tinyint(4) NOT NULL default '0',
  `withMidCourseDate` varchar(50) default NULL,
  `withComplitionCourse` tinyint(4) NOT NULL default '0',
  `withComplitionCourseDate` varchar(50) default NULL,
  PRIMARY KEY  (`Scholar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btechdocumentdetails`
--

INSERT INTO `btechdocumentdetails` (`Scholar`, `XMarkSheet`, `XIIMarkSheet`, `taxDeducation`, `regStdBon`, `aictcAppCerti`, `loan`, `IyearNoDues`, `IIyearNoDues`, `IIIyearNoDues`, `IVyearNoDues`, `withMidCourse`, `withMidCourseDate`, `withComplitionCourse`, `withComplitionCourseDate`) VALUES
('13eebec008', 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, NULL, 1, ''),
('ecb201302035', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `btechexamdetail`
--

CREATE TABLE IF NOT EXISTS `btechexamdetail` (
  `Scholar` varchar(50) NOT NULL,
  `IS_Main` tinyint(4) NOT NULL default '0',
  `IS_Back` tinyint(4) NOT NULL default '0',
  `IS_Rb` tinyint(4) NOT NULL default '0',
  `IIS_Main` tinyint(4) NOT NULL default '0',
  `IIS_Back` tinyint(4) NOT NULL default '0',
  `IIS_Rb` tinyint(4) NOT NULL default '0',
  `IIIS_Main` tinyint(4) NOT NULL default '0',
  `IIIS_Back` tinyint(4) NOT NULL default '0',
  `IIIS_Rb` tinyint(4) NOT NULL default '0',
  `IVS_Main` tinyint(4) NOT NULL default '0',
  `IVS_Back` tinyint(4) NOT NULL default '0',
  `IVS_Rb` tinyint(4) NOT NULL default '0',
  `VS_Main` tinyint(4) NOT NULL default '0',
  `VS_Back` tinyint(4) NOT NULL default '0',
  `VS_Rb` tinyint(4) NOT NULL default '0',
  `VIS_Main` tinyint(4) NOT NULL default '0',
  `VIS_Back` tinyint(4) NOT NULL default '0',
  `VIS_Rb` tinyint(4) NOT NULL default '0',
  `VIIS_Main` tinyint(4) NOT NULL default '0',
  `VIIS_Back` tinyint(4) NOT NULL default '0',
  `VIIS_Rb` tinyint(4) NOT NULL default '0',
  `VIIIS_Main` tinyint(4) NOT NULL default '0',
  `VIIIS_Back` tinyint(4) NOT NULL default '0',
  `VIIIS_Rb` tinyint(4) NOT NULL default '0',
  `Degree` tinyint(4) NOT NULL default '0',
  `ProCerti` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`Scholar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btechexamdetail`
--

INSERT INTO `btechexamdetail` (`Scholar`, `IS_Main`, `IS_Back`, `IS_Rb`, `IIS_Main`, `IIS_Back`, `IIS_Rb`, `IIIS_Main`, `IIIS_Back`, `IIIS_Rb`, `IVS_Main`, `IVS_Back`, `IVS_Rb`, `VS_Main`, `VS_Back`, `VS_Rb`, `VIS_Main`, `VIS_Back`, `VIS_Rb`, `VIIS_Main`, `VIIS_Back`, `VIIS_Rb`, `VIIIS_Main`, `VIIIS_Back`, `VIIIS_Rb`, `Degree`, `ProCerti`) VALUES
('ecb20130208', 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
('ecb201302035', 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtech`
--

CREATE TABLE IF NOT EXISTS `mtech` (
  `prog` varchar(50) default NULL,
  `Branch` varchar(50) default NULL,
  `Scholar` varchar(50) NOT NULL default '',
  `Exam` varchar(50) default NULL,
  `Rank` varchar(50) default NULL,
  `Under` varchar(50) default NULL,
  `Name` varchar(50) default NULL,
  `Father_Name` varchar(50) default NULL,
  `Mother_Name` varchar(50) default NULL,
  `Address` varchar(50) default NULL,
  `DOB` varchar(50) default NULL,
  `City` varchar(50) default NULL,
  `Image` mediumtext,
  `Contact` varchar(50) default NULL,
  `Pin` varchar(50) default NULL,
  `Email` varchar(50) default NULL,
  `State` varchar(50) default NULL,
  `Marriage` varchar(50) default NULL,
  `Blood` varchar(50) default NULL,
  `Gender` varchar(50) default NULL,
  `Religion` varchar(50) default NULL,
  `Belong` varchar(50) default NULL,
  `Income` varchar(50) default NULL,
  `Father_occupation` varchar(50) default NULL,
  `Mother_occupation` varchar(50) default NULL,
  `tenSubject` varchar(50) default NULL,
  `tenBoard` varchar(50) default NULL,
  `tenPass` varchar(50) default NULL,
  `tenMarks` varchar(50) default NULL,
  `tweSubject` varchar(50) default NULL,
  `tweBoard` varchar(50) default NULL,
  `twePass` varchar(50) default NULL,
  `tweMarks` varchar(50) default NULL,
  `ugSubject` varchar(50) default NULL,
  `ugBoard` varchar(50) default NULL,
  `ugPass` varchar(50) default NULL,
  `ugMarks` varchar(50) default NULL,
  `TenScorecard` varchar(50) default NULL,
  `TweScoecard` varchar(50) default NULL,
  `DOB_Certificate` varchar(50) default NULL,
  `Caste_Certificate` varchar(50) default NULL,
  `DipandBtechScorecard` varchar(50) default NULL,
  `PHandEX_Certificate` varchar(50) default NULL,
  `Tc` varchar(50) default NULL,
  `Other` varchar(50) default NULL,
  PRIMARY KEY  (`Scholar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mtech`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtechdocumentdetails`
--

CREATE TABLE IF NOT EXISTS `mtechdocumentdetails` (
  `Scholar` varchar(50) NOT NULL,
  `XMarkSheet` tinyint(4) NOT NULL default '0',
  `XIIMarkSheet` tinyint(4) NOT NULL default '0',
  `taxDeducation` tinyint(4) NOT NULL default '0',
  `regStdBon` tinyint(4) NOT NULL default '0',
  `aictcAppCerti` tinyint(4) NOT NULL default '0',
  `loan` tinyint(4) NOT NULL default '0',
  `IyearNoDues` tinyint(4) NOT NULL default '0',
  `IIyearNoDues` tinyint(4) NOT NULL default '0',
  `withMidCourse` tinyint(4) NOT NULL default '0',
  `withMidCourseDate` varchar(50) default NULL,
  `withComplitionCourse` tinyint(4) NOT NULL default '0',
  `withComplitionCourseDate` varchar(50) default NULL,
  PRIMARY KEY  (`Scholar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mtechdocumentdetails`
--


-- --------------------------------------------------------

--
-- Table structure for table `mtechexamdetail`
--

CREATE TABLE IF NOT EXISTS `mtechexamdetail` (
  `Scholar` varchar(50) NOT NULL,
  `IS_Main` tinyint(4) NOT NULL default '0',
  `IS_Back` tinyint(4) NOT NULL default '0',
  `IS_Rb` tinyint(4) NOT NULL default '0',
  `IIS_Main` tinyint(4) NOT NULL default '0',
  `IIS_Back` tinyint(4) NOT NULL default '0',
  `IIS_Rb` tinyint(4) NOT NULL default '0',
  `IIIS_Main` tinyint(4) NOT NULL default '0',
  `IIIS_Back` tinyint(4) NOT NULL default '0',
  `IIIS_Rb` tinyint(4) NOT NULL default '0',
  `IVS_Main` tinyint(4) NOT NULL default '0',
  `IVS_Back` tinyint(4) NOT NULL default '0',
  `IVS_Rb` tinyint(4) NOT NULL default '0',
  `Degree` tinyint(4) NOT NULL default '0',
  `ProCerti` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`Scholar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mtechexamdetail`
--

--
-- Database: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATE_NAME` varchar(64) NOT NULL default '',
  `DESCRIPTION` varchar(60) NOT NULL default '',
  `MAXLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `ID` bigint(11) NOT NULL default '0',
  `IS_DEFAULT` varchar(3) NOT NULL default '',
  `IS_COMPILED` varchar(3) NOT NULL default '',
  `SORTLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', '', 0),
('dec8_bin', 'dec8', 69, '', '', 0),
('cp850_general_ci', 'cp850', 4, 'Yes', '', 0),
('cp850_bin', 'cp850', 80, '', '', 0),
('hp8_english_ci', 'hp8', 6, 'Yes', '', 0),
('hp8_bin', 'hp8', 72, '', '', 0),
('koi8r_general_ci', 'koi8r', 7, 'Yes', '', 0),
('koi8r_bin', 'koi8r', 74, '', '', 0),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', '', 0),
('swe7_bin', 'swe7', 82, '', '', 0),
('ascii_general_ci', 'ascii', 11, 'Yes', '', 0),
('ascii_bin', 'ascii', 65, '', '', 0),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', '', 0),
('hebrew_bin', 'hebrew', 71, '', '', 0),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', '', 0),
('koi8u_bin', 'koi8u', 75, '', '', 0),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', '', 0),
('greek_bin', 'greek', 70, '', '', 0),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', '', 0),
('latin5_bin', 'latin5', 78, '', '', 0),
('armscii8_general_ci', 'armscii8', 32, 'Yes', '', 0),
('armscii8_bin', 'armscii8', 64, '', '', 0),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('cp866_general_ci', 'cp866', 36, 'Yes', '', 0),
('cp866_bin', 'cp866', 68, '', '', 0),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', '', 0),
('keybcs2_bin', 'keybcs2', 73, '', '', 0),
('macce_general_ci', 'macce', 38, 'Yes', '', 0),
('macce_bin', 'macce', 43, '', '', 0),
('macroman_general_ci', 'macroman', 39, 'Yes', '', 0),
('macroman_bin', 'macroman', 53, '', '', 0),
('cp852_general_ci', 'cp852', 40, 'Yes', '', 0),
('cp852_bin', 'cp852', 81, '', '', 0),
('latin7_estonian_cs', 'latin7', 20, '', '', 0),
('latin7_general_ci', 'latin7', 41, 'Yes', '', 0),
('latin7_general_cs', 'latin7', 42, '', '', 0),
('latin7_bin', 'latin7', 79, '', '', 0),
('cp1251_bulgarian_ci', 'cp1251', 14, '', '', 0),
('cp1251_ukrainian_ci', 'cp1251', 23, '', '', 0),
('cp1251_bin', 'cp1251', 50, '', '', 0),
('cp1251_general_ci', 'cp1251', 51, 'Yes', '', 0),
('cp1251_general_cs', 'cp1251', 52, '', '', 0),
('cp1256_general_ci', 'cp1256', 57, 'Yes', '', 0),
('cp1256_bin', 'cp1256', 67, '', '', 0),
('cp1257_lithuanian_ci', 'cp1257', 29, '', '', 0),
('cp1257_bin', 'cp1257', 58, '', '', 0),
('cp1257_general_ci', 'cp1257', 59, 'Yes', '', 0),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', '', 0),
('geostd8_bin', 'geostd8', 93, '', '', 0),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(21) NOT NULL default '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL default '',
  `DATA_TYPE` varchar(64) NOT NULL default '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) default NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) default NULL,
  `NUMERIC_PRECISION` bigint(21) default NULL,
  `NUMERIC_SCALE` bigint(21) default NULL,
  `CHARACTER_SET_NAME` varchar(64) default NULL,
  `COLLATION_NAME` varchar(64) default NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL default '',
  `EXTRA` varchar(20) NOT NULL default '',
  `PRIVILEGES` varchar(80) NOT NULL default '',
  `COLUMN_COMMENT` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'cdcol', 'cds', 'titel', 1, NULL, 'YES', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'cdcol', 'cds', 'interpret', 2, NULL, 'YES', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'cdcol', 'cds', 'jahr', 3, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'cdcol', 'cds', 'id', 4, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'prog', 1, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Branch', 2, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Scholar', 3, '', 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Exam', 4, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Rank', 5, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Under', 6, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Name', 7, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Father_Name', 8, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Mother_Name', 9, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Address', 10, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'DOB', 11, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'City', 12, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Image', 13, NULL, 'YES', 'mediumtext', 16777215, 16777215, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Contact', 14, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Pin', 15, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Email', 16, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'State', 17, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Marriage', 18, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Blood', 19, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Gender', 20, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Religion', 21, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Belong', 22, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Income', 23, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Father_occupation', 24, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Mother_occupation', 25, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'tenSubject', 26, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'tenBoard', 27, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'tenPass', 28, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'tenMarks', 29, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'tweSubject', 30, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'tweBoard', 31, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'twePass', 32, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'tweMarks', 33, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'ugSubject', 34, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'ugBoard', 35, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'ugPass', 36, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'ugMarks', 37, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'TenScorecard', 38, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'TweScorecard', 39, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'DOB_Certificate', 40, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Caste_Certificate', 41, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'DipandBtechScorecard', 42, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'PHandEX_Certificate', 43, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Tc', 44, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btech', 'Other', 45, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'Scholar', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'XMarkSheet', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'XIIMarkSheet', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'taxDeducation', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'regStdBon', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'aictcAppCerti', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'loan', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'IyearNoDues', 8, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'IIyearNoDues', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'IIIyearNoDues', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'IVyearNoDues', 11, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'withMidCourse', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'withMidCourseDate', 13, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'withComplitionCourse', 14, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechdocumentdetails', 'withComplitionCourseDate', 15, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'Scholar', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IS_Main', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IS_Back', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IS_Rb', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IIS_Main', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IIS_Back', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IIS_Rb', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IIIS_Main', 8, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IIIS_Back', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IIIS_Rb', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IVS_Main', 11, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IVS_Back', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'IVS_Rb', 13, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VS_Main', 14, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VS_Back', 15, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VS_Rb', 16, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VIS_Main', 17, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VIS_Back', 18, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VIS_Rb', 19, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VIIS_Main', 20, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VIIS_Back', 21, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VIIS_Rb', 22, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VIIIS_Main', 23, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VIIIS_Back', 24, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'VIIIS_Rb', 25, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'Degree', 26, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'btechexamdetail', 'ProCerti', 27, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'prog', 1, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Branch', 2, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Scholar', 3, '', 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Exam', 4, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Rank', 5, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Under', 6, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Name', 7, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Father_Name', 8, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Mother_Name', 9, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Address', 10, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'DOB', 11, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'City', 12, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Image', 13, NULL, 'YES', 'mediumtext', 16777215, 16777215, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Contact', 14, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Pin', 15, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Email', 16, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'State', 17, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Marriage', 18, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Blood', 19, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Gender', 20, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Religion', 21, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Belong', 22, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Income', 23, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Father_occupation', 24, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Mother_occupation', 25, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'details', 'mtech', 'tenSubject', 26, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'tenBoard', 27, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'tenPass', 28, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'tenMarks', 29, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'tweSubject', 30, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'tweBoard', 31, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'twePass', 32, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'tweMarks', 33, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'ugSubject', 34, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'ugBoard', 35, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'ugPass', 36, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'ugMarks', 37, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'TenScorecard', 38, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'TweScoecard', 39, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'DOB_Certificate', 40, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Caste_Certificate', 41, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'DipandBtechScorecard', 42, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'PHandEX_Certificate', 43, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Tc', 44, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtech', 'Other', 45, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'Scholar', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'XMarkSheet', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'XIIMarkSheet', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'taxDeducation', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'regStdBon', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'aictcAppCerti', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'loan', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'IyearNoDues', 8, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'IIyearNoDues', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'withMidCourse', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'withMidCourseDate', 11, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'withComplitionCourse', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechdocumentdetails', 'withComplitionCourseDate', 13, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'Scholar', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IS_Main', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IS_Back', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IS_Rb', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IIS_Main', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IIS_Back', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IIS_Rb', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IIIS_Main', 8, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IIIS_Back', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IIIS_Rb', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IVS_Main', 11, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IVS_Back', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'IVS_Rb', 13, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'Degree', 14, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'details', 'mtechexamdetail', 'ProCerti', 15, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Table_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Column_name', 5, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Timestamp', 6, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Column_priv', 7, '', 'NO', 'set', 31, 93, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Select'',''Insert'',''Update'',''References'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Select_priv', 4, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Insert_priv', 5, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Update_priv', 6, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Delete_priv', 7, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_priv', 8, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Drop_priv', 9, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Grant_priv', 10, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'References_priv', 11, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Index_priv', 12, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Alter_priv', 13, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_tmp_table_priv', 14, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Lock_tables_priv', 15, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_view_priv', 16, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Show_view_priv', 17, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_routine_priv', 18, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Alter_routine_priv', 19, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Execute_priv', 20, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Event_priv', 21, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Trigger_priv', 22, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'db', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'name', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'body', 3, NULL, 'NO', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'definer', 4, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'execute_at', 5, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'interval_value', 6, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'interval_field', 7, NULL, 'YES', 'enum', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''YEAR'',''QUARTER'',''MONTH'',''DAY'',''HOUR'',''MINUTE'',''WEEK'',''SECOND'',''MICROSECOND'',''YEAR_MONTH'',''DAY_HOUR'',''DAY_MINUTE'',''DAY_SECOND'',''HOUR_MINUTE'',''HOUR_SECOND'',''MINUTE_SECOND'',''DAY_MICROSECOND'',''HOUR_MICROSECOND'',''MINUTE_MICROSECOND'',''SECOND_MICROSECOND'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'created', 8, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'modified', 9, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'last_executed', 10, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'starts', 11, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'ends', 12, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'status', 13, 'ENABLED', 'NO', 'enum', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''ENABLED'',''DISABLED'',''SLAVESIDE_DISABLED'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'on_completion', 14, 'DROP', 'NO', 'enum', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''DROP'',''PRESERVE'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'sql_mode', 15, '', 'NO', 'set', 431, 1293, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''REAL_AS_FLOAT'',''PIPES_AS_CONCAT'',''ANSI_QUOTES'',''IGNORE_SPACE'',''NOT_USED'',''ONLY_FULL_GROUP_BY'',''NO_UNSIGNED_SUBTRACTION'',''NO_DIR_IN_CREATE'',''POSTGRESQL'',''ORACLE'',''MSSQL'',''DB2'',''MAXDB'',''NO_KEY_OPTIONS'',''NO_TABLE_OPTIONS'',''NO_FIELD_OPTIONS'',''MYSQL323'',''MYSQL40'',''ANSI'',''NO_AUTO_VALUE_ON_ZERO'',''NO_BACKSLASH_ESCAPES'',''STRICT_TRANS_TABLES'',''STRICT_ALL_TABLES'',''NO_ZERO_IN_DATE'',''NO_ZERO_DATE'',''INVALID_DATES'',''ERROR_FOR_DIVISION_BY_ZERO'',''TRADITIONAL'',''NO_AUTO_CREATE_USER'',''HIGH_NOT_PRECEDENCE'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'comment', 16, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'originator', 17, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'time_zone', 18, 'SYSTEM', 'NO', 'char', 64, 64, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'character_set_client', 19, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'collation_connection', 20, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'db_collation', 21, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'body_utf8', 22, NULL, 'YES', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'name', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'ret', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'dl', 3, '', 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_bin', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'type', 4, NULL, 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''function'',''aggregate'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'help_category_id', 1, NULL, 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(5) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'name', 2, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'parent_category_id', 3, NULL, 'YES', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(5) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'url', 4, NULL, 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_keyword', 'help_keyword_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_keyword', 'name', 2, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_relation', 'help_topic_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_relation', 'help_keyword_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'help_topic_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'name', 2, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'help_category_id', 3, NULL, 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(5) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'description', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'example', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'url', 6, NULL, 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Select_priv', 3, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Insert_priv', 4, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Update_priv', 5, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Delete_priv', 6, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_priv', 7, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Drop_priv', 8, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Grant_priv', 9, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'References_priv', 10, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Index_priv', 11, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Alter_priv', 12, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_tmp_table_priv', 13, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Lock_tables_priv', 14, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_view_priv', 15, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Show_view_priv', 16, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_routine_priv', 17, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Alter_routine_priv', 18, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Execute_priv', 19, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Trigger_priv', 20, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'Position', 1, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'File', 2, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'epoch', 3, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'inserts', 4, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'updates', 5, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'deletes', 6, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'schemaops', 7, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'plugin', 'name', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'plugin', 'dl', 2, '', 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_bin', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'db', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'name', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'type', 3, NULL, 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''FUNCTION'',''PROCEDURE'')', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'specific_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'language', 5, 'SQL', 'NO', 'enum', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''SQL'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'sql_data_access', 6, 'CONTAINS_SQL', 'NO', 'enum', 17, 51, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''CONTAINS_SQL'',''NO_SQL'',''READS_SQL_DATA'',''MODIFIES_SQL_DATA'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'is_deterministic', 7, 'NO', 'NO', 'enum', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''YES'',''NO'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'security_type', 8, 'DEFINER', 'NO', 'enum', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''INVOKER'',''DEFINER'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'param_list', 9, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'returns', 10, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'body', 11, NULL, 'NO', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'definer', 12, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'created', 13, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'modified', 14, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'sql_mode', 15, '', 'NO', 'set', 431, 1293, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''REAL_AS_FLOAT'',''PIPES_AS_CONCAT'',''ANSI_QUOTES'',''IGNORE_SPACE'',''NOT_USED'',''ONLY_FULL_GROUP_BY'',''NO_UNSIGNED_SUBTRACTION'',''NO_DIR_IN_CREATE'',''POSTGRESQL'',''ORACLE'',''MSSQL'',''DB2'',''MAXDB'',''NO_KEY_OPTIONS'',''NO_TABLE_OPTIONS'',''NO_FIELD_OPTIONS'',''MYSQL323'',''MYSQL40'',''ANSI'',''NO_AUTO_VALUE_ON_ZERO'',''NO_BACKSLASH_ESCAPES'',''STRICT_TRANS_TABLES'',''STRICT_ALL_TABLES'',''NO_ZERO_IN_DATE'',''NO_ZERO_DATE'',''INVALID_DATES'',''ERROR_FOR_DIVISION_BY_ZERO'',''TRADITIONAL'',''NO_AUTO_CREATE_USER'',''HIGH_NOT_PRECEDENCE'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'comment', 16, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'character_set_client', 17, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'collation_connection', 18, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'db_collation', 19, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'body_utf8', 20, NULL, 'YES', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Routine_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Routine_type', 5, NULL, 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_bin', 'enum(''FUNCTION'',''PROCEDURE'')', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Grantor', 6, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Proc_priv', 7, '', 'NO', 'set', 27, 81, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Execute'',''Alter Routine'',''Grant'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Timestamp', 8, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Server_name', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Host', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Db', 3, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Username', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Password', 5, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Port', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Socket', 7, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Wrapper', 8, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Owner', 9, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Table_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Grantor', 5, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Timestamp', 6, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Table_priv', 7, '', 'NO', 'set', 98, 294, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Select'',''Insert'',''Update'',''Delete'',''Create'',''Drop'',''Grant'',''References'',''Index'',''Alter'',''Create View'',''Show view'',''Trigger'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Column_priv', 8, '', 'NO', 'set', 31, 93, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Select'',''Insert'',''Update'',''References'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone', 'Time_zone_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone', 'Use_leap_seconds', 2, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''Y'',''N'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_leap_second', 'Transition_time', 1, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_leap_second', 'Correction', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_name', 'Name', 1, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_name', 'Time_zone_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition', 'Time_zone_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition', 'Transition_time', 2, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition', 'Transition_type_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Time_zone_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Transition_type_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Offset', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Is_DST', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Abbreviation', 5, '', 'NO', 'char', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'User', 2, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Password', 3, '', 'NO', 'char', 41, 41, NULL, NULL, 'latin1', 'latin1_bin', 'char(41)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Select_priv', 4, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Insert_priv', 5, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Update_priv', 6, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Delete_priv', 7, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_priv', 8, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Drop_priv', 9, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Reload_priv', 10, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Shutdown_priv', 11, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Process_priv', 12, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'File_priv', 13, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Grant_priv', 14, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'References_priv', 15, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Index_priv', 16, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Alter_priv', 17, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Show_db_priv', 18, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Super_priv', 19, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_tmp_table_priv', 20, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Lock_tables_priv', 21, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Execute_priv', 22, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Repl_slave_priv', 23, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Repl_client_priv', 24, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_view_priv', 25, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Show_view_priv', 26, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_routine_priv', 27, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Alter_routine_priv', 28, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_user_priv', 29, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Event_priv', 30, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Trigger_priv', 31, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'ssl_type', 32, '', 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum('''',''ANY'',''X509'',''SPECIFIED'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'ssl_cipher', 33, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'x509_issuer', 34, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'x509_subject', 35, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_questions', 36, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_updates', 37, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_connections', 38, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_user_connections', 39, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'password', 'examtb', 'User_Name', 1, '', 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'password', 'examtb', 'Password', 2, NULL, 'YES', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'password', 'examtb', 'Sel_Ques', 3, NULL, 'YES', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'password', 'proctb', 'User_Name', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'password', 'proctb', 'Password', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'password', 'proctb', 'Sel_Ques', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_bookmark', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_bookmark', 'dbase', 2, '', 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_bookmark', 'user', 3, '', 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_bookmark', 'label', 4, '', 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_bookmark', 'query', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 'db_name', 2, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 'table_name', 3, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 'column_name', 4, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 'comment', 5, '', 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 'mimetype', 6, '', 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 'transformation', 7, '', 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 'transformation_options', 8, '', 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_designer_coords', 'db_name', 1, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_designer_coords', 'table_name', 2, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_designer_coords', 'x', 3, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_designer_coords', 'y', 4, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_designer_coords', 'v', 5, NULL, 'YES', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_designer_coords', 'h', 6, NULL, 'YES', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_history', 'id', 1, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_history', 'username', 2, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_history', 'db', 3, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_history', 'table', 4, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_history', 'timevalue', 5, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_history', 'sqlquery', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_pdf_pages', 'db_name', 1, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_pdf_pages', 'page_nr', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'phpmyadmin', 'pma_pdf_pages', 'page_descr', 3, '', 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_relation', 'master_db', 1, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_relation', 'master_table', 2, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_relation', 'master_field', 3, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_relation', 'foreign_db', 4, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_relation', 'foreign_table', 5, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_relation', 'foreign_field', 6, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_table_coords', 'db_name', 1, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_table_coords', 'table_name', 2, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_table_coords', 'pdf_page_number', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_table_coords', 'x', 4, '0', 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_table_coords', 'y', 5, '0', 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_table_info', 'db_name', 1, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_table_info', 'table_name', 2, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'phpmyadmin', 'pma_table_info', 'display_field', 3, '', 'NO', 'varchar', 64, 64, NULL, NULL, 'latin1', 'latin1_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'webauth', 'user_pwd', 'name', 1, '', 'NO', 'char', 30, 30, NULL, NULL, 'latin1', 'latin1_general_ci', 'char(30)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'webauth', 'user_pwd', 'pass', 2, '', 'NO', 'char', 32, 32, NULL, NULL, 'latin1', 'latin1_general_ci', 'char(32)', '', '', 'select,insert,update,references', '');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMN_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(10) NOT NULL default '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) default NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) default NULL,
  `REFERENCED_TABLE_NAME` varchar(64) default NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
(NULL, 'cdcol', 'PRIMARY', NULL, 'cdcol', 'cds', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'details', 'PRIMARY', NULL, 'details', 'btech', 'Scholar', 1, NULL, NULL, NULL, NULL),
(NULL, 'details', 'PRIMARY', NULL, 'details', 'btechdocumentdetails', 'Scholar', 1, NULL, NULL, NULL, NULL),
(NULL, 'details', 'PRIMARY', NULL, 'details', 'btechexamdetail', 'Scholar', 1, NULL, NULL, NULL, NULL),
(NULL, 'details', 'PRIMARY', NULL, 'details', 'mtech', 'Scholar', 1, NULL, NULL, NULL, NULL),
(NULL, 'details', 'PRIMARY', NULL, 'details', 'mtechdocumentdetails', 'Scholar', 1, NULL, NULL, NULL, NULL),
(NULL, 'details', 'PRIMARY', NULL, 'details', 'mtechexamdetail', 'Scholar', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Table_name', 4, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Column_name', 5, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'db', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'db', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'db', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'event', 'db', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'event', 'name', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'func', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_category', 'help_category_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'name', NULL, 'mysql', 'help_category', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_keyword', 'help_keyword_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'name', NULL, 'mysql', 'help_keyword', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_relation', 'help_keyword_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_relation', 'help_topic_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_topic', 'help_topic_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'name', NULL, 'mysql', 'help_topic', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'host', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'host', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'ndb_binlog_index', 'epoch', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'plugin', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'proc', 'db', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'proc', 'name', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'proc', 'type', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Routine_name', 4, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Routine_type', 5, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'servers', 'Server_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'Table_name', 4, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone', 'Time_zone_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_leap_second', 'Transition_time', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_name', 'Name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition', 'Time_zone_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition', 'Transition_time', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition_type', 'Time_zone_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition_type', 'Transition_type_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'user', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'user', 'User', 2, NULL, NULL, NULL, NULL),
(NULL, 'password', 'PRIMARY', NULL, 'password', 'examtb', 'User_Name', 1, NULL, NULL, NULL, NULL),
(NULL, 'password', 'PRIMARY', NULL, 'password', 'proctb', 'User_Name', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_bookmark', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_column_info', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'db_name', NULL, 'phpmyadmin', 'pma_column_info', 'db_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'db_name', NULL, 'phpmyadmin', 'pma_column_info', 'table_name', 2, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'db_name', NULL, 'phpmyadmin', 'pma_column_info', 'column_name', 3, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_designer_coords', 'db_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_designer_coords', 'table_name', 2, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_history', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_pdf_pages', 'page_nr', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_relation', 'master_db', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_relation', 'master_table', 2, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_relation', 'master_field', 3, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_table_coords', 'db_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_table_coords', 'table_name', 2, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_table_coords', 'pdf_page_number', 3, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_table_info', 'db_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'phpmyadmin', 'PRIMARY', NULL, 'phpmyadmin', 'pma_table_info', 'table_name', 2, NULL, NULL, NULL, NULL),
(NULL, 'webauth', 'PRIMARY', NULL, 'webauth', 'user_pwd', 'name', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` bigint(20) NOT NULL default '0',
  `SEQ` bigint(20) NOT NULL default '0',
  `STATE` varchar(30) NOT NULL default '',
  `DURATION` decimal(9,6) NOT NULL default '0.000000',
  `CPU_USER` decimal(9,6) default NULL,
  `CPU_SYSTEM` decimal(9,6) default NULL,
  `CONTEXT_VOLUNTARY` bigint(20) default NULL,
  `CONTEXT_INVOLUNTARY` bigint(20) default NULL,
  `BLOCK_OPS_IN` bigint(20) default NULL,
  `BLOCK_OPS_OUT` bigint(20) default NULL,
  `MESSAGES_SENT` bigint(20) default NULL,
  `MESSAGES_RECEIVED` bigint(20) default NULL,
  `PAGE_FAULTS_MAJOR` bigint(20) default NULL,
  `PAGE_FAULTS_MINOR` bigint(20) default NULL,
  `SWAPS` bigint(20) default NULL,
  `SOURCE_FUNCTION` varchar(30) default NULL,
  `SOURCE_FILE` varchar(20) default NULL,
  `SOURCE_LINE` bigint(20) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROFILING`
--


-- --------------------------------------------------------

--
-- Table structure for table `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_CATALOG` varchar(512) default NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL default '',
  `ROUTINE_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_TYPE` varchar(9) NOT NULL default '',
  `DTD_IDENTIFIER` varchar(64) default NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL default '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) default NULL,
  `EXTERNAL_LANGUAGE` varchar(64) default NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL default '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL default '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(64) default NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL default '',
  `CREATED` datetime NOT NULL default '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL default '0000-00-00 00:00:00',
  `SQL_MODE` longtext NOT NULL,
  `ROUTINE_COMMENT` varchar(64) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ROUTINES`
--


-- --------------------------------------------------------

--
-- Table structure for table `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) default NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATION_NAME` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(512) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL),
(NULL, 'cdcol', 'latin1', 'latin1_general_ci', NULL),
(NULL, 'details', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'mysql', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'password', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'phpmyadmin', 'latin1', 'latin1_general_ci', NULL),
(NULL, 'proctor', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'proctor management', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'test', 'latin1', 'latin1_general_ci', NULL),
(NULL, 'webauth', 'latin1', 'latin1_general_ci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''pma''@''localhost''', NULL, 'phpmyadmin', 'SELECT', 'NO'),
('''pma''@''localhost''', NULL, 'phpmyadmin', 'INSERT', 'NO'),
('''pma''@''localhost''', NULL, 'phpmyadmin', 'UPDATE', 'NO'),
('''pma''@''localhost''', NULL, 'phpmyadmin', 'DELETE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `NON_UNIQUE` bigint(1) NOT NULL default '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL default '0',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `COLLATION` varchar(1) default NULL,
  `CARDINALITY` bigint(21) default NULL,
  `SUB_PART` bigint(3) default NULL,
  `PACKED` varchar(10) default NULL,
  `NULLABLE` varchar(3) NOT NULL default '',
  `INDEX_TYPE` varchar(16) NOT NULL default '',
  `COMMENT` varchar(16) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'cdcol', 'cds', 0, 'cdcol', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'details', 'btech', 0, 'details', 'PRIMARY', 1, 'Scholar', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'details', 'btechdocumentdetails', 0, 'details', 'PRIMARY', 1, 'Scholar', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'details', 'btechexamdetail', 0, 'details', 'PRIMARY', 1, 'Scholar', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'details', 'mtech', 0, 'details', 'PRIMARY', 1, 'Scholar', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'details', 'mtechdocumentdetails', 0, 'details', 'PRIMARY', 1, 'Scholar', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'details', 'mtechexamdetail', 0, 'details', 'PRIMARY', 1, 'Scholar', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 4, 'Table_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 5, 'Column_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 1, 'mysql', 'User', 1, 'User', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'event', 0, 'mysql', 'PRIMARY', 1, 'db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'event', 0, 'mysql', 'PRIMARY', 2, 'name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'func', 0, 'mysql', 'PRIMARY', 1, 'name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_category', 0, 'mysql', 'PRIMARY', 1, 'help_category_id', 'A', 37, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_category', 0, 'mysql', 'name', 1, 'name', 'A', 37, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_keyword', 0, 'mysql', 'PRIMARY', 1, 'help_keyword_id', 'A', 425, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_keyword', 0, 'mysql', 'name', 1, 'name', 'A', 425, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_relation', 0, 'mysql', 'PRIMARY', 1, 'help_keyword_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_relation', 0, 'mysql', 'PRIMARY', 2, 'help_topic_id', 'A', 904, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_topic', 0, 'mysql', 'PRIMARY', 1, 'help_topic_id', 'A', 479, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_topic', 0, 'mysql', 'name', 1, 'name', 'A', 479, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'host', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'host', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'ndb_binlog_index', 0, 'mysql', 'PRIMARY', 1, 'epoch', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'plugin', 0, 'mysql', 'PRIMARY', 1, 'name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'proc', 0, 'mysql', 'PRIMARY', 1, 'db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'proc', 0, 'mysql', 'PRIMARY', 2, 'name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'proc', 0, 'mysql', 'PRIMARY', 3, 'type', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 4, 'Routine_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 5, 'Routine_type', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 1, 'mysql', 'Grantor', 1, 'Grantor', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'servers', 0, 'mysql', 'PRIMARY', 1, 'Server_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 4, 'Table_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 1, 'mysql', 'Grantor', 1, 'Grantor', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone', 0, 'mysql', 'PRIMARY', 1, 'Time_zone_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_leap_second', 0, 'mysql', 'PRIMARY', 1, 'Transition_time', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_name', 0, 'mysql', 'PRIMARY', 1, 'Name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition', 0, 'mysql', 'PRIMARY', 1, 'Time_zone_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition', 0, 'mysql', 'PRIMARY', 2, 'Transition_time', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition_type', 0, 'mysql', 'PRIMARY', 1, 'Time_zone_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition_type', 0, 'mysql', 'PRIMARY', 2, 'Transition_type_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'user', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'user', 0, 'mysql', 'PRIMARY', 2, 'User', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'password', 'examtb', 0, 'password', 'PRIMARY', 1, 'User_Name', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'password', 'proctb', 0, 'password', 'PRIMARY', 1, 'User_Name', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_bookmark', 0, 'phpmyadmin', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 0, 'phpmyadmin', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 0, 'phpmyadmin', 'db_name', 1, 'db_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 0, 'phpmyadmin', 'db_name', 2, 'table_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_column_info', 0, 'phpmyadmin', 'db_name', 3, 'column_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_designer_coords', 0, 'phpmyadmin', 'PRIMARY', 1, 'db_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_designer_coords', 0, 'phpmyadmin', 'PRIMARY', 2, 'table_name', 'A', 6, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_history', 0, 'phpmyadmin', 'PRIMARY', 1, 'id', 'A', 253, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_history', 1, 'phpmyadmin', 'username', 1, 'username', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_history', 1, 'phpmyadmin', 'username', 2, 'db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_history', 1, 'phpmyadmin', 'username', 3, 'table', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_history', 1, 'phpmyadmin', 'username', 4, 'timevalue', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_pdf_pages', 0, 'phpmyadmin', 'PRIMARY', 1, 'page_nr', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_pdf_pages', 1, 'phpmyadmin', 'db_name', 1, 'db_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_relation', 0, 'phpmyadmin', 'PRIMARY', 1, 'master_db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_relation', 0, 'phpmyadmin', 'PRIMARY', 2, 'master_table', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_relation', 0, 'phpmyadmin', 'PRIMARY', 3, 'master_field', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_relation', 1, 'phpmyadmin', 'foreign_field', 1, 'foreign_db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_relation', 1, 'phpmyadmin', 'foreign_field', 2, 'foreign_table', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_table_coords', 0, 'phpmyadmin', 'PRIMARY', 1, 'db_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_table_coords', 0, 'phpmyadmin', 'PRIMARY', 2, 'table_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_table_coords', 0, 'phpmyadmin', 'PRIMARY', 3, 'pdf_page_number', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_table_info', 0, 'phpmyadmin', 'PRIMARY', 1, 'db_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'phpmyadmin', 'pma_table_info', 0, 'phpmyadmin', 'PRIMARY', 2, 'table_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'webauth', 'user_pwd', 0, 'webauth', 'PRIMARY', 1, 'name', 'A', 1, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `TABLE_TYPE` varchar(64) NOT NULL default '',
  `ENGINE` varchar(64) default NULL,
  `VERSION` bigint(21) default NULL,
  `ROW_FORMAT` varchar(10) default NULL,
  `TABLE_ROWS` bigint(21) default NULL,
  `AVG_ROW_LENGTH` bigint(21) default NULL,
  `DATA_LENGTH` bigint(21) default NULL,
  `MAX_DATA_LENGTH` bigint(21) default NULL,
  `INDEX_LENGTH` bigint(21) default NULL,
  `DATA_FREE` bigint(21) default NULL,
  `AUTO_INCREMENT` bigint(21) default NULL,
  `CREATE_TIME` datetime default NULL,
  `UPDATE_TIME` datetime default NULL,
  `CHECK_TIME` datetime default NULL,
  `TABLE_COLLATION` varchar(64) default NULL,
  `CHECKSUM` bigint(21) default NULL,
  `CREATE_OPTIONS` varchar(255) default NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 576, 0, 16661376, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=29127', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 423, 0, 16737264, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=39662', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 387, 0, 16733880, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=43351', ''),
(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2017-05-23 13:36:48', '2017-05-23 13:36:48', NULL, 'utf8_general_ci', NULL, 'max_rows=8715', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2565, 0, 16757145, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6540', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 4637, 0, 16762755, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3618', ''),
(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 356, 0, 16590668, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=47127', ''),
(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2017-05-23 13:36:48', '2017-05-23 13:36:48', NULL, 'utf8_general_ci', NULL, 'max_rows=9172', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3656, 0, 16755448, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4588', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2179, 0, 16767405, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7699', ''),
(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2679, 0, 16770540, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6262', ''),
(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3641, 0, 16763164, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4607', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2504, 0, 16749256, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6700', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2372, 0, 16748692, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7073', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2017-05-23 13:36:48', '2017-05-23 13:36:48', NULL, 'utf8_general_ci', NULL, 'max_rows=7652', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 1986, 0, 16759854, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=8447', ''),
(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2017-05-23 13:36:48', '2017-05-23 13:36:48', NULL, 'utf8_general_ci', NULL, 'max_rows=15073', ''),
(NULL, 'cdcol', 'cds', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 49, 148, 281474976710655, 2048, 0, 6, '2005-10-25 13:17:49', '2007-12-21 07:30:28', NULL, 'latin1_general_ci', NULL, '', ''),
(NULL, 'details', 'btech', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 198, 396, 281474976710655, 2048, 0, NULL, '2017-05-17 08:45:20', '2017-05-23 09:25:38', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'details', 'btechdocumentdetails', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 34, 68, 281474976710655, 2048, 0, NULL, '2017-05-17 08:45:26', '2017-05-23 09:25:38', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'details', 'btechexamdetail', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 32, 64, 281474976710655, 2048, 0, NULL, '2017-05-17 08:45:32', '2017-05-23 09:28:32', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'details', 'mtech', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2017-05-17 08:17:48', '2017-05-17 08:17:48', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'details', 'mtechdocumentdetails', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2017-05-17 00:33:32', '2017-05-17 00:33:32', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'details', 'mtechexamdetail', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2017-05-17 00:25:01', '2017-05-17 00:25:01', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'mysql', 'columns_priv', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 227994731135631359, 4096, 0, NULL, '2007-09-24 16:59:30', '2007-12-21 07:30:28', NULL, 'utf8_bin', NULL, '', 'Column privileges'),
(NULL, 'mysql', 'db', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 1, 440, 880, 123848989752688639, 5120, 440, NULL, '2007-09-24 16:59:29', '2007-12-21 07:30:28', '2007-09-24 16:59:32', 'utf8_bin', NULL, '', 'Database privileges'),
(NULL, 'mysql', 'event', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 2048, 0, NULL, '2007-09-24 16:59:32', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'Events'),
(NULL, 'mysql', 'func', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 162974011515469823, 1024, 0, NULL, '2007-09-24 16:59:30', '2007-12-21 07:30:28', NULL, 'utf8_bin', NULL, '', 'User defined functions'),
(NULL, 'mysql', 'general_log', 'BASE TABLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Can''t find file: ''general_log'' (errno: 2)'),
(NULL, 'mysql', 'help_category', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 37, 581, 21497, 163536961468891135, 3072, 0, NULL, '2007-09-24 16:59:30', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'help categories'),
(NULL, 'mysql', 'help_keyword', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 425, 197, 83725, 55450570411999231, 16384, 0, NULL, '2007-09-24 16:59:31', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'help keywords'),
(NULL, 'mysql', 'help_relation', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 904, 9, 8136, 2533274790395903, 16384, 0, NULL, '2007-09-24 16:59:31', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'keyword-topic relation'),
(NULL, 'mysql', 'help_topic', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 479, 747, 358004, 281474976710655, 20480, 0, NULL, '2007-09-24 16:59:30', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'help topics'),
(NULL, 'mysql', 'host', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 110056715893866495, 2048, 0, NULL, '2007-09-24 16:59:30', '2007-12-21 07:30:28', NULL, 'utf8_bin', NULL, '', 'Host privileges;  Merged with database privileges'),
(NULL, 'mysql', 'ndb_binlog_index', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2007-09-24 16:59:32', '2007-12-21 07:30:28', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'mysql', 'plugin', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 162411061562048511, 1024, 0, NULL, '2007-09-24 16:59:30', '2007-12-21 07:30:28', NULL, 'utf8_bin', NULL, '', 'MySQL plugins'),
(NULL, 'mysql', 'proc', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 2048, 0, NULL, '2007-09-24 16:59:32', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'Stored Procedures'),
(NULL, 'mysql', 'procs_priv', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 239253730204057599, 4096, 0, NULL, '2007-09-24 16:59:32', '2007-12-21 07:30:28', NULL, 'utf8_bin', NULL, '', 'Procedure privileges'),
(NULL, 'mysql', 'servers', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 433752939111120895, 1024, 0, NULL, '2007-09-24 16:59:30', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'MySQL Foreign Servers table'),
(NULL, 'mysql', 'slow_log', 'BASE TABLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Can''t find file: ''slow_log'' (errno: 2)'),
(NULL, 'mysql', 'tables_priv', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 239535205180768255, 4096, 0, NULL, '2007-09-24 16:59:30', '2007-12-21 07:30:28', NULL, 'utf8_bin', NULL, '', 'Table privileges'),
(NULL, 'mysql', 'time_zone', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 1970324836974591, 1024, 0, 1, '2007-09-24 16:59:31', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'Time zones'),
(NULL, 'mysql', 'time_zone_leap_second', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2007-09-24 16:59:31', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'Leap seconds information for time zones'),
(NULL, 'mysql', 'time_zone_name', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 55450570411999231, 1024, 0, NULL, '2007-09-24 16:59:31', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'Time zone names'),
(NULL, 'mysql', 'time_zone_transition', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 4785074604081151, 1024, 0, NULL, '2007-09-24 16:59:31', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'Time zone transitions'),
(NULL, 'mysql', 'time_zone_transition_type', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 10696049115004927, 1024, 0, NULL, '2007-09-24 16:59:31', '2007-12-21 07:30:28', NULL, 'utf8_general_ci', NULL, '', 'Time zone transition types'),
(NULL, 'mysql', 'user', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 56, 168, 281474976710655, 2048, 0, NULL, '2007-09-24 16:59:30', '2007-12-21 07:30:28', NULL, 'utf8_bin', NULL, '', 'Users and global privileges'),
(NULL, 'password', 'examtb', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 24, 24, 281474976710655, 2048, 0, NULL, '2017-05-17 00:25:09', '2017-05-23 09:51:46', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'password', 'proctb', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 24, 24, 281474976710655, 2048, 0, NULL, '2017-05-17 00:25:20', '2017-05-17 00:27:18', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'phpmyadmin', 'pma_bookmark', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2007-07-14 02:55:23', '2007-12-21 07:30:28', NULL, 'latin1_general_ci', NULL, '', 'Bookmarks'),
(NULL, 'phpmyadmin', 'pma_column_info', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2007-07-14 02:55:23', '2007-12-21 07:30:28', NULL, 'latin1_general_ci', NULL, '', 'Column information for phpMyAdmin'),
(NULL, 'phpmyadmin', 'pma_designer_coords', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 6, 38, 232, 281474976710655, 2048, 0, NULL, '2007-07-14 02:55:23', '2017-05-16 21:14:00', NULL, 'latin1_general_ci', NULL, '', 'Table coordinates for Designer'),
(NULL, 'phpmyadmin', 'pma_history', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 253, 115, 29136, 281474976710655, 10240, 0, 254, '2007-07-14 02:55:23', '2017-05-23 09:33:43', NULL, 'latin1_general_ci', NULL, '', 'SQL history for phpMyAdmin'),
(NULL, 'phpmyadmin', 'pma_pdf_pages', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2007-07-14 02:55:23', '2007-12-21 07:30:28', NULL, 'latin1_general_ci', NULL, '', 'PDF relation pages for phpMyAdmin'),
(NULL, 'phpmyadmin', 'pma_relation', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 248, 281474976710655, 3072, 248, NULL, '2007-07-14 02:55:23', '2017-05-16 21:14:00', NULL, 'latin1_general_ci', NULL, '', 'Relation table'),
(NULL, 'phpmyadmin', 'pma_table_coords', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2007-07-14 02:55:23', '2007-12-21 07:30:28', NULL, 'latin1_general_ci', NULL, '', 'Table coordinates for phpMyAdmin PDF output'),
(NULL, 'phpmyadmin', 'pma_table_info', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2007-07-14 02:55:23', '2007-12-21 07:30:28', NULL, 'latin1_general_ci', NULL, '', 'Table information for phpMyAdmin'),
(NULL, 'webauth', 'user_pwd', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 1, 63, 63, 17732923532771327, 2048, 0, NULL, '2005-10-25 13:17:49', '2007-12-21 07:30:28', NULL, 'latin1_general_ci', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
(NULL, 'cdcol', 'PRIMARY', 'cdcol', 'cds', 'PRIMARY KEY'),
(NULL, 'details', 'PRIMARY', 'details', 'btech', 'PRIMARY KEY'),
(NULL, 'details', 'PRIMARY', 'details', 'btechdocumentdetails', 'PRIMARY KEY'),
(NULL, 'details', 'PRIMARY', 'details', 'btechexamdetail', 'PRIMARY KEY'),
(NULL, 'details', 'PRIMARY', 'details', 'mtech', 'PRIMARY KEY'),
(NULL, 'details', 'PRIMARY', 'details', 'mtechdocumentdetails', 'PRIMARY KEY'),
(NULL, 'details', 'PRIMARY', 'details', 'mtechexamdetail', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'columns_priv', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'db', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'event', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'func', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_category', 'PRIMARY KEY'),
(NULL, 'mysql', 'name', 'mysql', 'help_category', 'UNIQUE'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_keyword', 'PRIMARY KEY'),
(NULL, 'mysql', 'name', 'mysql', 'help_keyword', 'UNIQUE'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_relation', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_topic', 'PRIMARY KEY'),
(NULL, 'mysql', 'name', 'mysql', 'help_topic', 'UNIQUE'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'host', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'ndb_binlog_index', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'plugin', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'proc', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'procs_priv', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'servers', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'tables_priv', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_leap_second', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_name', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_transition', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_transition_type', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'user', 'PRIMARY KEY'),
(NULL, 'password', 'PRIMARY', 'password', 'examtb', 'PRIMARY KEY'),
(NULL, 'password', 'PRIMARY', 'password', 'proctb', 'PRIMARY KEY'),
(NULL, 'phpmyadmin', 'PRIMARY', 'phpmyadmin', 'pma_bookmark', 'PRIMARY KEY'),
(NULL, 'phpmyadmin', 'PRIMARY', 'phpmyadmin', 'pma_column_info', 'PRIMARY KEY'),
(NULL, 'phpmyadmin', 'db_name', 'phpmyadmin', 'pma_column_info', 'UNIQUE'),
(NULL, 'phpmyadmin', 'PRIMARY', 'phpmyadmin', 'pma_designer_coords', 'PRIMARY KEY'),
(NULL, 'phpmyadmin', 'PRIMARY', 'phpmyadmin', 'pma_history', 'PRIMARY KEY'),
(NULL, 'phpmyadmin', 'PRIMARY', 'phpmyadmin', 'pma_pdf_pages', 'PRIMARY KEY'),
(NULL, 'phpmyadmin', 'PRIMARY', 'phpmyadmin', 'pma_relation', 'PRIMARY KEY'),
(NULL, 'phpmyadmin', 'PRIMARY', 'phpmyadmin', 'pma_table_coords', 'PRIMARY KEY'),
(NULL, 'phpmyadmin', 'PRIMARY', 'phpmyadmin', 'pma_table_info', 'PRIMARY KEY'),
(NULL, 'webauth', 'PRIMARY', 'webauth', 'user_pwd', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) default NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL default '',
  `TRIGGER_NAME` varchar(64) NOT NULL default '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL default '',
  `EVENT_OBJECT_CATALOG` varchar(512) default NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL default '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL default '',
  `ACTION_ORDER` bigint(4) NOT NULL default '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL default '',
  `ACTION_TIMING` varchar(6) NOT NULL default '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL default '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL default '',
  `CREATED` datetime default NULL,
  `SQL_MODE` longtext NOT NULL,
  `DEFINER` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TRIGGERS`
--


-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''root''@''localhost''', NULL, 'SELECT', 'YES'),
('''root''@''localhost''', NULL, 'INSERT', 'YES'),
('''root''@''localhost''', NULL, 'UPDATE', 'YES'),
('''root''@''localhost''', NULL, 'DELETE', 'YES'),
('''root''@''localhost''', NULL, 'CREATE', 'YES'),
('''root''@''localhost''', NULL, 'DROP', 'YES'),
('''root''@''localhost''', NULL, 'RELOAD', 'YES'),
('''root''@''localhost''', NULL, 'SHUTDOWN', 'YES'),
('''root''@''localhost''', NULL, 'PROCESS', 'YES'),
('''root''@''localhost''', NULL, 'FILE', 'YES'),
('''root''@''localhost''', NULL, 'REFERENCES', 'YES'),
('''root''@''localhost''', NULL, 'INDEX', 'YES'),
('''root''@''localhost''', NULL, 'ALTER', 'YES'),
('''root''@''localhost''', NULL, 'SHOW DATABASES', 'YES'),
('''root''@''localhost''', NULL, 'SUPER', 'YES'),
('''root''@''localhost''', NULL, 'CREATE TEMPORARY TABLES', 'YES'),
('''root''@''localhost''', NULL, 'LOCK TABLES', 'YES'),
('''root''@''localhost''', NULL, 'EXECUTE', 'YES'),
('''root''@''localhost''', NULL, 'REPLICATION SLAVE', 'YES'),
('''root''@''localhost''', NULL, 'REPLICATION CLIENT', 'YES'),
('''root''@''localhost''', NULL, 'CREATE VIEW', 'YES'),
('''root''@''localhost''', NULL, 'SHOW VIEW', 'YES'),
('''root''@''localhost''', NULL, 'CREATE ROUTINE', 'YES'),
('''root''@''localhost''', NULL, 'ALTER ROUTINE', 'YES'),
('''root''@''localhost''', NULL, 'CREATE USER', 'YES'),
('''pma''@''localhost''', NULL, 'SHUTDOWN', 'NO'),
('''root''@''127.0.0.1''', NULL, 'SELECT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'INSERT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'UPDATE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'DELETE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'DROP', 'YES'),
('''root''@''127.0.0.1''', NULL, 'RELOAD', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SHUTDOWN', 'YES'),
('''root''@''127.0.0.1''', NULL, 'PROCESS', 'YES'),
('''root''@''127.0.0.1''', NULL, 'FILE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'REFERENCES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'INDEX', 'YES'),
('''root''@''127.0.0.1''', NULL, 'ALTER', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SHOW DATABASES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SUPER', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE TEMPORARY TABLES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'LOCK TABLES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'EXECUTE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'REPLICATION SLAVE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'REPLICATION CLIENT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE VIEW', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SHOW VIEW', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE ROUTINE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'ALTER ROUTINE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE USER', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL default '',
  `IS_UPDATABLE` varchar(3) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default '',
  `SECURITY_TYPE` varchar(7) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VIEWS`
--

--
-- Database: `mysql`
--
CREATE DATABASE `mysql` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mysql`;

-- --------------------------------------------------------

--
-- Table structure for table `columns_priv`
--

CREATE TABLE IF NOT EXISTS `columns_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Table_name` char(64) collate utf8_bin NOT NULL default '',
  `Column_name` char(64) collate utf8_bin NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') character set utf8 NOT NULL default '',
  PRIMARY KEY  (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';

--
-- Dumping data for table `columns_priv`
--


-- --------------------------------------------------------

--
-- Table structure for table `db`
--

CREATE TABLE IF NOT EXISTS `db` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Event_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Trigger_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  PRIMARY KEY  (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';

--
-- Dumping data for table `db`
--

INSERT INTO `db` (`Host`, `Db`, `User`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Execute_priv`, `Event_priv`, `Trigger_priv`) VALUES
('localhost', 'phpmyadmin', 'pma', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `db` char(64) character set utf8 collate utf8_bin NOT NULL default '',
  `name` char(64) NOT NULL default '',
  `body` longblob NOT NULL,
  `definer` char(77) character set utf8 collate utf8_bin NOT NULL default '',
  `execute_at` datetime default NULL,
  `interval_value` int(11) default NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') default NULL,
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL default '0000-00-00 00:00:00',
  `last_executed` datetime default NULL,
  `starts` datetime default NULL,
  `ends` datetime default NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL default 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL default 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE') NOT NULL default '',
  `comment` char(64) character set utf8 collate utf8_bin NOT NULL default '',
  `originator` int(10) NOT NULL,
  `time_zone` char(64) character set latin1 NOT NULL default 'SYSTEM',
  `character_set_client` char(32) character set utf8 collate utf8_bin default NULL,
  `collation_connection` char(32) character set utf8 collate utf8_bin default NULL,
  `db_collation` char(32) character set utf8 collate utf8_bin default NULL,
  `body_utf8` longblob,
  PRIMARY KEY  (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';

--
-- Dumping data for table `event`
--


-- --------------------------------------------------------

--
-- Table structure for table `func`
--

CREATE TABLE IF NOT EXISTS `func` (
  `name` char(64) collate utf8_bin NOT NULL default '',
  `ret` tinyint(1) NOT NULL default '0',
  `dl` char(128) collate utf8_bin NOT NULL default '',
  `type` enum('function','aggregate') character set utf8 NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';

--
-- Dumping data for table `func`
--


-- --------------------------------------------------------

--
-- Table structure for table `general_log`
--
-- in use(#1017 - Can't find file: 'general_log' (errno: 2))

--
-- Dumping data for table `general_log`
--

-- in use (#1017 - Can't find file: 'general_log' (errno: 2))

-- --------------------------------------------------------

--
-- Table structure for table `help_category`
--

CREATE TABLE IF NOT EXISTS `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned default NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY  (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';

--
-- Dumping data for table `help_category`
--

INSERT INTO `help_category` (`help_category_id`, `name`, `parent_category_id`, `url`) VALUES
(1, 'Geographic', 0, ''),
(2, 'Polygon properties', 31, ''),
(3, 'WKT', 31, ''),
(4, 'Numeric Functions', 35, ''),
(5, 'Plugins', 32, ''),
(6, 'MBR', 31, ''),
(7, 'Control flow functions', 35, ''),
(8, 'Transactions', 32, ''),
(9, 'Account Management', 32, ''),
(10, 'Point properties', 31, ''),
(11, 'Encryption Functions', 35, ''),
(12, 'LineString properties', 31, ''),
(13, 'Logical operators', 35, ''),
(14, 'Miscellaneous Functions', 35, ''),
(15, 'Functions and Modifiers for Use with GROUP BY', 32, ''),
(16, 'Information Functions', 35, ''),
(17, 'Storage Engines', 32, ''),
(18, 'Comparison operators', 35, ''),
(19, 'Bit Functions', 35, ''),
(20, 'Table Maintenance', 32, ''),
(21, 'Data Types', 32, ''),
(22, 'Triggers', 32, ''),
(23, 'Geometry constructors', 31, ''),
(24, 'GeometryCollection properties', 1, ''),
(25, 'Data Manipulation', 32, ''),
(26, 'Administration', 32, ''),
(27, 'Geometry relations', 31, ''),
(28, 'Language Structure', 32, ''),
(29, 'Date and Time Functions', 35, ''),
(30, 'WKB', 31, ''),
(31, 'Geographic Features', 32, ''),
(32, 'Contents', 0, ''),
(33, 'Geometry properties', 31, ''),
(34, 'String Functions', 35, ''),
(35, 'Functions', 32, ''),
(36, 'Stored Routines', 32, ''),
(37, 'Data Definition', 32, '');

-- --------------------------------------------------------

--
-- Table structure for table `help_keyword`
--

CREATE TABLE IF NOT EXISTS `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY  (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';

--
-- Dumping data for table `help_keyword`
--

INSERT INTO `help_keyword` (`help_keyword_id`, `name`) VALUES
(0, 'JOIN'),
(1, 'HOST'),
(2, 'REPEAT'),
(3, 'SERIALIZABLE'),
(4, 'REPLACE'),
(5, 'AT'),
(6, 'SCHEDULE'),
(7, 'RETURNS'),
(8, 'STARTS'),
(9, 'MASTER_SSL_CA'),
(10, 'NCHAR'),
(11, 'COMPLETION'),
(12, 'COLUMNS'),
(13, 'WORK'),
(14, 'DATETIME'),
(15, 'MODE'),
(16, 'OPEN'),
(17, 'INTEGER'),
(18, 'ESCAPE'),
(19, 'VALUE'),
(20, 'GEOMETRYCOLLECTIONFROMWKB'),
(21, 'MASTER_SSL_VERIFY_SERVER_CERT'),
(22, 'SQL_BIG_RESULT'),
(23, 'DROP'),
(24, 'EVENTS'),
(25, 'MONTH'),
(26, 'INFO'),
(27, 'DUPLICATE'),
(28, 'REPLICATION'),
(29, 'INNODB'),
(30, 'YEAR_MONTH'),
(31, 'SUBJECT'),
(32, 'PREPARE'),
(33, 'LOCK'),
(34, 'NDB'),
(35, 'CHECK'),
(36, 'FULL'),
(37, 'INT4'),
(38, 'BY'),
(39, 'NO'),
(40, 'MINUTE'),
(41, 'DATA'),
(42, 'PARTITION'),
(43, 'DAY'),
(44, 'SHARE'),
(45, 'REAL'),
(46, 'SEPARATOR'),
(47, 'DELETE'),
(48, 'ON'),
(49, 'CONNECTION'),
(50, 'CLOSE'),
(51, 'X509'),
(52, 'USE'),
(53, 'WHERE'),
(54, 'PRIVILEGES'),
(55, 'EVENT'),
(56, 'SPATIAL'),
(57, 'SUPER'),
(58, 'SQL_BUFFER_RESULT'),
(59, 'IGNORE'),
(60, 'QUICK'),
(61, 'SIGNED'),
(62, 'SECURITY'),
(63, 'POLYGONFROMWKB'),
(64, 'NDBCLUSTER'),
(65, 'FALSE'),
(66, 'LEVEL'),
(67, 'FORCE'),
(68, 'BINARY'),
(69, 'TO'),
(70, 'CHANGE'),
(71, 'CURRENT_USER'),
(72, 'HOUR_MINUTE'),
(73, 'PRESERVE'),
(74, 'UPDATE'),
(75, 'INTO'),
(76, 'FEDERATED'),
(77, 'VARYING'),
(78, 'HOUR_SECOND'),
(79, 'VARIABLE'),
(80, 'ROLLBACK'),
(81, 'PROCEDURE'),
(82, 'RTREE'),
(83, 'TIMESTAMP'),
(84, 'IMPORT'),
(85, 'AGAINST'),
(86, 'CHECKSUM'),
(87, 'COUNT'),
(88, 'LONGBINARY'),
(89, 'THEN'),
(90, 'INSERT'),
(91, 'ENGINES'),
(92, 'HANDLER'),
(93, 'PORT'),
(94, 'DAY_SECOND'),
(95, 'EXISTS'),
(96, 'MUTEX'),
(97, 'RELEASE'),
(98, 'BOOLEAN'),
(99, 'MOD'),
(100, 'DEFAULT'),
(101, 'TYPE'),
(102, 'NO_WRITE_TO_BINLOG'),
(103, 'OPTIMIZE'),
(104, 'RESET'),
(105, 'INSTALL'),
(106, 'ITERATE'),
(107, 'DO'),
(108, 'BIGINT'),
(109, 'SET'),
(110, 'ISSUER'),
(111, 'DATE'),
(112, 'STATUS'),
(113, 'FULLTEXT'),
(114, 'COMMENT'),
(115, 'MASTER_CONNECT_RETRY'),
(116, 'INNER'),
(117, 'STOP'),
(118, 'MASTER_LOG_FILE'),
(119, 'MRG_MYISAM'),
(120, 'PRECISION'),
(121, 'REQUIRE'),
(122, 'TRAILING'),
(123, 'LONG'),
(124, 'OPTION'),
(125, 'REORGANIZE'),
(126, 'ELSE'),
(127, 'DEALLOCATE'),
(128, 'IO_THREAD'),
(129, 'CASE'),
(130, 'CIPHER'),
(131, 'CONTINUE'),
(132, 'FROM'),
(133, 'READ'),
(134, 'LEFT'),
(135, 'ELSEIF'),
(136, 'MINUTE_SECOND'),
(137, 'COMPACT'),
(138, 'RESTORE'),
(139, 'DEC'),
(140, 'FOR'),
(141, 'WARNINGS'),
(142, 'MIN_ROWS'),
(143, 'STRING'),
(144, 'CONDITION'),
(145, 'FUNCTION'),
(146, 'ENCLOSED'),
(147, 'AGGREGATE'),
(148, 'FIELDS'),
(149, 'INT3'),
(150, 'ARCHIVE'),
(151, 'ADD'),
(152, 'AVG_ROW_LENGTH'),
(153, 'KILL'),
(154, 'FLOAT4'),
(155, 'TABLESPACE'),
(156, 'VIEW'),
(157, 'REPEATABLE'),
(158, 'INFILE'),
(159, 'ORDER'),
(160, 'USING'),
(161, 'MIDDLEINT'),
(162, 'GRANT'),
(163, 'UNSIGNED'),
(164, 'DECIMAL'),
(165, 'GEOMETRYFROMTEXT'),
(166, 'INDEXES'),
(167, 'FOREIGN'),
(168, 'CACHE'),
(169, 'HOSTS'),
(170, 'COMMIT'),
(171, 'SCHEMAS'),
(172, 'LEADING'),
(173, 'SNAPSHOT'),
(174, 'DECLARE'),
(175, 'LOAD'),
(176, 'SQL_CACHE'),
(177, 'CONVERT'),
(178, 'DYNAMIC'),
(179, 'POLYGONFROMTEXT'),
(180, 'COLLATE'),
(181, 'BYTE'),
(182, 'LINESTRINGFROMWKB'),
(183, 'GLOBAL'),
(184, 'WHEN'),
(185, 'HAVING'),
(186, 'AS'),
(187, 'STARTING'),
(188, 'RELOAD'),
(189, 'AUTOCOMMIT'),
(190, 'REVOKE'),
(191, 'GRANTS'),
(192, 'OUTER'),
(193, 'FLOOR'),
(194, 'WITH'),
(195, 'STD'),
(196, 'AFTER'),
(197, 'CSV'),
(198, 'DISABLE'),
(199, 'UNINSTALL'),
(200, 'OUTFILE'),
(201, 'LOW_PRIORITY'),
(202, 'FILE'),
(203, 'SCHEMA'),
(204, 'SONAME'),
(205, 'POW'),
(206, 'MULTIPOINTFROMWKB'),
(207, 'INDEX'),
(208, 'DUAL'),
(209, 'DEFINER'),
(210, 'MULTIPOINTFROMTEXT'),
(211, 'BACKUP'),
(212, 'REMOVE'),
(213, 'MULTILINESTRINGFROMWKB'),
(214, 'EXTENDED'),
(215, 'CROSS'),
(216, 'CONTRIBUTORS'),
(217, 'NATIONAL'),
(218, 'GROUP'),
(219, 'ONLINE'),
(220, 'UNDO'),
(221, 'ZEROFILL'),
(222, 'CLIENT'),
(223, 'MASTER_PASSWORD'),
(224, 'OWNER'),
(225, 'RELAY_LOG_FILE'),
(226, 'TRUE'),
(227, 'CHARACTER'),
(228, 'MASTER_USER'),
(229, 'TABLE'),
(230, 'ENGINE'),
(231, 'INSERT_METHOD'),
(232, 'CASCADE'),
(233, 'RELAY_LOG_POS'),
(234, 'SQL_CALC_FOUND_ROWS'),
(235, 'UNION'),
(236, 'MYISAM'),
(237, 'LEAVE'),
(238, 'MODIFY'),
(239, 'MATCH'),
(240, 'MASTER_LOG_POS'),
(241, 'DESC'),
(242, 'DISTINCTROW'),
(243, 'TIME'),
(244, 'NUMERIC'),
(245, 'EXPANSION'),
(246, 'CURSOR'),
(247, 'CODE'),
(248, 'GEOMETRYCOLLECTIONFROMTEXT'),
(249, 'CHAIN'),
(250, 'FLUSH'),
(251, 'CREATE'),
(252, 'DESCRIBE'),
(253, 'MAX_UPDATES_PER_HOUR'),
(254, 'INT2'),
(255, 'ENDS'),
(256, 'PROCESSLIST'),
(257, 'LOGS'),
(258, 'DISCARD'),
(259, 'HEAP'),
(260, 'SOUNDS'),
(261, 'BETWEEN'),
(262, 'MULTILINESTRINGFROMTEXT'),
(263, 'REPAIR'),
(264, 'PACK_KEYS'),
(265, 'CALL'),
(266, 'FAST'),
(267, 'VALUES'),
(268, 'LOOP'),
(269, 'VARCHARACTER'),
(270, 'BEFORE'),
(271, 'TRUNCATE'),
(272, 'SHOW'),
(273, 'REDUNDANT'),
(274, 'ALL'),
(275, 'USER_RESOURCES'),
(276, 'PARTIAL'),
(277, 'BINLOG'),
(278, 'END'),
(279, 'SECOND'),
(280, 'AND'),
(281, 'FLOAT8'),
(282, 'PREV'),
(283, 'HOUR'),
(284, 'SELECT'),
(285, 'DATABASES'),
(286, 'OR'),
(287, 'IDENTIFIED'),
(288, 'WRAPPER'),
(289, 'MASTER_SSL_CIPHER'),
(290, 'SQL_SLAVE_SKIP_COUNTER'),
(291, 'BOTH'),
(292, 'BOOL'),
(293, 'YEAR'),
(294, 'MASTER_PORT'),
(295, 'CONCURRENT'),
(296, 'HELP'),
(297, 'UNIQUE'),
(298, 'TRIGGERS'),
(299, 'PROCESS'),
(300, 'OPTIONS'),
(301, 'CONSISTENT'),
(302, 'MASTER_SSL'),
(303, 'DATE_ADD'),
(304, 'MAX_CONNECTIONS_PER_HOUR'),
(305, 'LIKE'),
(306, 'PLUGIN'),
(307, 'FETCH'),
(308, 'IN'),
(309, 'COLUMN'),
(310, 'DUMPFILE'),
(311, 'USAGE'),
(312, 'EXECUTE'),
(313, 'MEMORY'),
(314, 'CEIL'),
(315, 'QUERY'),
(316, 'MASTER_HOST'),
(317, 'LINES'),
(318, 'SQL_THREAD'),
(319, 'SERVER'),
(320, 'MAX_QUERIES_PER_HOUR'),
(321, 'MULTIPOLYGONFROMWKB'),
(322, 'MASTER_SSL_CERT'),
(323, 'TRANSACTION'),
(324, 'DAY_MINUTE'),
(325, 'DATE_SUB'),
(326, 'REBUILD'),
(327, 'GEOMETRYFROMWKB'),
(328, 'RENAME'),
(329, 'INT1'),
(330, 'PARSER'),
(331, 'ALTER'),
(332, 'MAX_ROWS'),
(333, 'RIGHT'),
(334, 'SOCKET'),
(335, 'STRAIGHT_JOIN'),
(336, 'NATURAL'),
(337, 'VARIABLES'),
(338, 'ESCAPED'),
(339, 'SHA1'),
(340, 'KEY_BLOCK_SIZE'),
(341, 'PASSWORD'),
(342, 'CHAR'),
(343, 'OFFSET'),
(344, 'NEXT'),
(345, 'SQL_LOG_BIN'),
(346, 'ERRORS'),
(347, 'TEMPORARY'),
(348, 'COMMITTED'),
(349, 'SQL_SMALL_RESULT'),
(350, 'UPGRADE'),
(351, 'BEGIN'),
(352, 'DELAY_KEY_WRITE'),
(353, 'MEDIUM'),
(354, 'INTERVAL'),
(355, 'SSL'),
(356, 'DAY_HOUR'),
(357, 'REFERENCES'),
(358, 'AES_ENCRYPT'),
(359, 'EVERY'),
(360, 'STORAGE'),
(361, 'ISOLATION'),
(362, 'INT8'),
(363, 'AUTHORS'),
(364, 'RESTRICT'),
(365, 'LINESTRINGFROMTEXT'),
(366, 'UNCOMMITTED'),
(367, 'IS'),
(368, 'NOT'),
(369, 'ANALYSE'),
(370, 'DES_KEY_FILE'),
(371, 'COMPRESSED'),
(372, 'START'),
(373, 'PLUGINS'),
(374, 'SAVEPOINT'),
(375, 'IF'),
(376, 'PRIMARY'),
(377, 'PURGE'),
(378, 'USER'),
(379, 'INNOBASE'),
(380, 'LAST'),
(381, 'EXIT'),
(382, 'KEYS'),
(383, 'LIMIT'),
(384, 'KEY'),
(385, 'MERGE'),
(386, 'UNTIL'),
(387, 'SQL_NO_CACHE'),
(388, 'DELAYED'),
(389, 'ANALYZE'),
(390, 'CONSTRAINT'),
(391, 'SERIAL'),
(392, 'ACTION'),
(393, 'WRITE'),
(394, 'SESSION'),
(395, 'DATABASE'),
(396, 'NULL'),
(397, 'USE_FRM'),
(398, 'SLAVE'),
(399, 'TERMINATED'),
(400, 'ASC'),
(401, 'ENABLE'),
(402, 'OPTIONALLY'),
(403, 'DIRECTORY'),
(404, 'WHILE'),
(405, 'MAX_USER_CONNECTIONS'),
(406, 'DISTINCT'),
(407, 'LOCAL'),
(408, 'MASTER_SSL_KEY'),
(409, 'NONE'),
(410, 'TABLES'),
(411, '<>'),
(412, 'RLIKE'),
(413, 'TRIGGER'),
(414, 'COLLATION'),
(415, 'SHUTDOWN'),
(416, 'HIGH_PRIORITY'),
(417, 'BTREE'),
(418, 'FIRST'),
(419, 'COALESCE'),
(420, 'TYPES'),
(421, 'MASTER'),
(422, 'FIXED'),
(423, 'MULTIPOLYGONFROMTEXT'),
(424, 'ROW_FORMAT');

-- --------------------------------------------------------

--
-- Table structure for table `help_relation`
--

CREATE TABLE IF NOT EXISTS `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';

--
-- Dumping data for table `help_relation`
--

INSERT INTO `help_relation` (`help_topic_id`, `help_keyword_id`) VALUES
(0, 0),
(334, 0),
(445, 1),
(214, 2),
(420, 3),
(42, 4),
(399, 4),
(80, 5),
(80, 6),
(384, 6),
(195, 7),
(80, 8),
(175, 9),
(404, 10),
(80, 11),
(384, 11),
(21, 12),
(326, 12),
(134, 13),
(356, 14),
(79, 15),
(334, 15),
(15, 16),
(95, 16),
(121, 16),
(326, 16),
(195, 17),
(471, 17),
(359, 18),
(224, 19),
(97, 20),
(175, 21),
(334, 22),
(8, 23),
(29, 23),
(78, 23),
(176, 23),
(219, 23),
(244, 23),
(256, 23),
(280, 23),
(311, 23),
(383, 23),
(392, 23),
(435, 23),
(111, 24),
(355, 25),
(241, 26),
(93, 27),
(187, 28),
(326, 29),
(378, 29),
(440, 29),
(355, 30),
(187, 31),
(33, 32),
(219, 32),
(34, 33),
(334, 33),
(440, 34),
(393, 35),
(435, 35),
(440, 35),
(21, 36),
(274, 36),
(326, 36),
(425, 36),
(440, 36),
(471, 37),
(47, 38),
(70, 38),
(75, 38),
(187, 38),
(334, 38),
(341, 38),
(399, 38),
(435, 38),
(440, 38),
(440, 39),
(444, 39),
(355, 40),
(106, 41),
(399, 41),
(440, 41),
(445, 41),
(435, 42),
(440, 42),
(355, 43),
(334, 44),
(195, 45),
(294, 45),
(341, 46),
(47, 47),
(440, 47),
(444, 47),
(0, 48),
(80, 48),
(384, 48),
(444, 48),
(164, 49),
(440, 49),
(50, 50),
(95, 50),
(187, 51),
(0, 52),
(47, 53),
(75, 53),
(95, 53),
(180, 54),
(187, 54),
(230, 54),
(80, 55),
(280, 55),
(336, 55),
(384, 55),
(197, 56),
(435, 56),
(187, 57),
(334, 58),
(0, 59),
(75, 59),
(93, 59),
(334, 59),
(399, 59),
(435, 59),
(47, 60),
(393, 60),
(438, 60),
(356, 61),
(187, 62),
(82, 63),
(454, 63),
(440, 64),
(364, 65),
(420, 66),
(0, 67),
(37, 68),
(356, 68),
(175, 69),
(432, 69),
(436, 69),
(175, 70),
(435, 70),
(80, 71),
(384, 71),
(355, 72),
(80, 73),
(384, 73),
(75, 74),
(93, 74),
(334, 74),
(444, 74),
(42, 75),
(93, 75),
(284, 75),
(334, 75),
(440, 76),
(238, 77),
(355, 78),
(118, 79),
(134, 80),
(432, 80),
(17, 81),
(173, 81),
(281, 81),
(308, 81),
(326, 81),
(334, 81),
(392, 81),
(413, 81),
(459, 81),
(197, 82),
(88, 83),
(177, 83),
(399, 84),
(435, 84),
(79, 85),
(379, 86),
(440, 86),
(62, 87),
(309, 87),
(407, 87),
(265, 88),
(27, 89),
(76, 89),
(395, 89),
(93, 90),
(181, 90),
(282, 90),
(458, 90),
(261, 91),
(326, 91),
(95, 92),
(293, 92),
(445, 93),
(355, 94),
(8, 95),
(29, 95),
(80, 95),
(143, 95),
(176, 95),
(256, 95),
(280, 95),
(326, 96),
(345, 96),
(134, 97),
(432, 97),
(23, 98),
(79, 98),
(101, 99),
(162, 99),
(42, 100),
(93, 100),
(143, 100),
(185, 100),
(198, 100),
(224, 100),
(435, 100),
(440, 100),
(435, 101),
(103, 102),
(307, 102),
(438, 102),
(442, 102),
(103, 103),
(435, 103),
(36, 104),
(107, 104),
(139, 104),
(245, 104),
(396, 105),
(113, 106),
(80, 107),
(114, 107),
(384, 107),
(466, 107),
(206, 108),
(42, 109),
(75, 109),
(118, 109),
(127, 109),
(134, 109),
(143, 109),
(171, 109),
(198, 109),
(313, 109),
(326, 109),
(399, 109),
(435, 109),
(440, 109),
(444, 109),
(450, 109),
(464, 109),
(187, 110),
(119, 111),
(243, 111),
(355, 111),
(356, 111),
(54, 112),
(124, 112),
(200, 112),
(208, 112),
(308, 112),
(326, 112),
(345, 112),
(378, 112),
(197, 113),
(435, 113),
(440, 113),
(80, 114),
(384, 114),
(440, 114),
(175, 115),
(0, 116),
(51, 117),
(175, 118),
(440, 119),
(294, 120),
(187, 121),
(428, 122),
(265, 123),
(187, 124),
(230, 124),
(435, 125),
(76, 126),
(395, 126),
(219, 127),
(51, 128),
(305, 128),
(76, 129),
(395, 129),
(187, 130),
(293, 131),
(47, 132),
(106, 132),
(111, 132),
(326, 132),
(334, 132),
(340, 132),
(428, 132),
(34, 133),
(95, 133),
(420, 133),
(0, 134),
(27, 135),
(355, 136),
(440, 137),
(167, 138),
(194, 139),
(168, 140),
(293, 140),
(326, 140),
(334, 140),
(397, 140),
(309, 141),
(326, 141),
(440, 142),
(195, 143),
(168, 144),
(17, 145),
(195, 145),
(281, 145),
(308, 145),
(326, 145),
(383, 145),
(392, 145),
(413, 145),
(459, 145),
(399, 146),
(195, 147),
(326, 148),
(399, 148),
(233, 149),
(440, 150),
(56, 151),
(435, 151),
(435, 152),
(440, 152),
(164, 153),
(156, 154),
(435, 155),
(29, 156),
(147, 156),
(427, 156),
(420, 157),
(399, 158),
(47, 159),
(75, 159),
(334, 159),
(341, 159),
(435, 159),
(0, 160),
(47, 160),
(77, 160),
(233, 161),
(187, 162),
(230, 162),
(23, 163),
(117, 163),
(156, 163),
(194, 163),
(294, 163),
(356, 163),
(471, 163),
(144, 164),
(195, 164),
(389, 165),
(326, 166),
(435, 167),
(440, 167),
(444, 167),
(445, 167),
(91, 168),
(139, 168),
(284, 168),
(133, 169),
(326, 169),
(134, 170),
(148, 171),
(326, 171),
(428, 172),
(134, 173),
(168, 174),
(185, 174),
(293, 174),
(397, 174),
(106, 175),
(284, 175),
(340, 175),
(399, 175),
(334, 176),
(356, 177),
(440, 178),
(373, 179),
(143, 180),
(198, 180),
(440, 180),
(437, 181),
(424, 182),
(118, 183),
(124, 183),
(171, 183),
(328, 183),
(420, 183),
(76, 184),
(395, 184),
(334, 185),
(0, 186),
(34, 186),
(334, 186),
(399, 187),
(187, 188),
(134, 189),
(230, 190),
(179, 191),
(326, 191),
(0, 192),
(206, 193),
(79, 194),
(187, 194),
(197, 194),
(435, 194),
(440, 194),
(385, 195),
(435, 196),
(399, 197),
(440, 197),
(80, 198),
(384, 198),
(435, 198),
(271, 199),
(334, 200),
(34, 201),
(42, 201),
(47, 201),
(75, 201),
(93, 201),
(399, 201),
(187, 202),
(143, 203),
(176, 203),
(198, 203),
(289, 203),
(326, 203),
(468, 203),
(195, 204),
(455, 205),
(434, 206),
(0, 207),
(56, 207),
(78, 207),
(91, 207),
(197, 207),
(284, 207),
(288, 207),
(326, 207),
(435, 207),
(440, 207),
(258, 208),
(80, 209),
(384, 209),
(401, 210),
(337, 211),
(435, 212),
(252, 213),
(438, 214),
(0, 215),
(6, 216),
(326, 216),
(238, 217),
(404, 217),
(334, 218),
(435, 219),
(293, 220),
(23, 221),
(117, 221),
(156, 221),
(194, 221),
(294, 221),
(471, 221),
(187, 222),
(175, 223),
(445, 224),
(175, 225),
(364, 226),
(143, 227),
(198, 227),
(238, 227),
(313, 227),
(326, 227),
(399, 227),
(404, 227),
(440, 227),
(175, 228),
(56, 229),
(98, 229),
(103, 229),
(167, 229),
(200, 229),
(256, 229),
(257, 229),
(301, 229),
(326, 229),
(337, 229),
(340, 229),
(379, 229),
(393, 229),
(435, 229),
(438, 229),
(440, 229),
(442, 229),
(326, 230),
(345, 230),
(435, 230),
(440, 230),
(440, 231),
(29, 232),
(256, 232),
(440, 232),
(444, 232),
(175, 233),
(334, 234),
(285, 235),
(440, 236),
(290, 237),
(435, 238),
(79, 239),
(175, 240),
(310, 241),
(334, 241),
(341, 241),
(334, 242),
(295, 243),
(354, 243),
(356, 243),
(194, 244),
(79, 245),
(397, 246),
(459, 247),
(227, 248),
(134, 249),
(139, 250),
(307, 250),
(17, 251),
(20, 251),
(56, 251),
(70, 251),
(80, 251),
(143, 251),
(195, 251),
(197, 251),
(257, 251),
(281, 251),
(289, 251),
(326, 251),
(336, 251),
(427, 251),
(440, 251),
(445, 251),
(310, 252),
(187, 253),
(215, 254),
(80, 255),
(326, 256),
(425, 256),
(37, 257),
(326, 257),
(436, 257),
(435, 258),
(440, 259),
(357, 260),
(135, 261),
(96, 262),
(435, 263),
(438, 263),
(440, 264),
(318, 265),
(393, 266),
(42, 267),
(323, 268),
(238, 269),
(436, 270),
(301, 271),
(6, 272),
(9, 272),
(17, 272),
(21, 272),
(24, 272),
(32, 272),
(37, 272),
(54, 272),
(62, 272),
(111, 272),
(121, 272),
(124, 272),
(133, 272),
(148, 272),
(179, 272),
(180, 272),
(200, 272),
(208, 272),
(257, 272),
(261, 272),
(274, 272),
(288, 272),
(289, 272),
(308, 272),
(309, 272),
(313, 272),
(326, 272),
(328, 272),
(336, 272),
(345, 272),
(378, 272),
(425, 272),
(459, 272),
(462, 272),
(440, 273),
(187, 274),
(230, 274),
(285, 274),
(334, 274),
(307, 275),
(440, 276),
(111, 277),
(27, 278),
(76, 278),
(214, 278),
(306, 278),
(323, 278),
(395, 278),
(466, 278),
(355, 279),
(135, 280),
(296, 280),
(294, 281),
(95, 282),
(355, 283),
(42, 284),
(237, 284),
(241, 284),
(282, 284),
(334, 284),
(148, 285),
(326, 285),
(129, 286),
(70, 287),
(187, 287),
(445, 288),
(175, 289),
(171, 290),
(428, 291),
(23, 292),
(99, 292),
(355, 293),
(175, 294),
(399, 295),
(108, 296),
(369, 296),
(435, 297),
(24, 298),
(326, 298),
(187, 299),
(353, 300),
(445, 300),
(134, 301),
(175, 302),
(355, 303),
(187, 304),
(326, 305),
(357, 305),
(271, 306),
(326, 306),
(396, 306),
(362, 307),
(79, 308),
(111, 308),
(334, 308),
(435, 309),
(334, 310),
(187, 311),
(77, 312),
(187, 312),
(334, 313),
(421, 314),
(79, 315),
(139, 315),
(164, 315),
(175, 316),
(399, 317),
(51, 318),
(305, 318),
(8, 319),
(353, 319),
(445, 319),
(187, 320),
(112, 321),
(175, 322),
(134, 323),
(420, 323),
(355, 324),
(355, 325),
(435, 326),
(132, 327),
(98, 328),
(207, 328),
(384, 328),
(435, 328),
(468, 328),
(23, 329),
(197, 330),
(435, 330),
(440, 330),
(56, 331),
(147, 331),
(187, 331),
(198, 331),
(353, 331),
(384, 331),
(413, 331),
(435, 331),
(440, 332),
(0, 333),
(445, 334),
(0, 335),
(334, 335),
(0, 336),
(326, 337),
(328, 337),
(399, 338),
(264, 339),
(440, 340),
(70, 341),
(187, 341),
(445, 341),
(450, 341),
(356, 342),
(437, 342),
(334, 343),
(95, 344),
(464, 345),
(62, 346),
(326, 346),
(256, 347),
(420, 348),
(334, 349),
(393, 350),
(134, 351),
(306, 351),
(440, 352),
(393, 353),
(80, 354),
(355, 354),
(187, 355),
(355, 356),
(187, 357),
(440, 357),
(444, 357),
(467, 358),
(80, 359),
(261, 360),
(420, 361),
(117, 362),
(9, 363),
(326, 363),
(29, 364),
(256, 364),
(444, 364),
(53, 365),
(420, 366),
(348, 367),
(80, 368),
(143, 368),
(292, 368),
(173, 369),
(307, 370),
(440, 371),
(134, 372),
(305, 372),
(32, 373),
(432, 374),
(8, 375),
(27, 375),
(29, 375),
(80, 375),
(143, 375),
(176, 375),
(256, 375),
(280, 375),
(452, 375),
(435, 376),
(436, 377),
(70, 378),
(207, 378),
(311, 378),
(445, 378),
(440, 379),
(95, 380),
(293, 381),
(288, 382),
(326, 382),
(435, 382),
(47, 383),
(75, 383),
(95, 383),
(111, 383),
(334, 383),
(56, 384),
(93, 384),
(435, 384),
(440, 384),
(444, 384),
(440, 385),
(214, 386),
(334, 387),
(42, 388),
(93, 388),
(458, 388),
(435, 389),
(442, 389),
(435, 390),
(440, 390),
(224, 391),
(440, 391),
(440, 392),
(444, 392),
(34, 393),
(118, 394),
(124, 394),
(328, 394),
(420, 394),
(143, 395),
(176, 395),
(198, 395),
(289, 395),
(326, 395),
(445, 395),
(468, 395),
(348, 396),
(444, 396),
(438, 397),
(36, 398),
(51, 398),
(80, 398),
(133, 398),
(208, 398),
(305, 398),
(384, 398),
(399, 399),
(334, 400),
(341, 400),
(80, 401),
(384, 401),
(435, 401),
(399, 402),
(440, 403),
(466, 404),
(187, 405),
(268, 406),
(285, 406),
(334, 406),
(341, 406),
(363, 406),
(407, 406),
(449, 406),
(34, 407),
(103, 407),
(307, 407),
(399, 407),
(438, 407),
(442, 407),
(175, 408),
(187, 409),
(34, 410),
(121, 410),
(274, 410),
(326, 410),
(465, 411),
(26, 412),
(20, 413),
(244, 413),
(326, 413),
(326, 414),
(462, 414),
(187, 415),
(93, 416),
(334, 416),
(197, 417),
(95, 418),
(435, 418),
(440, 418),
(435, 419),
(326, 420),
(37, 421),
(54, 421),
(106, 421),
(175, 421),
(245, 421),
(340, 421),
(436, 421),
(194, 422),
(440, 422),
(186, 423),
(440, 424);

-- --------------------------------------------------------

--
-- Table structure for table `help_topic`
--

CREATE TABLE IF NOT EXISTS `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY  (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';

--
-- Dumping data for table `help_topic`
--

INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(0, 'JOIN', 25, 'MySQL supports the following JOIN syntaxes for the table_references\npart of SELECT statements and multiple-table DELETE and UPDATE\nstatements:\n\ntable_references:\n    table_reference [, table_reference] ...\n\ntable_reference:\n    table_factor\n  | join_table\n\ntable_factor:\n    tbl_name [[AS] alias] [index_hint_list]\n  | ( table_references )\n  | { OJ table_reference LEFT OUTER JOIN table_reference\n        ON conditional_expr }\n\njoin_table:\n    table_reference [INNER | CROSS] JOIN table_factor [join_condition]\n  | table_reference STRAIGHT_JOIN table_factor\n  | table_reference STRAIGHT_JOIN table_factor ON condition\n  | table_reference LEFT [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [LEFT [OUTER]] JOIN table_factor\n  | table_reference RIGHT [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [RIGHT [OUTER]] JOIN table_factor\n\njoin_condition:\n    ON conditional_expr\n  | USING (column_list)\n\nindex_hint_list:\n    index_hint [, index_hint] ...\n\nindex_hint:\n    USE {INDEX|KEY}\n      [{FOR {JOIN|ORDER BY|GROUP BY}] ([index_list])\n  | IGNORE {INDEX|KEY}\n      [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n  | FORCE {INDEX|KEY}\n      [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n\nindex_list:\n    index_name [, index_name] ...\n\nA table reference is also known as a join expression.\n\nThe syntax of table_factor is extended in comparison with the SQL\nStandard. The latter accepts only table_reference, not a list of them\ninside a pair of parentheses.\n\nThis is a conservative extension if we consider each comma in a list of\ntable_reference items as equivalent to an inner join. For example:\n\nSELECT * FROM t1 LEFT JOIN (t2, t3, t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nis equivalent to:\n\nSELECT * FROM t1 LEFT JOIN (t2 CROSS JOIN t3 CROSS JOIN t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nIn MySQL, CROSS JOIN is a syntactic equivalent to INNER JOIN (they can\nreplace each other). In standard SQL, they are not equivalent. INNER\nJOIN is used with an ON clause, CROSS JOIN is used otherwise.\n\nIn general, parentheses can be ignored in join expressions containing\nonly inner join operations. MySQL also supports nested joins (see\nhttp://dev.mysql.com/doc/refman/5.1/en/nested-joins.html).\n\nIndex hints can be specified to affect how the MySQL optimizer makes\nuse of indexes. For more information, see\nhttp://dev.mysql.com/doc/refman/5.1/en/index-hints.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/join.html\n\n', 'SELECT left_tbl.*\n  FROM left_tbl LEFT JOIN right_tbl ON left_tbl.id = right_tbl.id\n  WHERE right_tbl.id IS NULL;\n', 'http://dev.mysql.com/doc/refman/5.1/en/join.html'),
(1, 'HEX', 34, 'Syntax:\nHEX(N_or_S)\n\nIf N_or_S is a number, returns a string representation of the\nhexadecimal value of N, where N is a longlong (BIGINT) number. This is\nequivalent to CONV(N,10,16).\n\nIf N_or_S is a string, returns a hexadecimal string representation of\nN_or_S where each character in N_or_S is converted to two hexadecimal\ndigits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT HEX(255);\n        -> ''FF''\nmysql> SELECT 0x616263;\n        -> ''abc''\nmysql> SELECT HEX(''abc'');\n        -> 616263\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(2, 'REPLACE', 34, 'Syntax:\nREPLACE(str,from_str,to_str)\n\nReturns the string str with all occurrences of the string from_str\nreplaced by the string to_str. REPLACE() performs a case-sensitive\nmatch when searching for from_str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT REPLACE(''www.mysql.com'', ''w'', ''Ww'');\n        -> ''WwWwWw.mysql.com''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(3, 'CONTAINS', 27, 'Contains(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 completely contains g2. This\ntests the opposite relationship as Within().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(4, 'SRID', 33, 'SRID(g)\n\nReturns an integer indicating the Spatial Reference System ID for the\ngeometry value g.\n\nIn MySQL, the SRID value is just an integer associated with the\ngeometry value. All calculations are done assuming Euclidean (planar)\ngeometry.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT SRID(GeomFromText(''LineString(1 1,2 2)'',101));\n+-----------------------------------------------+\n| SRID(GeomFromText(''LineString(1 1,2 2)'',101)) |\n+-----------------------------------------------+\n|                                           101 |\n+-----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html'),
(5, 'CURRENT_TIMESTAMP', 29, 'Syntax:\nCURRENT_TIMESTAMP, CURRENT_TIMESTAMP()\n\nCURRENT_TIMESTAMP and CURRENT_TIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(6, 'SHOW CONTRIBUTORS', 25, 'Syntax:\nSHOW CONTRIBUTORS\n\nThe SHOW CONTRIBUTORS statement displays information about the people\nwho contribute to MySQL source or to causes that MySQL AB supports. For\neach contributor, it displays Name, Location, and Comment values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-contributors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-contributors.html'),
(7, 'VARIANCE', 15, 'Syntax:\nVARIANCE(expr)\n\nReturns the population standard variance of expr. This is an extension\nto standard SQL. The standard SQL function VAR_POP() can be used\ninstead.\n\nVARIANCE() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(8, 'DROP SERVER', 37, 'Syntax:\nDROP SERVER [ IF EXISTS ] server_name\n\nDrops the server definition for the server named server_name. The\ncorresponding row within the mysql.servers table will be deleted. This\nstatement requires the SUPER privilege.\n\nDropping a server for a table does not affect any FEDERATED tables that\nused this connection information when they were created. See [HELP\nCREATE SERVER].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-server.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-server.html'),
(9, 'SHOW AUTHORS', 25, 'Syntax:\nSHOW AUTHORS\n\nThe SHOW AUTHORS statement displays information about the people who\nwork on MySQL. For each author, it displays Name, Location, and Comment\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-authors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-authors.html'),
(10, 'VAR_SAMP', 15, 'Syntax:\nVAR_SAMP(expr)\n\nReturns the sample variance of expr. That is, the denominator is the\nnumber of rows minus one.\n\nVAR_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(11, 'CONCAT', 34, 'Syntax:\nCONCAT(str1,str2,...)\n\nReturns the string that results from concatenating the arguments. May\nhave one or more arguments. If all arguments are non-binary strings,\nthe result is a non-binary string. If the arguments include any binary\nstrings, the result is a binary string. A numeric argument is converted\nto its equivalent binary string form; if you want to avoid that, you\ncan use an explicit type cast, as in this example:\n\nSELECT CONCAT(CAST(int_col AS CHAR), char_col);\n\nCONCAT() returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CONCAT(''My'', ''S'', ''QL'');\n        -> ''MySQL''\nmysql> SELECT CONCAT(''My'', NULL, ''QL'');\n        -> NULL\nmysql> SELECT CONCAT(14.3);\n        -> ''14.3''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(12, 'GEOMETRY HIERARCHY', 31, 'Geometry is the base class. It is an abstract class. The instantiable\nsubclasses of Geometry are restricted to zero-, one-, and\ntwo-dimensional geometric objects that exist in two-dimensional\ncoordinate space. All instantiable geometry classes are defined so that\nvalid instances of a geometry class are topologically closed (that is,\nall defined geometries include their boundary).\n\nThe base Geometry class has subclasses for Point, Curve, Surface, and\nGeometryCollection:\n\no Point represents zero-dimensional objects.\n\no Curve represents one-dimensional objects, and has subclass\n  LineString, with sub-subclasses Line and LinearRing.\n\no Surface is designed for two-dimensional objects and has subclass\n  Polygon.\n\no GeometryCollection has specialized zero-, one-, and two-dimensional\n  collection classes named MultiPoint, MultiLineString, and\n  MultiPolygon for modeling geometries corresponding to collections of\n  Points, LineStrings, and Polygons, respectively. MultiCurve and\n  MultiSurface are introduced as abstract superclasses that generalize\n  the collection interfaces to handle Curves and Surfaces.\n\nGeometry, Curve, Surface, MultiCurve, and MultiSurface are defined as\nnon-instantiable classes. They define a common set of methods for their\nsubclasses and are included for extensibility.\n\nPoint, LineString, Polygon, GeometryCollection, MultiPoint,\nMultiLineString, and MultiPolygon are instantiable classes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-geometry-class-hierarchy.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-geometry-class-hierarchy.html'),
(13, 'CHAR FUNCTION', 34, 'Syntax:\nCHAR(N,... [USING charset_name])\n\nCHAR() interprets each argument N as an integer and returns a string\nconsisting of the characters given by the code values of those\nintegers. NULL values are skipped.\nBy default, CHAR() returns a binary string. To produce a string in a\ngiven character set, use the optional USING clause:\n\nmysql> SELECT CHARSET(CHAR(0x65)), CHARSET(CHAR(0x65 USING utf8));\n+---------------------+--------------------------------+\n| CHARSET(CHAR(0x65)) | CHARSET(CHAR(0x65 USING utf8)) |\n+---------------------+--------------------------------+\n| binary              | utf8                           |\n+---------------------+--------------------------------+\n\nIf USING is given and the result string is illegal for the given\ncharacter set, a warning is issued. Also, if strict SQL mode is\nenabled, the result from CHAR() becomes NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CHAR(77,121,83,81,''76'');\n        -> ''MySQL''\nmysql> SELECT CHAR(77,77.3,''77.3'');\n        -> ''MMM''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(14, 'DATETIME', 21, 'DATETIME\n\nA date and time combination. The supported range is ''1000-01-01\n00:00:00'' to ''9999-12-31 23:59:59''. MySQL displays DATETIME values in\n''YYYY-MM-DD HH:MM:SS'' format, but allows assignment of values to\nDATETIME columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html'),
(15, 'OPEN', 36, 'Syntax:\nOPEN cursor_name\n\nThis statement opens a previously declared cursor.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/open.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/open.html'),
(16, 'SHOW CREATE TRIGGER', 25, 'Syntax:\nSHOW CREATE TRIGGER trigger_name\n\nThis statement shows a CREATE TRIGGER statement that creates the given\ntrigger.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-trigger.html'),
(17, 'SHOW CREATE PROCEDURE', 25, 'Syntax:\nSHOW CREATE {PROCEDURE | FUNCTION} sp_name\n\nThese statements are MySQL extensions. Similar to SHOW CREATE TABLE,\nthey return the exact string that can be used to re-create the named\nroutine. The statements require that you be the owner of the routine or\nhave SELECT access to the mysql.proc table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-procedure.html\n\n', 'mysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n            Function: hello\n            sql_mode:\n     Create Function: CREATE FUNCTION `test`.`hello`(s CHAR(20)) »\n                      RETURNS CHAR(50)\n                      RETURN CONCAT(''Hello, '',s,''!'')\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-procedure.html'),
(18, 'INTEGER', 21, 'INTEGER[(M)] [UNSIGNED] [ZEROFILL]\n\nThis type is a synonym for INT.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(19, 'LOWER', 34, 'Syntax:\nLOWER(str)\n\nReturns the string str with all characters changed to lowercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LOWER(''QUADRATICALLY'');\n        -> ''quadratically''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(20, 'CREATE TRIGGER', 22, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    TRIGGER trigger_name trigger_time trigger_event\n    ON tbl_name FOR EACH ROW trigger_stmt\n\nThis statement creates a new trigger. A trigger is a named database\nobject that is associated with a table, and that activates when a\nparticular event occurs for the table. Currently, CREATE TRIGGER\nrequires the TRIGGER privilege for the table associated with the\ntrigger. (This statement requires the SUPER privilege prior to MySQL\n5.1.6.)\n\nThe trigger becomes associated with the table named tbl_name, which\nmust refer to a permanent table. You cannot associate a trigger with a\nTEMPORARY table or a view.\n\nWhen the trigger is activated, the DEFINER clause determines the\nprivileges that apply, as described later in this section.\n\ntrigger_time is the trigger action time. It can be BEFORE or AFTER to\nindicate that the trigger activates before or after the statement that\nactivated it.\n\ntrigger_event indicates the kind of statement that activates the\ntrigger. The trigger_event can be one of the following:\n\no INSERT: The trigger is activated whenever a new row is inserted into\n  the table; for example, through INSERT, LOAD DATA, and REPLACE\n  statements.\n\no UPDATE: The trigger is activated whenever a row is modified; for\n  example, through UPDATE statements.\n\no DELETE: The trigger is activated whenever a row is deleted from the\n  table; for example, through DELETE and REPLACE statements. However,\n  DROP TABLE and TRUNCATE statements on the table do not activate this\n  trigger, because they do not use DELETE. Dropping a partition does\n  not activate DELETE triggers, either. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-trigger.html'),
(21, 'SHOW COLUMNS', 25, 'Syntax:\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. The LIKE clause, if present, indicates which\ncolumn names to match. The WHERE clause can be given to select rows\nusing more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nThe FULL keyword causes the output to include the privileges you have\nas well as any per-column comments for each column.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. In other words, these two statements are equivalent:\n\nmysql> SHOW COLUMNS FROM mytable FROM mydb;\nmysql> SHOW COLUMNS FROM mydb.mytable;\n\nSHOW FIELDS is a synonym for SHOW COLUMNS. You can also list a table''s\ncolumns with the mysqlshow db_name tbl_name command.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee [HELP DESCRIBE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-columns.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-columns.html'),
(22, 'MONTH', 29, 'Syntax:\nMONTH(date)\n\nReturns the month for date, in the range 0 to 12.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTH(''1998-02-03'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(23, 'TINYINT', 21, 'TINYINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA very small integer. The signed range is -128 to 127. The unsigned\nrange is 0 to 255.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(24, 'SHOW TRIGGERS', 25, 'Syntax:\nSHOW TRIGGERS [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined on the MySQL server.\nThis statement requires the SUPER privilege. The LIKE clause, if\npresent, indicates which trigger names to match. The WHERE clause can\nbe given to select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nFor the trigger ins_sum as defined in\nhttp://dev.mysql.com/doc/refman/5.1/en/using-triggers.html, the output\nof this statement is as shown here:\n\nmysql> SHOW TRIGGERS LIKE ''acc%''\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: NULL\n            sql_mode:\n             Definer: myname@localhost\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\ncharacter_set_client is the session value of the character_set_client\nsystem variable when the trigger was created. collation_connection is\nthe session value of the collation_connection system variable when the\ntrigger was created. Database Collation is the collation of the\ndatabase with which the trigger is associated. These columns were added\nin MySQL 5.1.21.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-triggers.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-triggers.html'),
(25, 'MASTER_POS_WAIT', 14, 'Syntax:\nMASTER_POS_WAIT(log_name,log_pos[,timeout])\n\nThis function is useful for control of master/slave synchronization. It\nblocks until the slave has read and applied all updates up to the\nspecified position in the master log. The return value is the number of\nlog events the slave had to wait for to advance to the specified\nposition. The function returns NULL if the slave SQL thread is not\nstarted, the slave''s master information is not initialized, the\narguments are incorrect, or an error occurs. It returns -1 if the\ntimeout has been exceeded. If the slave SQL thread stops while\nMASTER_POS_WAIT() is waiting, the function returns NULL. If the slave\nis past the specified position, the function returns immediately.\n\nIf a timeout value is specified, MASTER_POS_WAIT() stops waiting when\ntimeout seconds have elapsed. timeout must be greater than 0; a zero or\nnegative timeout means no timeout.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(26, 'REGEXP', 34, 'Syntax:\nexpr REGEXP pat, expr RLIKE pat\n\nPerforms a pattern match of a string expression expr against a pattern\npat. The pattern can be an extended regular expression. The syntax for\nregular expressions is discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/regexp.html. Returns 1 if expr\nmatches pat; otherwise it returns 0. If either expr or pat is NULL, the\nresult is NULL. RLIKE is a synonym for REGEXP, provided for mSQL\ncompatibility.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\n*Note*: Because MySQL uses the C escape syntax in strings (for example,\n`\\n'' to represent the newline character), you must double any `\\'' that\nyou use in your REGEXP strings.\n\nREGEXP is not case sensitive, except when used with binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', 'mysql> SELECT ''Monty!'' REGEXP ''m%y%%'';\n        -> 0\nmysql> SELECT ''Monty!'' REGEXP ''.*'';\n        -> 1\nmysql> SELECT ''new*\\n*line'' REGEXP ''new\\\\*.\\\\*line'';\n        -> 1\nmysql> SELECT ''a'' REGEXP ''A'', ''a'' REGEXP BINARY ''A'';\n        -> 1  0\nmysql> SELECT ''a'' REGEXP ''^[a-d]'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html'),
(27, 'IF STATEMENT', 36, 'Syntax:\nIF search_condition THEN statement_list\n    [ELSEIF search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND IF\n\nIF implements a basic conditional construct. If the search_condition\nevaluates to true, the corresponding SQL statement list is executed. If\nno search_condition matches, the statement list in the ELSE clause is\nexecuted. Each statement_list consists of one or more statements.\n\n*Note*: There is also an IF() function, which differs from the IF\nstatement described here. See [HELP CASE function].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/if-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/if-statement.html'),
(28, '^', 19, 'Syntax:\n^\n\nBitwise XOR:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 1 ^ 1;\n        -> 0\nmysql> SELECT 1 ^ 0;\n        -> 1\nmysql> SELECT 11 ^ 3;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(29, 'DROP VIEW', 37, 'Syntax:\nDROP VIEW [IF EXISTS]\n    view_name [, view_name] ...\n    [RESTRICT | CASCADE]\n\nDROP VIEW removes one or more views. You must have the DROP privilege\nfor each view. If any of the views named in the argument list do not\nexist, MySQL returns an error indicating by name which non-existing\nviews it was unable to drop, but it also drops all of the views in the\nlist that do exist.\n\nThe IF EXISTS clause prevents an error from occurring for views that\ndon''t exist. When this clause is given, a NOTE is generated for each\nnon-existent view. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE, if given, are parsed and ignored.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-view.html'),
(30, 'WITHIN', 27, 'Within(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially within g2. This\ntests the opposite relationship as Contains().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(31, 'WEEK', 29, 'Syntax:\nWEEK(date[,mode])\n\nThis function returns the week number for date. The two-argument form\nof WEEK() allows you to specify whether the week starts on Sunday or\nMonday and whether the return value should be in the range from 0 to 53\nor from 1 to 53. If the mode argument is omitted, the value of the\ndefault_week_format system variable is used. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEK(''1998-02-20'');\n        -> 7\nmysql> SELECT WEEK(''1998-02-20'',0);\n        -> 7\nmysql> SELECT WEEK(''1998-02-20'',1);\n        -> 8\nmysql> SELECT WEEK(''1998-12-31'',1);\n        -> 53\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(32, 'SHOW PLUGINS', 25, 'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about known plugins.\n\nmysql> SHOW PLUGINS;\n+------------+--------+----------------+---------+\n| Name       | Status | Type           | Library |\n+------------+--------+----------------+---------+\n| MEMORY     | ACTIVE | STORAGE ENGINE | NULL    |\n| MyISAM     | ACTIVE | STORAGE ENGINE | NULL    |\n| InnoDB     | ACTIVE | STORAGE ENGINE | NULL    |\n| ARCHIVE    | ACTIVE | STORAGE ENGINE | NULL    |\n| CSV        | ACTIVE | STORAGE ENGINE | NULL    |\n| BLACKHOLE  | ACTIVE | STORAGE ENGINE | NULL    |\n| FEDERATED  | ACTIVE | STORAGE ENGINE | NULL    |\n| MRG_MYISAM | ACTIVE | STORAGE ENGINE | NULL    |\n+------------+--------+----------------+---------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-plugins.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-plugins.html'),
(33, 'PREPARE', 25, 'Syntax:\nPREPARE stmt_name FROM preparable_stmt\n\nThe PREPARE statement prepares a statement and assigns it a name,\nstmt_name, by which to refer to the statement later. Statement names\nare not case sensitive. preparable_stmt is either a string literal or a\nuser variable that contains the text of the statement. The text must\nrepresent a single SQL statement, not multiple statements. Within the\nstatement, `?'' characters can be used as parameter markers to indicate\nwhere data values are to be bound to the query later when you execute\nit. The `?'' characters should not be enclosed within quotes, even if\nyou intend to bind them to string values. Parameter markers can be used\nonly where data values should appear, not for SQL keywords,\nidentifiers, and so forth.\n\nIf a prepared statement with the given name already exists, it is\ndeallocated implicitly before the new statement is prepared. This means\nthat if the new statement contains an error and cannot be prepared, an\nerror is returned and no statement with the given name exists.\n\nThe scope of a prepared statement is the client session within which it\nis created. Other clients cannot see it.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/sqlps.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/sqlps.html'),
(34, 'LOCK', 8, 'Syntax:\nLOCK TABLES\n    tbl_name [[AS] alias] lock_type\n    [, tbl_name [[AS] alias] lock_type] ...\n\nlock_type:\n    READ [LOCAL]\n  | [LOW_PRIORITY] WRITE\n\nUNLOCK TABLES\n\nLOCK TABLES locks base tables (but not views) for the current thread.\nTo use LOCK TABLES, you must have the LOCK TABLES privilege, and the\nSELECT privilege for each table to be locked.\n\nUNLOCK TABLES explicitly releases any table locks held by the current\nthread. Another use for UNLOCK TABLES is to release the global read\nlock acquired with FLUSH TABLES WITH READ LOCK. (You can lock all\ntables in all databases with read locks with the FLUSH TABLES WITH READ\nLOCK statement. See [HELP FLUSH]. This is a very convenient way to get\nbackups if you have a filesystem such as Veritas that can take\nsnapshots in time.)\n\nThe following general rules apply to acquisition and release of locks\nby a given thread:\n\no Table locks are acquired with LOCK TABLES.\n\no If the LOCK TABLES statement must wait due to locks held by other\n  threads on any of the tables, it blocks until all locks can be\n  acquired.\n\no Table locks are released explicitly with UNLOCK TABLES.\n\no Table locks are released implicitly under these conditions:\n\n  o LOCK TABLES releases any table locks currently held by the thread\n    before acquiring new locks.\n\n  o Beginning a transaction (for example, with START TRANSACTION)\n    implicitly performs an UNLOCK TABLES. (Additional information about\n    the interaction between table locking and transactions is given\n    later in the section.)\n\n  o If a client connection drops, the server releases table locks held\n    by the client. If the client reconnects, the locks will no longer\n    be in effect. For this reason, clients may wish to disable\n    auto-reconnect. With auto-reconnect in effect, the client is not\n    notified if reconnect occurs but any table locks will have been\n    lost. With auto-reconnect disabled, if the connection drops, an\n    error occurs for the next statement issued. The client can detect\n    the error and take appropriate action such as reacquiring the\n    locks. See\n    http://dev.mysql.com/doc/refman/5.1/en/auto-reconnect.html.\n\no One thread cannot release another thread''s locks.\n\n*Note*: If you use ALTER TABLE on a locked table, it may become\nunlocked. See\nhttp://dev.mysql.com/doc/refman/5.1/en/alter-table-problems.html.\n\nThe main reasons to use LOCK TABLES are to emulate transactions or to\nget more speed when updating tables. This is explained in more detail\nlater in this section.\n\nA table lock protects only against inappropriate reads or writes by\nother clients. The client holding the lock, even a read lock, can\nperform table-level operations such as DROP TABLE. Truncate operations\nare not transaction-safe, so an error occurs if the client attempts one\nduring an active transaction or while holding a table lock.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/lock-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/lock-tables.html'),
(35, 'UPDATEXML', 34, 'Syntax:\nUpdateXML(xml_target, xpath_expr, new_xml)\n\nThis function replaces a single portion of a given fragment of XML\nmarkup xml_target with a new XML fragment new_xml, and then returns the\nchanged XML. The portion of xml_target that is replaced matches an\nXPath expression xpath_expr supplied by the user. If no expression\nmatching xpath_expr is found, or if multiple matches are found, the\nfunction returns the original xml_target XML fragment. All three\narguments must be strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html\n\n', 'mysql> SELECT\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''/a'', ''<e>fff</e>'') AS val1,\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''/b'', ''<e>fff</e>'') AS val2,\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''//b'', ''<e>fff</e>'') AS val3,\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''/a/d'', ''<e>fff</e>'') AS val4,\n    ->   UpdateXML(''<a><d></d><b>ccc</b><d></d></a>'', ''/a/d'', ''<e>fff</e>'') AS val5\n    -> \\G\n\n*************************** 1. row ***************************\nval1: <e>fff</e>\nval2: <a><b>ccc</b><d></d></a>\nval3: <a><e>fff</e><d></d></a>\nval4: <a><b>ccc</b><e>fff</e></a>\nval5: <a><d></d><b>ccc</b><d></d></a>\n', 'http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html'),
(36, 'RESET SLAVE', 25, 'Syntax:\nRESET SLAVE\n\nRESET SLAVE makes the slave forget its replication position in the\nmaster''s binary logs. This statement is meant to be used for a clean\nstart: It deletes the master.info and relay-log.info files, all the\nrelay logs, and starts a new relay log.\n\n*Note*: All relay logs are deleted, even if they have not been\ncompletely executed by the slave SQL thread. (This is a condition\nlikely to exist on a replication slave if you have issued a STOP SLAVE\nstatement or if the slave is highly loaded.)\n\nConnection information stored in the master.info file is immediately\nreset using any values specified in the corresponding startup options.\nThis information includes values such as master host, master port,\nmaster user, and master password. If the slave SQL thread was in the\nmiddle of replicating temporary tables when it was stopped, and RESET\nSLAVE is issued, these replicated temporary tables are deleted on the\nslave.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/reset-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/reset-slave.html'),
(37, 'SHOW BINARY LOGS', 25, 'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE MASTER LOGS], that shows\nhow to determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-binary-logs.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-binary-logs.html'),
(38, 'POLYGON', 23, 'Polygon(ls1,ls2,...)\n\nConstructs a WKB Polygon value from a number of WKB LineString\narguments. If any argument does not represent the WKB of a LinearRing\n(that is, not a closed and simple LineString) the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html'),
(39, 'MINUTE', 29, 'Syntax:\nMINUTE(time)\n\nReturns the minute for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MINUTE(''98-02-03 10:05:03'');\n        -> 5\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(40, 'DAY', 29, 'Syntax:\nDAY(date)\n\nDAY() is a synonym for DAYOFMONTH().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(41, 'MID', 34, 'Syntax:\nMID(str,pos,len)\n\nMID(str,pos,len) is a synonym for SUBSTRING(str,pos,len).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(42, 'REPLACE INTO', 25, 'Syntax:\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    VALUES ({expr | DEFAULT},...),(...),...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n\nREPLACE works exactly like INSERT, except that if an old row in the\ntable has the same value as a new row for a PRIMARY KEY or a UNIQUE\nindex, the old row is deleted before the new row is inserted. See [HELP\nINSERT].\n\nREPLACE is a MySQL extension to the SQL standard. It either inserts, or\ndeletes and inserts. For another MySQL extension to standard SQL ---\nthat either inserts or updates --- see\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-on-duplicate.html.\n\nNote that unless the table has a PRIMARY KEY or UNIQUE index, using a\nREPLACE statement makes no sense. It becomes equivalent to INSERT,\nbecause there is no index to be used to determine whether a new row\nduplicates another.\n\nValues for all columns are taken from the values specified in the\nREPLACE statement. Any missing columns are set to their default values,\njust as happens for INSERT. You cannot refer to values from the current\nrow and use them in the new row. If you use an assignment such as SET\ncol_name = col_name + 1, the reference to the column name on the right\nhand side is treated as DEFAULT(col_name), so the assignment is\nequivalent to SET col_name = DEFAULT(col_name) + 1.\n\nTo use REPLACE, you must have both the INSERT and DELETE privileges for\nthe table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/replace.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/replace.html'),
(43, 'UUID', 14, 'Syntax:\nUUID()\n\nReturns a Universal Unique Identifier (UUID) generated according to\n"DCE 1.1: Remote Procedure Call" (Appendix A) CAE (Common Applications\nEnvironment) Specifications published by The Open Group in October 1997\n(Document Number C706,\nhttp://www.opengroup.org/public/pubs/catalog/c706.htm).\n\nA UUID is designed as a number that is globally unique in space and\ntime. Two calls to UUID() are expected to generate two different\nvalues, even if these calls are performed on two separate computers\nthat are not connected to each other.\n\nA UUID is a 128-bit number represented by a string of five hexadecimal\nnumbers in aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee format:\n\no The first three numbers are generated from a timestamp.\n\no The fourth number preserves temporal uniqueness in case the timestamp\n  value loses monotonicity (for example, due to daylight saving time).\n\no The fifth number is an IEEE 802 node number that provides spatial\n  uniqueness. A random number is substituted if the latter is not\n  available (for example, because the host computer has no Ethernet\n  card, or we do not know how to find the hardware address of an\n  interface on your operating system). In this case, spatial uniqueness\n  cannot be guaranteed. Nevertheless, a collision should have very low\n  probability.\n\n  Currently, the MAC address of an interface is taken into account only\n  on FreeBSD and Linux. On other operating systems, MySQL uses a\n  randomly generated 48-bit number.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT UUID();\n        -> ''6ccd780c-baba-1026-9564-0040f4311e29''\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(44, 'LINESTRING', 23, 'LineString(pt1,pt2,...)\n\nConstructs a WKB LineString value from a number of WKB Point arguments.\nIf any argument is not a WKB Point, the return value is NULL. If the\nnumber of Point arguments is less than two, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html'),
(45, 'SLEEP', 14, 'Syntax:\nSLEEP(duration)\n\nSleeps (pauses) for the number of seconds given by the duration\nargument, then returns 0. If SLEEP() is interrupted, it returns 1. The\nduration may have a fractional part given in microseconds.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(46, 'CONNECTION_ID', 16, 'Syntax:\nCONNECTION_ID()\n\nReturns the connection ID (thread ID) for the connection. Every\nconnection has an ID that is unique among the set of currently\nconnected clients.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT CONNECTION_ID();\n        -> 23786\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(47, 'DELETE', 25, 'Syntax:\nSingle-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    tbl_name[.*] [, tbl_name[.*]] ...\n    FROM table_references\n    [WHERE where_condition]\n\nOr:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    FROM tbl_name[.*] [, tbl_name[.*]] ...\n    USING table_references\n    [WHERE where_condition]\n\nFor the single-table syntax, the DELETE statement deletes rows from\ntbl_name and returns the number of rows deleted. The WHERE clause, if\ngiven, specifies the conditions that identify which rows to delete.\nWith no WHERE clause, all rows are deleted. If the ORDER BY clause is\nspecified, the rows are deleted in the order that is specified. The\nLIMIT clause places a limit on the number of rows that can be deleted.\n\nFor the multiple-table syntax, DELETE deletes from each tbl_name the\nrows that satisfy the conditions. In this case, ORDER BY and LIMIT\ncannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe deleted. It is specified as described in [HELP SELECT].\n\nAs stated, a DELETE statement with no WHERE clause deletes all rows. A\nfaster way to do this, when you do not want to know the number of\ndeleted rows, is to use TRUNCATE TABLE. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/delete.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/delete.html'),
(48, 'ROUND', 4, 'Syntax:\nROUND(X), ROUND(X,D)\n\nRounds the argument X to D decimal places. The rounding algorithm\ndepends on the data type of X. D defaults to 0 if not specified. D can\nbe negative to cause D digits left of the decimal point of the value X\nto become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ROUND(-1.23);\n        -> -1\nmysql> SELECT ROUND(-1.58);\n        -> -2\nmysql> SELECT ROUND(1.58);\n        -> 2\nmysql> SELECT ROUND(1.298, 1);\n        -> 1.3\nmysql> SELECT ROUND(1.298, 0);\n        -> 1\nmysql> SELECT ROUND(23.298, -1);\n        -> 20\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(49, 'NULLIF', 7, 'Syntax:\nNULLIF(expr1,expr2)\n\nReturns NULL if expr1 = expr2 is true, otherwise returns expr1. This is\nthe same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT NULLIF(1,1);\n        -> NULL\nmysql> SELECT NULLIF(1,2);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html'),
(50, 'CLOSE', 36, 'Syntax:\nCLOSE cursor_name\n\nThis statement closes a previously opened cursor.\n\nIf not closed explicitly, a cursor is closed at the end of the compound\nstatement in which it was declared.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/close.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/close.html'),
(51, 'STOP SLAVE', 25, 'Syntax:\nSTOP SLAVE [thread_type [, thread_type] ... ]\n\nthread_type: IO_THREAD | SQL_THREAD\n\nStops the slave threads. STOP SLAVE requires the SUPER privilege.\n\nLike START SLAVE, this statement may be used with the IO_THREAD and\nSQL_THREAD options to name the thread or threads to be stopped.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/stop-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/stop-slave.html'),
(52, 'TIMEDIFF', 29, 'Syntax:\nTIMEDIFF(expr1,expr2)\n\nTIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and\nexpr2 are time or date-and-time expressions, but both must be of the\nsame type.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMEDIFF(''2000:01:01 00:00:00'',\n    ->                 ''2000:01:01 00:00:00.000001'');\n        -> ''-00:00:00.000001''\nmysql> SELECT TIMEDIFF(''1997-12-31 23:59:59.000001'',\n    ->                 ''1997-12-30 01:01:01.000002'');\n        -> ''46:58:57.999999''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(53, 'LINEFROMTEXT', 3, 'LineFromText(wkt[,srid]), LineStringFromText(wkt[,srid])\n\nConstructs a LINESTRING value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html'),
(54, 'SHOW MASTER STATUS', 25, 'Syntax:\nSHOW MASTER STATUS\n\nProvides status information about the binary log files of the master.\nExample:\n\nmysql > SHOW MASTER STATUS;\n+---------------+----------+--------------+------------------+\n| File          | Position | Binlog_Do_DB | Binlog_Ignore_DB |\n+---------------+----------+--------------+------------------+\n| mysql-bin.003 | 73       | test         | manual,mysql     |\n+---------------+----------+--------------+------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-master-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-master-status.html'),
(55, 'ADDTIME', 29, 'Syntax:\nADDTIME(expr1,expr2)\n\nADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time\nor datetime expression, and expr2 is a time expression.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDTIME(''1997-12-31 23:59:59.999999'',\n    ->                ''1 1:1:1.000002'');\n        -> ''1998-01-02 01:01:01.000001''\nmysql> SELECT ADDTIME(''01:00:00.999999'', ''02:00:00.999998'');\n        -> ''03:00:01.999997''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(56, 'SPATIAL', 31, 'MySQL can create spatial indexes using syntax similar to that for\ncreating regular indexes, but extended with the SPATIAL keyword.\nCurrently, columns in spatial indexes must be declared NOT NULL. The\nfollowing examples demonstrate how to create spatial indexes:\n\no With CREATE TABLE:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL, SPATIAL INDEX(g));\n\no With ALTER TABLE:\n\nALTER TABLE geom ADD SPATIAL INDEX(g);\n\no With CREATE INDEX:\n\nCREATE SPATIAL INDEX sp_index ON geom (g);\n\nFor MyISAM tables, SPATIAL INDEX creates an R-tree index. For storage\nengines that support non-spatial indexing of spatial columns, the\nengine creates a B-tree index. A B-tree index on spatial values will be\nuseful for exact-value lookups, but not for range scans.\n\nFor more information on indexing spatial columns, see [HELP CREATE\nINDEX].\n\nTo drop spatial indexes, use ALTER TABLE or DROP INDEX:\n\no With ALTER TABLE:\n\nALTER TABLE geom DROP INDEX g;\n\no With DROP INDEX:\n\nDROP INDEX sp_index ON geom;\n\nExample: Suppose that a table geom contains more than 32,000\ngeometries, which are stored in the column g of type GEOMETRY. The\ntable also has an AUTO_INCREMENT column fid for storing object ID\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-indexes.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-indexes.html'),
(57, 'TIMESTAMPDIFF', 29, 'Syntax:\nTIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)\n\nReturns the integer difference between the date or datetime expressions\ndatetime_expr1 and datetime_expr2. The unit for the result is given by\nthe unit argument. The legal values for unit are the same as those\nlisted in the description of the TIMESTAMPADD() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPDIFF(MONTH,''2003-02-01'',''2003-05-01'');\n        -> 3\nmysql> SELECT TIMESTAMPDIFF(YEAR,''2002-05-01'',''2001-01-01'');\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(58, 'UPPER', 34, 'Syntax:\nUPPER(str)\n\nReturns the string str with all characters changed to uppercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT UPPER(''Hej'');\n        -> ''HEJ''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(59, 'FROM_UNIXTIME', 29, 'Syntax:\nFROM_UNIXTIME(unix_timestamp), FROM_UNIXTIME(unix_timestamp,format)\n\nReturns a representation of the unix_timestamp argument as a value in\n''YYYY-MM-DD HH:MM:SS'' or YYYYMMDDHHMMSS format, depending on whether\nthe function is used in a string or numeric context. The value is\nexpressed in the current time zone. unix_timestamp is an internal\ntimestamp value such as is produced by the UNIX_TIMESTAMP() function.\n\nIf format is given, the result is formatted according to the format\nstring, which is used the same way as listed in the entry for the\nDATE_FORMAT() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_UNIXTIME(875996580);\n        -> ''1997-10-04 22:23:00''\nmysql> SELECT FROM_UNIXTIME(875996580) + 0;\n        -> 19971004222300\nmysql> SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(),\n    ->                      ''%Y %D %M %h:%i:%s %x'');\n        -> ''2003 6th August 06:22:58 2003''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(60, 'MEDIUMBLOB', 21, 'MEDIUMBLOB\n\nA BLOB column with a maximum length of 16,777,215 (224 - 1) bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(61, 'IFNULL', 7, 'Syntax:\nIFNULL(expr1,expr2)\n\nIf expr1 is not NULL, IFNULL() returns expr1; otherwise it returns\nexpr2. IFNULL() returns a numeric or string value, depending on the\ncontext in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT IFNULL(1,0);\n        -> 1\nmysql> SELECT IFNULL(NULL,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,''yes'');\n        -> ''yes''\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html'),
(62, 'SHOW ERRORS', 25, 'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nThis statement is similar to SHOW WARNINGS, except that instead of\ndisplaying errors, warnings, and notes, it displays only errors.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\n[HELP SELECT].\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-errors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-errors.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(63, 'LEAST', 18, 'Syntax:\nLEAST(value1,value2,...)\n\nWith two or more arguments, returns the smallest (minimum-valued)\nargument. The arguments are compared using the following rules:\n\no If the return value is used in an INTEGER context or all arguments\n  are integer-valued, they are compared as integers.\n\no If the return value is used in a REAL context or all arguments are\n  real-valued, they are compared as reals.\n\no If any argument is a case-sensitive string, the arguments are\n  compared as case-sensitive strings.\n\no In all other cases, the arguments are compared as case-insensitive\n  strings.\n\nLEAST() returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT LEAST(2,0);\n        -> 0\nmysql> SELECT LEAST(34.0,3.0,5.0,767.0);\n        -> 3.0\nmysql> SELECT LEAST(''B'',''A'',''C'');\n        -> ''A''\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(64, '=', 18, '=\n\nEqual:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 = 0;\n        -> 0\nmysql> SELECT ''0'' = 0;\n        -> 1\nmysql> SELECT ''0.0'' = 0;\n        -> 1\nmysql> SELECT ''0.01'' = 0;\n        -> 0\nmysql> SELECT ''.01'' = 0.01;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(65, 'REVERSE', 34, 'Syntax:\nREVERSE(str)\n\nReturns the string str with the order of the characters reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT REVERSE(''abc'');\n        -> ''cba''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(66, 'ISNULL', 18, 'Syntax:\nISNULL(expr)\n\nIf expr is NULL, ISNULL() returns 1, otherwise it returns 0.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT ISNULL(1+1);\n        -> 0\nmysql> SELECT ISNULL(1/0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(67, 'BINARY', 21, 'BINARY(M)\n\nThe BINARY type is similar to the CHAR type, but stores binary byte\nstrings rather than non-binary character strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(68, 'BLOB DATA TYPE', 21, 'A BLOB is a binary large object that can hold a variable amount of\ndata. The four BLOB types are TINYBLOB, BLOB, MEDIUMBLOB, and LONGBLOB.\nThese differ only in the maximum length of the values they can hold.\nThe four TEXT types are TINYTEXT, TEXT, MEDIUMTEXT, and LONGTEXT. These\ncorrespond to the four BLOB types and have the same maximum lengths and\nstorage requirements. See\nhttp://dev.mysql.com/doc/refman/5.1/en/storage-requirements.html. No\nlettercase conversion for TEXT or BLOB columns takes place during\nstorage or retrieval.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/blob.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/blob.html'),
(69, 'BOUNDARY', 33, 'Boundary(g)\n\nReturns a geometry that is the closure of the combinatorial boundary of\nthe geometry value g.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html'),
(70, 'CREATE USER', 9, 'Syntax:\nCREATE USER user [IDENTIFIED BY [PASSWORD] ''password'']\n    [, user [IDENTIFIED BY [PASSWORD] ''password'']] ...\n\nThe CREATE USER statement creates new MySQL accounts. To use it, you\nmust have the global CREATE USER privilege or the INSERT privilege for\nthe mysql database. For each account, CREATE USER creates a new row in\nthe mysql.user table that has no privileges. An error occurs if the\naccount already exists. Each account is named using the same format as\nfor the GRANT statement; for example, ''jeffrey''@''localhost''. If you\nspecify only the username part of the account name, a hostname part of\n''%'' is used. For additional information about specifying account names,\nsee [HELP GRANT].\n\nThe account can be given a password with the optional IDENTIFIED BY\nclause. The user value and the password are given the same way as for\nthe GRANT statement. In particular, to specify the password in plain\ntext, omit the PASSWORD keyword. To specify the password as the hashed\nvalue as returned by the PASSWORD() function, include the PASSWORD\nkeyword. See [HELP GRANT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-user.html'),
(71, 'POINT', 23, 'Point(x,y)\n\nConstructs a WKB Point using its coordinates.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html'),
(72, 'CURRENT_USER', 16, 'Syntax:\nCURRENT_USER, CURRENT_USER()\n\nReturns the username and hostname combination for the MySQL account\nthat the server used to authenticate the current client. This account\ndetermines your access privileges. Within a stored routine that is\ndefined with the SQL SECURITY DEFINER characteristic, CURRENT_USER()\nreturns the creator of the routine. The return value is a string in the\nutf8 character set.\n\nThe value of CURRENT_USER() can differ from the value of USER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> ''davida@localhost''\nmysql> SELECT * FROM mysql.user;\nERROR 1044: Access denied for user ''''@''localhost'' to\ndatabase ''mysql''\nmysql> SELECT CURRENT_USER();\n        -> ''@localhost''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(73, 'LCASE', 34, 'Syntax:\nLCASE(str)\n\nLCASE() is a synonym for LOWER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(74, '<=', 18, 'Syntax:\n<=\n\nLess than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 0.1 <= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(75, 'UPDATE', 25, 'Syntax:\nSingle-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] tbl_name\n    SET col_name1=expr1 [, col_name2=expr2 ...]\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_references\n    SET col_name1=expr1 [, col_name2=expr2 ...]\n    [WHERE where_condition]\n\nFor the single-table syntax, the UPDATE statement updates columns of\nexisting rows in tbl_name with new values. The SET clause indicates\nwhich columns to modify and the values they should be given. The WHERE\nclause, if given, specifies the conditions that identify which rows to\nupdate. With no WHERE clause, all rows are updated. If the ORDER BY\nclause is specified, the rows are updated in the order that is\nspecified. The LIMIT clause places a limit on the number of rows that\ncan be updated.\n\nFor the multiple-table syntax, UPDATE updates rows in each table named\nin table_references that satisfy the conditions. In this case, ORDER BY\nand LIMIT cannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe updated. It is specified as described in [HELP SELECT].\n\nThe UPDATE statement supports the following modifiers:\n\no If you use the LOW_PRIORITY keyword, execution of the UPDATE is\n  delayed until no other clients are reading from the table. This\n  affects only storage engines that use only table-level locking\n  (MyISAM, MEMORY, MERGE).\n\no If you use the IGNORE keyword, the update statement does not abort\n  even if errors occur during the update. Rows for which duplicate-key\n  conflicts occur are not updated. Rows for which columns are updated\n  to values that would cause data conversion errors are updated to the\n  closest valid values instead.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/update.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/update.html'),
(76, 'CASE STATEMENT', 36, 'Syntax:\nCASE case_value\n    WHEN when_value THEN statement_list\n    [WHEN when_value THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nOr:\n\nCASE\n    WHEN search_condition THEN statement_list\n    [WHEN search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nThe CASE statement for stored routines implements a complex conditional\nconstruct. If a search_condition evaluates to true, the corresponding\nSQL statement list is executed. If no search condition matches, the\nstatement list in the ELSE clause is executed. Each statement_list\nconsists of one or more statements.\n\n*Note*: The syntax of the CASE statement shown here for use inside\nstored routines differs slightly from that of the SQL CASE expression\ndescribed in [HELP CASE function]. The CASE statement cannot have an\nELSE NULL clause, and it is terminated with END CASE instead of END.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/case-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/case-statement.html'),
(77, 'EXECUTE STATEMENT', 25, 'Syntax:\nEXECUTE stmt_name [USING @var_name [, @var_name] ...]\n\nAfter preparing a statement, you execute it with an EXECUTE statement\nthat refers to the prepared statement name. If the prepared statement\ncontains any parameter markers, you must supply a USING clause that\nlists user variables containing the values to be bound to the\nparameters. Parameter values can be supplied only by user variables,\nand the USING clause must name exactly as many variables as the number\nof parameter markers in the statement.\n\nYou can execute a given prepared statement multiple times, passing\ndifferent variables to it or setting the variables to different values\nbefore each execution.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/sqlps.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/sqlps.html'),
(78, 'DROP INDEX', 37, 'Syntax:\nDROP INDEX index_name ON tbl_name\n\nDROP INDEX drops the index named index_name from the table tbl_name.\nThis statement is mapped to an ALTER TABLE statement to drop the index.\nSee [HELP ALTER TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-index.html'),
(79, 'MATCH AGAINST', 34, 'Syntax:\nMATCH (col1,col2,...) AGAINST (expr [search_modifier])\n\nsearch_modifier:\n  {\n       IN BOOLEAN MODE\n     | IN NATURAL LANGUAGE MODE\n     | IN NATURAL LANGUAGE MODE WITH QUERY EXPANSION\n     | WITH QUERY EXPANSION\n  }\n\nMySQL has support for full-text indexing and searching:\n\no A full-text index in MySQL is an index of type FULLTEXT.\n\no Full-text indexes can be used only with MyISAM tables, and can be\n  created only for CHAR, VARCHAR, or TEXT columns.\n\no A FULLTEXT index definition can be given in the CREATE TABLE\n  statement when a table is created, or added later using ALTER TABLE\n  or CREATE INDEX.\n\no For large datasets, it is much faster to load your data into a table\n  that has no FULLTEXT index and then create the index after that, than\n  to load data into a table that has an existing FULLTEXT index.\n\nFull-text searching is performed using MATCH() ... AGAINST syntax.\nMATCH() takes a comma-separated list that names the columns to be\nsearched. AGAINST takes a string to search for, and an optional\nmodifier that indicates what type of search to perform. The search\nstring must be a literal string, not a variable or a column name. There\nare three types of full-text searches:\n\no A boolean search interprets the search string using the rules of a\n  special query language. The string contains the words to search for.\n  It can also contain operators that specify requirements such that a\n  word must be present or absent in matching rows, or that it should be\n  weighted higher or lower than usual. Common words such as "some" or\n  "then" are stopwords and do not match if present in the search\n  string. The IN BOOLEAN MODE modifier specifies a boolean search. For\n  more information, see\n  http://dev.mysql.com/doc/refman/5.1/en/fulltext-boolean.html.\n\no A natural language search interprets the search string as a phrase in\n  natural human language (a phrase in free text). There are no special\n  operators. The stopword list applies. In addition, words that are\n  present in more than 50% of the rows are considered common and do not\n  match. Full-text searches are natural language searches if the IN\n  NATURAL LANGUAGE MODE modifier is given or if no modifier is given.\n\no A query expansion search is a modification of a natural language\n  search. The search string is used to perform a natural language\n  search. Then words from the most relevant rows returned by the search\n  are added to the search string and the search is done again. The\n  query returns the rows from the second search. The IN NATURAL\n  LANGUAGE MODE WITH QUERY EXPANSION or WITH QUERY EXPANSION modifier\n  specifies a query expansion search. For more information, see\n  http://dev.mysql.com/doc/refman/5.1/en/fulltext-query-expansion.html.\n\nThe IN NATURAL LANGUAGE MODE and IN NATURAL LANGUAGE MODE WITH QUERY\nEXPANSION modifiers were added in MySQL 5.1.7.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/fulltext-search.html\n\n', 'mysql> SELECT id, body, MATCH (title,body) AGAINST\n    -> (''Security implications of running MySQL as root''\n    -> IN NATURAL LANGUAGE MODE) AS score\n    -> FROM articles WHERE MATCH (title,body) AGAINST\n    -> (''Security implications of running MySQL as root''\n    -> IN NATURAL LANGUAGE MODE);\n+----+-------------------------------------+-----------------+\n| id | body                                | score           |\n+----+-------------------------------------+-----------------+\n|  4 | 1. Never run mysqld as root. 2. ... | 1.5219271183014 |\n|  6 | When configured properly, MySQL ... | 1.3114095926285 |\n+----+-------------------------------------+-----------------+\n2 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/fulltext-search.html'),
(80, 'CREATE EVENT', 37, 'Syntax:\nCREATE \n    [DEFINER = { user | CURRENT_USER }]\n    EVENT \n    [IF NOT EXISTS]\n    event_name    \n    ON SCHEDULE schedule\n    [ON COMPLETION [NOT] PRESERVE]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT ''comment'']\n    DO sql_statement;\n\nschedule:\n    AT timestamp [+ INTERVAL interval]\n  | EVERY interval \n    [STARTS timestamp [+ INTERVAL interval]] \n    [ENDS timestamp [+ INTERVAL interval]]\n\ninterval:\n    quantity {YEAR | QUARTER | MONTH | DAY | HOUR | MINUTE |\n              WEEK | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE |\n              DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}\n\nThis statement creates and schedules a new event. The minimum\nrequirements for a valid CREATE EVENT statement are as follows:\n\no The keywords CREATE EVENT plus an event name, which uniquely\n  identifies the event in the current schema.\n\n  (Prior to MySQL 5.1.12, the event name needed to be unique only among\n  events created by the same user on a given database.)\n\no An ON SCHEDULE clause, which determines when and how often the event\n  executes.\n\no A DO clause, which contains the SQL statement to be executed by an\n  event.\n\nThis is an example of a minimal CREATE EVENT statement:\n\nCREATE EVENT myevent\n    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n    DO\n      UPDATE myschema.mytable SET mycol = mycol + 1;\n\nThe previous statement creates an event named myevent. This event\nexecutes once --- one hour following its creation --- by running an SQL\nstatement that increments the value of the myschema.mytable table''s\nmycol column by 1.\n\nThe event_name must be a valid MySQL identifier with a maximum length\nof 64 characters. It may be delimited using back ticks, and may be\nqualified with the name of a database schema. An event is associated\nwith both a MySQL user (the definer) and a schema, and its name must be\nunique among names of events within that schema. In general, the rules\ngoverning event names are the same as those for names of stored\nroutines. See http://dev.mysql.com/doc/refman/5.1/en/identifiers.html.\n\nIf no schema is indicated as part of event_name, then the default\n(current) schema is assumed. The definer is always the current MySQL\nuser.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-event.html'),
(81, 'ABS', 4, 'Syntax:\nABS(X)\n\nReturns the absolute value of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ABS(2);\n        -> 2\nmysql> SELECT ABS(-32);\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(82, 'POLYFROMWKB', 30, 'PolyFromWKB(wkb[,srid]), PolygonFromWKB(wkb[,srid])\n\nConstructs a POLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html'),
(83, 'NOT LIKE', 34, 'Syntax:\nexpr NOT LIKE pat [ESCAPE ''escape_char'']\n\nThis is the same as NOT (expr LIKE pat [ESCAPE ''escape_char'']).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html'),
(84, 'SPACE', 34, 'Syntax:\nSPACE(N)\n\nReturns a string consisting of N space characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SPACE(6);\n        -> ''      ''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(85, 'MBR DEFINITION', 6, 'Its MBR (Minimum Bounding Rectangle), or Envelope. This is the bounding\ngeometry, formed by the minimum and maximum (X,Y) coordinates:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-class-geometry.html\n\n', '((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n', 'http://dev.mysql.com/doc/refman/5.1/en/gis-class-geometry.html'),
(86, 'GEOMETRYCOLLECTION', 23, 'GeometryCollection(g1,g2,...)\n\nConstructs a WKB GeometryCollection. If any argument is not a\nwell-formed WKB representation of a geometry, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html'),
(87, '*', 4, 'Syntax:\n*\n\nMultiplication:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3*5;\n        -> 15\nmysql> SELECT 18014398509481984*18014398509481984.0;\n        -> 324518553658426726783156020576256.0\nmysql> SELECT 18014398509481984*18014398509481984;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(88, 'TIMESTAMP', 21, 'TIMESTAMP\n\nA timestamp. The range is ''1970-01-01 00:00:01'' UTC to partway through\nthe year 2038. TIMESTAMP values are stored as the number of seconds\nsince the epoch (''1970-01-01 00:00:00'' UTC). A TIMESTAMP cannot\nrepresent the value ''1970-01-01 00:00:00'' because that is equivalent to\n0 seconds from the epoch and the value 0 is reserved for representing\n''0000-00-00 00:00:00'', the "zero" TIMESTAMP value.\n\nA TIMESTAMP column is useful for recording the date and time of an\nINSERT or UPDATE operation. By default, the first TIMESTAMP column in a\ntable is automatically set to the date and time of the most recent\noperation if you do not assign it a value yourself. You can also set\nany TIMESTAMP column to the current date and time by assigning it a\nNULL value. Variations on automatic initialization and update\nproperties are described in\nhttp://dev.mysql.com/doc/refman/5.1/en/timestamp.html.\n\nA TIMESTAMP value is returned as a string in the format ''YYYY-MM-DD\nHH:MM:SS'' with a display width fixed at 19 characters. To obtain the\nvalue as a number, you should add +0 to the timestamp column.\n\n*Note*: The TIMESTAMP format that was used prior to MySQL 4.1 is not\nsupported in MySQL 5.1; see MySQL 3.23, 4.0, 4.1 Reference Manual for\ninformation regarding the old format.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html'),
(89, 'DES_DECRYPT', 11, 'Syntax:\nDES_DECRYPT(crypt_str[,key_str])\n\nDecrypts a string encrypted with DES_ENCRYPT(). If an error occurs,\nthis function returns NULL.\n\nNote that this function works only if MySQL has been configured with\nSSL support. See\nhttp://dev.mysql.com/doc/refman/5.1/en/secure-connections.html.\n\nIf no key_str argument is given, DES_DECRYPT() examines the first byte\nof the encrypted string to determine the DES key number that was used\nto encrypt the original string, and then reads the key from the DES key\nfile to decrypt the message. For this to work, the user must have the\nSUPER privilege. The key file can be specified with the --des-key-file\nserver option.\n\nIf you pass this function a key_str argument, that string is used as\nthe key for decrypting the message.\n\nIf the crypt_str argument does not appear to be an encrypted string,\nMySQL returns the given crypt_str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(90, 'ENDPOINT', 12, 'EndPoint(ls)\n\nReturns the Point that is the endpoint of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(EndPoint(GeomFromText(@ls)));\n+-------------------------------------+\n| AsText(EndPoint(GeomFromText(@ls))) |\n+-------------------------------------+\n| POINT(3 3)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html'),
(91, 'CACHE INDEX', 25, 'Syntax:\nCACHE INDEX\n  tbl_index_list [, tbl_index_list] ...\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [[INDEX|KEY] (index_name[, index_name] ...)]\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It is used only for MyISAM tables.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cache-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/cache-index.html'),
(92, 'COMPRESS', 11, 'Syntax:\nCOMPRESS(string_to_compress)\n\nCompresses a string and returns the result as a binary string. This\nfunction requires MySQL to have been compiled with a compression\nlibrary such as zlib. Otherwise, the return value is always NULL. The\ncompressed string can be uncompressed with UNCOMPRESS().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT LENGTH(COMPRESS(REPEAT(''a'',1000)));\n        -> 21\nmysql> SELECT LENGTH(COMPRESS(''''));\n        -> 0\nmysql> SELECT LENGTH(COMPRESS(''a''));\n        -> 13\nmysql> SELECT LENGTH(COMPRESS(REPEAT(''a'',16)));\n        -> 15\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(93, 'INSERT', 25, 'Syntax:\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    VALUES ({expr | DEFAULT},...),(...),...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nINSERT inserts new rows into an existing table. The INSERT ... VALUES\nand INSERT ... SET forms of the statement insert rows based on\nexplicitly specified values. The INSERT ... SELECT form inserts rows\nselected from another table or tables. INSERT ... SELECT is discussed\nfurther in [HELP INSERT SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/insert.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/insert.html'),
(94, 'COUNT', 15, 'Syntax:\nCOUNT(expr)\n\nReturns a count of the number of non-NULL values of expr in the rows\nretrieved by a SELECT statement. The result is a BIGINT value.\n\nCOUNT() returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student.student_name,COUNT(*)\n    ->        FROM student,course\n    ->        WHERE student.student_id=course.student_id\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(95, 'HANDLER', 25, 'Syntax:\nHANDLER tbl_name OPEN [ [AS] alias]\nHANDLER tbl_name READ index_name { = | >= | <= | < } (value1,value2,...)\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ index_name { FIRST | NEXT | PREV | LAST }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ { FIRST | NEXT }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name CLOSE\n\nThe HANDLER statement provides direct access to table storage engine\ninterfaces. It is available for MyISAM and InnoDB tables.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/handler.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/handler.html'),
(96, 'MLINEFROMTEXT', 3, 'MLineFromText(wkt[,srid]), MultiLineStringFromText(wkt[,srid])\n\nConstructs a MULTILINESTRING value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html'),
(97, 'GEOMCOLLFROMWKB', 30, 'GeomCollFromWKB(wkb[,srid]), GeometryCollectionFromWKB(wkb[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html'),
(98, 'RENAME TABLE', 37, 'Syntax:\nRENAME TABLE tbl_name TO new_tbl_name\n    [, tbl_name2 TO new_tbl_name2] ...\n\nThis statement renames one or more tables.\n\nThe rename operation is done atomically, which means that no other\nthread can access any of the tables while the rename is running. For\nexample, if you have an existing table old_table, you can create\nanother table new_table that has the same structure but is empty, and\nthen replace the existing table with the empty one as follows (assuming\nthat backup_table does not already exist):\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/rename-table.html\n\n', 'CREATE TABLE new_table (...);\nRENAME TABLE old_table TO backup_table, new_table TO old_table;\n', 'http://dev.mysql.com/doc/refman/5.1/en/rename-table.html'),
(99, 'BOOLEAN', 21, 'BOOL, BOOLEAN\n\nThese types are synonyms for TINYINT(1). A value of zero is considered\nfalse. Non-zero values are considered true:\n\nmysql> SELECT IF(0, ''true'', ''false'');\n+------------------------+\n| IF(0, ''true'', ''false'') |\n+------------------------+\n| false                  |\n+------------------------+\n\nmysql> SELECT IF(1, ''true'', ''false'');\n+------------------------+\n| IF(1, ''true'', ''false'') |\n+------------------------+\n| true                   |\n+------------------------+\n\nmysql> SELECT IF(2, ''true'', ''false'');\n+------------------------+\n| IF(2, ''true'', ''false'') |\n+------------------------+\n| true                   |\n+------------------------+\n\nHowever, the values TRUE and FALSE are merely aliases for 1 and 0,\nrespectively, as shown here:\n\nmysql> SELECT IF(0 = FALSE, ''true'', ''false'');\n+--------------------------------+\n| IF(0 = FALSE, ''true'', ''false'') |\n+--------------------------------+\n| true                           |\n+--------------------------------+\n\nmysql> SELECT IF(1 = TRUE, ''true'', ''false'');\n+-------------------------------+\n| IF(1 = TRUE, ''true'', ''false'') |\n+-------------------------------+\n| true                          |\n+-------------------------------+\n\nmysql> SELECT IF(2 = TRUE, ''true'', ''false'');\n+-------------------------------+\n| IF(2 = TRUE, ''true'', ''false'') |\n+-------------------------------+\n| false                         |\n+-------------------------------+\n\nmysql> SELECT IF(2 = FALSE, ''true'', ''false'');\n+--------------------------------+\n| IF(2 = FALSE, ''true'', ''false'') |\n+--------------------------------+\n| false                          |\n+--------------------------------+\n\nThe last two statements display the results shown because 2 is equal to\nneither 1 nor 0.\n\nWe intend to implement full boolean type handling, in accordance with\nstandard SQL, in a future MySQL release.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(100, 'DEFAULT', 14, 'Syntax:\nDEFAULT(col_name)\n\nReturns the default value for a table column. An error results if the\ncolumn has no default value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> UPDATE t SET i = DEFAULT(i)+1 WHERE id < 100;\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(101, 'MOD', 4, 'Syntax:\nMOD(N,M), N % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT MOD(234, 10);\n        -> 4\nmysql> SELECT 253 % 7;\n        -> 1\nmysql> SELECT MOD(29,9);\n        -> 2\nmysql> SELECT 29 MOD 9;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(102, 'TINYTEXT', 21, 'TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 255 (28 - 1) characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(103, 'OPTIMIZE TABLE', 20, 'Syntax:\nOPTIMIZE [LOCAL | NO_WRITE_TO_BINLOG] TABLE tbl_name [, tbl_name] ...\n\nOPTIMIZE TABLE should be used if you have deleted a large part of a\ntable or if you have made many changes to a table with variable-length\nrows (tables that have VARCHAR, VARBINARY, BLOB, or TEXT columns).\nDeleted rows are maintained in a linked list and subsequent INSERT\noperations reuse old row positions. You can use OPTIMIZE TABLE to\nreclaim the unused space and to defragment the data file.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/optimize-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/optimize-table.html'),
(104, 'DECODE', 11, 'Syntax:\nDECODE(crypt_str,pass_str)\n\nDecrypts the encrypted string crypt_str using pass_str as the password.\ncrypt_str should be a string returned from ENCODE().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(105, '<=>', 18, 'Syntax:\n<=>\n\nNULL-safe equal. This operator performs an equality comparison like the\n= operator, but returns 1 rather than NULL if both operands are NULL,\nand 0 rather than NULL if one operand is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 <=> 1, NULL <=> NULL, 1 <=> NULL;\n        -> 1, 1, 0\nmysql> SELECT 1 = 1, NULL = NULL, 1 = NULL;\n        -> 1, NULL, NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(106, 'LOAD DATA FROM MASTER', 25, 'Syntax:\nLOAD DATA FROM MASTER\n\nThis feature is deprecated. We recommend not using it anymore. It is\nsubject to removal in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated in\nversions 4.1 of MySQL and above. We will introduce a more advanced\ntechnique (called "online backup") in a future version. That technique\nwill have the additional advantage of working with more storage\nengines.\n\nFor MySQL 5.1 and earlier, the recommended alternative solution to\nusing LOAD DATA FROM MASTER or LOAD TABLE FROM MASTER is using\nmysqldump or mysqlhotcopy. The latter requires Perl and two Perl\nmodules (DBI and DBD:mysql) and works for MyISAM and ARCHIVE tables\nonly. With mysqldump, you can create SQL dumps on the master and pipe\n(or copy) these to a mysql client on the slave. This has the advantage\nof working for all storage engines, but can be quite slow, since it\nworks using SELECT.\n\nThis statement takes a snapshot of the master and copies it to the\nslave. It updates the values of MASTER_LOG_FILE and MASTER_LOG_POS so\nthat the slave starts replicating from the correct position. Any table\nand database exclusion rules specified with the --replicate-*-do-* and\n--replicate-*-ignore-* options are honored. --replicate-rewrite-db is\nnot taken into account because a user could use this option to set up a\nnon-unique mapping such as --replicate-rewrite-db="db1->db3" and\n--replicate-rewrite-db="db2->db3", which would confuse the slave when\nloading tables from the master.\n\nUse of this statement is subject to the following conditions:\n\no It works only for MyISAM tables. Attempting to load a non-MyISAM\n  table results in the following error:\n\nERROR 1189 (08S01): Net error reading from master\n\no It acquires a global read lock on the master while taking the\n  snapshot, which prevents updates on the master during the load\n  operation.\n\nIf you are loading large tables, you might have to increase the values\nof net_read_timeout and net_write_timeout on both the master and slave\nservers. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\nNote that LOAD DATA FROM MASTER does not copy any tables from the mysql\ndatabase. This makes it easy to have different users and privileges on\nthe master and the slave.\n\nTo use LOAD DATA FROM MASTER, the replication account that is used to\nconnect to the master must have the RELOAD and SUPER privileges on the\nmaster and the SELECT privilege for all master tables you want to load.\nAll master tables for which the user does not have the SELECT privilege\nare ignored by LOAD DATA FROM MASTER. This is because the master hides\nthem from the user: LOAD DATA FROM MASTER calls SHOW DATABASES to know\nthe master databases to load, but SHOW DATABASES returns only databases\nfor which the user has some privilege. See [HELP SHOW DATABASES]. On\nthe slave side, the user that issues LOAD DATA FROM MASTER must have\nprivileges for dropping and creating the databases and tables that are\ncopied.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-data-from-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-data-from-master.html'),
(107, 'RESET', 25, 'Syntax:\nRESET reset_option [, reset_option] ...\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/reset.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/reset.html'),
(108, 'HELP STATEMENT', 26, 'Syntax:\nHELP ''search_string''\n\nThe HELP statement returns online information from the MySQL Reference\nmanual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttp://dev.mysql.com/doc/refman/5.1/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not case\nsensitive.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/help.html'),
(109, 'GET_LOCK', 14, 'Syntax:\nGET_LOCK(str,timeout)\n\nTries to obtain a lock with a name given by the string str, using a\ntimeout of timeout seconds. Returns 1 if the lock was obtained\nsuccessfully, 0 if the attempt timed out (for example, because another\nclient has previously locked the name), or NULL if an error occurred\n(such as running out of memory or the thread was killed with mysqladmin\nkill). If you have a lock obtained with GET_LOCK(), it is released when\nyou execute RELEASE_LOCK(), execute a new GET_LOCK(), or your\nconnection terminates (either normally or abnormally). Locks obtained\nwith GET_LOCK() do not interact with transactions. That is, committing\na transaction does not release any such locks obtained during the\ntransaction.\n\nThis function can be used to implement application locks or to simulate\nrecord locks. Names are locked on a server-wide basis. If a name has\nbeen locked by one client, GET_LOCK() blocks any request by another\nclient for a lock with the same name. This allows clients that agree on\na given lock name to use the name to perform cooperative advisory\nlocking. But be aware that it also allows a client that is not among\nthe set of cooperating clients to lock a name, either inadvertently or\ndeliberately, and thus prevent any of the cooperating clients from\nlocking that name. One way to reduce the likelihood of this is to use\nlock names that are database-specific or application-specific. For\nexample, use lock names of the form db_name.str or app_name.str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT GET_LOCK(''lock1'',10);\n        -> 1\nmysql> SELECT IS_FREE_LOCK(''lock2'');\n        -> 1\nmysql> SELECT GET_LOCK(''lock2'',10);\n        -> 1\nmysql> SELECT RELEASE_LOCK(''lock2'');\n        -> 1\nmysql> SELECT RELEASE_LOCK(''lock1'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(110, 'UCASE', 34, 'Syntax:\nUCASE(str)\n\nUCASE() is a synonym for UPPER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(111, 'SHOW BINLOG EVENTS', 25, 'Syntax:\nSHOW BINLOG EVENTS\n   [IN ''log_name''] [FROM pos] [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify ''log_name'',\nthe first binary log is displayed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-binlog-events.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-binlog-events.html'),
(112, 'MPOLYFROMWKB', 30, 'MPolyFromWKB(wkb[,srid]), MultiPolygonFromWKB(wkb[,srid])\n\nConstructs a MULTIPOLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html'),
(113, 'ITERATE', 36, 'Syntax:\nITERATE label\n\nITERATE can appear only within LOOP, REPEAT, and WHILE statements.\nITERATE means "do the loop again."\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/iterate-statement.html\n\n', 'CREATE PROCEDURE doiterate(p1 INT)\nBEGIN\n  label1: LOOP\n    SET p1 = p1 + 1;\n    IF p1 < 10 THEN ITERATE label1; END IF;\n    LEAVE label1;\n  END LOOP label1;\n  SET @x = p1;\nEND\n', 'http://dev.mysql.com/doc/refman/5.1/en/iterate-statement.html'),
(114, 'DO', 25, 'Syntax:\nDO expr [, expr] ...\n\nDO executes the expressions but does not return any results. In most\nrespects, DO is shorthand for SELECT expr, ..., but has the advantage\nthat it is slightly faster when you do not care about the result.\n\nDO is useful primarily with functions that have side effects, such as\nRELEASE_LOCK().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/do.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/do.html'),
(115, 'CURTIME', 29, 'Syntax:\nCURTIME()\n\nReturns the current time as a value in ''HH:MM:SS'' or HHMMSS format,\ndepending on whether the function is used in a string or numeric\ncontext. The value is expressed in the current time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURTIME();\n        -> ''23:50:26''\nmysql> SELECT CURTIME() + 0;\n        -> 235026\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(116, 'CHAR_LENGTH', 34, 'Syntax:\nCHAR_LENGTH(str)\n\nReturns the length of the string str, measured in characters. A\nmulti-byte character counts as a single character. This means that for\na string containing five two-byte characters, LENGTH() returns 10,\nwhereas CHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(117, 'BIGINT', 21, 'BIGINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA large integer. The signed range is -9223372036854775808 to\n9223372036854775807. The unsigned range is 0 to 18446744073709551615.\n\nSERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(118, 'SET', 25, 'Syntax:\nSET variable_assignment [, variable_assignment] ...\n\nvariable_assignment:\n      user_var_name = expr\n    | [GLOBAL | SESSION] system_var_name = expr\n    | [@@global. | @@session. | @@]system_var_name = expr\n\nThe SET statement assigns values to different types of variables that\naffect the operation of the server or your client. Older versions of\nMySQL employed SET OPTION, but this syntax is deprecated in favor of\nSET without OPTION.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-option.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-option.html'),
(119, 'DATE', 21, 'DATE\n\nA date. The supported range is ''1000-01-01'' to ''9999-12-31''. MySQL\ndisplays DATE values in ''YYYY-MM-DD'' format, but allows assignment of\nvalues to DATE columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html'),
(120, 'CONV', 34, 'Syntax:\nCONV(N,from_base,to_base)\n\nConverts numbers between different number bases. Returns a string\nrepresentation of the number N, converted from base from_base to base\nto_base. Returns NULL if any argument is NULL. The argument N is\ninterpreted as an integer, but may be specified as an integer or a\nstring. The minimum base is 2 and the maximum base is 36. If to_base is\na negative number, N is regarded as a signed number. Otherwise, N is\ntreated as unsigned. CONV() works with 64-bit precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CONV(''a'',16,2);\n        -> ''1010''\nmysql> SELECT CONV(''6E'',18,8);\n        -> ''172''\nmysql> SELECT CONV(-17,10,-18);\n        -> ''-H''\nmysql> SELECT CONV(10+''10''+''10''+0xa,10,10);\n        -> ''40''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(121, 'SHOW OPEN TABLES', 25, 'Syntax:\nSHOW OPEN TABLES [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttp://dev.mysql.com/doc/refman/5.1/en/table-cache.html. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-open-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-open-tables.html'),
(122, 'EXTRACT', 29, 'Syntax:\nEXTRACT(unit FROM date)\n\nThe EXTRACT() function uses the same kinds of unit specifiers as\nDATE_ADD() or DATE_SUB(), but extracts parts from the date rather than\nperforming date arithmetic.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT EXTRACT(YEAR FROM ''1999-07-02'');\n       -> 1999\nmysql> SELECT EXTRACT(YEAR_MONTH FROM ''1999-07-02 01:02:03'');\n       -> 199907\nmysql> SELECT EXTRACT(DAY_MINUTE FROM ''1999-07-02 01:02:03'');\n       -> 20102\nmysql> SELECT EXTRACT(MICROSECOND\n    ->                FROM ''2003-01-02 10:30:00.000123'');\n        -> 123\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(123, 'ENCRYPT', 11, 'Syntax:\nENCRYPT(str[,salt])\n\nEncrypts str using the Unix crypt() system call and returns a binary\nstring. The salt argument should be a string with at least two\ncharacters. If no salt argument is given, a random value is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT ENCRYPT(''hello'');\n        -> ''VxuFAJXVARROc''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(124, 'SHOW STATUS', 25, 'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW STATUS provides server status information. This information also\ncan be obtained using the mysqladmin extended-status command. The LIKE\nclause, if present, indicates which variable names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE ''Key%'';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nWith the GLOBAL modifier, SHOW STATUS displays the status values for\nall connections to MySQL. With SESSION, it displays the status values\nfor the current connection. If no modifier is present, the default is\nSESSION. LOCAL is a synonym for SESSION.\n\nSome status variables have only a global value. For these, you get the\nsame value for both GLOBAL and SESSION. The scope for each status\nvariable is listed at\nhttp://dev.mysql.com/doc/refman/5.1/en/server-status-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-status.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(125, 'EXTRACTVALUE', 34, 'Syntax:\nExtractValue(xml_frag, xpath_expr)\n\nExtractValue() takes two string arguments, a fragment of XML markup\nxml_frag and an XPath expression xpath_expr (also known as a locator);\nit returns the text (CDATA) of the first text node which is a child of\nthe element(s) matched by the XPath expression. It is the equivalent of\nperforming a match using the xpath_expr after appending /text(). In\nother words, ExtractValue(''<a><b>Sakila</b></a>'', ''/a/b'') and\nExtractValue(''<a><b>Sakila</b></a>'', ''/a/b/text()'') produce the same\nresult.\n\nIf multiple matches are found, then the content of the first child text\nnode of each matching element is returned (in the order matched) as a\nsingle, space-delimited string.\n\nIf no matching text node is found for the (augmented) expression ---\nfor whatever reason, as long as xpth_expr is valid, and xml_frag is\nwell-formed --- an empty string is returned. No distinction is made\nbetween a match on an empty element and no match at all. This is by\ndesign.\n\nIf you need to determine whether no matching element was found in\nxml_frag or such an element was found but contained no child text\nnodes, you should test the result of an expression that uses the XPath\ncount() function. For example, both of these statements return an empty\nstring, as shown here:\n\nmysql> SELECT ExtractValue(''<a><b/></a>'', ''/a/b'');\n+-------------------------------------+\n| ExtractValue(''<a><b/></a>'', ''/a/b'') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(''<a><c/></a>'', ''/a/b'');\n+-------------------------------------+\n| ExtractValue(''<a><c/></a>'', ''/a/b'') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nHowever, you can determine whether there was actually a matching\nelement using the following:\n\nmysql> SELECT ExtractValue(''<a><b/></a>'', ''count(/a/b)'');\n+-------------------------------------+\n| ExtractValue(''<a><b/></a>'', ''count(/a/b)'') |\n+-------------------------------------+\n| 1                                   |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(''<a><c/></a>'', ''count(/a/b)'');\n+-------------------------------------+\n| ExtractValue(''<a><c/></a>'', ''count(/a/b)'') |\n+-------------------------------------+\n| 0                                   |\n+-------------------------------------+\n1 row in set (0.01 sec)\n\n*Important*: ExtractValue() returns only CDATA, and does not return any\ntags that might be contained within a matching tag, nor any of their\ncontent (see the result returned as val1 in the following example).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html\n\n', 'mysql> SELECT\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''/a'') AS val1,\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''/a/b'') AS val2,\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''//b'') AS val3,\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''/b'') AS val4,\n    ->   ExtractValue(''<a>ccc<b>ddd</b><b>eee</b></a>'', ''//b'') AS val5;\n\n+------+------+------+------+---------+\n| val1 | val2 | val3 | val4 | val5    |\n+------+------+------+------+---------+\n| ccc  | ddd  | ddd  |      | ddd eee |\n+------+------+------+------+---------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html'),
(126, 'OLD_PASSWORD', 11, 'Syntax:\nOLD_PASSWORD(str)\n\nOLD_PASSWORD() was added to MySQL when the implementation of PASSWORD()\nwas changed to improve security. OLD_PASSWORD() returns the value of\nthe old (pre-4.1) implementation of PASSWORD() as a binary string, and\nis intended to permit you to reset passwords for any pre-4.1 clients\nthat need to connect to your version 5.1 MySQL server without locking\nthem out. See\nhttp://dev.mysql.com/doc/refman/5.1/en/password-hashing.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(127, 'SET VARIABLE', 36, 'Syntax:\nSET var_name = expr [, var_name = expr] ...\n\nThe SET statement in stored routines is an extended version of the\ngeneral SET statement. Referenced variables may be ones declared inside\na routine, or global system variables.\n\nThe SET statement in stored routines is implemented as part of the\npre-existing SET syntax. This allows an extended syntax of SET a=x,\nb=y, ... where different variable types (locally declared variables and\nglobal and session server variables) can be mixed. This also allows\ncombinations of local variables and some options that make sense only\nfor system variables; in that case, the options are recognized but\nignored.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-statement.html'),
(128, 'FORMAT', 34, 'Syntax:\nFORMAT(X,D)\n\nFormats the number X to a format like ''#,###,###.##'', rounded to D\ndecimal places, and returns the result as a string. If D is 0, the\nresult has no decimal point or fractional part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT FORMAT(12332.123456, 4);\n        -> ''12,332.1235''\nmysql> SELECT FORMAT(12332.1,4);\n        -> ''12,332.1000''\nmysql> SELECT FORMAT(12332.2,0);\n        -> ''12,332''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(129, '||', 13, 'Syntax:\nOR, ||\n\nLogical OR. When both operands are non-NULL, the result is 1 if any\noperand is non-zero, and 0 otherwise. With a NULL operand, the result\nis 1 if the other operand is non-zero, and NULL otherwise. If both\noperands are NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT 1 || 1;\n        -> 1\nmysql> SELECT 1 || 0;\n        -> 1\nmysql> SELECT 0 || 0;\n        -> 0\nmysql> SELECT 0 || NULL;\n        -> NULL\nmysql> SELECT 1 || NULL;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html'),
(130, 'BIT_LENGTH', 34, 'Syntax:\nBIT_LENGTH(str)\n\nReturns the length of the string str in bits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT BIT_LENGTH(''text'');\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(131, 'EXTERIORRING', 2, 'ExteriorRing(poly)\n\nReturns the exterior ring of the Polygon value poly as a LineString.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT AsText(ExteriorRing(GeomFromText(@poly)));\n+-------------------------------------------+\n| AsText(ExteriorRing(GeomFromText(@poly))) |\n+-------------------------------------------+\n| LINESTRING(0 0,0 3,3 3,3 0,0 0)           |\n+-------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html'),
(132, 'GEOMFROMWKB', 30, 'GeomFromWKB(wkb[,srid]), GeometryFromWKB(wkb[,srid])\n\nConstructs a geometry value of any type using its WKB representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html'),
(133, 'SHOW SLAVE HOSTS', 25, 'Syntax:\nSHOW SLAVE HOSTS\n\nDisplays a list of replication slaves currently registered with the\nmaster. Only slaves started with the --report-host=slave_name option\nare visible in this list.\n\nThe list is displayed on any server (not just the master server). The\noutput looks like this: mysql> SHOW SLAVE HOSTS;\n+------------+-----------+------+-----------+ | Server_id | Host | Port\n| Master_id | +------------+-----------+------+-----------+ | 192168010\n| iconnect2 | 3306 | 192168011 | | 1921680101 | athena | 3306 |\n192168011 | +------------+-----------+------+-----------+ Server_id:\nThe unique server ID of the slave server, as configured in the server''s\noption file, or on the command line with --server-id=value . Host: The\nhost name of the slave server, as configured in the server''s option\nfile, or on the command line with --report-host=value. Note that this\ncan differ from the machine name as configured in the operating system.\nPort: The port the slave server is listening on. Master_id: The unique\nserver ID of the master server that the slave server is replicating\nfrom. Some MySQL versions report another variable, Rpl_recovery_rank.\nThis variable was never used, and was eventually removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-slave-hosts.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-slave-hosts.html'),
(134, 'START TRANSACTION', 8, 'Syntax:\nSTART TRANSACTION [WITH CONSISTENT SNAPSHOT] | BEGIN [WORK]\nCOMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nSET AUTOCOMMIT = {0 | 1}\n\nThe START TRANSACTION and BEGIN statement begin a new transaction.\nCOMMIT commits the current transaction, making its changes permanent.\nROLLBACK rolls back the current transaction, canceling its changes. The\nSET AUTOCOMMIT statement disables or enables the default autocommit\nmode for the current connection.\n\nThe optional WORK keyword is supported for COMMIT and ROLLBACK, as are\nthe CHAIN and RELEASE clauses. CHAIN and RELEASE can be used for\nadditional control over transaction completion. The value of the\ncompletion_type system variable determines the default completion\nbehavior. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\nThe AND CHAIN clause causes a new transaction to begin as soon as the\ncurrent one ends, and the new transaction has the same isolation level\nas the just-terminated transaction. The RELEASE clause causes the\nserver to disconnect the current client connection after terminating\nthe current transaction. Including the NO keyword suppresses CHAIN or\nRELEASE completion, which can be useful if the completion_type system\nvariable is set to cause chaining or release completion by default.\n\nBy default, MySQL runs with autocommit mode enabled. This means that as\nsoon as you execute a statement that updates (modifies) a table, MySQL\nstores the update on disk.\n\nIf you are using a transaction-safe storage engine (such as InnoDB, or\nNDB Cluster), you can disable autocommit mode with the following\nstatement:\n\nSET AUTOCOMMIT=0;\n\nAfter disabling autocommit mode by setting the AUTOCOMMIT variable to\nzero, you must use COMMIT to store your changes to disk or ROLLBACK if\nyou want to ignore the changes you have made since the beginning of\nyour transaction.\n\nTo disable autocommit mode for a single series of statements, use the\nSTART TRANSACTION statement:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/commit.html\n\n', 'START TRANSACTION;\nSELECT @A:=SUM(salary) FROM table1 WHERE type=1;\nUPDATE table2 SET summary=@A WHERE type=1;\nCOMMIT;\n', 'http://dev.mysql.com/doc/refman/5.1/en/commit.html'),
(135, 'BETWEEN AND', 18, 'Syntax:\nexpr BETWEEN min AND max\n\nIf expr is greater than or equal to min and expr is less than or equal\nto max, BETWEEN returns 1, otherwise it returns 0. This is equivalent\nto the expression (min <= expr AND expr <= max) if all the arguments\nare of the same type. Otherwise type conversion takes place according\nto the rules described in\nhttp://dev.mysql.com/doc/refman/5.1/en/type-conversion.html, but\napplied to all the three arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 BETWEEN 2 AND 3;\n        -> 0\nmysql> SELECT ''b'' BETWEEN ''a'' AND ''c'';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND ''3'';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND ''x-3'';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(136, 'MULTIPOLYGON', 23, 'MultiPolygon(poly1,poly2,...)\n\nConstructs a WKB MultiPolygon value from a set of WKB Polygon\narguments. If any argument is not a WKB Polygon, the return value is\nNULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html'),
(137, 'TIME_FORMAT', 29, 'Syntax:\nTIME_FORMAT(time,format)\n\nThis is used like the DATE_FORMAT() function, but the format string may\ncontain format specifiers only for hours, minutes, and seconds. Other\nspecifiers produce a NULL value or 0.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_FORMAT(''100:00:00'', ''%H %k %h %I %l'');\n        -> ''100 100 04 04 4''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(138, 'LEFT', 34, 'Syntax:\nLEFT(str,len)\n\nReturns the leftmost len characters from the string str, or NULL if any\nargument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LEFT(''foobarbar'', 5);\n        -> ''fooba''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(139, 'FLUSH QUERY CACHE', 26, 'You can defragment the query cache to better utilize its memory with\nthe FLUSH QUERY CACHE statement. The statement does not remove any\nqueries from the cache.\n\nThe RESET QUERY CACHE statement removes all query results from the\nquery cache. The FLUSH TABLES statement also does this.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/query-cache-status-and-maintenance.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/query-cache-status-and-maintenance.html'),
(140, 'SET DATA TYPE', 21, 'SET(''value1'',''value2'',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA set. A string object that can have zero or more values, each of which\nmust be chosen from the list of values ''value1'', ''value2'', ... A SET\ncolumn can have a maximum of 64 members. SET values are represented\ninternally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(141, 'RAND', 4, 'Syntax:\nRAND(), RAND(N)\n\nReturns a random floating-point value v in the range 0 <= v < 1.0. If a\nconstant integer argument N is specified, it is used as the seed value,\nwhich produces a repeatable sequence of column values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT RAND();\n        -> 0.9233482386203\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\nmysql> SELECT RAND();\n        -> 0.63553050033332\nmysql> SELECT RAND();\n        -> 0.70100469486881\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(142, 'RPAD', 34, 'Syntax:\nRPAD(str,len,padstr)\n\nReturns the string str, right-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT RPAD(''hi'',5,''?'');\n        -> ''hi???''\nmysql> SELECT RPAD(''hi'',1,''?'');\n        -> ''h''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(143, 'CREATE DATABASE', 37, 'Syntax:\nCREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n    [create_specification ...]\n\ncreate_specification:\n    [DEFAULT] CHARACTER SET charset_name\n  | [DEFAULT] COLLATE collation_name\n\nCREATE DATABASE creates a database with the given name. To use this\nstatement, you need the CREATE privilege for the database. CREATE\nSCHEMA is a synonym for CREATE DATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-database.html'),
(144, 'DEC', 21, 'DEC[(M[,D])] [UNSIGNED] [ZEROFILL], NUMERIC[(M[,D])] [UNSIGNED]\n[ZEROFILL], FIXED[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nThese types are synonyms for DECIMAL. The FIXED synonym is available\nfor compatibility with other database systems.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(145, 'VAR_POP', 15, 'Syntax:\nVAR_POP(expr)\n\nReturns the population standard variance of expr. It considers rows as\nthe whole population, not as a sample, so it has the number of rows as\nthe denominator. You can also use VARIANCE(), which is equivalent but\nis not standard SQL.\n\nVAR_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(146, 'ELT', 34, 'Syntax:\nELT(N,str1,str2,str3,...)\n\nReturns str1 if N = 1, str2 if N = 2, and so on. Returns NULL if N is\nless than 1 or greater than the number of arguments. ELT() is the\ncomplement of FIELD().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT ELT(1, ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> ''ej''\nmysql> SELECT ELT(4, ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> ''foo''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(147, 'ALTER VIEW', 37, 'Syntax:\nALTER\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThis statement changes the definition of a view, which must exist. The\nsyntax is similar to that for CREATE VIEW and the effect is the same as\nfor CREATE OR REPLACE VIEW. See [HELP CREATE VIEW]. This statement\nrequires the CREATE VIEW and DROP privileges for the view, and some\nprivilege for each column referred to in the SELECT statement.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-view.html'),
(148, 'SHOW DATABASES', 25, 'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nSHOW SCHEMAS can also be used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-databases.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-databases.html'),
(149, '~', 19, 'Syntax:\n~\n\nInvert all bits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 5 & ~1;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(150, 'TEXT', 21, 'TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 65,535 (216 - 1) characters.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest TEXT type large enough to hold\nvalues M characters long.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(151, 'CONCAT_WS', 34, 'Syntax:\nCONCAT_WS(separator,str1,str2,...)\n\nCONCAT_WS() stands for Concatenate With Separator and is a special form\nof CONCAT(). The first argument is the separator for the rest of the\narguments. The separator is added between the strings to be\nconcatenated. The separator can be a string, as can the rest of the\narguments. If the separator is NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CONCAT_WS('','',''First name'',''Second name'',''Last Name'');\n        -> ''First name,Second name,Last Name''\nmysql> SELECT CONCAT_WS('','',''First name'',NULL,''Last Name'');\n        -> ''First name,Last Name''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(152, 'ROW_COUNT', 16, 'Syntax:\nROW_COUNT()\n\nROW_COUNT() returns the number of rows updated, inserted, or deleted by\nthe preceding statement. This is the same as the row count that the\nmysql client displays and the value from the mysql_affected_rows() C\nAPI function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           3 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> DELETE FROM t WHERE i IN(1,2);\nQuery OK, 2 rows affected (0.00 sec)\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           2 |\n+-------------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(153, 'ASIN', 4, 'Syntax:\nASIN(X)\n\nReturns the arc sine of X, that is, the value whose sine is X. Returns\nNULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ASIN(0.2);\n        -> 0.20135792079033\nmysql> SELECT ASIN(''foo'');\n\n+-------------+\n| ASIN(''foo'') |\n+-------------+\n|           0 |\n+-------------+\n1 row in set, 1 warning (0.00 sec)\n\nmysql> SHOW WARNINGS;\n+---------+------+-----------------------------------------+\n| Level   | Code | Message                                 |\n+---------+------+-----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: ''foo'' |\n+---------+------+-----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(154, 'SIGN', 4, 'Syntax:\nSIGN(X)\n\nReturns the sign of the argument as -1, 0, or 1, depending on whether X\nis negative, zero, or positive.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT SIGN(-32);\n        -> -1\nmysql> SELECT SIGN(0);\n        -> 0\nmysql> SELECT SIGN(234);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(155, 'SEC_TO_TIME', 29, 'Syntax:\nSEC_TO_TIME(seconds)\n\nReturns the seconds argument, converted to hours, minutes, and seconds,\nas a TIME value. The range of the result is constrained to that of the\nTIME data type. A warning occurs if the argument corresponds to a value\noutside that range.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT SEC_TO_TIME(2378);\n        -> ''00:39:38''\nmysql> SELECT SEC_TO_TIME(2378) + 0;\n        -> 3938\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(156, 'FLOAT', 21, 'FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA small (single-precision) floating-point number. Allowable values are\n-3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to\n3.402823466E+38. These are the theoretical limits, based on the IEEE\nstandard. The actual range might be slightly smaller depending on your\nhardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits allowed by the hardware. A single-precision floating-point\nnumber is accurate to approximately 7 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nUsing FLOAT might give you some unexpected problems because all\ncalculations in MySQL are done with double precision. See\nhttp://dev.mysql.com/doc/refman/5.1/en/no-matching-rows.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(157, 'LOCATE', 34, 'Syntax:\nLOCATE(substr,str), LOCATE(substr,str,pos)\n\nThe first syntax returns the position of the first occurrence of\nsubstring substr in string str. The second syntax returns the position\nof the first occurrence of substring substr in string str, starting at\nposition pos. Returns 0 if substr is not in str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LOCATE(''bar'', ''foobarbar'');\n        -> 4\nmysql> SELECT LOCATE(''xbar'', ''foobar'');\n        -> 0\nmysql> SELECT LOCATE(''bar'', ''foobarbar'', 5);\n        -> 7\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(158, 'CHARSET', 16, 'Syntax:\nCHARSET(str)\n\nReturns the character set of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT CHARSET(''abc'');\n        -> ''latin1''\nmysql> SELECT CHARSET(CONVERT(''abc'' USING utf8));\n        -> ''utf8''\nmysql> SELECT CHARSET(USER());\n        -> ''utf8''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(159, 'SUBDATE', 29, 'Syntax:\nSUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, SUBDATE()\nis a synonym for DATE_SUB(). For information on the INTERVAL unit\nargument, see the discussion for DATE_ADD().\n\nmysql> SELECT DATE_SUB(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\nmysql> SELECT SUBDATE(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\n\nThe second form allows the use of an integer value for days. In such\ncases, it is interpreted as the number of days to be subtracted from\nthe date or datetime expression expr.\n\nmysql> SELECT SUBDATE(''1998-01-02 12:00:00'', 31);\n        -> ''1997-12-02 12:00:00''\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(160, 'DAYOFYEAR', 29, 'Syntax:\nDAYOFYEAR(date)\n\nReturns the day of the year for date, in the range 1 to 366.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFYEAR(''1998-02-03'');\n        -> 34\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(161, 'LONGTEXT', 21, 'LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\ncharacters. The maximum effective (permitted) length of LONGTEXT\ncolumns depends on the configured maximum packet size in the\nclient/server protocol and available memory.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(162, '%', 4, 'Syntax:\nN % M\n\nModulo operation. Returns the remainder of N divided by M. For more\ninformation, see the description for the MOD() function in [HELP ABS].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(163, 'DISJOINT', 27, 'Disjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially disjoint from (does\nnot intersect) g2.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(164, 'KILL', 25, 'Syntax:\nKILL [CONNECTION | QUERY] thread_id\n\nEach connection to mysqld runs in a separate thread. You can see which\nthreads are running with the SHOW PROCESSLIST statement and kill a\nthread with the KILL thread_id statement.\n\nKILL allows the optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given thread_id.\n\no KILL QUERY terminates the statement that the connection is currently\n  executing, but leaves the connection itself intact.\n\nIf you have the PROCESS privilege, you can see all threads. If you have\nthe SUPER privilege, you can kill all threads and statements.\nOtherwise, you can see and kill only your own threads and statements.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\n*Note*: You cannot use KILL with the Embedded MySQL Server library,\nbecause the embedded server merely runs inside the threads of the host\napplication. It does not create any connection threads of its own.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/kill.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/kill.html'),
(165, 'ASTEXT', 3, 'AsText(g)\n\nConverts a value in internal geometry format to its WKT representation\nand returns the string result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html\n\n', 'mysql> SET @g = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(GeomFromText(@g));\n+--------------------------+\n| AsText(GeomFromText(@g)) |\n+--------------------------+\n| LINESTRING(1 1,2 2,3 3)  |\n+--------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html'),
(166, 'LPAD', 34, 'Syntax:\nLPAD(str,len,padstr)\n\nReturns the string str, left-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LPAD(''hi'',4,''??'');\n        -> ''??hi''\nmysql> SELECT LPAD(''hi'',1,''??'');\n        -> ''h''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(167, 'RESTORE TABLE', 20, 'Syntax:\nRESTORE TABLE tbl_name [, tbl_name] ... FROM ''/path/to/backup/directory''\n\nRESTORE TABLE restores the table or tables from a backup that was made\nwith BACKUP TABLE. The directory should be specified as a full\npathname.\n\nExisting tables are not overwritten; if you try to restore over an\nexisting table, an error occurs. Just as for BACKUP TABLE, RESTORE\nTABLE currently works only for MyISAM tables. Restored tables are not\nreplicated from master to slave.\n\nThe backup for each table consists of its .frm format file and .MYD\ndata file. The restore operation restores those files, and then uses\nthem to rebuild the .MYI index file. Restoring takes longer than\nbacking up due to the need to rebuild the indexes. The more indexes the\ntable has, the longer it takes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/restore-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/restore-table.html'),
(168, 'DECLARE CONDITION', 36, 'Syntax:\nDECLARE condition_name CONDITION FOR condition_value\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | mysql_error_code\n\nThis statement specifies conditions that need specific handling. It\nassociates a name with a specified error condition. The name can\nsubsequently be used in a DECLARE HANDLER statement. See [HELP DECLARE\nHANDLER].\n\nA condition_value can be an SQLSTATE value or a MySQL error code.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-conditions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/declare-conditions.html'),
(169, 'OVERLAPS', 27, 'Overlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially overlaps g2. The term\nspatially overlaps is used if two geometries intersect and their\nintersection results in a geometry of the same dimension but not equal\nto either of the given geometries.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(170, 'NUMGEOMETRIES', 24, 'NumGeometries(gc)\n\nReturns the number of geometries in the GeometryCollection value gc.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometrycollection-property-functions.html\n\n', 'mysql> SET @gc = ''GeometryCollection(Point(1 1),LineString(2 2, 3 3))'';\nmysql> SELECT NumGeometries(GeomFromText(@gc));\n+----------------------------------+\n| NumGeometries(GeomFromText(@gc)) |\n+----------------------------------+\n|                                2 |\n+----------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometrycollection-property-functions.html'),
(171, 'SET GLOBAL SQL_SLAVE_SKIP_COUNTER', 25, 'Syntax:\nSET GLOBAL SQL_SLAVE_SKIP_COUNTER = N\n\nThis statement skips the next N events from the master. This is useful\nfor recovering from replication stops caused by a statement.\n\nThis statement is valid only when the slave thread is not running.\nOtherwise, it produces an error.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-global-sql-slave-skip-counter.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-global-sql-slave-skip-counter.html'),
(172, 'MONTHNAME', 29, 'Syntax:\nMONTHNAME(date)\n\nReturns the full name of the month for date. As of MySQL 5.1.12, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.1/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTHNAME(''1998-02-05'');\n        -> ''February''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(173, 'PROCEDURE ANALYSE', 35, 'Syntax:\nanalyse([max_elements[,max_memory]])\n\nThis procedure is defined in the sql/sql_analyse.cc file. It examines\nthe result from a query and returns an analysis of the results that\nsuggests optimal data types for each column. To obtain this analysis,\nappend PROCEDURE ANALYSE to the end of a SELECT statement:\n\nSELECT ... FROM ... WHERE ... PROCEDURE ANALYSE([max_elements,[max_memory]])\n\nFor example:\n\nSELECT col1, col2 FROM table1 PROCEDURE ANALYSE(10, 2000);\n\nThe results show some statistics for the values returned by the query,\nand propose an optimal data type for the columns. This can be helpful\nfor checking your existing tables, or after importing new data. You may\nneed to try different settings for the arguments so that PROCEDURE\nANALYSE() does not suggest the ENUM data type when it is not\nappropriate.\n\nThe arguments are optional and are used as follows:\n\no max_elements (default 256) is the maximum number of distinct values\n  that analyse notices per column. This is used by analyse to check\n  whether the optimal data type should be of type ENUM.\n\no max_memory (default 8192) is the maximum amount of memory that\n  analyse should allocate per column while trying to find all distinct\n  values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/procedure-analyse.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/procedure-analyse.html'),
(174, 'MBREQUAL', 6, 'MBREqual(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are the same.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(175, 'CHANGE MASTER TO', 25, 'Syntax:\nCHANGE MASTER TO master_def [, master_def] ...\n\nmaster_def:\n    MASTER_HOST = ''host_name''\n  | MASTER_USER = ''user_name''\n  | MASTER_PASSWORD = ''password''\n  | MASTER_PORT = port_num\n  | MASTER_CONNECT_RETRY = count\n  | MASTER_LOG_FILE = ''master_log_name''\n  | MASTER_LOG_POS = master_log_pos\n  | RELAY_LOG_FILE = ''relay_log_name''\n  | RELAY_LOG_POS = relay_log_pos\n  | MASTER_SSL = {0|1}\n  | MASTER_SSL_CA = ''ca_file_name''\n  | MASTER_SSL_CAPATH = ''ca_directory_name''\n  | MASTER_SSL_CERT = ''cert_file_name''\n  | MASTER_SSL_KEY = ''key_file_name''\n  | MASTER_SSL_CIPHER = ''cipher_list''\n  | MASTER_SSL_VERIFY_SERVER_CERT = {0|1}\n\nCHANGE MASTER TO changes the parameters that the slave server uses for\nconnecting to and communicating with the master server. It also updates\nthe contents of the master.info and relay-log.info files.\n\nMASTER_USER, MASTER_PASSWORD, MASTER_SSL, MASTER_SSL_CA,\nMASTER_SSL_CAPATH, MASTER_SSL_CERT, MASTER_SSL_KEY, MASTER_SSL_CIPHER,\nand MASTER_SSL_VERIFY_SERVER_CERT provide information to the slave\nabout how to connect to its master. MASTER_SSL_VERIFY_SERVER_CERT was\nadded in MySQL 5.1.18. It is used as described for the\n--ssl-verify-server-cert option in\nhttp://dev.mysql.com/doc/refman/5.1/en/ssl-options.html.\n\nThe SSL options (MASTER_SSL, MASTER_SSL_CA, MASTER_SSL_CAPATH,\nMASTER_SSL_CERT, MASTER_SSL_KEY, MASTER_SSL_CIPHER), and\nMASTER_SSL_VERIFY_SERVER_CERT can be changed even on slaves that are\ncompiled without SSL support. They are saved to the master.info file,\nbut are ignored unless you use a server that has SSL support enabled.\n\nIf you don''t specify a given parameter, it keeps its old value, except\nas indicated in the following discussion. For example, if the password\nto connect to your MySQL master has changed, you just need to issue\nthese statements to tell the slave about the new password:\n\nSTOP SLAVE; -- if replication was running\nCHANGE MASTER TO MASTER_PASSWORD=''new3cret'';\nSTART SLAVE; -- if you want to restart replication\n\nThere is no need to specify the parameters that do not change (host,\nport, user, and so forth).\n\nMASTER_HOST and MASTER_PORT are the hostname (or IP address) of the\nmaster host and its TCP/IP port. Note that if MASTER_HOST is equal to\nlocalhost, then, like in other parts of MySQL, the port number might be\nignored.\n\n*Note*: Replication cannot use Unix socket files. You must be able to\nconnect to the master MySQL server using TCP/IP.\n\nIf you specify MASTER_HOST or MASTER_PORT, the slave assumes that the\nmaster server is different from before (even if you specify a host or\nport value that is the same as the current value.) In this case, the\nold values for the master binary log name and position are considered\nno longer applicable, so if you do not specify MASTER_LOG_FILE and\nMASTER_LOG_POS in the statement, MASTER_LOG_FILE='''' and\nMASTER_LOG_POS=4 are silently appended to it.\n\nMASTER_LOG_FILE and MASTER_LOG_POS are the coordinates at which the\nslave I/O thread should begin reading from the master the next time the\nthread starts. If you specify either of them, you cannot specify\nRELAY_LOG_FILE or RELAY_LOG_POS. If neither of MASTER_LOG_FILE or\nMASTER_LOG_POS are specified, the slave uses the last coordinates of\nthe slave SQL thread before CHANGE MASTER was issued. This ensures that\nthere is no discontinuity in replication, even if the slave SQL thread\nwas late compared to the slave I/O thread, when you merely want to\nchange, say, the password to use.\n\nCHANGE MASTER deletes all relay log files and starts a new one, unless\nyou specify RELAY_LOG_FILE or RELAY_LOG_POS. In that case, relay logs\nare kept; the relay_log_purge global variable is set silently to 0.\n\nCHANGE MASTER is useful for setting up a slave when you have the\nsnapshot of the master and have recorded the log and the offset\ncorresponding to it. After loading the snapshot into the slave, you can\nrun CHANGE MASTER TO MASTER_LOG_FILE=''log_name_on_master'',\nMASTER_LOG_POS=log_offset_on_master on the slave.\n\nThe following example changes the master and master''s binary log\ncoordinates. This is used when you want to set up the slave to\nreplicate the master:\n\nCHANGE MASTER TO\n  MASTER_HOST=''master2.mycompany.com'',\n  MASTER_USER=''replication'',\n  MASTER_PASSWORD=''bigs3cret'',\n  MASTER_PORT=3306,\n  MASTER_LOG_FILE=''master2-bin.001'',\n  MASTER_LOG_POS=4,\n  MASTER_CONNECT_RETRY=10;\n\nThe next example shows an operation that is less frequently employed.\nIt is used when the slave has relay logs that you want it to execute\nagain for some reason. To do this, the master need not be reachable.\nYou need only use CHANGE MASTER TO and start the SQL thread (START\nSLAVE SQL_THREAD):\n\nCHANGE MASTER TO\n  RELAY_LOG_FILE=''slave-relay-bin.006'',\n  RELAY_LOG_POS=4025;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/change-master-to.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/change-master-to.html'),
(176, 'DROP DATABASE', 37, 'Syntax:\nDROP {DATABASE | SCHEMA} [IF EXISTS] db_name\n\nDROP DATABASE drops all tables in the database and deletes the\ndatabase. Be very careful with this statement! To use DROP DATABASE,\nyou need the DROP privilege on the database. DROP SCHEMA is a synonym\nfor DROP DATABASE.\n\n*Important*: When a database is dropped, user privileges on the\ndatabase are not automatically dropped. See [HELP GRANT].\n\nIF EXISTS is used to prevent an error from occurring if the database\ndoes not exist.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-database.html'),
(177, 'TIMESTAMP FUNCTION', 29, 'Syntax:\nTIMESTAMP(expr), TIMESTAMP(expr1,expr2)\n\nWith a single argument, this function returns the date or datetime\nexpression expr as a datetime value. With two arguments, it adds the\ntime expression expr2 to the date or datetime expression expr1 and\nreturns the result as a datetime value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMP(''2003-12-31'');\n        -> ''2003-12-31 00:00:00''\nmysql> SELECT TIMESTAMP(''2003-12-31 12:00:00'',''12:00:00'');\n        -> ''2004-01-01 00:00:00''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(178, 'CHARACTER_LENGTH', 34, 'Syntax:\nCHARACTER_LENGTH(str)\n\nCHARACTER_LENGTH() is a synonym for CHAR_LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(179, 'SHOW GRANTS', 25, 'Syntax:\nSHOW GRANTS [FOR user]\n\nThis statement lists the GRANT statement or statements that must be\nissued to duplicate the privileges that are granted to a MySQL user\naccount. The account is named using the same format as for the GRANT\nstatement; for example, ''jeffrey''@''localhost''. If you specify only the\nusername part of the account name, a hostname part of ''%'' is used. For\nadditional information about specifying account names, see [HELP\nGRANT].\n\nmysql> SHOW GRANTS FOR ''root''@''localhost'';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT ALL PRIVILEGES ON *.* TO ''root''@''localhost'' WITH GRANT OPTION |\n+---------------------------------------------------------------------+\n\nTo list the privileges granted to the account that you are using to\nconnect to the server, you can use any of the following statements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nAs of MySQL 5.1.12, if SHOW GRANTS FOR CURRENT_USER (or any of the\nequivalent syntaxes) is used in DEFINER context, such as within a\nstored procedure that is defined with SQL SECURITY DEFINER), the grants\ndisplayed are those of the definer and not the invoker.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-grants.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-grants.html'),
(180, 'SHOW PRIVILEGES', 25, 'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The exact list of privileges depends on the version of\nyour server.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-privileges.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-privileges.html'),
(181, 'INSERT FUNCTION', 34, 'Syntax:\nINSERT(str,pos,len,newstr)\n\nReturns the string str, with the substring beginning at position pos\nand len characters long replaced by the string newstr. Returns the\noriginal string if pos is not within the length of the string. Replaces\nthe rest of the string from position pos if len is not within the\nlength of the rest of the string. Returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT INSERT(''Quadratic'', 3, 4, ''What'');\n        -> ''QuWhattic''\nmysql> SELECT INSERT(''Quadratic'', -1, 4, ''What'');\n        -> ''Quadratic''\nmysql> SELECT INSERT(''Quadratic'', 3, 100, ''What'');\n        -> ''QuWhat''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(182, 'CRC32', 4, 'Syntax:\nCRC32(expr)\n\nComputes a cyclic redundancy check value and returns a 32-bit unsigned\nvalue. The result is NULL if the argument is NULL. The argument is\nexpected to be a string and (if possible) is treated as one if it is\nnot.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT CRC32(''MySQL'');\n        -> 3259397556\nmysql> SELECT CRC32(''mysql'');\n        -> 2501908538\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(183, 'XOR', 13, 'Syntax:\nXOR\n\nLogical XOR. Returns NULL if either operand is NULL. For non-NULL\noperands, evaluates to 1 if an odd number of operands is non-zero,\notherwise 0 is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT 1 XOR 1;\n        -> 0\nmysql> SELECT 1 XOR 0;\n        -> 1\nmysql> SELECT 1 XOR NULL;\n        -> NULL\nmysql> SELECT 1 XOR 1 XOR 1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html'),
(184, 'STARTPOINT', 12, 'StartPoint(ls)\n\nReturns the Point that is the start point of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(StartPoint(GeomFromText(@ls)));\n+---------------------------------------+\n| AsText(StartPoint(GeomFromText(@ls))) |\n+---------------------------------------+\n| POINT(1 1)                            |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html'),
(185, 'DECLARE VARIABLE', 36, 'Syntax:\nDECLARE var_name[,...] type [DEFAULT value]\n\nThis statement is used to declare local variables. To provide a default\nvalue for the variable, include a DEFAULT clause. The value can be\nspecified as an expression; it need not be a constant. If the DEFAULT\nclause is missing, the initial value is NULL.\n\nLocal variables are treated like routine parameters with respect to\ndata type and overflow checking. See [HELP CREATE PROCEDURE].\n\nThe scope of a local variable is within the BEGIN ... END block where\nit is declared. The variable can be referred to in blocks nested within\nthe declaring block, except those blocks that declare a variable with\nthe same name.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-local-variables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/declare-local-variables.html'),
(186, 'MPOLYFROMTEXT', 3, 'MPolyFromText(wkt[,srid]), MultiPolygonFromText(wkt[,srid])\n\nConstructs a MULTIPOLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(187, 'GRANT', 9, 'Syntax:\nGRANT priv_type [(column_list)] [, priv_type [(column_list)]] ...\n    ON [object_type] {tbl_name | * | *.* | db_name.*}\n    TO user [IDENTIFIED BY [PASSWORD] ''password'']\n        [, user [IDENTIFIED BY [PASSWORD] ''password'']] ...\n    [REQUIRE\n        NONE |\n        [{SSL| X509}]\n        [CIPHER ''cipher'' [AND]]\n        [ISSUER ''issuer'' [AND]]\n        [SUBJECT ''subject'']]\n    [WITH with_option [with_option] ...]\n\nobject_type =\n    TABLE\n  | FUNCTION\n  | PROCEDURE\n\nwith_option =\n    GRANT OPTION\n  | MAX_QUERIES_PER_HOUR count\n  | MAX_UPDATES_PER_HOUR count\n  | MAX_CONNECTIONS_PER_HOUR count\n  | MAX_USER_CONNECTIONS count\n\nThe GRANT statement enables system administrators to create MySQL user\naccounts and to grant rights to from accounts. To use GRANT, you must\nhave the GRANT OPTION privilege, and you must have the privileges that\nyou are granting. The REVOKE statement is related and enables\nadministrators to remove account privileges. See [HELP REVOKE].\n\nMySQL account information is stored in the tables of the mysql\ndatabase. This database and the access control system are discussed\nextensively in\nhttp://dev.mysql.com/doc/refman/5.1/en/database-administration.html,\nwhich you should consult for additional details.\n\n*Important*: Some releases of MySQL introduce changes to the structure\nof the grant tables to add new privileges or features. Whenever you\nupdate to a new version of MySQL, you should update your grant tables\nto make sure that they have the current structure so that you can take\nadvantage of any new capabilities. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-upgrade.html.\n\nIf the grant tables hold privilege rows that contain mixed-case\ndatabase or table names and the lower_case_table_names system variable\nis set to a non-zero value, REVOKE cannot be used to revoke these\nprivileges. It will be necessary to manipulate the grant tables\ndirectly. (GRANT will not create such rows when lower_case_table_names\nis set, but such rows might have been created prior to setting the\nvariable.)\n\nPrivileges can be granted at several levels. The examples shown here\ninclude no IDENTIFIED BY ''password'' clause for brevity, but you should\ninclude one if the account does not already exist to avoid creating an\naccount with no password.\n\no Global level\n\n  Global privileges apply to all databases on a given server. These\n  privileges are stored in the mysql.user table. GRANT ALL ON *.* and\n  REVOKE ALL ON *.* grant and revoke only global privileges.\n\nGRANT ALL ON *.* TO ''someuser''@''somehost'';\nGRANT SELECT, INSERT ON *.* TO ''someuser''@''somehost'';\n\no Database level\n\n  Database privileges apply to all objects in a given database. These\n  privileges are stored in the mysql.db and mysql.host tables. GRANT\n  ALL ON db_name.* and REVOKE ALL ON db_name.* grant and revoke only\n  database privileges.\n\nGRANT ALL ON mydb.* TO ''someuser''@''somehost'';\nGRANT SELECT, INSERT ON mydb.* TO ''someuser''@''somehost'';\n\no Table level\n\n  Table privileges apply to all columns in a given table. These\n  privileges are stored in the mysql.tables_priv table. GRANT ALL ON\n  db_name.tbl_name and REVOKE ALL ON db_name.tbl_name grant and revoke\n  only table privileges.\n\nGRANT ALL ON mydb.mytbl TO ''someuser''@''somehost'';\nGRANT SELECT, INSERT ON mydb.mytbl TO ''someuser''@''somehost'';\n\no Column level\n\n  Column privileges apply to single columns in a given table. These\n  privileges are stored in the mysql.columns_priv table. When using\n  REVOKE, you must specify the same columns that were granted. The\n  column or columns for which the privileges are to be granted must be\n  enclosed within parentheses.\n\nGRANT SELECT (col1), INSERT (col1,col2) ON mydb.mytbl TO ''someuser''@''somehost'';\n\no Routine level\n\n  The CREATE ROUTINE, ALTER ROUTINE, EXECUTE, and GRANT privileges\n  apply to stored routines (functions and procedures). They can be\n  granted at the global and database levels. Also, except for CREATE\n  ROUTINE, these privileges can be granted at the routine level for\n  individual routines and are stored in the mysql.procs_priv table.\n\nGRANT CREATE ROUTINE ON mydb.* TO ''someuser''@''somehost'';\nGRANT EXECUTE ON PROCEDURE mydb.myproc TO ''someuser''@''somehost'';\n\nThe object_type clause should be specified as TABLE, FUNCTION, or\nPROCEDURE when the following object is a table, a stored function, or a\nstored procedure.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/grant.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/grant.html'),
(188, 'MBRINTERSECTS', 6, 'MBRIntersects(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 intersect.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(189, 'BIT_OR', 15, 'Syntax:\nBIT_OR(expr)\n\nReturns the bitwise OR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(190, 'YEARWEEK', 29, 'Syntax:\nYEARWEEK(date), YEARWEEK(date,mode)\n\nReturns year and week for a date. The mode argument works exactly like\nthe mode argument to WEEK(). The year in the result may be different\nfrom the year in the date argument for the first and the last week of\nthe year.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEARWEEK(''1987-01-01'');\n        -> 198653\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(191, 'NOT BETWEEN', 18, 'Syntax:\nexpr NOT BETWEEN min AND max\n\nThis is the same as NOT (expr BETWEEN min AND max).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(192, 'LOG10', 4, 'Syntax:\nLOG10(X)\n\nReturns the base-10 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG10(2);\n        -> 0.30102999566398\nmysql> SELECT LOG10(100);\n        -> 2\nmysql> SELECT LOG10(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(193, 'SQRT', 4, 'Syntax:\nSQRT(X)\n\nReturns the square root of a non-negative number X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT SQRT(4);\n        -> 2\nmysql> SELECT SQRT(20);\n        -> 4.4721359549996\nmysql> SELECT SQRT(-16);\n        -> NULL        \n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(194, 'DECIMAL', 21, 'DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nA packed "exact" fixed-point number. M is the total number of digits\n(the precision) and D is the number of digits after the decimal point\n(the scale). The decimal point and (for negative numbers) the `-'' sign\nare not counted in M. If D is 0, values have no decimal point or\nfractional part. The maximum number of digits (M) for DECIMAL is 65.\nThe maximum number of supported decimals (D) is 30. If D is omitted,\nthe default is 0. If M is omitted, the default is 10.\n\nUNSIGNED, if specified, disallows negative values.\n\nAll basic calculations (+, -, *, /) with DECIMAL columns are done with\na precision of 65 digits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(195, 'CREATE FUNCTION', 35, 'Syntax:\nCREATE [AGGREGATE] FUNCTION function_name RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nA user-defined function (UDF) is a way to extend MySQL with a new\nfunction that works like a native (built-in) MySQL function such as\nABS() or CONCAT().\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction''s return value. DECIMAL is a legal value after RETURNS, but\ncurrently DECIMAL functions return string values and should be written\nlike STRING functions.\n\nshared_library_name is the basename of the shared object file that\ncontains the code that implements the function. The file must be\nlocated in the plugin directory. This directory is given by the value\nof the plugin_dir system variable. (Note: This a change in MySQL 5.1.\nFor earlier versions of MySQL, the shared object can be located in any\ndirectory that is searched by your system''s dynamic linker.)\n\nTo create a function, you must have the INSERT and privilege for the\nmysql database. This is necessary because CREATE FUNCTION adds a row to\nthe mysql.func system table that records the function''s name, type, and\nshared library name. If you do not have this table, you should run the\nmysql_upgrade command to create it. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-upgrade.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-function.html'),
(196, 'GEOMETRYN', 24, 'GeometryN(gc,N)\n\nReturns the N-th geometry in the GeometryCollection value gc.\nGeometries are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometrycollection-property-functions.html\n\n', 'mysql> SET @gc = ''GeometryCollection(Point(1 1),LineString(2 2, 3 3))'';\nmysql> SELECT AsText(GeometryN(GeomFromText(@gc),1));\n+----------------------------------------+\n| AsText(GeometryN(GeomFromText(@gc),1)) |\n+----------------------------------------+\n| POINT(1 1)                             |\n+----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometrycollection-property-functions.html'),
(197, 'CREATE INDEX', 37, 'Syntax:\nCREATE [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name\n    [index_type]\n    ON tbl_name (index_col_name,...)\n    [index_option ...]\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH | RTREE}\n\nindex_option:\n    KEY_BLOCK_SIZE value\n  | index_type\n  | WITH PARSER parser_name\n\nCREATE INDEX is mapped to an ALTER TABLE statement to create indexes.\nSee [HELP ALTER TABLE]. CREATE INDEX cannot be used to create a PRIMARY\nKEY; use ALTER TABLE instead. For more information about indexes, see\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-indexes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-index.html'),
(198, 'ALTER DATABASE', 37, 'Syntax:\nALTER {DATABASE | SCHEMA} [db_name]\n    alter_specification ...\n\nalter_specification:\n    [DEFAULT] CHARACTER SET charset_name\n  | [DEFAULT] COLLATE collation_name\n\nALTER DATABASE enables you to change the overall characteristics of a\ndatabase. These characteristics are stored in the db.opt file in the\ndatabase directory. To use ALTER DATABASE, you need the ALTER privilege\non the database. ALTER SCHEMA is a synonym for ALTER DATABASE.\n\nThe CHARACTER SET clause changes the default database character set.\nThe COLLATE clause changes the default database collation.\nhttp://dev.mysql.com/doc/refman/5.1/en/charset.html, discusses\ncharacter set and collation names.\n\nThe database name can be omitted, in which case the statement applies\nto the default database.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-database.html'),
(199, '<<', 19, 'Syntax:\n<<\n\nShifts a longlong (BIGINT) number to the left.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 1 << 2;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(200, 'SHOW TABLE STATUS', 25, 'Syntax:\nSHOW TABLE STATUS [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each table. You can also get this list using the\nmysqlshow --status db_name command. The LIKE clause, if present,\nindicates which table names to match. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-table-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-table-status.html'),
(201, 'MD5', 11, 'Syntax:\nMD5(str)\n\nCalculates an MD5 128-bit checksum for the string. The value is\nreturned as a binary string of 32 hex digits, or NULL if the argument\nwas NULL. The return value can, for example, be used as a hash key.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT MD5(''testing'');\n        -> ''ae2b1fca515949e5d54fb22b8ed95575''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(202, '<', 18, 'Syntax:\n<\n\nLess than:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 < 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(203, 'UNIX_TIMESTAMP', 29, 'Syntax:\nUNIX_TIMESTAMP(), UNIX_TIMESTAMP(date)\n\nIf called with no argument, returns a Unix timestamp (seconds since\n''1970-01-01 00:00:00'' UTC) as an unsigned integer. If UNIX_TIMESTAMP()\nis called with a date argument, it returns the value of the argument as\nseconds since ''1970-01-01 00:00:00'' UTC. date may be a DATE string, a\nDATETIME string, a TIMESTAMP, or a number in the format YYMMDD or\nYYYYMMDD. The server interprets date as a value in the current time\nzone and converts it to an internal value in UTC. Clients can set their\ntime zone as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/time-zone-support.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UNIX_TIMESTAMP();\n        -> 882226357\nmysql> SELECT UNIX_TIMESTAMP(''1997-10-04 22:23:00'');\n        -> 875996580\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(204, 'DAYOFMONTH', 29, 'Syntax:\nDAYOFMONTH(date)\n\nReturns the day of the month for date, in the range 0 to 31.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFMONTH(''1998-02-03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(205, 'ASCII', 34, 'Syntax:\nASCII(str)\n\nReturns the numeric value of the leftmost character of the string str.\nReturns 0 if str is the empty string. Returns NULL if str is NULL.\nASCII() works for 8-bit characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT ASCII(''2'');\n        -> 50\nmysql> SELECT ASCII(2);\n        -> 50\nmysql> SELECT ASCII(''dx'');\n        -> 100\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(206, 'DIV', 4, 'Syntax:\nDIV\n\nInteger division. Similar to FLOOR(), but is safe with BIGINT values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 5 DIV 2;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(207, 'RENAME USER', 9, 'Syntax:\nRENAME USER old_user TO new_user\n    [, old_user TO new_user] ...\n\nThe RENAME USER statement renames existing MySQL accounts. To use it,\nyou must have the global CREATE USER privilege or the UPDATE privilege\nfor the mysql database. An error occurs if any old account does not\nexist or any new account exists. Each account is named using the same\nformat as for the GRANT statement; for example, ''jeffrey''@''localhost''.\nIf you specify only the username part of the account name, a hostname\npart of ''%'' is used. For additional information about specifying\naccount names, see [HELP GRANT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/rename-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/rename-user.html'),
(208, 'SHOW SLAVE STATUS', 25, 'Syntax:\nSHOW SLAVE STATUS\n\nThis statement provides status information on essential parameters of\nthe slave threads. If you issue this statement using the mysql client,\nyou can use a \\G statement terminator rather than a semicolon to obtain\na more readable vertical layout:\n\nmysql> SHOW SLAVE STATUS\\G\n*************************** 1. row ***************************\n               Slave_IO_State: Waiting for master to send event\n                  Master_Host: localhost\n                  Master_User: root\n                  Master_Port: 3306\n                Connect_Retry: 3\n              Master_Log_File: gbichot-bin.005\n          Read_Master_Log_Pos: 79\n               Relay_Log_File: gbichot-relay-bin.005\n                Relay_Log_Pos: 548\n        Relay_Master_Log_File: gbichot-bin.005\n             Slave_IO_Running: Yes\n            Slave_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Master_Log_Pos: 79\n              Relay_Log_Space: 552\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Master_SSL_Allowed: No\n           Master_SSL_CA_File:\n           Master_SSL_CA_Path:\n              Master_SSL_Cert:\n            Master_SSL_Cipher:\n               Master_SSL_Key:\n        Seconds_Behind_Master: 8\nMaster_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-slave-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-slave-status.html'),
(209, 'GEOMETRY', 31, 'MySQL provides a standard way of creating spatial columns for geometry\ntypes, for example, with CREATE TABLE or ALTER TABLE. Currently,\nspatial columns are supported for MyISAM, InnoDB, NDB, and ARCHIVE\ntables. See also the annotations about spatial indexes under [HELP\nSPATIAL].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-columns.html\n\n', 'CREATE TABLE geom (g GEOMETRY);\n', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-columns.html'),
(210, 'NUMPOINTS', 12, 'NumPoints(ls)\n\nReturns the number of Point objects in the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT NumPoints(GeomFromText(@ls));\n+------------------------------+\n| NumPoints(GeomFromText(@ls)) |\n+------------------------------+\n|                            3 |\n+------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html'),
(211, '&', 19, 'Syntax:\n&\n\nBitwise AND:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 29 & 15;\n        -> 13\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(212, 'LOCALTIMESTAMP', 29, 'Syntax:\nLOCALTIMESTAMP, LOCALTIMESTAMP()\n\nLOCALTIMESTAMP and LOCALTIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(213, 'ADDDATE', 29, 'Syntax:\nADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, ADDDATE()\nis a synonym for DATE_ADD(). The related function SUBDATE() is a\nsynonym for DATE_SUB(). For information on the INTERVAL unit argument,\nsee the discussion for DATE_ADD().\n\nmysql> SELECT DATE_ADD(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1998-02-02''\nmysql> SELECT ADDDATE(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1998-02-02''\n\nWhen invoked with the days form of the second argument, MySQL treats it\nas an integer number of days to be added to expr.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDDATE(''1998-01-02'', 31);\n        -> ''1998-02-02''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(214, 'REPEAT LOOP', 36, 'Syntax:\n[begin_label:] REPEAT\n    statement_list\nUNTIL search_condition\nEND REPEAT [end_label]\n\nThe statement list within a REPEAT statement is repeated until the\nsearch_condition is true. Thus, a REPEAT always enters the loop at\nleast once. statement_list consists of one or more statements.\n\nA REPEAT statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/repeat-statement.html\n\n', 'mysql> delimiter //\n\nmysql> CREATE PROCEDURE dorepeat(p1 INT)\n    -> BEGIN\n    ->   SET @x = 0;\n    ->   REPEAT SET @x = @x + 1; UNTIL @x > p1 END REPEAT;\n    -> END\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL dorepeat(1000)//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n+------+\n| @x   |\n+------+\n| 1001 |\n+------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/repeat-statement.html'),
(215, 'SMALLINT', 21, 'SMALLINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA small integer. The signed range is -32768 to 32767. The unsigned\nrange is 0 to 65535.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(216, 'DOUBLE PRECISION', 21, 'DOUBLE PRECISION[(M,D)] [UNSIGNED] [ZEROFILL], REAL[(M,D)] [UNSIGNED]\n[ZEROFILL]\n\nThese types are synonyms for DOUBLE. Exception: If the REAL_AS_FLOAT\nSQL mode is enabled, REAL is a synonym for FLOAT rather than DOUBLE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(217, 'ORD', 34, 'Syntax:\nORD(str)\n\nIf the leftmost character of the string str is a multi-byte character,\nreturns the code for that character, calculated from the numeric values\nof its constituent bytes using this formula:\n\n  (1st byte code)\n+ (2nd byte code x 256)\n+ (3rd byte code x 2562) ...\n\nIf the leftmost character is not a multi-byte character, ORD() returns\nthe same value as the ASCII() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT ORD(''2'');\n        -> 50\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(218, 'ENVELOPE', 33, 'Envelope(g)\n\nReturns the Minimum Bounding Rectangle (MBR) for the geometry value g.\nThe result is returned as a Polygon value.\n\nThe polygon is defined by the corner points of the bounding box:\n\nPOLYGON((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT AsText(Envelope(GeomFromText(''LineString(1 1,2 2)'')));\n+-------------------------------------------------------+\n| AsText(Envelope(GeomFromText(''LineString(1 1,2 2)''))) |\n+-------------------------------------------------------+\n| POLYGON((1 1,2 1,2 2,1 2,1 1))                        |\n+-------------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html'),
(219, 'DEALLOCATE PREPARE', 25, 'Syntax:\n{DEALLOCATE | DROP} PREPARE stmt_name\n\nTo deallocate a prepared statement, use the DEALLOCATE PREPARE\nstatement. Attempting to execute a prepared statement after\ndeallocating it results in an error.\n\nIf you terminate a client session without deallocating a previously\nprepared statement, the server deallocates it automatically.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/sqlps.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/sqlps.html'),
(220, 'IS_FREE_LOCK', 14, 'Syntax:\nIS_FREE_LOCK(str)\n\nChecks whether the lock named str is free to use (that is, not locked).\nReturns 1 if the lock is free (no one is using the lock), 0 if the lock\nis in use, and NULL if an error occurs (such as an incorrect argument).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(221, 'TOUCHES', 27, 'Touches(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially touches g2. Two\ngeometries spatially touch if the interiors of the geometries do not\nintersect, but the boundary of one of the geometries intersects either\nthe boundary or the interior of the other.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(222, 'INET_ATON', 14, 'Syntax:\nINET_ATON(expr)\n\nGiven the dotted-quad representation of a network address as a string,\nreturns an integer that represents the numeric value of the address.\nAddresses may be 4- or 8-byte addresses.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_ATON(''209.207.224.40'');\n        -> 3520061480\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(223, 'UNCOMPRESS', 11, 'Syntax:\nUNCOMPRESS(string_to_uncompress)\n\nUncompresses a string compressed by the COMPRESS() function. If the\nargument is not a compressed value, the result is NULL. This function\nrequires MySQL to have been compiled with a compression library such as\nzlib. Otherwise, the return value is always NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESS(COMPRESS(''any string''));\n        -> ''any string''\nmysql> SELECT UNCOMPRESS(''any string'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(224, 'AUTO_INCREMENT', 21, 'The AUTO_INCREMENT attribute can be used to generate a unique identity\nfor new rows:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/example-auto-increment.html\n\n', 'CREATE TABLE animals (\n     id MEDIUMINT NOT NULL AUTO_INCREMENT,\n     name CHAR(30) NOT NULL,\n     PRIMARY KEY (id)\n );\n\nINSERT INTO animals (name) VALUES \n    (''dog''),(''cat''),(''penguin''),\n    (''lax''),(''whale''),(''ostrich'');\n\nSELECT * FROM animals;\n', 'http://dev.mysql.com/doc/refman/5.1/en/example-auto-increment.html'),
(225, 'ISSIMPLE', 33, 'IsSimple(g)\n\nCurrently, this function is a placeholder and should not be used. If\nimplemented, its behavior will be as described in the next paragraph.\n\nReturns 1 if the geometry value g has no anomalous geometric points,\nsuch as self-intersection or self-tangency. IsSimple() returns 0 if the\nargument is not simple, and -1 if it is NULL.\n\nThe description of each instantiable geometric class given earlier in\nthe chapter includes the specific conditions that cause an instance of\nthat class to be classified as not simple. (See [HELP Geometry\nhierarchy].)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html'),
(226, '- BINARY', 4, 'Syntax:\n-\n\nSubtraction:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3-5;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(227, 'GEOMCOLLFROMTEXT', 3, 'GeomCollFromText(wkt[,srid]), GeometryCollectionFromText(wkt[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html'),
(228, 'WKT DEFINITION', 3, 'The Well-Known Text (WKT) representation of Geometry is designed to\nexchange geometry data in ASCII form.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-format.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-format.html'),
(229, 'CURRENT_TIME', 29, 'Syntax:\nCURRENT_TIME, CURRENT_TIME()\n\nCURRENT_TIME and CURRENT_TIME() are synonyms for CURTIME().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(230, 'REVOKE', 9, 'Syntax:\nREVOKE priv_type [(column_list)] [, priv_type [(column_list)]] ...\n    ON [object_type] {tbl_name | * | *.* | db_name.*}\n    FROM user [, user] ...\n\nREVOKE ALL PRIVILEGES, GRANT OPTION FROM user [, user] ...\n\nThe REVOKE statement enables system administrators to revoke privileges\nfrom MySQL accounts. To use REVOKE, you must have the GRANT OPTION\nprivilege, and you must have the privileges that you are revoking.\n\nEach account is named using the same format as for the GRANT statement;\nfor example, ''jeffrey''@''localhost''. If you specify only the username\npart of the account name, a hostname part of ''%'' is used. For\nadditional information about specifying account names, see [HELP\nGRANT].\n\nFor details on the levels at which privileges exist, the allowable\npriv_type values, and the syntax for specifying users and passwords,\nsee [HELP GRANT]\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/revoke.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/revoke.html'),
(231, 'LAST_INSERT_ID', 16, 'Syntax:\nLAST_INSERT_ID(), LAST_INSERT_ID(expr)\n\nFor MySQL 5.1.12 and later, LAST_INSERT_ID() (no arguments) returns the\nfirst automatically generated value successfully inserted for an\nAUTO_INCREMENT column as a result of the most recently executed INSERT\nstatement. The value of LAST_INSERT_ID() remains unchanged if no rows\nare successfully inserted.\n\nFor example, after inserting a row that generates an AUTO_INCREMENT\nvalue, you can get the value like this:\n\nmysql> SELECT LAST_INSERT_ID();\n        -> 195\n\nIn MySQL 5.1.11 and earlier, LAST_INSERT_ID() (no arguments) returns\nthe first automatically generated value if any rows were successfully\ninserted or updated. This means that the returned value could be a\nvalue that was not successfully inserted into the table. If no rows\nwere successfully inserted, LAST_INSERT_ID() returns 0.\n\nThe value of LAST_INSERT_ID() will be consistent across all versions if\nall rows in the INSERT or UPDATE statement were successful.\n\nThe currently executing statement does not affect the value of\nLAST_INSERT_ID(). Suppose that you generate an AUTO_INCREMENT value\nwith one statement, and then refer to LAST_INSERT_ID() in a\nmultiple-row INSERT statement that inserts rows into a table with its\nown AUTO_INCREMENT column. The value of LAST_INSERT_ID() will remain\nstable in the second statement; its value for the second and later rows\nis not affected by the earlier row insertions. (However, if you mix\nreferences to LAST_INSERT_ID() and LAST_INSERT_ID(expr), the effect is\nundefined.)\n\nIf the previous statement returned an error, the value of\nLAST_INSERT_ID() is undefined. For transactional tables, if the\nstatement is rolled back due to an error, the value of LAST_INSERT_ID()\nis left undefined. For manual ROLLBACK, the value of LAST_INSERT_ID()\nis not restored to that before the transaction; it remains as it was at\nthe point of the ROLLBACK.\n\nWithin the body of a stored routine (procedure or function) or a\ntrigger, the value of LAST_INSERT_ID() changes the same way as for\nstatements executed outside the body of these kinds of objects. The\neffect of a stored routine or trigger upon the value of\nLAST_INSERT_ID() that is seen by following statements depends on the\nkind of routine:\n\no If a stored procedure executes statements that change the value of\n  LAST_INSERT_ID(), the changed value will be seen by statements that\n  follow the procedure call.\n\no For stored functions and triggers that change the value, the value is\n  restored when the function or trigger ends, so following statements\n  will not see a changed value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(232, 'LAST_DAY', 29, 'Syntax:\nLAST_DAY(date)\n\nTakes a date or datetime value and returns the corresponding value for\nthe last day of the month. Returns NULL if the argument is invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT LAST_DAY(''2003-02-05'');\n        -> ''2003-02-28''\nmysql> SELECT LAST_DAY(''2004-02-05'');\n        -> ''2004-02-29''\nmysql> SELECT LAST_DAY(''2004-01-01 01:01:01'');\n        -> ''2004-01-31''\nmysql> SELECT LAST_DAY(''2003-03-32'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(233, 'MEDIUMINT', 21, 'MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA medium-sized integer. The signed range is -8388608 to 8388607. The\nunsigned range is 0 to 16777215.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(234, 'FLOOR', 4, 'Syntax:\nFLOOR(X)\n\nReturns the largest integer value not greater than X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT FLOOR(1.23);\n        -> 1\nmysql> SELECT FLOOR(-1.23);\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(235, 'RTRIM', 34, 'Syntax:\nRTRIM(str)\n\nReturns the string str with trailing space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT RTRIM(''barbar   '');\n        -> ''barbar''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(236, 'DEGREES', 4, 'Syntax:\nDEGREES(X)\n\nReturns the argument X, converted from radians to degrees.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT DEGREES(PI());\n        -> 180\nmysql> SELECT DEGREES(PI() / 2);\n        -> 90\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(237, 'EXPLAIN', 25, 'Syntax:\nEXPLAIN tbl_name\n\nOr:\n\nEXPLAIN [EXTENDED | PARTITIONS] SELECT select_options\n\nThe EXPLAIN statement can be used either as a synonym for DESCRIBE or\nas a way to obtain information about how MySQL executes a SELECT\nstatement:\n\no EXPLAIN tbl_name is synonymous with DESCRIBE tbl_name or SHOW COLUMNS\n  FROM tbl_name.\n\no When you precede a SELECT statement with the keyword EXPLAIN, MySQL\n  displays information from the optimizer about the query execution\n  plan. That is, MySQL explains how it would process the SELECT,\n  including information about how tables are joined and in which order.\n\no EXPLAIN PARTITIONS is available beginning with MySQL 5.1.5. It is\n  useful only when examining queries involving partitioned tables. For\n  details, see\n  http://dev.mysql.com/doc/refman/5.1/en/partitioning-info.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/explain.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/explain.html'),
(238, 'VARCHAR', 21, '[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA variable-length string. M represents the maximum column length. The\nrange of M is 0 to 65,535. (The actual maximum length of a VARCHAR is\ndetermined by the maximum row size and the character set you use. The\nmaximum effective column length is subject to a row size of 65,535\nbytes, which is shared among all columns.)\n\n*Note*: MySQL 5.1 follows the standard SQL specification, and does not\nremove trailing spaces from VARCHAR values.\n\nVARCHAR is shorthand for CHARACTER VARYING.\n\nVARCHAR is stored with a one-byte or two-byte length prefix plus data.\nThe length prefix is two bytes if the VARCHAR column is declared with a\nlength greater than 255.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(239, 'UNHEX', 34, 'Syntax:\n\nUNHEX(str)\n\nPerforms the inverse operation of HEX(str). That is, it interprets each\npair of hexadecimal digits in the argument as a number and converts it\nto the character represented by the number. The resulting characters\nare returned as a binary string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT UNHEX(''4D7953514C'');\n        -> ''MySQL''\nmysql> SELECT 0x4D7953514C;\n        -> ''MySQL''\nmysql> SELECT UNHEX(HEX(''string''));\n        -> ''string''\nmysql> SELECT HEX(UNHEX(''1267''));\n        -> ''1267''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(240, '- UNARY', 4, 'Syntax:\n-\n\nUnary minus. This operator changes the sign of the argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT - 2;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(241, 'SELECT INTO', 36, 'Syntax:\nSELECT col_name[,...] INTO var_name[,...] table_expr\n\nThis SELECT syntax stores selected columns directly into variables.\nTherefore, only a single row may be retrieved.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/select-into-statement.html\n\n', 'SELECT id,data INTO x,y FROM test.t1 LIMIT 1;\n', 'http://dev.mysql.com/doc/refman/5.1/en/select-into-statement.html'),
(242, 'COS', 4, 'Syntax:\nCOS(X)\n\nReturns the cosine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT COS(PI());\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(243, 'DATE FUNCTION', 29, 'Syntax:\nDATE(expr)\n\nExtracts the date part of the date or datetime expression expr.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE(''2003-12-31 01:02:03'');\n        -> ''2003-12-31''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(244, 'DROP TRIGGER', 22, 'Syntax:\nDROP TRIGGER [IF EXISTS] [schema_name.]trigger_name\n\nThis statement drops a trigger. The schema (database) name is optional.\nIf the schema is omitted, the trigger is dropped from the default\nschema. DROP TRIGGER was added in MySQL 5.0.2. Its use requires the\nTRIGGER privilege for the table associated with the trigger. (This\nstatement requires the SUPER privilege prior to MySQL 5.1.6.)\n\nUse IF EXISTS to prevent an error from occurring for a trigger that\ndoes not exist. A NOTE is generated for a non-existent trigger when\nusing IF EXISTS. See [HELP SHOW WARNINGS]. The IF EXISTS clause was\nadded in MySQL 5.1.14.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-trigger.html'),
(245, 'RESET MASTER', 25, 'Syntax:\nRESET MASTER\n\nDeletes all binary logs listed in the index file, resets the binary log\nindex file to be empty, and creates a new binary log file.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/reset-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/reset-master.html'),
(246, 'TAN', 4, 'Syntax:\nTAN(X)\n\nReturns the tangent of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT TAN(PI());\n        -> -1.2246063538224e-16\nmysql> SELECT TAN(PI()+1);\n        -> 1.5574077246549\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(247, 'PI', 4, 'Syntax:\nPI()\n\nReturns the value of π (pi). The default number of decimal places\ndisplayed is seven, but MySQL uses the full double-precision value\ninternally.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT PI();\n        -> 3.141593\nmysql> SELECT PI()+0.000000000000000000;\n        -> 3.141592653589793116\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(248, 'WEEKOFYEAR', 29, 'Syntax:\nWEEKOFYEAR(date)\n\nReturns the calendar week of the date as a number in the range from 1\nto 53. WEEKOFYEAR() is a compatibility function that is equivalent to\nWEEK(date,3).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKOFYEAR(''1998-02-20'');\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(249, '/', 4, 'Syntax:\n/\n\nDivision:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3/5;\n        -> 0.60\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(250, 'STDDEV_SAMP', 15, 'Syntax:\nSTDDEV_SAMP(expr)\n\nReturns the sample standard deviation of expr (the square root of\nVAR_SAMP().\n\nSTDDEV_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(251, 'SCHEMA', 16, 'Syntax:\nSCHEMA()\n\nThis function is a synonym for DATABASE().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(252, 'MLINEFROMWKB', 30, 'MLineFromWKB(wkb[,srid]), MultiLineStringFromWKB(wkb[,srid])\n\nConstructs a MULTILINESTRING value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html'),
(253, 'LOG2', 4, 'Syntax:\nLOG2(X)\n\nReturns the base-2 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG2(65536);\n        -> 16\nmysql> SELECT LOG2(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(254, 'SUBTIME', 29, 'Syntax:\nSUBTIME(expr1,expr2)\n\nSUBTIME() returns expr1 - expr2 expressed as a value in the same format\nas expr1. expr1 is a time or datetime expression, and expr2 is a time\nexpression.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT SUBTIME(''1997-12-31 23:59:59.999999'',''1 1:1:1.000002'');\n        -> ''1997-12-30 22:58:58.999997''\nmysql> SELECT SUBTIME(''01:00:00.999999'', ''02:00:00.999998'');\n        -> ''-00:59:59.999999''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(255, 'UNCOMPRESSED_LENGTH', 11, 'Syntax:\nUNCOMPRESSED_LENGTH(compressed_string)\n\nReturns the length that the compressed string had before being\ncompressed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESSED_LENGTH(COMPRESS(REPEAT(''a'',30)));\n        -> 30\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(256, 'DROP TABLE', 37, 'Syntax:\nDROP [TEMPORARY] TABLE [IF EXISTS]\n    tbl_name [, tbl_name] ...\n    [RESTRICT | CASCADE]\n\nDROP TABLE removes one or more tables. You must have the DROP privilege\nfor each table. All table data and the table definition are removed, so\nbe careful with this statement! If any of the tables named in the\nargument list do not exist, MySQL returns an error indicating by name\nwhich non-existing tables it was unable to drop, but it also drops all\nof the tables in the list that do exist.\n\n*Important*: When a table is dropped, user privileges on the table are\nnot automatically dropped. See [HELP GRANT].\n\nNote that for a partitioned table, DROP TABLE permanently removes the\ntable definition, all of its partitions, and all of the data which was\nstored in those partitions. It also removes the partitioning definition\n(.par) file associated with the dropped table.\n\nUse IF EXISTS to prevent an error from occurring for tables that do not\nexist. A NOTE is generated for each non-existent table when using IF\nEXISTS. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE are allowed to make porting easier. In MySQL 5.1,\nthey do nothing.\n\n*Note*: DROP TABLE automatically commits the current active\ntransaction, unless you use the TEMPORARY keyword.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-table.html'),
(257, 'SHOW CREATE TABLE', 25, 'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the given table. This\nstatement also works with views.\nSHOW CREATE TABLE quotes table and column names according to the value\nof the SQL_QUOTE_SHOW_CREATE option. See [HELP SET].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-table.html\n\n', 'mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE t (\n  id INT(11) default NULL auto_increment,\n  s char(60) default NULL,\n  PRIMARY KEY (id)\n) ENGINE=MyISAM\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-table.html'),
(258, 'DUAL', 25, 'You are allowed to specify DUAL as a dummy table name in situations\nwhere no tables are referenced:\n\nmysql> SELECT 1 + 1 FROM DUAL;\n        -> 2\n\nDUAL is purely for the convenience of people who require that all\nSELECT statements should have FROM and possibly other clauses. MySQL\nmay ignore the clauses. MySQL does not require FROM DUAL if no tables\nare referenced.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/select.html'),
(259, 'INSTR', 34, 'Syntax:\nINSTR(str,substr)\n\nReturns the position of the first occurrence of substring substr in\nstring str. This is the same as the two-argument form of LOCATE(),\nexcept that the order of the arguments is reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT INSTR(''foobarbar'', ''bar'');\n        -> 4\nmysql> SELECT INSTR(''xbar'', ''foobar'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(260, 'NOW', 29, 'Syntax:\nNOW()\n\nReturns the current date and time as a value in ''YYYY-MM-DD HH:MM:SS''\nor YYYYMMDDHHMMSS format, depending on whether the function is used in\na string or numeric context. The value is expressed in the current time\nzone.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT NOW();\n        -> ''1997-12-15 23:50:26''\nmysql> SELECT NOW() + 0;\n        -> 19971215235026\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(261, 'SHOW ENGINES', 25, 'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server''s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is. SHOW TABLE\nTYPES is a deprecated synonym.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-engines.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-engines.html'),
(262, '>=', 18, 'Syntax:\n>=\n\nGreater than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 >= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(263, 'EXP', 4, 'Syntax:\nEXP(X)\n\nReturns the value of e (the base of natural logarithms) raised to the\npower of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT EXP(2);\n        -> 7.3890560989307\nmysql> SELECT EXP(-2);\n        -> 0.13533528323661\nmysql> SELECT EXP(0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(264, 'SHA', 11, 'Syntax:\nSHA1(str), SHA(str)\n\nCalculates an SHA-1 160-bit checksum for the string, as described in\nRFC 3174 (Secure Hash Algorithm). The value is returned as a binary\nstring of 40 hex digits, or NULL if the argument was NULL. One of the\npossible uses for this function is as a hash key. You can also use it\nas a cryptographic function for storing passwords. SHA() is synonymous\nwith SHA1().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT SHA1(''abc'');\n        -> ''a9993e364706816aba3e25717850c26c9cd0d89d''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(265, 'LONGBLOB', 21, 'LONGBLOB\n\nA BLOB column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\nbytes. The maximum effective (permitted) length of LONGBLOB columns\ndepends on the configured maximum packet size in the client/server\nprotocol and available memory.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(266, 'POINTN', 12, 'PointN(ls,N)\n\nReturns the N-th Point in the Linestring value ls. Points are numbered\nbeginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(PointN(GeomFromText(@ls),2));\n+-------------------------------------+\n| AsText(PointN(GeomFromText(@ls),2)) |\n+-------------------------------------+\n| POINT(2 2)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html'),
(267, 'YEAR DATA TYPE', 21, 'YEAR[(2|4)]\n\nA year in two-digit or four-digit format. The default is four-digit\nformat. In four-digit format, the allowable values are 1901 to 2155,\nand 0000. In two-digit format, the allowable values are 70 to 69,\nrepresenting years from 1970 to 2069. MySQL displays YEAR values in\nYYYY format, but allows you to assign values to YEAR columns using\neither strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(268, 'SUM', 15, 'Syntax:\nSUM([DISTINCT] expr)\n\nReturns the sum of expr. If the return set has no rows, SUM() returns\nNULL. The DISTINCT keyword can be used in MySQL 5.1 to sum only the\ndistinct values of expr.\n\nSUM() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(269, 'OCT', 34, 'Syntax:\nOCT(N)\n\nReturns a string representation of the octal value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,8). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT OCT(12);\n        -> ''14''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(270, 'SYSDATE', 29, 'Syntax:\nSYSDATE()\n\nReturns the current date and time as a value in ''YYYY-MM-DD HH:MM:SS''\nor YYYYMMDDHHMMSS format, depending on whether the function is used in\na string or numeric context.\n\nSYSDATE() returns the time at which it executes. This differs from the\nbehavior for NOW(), which returns a constant time that indicates the\ntime at which the statement began to execute. (Within a stored routine\nor trigger, NOW() returns the time at which the routine or triggering\nstatement began to execute.)\n\nmysql> SELECT NOW(), SLEEP(2), NOW();\n+---------------------+----------+---------------------+\n| NOW()               | SLEEP(2) | NOW()               |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:36 |        0 | 2006-04-12 13:47:36 |\n+---------------------+----------+---------------------+\n\nmysql> SELECT SYSDATE(), SLEEP(2), SYSDATE();\n+---------------------+----------+---------------------+\n| SYSDATE()           | SLEEP(2) | SYSDATE()           |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:44 |        0 | 2006-04-12 13:47:46 |\n+---------------------+----------+---------------------+\n\nIn addition, the SET TIMESTAMP statement affects the value returned by\nNOW() but not by SYSDATE(). This means that timestamp settings in the\nbinary log have no effect on invocations of SYSDATE().\n\nBecause SYSDATE() can return different values even within the same\nstatement, and is not affected by SET TIMESTAMP, it is\nnon-deterministic and therefore unsafe for replication if\nstatement-based binary logging is used. If that is a problem, you can\nuse row-based logging, or start the server with the --sysdate-is-now\noption to cause SYSDATE() to be an alias for NOW(). The\nnon-deterministic nature of SYSDATE() also means that indexes cannot be\nused for evaluating expressions that refer to it.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(271, 'UNINSTALL PLUGIN', 5, 'Syntax:\nUNINSTALL PLUGIN plugin_name\n\nThis statement removes an installed plugin. You cannot uninstall a\nplugin if any table that uses it is open.\n\nplugin_name must be the name of some plugin that is listed in the\nmysql.plugin table. The server executes the plugin''s deinitialization\nfunction and removes the row for the plugin from the mysql.plugin\ntable, so that subsequent server restarts will not load and initialize\nthe plugin. UNINSTALL PLUGIN does not remove the plugin''s shared\nlibrary file.\n\nTo use UNINSTALL PLUGIN, you must have the DELETE privilege for the\nmysql.plugin table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/uninstall-plugin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/uninstall-plugin.html'),
(272, 'ASBINARY', 30, 'AsBinary(g)\n\nConverts a value in internal geometry format to its WKB representation\nand returns the binary result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html\n\n', 'SELECT AsBinary(g) FROM geom;\n', 'http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html'),
(273, 'REPEAT FUNCTION', 34, 'Syntax:\nREPEAT(str,count)\n\nReturns a string consisting of the string str repeated count times. If\ncount is less than 1, returns an empty string. Returns NULL if str or\ncount are NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT REPEAT(''MySQL'', 3);\n        -> ''MySQLMySQLMySQL''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(274, 'SHOW TABLES', 25, 'Syntax:\nSHOW [FULL] TABLES [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nThis statement also lists any views in the database. The FULL modifier\nis supported such that SHOW FULL TABLES displays a second output\ncolumn. Values for the second column are BASE TABLE for a table and\nVIEW for a view.\n\n*Note*: If you have no privileges for a table, the table does not show\nup in the output from SHOW TABLES or mysqlshow db_name.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-tables.html'),
(275, 'MAKEDATE', 29, 'Syntax:\nMAKEDATE(year,dayofyear)\n\nReturns a date, given year and day-of-year values. dayofyear must be\ngreater than 0 or the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKEDATE(2001,31), MAKEDATE(2001,32);\n        -> ''2001-01-31'', ''2001-02-01''\nmysql> SELECT MAKEDATE(2001,365), MAKEDATE(2004,365);\n        -> ''2001-12-31'', ''2004-12-30''\nmysql> SELECT MAKEDATE(2001,0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(276, 'BINARY OPERATOR', 34, 'Syntax:\nBINARY\n\nThe BINARY operator casts the string following it to a binary string.\nThis is an easy way to force a column comparison to be done byte by\nbyte rather than character by character. This causes the comparison to\nbe case sensitive even if the column isn''t defined as BINARY or BLOB.\nBINARY also causes trailing spaces to be significant.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html\n\n', 'mysql> SELECT ''a'' = ''A'';\n        -> 1\nmysql> SELECT BINARY ''a'' = ''A'';\n        -> 0\nmysql> SELECT ''a'' = ''a '';\n        -> 1\nmysql> SELECT BINARY ''a'' = ''a '';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html'),
(277, 'MBROVERLAPS', 6, 'MBROverlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 overlap. The term spatially overlaps is\nused if two geometries intersect and their intersection results in a\ngeometry of the same dimension but not equal to either of the given\ngeometries.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(278, 'SOUNDEX', 34, 'Syntax:\nSOUNDEX(str)\n\nReturns a soundex string from str. Two strings that sound almost the\nsame should have identical soundex strings. A standard soundex string\nis four characters long, but the SOUNDEX() function returns an\narbitrarily long string. You can use SUBSTRING() on the result to get a\nstandard soundex string. All non-alphabetic characters in str are\nignored. All international alphabetic characters outside the A-Z range\nare treated as vowels.\n\n*Important*: When using SOUNDEX(), you should be aware of the following\nlimitations:\n\no This function, as currently implemented, is intended to work well\n  with strings that are in the English language only. Strings in other\n  languages may not produce reliable results.\n\no This function is not guaranteed to provide consistent results with\n  strings that use multi-byte character sets, including utf-8.\n\n  We hope to remove these limitations in a future release. See\n  Bug#22638 (http://bugs.mysql.com/22638) for more information.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SOUNDEX(''Hello'');\n        -> ''H400''\nmysql> SELECT SOUNDEX(''Quadratically'');\n        -> ''Q36324''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(279, 'MBRTOUCHES', 6, 'MBRTouches(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 touch. Two geometries spatially touch if\nthe interiors of the geometries do not intersect, but the boundary of\none of the geometries intersects either the boundary or the interior of\nthe other.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(280, 'DROP EVENT', 37, 'Syntax:\nDROP EVENT [IF EXISTS] event_name\n\nThis statement drops the event named event_name. The event immediately\nceases being active, and is deleted completely from the server.\n\nIf the event does not exist, the error ERROR 1517 (HY000): Unknown\nevent ''event_name'' results. You can override this and cause the\nstatement to fail silently by using IF EXISTS.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-event.html'),
(281, 'CREATE PROCEDURE', 36, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    PROCEDURE sp_name ([proc_parameter[,...]])\n    [characteristic ...] routine_body\n\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    FUNCTION sp_name ([func_parameter[,...]])\n    RETURNS type\n    [characteristic ...] routine_body\n    \nproc_parameter:\n    [ IN | OUT | INOUT ] param_name type\n    \nfunc_parameter:\n    param_name type\n\ntype:\n    Any valid MySQL data type\n\ncharacteristic:\n    LANGUAGE SQL\n  | [NOT] DETERMINISTIC\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n  | COMMENT ''string''\n\nroutine_body:\n    Valid SQL procedure statement\n\nThese statements create stored routines. To use them, it is necessary\nto have the CREATE ROUTINE privilege. If binary logging is enabled, the\nCREATE FUNCTION statement might also require the SUPER privilege, as\ndescribed in\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-procedure-logging.html.\nMySQL automatically grants the ALTER ROUTINE and EXECUTE privileges to\nthe routine creator.\n\nBy default, the routine is associated with the default database. To\nassociate the routine explicitly with a given database, specify the\nname as db_name.sp_name when you create it.\n\nIf the routine name is the same as the name of a built-in SQL function,\nyou must use a space between the name and the following parenthesis\nwhen defining the routine, or a syntax error occurs. This is also true\nwhen you invoke the routine later. For this reason, we suggest that it\nis better to avoid re-using the names of existing SQL functions for\nyour own stored routines.\n\nThe IGNORE_SPACE SQL mode applies to built-in functions, not to stored\nroutines. It is always allowable to have spaces after a routine name,\nregardless of whether IGNORE_SPACE is enabled.\n\nThe parameter list enclosed within parentheses must always be present.\nIf there are no parameters, an empty parameter list of () should be\nused.\n\nEach parameter can be declared to use any valid data type, except that\nthe COLLATE attribute cannot be used.\n\nEach parameter is an IN parameter by default. To specify otherwise for\na parameter, use the keyword OUT or INOUT before the parameter name.\n\n*Note*: Specifying a parameter as IN, OUT, or INOUT is valid only for a\nPROCEDURE. (FUNCTION parameters are always regarded as IN parameters.)\n\nAn IN parameter passes a value into a procedure. The procedure might\nmodify the value, but the modification is not visible to the caller\nwhen the procedure returns. An OUT parameter passes a value from the\nprocedure back to the caller. Its initial value is NULL within the\nprocedure, and its value is visible to the caller when the procedure\nreturns. An INOUT parameter is initialized by the caller, can be\nmodified by the procedure, and any change made by the procedure is\nvisible to the caller when the procedure returns.\n\nFor each OUT or INOUT parameter, pass a user-defined variable so that\nyou can obtain its value when the procedure returns. (For an example,\nsee [HELP CALL].) If you are calling the procedure from within another\nstored procedure or function, you can also pass a routine parameter or\nlocal routine variable as an IN or INOUT parameter.\n\nThe RETURNS clause may be specified only for a FUNCTION, for which it\nis mandatory. It indicates the return type of the function, and the\nfunction body must contain a RETURN value statement. If the RETURN\nstatement returns a value of a different type, the value is coerced to\nthe proper type. For example, if a function specifies an ENUM or SET\nvalue in the RETURNS clause, but the RETURN statement returns an\ninteger, the value returned from the function is the string for the\ncorresponding ENUM member of set of SET members.\n\nThe routine_body consists of a valid SQL procedure statement. This can\nbe a simple statement such as SELECT or INSERT, or it can be a compound\nstatement written using BEGIN and END. Compound statement syntax is\ndescribed in [HELP BEGIN END]. Compound statements can contain\ndeclarations, loops, and other control structure statements. The syntax\nfor these statements is described later in this chapter. See, for\nexample, http://dev.mysql.com/doc/refman/5.1/en/declare.html, and [HELP\nIF statement]. Some statements are not allowed in stored routines; see\nhttp://dev.mysql.com/doc/refman/5.1/en/routine-restrictions.html.\n\nMySQL stores the sql_mode system variable setting that is in effect at\nthe time a routine is created, and always executes the routine with\nthis setting in force, regardless of the current server SQL mode.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-procedure.html\n\n', 'mysql> delimiter //\n\nmysql> CREATE PROCEDURE simpleproc (OUT param1 INT)\n    -> BEGIN\n    ->   SELECT COUNT(*) INTO param1 FROM t;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter ;\n\nmysql> CALL simpleproc(@a);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @a;\n+------+\n| @a   |\n+------+\n| 3    |\n+------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/create-procedure.html'),
(282, 'INSERT SELECT', 25, 'Syntax:\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nWith INSERT ... SELECT, you can quickly insert many rows into a table\nfrom one or many tables. For example:\n\nINSERT INTO tbl_temp2 (fld_id)\n  SELECT tbl_temp1.fld_order_id\n  FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/insert-select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/insert-select.html'),
(283, 'VARBINARY', 21, 'VARBINARY(M)\n\nThe VARBINARY type is similar to the VARCHAR type, but stores binary\nbyte strings rather than non-binary character strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(284, 'LOAD INDEX', 25, 'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [[INDEX|KEY] (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise. LOAD INDEX INTO\nCACHE is used only for MyISAM tables. It is not supported for tables\nhaving user-defined partitioning (see\nhttp://dev.mysql.com/doc/refman/5.1/en/partitioning-limitations.html.)\n\nThe IGNORE LEAVES modifier causes only blocks for the non-leaf nodes of\nthe index to be preloaded.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-index.html'),
(285, 'UNION', 25, 'Syntax:\nSELECT ...\nUNION [ALL | DISTINCT] SELECT ...\n[UNION [ALL | DISTINCT] SELECT ...]\n\nUNION is used to combine the result from multiple SELECT statements\ninto a single result set.\n\nThe column names from the first SELECT statement are used as the column\nnames for the results returned. Selected columns listed in\ncorresponding positions of each SELECT statement should have the same\ndata type. (For example, the first column selected by the first\nstatement should have the same type as the first column selected by the\nother statements.)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/union.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/union.html'),
(286, 'TO_DAYS', 29, 'Syntax:\nTO_DAYS(date)\n\nGiven a date date, returns a day number (the number of days since year\n0).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TO_DAYS(950501);\n        -> 728779\nmysql> SELECT TO_DAYS(''1997-10-07'');\n        -> 729669\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(287, 'NOT REGEXP', 34, 'Syntax:\nexpr NOT REGEXP pat, expr NOT RLIKE pat\n\nThis is the same as NOT (expr REGEXP pat).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html'),
(288, 'SHOW INDEX', 25, 'Syntax:\nSHOW INDEX FROM tbl_name [FROM db_name]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC.\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. These two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nSHOW KEYS is a synonym for SHOW INDEX. You can also list a table''s\nindexes with the mysqlshow -k db_name tbl_name command.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-index.html'),
(289, 'SHOW CREATE DATABASE', 25, 'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} db_name\n\nShows the CREATE DATABASE statement that creates the given database.\nSHOW CREATE SCHEMA is a synonym for SHOW CREATE DATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-database.html\n\n', 'mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-database.html'),
(290, 'LEAVE', 36, 'Syntax:\nLEAVE label\n\nThis statement is used to exit any labeled flow control construct. It\ncan be used within BEGIN ... END or loop constructs (LOOP, REPEAT,\nWHILE).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/leave-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/leave-statement.html'),
(291, 'NOT IN', 18, 'Syntax:\nexpr NOT IN (value,...)\n\nThis is the same as NOT (expr IN (value,...)).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(292, '!', 13, 'Syntax:\nNOT, !\n\nLogical NOT. Evaluates to 1 if the operand is 0, to 0 if the operand is\nnon-zero, and NOT NULL returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT NOT 10;\n        -> 0\nmysql> SELECT NOT 0;\n        -> 1\nmysql> SELECT NOT NULL;\n        -> NULL\nmysql> SELECT ! (1+1);\n        -> 0\nmysql> SELECT ! 1+1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html'),
(293, 'DECLARE HANDLER', 36, 'Syntax:\nDECLARE handler_type HANDLER FOR condition_value[,...] statement\n\nhandler_type:\n    CONTINUE\n  | EXIT\n  | UNDO\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n  | SQLWARNING\n  | NOT FOUND\n  | SQLEXCEPTION\n  | mysql_error_code\n\nThe DECLARE ... HANDLER statement specifies handlers that each may deal\nwith one or more conditions. If one of these conditions occurs, the\nspecified statement is executed. statement can be a simple statement\n(for example, SET var_name = value), or it can be a compound statement\nwritten using BEGIN and END (see [HELP BEGIN END]).\n\nFor a CONTINUE handler, execution of the current routine continues\nafter execution of the handler statement. For an EXIT handler,\nexecution terminates for the BEGIN ... END compound statement in which\nthe handler is declared. (This is true even if the condition occurs in\nan inner block.) The UNDO handler type statement is not yet supported.\n\nIf a condition occurs for which no handler has been declared, the\ndefault action is EXIT.\n\nA condition_value can be any of the following values:\n\no An SQLSTATE value or a MySQL error code.\n\no A condition name previously specified with DECLARE ... CONDITION. See\n  [HELP DECLARE CONDITION].\n\no SQLWARNING is shorthand for all SQLSTATE codes that begin with 01.\n\no NOT FOUND is shorthand for all SQLSTATE codes that begin with 02.\n\no SQLEXCEPTION is shorthand for all SQLSTATE codes not caught by\n  SQLWARNING or NOT FOUND.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-handlers.html\n\n', 'mysql> CREATE TABLE test.t (s1 int,primary key (s1));\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE handlerdemo ()\n    -> BEGIN\n    ->   DECLARE CONTINUE HANDLER FOR SQLSTATE ''23000'' SET @x2 = 1;\n    ->   SET @x = 1;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 2;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 3;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL handlerdemo()//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n    +------+\n    | @x   |\n    +------+\n    | 3    |\n    +------+\n    1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/declare-handlers.html'),
(294, 'DOUBLE', 21, 'DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA normal-size (double-precision) floating-point number. Allowable\nvalues are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and\n2.2250738585072014E-308 to 1.7976931348623157E+308. These are the\ntheoretical limits, based on the IEEE standard. The actual range might\nbe slightly smaller depending on your hardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits allowed by the hardware. A double-precision floating-point\nnumber is accurate to approximately 15 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(295, 'TIME', 21, 'TIME\n\nA time. The range is ''-838:59:59'' to ''838:59:59''. MySQL displays TIME\nvalues in ''HH:MM:SS'' format, but allows assignment of values to TIME\ncolumns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html'),
(296, '&&', 13, 'Syntax:\nAND, &&\n\nLogical AND. Evaluates to 1 if all operands are non-zero and not NULL,\nto 0 if one or more operands are 0, otherwise NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT 1 && 1;\n        -> 1\nmysql> SELECT 1 && 0;\n        -> 0\nmysql> SELECT 1 && NULL;\n        -> NULL\nmysql> SELECT 0 && NULL;\n        -> 0\nmysql> SELECT NULL && 0;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html'),
(297, 'X', 10, 'X(p)\n\nReturns the X-coordinate value for the point p as a double-precision\nnumber.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/point-property-functions.html\n\n', 'mysql> SET @pt = ''Point(56.7 53.34)'';\nmysql> SELECT X(GeomFromText(@pt));\n+----------------------+\n| X(GeomFromText(@pt)) |\n+----------------------+\n|                 56.7 |\n+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/point-property-functions.html'),
(298, 'FOUND_ROWS', 16, 'Syntax:\nFOUND_ROWS()\n\nA SELECT statement may include a LIMIT clause to restrict the number of\nrows the server returns to the client. In some cases, it is desirable\nto know how many rows the statement would have returned without the\nLIMIT, but without running the statement again. To obtain this row\ncount, include a SQL_CALC_FOUND_ROWS option in the SELECT statement,\nand then invoke FOUND_ROWS() afterward:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT SQL_CALC_FOUND_ROWS * FROM tbl_name\n    -> WHERE id > 100 LIMIT 10;\nmysql> SELECT FOUND_ROWS();\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(299, 'SYSTEM_USER', 16, 'Syntax:\nSYSTEM_USER()\n\nSYSTEM_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(300, 'CROSSES', 27, 'Crosses(g1,g2)\n\nReturns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon\nor a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,\nreturns 0.\n\nThe term spatially crosses denotes a spatial relation between two given\ngeometries that has the following properties:\n\no The two geometries intersect\n\no Their intersection results in a geometry that has a dimension that is\n  one less than the maximum dimension of the two given geometries\n\no Their intersection is not equal to either of the two given geometries\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(301, 'TRUNCATE TABLE', 25, 'Syntax:\nTRUNCATE [TABLE] tbl_name\n\nTRUNCATE TABLE empties a table completely. Logically, this is\nequivalent to a DELETE statement that deletes all rows, but there are\npractical differences under some circumstances.\n\nFor InnoDB tables, TRUNCATE TABLE is mapped to DELETE if there are\nforeign key constraints that reference the table; otherwise fast\ntruncation (dropping and re-creating the table) is used. The\nAUTO_INCREMENT counter is reset by TRUNCATE TABLE, regardless of\nwhether there is a foreign key constraint.\n\nFor other storage engines, TRUNCATE TABLE differs from DELETE in the\nfollowing ways in MySQL 5.1:\n\no Truncate operations drop and re-create the table, which is much\n  faster than deleting rows one by one.\n\no Truncate operations are not transaction-safe; an error occurs when\n  attempting one in the course of an active transaction or active table\n  lock.\n\no The number of deleted rows is not returned.\n\no As long as the table format file tbl_name.frm is valid, the table can\n  be re-created as an empty table with TRUNCATE TABLE, even if the data\n  or index files have become corrupted.\n\no The table handler does not remember the last used AUTO_INCREMENT\n  value, but starts counting from the beginning. This is true even for\n  MyISAM and InnoDB, which normally do not reuse sequence values.\n\no When used with partitioned tables, TRUNCATE TABLE preserves the\n  partitioning; that is, the data and index files are dropped and\n  re-created, while the partition definitions (.par) file is\n  unaffected.\n\no Since truncation of a table does not make any use of DELETE, the\n  TRUNCATE statement does not invoke ON DELETE triggers.\n\nTRUNCATE TABLE requires the DROP privilege as of MySQL 5.1.16. (Before\n5.1.16, it requires the DELETE privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/truncate.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/truncate.html'),
(302, 'BIT_XOR', 15, 'Syntax:\nBIT_XOR(expr)\n\nReturns the bitwise XOR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(303, 'CURRENT_DATE', 29, 'Syntax:\nCURRENT_DATE, CURRENT_DATE()\n\nCURRENT_DATE and CURRENT_DATE() are synonyms for CURDATE().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(304, 'AREA', 2, 'Area(poly)\n\nReturns as a double-precision number the area of the Polygon value\npoly, as measured in its spatial reference system.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html\n\n', 'mysql> SET @poly = ''Polygon((0 0,0 3,3 0,0 0),(1 1,1 2,2 1,1 1))'';\nmysql> SELECT Area(GeomFromText(@poly));\n+---------------------------+\n| Area(GeomFromText(@poly)) |\n+---------------------------+\n|                         4 |\n+---------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html'),
(305, 'START SLAVE', 25, 'Syntax:\nSTART SLAVE [thread_type [, thread_type] ... ]\nSTART SLAVE [SQL_THREAD] UNTIL\n    MASTER_LOG_FILE = ''log_name'', MASTER_LOG_POS = log_pos\nSTART SLAVE [SQL_THREAD] UNTIL\n    RELAY_LOG_FILE = ''log_name'', RELAY_LOG_POS = log_pos\n\nthread_type: IO_THREAD | SQL_THREAD\n\nSTART SLAVE with no thread_type options starts both of the slave\nthreads. The I/O thread reads queries from the master server and stores\nthem in the relay log. The SQL thread reads the relay log and executes\nthe queries. START SLAVE requires the SUPER privilege.\n\nIf START SLAVE succeeds in starting the slave threads, it returns\nwithout any error. However, even in that case, it might be that the\nslave threads start and then later stop (for example, because they do\nnot manage to connect to the master or read its binary logs, or some\nother problem). START SLAVE does not warn you about this. You must\ncheck the slave''s error log for error messages generated by the slave\nthreads, or check that they are running satisfactorily with SHOW SLAVE\nSTATUS.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/start-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/start-slave.html'),
(306, 'BEGIN END', 36, 'Syntax:\n[begin_label:] BEGIN\n    [statement_list]\nEND [end_label]\n\nBEGIN ... END syntax is used for writing compound statements, which can\nappear within stored routines and triggers. A compound statement can\ncontain multiple statements, enclosed by the BEGIN and END keywords.\nstatement_list represents a list of one or more statements. Each\nstatement within statement_list must be terminated by a semicolon (;)\nstatement delimiter. Note that statement_list is optional, which means\nthat the empty compound statement (BEGIN END) is legal.\n\nUse of multiple statements requires that a client is able to send\nstatement strings containing the ; statement delimiter. This is handled\nin the mysql command-line client with the delimiter command. Changing\nthe ; end-of-statement delimiter (for example, to //) allows ; to be\nused in a routine body. For an example, see [HELP CREATE PROCEDURE].\n\nA compound statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/begin-end.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/begin-end.html'),
(307, 'FLUSH', 25, 'Syntax:\nFLUSH [LOCAL | NO_WRITE_TO_BINLOG]\n    flush_option [, flush_option] ...\n\nThe FLUSH statement clears or reloads various internal caches used by\nMySQL. To execute FLUSH, you must have the RELOAD privilege.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/flush.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/flush.html'),
(308, 'SHOW PROCEDURE STATUS', 25, 'Syntax:\nSHOW {PROCEDURE | FUNCTION} STATUS\n    [LIKE ''pattern'' | WHERE expr]\n\nThese statements are MySQL extensions. They return characteristics of\nroutines, such as the database, name, type, creator, creation and\nmodification dates, and character set information. The LIKE clause, if\npresent, indicates which procedure or function names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-procedure-status.html\n\n', 'mysql> SHOW FUNCTION STATUS LIKE ''hello''\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: hello\n                Type: FUNCTION\n             Definer: testuser@localhost\n            Modified: 2004-08-03 15:29:37\n             Created: 2004-08-03 15:29:37\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-procedure-status.html'),
(309, 'SHOW WARNINGS', 25, 'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS shows the error, warning, and note messages that resulted\nfrom the last statement that generated messages, or nothing if the last\nstatement that used a table generated no messages. A related statement,\nSHOW ERRORS, shows only the errors. See [HELP SHOW ERRORS].\n\nThe list of messages is reset for each new statement that uses a table.\n\nThe SHOW COUNT(*) WARNINGS statement displays the total number of\nerrors, warnings, and notes. You can also retrieve this number from the\nwarning_count variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nThe value of warning_count might be greater than the number of messages\ndisplayed by SHOW WARNINGS if the max_error_count system variable is\nset so low that not all messages are stored. An example shown later in\nthis section demonstrates how this can happen.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\n[HELP SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-warnings.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-warnings.html'),
(310, 'DESCRIBE', 26, 'Syntax:\n{DESCRIBE | DESC} tbl_name [col_name | wild]\n\nDESCRIBE provides information about the columns in a table. It is a\nshortcut for SHOW COLUMNS FROM. These statements also display\ninformation for views. (See [HELP SHOW COLUMNS].)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/describe.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/describe.html'),
(311, 'DROP USER', 9, 'Syntax:\nDROP USER user [, user] ...\n\nThe DROP USER statement removes one or more MySQL accounts. It removes\nprivilege rows for the account from all grant tables. To use this\nstatement, you must have the global CREATE USER privilege or the DELETE\nprivilege for the mysql database. Each account is named using the same\nformat as for the GRANT statement; for example, ''jeffrey''@''localhost''.\nIf you specify only the username part of the account name, a hostname\npart of ''%'' is used. For additional information about specifying\naccount names, see [HELP GRANT].\n\nWith DROP USER, you can remove an account and its privileges as\nfollows:\n\nDROP USER user;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-user.html'),
(312, 'STDDEV_POP', 15, 'Syntax:\nSTDDEV_POP(expr)\n\nReturns the population standard deviation of expr (the square root of\nVAR_POP()). You can also use STD() or STDDEV(), which are equivalent\nbut not standard SQL.\n\nSTDDEV_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(313, 'SHOW CHARACTER SET', 25, 'Syntax:\nSHOW CHARACTER SET\n    [LIKE ''pattern'' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html. For example:\n\nmysql> SHOW CHARACTER SET LIKE ''latin%'';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-character-set.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-character-set.html'),
(314, 'SUBSTRING', 34, 'Syntax:\nSUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len),\nSUBSTRING(str FROM pos FOR len)\n\nThe forms without a len argument return a substring from string str\nstarting at position pos. The forms with a len argument return a\nsubstring len characters long from string str, starting at position\npos. The forms that use FROM are standard SQL syntax. It is also\npossible to use a negative value for pos. In this case, the beginning\nof the substring is pos characters from the end of the string, rather\nthan the beginning. A negative value may be used for pos in any of the\nforms of this function.\n\nFor all forms of SUBSTRING(), the position of the first character in\nthe string from which the substring is to be extracted is reckoned as\n1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING(''Quadratically'',5);\n        -> ''ratically''\nmysql> SELECT SUBSTRING(''foobarbar'' FROM 4);\n        -> ''barbar''\nmysql> SELECT SUBSTRING(''Quadratically'',5,6);\n        -> ''ratica''        \nmysql> SELECT SUBSTRING(''Sakila'', -3);\n        -> ''ila''        \nmysql> SELECT SUBSTRING(''Sakila'', -5, 3);\n        -> ''aki''\nmysql> SELECT SUBSTRING(''Sakila'' FROM -4 FOR 2);\n        -> ''ki''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(315, 'ISEMPTY', 33, 'IsEmpty(g)\n\nReturns 1 if the geometry value g is the empty geometry, 0 if it is not\nempty, and -1 if the argument is NULL. If the geometry is empty, it\nrepresents the empty point set.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html'),
(316, 'LTRIM', 34, 'Syntax:\nLTRIM(str)\n\nReturns the string str with leading space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LTRIM(''  barbar'');\n        -> ''barbar''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(317, 'INTERSECTS', 27, 'Intersects(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially intersects g2.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(318, 'CALL', 36, 'Syntax:\nCALL sp_name([parameter[,...]])\nCALL sp_name[()]\n\nThe CALL statement invokes a procedure that was defined previously with\nCREATE PROCEDURE.\n\nCALL can pass back values to its caller using parameters that are\ndeclared as OUT or INOUT parameters. It also "returns" the number of\nrows affected, which a client program can obtain at the SQL level by\ncalling the ROW_COUNT() function and from C by calling the\nmysql_affected_rows() C API function.\n\nAs of MySQL 5.1.13, stored procedures that take no arguments now can be\ninvoked without parentheses. That is, CALL p() and CALL p are\nequivalent.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/call.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/call.html'),
(319, 'MBRDISJOINT', 6, 'MBRDisjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are disjoint (do not intersect).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(320, 'VALUES', 14, 'Syntax:\nVALUES(col_name)\n\nIn an INSERT ... ON DUPLICATE KEY UPDATE statement, you can use the\nVALUES(col_name) function in the UPDATE clause to refer to column\nvalues from the INSERT portion of the statement. In other words,\nVALUES(col_name) in the UPDATE clause refers to the value of col_name\nthat would be inserted, had no duplicate-key conflict occurred. This\nfunction is especially useful in multiple-row inserts. The VALUES()\nfunction is meaningful only in INSERT ... ON DUPLICATE KEY UPDATE\nstatements and returns NULL otherwise.\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-on-duplicate.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> INSERT INTO table (a,b,c) VALUES (1,2,3),(4,5,6)\n    -> ON DUPLICATE KEY UPDATE c=VALUES(a)+VALUES(b);\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(321, 'SUBSTRING_INDEX', 34, 'Syntax:\nSUBSTRING_INDEX(str,delim,count)\n\nReturns the substring from string str before count occurrences of the\ndelimiter delim. If count is positive, everything to the left of the\nfinal delimiter (counting from the left) is returned. If count is\nnegative, everything to the right of the final delimiter (counting from\nthe right) is returned. SUBSTRING_INDEX() performs a case-sensitive\nmatch when searching for delim.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING_INDEX(''www.mysql.com'', ''.'', 2);\n        -> ''www.mysql''\nmysql> SELECT SUBSTRING_INDEX(''www.mysql.com'', ''.'', -2);\n        -> ''mysql.com''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(322, 'ENCODE', 11, 'Syntax:\nENCODE(str,pass_str)\n\nEncrypt str using pass_str as the password. To decrypt the result, use\nDECODE().\n\nThe result is a binary string of the same length as str.\n\nThe strength of the encryption is based on how good the random\ngenerator is. It should suffice for short strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(323, 'LOOP', 36, 'Syntax:\n[begin_label:] LOOP\n    statement_list\nEND LOOP [end_label]\n\nLOOP implements a simple loop construct, enabling repeated execution of\nthe statement list, which consists of one or more statements. The\nstatements within the loop are repeated until the loop is exited;\nusually this is accomplished with a LEAVE statement.\n\nA LOOP statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/loop-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/loop-statement.html'),
(324, 'TRUNCATE', 4, 'Syntax:\nTRUNCATE(X,D)\n\nReturns the number X, truncated to D decimal places. If D is 0, the\nresult has no decimal point or fractional part. D can be negative to\ncause D digits left of the decimal point of the value X to become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT TRUNCATE(1.223,1);\n        -> 1.2\nmysql> SELECT TRUNCATE(1.999,1);\n        -> 1.9\nmysql> SELECT TRUNCATE(1.999,0);\n        -> 1\nmysql> SELECT TRUNCATE(-1.999,1);\n        -> -1.9\nmysql> SELECT TRUNCATE(122,-2);\n       -> 100\nmysql> SELECT TRUNCATE(10.28*100,0);\n       -> 1028\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(325, 'TIMESTAMPADD', 29, 'Syntax:\nTIMESTAMPADD(unit,interval,datetime_expr)\n\nAdds the integer expression interval to the date or datetime expression\ndatetime_expr. The unit for interval is given by the unit argument,\nwhich should be one of the following values: FRAC_SECOND, SECOND,\nMINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, or YEAR.\n\nThe unit value may be specified using one of keywords as shown, or with\na prefix of SQL_TSI_. For example, DAY and SQL_TSI_DAY both are legal.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPADD(MINUTE,1,''2003-01-02'');\n        -> ''2003-01-02 00:01:00''\nmysql> SELECT TIMESTAMPADD(WEEK,1,''2003-01-02'');\n        -> ''2003-01-09''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(326, 'SHOW', 25, 'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW AUTHORS\nSHOW CHARACTER SET [like_or_where]\n[like_or_where]\nSHOW COLLATION [like_or_where]\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CONTRIBUTORS\nSHOW CREATE DATABASE db_name\nSHOW CREATE EVENT event_name\nSHOW CREATE FUNCTION funcname\nSHOW CREATE PROCEDURE procname\nSHOW CREATE TABLE tbl_name\nSHOW CREATE TRIGGER trigger_name\nSHOW CREATE VIEW view_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {STATUS | MUTEX}\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW [FULL] EVENTS\nSHOW FUNCTION CODE sp_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW INNODB STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PROCEDURE CODE sp_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW PLUGINS\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW SCHEDULER STATUS\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where:\n    LIKE ''pattern''\n  | WHERE expr\n\nThe SHOW statement also has forms that provide information about\nreplication master and slave servers and are described in [HELP PURGE\nMASTER LOGS]:\n\nSHOW BINARY LOGS\nSHOW BINLOG EVENTS\nSHOW MASTER STATUS\nSHOW SLAVE HOSTS\nSHOW SLAVE STATUS\n\nIf the syntax for a given SHOW statement includes a LIKE ''pattern''\npart, ''pattern'' is a string that can contain the SQL `%'' and `_''\nwildcard characters. The pattern is useful for restricting statement\noutput to matching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show.html'),
(327, 'GREATEST', 18, 'Syntax:\nGREATEST(value1,value2,...)\n\nWith two or more arguments, returns the largest (maximum-valued)\nargument. The arguments are compared using the same rules as for\nLEAST().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT GREATEST(2,0);\n        -> 2\nmysql> SELECT GREATEST(34.0,3.0,5.0,767.0);\n        -> 767.0\nmysql> SELECT GREATEST(''B'',''A'',''C'');\n        -> ''C''\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(328, 'SHOW VARIABLES', 25, 'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables. This\ninformation also can be obtained using the mysqladmin variables\ncommand. The LIKE clause, if present, indicates which variable names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nWith the GLOBAL modifier, SHOW VARIABLES displays the values that are\nused for new connections to MySQL. With SESSION, it displays the values\nthat are in effect for the current connection. If no modifier is\npresent, the default is SESSION. LOCAL is a synonym for SESSION.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE ''max_join_size'';\nSHOW SESSION VARIABLES LIKE ''max_join_size'';\n\nTo get a list of variables whose name match a pattern, use the `%''\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE ''%size%'';\nSHOW GLOBAL VARIABLES LIKE ''%size%'';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because `_'' is a wildcard that matches\nany single character, you should escape it as `\\_'' to match it\nliterally. In practice, this is rarely necessary.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-variables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-variables.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(329, 'BIT_AND', 15, 'Syntax:\nBIT_AND(expr)\n\nReturns the bitwise AND of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(330, 'SECOND', 29, 'Syntax:\nSECOND(time)\n\nReturns the second for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT SECOND(''10:05:03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(331, 'ATAN2', 4, 'Syntax:\nATAN(Y,X), ATAN2(Y,X)\n\nReturns the arc tangent of the two variables X and Y. It is similar to\ncalculating the arc tangent of Y / X, except that the signs of both\narguments are used to determine the quadrant of the result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(-2,2);\n        -> -0.78539816339745\nmysql> SELECT ATAN2(PI(),0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(332, 'MBRCONTAINS', 6, 'MBRContains(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\ncontains the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRWithin().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', 'mysql> SET @g1 = GeomFromText(''Polygon((0 0,0 3,3 3,3 0,0 0))'');\nmysql> SET @g2 = GeomFromText(''Point(1 1)'');\nmysql> SELECT MBRContains(@g1,@g2), MBRContains(@g2,@g1);\n----------------------+----------------------+\n| MBRContains(@g1,@g2) | MBRContains(@g2,@g1) |\n+----------------------+----------------------+\n|                    1 |                    0 |\n+----------------------+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(333, 'HOUR', 29, 'Syntax:\nHOUR(time)\n\nReturns the hour for time. The range of the return value is 0 to 23 for\ntime-of-day values. However, the range of TIME values actually is much\nlarger, so HOUR can return values greater than 23.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT HOUR(''10:05:03'');\n        -> 10\nmysql> SELECT HOUR(''272:59:59'');\n        -> 272\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(334, 'SELECT', 25, 'Syntax:\nSELECT\n    [ALL | DISTINCT | DISTINCTROW ]\n      [HIGH_PRIORITY]\n      [STRAIGHT_JOIN]\n      [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]\n      [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]\n    select_expr, ...\n    [FROM table_references\n    [WHERE where_condition]\n    [GROUP BY {col_name | expr | position}\n      [ASC | DESC], ... [WITH ROLLUP]]\n    [HAVING where_condition]\n    [ORDER BY {col_name | expr | position}\n      [ASC | DESC], ...]\n    [LIMIT {[offset,] row_count | row_count OFFSET offset}]\n    [PROCEDURE procedure_name(argument_list)]\n    [INTO OUTFILE ''file_name'' export_options\n      | INTO DUMPFILE ''file_name''\n      | INTO var_name [, var_name]]\n    [FOR UPDATE | LOCK IN SHARE MODE]]\n\nSELECT is used to retrieve rows selected from one or more tables, and\ncan include UNION statements and subqueries. See [HELP UNION], and\nhttp://dev.mysql.com/doc/refman/5.1/en/subqueries.html.\n\nThe most commonly used clauses of SELECT statements are these:\n\no Each select_expr indicates a column that you want to retrieve. There\n  must be at least one select_expr.\n\no table_references indicates the table or tables from which to retrieve\n  rows. Its syntax is described in [HELP JOIN].\n\no The WHERE clause, if given, indicates the condition or conditions\n  that rows must satisfy to be selected. where_condition is an\n  expression that evaluates to true for each row to be selected. The\n  statement selects all rows if there is no WHERE clause.\n\n  In the WHERE clause, you can use any of the functions and operators\n  that MySQL supports, except for aggregate (summary) functions. See\n  [HELP =].\n\nSELECT can also be used to retrieve rows computed without reference to\nany table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/select.html'),
(335, 'COT', 4, 'Syntax:\nCOT(X)\n\nReturns the cotangent of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT COT(12);\n        -> -1.5726734063977\nmysql> SELECT COT(0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(336, 'SHOW CREATE EVENT', 25, 'Syntax:\nSHOW CREATE EVENT event_name\n\nThis statement displays the CREATE EVENT statement needed to re-create\na given event. For example (using the same event e_daily defined and\nthen altered in\nhttp://dev.mysql.com/doc/refman/5.1/en/show-events.html):\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-event.html\n\n', 'mysql> SHOW CREATE EVENT test.e_daily\\G\n\n*************************** 1. row ***************************\n               Event: e_daily\n        Create Event: CREATE EVENT e_daily\n                        ON SCHEDULE EVERY 1 DAY\n                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n                        ENABLE\n                        COMMENT ''Saves total number of sessions and\n                                 clears the table once per day.''\n                        DO\n                          BEGIN\n                            INSERT INTO site_activity.totals (when, total)\n                              SELECT CURRENT_TIMESTAMP, COUNT(*) \n                              FROM site_activity.sessions;\n                            DELETE FROM site_activity.sessions;\n                          END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-event.html'),
(337, 'BACKUP TABLE', 20, 'Syntax:\nBACKUP TABLE tbl_name [, tbl_name] ... TO ''/path/to/backup/directory''\n\n*Note*: This statement is deprecated. We are working on a better\nreplacement for it that will provide online backup capabilities. In the\nmeantime, the mysqlhotcopy script can be used instead.\n\nBACKUP TABLE copies to the backup directory the minimum number of table\nfiles needed to restore the table, after flushing any buffered changes\nto disk. The statement works only for MyISAM tables. It copies the .frm\ndefinition and .MYD data files. The .MYI index file can be rebuilt from\nthose two files. The directory should be specified as a full pathname.\nTo restore the table, use RESTORE TABLE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/backup-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/backup-table.html'),
(338, 'LOAD_FILE', 34, 'Syntax:\nLOAD_FILE(file_name)\n\nReads the file and returns the file contents as a string. To use this\nfunction, the file must be located on the server host, you must specify\nthe full pathname to the file, and you must have the FILE privilege.\nThe file must be readable by all and its size less than\nmax_allowed_packet bytes.\n\nIf the file does not exist or cannot be read because one of the\npreceding conditions is not satisfied, the function returns NULL.\n\nAs of MySQL 5.1.6, the character_set_filesystem system variable\ncontrols interpretation of filenames that are given as literal strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> UPDATE t\n            SET blob_col=LOAD_FILE(''/tmp/picture'')\n            WHERE id=1;\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(339, 'POINTFROMTEXT', 3, 'PointFromText(wkt[,srid])\n\nConstructs a POINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html'),
(340, 'LOAD TABLE FROM MASTER', 25, 'Syntax:\nLOAD TABLE tbl_name FROM MASTER\n\nThis feature is deprecated. We recommend not using it anymore. It is\nsubject to removal in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated in\nversions 4.1 of MySQL and above. We will introduce a more advanced\ntechnique (called "online backup") in a future version. That technique\nwill have the additional advantage of working with more storage\nengines.\n\nFor MySQL 5.1 and earlier, the recommended alternative solution to\nusing LOAD DATA FROM MASTER or LOAD TABLE FROM MASTER is using\nmysqldump or mysqlhotcopy. The latter requires Perl and two Perl\nmodules (DBI and DBD:mysql) and works for MyISAM and ARCHIVE tables\nonly. With mysqldump, you can create SQL dumps on the master and pipe\n(or copy) these to a mysql client on the slave. This has the advantage\nof working for all storage engines, but can be quite slow, since it\nworks using SELECT.\n\nTransfers a copy of the table from the master to the slave. This\nstatement is implemented mainly debugging LOAD DATA FROM MASTER\noperations. To use LOAD TABLE, the account used for connecting to the\nmaster server must have the RELOAD and SUPER privileges on the master\nand the SELECT privilege for the master table to load. On the slave\nside, the user that issues LOAD TABLE FROM MASTER must have privileges\nfor dropping and creating the table.\n\nThe conditions for LOAD DATA FROM MASTER apply here as well. For\nexample, LOAD TABLE FROM MASTER works only for MyISAM tables. The\ntimeout notes for LOAD DATA FROM MASTER apply as well.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-table-from-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-table-from-master.html'),
(341, 'GROUP_CONCAT', 15, 'Syntax:\nGROUP_CONCAT(expr)\n\nThis function returns a string result with the concatenated non-NULL\nvalues from a group. It returns NULL if there are no non-NULL values.\nThe full syntax is as follows:\n\nGROUP_CONCAT([DISTINCT] expr [,expr ...]\n             [ORDER BY {unsigned_integer | col_name | expr}\n                 [ASC | DESC] [,col_name ...]]\n             [SEPARATOR str_val])\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name,\n    ->     GROUP_CONCAT(test_score)\n    ->     FROM student\n    ->     GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(342, 'DATE_FORMAT', 29, 'Syntax:\nDATE_FORMAT(date,format)\n\nFormats the date value according to the format string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'', ''%W %M %Y'');\n        -> ''Saturday October 1997''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'', ''%H:%i:%s'');\n        -> ''22:23:00''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'',\n                          ''%D %y %a %d %m %b %j'');\n        -> ''4th 97 Sat 04 10 Oct 277''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'',\n                          ''%H %k %I %r %T %S %w'');\n        -> ''22 22 10 10:23:00 PM 22:23:00 00 6''\nmysql> SELECT DATE_FORMAT(''1999-01-01'', ''%X %V'');\n        -> ''1998 52''\nmysql> SELECT DATE_FORMAT(''2006-06-00'', ''%d'');\n        -> ''00''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(343, 'BENCHMARK', 16, 'Syntax:\nBENCHMARK(count,expr)\n\nThe BENCHMARK() function executes the expression expr repeatedly count\ntimes. It may be used to time how quickly MySQL processes the\nexpression. The result value is always 0. The intended use is from\nwithin the mysql client, which reports query execution times:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT BENCHMARK(1000000,ENCODE(''hello'',''goodbye''));\n+----------------------------------------------+\n| BENCHMARK(1000000,ENCODE(''hello'',''goodbye'')) |\n+----------------------------------------------+\n|                                            0 |\n+----------------------------------------------+\n1 row in set (4.74 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(344, 'YEAR', 29, 'Syntax:\nYEAR(date)\n\nReturns the year for date, in the range 1000 to 9999, or 0 for the\n"zero" date.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEAR(''98-02-03'');\n        -> 1998\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(345, 'SHOW ENGINE', 25, 'Syntax:\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nSHOW ENGINE displays operational information about a storage engine.\nThe following statements currently are supported:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE {NDB | NDBCLUSTER} STATUS\n\nOlder (and now deprecated) synonyms are SHOW INNODB STATUS for SHOW\nENGINE INNODB STATUS and SHOW MUTEX STATUS for SHOW ENGINE INNODB\nMUTEX.\n\nIn MySQL 5.0, SHOW ENGINE INNODB MUTEX is invoked as SHOW MUTEX STATUS.\nThe latter statement displays similar information but in a somewhat\ndifferent output format.\n\nSHOW ENGINE BDB LOGS formerly displayed status information about BDB\nlog files. As of MySQL 5.1.12, the BDB storage engine is not supported,\nand this statement produces a warning.\n\nSHOW ENGINE INNODB STATUS displays extensive information about the\nstate of the InnoDB storage engine.\n\nThe InnoDB Monitors provide additional information about InnoDB\nprocessing. See\nhttp://dev.mysql.com/doc/refman/5.1/en/innodb-monitor.html.\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex statistics. From MySQL\n5.1.2 to 5.1.14, the statement displays the following output fields:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  The mutex name and the source file where it is implemented. Example:\n  &pool->mutex:mem0pool.c\n\n  The mutex name indicates its purpose. For example, the log_sys mutex\n  is used by the InnoDB logging subsystem and indicates how intensive\n  logging activity is. The buf_pool mutex protects the InnoDB buffer\n  pool.\n\no Status\n\n  The mutex status. The fields contains several values:\n\n  o count indicates how many times the mutex was requested.\n\n  o spin_waits indicates how many times the spinlock had to run.\n\n  o spin_rounds indicates the number of spinlock rounds. (spin_rounds\n    divided by spin_waits provides the average round count.)\n\n  o os_waits indicates the number of operating system waits. This\n    occurs when the spinlock did not work (the mutex was not locked\n    during the spinlock and it was necessary to yield to the operating\n    system and wait).\n\n  o os_yields indicates the number of times a the thread trying to lock\n    a mutex gave up its timeslice and yielded to the operating system\n    (on the presumption that allowing other threads to run will free\n    the mutex so that it can be locked).\n\n  o os_wait_times indicates the amount of time (in ms) spent in\n    operating system waits, if the timed_mutexes system variable is 1\n    (ON). If timed_mutexes is 0 (OFF), timing is disabled, so\n    os_wait_times is 0. timed_mutexes is off by default.\n\nFrom MySQL 5.1.15 on, the statement displays the following output\nfields:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  The source file where the mutex is implemented, and the line number\n  in the file where the mutex is created. The line number may change\n  depending on your version of MySQL.\n\no Status\n\n  This field displays the same values as previously described (count,\n  spin_waits, spin_rounds, os_waits, os_yields, os_wait_times), but\n  only if UNIV_DEBUG was defined at MySQL compilation time (for\n  example, in include/univ.h in the InnoDB part of the MySQL source\n  tree). If UNIV_DEBUG was not defined, the statement displays only the\n  os_waits value. In the latter case (without UNIV_DEBUG), the\n  information on which the output is based is insufficient to\n  distinguish regular mutexes and mutexes that protect rw-locks (which\n  allow multiple readers or a single writer). Consequently, the output\n  may appear to contain multiple rows for the same mutex.\n\nInformation from this statement can be used to diagnose system\nproblems. For example, large values of spin_waits and spin_rounds may\nindicate scalability problems.\n\nIf the server has the NDBCLUSTER storage engine enabled, SHOW ENGINE\nNDB STATUS displays cluster status information such as the number of\nconnected data nodes, the cluster connectstring, and cluster binlog\nepochs, as well as counts of various Cluster API objects created by the\nMySQL Server when connected to the cluster. Sample output from this\nstatement is shown here:\n\nmysql> SHOW ENGINE NDB STATUS;\n+------------+-----------------------+--------------------------------------------------+\n| Type       | Name                  | Status                                           |\n+------------+-----------------------+--------------------------------------------------+\n| ndbcluster | connection            | cluster_node_id=7, \n  connected_host=192.168.0.103, connected_port=1186, number_of_data_nodes=4, \n  number_of_ready_data_nodes=3, connect_count=0                                         |\n| ndbcluster | NdbTransaction        | created=6, free=0, sizeof=212                    |\n| ndbcluster | NdbOperation          | created=8, free=8, sizeof=660                    |\n| ndbcluster | NdbIndexScanOperation | created=1, free=1, sizeof=744                    |\n| ndbcluster | NdbIndexOperation     | created=0, free=0, sizeof=664                    |\n| ndbcluster | NdbRecAttr            | created=1285, free=1285, sizeof=60               |\n| ndbcluster | NdbApiSignal          | created=16, free=16, sizeof=136                  |\n| ndbcluster | NdbLabel              | created=0, free=0, sizeof=196                    |\n| ndbcluster | NdbBranch             | created=0, free=0, sizeof=24                     |\n| ndbcluster | NdbSubroutine         | created=0, free=0, sizeof=68                     |\n| ndbcluster | NdbCall               | created=0, free=0, sizeof=16                     |\n| ndbcluster | NdbBlob               | created=1, free=1, sizeof=264                    |\n| ndbcluster | NdbReceiver           | created=4, free=0, sizeof=68                     |\n| ndbcluster | binlog                | latest_epoch=155467, latest_trans_epoch=148126, \n  latest_received_binlog_epoch=0, latest_handled_binlog_epoch=0, \n  latest_applied_binlog_epoch=0                                                         |\n+------------+-----------------------+--------------------------------------------------+\n\nThe rows with connection and binlog in the Name column were added to\nthe output of this statement in MySQL 5.1. The Status column in each of\nthese rows provides information about the MySQL server''s connection to\nthe cluster and about the cluster binary log''s status, respectively.\nThe Status information is in the form of comma-delimited set of\nname/value pairs.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-engine.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-engine.html'),
(346, 'NAME_CONST', 14, 'Syntax:\nNAME_CONST(name,value)\n\nReturns the given value. When used to produce a result set column,\nNAME_CONST() causes the column to have the given name.\n\nmysql> SELECT NAME_CONST(''myname'', 14);\n+--------+\n| myname |\n+--------+\n|     14 |\n+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(347, 'RELEASE_LOCK', 14, 'Syntax:\nRELEASE_LOCK(str)\n\nReleases the lock named by the string str that was obtained with\nGET_LOCK(). Returns 1 if the lock was released, 0 if the lock was not\nestablished by this thread (in which case the lock is not released),\nand NULL if the named lock did not exist. The lock does not exist if it\nwas never obtained by a call to GET_LOCK() or if it has previously been\nreleased.\n\nThe DO statement is convenient to use with RELEASE_LOCK(). See [HELP\nDO].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(348, 'IS NULL', 18, 'Syntax:\nIS NULL, IS NOT NULL\n\nTests whether a value is or is not NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;\n        -> 0, 0, 1\nmysql> SELECT 1 IS NOT NULL, 0 IS NOT NULL, NULL IS NOT NULL;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(349, 'CONVERT_TZ', 29, 'Syntax:\nCONVERT_TZ(dt,from_tz,to_tz)\n\nCONVERT_TZ() converts a datetime value dt from the time zone given by\nfrom_tz to the time zone given by to_tz and returns the resulting\nvalue. Time zones are specified as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/time-zone-support.html. This\nfunction returns NULL if the arguments are invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT CONVERT_TZ(''2004-01-01 12:00:00'',''GMT'',''MET'');\n        -> ''2004-01-01 13:00:00''\nmysql> SELECT CONVERT_TZ(''2004-01-01 12:00:00'',''+00:00'',''+10:00'');\n        -> ''2004-01-01 22:00:00''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(350, 'TIME_TO_SEC', 29, 'Syntax:\nTIME_TO_SEC(time)\n\nReturns the time argument, converted to seconds.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_TO_SEC(''22:23:00'');\n        -> 80580\nmysql> SELECT TIME_TO_SEC(''00:39:38'');\n        -> 2378\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(351, 'WEEKDAY', 29, 'Syntax:\nWEEKDAY(date)\n\nReturns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 =\nSunday).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKDAY(''1998-02-03 22:23:00'');\n        -> 1\nmysql> SELECT WEEKDAY(''1997-11-05'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(352, 'EXPORT_SET', 34, 'Syntax:\nEXPORT_SET(bits,on,off[,separator[,number_of_bits]])\n\nReturns a string such that for every bit set in the value bits, you get\nan on string and for every bit not set in the value, you get an off\nstring. Bits in bits are examined from right to left (from low-order to\nhigh-order bits). Strings are added to the result from left to right,\nseparated by the separator string (the default being the comma\ncharacter `,''). The number of bits examined is given by number_of_bits\n(defaults to 64).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT EXPORT_SET(5,''Y'',''N'','','',4);\n        -> ''Y,N,Y,N''\nmysql> SELECT EXPORT_SET(6,''1'',''0'','','',10);\n        -> ''0,1,1,0,0,0,0,0,0,0''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(353, 'ALTER SERVER', 37, 'Syntax:\nALTER SERVER  server_name\nOPTIONS (option ...)\n\nAlters the server information for server_name, adjusting the specified\noptions as per the CREATE SERVER command. See [HELP CREATE SERVER]. The\ncorresponding fields in the mysql.servers table are updated\naccordingly. This statement requires the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-server.html\n\n', 'ALTER SERVER s OPTIONS (USER ''sally'');\n', 'http://dev.mysql.com/doc/refman/5.1/en/alter-server.html'),
(354, 'TIME FUNCTION', 29, 'Syntax:\nTIME(expr)\n\nExtracts the time part of the time or datetime expression expr and\nreturns it as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME(''2003-12-31 01:02:03'');\n        -> ''01:02:03''\nmysql> SELECT TIME(''2003-12-31 01:02:03.000123'');\n        -> ''01:02:03.000123''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(355, 'DATE_ADD', 29, 'Syntax:\nDATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)\n\nThese functions perform date arithmetic. date is a DATETIME or DATE\nvalue specifying the starting date. expr is an expression specifying\nthe interval value to be added or subtracted from the starting date.\nexpr is a string; it may start with a `-'' for negative intervals. unit\nis a keyword indicating the units in which the expression should be\ninterpreted.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT ''1997-12-31 23:59:59'' + INTERVAL 1 SECOND;\n        -> ''1998-01-01 00:00:00''\nmysql> SELECT INTERVAL 1 DAY + ''1997-12-31'';\n        -> ''1998-01-01''\nmysql> SELECT ''1998-01-01'' - INTERVAL 1 SECOND;\n        -> ''1997-12-31 23:59:59''\nmysql> SELECT DATE_ADD(''1997-12-31 23:59:59'',\n    ->                 INTERVAL 1 SECOND);\n        -> ''1998-01-01 00:00:00''\nmysql> SELECT DATE_ADD(''1997-12-31 23:59:59'',\n    ->                 INTERVAL 1 DAY);\n        -> ''1998-01-01 23:59:59''\nmysql> SELECT DATE_ADD(''1997-12-31 23:59:59'',\n    ->                 INTERVAL ''1:1'' MINUTE_SECOND);\n        -> ''1998-01-01 00:01:00''\nmysql> SELECT DATE_SUB(''1998-01-01 00:00:00'',\n    ->                 INTERVAL ''1 1:1:1'' DAY_SECOND);\n        -> ''1997-12-30 22:58:59''\nmysql> SELECT DATE_ADD(''1998-01-01 00:00:00'',\n    ->                 INTERVAL ''-1 10'' DAY_HOUR);\n        -> ''1997-12-30 14:00:00''\nmysql> SELECT DATE_SUB(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\nmysql> SELECT DATE_ADD(''1992-12-31 23:59:59.000002'',\n    ->            INTERVAL ''1.999999'' SECOND_MICROSECOND);\n        -> ''1993-01-01 00:00:01.000001''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(356, 'CAST', 34, 'Syntax:\nCAST(expr AS type), CONVERT(expr,type), CONVERT(expr USING\ntranscoding_name)\n\nThe CAST() and CONVERT() functions take a value of one type and produce\na value of another type.\n\nThe type can be one of the following values:\n\no BINARY[(N)]\n\no CHAR[(N)]\n\no DATE\n\no DATETIME\n\no DECIMAL\n\no SIGNED [INTEGER]\n\no TIME\n\no UNSIGNED [INTEGER]\n\nBINARY produces a string with the BINARY data type. See\nhttp://dev.mysql.com/doc/refman/5.1/en/binary-varbinary.html for a\ndescription of how this affects comparisons. If the optional length N\nis given, BINARY(N) causes the cast to use no more than N bytes of the\nargument. Values shorter than N bytes are padded with 0x00 bytes to a\nlength of N.\n\nCHAR(N) causes the cast to use no more than N characters of the\nargument.\n\nCAST() and CONVERT(... USING ...) are standard SQL syntax. The\nnon-USING form of CONVERT() is ODBC syntax.\n\nCONVERT() with USING is used to convert data between different\ncharacter sets. In MySQL, transcoding names are the same as the\ncorresponding character set names. For example, this statement converts\nthe string ''abc'' in the default character set to the corresponding\nstring in the utf8 character set:\n\nSELECT CONVERT(''abc'' USING utf8);\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html\n\n', 'SELECT enum_col FROM tbl_name ORDER BY CAST(enum_col AS CHAR);\n', 'http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html'),
(357, 'SOUNDS LIKE', 34, 'Syntax:\nexpr1 SOUNDS LIKE expr2\n\nThis is the same as SOUNDEX(expr1) = SOUNDEX(expr2).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(358, 'PERIOD_DIFF', 29, 'Syntax:\nPERIOD_DIFF(P1,P2)\n\nReturns the number of months between periods P1 and P2. P1 and P2\nshould be in the format YYMM or YYYYMM. Note that the period arguments\nP1 and P2 are not date values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_DIFF(9802,199703);\n        -> 11\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(359, 'LIKE', 34, 'Syntax:\nexpr LIKE pat [ESCAPE ''escape_char'']\n\nPattern matching using SQL simple regular expression comparison.\nReturns 1 (TRUE) or 0 (FALSE). If either expr or pat is NULL, the\nresult is NULL.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', 'mysql> SELECT ''David!'' LIKE ''David_'';\n        -> 1\nmysql> SELECT ''David!'' LIKE ''%D%v%'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html'),
(360, 'MULTIPOINT', 23, 'MultiPoint(pt1,pt2,...)\n\nConstructs a WKB MultiPoint value using WKB Point arguments. If any\nargument is not a WKB Point, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html'),
(361, '>>', 19, 'Syntax:\n>>\n\nShifts a longlong (BIGINT) number to the right.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 4 >> 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(362, 'FETCH', 36, 'Syntax:\nFETCH cursor_name INTO var_name [, var_name] ...\n\nThis statement fetches the next row (if a row exists) using the\nspecified open cursor, and advances the cursor pointer.\n\nIf no more rows are available, a No Data condition occurs with SQLSTATE\nvalue 02000. To detect this condition, you can set up a handler for it.\nAn example is shown in [HELP DECLARE CURSOR].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/fetch.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/fetch.html'),
(363, 'AVG', 15, 'Syntax:\nAVG([DISTINCT] expr)\n\nReturns the average value of expr. The DISTINCT option can be used to\nreturn the average of the distinct values of expr.\n\nAVG() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, AVG(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(364, 'TRUE FALSE', 28, 'The constants TRUE and FALSE evaluate to 1 and 0, respectively. The\nconstant names can be written in any lettercase.\n\nmysql> SELECT TRUE, true, FALSE, false;\n        -> 1, 1, 0, 0\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/boolean-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/boolean-values.html'),
(365, 'MBRWITHIN', 6, 'MBRWithin(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\nis within the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRContains().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', 'mysql> SET @g1 = GeomFromText(''Polygon((0 0,0 3,3 3,3 0,0 0))'');\nmysql> SET @g2 = GeomFromText(''Polygon((0 0,0 5,5 5,5 0,0 0))'');\nmysql> SELECT MBRWithin(@g1,@g2), MBRWithin(@g2,@g1);\n+--------------------+--------------------+\n| MBRWithin(@g1,@g2) | MBRWithin(@g2,@g1) |\n+--------------------+--------------------+\n|                  1 |                  0 |\n+--------------------+--------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(366, 'IN', 18, 'Syntax:\nexpr IN (value,...)\n\nReturns 1 if expr is equal to any of the values in the IN list, else\nreturns 0. If all values are constants, they are evaluated according to\nthe type of expr and sorted. The search for the item then is done using\na binary search. This means IN is very quick if the IN value list\nconsists entirely of constants. Otherwise, type conversion takes place\naccording to the rules described in\nhttp://dev.mysql.com/doc/refman/5.1/en/type-conversion.html, but\napplied to all the arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 IN (0,3,5,7);\n        -> 0\nmysql> SELECT ''wefwf'' IN (''wee'',''wefwf'',''weg'');\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(367, 'QUOTE', 34, 'Syntax:\nQUOTE(str)\n\nQuotes a string to produce a result that can be used as a properly\nescaped data value in an SQL statement. The string is returned enclosed\nby single quotes and with each instance of single quote (`''''),\nbackslash (`\\''), ASCII NUL, and Control-Z preceded by a backslash. If\nthe argument is NULL, the return value is the word "NULL" without\nenclosing single quotes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT QUOTE(''Don\\''t!'');\n        -> ''Don\\''t!''\nmysql> SELECT QUOTE(NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(368, 'SESSION_USER', 16, 'Syntax:\nSESSION_USER()\n\nSESSION_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(369, 'HELP COMMAND', 26, 'Syntax:\nmysql> help search_string\n\nIf you provide an argument to the help command, mysql uses it as a\nsearch string to access server-side help from the contents of the MySQL\nReference Manual. The proper operation of this command requires that\nthe help tables in the mysql database be initialized with help topic\ninformation (see\nhttp://dev.mysql.com/doc/refman/5.1/en/server-side-help-support.html).\n\nIf there is no match for the search string, the search fails:\n\nmysql> help me\n\nNothing found\nPlease try to run ''help contents'' for a list of all accessible topics\n\nUse help contents to see a list of the help categories:\n\nmysql> help contents\nYou asked for help about help category: "Contents"\nFor more information, type ''help <item>'', where <item> is one of the\nfollowing categories:\n   Account Management\n   Administration\n   Data Definition\n   Data Manipulation\n   Data Types\n   Functions\n   Functions and Modifiers for Use with GROUP BY\n   Geographic Features\n   Language Structure\n   Plugins\n   Storage Engines\n   Stored Routines\n   Table Maintenance\n   Transactions\n   Triggers\n\nIf the search string matches multiple items, mysql shows a list of\nmatching topics:\n\nmysql> help logs\nMany help items for your request exist.\nTo make a more specific request, please type ''help <item>'',\nwhere <item> is one of the following topics:\n   SHOW\n   SHOW BINARY LOGS\n   SHOW ENGINE\n   SHOW LOGS\n\nUse a topic as the search string to see the help entry for that topic:\n\nmysql> help show binary logs\nName: ''SHOW BINARY LOGS''\nDescription:\nSyntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [purge-master-logs], that shows how\nto determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mysql-server-side-help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/mysql-server-side-help.html'),
(370, 'QUARTER', 29, 'Syntax:\nQUARTER(date)\n\nReturns the quarter of the year for date, in the range 1 to 4.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT QUARTER(''98-04-01'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(371, 'POSITION', 34, 'Syntax:\nPOSITION(substr IN str)\n\nPOSITION(substr IN str) is a synonym for LOCATE(substr,str).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(372, 'IS_USED_LOCK', 14, 'Syntax:\nIS_USED_LOCK(str)\n\nChecks whether the lock named str is in use (that is, locked). If so,\nit returns the connection identifier of the client that holds the lock.\nOtherwise, it returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(373, 'POLYFROMTEXT', 3, 'PolyFromText(wkt[,srid]), PolygonFromText(wkt[,srid])\n\nConstructs a POLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html'),
(374, 'DES_ENCRYPT', 11, 'Syntax:\nDES_ENCRYPT(str[,{key_num|key_str}])\n\nEncrypts the string with the given key using the Triple-DES algorithm.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'key_num des_key_str\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(375, 'LENGTH', 34, 'Syntax:\nLENGTH(str)\n\nReturns the length of the string str, measured in bytes. A multi-byte\ncharacter counts as multiple bytes. This means that for a string\ncontaining five two-byte characters, LENGTH() returns 10, whereas\nCHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LENGTH(''text'');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(376, 'STR_TO_DATE', 29, 'Syntax:\nSTR_TO_DATE(str,format)\n\nThis is the inverse of the DATE_FORMAT() function. It takes a string\nstr and a format string format. STR_TO_DATE() returns a DATETIME value\nif the format string contains both date and time parts, or a DATE or\nTIME value if the string contains only date or time parts.\n\nThe date, time, or datetime values contained in str should be given in\nthe format indicated by format. For the specifiers that can be used in\nformat, see the DATE_FORMAT() function description. If str contains an\nillegal date, time, or datetime value, STR_TO_DATE() returns NULL. An\nillegal value also produces a warning.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(377, 'Y', 10, 'Y(p)\n\nReturns the Y-coordinate value for the point p as a double-precision\nnumber.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/point-property-functions.html\n\n', 'mysql> SET @pt = ''Point(56.7 53.34)'';\nmysql> SELECT Y(GeomFromText(@pt));\n+----------------------+\n| Y(GeomFromText(@pt)) |\n+----------------------+\n|                53.34 |\n+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/point-property-functions.html'),
(378, 'SHOW INNODB STATUS', 25, 'Syntax:\nSHOW INNODB STATUS\n\nIn MySQL 5.1, this is a deprecated synonym for SHOW ENGINE INNODB\nSTATUS. See [HELP SHOW ENGINE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-innodb-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-innodb-status.html'),
(379, 'CHECKSUM TABLE', 20, 'Syntax:\nCHECKSUM TABLE tbl_name [, tbl_name] ... [ QUICK | EXTENDED ]\n\nCHECKSUM TABLE reports a table checksum.\n\nWith QUICK, the live table checksum is reported if it is available, or\nNULL otherwise. This is very fast. A live checksum is enabled by\nspecifying the CHECKSUM=1 table option when you create the table;\ncurrently, this is supported only for MyISAM tables. See [HELP CREATE\nTABLE].\n\nWith EXTENDED, the entire table is read row by row and the checksum is\ncalculated. This can be very slow for large tables.\n\nIf neither QUICK nor EXTENDED is specified, MySQL returns a live\nchecksum if the table storage engine supports it and scans the table\notherwise.\n\nFor a non-existent table, CHECKSUM TABLE returns NULL and generates a\nwarning.\n\nThe checksum value depends on the table row format. If the row format\nchanges, the checksum also changes. For example, the storage format for\nVARCHAR changed between MySQL 4.1 and 5.0, so if a 4.1 table is\nupgraded to MySQL 5.0, the checksum value may change.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/checksum-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/checksum-table.html'),
(380, 'NUMINTERIORRINGS', 2, 'NumInteriorRings(poly)\n\nReturns the number of interior rings in the Polygon value poly.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT NumInteriorRings(GeomFromText(@poly));\n+---------------------------------------+\n| NumInteriorRings(GeomFromText(@poly)) |\n+---------------------------------------+\n|                                     1 |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html'),
(381, 'INTERIORRINGN', 2, 'InteriorRingN(poly,N)\n\nReturns the N-th interior ring for the Polygon value poly as a\nLineString. Rings are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT AsText(InteriorRingN(GeomFromText(@poly),1));\n+----------------------------------------------+\n| AsText(InteriorRingN(GeomFromText(@poly),1)) |\n+----------------------------------------------+\n| LINESTRING(1 1,1 2,2 2,2 1,1 1)              |\n+----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html'),
(382, 'UTC_TIME', 29, 'Syntax:\nUTC_TIME, UTC_TIME()\n\nReturns the current UTC time as a value in ''HH:MM:SS'' or HHMMSS format,\ndepending on whether the function is used in a string or numeric\ncontext.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIME(), UTC_TIME() + 0;\n        -> ''18:07:53'', 180753\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(383, 'DROP FUNCTION', 35, 'Syntax:\nDROP FUNCTION function_name\n\nThis statement drops the user-defined function (UDF) named\nfunction_name.\n\nTo drop a function, you must have the DELETE privilege for the mysql\ndatabase. This is because DROP FUNCTION removes a row from the\nmysql.func system table that records the function''s name, type, and\nshared library name.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-function.html'),
(384, 'ALTER EVENT', 37, 'Syntax:\nALTER EVENT\n    [DEFINER = { user | CURRENT_USER }]\n    event_name\n    [ON SCHEDULE schedule]\n    [RENAME TO new_event_name]\n    [ON COMPLETION [NOT] PRESERVE]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT ''comment'']\n    [DO sql_statement]\n\nThe ALTER EVENT statement is used to change one or more of the\ncharacteristics of an existing event without the need to drop and\nrecreate it. The syntax for each of the DEFINER, ON SCHEDULE, ON\nCOMPLETION, COMMENT, ENABLE / DISABLE, and DO clauses is exactly the\nsame as when used with CREATE EVENT. (See [HELP CREATE EVENT].)\n\nSupport for the DEFINER clause was added in MySQL 5.1.17.\n\nBeginning with MySQL 5.1.12, any user can alter an event defined on a\ndatabase for which that user has the EVENT privilege. When a user\nexecutes a successful ALTER EVENT statement, that user becomes the\ndefiner for the affected event.\n\n(In MySQL 5.1.11 and earlier, an event could be altered only by its\ndefiner, or by a user having the SUPER privilege.)\n\nALTER EVENT works only with an existing event:\n\nmysql> ALTER EVENT no_such_event \n     >     ON SCHEDULE \n     >       EVERY ''2:3'' DAY_HOUR;\nERROR 1517 (HY000): Unknown event ''no_such_event''\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-event.html'),
(385, 'STDDEV', 15, 'Syntax:\nSTD(expr) STDDEV(expr)\n\nReturns the population standard deviation of expr. This is an extension\nto standard SQL. The STDDEV() form of this function is provided for\ncompatibility with Oracle. The standard SQL function STDDEV_POP() can\nbe used instead.\n\nThese functions return NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(386, 'DATE_SUB', 29, 'Syntax:\nDATE_SUB(date,INTERVAL expr unit)\n\nSee DATE_ADD().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(387, 'PERIOD_ADD', 29, 'Syntax:\nPERIOD_ADD(P,N)\n\nAdds N months to period P (in the format YYMM or YYYYMM). Returns a\nvalue in the format YYYYMM. Note that the period argument P is not a\ndate value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_ADD(9801,2);\n        -> 199803\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(388, '|', 19, 'Syntax:\n|\n\nBitwise OR:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 29 | 15;\n        -> 31\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(389, 'GEOMFROMTEXT', 3, 'GeomFromText(wkt[,srid]), GeometryFromText(wkt[,srid])\n\nConstructs a geometry value of any type using its WKT representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html'),
(390, 'RIGHT', 34, 'Syntax:\nRIGHT(str,len)\n\nReturns the rightmost len characters from the string str, or NULL if\nany argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT RIGHT(''foobarbar'', 4);\n        -> ''rbar''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(391, 'DATEDIFF', 29, 'Syntax:\nDATEDIFF(expr1,expr2)\n\nDATEDIFF() returns expr1 - expr2 expressed as a value in days from one\ndate to the other. expr1 and expr2 are date or date-and-time\nexpressions. Only the date parts of the values are used in the\ncalculation.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATEDIFF(''1997-12-31 23:59:59'',''1997-12-30'');\n        -> 1\nmysql> SELECT DATEDIFF(''1997-11-30 23:59:59'',''1997-12-31'');\n        -> -31\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(392, 'DROP PROCEDURE', 36, 'Syntax:\nDROP {PROCEDURE | FUNCTION} [IF EXISTS] sp_name\n\nThis statement is used to drop a stored procedure or function. That is,\nthe specified routine is removed from the server. You must have the\nALTER ROUTINE privilege for the routine. (That privilege is granted\nautomatically to the routine creator.)\n\nThe IF EXISTS clause is a MySQL extension. It prevents an error from\noccurring if the procedure or function does not exist. A warning is\nproduced that can be viewed with SHOW WARNINGS.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-procedure.html'),
(393, 'CHECK TABLE', 20, 'Syntax:\nCHECK TABLE tbl_name [, tbl_name] ... [option] ...\n\noption = {FOR UPGRADE | QUICK | FAST | MEDIUM | EXTENDED | CHANGED}\n\nCHECK TABLE checks a table or tables for errors. CHECK TABLE works for\nMyISAM, InnoDB, and ARCHIVE tables. Starting with MySQL 5.1.9, CHECK is\nalso valid for CSV tables, see\nhttp://dev.mysql.com/doc/refman/5.1/en/csv-storage-engine.html. For\nMyISAM tables, the key statistics are updated as well.\n\nCHECK TABLE can also check views for problems, such as tables that are\nreferenced in the view definition that no longer exist.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/check-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/check-table.html'),
(394, 'BIN', 34, 'Syntax:\nBIN(N)\n\nReturns a string representation of the binary value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,2). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT BIN(12);\n        -> ''1100''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(395, 'CASE FUNCTION', 7, 'Syntax:\nCASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN\nresult ...] [ELSE result] END\n\nCASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]\n[ELSE result] END\n\nThe first version returns the result where value=compare_value. The\nsecond version returns the result for the first condition that is true.\nIf there was no matching result value, the result after ELSE is\nreturned, or NULL if there is no ELSE part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT CASE 1 WHEN 1 THEN ''one''\n    ->     WHEN 2 THEN ''two'' ELSE ''more'' END;\n        -> ''one''\nmysql> SELECT CASE WHEN 1>0 THEN ''true'' ELSE ''false'' END;\n        -> ''true''\nmysql> SELECT CASE BINARY ''B''\n    ->     WHEN ''a'' THEN 1 WHEN ''b'' THEN 2 END;\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(396, 'INSTALL PLUGIN', 5, 'Syntax:\nINSTALL PLUGIN plugin_name SONAME ''plugin_library''\n\nThis statement installs a plugin.\n\nplugin_name is the name of the plugin as defined in the plugin\ndeclaration structure contained in the library file. Plugin name case\nsensitivity is determined by the host system filename semantics.\n\nplugin_library is the name of the shared library that contains the\nplugin code. The name includes the filename extension (for example,\nlibmyplugin.so or libmyplugin.dylib).\n\nThe shared library must be located in the plugin directory (that is,\nthe directory named by the plugin_dir system variable). The library\nmust be in the plugin directory itself, not in a subdirectory. By\ndefault, plugin_dir is the directory named by the pkglibdir\nconfiguration variable, but it can be changed by setting the value of\nplugin_dir at server startup. For example, set its value in a my.cnf\nfile:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\n\nIf the value of plugin_dir is a relative pathname, it is taken to be\nrelative to the MySQL base directory (the value of the basedir system\nvariable).\n\nINSTALL PLUGIN adds a line to the mysql.plugin table that describes the\nplugin. This table contains the plugin name and library filename.\n\nINSTALL PLUGIN also loads and initializes the plugin code to make the\nplugin available for use. A plugin is initialized by executing its\ninitialization function, which handles any setup that the plugin must\nperform before it can be used.\n\nTo use INSTALL PLUGIN, you must have the INSERT privilege for the\nmysql.plugin table.\n\nAt server startup, the server loads and initializes any plugin that is\nlisted in the mysql.plugin table. This means that a plugin is installed\nwith INSTALL PLUGIN only once, not every time the server starts. Plugin\nloading at startup does not occur if the server is started with the\n--skip-grant-tables option.\n\nWhen the server shuts down, it executes the deinitialization function\nfor each plugin that is loaded so that the plugin has a change to\nperform any final cleanup.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/install-plugin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/install-plugin.html'),
(397, 'DECLARE CURSOR', 36, 'Syntax:\nDECLARE cursor_name CURSOR FOR select_statement\n\nThis statement declares a cursor. Multiple cursors may be declared in a\nroutine, but each cursor in a given block must have a unique name.\n\nThe SELECT statement cannot have an INTO clause.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-cursors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/declare-cursors.html'),
(398, 'MULTILINESTRING', 23, 'MultiLineString(ls1,ls2,...)\n\nConstructs a WKB MultiLineString value using WKB LineString arguments.\nIf any argument is not a WKB LineString, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html'),
(399, 'LOAD DATA', 25, 'Syntax:\nLOAD DATA [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE ''file_name''\n    [REPLACE | IGNORE]\n    INTO TABLE tbl_name\n    [CHARACTER SET charset_name]\n    [FIELDS\n        [TERMINATED BY ''string'']\n        [[OPTIONALLY] ENCLOSED BY ''char'']\n        [ESCAPED BY ''char'']\n    ]\n    [LINES\n        [STARTING BY ''string'']\n        [TERMINATED BY ''string'']\n    ]\n    [IGNORE number LINES]\n    [(col_name_or_user_var,...)]\n    [SET col_name = expr,...]\n\nThe LOAD DATA INFILE statement reads rows from a text file into a table\nat a very high speed. The filename must be given as a literal string.\n\nLOAD DATA INFILE is the complement of SELECT ... INTO OUTFILE. (See\n[HELP SELECT].) To write data from a table to a file, use SELECT ...\nINTO OUTFILE. To read the file back into a table, use LOAD DATA INFILE.\nThe syntax of the FIELDS and LINES clauses is the same for both\nstatements. Both clauses are optional, but FIELDS must precede LINES if\nboth are specified.\n\nFor more information about the efficiency of INSERT versus LOAD DATA\nINFILE and speeding up LOAD DATA INFILE, see\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-speed.html.\n\nThe character set indicated by the character_set_database system\nvariable is used to interpret the information in the file. SET NAMES\nand the setting of character_set_client do not affect interpretation of\ninput. Beginning with MySQL 5.1.17, if the contents of the input file\nuse a character set that differs from the default, it is possible (and\nusually preferable) to use the CHARACTER SET clause to specify the\ncharacter set of the file.\n\nLOAD DATA INFILE interprets all fields in the file as having the same\ncharacter set, regardless of the data types of the columns into which\nfield values are loaded. For proper interpretation of file contents,\nyou must ensure that it was written with the correct character set. For\nexample, if you write a data file with mysqldump -T or by issuing a\nSELECT ... INTO OUTFILE statement in mysql, be sure to use a\n--default-character-set option with mysqldump or mysql so that output\nis written in the character set to be used when the file is loaded with\nLOAD DATA INFILE.\n\nNote that it is currently not possible to load data files that use the\nucs2 character set.\n\nAs of MySQL 5.1.6, the character_set_filesystem system variable\ncontrols the interpretation of the filename.\n\nYou can also load data files by using the mysqlimport utility; it\noperates by sending a LOAD DATA INFILE statement to the server. The\n--local option causes mysqlimport to read data files from the client\nhost. You can specify the --compress option to get better performance\nover slow networks if the client and server support the compressed\nprotocol. See http://dev.mysql.com/doc/refman/5.1/en/mysqlimport.html.\n\nIf you use LOW_PRIORITY, execution of the LOAD DATA statement is\ndelayed until no other clients are reading from the table. This affects\nonly storage engines that use only table-level locking (MyISAM, MEMORY,\nMERGE).\n\nIf you specify CONCURRENT with a MyISAM table that satisfies the\ncondition for concurrent inserts (that is, it contains no free blocks\nin the middle), other threads can retrieve data from the table while\nLOAD DATA is executing. Using this option affects the performance of\nLOAD DATA a bit, even if no other thread is using the table at the same\ntime.\n\nThe LOCAL keyword, if specified, is interpreted with respect to the\nclient end of the connection:\n\no If LOCAL is specified, the file is read by the client program on the\n  client host and sent to the server. The file can be given as a full\n  pathname to specify its exact location. If given as a relative\n  pathname, the name is interpreted relative to the directory in which\n  the client program was started.\n\no If LOCAL is not specified, the file must be located on the server\n  host and is read directly by the server. The server uses the\n  following rules to locate the file:\n\n  o If the filename is an absolute pathname, the server uses it as\n    given.\n\n  o If the filename is a relative pathname with one or more leading\n    components, the server searches for the file relative to the\n    server''s data directory.\n\n  o If a filename with no leading components is given, the server looks\n    for the file in the database directory of the default database.\n\nNote that, in the non-LOCAL case, these rules mean that a file named as\n./myfile.txt is read from the server''s data directory, whereas the file\nnamed as myfile.txt is read from the database directory of the default\ndatabase. For example, if db1 is the default database, the following\nLOAD DATA statement reads the file data.txt from the database directory\nfor db1, even though the statement explicitly loads the file into a\ntable in the db2 database:\n\nLOAD DATA INFILE ''data.txt'' INTO TABLE db2.my_table;\n\nWindows pathnames are specified using forward slashes rather than\nbackslashes. If you do use backslashes, you must double them.\n\nFor security reasons, when reading text files located on the server,\nthe files must either reside in the database directory or be readable\nby all. Also, to use LOAD DATA INFILE on server files, you must have\nthe FILE privilege. See\nhttp://dev.mysql.com/doc/refman/5.1/en/privileges-provided.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-data.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-data.html'),
(400, 'LOCALTIME', 29, 'Syntax:\nLOCALTIME, LOCALTIME()\n\nLOCALTIME and LOCALTIME() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(401, 'MPOINTFROMTEXT', 3, 'MPointFromText(wkt[,srid]), MultiPointFromText(wkt[,srid])\n\nConstructs a MULTIPOINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html'),
(402, 'BLOB', 21, 'BLOB[(M)]\n\nA BLOB column with a maximum length of 65,535 (216 - 1) bytes.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest BLOB type large enough to hold\nvalues M bytes long.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(403, 'PASSWORD', 11, 'Syntax:\nPASSWORD(str)\n\nCalculates and returns a password string from the plaintext password\nstr and returns a binary string, or NULL if the argument was NULL. This\nis the function that is used for encrypting MySQL passwords for storage\nin the Password column of the user grant table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT PASSWORD(''badpwd'');\n        -> ''*AAB3E285149C0135D51A520E1940DD3263DC008C''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(404, 'CHAR', 21, '[NATIONAL] CHAR(M) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA fixed-length string that is always right-padded with spaces to the\nspecified length when stored. M represents the column length. The range\nof M is 0 to 255 characters.\n\n*Note*: Trailing spaces are removed when CHAR values are retrieved.\n\nIf you attempt to set the length of a CHAR greater than 255, the CREATE\nTABLE or ALTER TABLE statement in which this is done fails with an\nerror:\n\nmysql> CREATE TABLE c1 (col1 INT, col2 CHAR(500));\nERROR 1074 (42000): Column length too big for column ''col'' (max = 255);\nuse BLOB or TEXT instead\nmysql> SHOW CREATE TABLE c1;\nERROR 1146 (42S02): Table ''test.c1'' doesn''t exist\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(405, 'UTC_DATE', 29, 'Syntax:\nUTC_DATE, UTC_DATE()\n\nReturns the current UTC date as a value in ''YYYY-MM-DD'' or YYYYMMDD\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_DATE(), UTC_DATE() + 0;\n        -> ''2003-08-14'', 20030814\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(406, 'DIMENSION', 33, 'Dimension(g)\n\nReturns the inherent dimension of the geometry value g. The result can\nbe -1, 0, 1, or 2. The meaning of these values is given in [HELP MBR\ndefinition].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT Dimension(GeomFromText(''LineString(1 1,2 2)''));\n+------------------------------------------------+\n| Dimension(GeomFromText(''LineString(1 1,2 2)'')) |\n+------------------------------------------------+\n|                                              1 |\n+------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html'),
(407, 'COUNT DISTINCT', 15, 'Syntax:\nCOUNT(DISTINCT expr,[expr...])\n\nReturns a count of the number of different non-NULL values.\n\nCOUNT(DISTINCT) returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT COUNT(DISTINCT results) FROM student;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(408, 'BIT', 21, 'BIT[(M)]\n\nA bit-field type. M indicates the number of bits per value, from 1 to\n64. The default is 1 if M is omitted.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(409, 'EQUALS', 27, 'Equals(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially equal to g2.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(410, 'SHOW CREATE VIEW', 25, 'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows a CREATE VIEW statement that creates the given\nview.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-view.html'),
(411, 'INTERVAL', 18, 'Syntax:\nINTERVAL(N,N1,N2,N3,...)\n\nReturns 0 if N < N1, 1 if N < N2 and so on or -1 if N is NULL. All\narguments are treated as integers. It is required that N1 < N2 < N3 <\n... < Nn for this function to work correctly. This is because a binary\nsearch is used (very fast).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT INTERVAL(23, 1, 15, 17, 30, 44, 200);\n        -> 3\nmysql> SELECT INTERVAL(10, 1, 10, 100, 1000);\n        -> 2\nmysql> SELECT INTERVAL(22, 23, 30, 44, 200);\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(412, 'FROM_DAYS', 29, 'Syntax:\nFROM_DAYS(N)\n\nGiven a day number N, returns a DATE value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_DAYS(729669);\n        -> ''1997-10-07''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(413, 'ALTER PROCEDURE', 36, 'Syntax:\nALTER {PROCEDURE | FUNCTION} sp_name [characteristic ...]\n\ncharacteristic:\n    { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n  | COMMENT ''string''\n\nThis statement can be used to change the characteristics of a stored\nprocedure or function. You must have the ALTER ROUTINE privilege for\nthe routine. (That privilege is granted automatically to the routine\ncreator.) If binary logging is enabled, the ALTER FUNCTION statement\nmight also require the SUPER privilege, as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-procedure-logging.html.\n\nMore than one change may be specified in an ALTER PROCEDURE or ALTER\nFUNCTION statement.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-procedure.html'),
(414, 'BIT_COUNT', 19, 'Syntax:\nBIT_COUNT(N)\n\nReturns the number of bits that are set in the argument N.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT BIT_COUNT(29), BIT_COUNT(b''101010'');\n        -> 4, 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(415, 'OCTET_LENGTH', 34, 'Syntax:\nOCTET_LENGTH(str)\n\nOCTET_LENGTH() is a synonym for LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(416, 'UTC_TIMESTAMP', 29, 'Syntax:\nUTC_TIMESTAMP, UTC_TIMESTAMP()\n\nReturns the current UTC date and time as a value in ''YYYY-MM-DD\nHH:MM:SS'' or YYYYMMDDHHMMSS format, depending on whether the function\nis used in a string or numeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIMESTAMP(), UTC_TIMESTAMP() + 0;\n        -> ''2003-08-14 18:08:04'', 20030814180804\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(417, '+', 4, 'Syntax:\n+\n\nAddition:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3+5;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(418, 'INET_NTOA', 14, 'Syntax:\nINET_NTOA(expr)\n\nGiven a numeric network address (4 or 8 byte), returns the dotted-quad\nrepresentation of the address as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_NTOA(3520061480);\n        -> ''209.207.224.40''\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(419, 'ACOS', 4, 'Syntax:\nACOS(X)\n\nReturns the arc cosine of X, that is, the value whose cosine is X.\nReturns NULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ACOS(1);\n        -> 0\nmysql> SELECT ACOS(1.0001);\n        -> NULL\nmysql> SELECT ACOS(0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(420, 'ISOLATION', 8, 'Syntax:\nSET [GLOBAL | SESSION] TRANSACTION ISOLATION LEVEL\n{ READ UNCOMMITTED | READ COMMITTED | REPEATABLE READ | SERIALIZABLE }\n\nThis statement sets the transaction isolation level for the next\ntransaction, globally, or for the current session.\n\nThe default behavior of SET TRANSACTION is to set the isolation level\nfor the next (not yet started) transaction. If you use the GLOBAL\nkeyword, the statement sets the default transaction level globally for\nall new connections created from that point on. Existing connections\nare unaffected. You need the SUPER privilege to do this. Using the\nSESSION keyword sets the default transaction level for all future\ntransactions performed on the current connection.\n\nFor descriptions of each InnoDB transaction isolation level, see\nhttp://dev.mysql.com/doc/refman/5.1/en/innodb-transaction-isolation.htm\nl. InnoDB supports each of these levels in MySQL 5.1. The default level\nis REPEATABLE READ.\n\nIn MySQL 5.1, if the READ COMMITTED isolation level is used or the\ninnodb_locks_unsafe_for_binlog system variable is enabled, there is no\nInnoDB gap locking except in constraint checking. Also, record locks\nfor non-matching rows are released after MySQL has evaluated the WHERE\ncondition.\n\nTo set the initial default global isolation level for mysqld, use the\n--transaction-isolation option. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-options.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-transaction.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-transaction.html'),
(421, 'CEILING', 4, 'Syntax:\nCEILING(X), CEIL(X)\n\nReturns the smallest integer value not less than X. CEILING() and\nCEIL() are synonymous.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT CEILING(1.23);\n        -> 2\nmysql> SELECT CEIL(-1.23);\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(422, 'SIN', 4, 'Syntax:\nSIN(X)\n\nReturns the sine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT SIN(PI());\n        -> 1.2246063538224e-16\nmysql> SELECT ROUND(SIN(PI()));\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(423, 'DAYOFWEEK', 29, 'Syntax:\nDAYOFWEEK(date)\n\nReturns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 =\nSaturday). These index values correspond to the ODBC standard.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFWEEK(''1998-02-03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(424, 'LINEFROMWKB', 30, 'LineFromWKB(wkb[,srid]), LineStringFromWKB(wkb[,srid])\n\nConstructs a LINESTRING value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html'),
(425, 'SHOW PROCESSLIST', 25, 'Syntax:\nSHOW [FULL] PROCESSLIST\n\nSHOW PROCESSLIST shows you which threads are running. You can also get\nthis information from the INFORMATION_SCHEMA PROCESSLIST table or the\nmysqladmin processlist command. If you have the PROCESS privilege, you\ncan see all threads. Otherwise, you can see only your own threads (that\nis, threads associated with the MySQL account that you are using). If\nyou do not use the FULL keyword, only the first 100 characters of each\nstatement are shown in the Info field.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-processlist.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-processlist.html'),
(426, 'GEOMETRYTYPE', 33, 'GeometryType(g)\n\nReturns as a string the name of the geometry type of which the geometry\ninstance g is a member. The name corresponds to one of the instantiable\nGeometry subclasses.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT GeometryType(GeomFromText(''POINT(1 1)''));\n+------------------------------------------+\n| GeometryType(GeomFromText(''POINT(1 1)'')) |\n+------------------------------------------+\n| POINT                                    |\n+------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html'),
(427, 'CREATE VIEW', 37, 'Syntax:\nCREATE\n    [OR REPLACE]\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThis statement creates a new view, or replaces an existing one if the\nOR REPLACE clause is given. If the view does not exist, CREATE OR\nREPLACE VIEW is the same as CREATE VIEW. If the view does exist, CREATE\nOR REPLACE VIEW is the same as ALTER VIEW. The select_statement is a\nSELECT statement that provides the definition of the view. The\nstatement can select from base tables or other views.\n\nThis statement requires the CREATE VIEW privilege for the view, and\nsome privilege for each column selected by the SELECT statement. For\ncolumns used elsewhere in the SELECT statement you must have the SELECT\nprivilege. If the OR REPLACE clause is present, you must also have the\nDROP privilege for the view.\n\nA view belongs to a database. By default, a new view is created in the\ndefault database. To create the view explicitly in a given database,\nspecify the name as db_name.view_name when you create it.\n\nmysql> CREATE VIEW test.v AS SELECT * FROM t;\n\nBase tables and views share the same namespace within a database, so a\ndatabase cannot contain a base table and a view that have the same\nname.\n\nViews must have unique column names with no duplicates, just like base\ntables. By default, the names of the columns retrieved by the SELECT\nstatement are used for the view column names. To define explicit names\nfor the view columns, the optional column_list clause can be given as a\nlist of comma-separated identifiers. The number of names in column_list\nmust be the same as the number of columns retrieved by the SELECT\nstatement.\n\nColumns retrieved by the SELECT statement can be simple references to\ntable columns. They can also be expressions that use functions,\nconstant values, operators, and so forth.\n\nUnqualified table or view names in the SELECT statement are interpreted\nwith respect to the default database. A view can refer to tables or\nviews in other databases by qualifying the table or view name with the\nproper database name.\n\nA view can be created from many kinds of SELECT statements. It can\nrefer to base tables or other views. It can use joins, UNION, and\nsubqueries. The SELECT need not even refer to any tables. The following\nexample defines a view that selects two columns from another table, as\nwell as an expression calculated from those columns:\n\nmysql> CREATE TABLE t (qty INT, price INT);\nmysql> INSERT INTO t VALUES(3, 50);\nmysql> CREATE VIEW v AS SELECT qty, price, qty*price AS value FROM t;\nmysql> SELECT * FROM v;\n+------+-------+-------+\n| qty  | price | value |\n+------+-------+-------+\n|    3 |    50 |   150 |\n+------+-------+-------+\n\nA view definition is subject to the following restrictions:\n\no The SELECT statement cannot contain a subquery in the FROM clause.\n\no The SELECT statement cannot refer to system or user variables.\n\no The SELECT statement cannot refer to prepared statement parameters.\n\no Within a stored routine, the definition cannot refer to routine\n  parameters or local variables.\n\no Any table or view referred to in the definition must exist. However,\n  after a view has been created, it is possible to drop a table or view\n  that the definition refers to. In this case, use of the view results\n  in an error. To check a view definition for problems of this kind,\n  use the CHECK TABLE statement.\n\no The definition cannot refer to a TEMPORARY table, and you cannot\n  create a TEMPORARY view.\n\no The tables named in the view definition must already exist.\n\no You cannot associate a trigger with a view.\n\nORDER BY is allowed in a view definition, but it is ignored if you\nselect from a view using a statement that has its own ORDER BY.\n\nFor other options or clauses in the definition, they are added to the\noptions or clauses of the statement that references the view, but the\neffect is undefined. For example, if a view definition includes a LIMIT\nclause, and you select from the view using a statement that has its own\nLIMIT clause, it is undefined which limit applies. This same principle\napplies to options such as ALL, DISTINCT, or SQL_SMALL_RESULT that\nfollow the SELECT keyword, and to clauses such as INTO, FOR UPDATE,\nLOCK IN SHARE MODE, and PROCEDURE.\n\nIf you create a view and then change the query processing environment\nby changing system variables, that may affect the results that you get\nfrom the view:\n\nmysql> CREATE VIEW v (mycol) AS SELECT ''abc'';\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SET sql_mode = '''';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT "mycol" FROM v;\n+-------+\n| mycol |\n+-------+\n| mycol | \n+-------+\n1 row in set (0.01 sec)\n\nmysql> SET sql_mode = ''ANSI_QUOTES'';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT "mycol" FROM v;\n+-------+\n| mycol |\n+-------+\n| abc   | \n+-------+\n1 row in set (0.00 sec)\n\nThe DEFINER and SQL SECURITY clauses specify the security context to be\nused when checking access privileges at view invocation time. They were\naddded in MySQL 5.1.2.\n\nCURRENT_USER also can be given as CURRENT_USER().\n\nWithin a stored routine that is defined with the SQL SECURITY DEFINER\ncharacteristic, CURRENT_USER returns the routine creator. This also\naffects a view defined within such a routine, if the view definition\ncontains a DEFINER value of CURRENT_USER.\n\nThe default DEFINER value is the user who executes the CREATE VIEW\nstatement. (This is the same as DEFINER = CURRENT_USER.) If a user\nvalue is given, it should be a MySQL account in ''user_name''@''host_name''\nformat (the same format used in the GRANT statement). The user_name and\nhost_name values both are required.\n\nIf you specify the DEFINER clause, you cannot set the value to any user\nbut your own unless you have the SUPER privilege. These rules determine\nthe legal DEFINER user values:\n\no If you do not have the SUPER privilege, the only legal user value is\n  your own account, either specified literally or by using\n  CURRENT_USER. You cannot set the definer to some other account.\n\no If you have the SUPER privilege, you can specify any syntactically\n  legal account name. If the account does not actually exist, a warning\n  is generated.\n\nThe SQL SECURITY characteristic determines which MySQL account to use\nwhen checking access privileges for the view when the view is executed.\nThe legal characteristic values are DEFINER and INVOKER. These indicate\nthat the view must be executable by the user who defined it or invoked\nit, respectively. The default SQL SECURITY value is DEFINER.\n\nAs of MySQL 5.1.2 (when the DEFINER and SQL SECURITY clauses were\nimplemented), view privileges are checked like this:\n\no At view definition time, the view creator must have the privileges\n  needed to use the top-level objects accessed by the view. For\n  example, if the view definition refers to a stored function, only the\n  privileges needed to invoke the function can be checked. The\n  privileges required when the function runs can be checked only as it\n  executes: For different invocations of the function, different\n  execution paths within the function might be taken.\n\no At view execution time, privileges for objects accessed by the view\n  are checked against the privileges held by the view creator or\n  invoker, depending on whether the SQL SECURITY characteristic is\n  DEFINER or INVOKER, respectively.\n\no If view execution causes execution of a stored function, privilege\n  checking for statements executed within the function depend on\n  whether the function is defined with a SQL SECURITY characteristic of\n  DEFINER or INVOKER. If the security characteristic is DEFINER, the\n  function runs with the privileges of its creator. If the\n  characteristic is INVOKER, the function runs with the privileges\n  determined by the view''s SQL SECURITY characteristic.\n\nPrior to MySQL 5.1.2 (before the DEFINER and SQL SECURITY clauses were\nimplemented), privileges required for objects used in a view are\nchecked at view creation time.\n\nExample: A view might depend on a stored function, and that function\nmight invoke other stored routines. For example, the following view\ninvokes a stored function f():\n\nCREATE VIEW v AS SELECT * FROM t WHERE t.id = f(t.name);\n\nSuppose that f() contains a statement such as this:\n\nIF name IS NULL then\n  CALL p1();\nELSE\n  CALL p2();\nEND IF;\n\nThe privileges required for executing statements within f() need to be\nchecked when f() executes. This might mean that privileges are needed\nfor p1() or p2(), depending on the execution path within f(). Those\nprivileges need to be checked at runtime, and the user who must possess\nthe privileges is determined by the SQL SECURITY values of the function\nf() and the view v.\n\nThe DEFINER and SQL SECURITY clauses for views are extensions to\nstandard SQL. In standard SQL, views are handled using the rules for\nSQL SECURITY INVOKER.\n\nIf you invoke a view that was created before MySQL 5.0.13/5.1.2, it is\ntreated as though it was created with a SQL SECURITY DEFINER clause and\nwith a DEFINER value that is the same as your account. However, because\nthe actual definer is unknown, MySQL issues a warning. To make the\nwarning go away, it is sufficient to re-create the view so that the\nview definition includes a DEFINER clause.\n\nThe optional ALGORITHM clause is a MySQL extension to standard SQL.\nALGORITHM takes three values: MERGE, TEMPTABLE, or UNDEFINED. The\ndefault algorithm is UNDEFINED if no ALGORITHM clause is present. The\nalgorithm affects how MySQL processes the view.\n\nFor MERGE, the text of a statement that refers to the view and the view\ndefinition are merged such that parts of the view definition replace\ncorresponding parts of the statement.\n\nFor TEMPTABLE, the results from the view are retrieved into a temporary\ntable, which then is used to execute the statement.\n\nFor UNDEFINED, MySQL chooses which algorithm to use. It prefers MERGE\nover TEMPTABLE if possible, because MERGE is usually more efficient and\nbecause a view cannot be updatable if a temporary table is used.\n\nA reason to choose TEMPTABLE explicitly is that locks can be released\non underlying tables after the temporary table has been created and\nbefore it is used to finish processing the statement. This might result\nin quicker lock release than the MERGE algorithm so that other clients\nthat use the view are not blocked as long.\n\nA view algorithm can be UNDEFINED for three reasons:\n\no No ALGORITHM clause is present in the CREATE VIEW statement.\n\no The CREATE VIEW statement has an explicit ALGORITHM = UNDEFINED\n  clause.\n\no ALGORITHM = MERGE is specified for a view that can be processed only\n  with a temporary table. In this case, MySQL generates a warning and\n  sets the algorithm to UNDEFINED.\n\nAs mentioned earlier, MERGE is handled by merging corresponding parts\nof a view definition into the statement that refers to the view. The\nfollowing examples briefly illustrate how the MERGE algorithm works.\nThe examples assume that there is a view v_merge that has this\ndefinition:\n\nCREATE ALGORITHM = MERGE VIEW v_merge (vc1, vc2) AS\nSELECT c1, c2 FROM t WHERE c3 > 100;\n\nExample 1: Suppose that we issue this statement:\n\nSELECT * FROM v_merge;\n\nMySQL handles the statement as follows:\n\no v_merge becomes t\n\no * becomes vc1, vc2, which corresponds to c1, c2\n\no The view WHERE clause is added\n\nThe resulting statement to be executed becomes:\n\nSELECT c1, c2 FROM t WHERE c3 > 100;\n\nExample 2: Suppose that we issue this statement:\n\nSELECT * FROM v_merge WHERE vc1 < 100;\n\nThis statement is handled similarly to the previous one, except that\nvc1 < 100 becomes c1 < 100 and the view WHERE clause is added to the\nstatement WHERE clause using an AND connective (and parentheses are\nadded to make sure the parts of the clause are executed with correct\nprecedence). The resulting statement to be executed becomes:\n\nSELECT c1, c2 FROM t WHERE (c3 > 100) AND (c1 < 100);\n\nEffectively, the statement to be executed has a WHERE clause of this\nform:\n\nWHERE (select WHERE) AND (view WHERE)\n\nThe MERGE algorithm requires a one-to-one relationship between the rows\nin the view and the rows in the underlying table. If this relationship\ndoes not hold, a temporary table must be used instead. Lack of a\none-to-one relationship occurs if the view contains any of a number of\nconstructs:\n\no Aggregate functions (SUM(), MIN(), MAX(), COUNT(), and so forth)\n\no DISTINCT\n\no GROUP BY\n\no HAVING\n\no UNION or UNION ALL\n\no Subquery in the select list\n\no Refers only to literal values (in this case, there is no underlying\n  table)\n\nSome views are updatable. That is, you can use them in statements such\nas UPDATE, DELETE, or INSERT to update the contents of the underlying\ntable. For a view to be updatable, there must be a one-to-one\nrelationship between the rows in the view and the rows in the\nunderlying table. There are also certain other constructs that make a\nview non-updatable. To be more specific, a view is not updatable if it\ncontains any of the following:\n\no Aggregate functions (SUM(), MIN(), MAX(), COUNT(), and so forth)\n\no DISTINCT\n\no GROUP BY\n\no HAVING\n\no UNION or UNION ALL\n\no Subquery in the select list\n\no Certain joins (see additional join discussion later in this section)\n\no Non-updatable view in the FROM clause\n\no A subquery in the WHERE clause that refers to a table in the FROM\n  clause\n\no Refers only to literal values (in this case, there is no underlying\n  table to update)\n\no ALGORITHM = TEMPTABLE (use of a temporary table always makes a view\n  non-updatable)\n\nWith respect to insertability (being updatable with INSERT statements),\nan updatable view is insertable if it also satisfies these additional\nrequirements for the view columns:\n\no There must be no duplicate view column names.\n\no The view must contain all columns in the base table that do not have\n  a default value.\n\no The view columns must be simple column references and not derived\n  columns. A derived column is one that is not a simple column\n  reference but is derived from an expression. These are examples of\n  derived columns:\n\n3.14159\ncol1 + 3\nUPPER(col2)\ncol3 / col4\n(subquery)\n\nA view that has a mix of simple column references and derived columns\nis not insertable, but it can be updatable if you update only those\ncolumns that are not derived. Consider this view:\n\nCREATE VIEW v AS SELECT col1, 1 AS col2 FROM t;\n\nThis view is not insertable because col2 is derived from an expression.\nBut it is updatable if the update does not try to update col2. This\nupdate is allowable:\n\nUPDATE v SET col1 = 0;\n\nThis update is not allowable because it attempts to update a derived\ncolumn:\n\nUPDATE v SET col2 = 0;\n\nIt is sometimes possible for a multiple-table view to be updatable,\nassuming that it can be processed with the MERGE algorithm. For this to\nwork, the view must use an inner join (not an outer join or a UNION).\nAlso, only a single table in the view definition can be updated, so the\nSET clause must name only columns from one of the tables in the view.\nViews that use UNION ALL are disallowed even though they might be\ntheoretically updatable, because the implementation uses temporary\ntables to process them.\n\nFor a multiple-table updatable view, INSERT can work if it inserts into\na single table. DELETE is not supported.\n\nINSERT DELAYED is not supported for views.\n\nIf a table contains an AUTO_INCREMENT column, inserting into an\ninsertable view on the table that does not include the AUTO_INCREMENT\ncolumn does not change the value of LAST_INSERT_ID(), because the side\neffects of inserting default values into columns not part of the view\nshould not be visible.\n\nThe WITH CHECK OPTION clause can be given for an updatable view to\nprevent inserts or updates to rows except those for which the WHERE\nclause in the select_statement is true.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-view.html'),
(428, 'TRIM', 34, 'Syntax:\nTRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr\nFROM] str)\n\nReturns the string str with all remstr prefixes or suffixes removed. If\nnone of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is\nassumed. remstr is optional and, if not specified, spaces are removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT TRIM(''  bar   '');\n        -> ''bar''\nmysql> SELECT TRIM(LEADING ''x'' FROM ''xxxbarxxx'');\n        -> ''barxxx''\nmysql> SELECT TRIM(BOTH ''x'' FROM ''xxxbarxxx'');\n        -> ''bar''\nmysql> SELECT TRIM(TRAILING ''xyz'' FROM ''barxxyz'');\n        -> ''barx''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(429, 'IS', 18, 'Syntax:\nIS boolean_value, IS NOT boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS TRUE, 0 IS FALSE, NULL IS UNKNOWN;\n        -> 1, 1, 1\nmysql> SELECT 1 IS NOT UNKNOWN, 0 IS NOT UNKNOWN, NULL IS NOT UNKNOWN;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(430, 'GET_FORMAT', 29, 'Syntax:\nGET_FORMAT(DATE|TIME|DATETIME, ''EUR''|''USA''|''JIS''|''ISO''|''INTERNAL'')\n\nReturns a format string. This function is useful in combination with\nthe DATE_FORMAT() and the STR_TO_DATE() functions.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(''2003-10-03'',GET_FORMAT(DATE,''EUR''));\n        -> ''03.10.2003''\nmysql> SELECT STR_TO_DATE(''10.31.2003'',GET_FORMAT(DATE,''USA''));\n        -> ''2003-10-31''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(431, 'TINYBLOB', 21, 'TINYBLOB\n\nA BLOB column with a maximum length of 255 (28 - 1) bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(432, 'SAVEPOINT', 8, 'Syntax:\nSAVEPOINT identifier\nROLLBACK [WORK] TO SAVEPOINT identifier\nRELEASE SAVEPOINT identifier\n\nInnoDB supports the SQL statements SAVEPOINT, ROLLBACK TO SAVEPOINT,\nRELEASE SAVEPOINT and the optional WORK keyword for ROLLBACK.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/savepoints.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/savepoints.html'),
(433, 'USER', 16, 'Syntax:\nUSER()\n\nReturns the current MySQL username and hostname as a string in the utf8\ncharacter set.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> ''davida@localhost''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(434, 'MPOINTFROMWKB', 30, 'MPointFromWKB(wkb[,srid]), MultiPointFromWKB(wkb[,srid])\n\nConstructs a MULTIPOINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html'),
(435, 'ALTER TABLE', 37, 'Syntax:\nALTER [ONLINE] [IGNORE] TABLE tbl_name\n    alter_specification [, alter_specification] ...\n\nalter_specification:\n    table_option ...\n  | ADD [COLUMN] column_definition [FIRST | AFTER col_name ]\n  | ADD [COLUMN] (column_definition,...)\n  | ADD {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        PRIMARY KEY [index_type] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        UNIQUE [INDEX|KEY] [index_name] [index_type] (index_col_name,...)\n  | ADD FULLTEXT [INDEX|KEY] [index_name] (index_col_name,...)\n      [WITH PARSER parser_name]\n  | ADD SPATIAL [INDEX|KEY] [index_name] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        FOREIGN KEY [index_name] (index_col_name,...)\n        [reference_definition]\n  | ALTER [COLUMN] col_name {SET DEFAULT literal | DROP DEFAULT}\n  | CHANGE [COLUMN] old_col_name column_definition\n        [FIRST|AFTER col_name]\n  | MODIFY [COLUMN] column_definition [FIRST | AFTER col_name]\n  | DROP [COLUMN] col_name\n  | DROP PRIMARY KEY\n  | DROP {INDEX|KEY} index_name\n  | DROP FOREIGN KEY fk_symbol\n  | DISABLE KEYS\n  | ENABLE KEYS\n  | RENAME [TO] new_tbl_name\n  | ORDER BY col_name [, col_name] ...\n  | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]\n  | [DEFAULT] CHARACTER SET charset_name [COLLATE collation_name]\n  | DISCARD TABLESPACE\n  | IMPORT TABLESPACE\n  | PARTITION BY partition_options\n  | ADD PARTITION (partition_definition)\n  | DROP PARTITION partition_names\n  | COALESCE PARTITION number\n  | REORGANIZE PARTITION partition_names INTO (partition_definitions)\n  | ANALYZE PARTITION partition_names\n  | CHECK PARTITION partition_names\n  | OPTIMIZE PARTITION partition_names\n  | REBUILD PARTITION partition_names\n  | REPAIR PARTITION partition_names\n  | REMOVE PARTITIONING\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nALTER TABLE enables you to change the structure of an existing table.\nFor example, you can add or delete columns, create or destroy indexes,\nchange the type of existing columns, or rename columns or the table\nitself. You can also change the comment for the table and type of the\ntable.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-table.html'),
(436, 'PURGE MASTER LOGS', 25, 'Syntax:\nPURGE {MASTER | BINARY} LOGS TO ''log_name''\nPURGE {MASTER | BINARY} LOGS BEFORE ''date''\n\nDeletes all the binary logs listed in the log index prior to the\nspecified log or date. The logs also are removed from the list recorded\nin the log index file, so that the given log becomes the first.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/purge-master-logs.html\n\n', 'PURGE MASTER LOGS TO ''mysql-bin.010'';\nPURGE MASTER LOGS BEFORE ''2003-04-02 22:46:26'';\n', 'http://dev.mysql.com/doc/refman/5.1/en/purge-master-logs.html'),
(437, 'CHAR BYTE', 21, 'The CHAR BYTE data type is an alias for the BINARY data type. This is a\ncompatibility feature.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(438, 'REPAIR TABLE', 20, 'Syntax:\nREPAIR [LOCAL | NO_WRITE_TO_BINLOG] TABLE\n    tbl_name [, tbl_name] ... [QUICK] [EXTENDED] [USE_FRM]\n\nREPAIR TABLE repairs a possibly corrupted table. By default, it has the\nsame effect as myisamchk --recover tbl_name. REPAIR TABLE works for\nMyISAM and for ARCHIVE tables. Starting with MySQL 5.1.9, REPAIR is\nalso valid for CSV tables. See\nhttp://dev.mysql.com/doc/refman/5.1/en/myisam-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.1/en/archive-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.1/en/csv-storage-engine.html\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/repair-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/repair-table.html'),
(439, 'MERGE', 37, 'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n"Identical" means that all tables have identical column and index\ninformation. You cannot merge MyISAM tables in which the columns are\nlisted in a different order, do not have exactly the same columns, or\nhave the indexes in different order. However, any or all of the MyISAM\ntables can be compressed with myisampack. See\nhttp://dev.mysql.com/doc/refman/5.1/en/myisampack.html. Differences in\ntable options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS do not\nmatter.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/merge-storage-engine.html\n\n', 'mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (''Testing''),(''table''),(''t1'');\nmysql> INSERT INTO t2 (message) VALUES (''Testing''),(''table''),(''t2'');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n', 'http://dev.mysql.com/doc/refman/5.1/en/merge-storage-engine.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(440, 'CREATE TABLE', 37, 'Syntax:\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    (create_definition,...)\n    [table_option ...]\n    [partition_options]\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    [(create_definition,...)]\n    [table_option ...]\n    [PARTITION BY partition_options]\n    select_statement\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    { LIKE old_tbl_name | (LIKE old_tbl_name) }\n\ncreate_definition:\n    column_definition\n  | [CONSTRAINT [symbol]] PRIMARY KEY [index_type] (index_col_name,...)\n      [index_option ...]\n  | {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n      [index_option ...]\n  | [CONSTRAINT [symbol]] UNIQUE [INDEX|KEY]\n      [index_name] [index_type] (index_col_name,...)\n      [index_option ...]\n  | {FULLTEXT|SPATIAL} [INDEX|KEY] [index_name] (index_col_name,...)\n      [index_option ...]\n  | [CONSTRAINT [symbol]] FOREIGN KEY\n      [index_name] (index_col_name,...) [reference_definition]\n  | CHECK (expr)\n\ncolumn_definition:\n    col_name data_type [NOT NULL | NULL] [DEFAULT default_value]\n      [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]\n      [COMMENT ''string''] [reference_definition]\n      [COLUMN_FORMAT {FIXED|DYNAMIC|DEFAULT}]\n      [STORAGE {DISK|MEMORY}]\n\ndata_type:\n    BIT[(length)]\n  | TINYINT[(length)] [UNSIGNED] [ZEROFILL]\n  | SMALLINT[(length)] [UNSIGNED] [ZEROFILL]\n  | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL]\n  | INT[(length)] [UNSIGNED] [ZEROFILL]\n  | INTEGER[(length)] [UNSIGNED] [ZEROFILL]\n  | BIGINT[(length)] [UNSIGNED] [ZEROFILL]\n  | REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DECIMAL(length,decimals) [UNSIGNED] [ZEROFILL]\n  | NUMERIC(length,decimals) [UNSIGNED] [ZEROFILL]\n  | DATE\n  | TIME\n  | TIMESTAMP\n  | DATETIME\n  | YEAR\n  | CHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | VARCHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | BINARY(length)\n  | VARBINARY(length)\n  | TINYBLOB\n  | BLOB\n  | MEDIUMBLOB\n  | LONGBLOB\n  | TINYTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | TEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | MEDIUMTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | LONGTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | ENUM(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | SET(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | spatial_type\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH | RTREE}\n\nindex_option:\n    KEY_BLOCK_SIZE value\n  | index_type\n  | WITH PARSER parser_name\n\nreference_definition:\n    REFERENCES tbl_name [(index_col_name,...)]\n      [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]\n      [ON DELETE reference_option]\n      [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\ntable_option:\n    [TABLESPACE tablespace_name STORAGE DISK]\n    ENGINE [=] engine_name\n  | AUTO_INCREMENT [=] value\n  | AVG_ROW_LENGTH [=] value\n  | [DEFAULT] CHARACTER SET charset_name\n  | CHECKSUM [=] {0 | 1}\n  | COLLATE collation_name\n  | COMMENT [=] ''string''\n  | CONNECTION [=] ''connect_string''\n  | DATA DIRECTORY [=] ''absolute path to directory''\n  | DELAY_KEY_WRITE [=] {0 | 1}\n  | INDEX DIRECTORY [=] ''absolute path to directory''\n  | INSERT_METHOD [=] { NO | FIRST | LAST }\n  | KEY_BLOCK_SIZE [=] value\n  | MAX_ROWS [=] value\n  | MIN_ROWS [=] value\n  | PACK_KEYS [=] {0 | 1 | DEFAULT}\n  | PASSWORD [=] ''string''\n  | ROW_FORMAT [=] {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT}\n  | UNION [=] (tbl_name[,tbl_name]...)\n\npartition_options:\n          [LINEAR] HASH(expr)\n        | [LINEAR] KEY(column_list)\n        | RANGE(expr)\n        | LIST(expr)\n    [PARTITIONS num]\n    [SUBPARTITION BY\n          [LINEAR] HASH(expr)\n        | [LINEAR] KEY(column_list)\n      [SUBPARTITIONS num]\n    ]\n    [(partition_definition [, partition_definition] ...)]\n\npartition_definition:\n    PARTITION partition_name\n        [VALUES {LESS THAN (expr) | MAXVALUE | IN (value_list)}]\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] ''comment_text'' ]\n        [DATA DIRECTORY [=] ''data_dir'']\n        [INDEX DIRECTORY [=] ''index_dir'']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n        [TABLESPACE [=] (tablespace_name)]\n        [NODEGROUP [=] node_group_id]\n        [(subpartition_definition [, subpartition_definition] ...)]\n\nsubpartition_definition:\n    SUBPARTITION logical_name\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] ''comment_text'' ]\n        [DATA DIRECTORY [=] ''data_dir'']\n        [INDEX DIRECTORY [=] ''index_dir'']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n        [TABLESPACE [=] (tablespace_name)]\n        [NODEGROUP [=] node_group_id]\n\nselect_statement:\n    [IGNORE | REPLACE] [AS] SELECT ...   (Some legal select statement)\n\nCREATE TABLE creates a table with the given name. You must have the\nCREATE privilege for the table.\n\nRules for allowable table names are given in\nhttp://dev.mysql.com/doc/refman/5.1/en/identifiers.html. By default,\nthe table is created in the default database. An error occurs if the\ntable exists, if there is no default database, or if the database does\nnot exist.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-table.html'),
(441, '>', 18, 'Syntax:\n>\n\nGreater than:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 > 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(442, 'ANALYZE TABLE', 20, 'Syntax:\nANALYZE [LOCAL | NO_WRITE_TO_BINLOG] TABLE tbl_name [, tbl_name] ...\n\nANALYZE TABLE analyzes and stores the key distribution for a table.\nDuring the analysis, the table is locked with a read lock for MyISAM.\nFor InnoDB the table is locked with a write lock. This statement works\nwith MyISAM, and InnoDB tables. For MyISAM tables, this statement is\nequivalent to using myisamchk --analyze.\n\nFor more information on how the analysis works withinInnoDB, see\nhttp://dev.mysql.com/doc/refman/5.1/en/innodb-restrictions.html.\n\nMySQL uses the stored key distribution to decide the order in which\ntables should be joined when you perform a join on something other than\na constant.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/analyze-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/analyze-table.html'),
(443, 'MICROSECOND', 29, 'Syntax:\nMICROSECOND(expr)\n\nReturns the microseconds from the time or datetime expression expr as a\nnumber in the range from 0 to 999999.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MICROSECOND(''12:00:00.123456'');\n        -> 123456\nmysql> SELECT MICROSECOND(''1997-12-31 23:59:59.000010'');\n        -> 10\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(444, 'CONSTRAINT', 37, 'InnoDB also supports foreign key constraints. The syntax for a foreign\nkey constraint definition in InnoDB looks like this:\n\n[CONSTRAINT symbol] FOREIGN KEY [id] (index_col_name, ...)\n    REFERENCES tbl_name (index_col_name, ...)\n    [ON DELETE {RESTRICT | CASCADE | SET NULL | NO ACTION}]\n    [ON UPDATE {RESTRICT | CASCADE | SET NULL | NO ACTION}]\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/innodb-foreign-key-constraints.html\n\n', 'CREATE TABLE product (category INT NOT NULL, id INT NOT NULL,\n                      price DECIMAL,\n                      PRIMARY KEY(category, id)) ENGINE=INNODB;\nCREATE TABLE customer (id INT NOT NULL,\n                       PRIMARY KEY (id)) ENGINE=INNODB;\nCREATE TABLE product_order (no INT NOT NULL AUTO_INCREMENT,\n                            product_category INT NOT NULL,\n                            product_id INT NOT NULL,\n                            customer_id INT NOT NULL,\n                            PRIMARY KEY(no),\n                            INDEX (product_category, product_id),\n                            FOREIGN KEY (product_category, product_id)\n                              REFERENCES product(category, id)\n                              ON UPDATE CASCADE ON DELETE RESTRICT,\n                            INDEX (customer_id),\n                            FOREIGN KEY (customer_id)\n                              REFERENCES customer(id)) ENGINE=INNODB;\n', 'http://dev.mysql.com/doc/refman/5.1/en/innodb-foreign-key-constraints.html'),
(445, 'CREATE SERVER', 37, 'Syntax:\nCREATE SERVER server_name\n    FOREIGN DATA WRAPPER wrapper_name\n    OPTIONS (option ...)\n\noption:\n  { HOST character-literal\n  | DATABASE character-literal\n  | USER character-literal\n  | PASSWORD character-literal\n  | SOCKET character-literal\n  | OWNER character-literal\n  | PORT numeric-literal }\n\nThis statement creates the definition of a server for use with the\nFEDERATED storage engine. The CREATE SERVER statement creates a new row\nwithin the servers table within the mysql database. This statement\nrequires the SUPER privilege.\n\nThe server_name should be a unique reference to the server. Server\ndefinitions are global within the scope of the server, it is not\npossible to qualify the server definition to a specific database.\nserver_name has a maximum length of 63 characters (names longer than 63\ncharacters are silently truncated), and is case insensitive. You may\nspecify the name using single quotes.\n\nThe wrapper_name should be mysql, and may be quoted with single quotes.\nOther values for wrapper_name are not currently supported.\n\nFor each option you must specify either a character literal or numeric\nliteral. Character literals are UTF8, support a maximum length of 64\ncharacters and default to a blank (empty) string. String literals are\nsilently truncated to 64 characters. Numeric literals must be a number\nbetween 0 and 9999, default value is 0.\n\nThe CREATE SERVER statement creates an entry in the mysql.server table\nthat can later be used with the CREATE TABLE statement when creating a\nFEDERATED table. The options that you specify will be used to populate\nthe columns in the mysql.server table. The table columns are\nServer_name, Host, Db, Username, Password, Port and Socket.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-server.html\n\n', 'CREATE SERVER s\nFOREIGN DATA WRAPPER mysql\nOPTIONS (USER ''Remote'', HOST ''192.168.1.106'', DATABASE ''test'');\n', 'http://dev.mysql.com/doc/refman/5.1/en/create-server.html'),
(446, 'FIELD', 34, 'Syntax:\nFIELD(str,str1,str2,str3,...)\n\nReturns the index (position) of str in the str1, str2, str3, ... list.\nReturns 0 if str is not found.\n\nIf all arguments to FIELD() are strings, all arguments are compared as\nstrings. If all arguments are numbers, they are compared as numbers.\nOtherwise, the arguments are compared as double.\n\nIf str is NULL, the return value is 0 because NULL fails equality\ncomparison with any value. FIELD() is the complement of ELT().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT FIELD(''ej'', ''Hej'', ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> 2\nmysql> SELECT FIELD(''fo'', ''Hej'', ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(447, 'MAKETIME', 29, 'Syntax:\nMAKETIME(hour,minute,second)\n\nReturns a time value calculated from the hour, minute, and second\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKETIME(12,15,30);\n        -> ''12:15:30''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(448, 'CURDATE', 29, 'Syntax:\nCURDATE()\n\nReturns the current date as a value in ''YYYY-MM-DD'' or YYYYMMDD format,\ndepending on whether the function is used in a string or numeric\ncontext.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURDATE();\n        -> ''1997-12-15''\nmysql> SELECT CURDATE() + 0;\n        -> 19971215\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(449, 'MIN MAX', 15, 'Syntax:\nMIN([DISTINCT] expr), MAX([DISTINCT] expr)\n\nReturns the minimum or maximum value of expr. MIN() and MAX() may take\na string argument; in such cases they return the minimum or maximum\nstring value. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the minimum or maximum of the distinct\nvalues of expr, however, this produces the same result as omitting\nDISTINCT.\n\nMIN() and MAX() return NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(450, 'SET PASSWORD', 9, 'Syntax:\nSET PASSWORD [FOR user] = PASSWORD(''some password'')\n\nThe SET PASSWORD statement assigns a password to an existing MySQL user\naccount.\n\nWith no FOR clause, this statement sets the password for the current\nuser. Any client that has connected to the server using a non-anonymous\naccount can change the password for that account.\n\nWith a FOR clause, this statement sets the password for a specific\naccount on the current server host. Only clients that have the UPDATE\nprivilege for the mysql database can do this. The user value should be\ngiven in user_name@host_name format, where user_name and host_name are\nexactly as they are listed in the User and Host columns of the\nmysql.user table entry. For example, if you had an entry with User and\nHost column values of ''bob'' and ''%.loc.gov'', you would write the\nstatement like this:\n\nSET PASSWORD FOR ''bob''@''%.loc.gov'' = PASSWORD(''newpass'');\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-password.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-password.html'),
(451, 'ENUM', 21, 'ENUM(''value1'',''value2'',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nAn enumeration. A string object that can have only one value, chosen\nfrom the list of values ''value1'', ''value2'', ..., NULL or the special ''''\nerror value. An ENUM column can have a maximum of 65,535 distinct\nvalues. ENUM values are represented internally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(452, 'IF FUNCTION', 7, 'Syntax:\nIF(expr1,expr2,expr3)\n\nIf expr1 is TRUE (expr1 <> 0 and expr1 <> NULL) then IF() returns\nexpr2; otherwise it returns expr3. IF() returns a numeric or string\nvalue, depending on the context in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT IF(1>2,2,3);\n        -> 3\nmysql> SELECT IF(1<2,''yes'',''no'');\n        -> ''yes''\nmysql> SELECT IF(STRCMP(''test'',''test1''),''no'',''yes'');\n        -> ''no''\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html'),
(453, 'DATABASE', 16, 'Syntax:\nDATABASE()\n\nReturns the default (current) database name as a string in the utf8\ncharacter set. If there is no default database, DATABASE() returns\nNULL. Within a stored routine, the default database is the database\nthat the routine is associated with, which is not necessarily the same\nas the database that is the default in the calling context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT DATABASE();\n        -> ''test''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(454, 'POINTFROMWKB', 30, 'PointFromWKB(wkb[,srid])\n\nConstructs a POINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html'),
(455, 'POWER', 4, 'Syntax:\nPOW(X,Y), POWER(X,Y)\n\nReturns the value of X raised to the power of Y.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT POW(2,2);\n        -> 4\nmysql> SELECT POW(2,-2);\n        -> 0.25\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(456, 'ATAN', 4, 'Syntax:\nATAN(X)\n\nReturns the arc tangent of X, that is, the value whose tangent is X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(2);\n        -> 1.1071487177941\nmysql> SELECT ATAN(-2);\n        -> -1.1071487177941\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(457, 'STRCMP', 34, 'Syntax:\nSTRCMP(expr1,expr2)\n\nSTRCMP() returns 0 if the strings are the same, -1 if the first\nargument is smaller than the second according to the current sort\norder, and 1 otherwise.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', 'mysql> SELECT STRCMP(''text'', ''text2'');\n        -> -1\nmysql> SELECT STRCMP(''text2'', ''text'');\n        -> 1\nmysql> SELECT STRCMP(''text'', ''text'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html'),
(458, 'INSERT DELAYED', 25, 'Syntax:\nINSERT DELAYED ...\n\nThe DELAYED option for the INSERT statement is a MySQL extension to\nstandard SQL that is very useful if you have clients that cannot or\nneed not wait for the INSERT to complete. This is a common situation\nwhen you use MySQL for logging and you also periodically run SELECT and\nUPDATE statements that take a long time to complete.\n\nWhen a client uses INSERT DELAYED, it gets an okay from the server at\nonce, and the row is queued to be inserted when the table is not in use\nby any other thread.\n\nAnother major benefit of using INSERT DELAYED is that inserts from many\nclients are bundled together and written in one block. This is much\nfaster than performing many separate inserts.\n\nNote that INSERT DELAYED is slower than a normal INSERT if the table is\nnot otherwise in use. There is also the additional overhead for the\nserver to handle a separate thread for each table for which there are\ndelayed rows. This means that you should use INSERT DELAYED only when\nyou are really sure that you need it.\n\nThe queued rows are held only in memory until they are inserted into\nthe table. This means that if you terminate mysqld forcibly (for\nexample, with kill -9) or if mysqld dies unexpectedly, any queued rows\nthat have not been written to disk are lost.\n\nThere are some constraints on the use of DELAYED:\n\no INSERT DELAYED works only with MyISAM, MEMORY, ARCHIVE, and (as of\n  MySQL 5.1.19) BLACKHOLE tables. See\n  http://dev.mysql.com/doc/refman/5.1/en/myisam-storage-engine.html,\n  http://dev.mysql.com/doc/refman/5.1/en/memory-storage-engine.html,\n  http://dev.mysql.com/doc/refman/5.1/en/archive-storage-engine.html,\n  and\n  http://dev.mysql.com/doc/refman/5.1/en/blackhole-storage-engine.html.\n\no For MyISAM tables, if there are no free blocks in the middle of the\n  data file, concurrent SELECT and INSERT statements are supported.\n  Under these circumstances, you very seldom need to use INSERT DELAYED\n  with MyISAM.\n\no INSERT DELAYED should be used only for INSERT statements that specify\n  value lists. The server ignores DELAYED for INSERT ... SELECT or\n  INSERT ... ON DUPLICATE KEY UPDATE statements.\n\no Because the INSERT DELAYED statement returns immediately, before the\n  rows are inserted, you cannot use LAST_INSERT_ID() to get the\n  AUTO_INCREMENT value that the statement might generate.\n\no DELAYED rows are not visible to SELECT statements until they actually\n  have been inserted.\n\no DELAYED is ignored on slave replication servers because it could\n  cause the slave to have different data than the master.\n\no Pending INSERT DELAYED statements are lost if a table is write locked\n  and ALTER TABLE is used to modify the table structure.\n\no INSERT DELAYED is not supported for views.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/insert-delayed.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/insert-delayed.html'),
(459, 'SHOW PROCEDURE CODE', 25, 'Syntax:\nSHOW {PROCEDURE | FUNCTION} CODE sp_name\n\nThese statements are MySQL extensions that are available only for\nservers that have been built with debugging support. They display a\nrepresentation of the internal implementation of the named routine. The\nstatements require that you be the owner of the routine or have SELECT\naccess to the mysql.proc table.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one "instruction" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-procedure-code.html\n\n', 'mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n    -> BEGIN\n    ->   DECLARE fanta INT DEFAULT 55;\n    ->   DROP TABLE t2;\n    ->   LOOP\n    ->     INSERT INTO t3 VALUES (fanta);\n    ->     END LOOP;\n    ->   END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 "DROP TABLE t2"                 |\n|   2 | stmt 5 "INSERT INTO t3 VALUES (fanta)" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-procedure-code.html'),
(460, 'MEDIUMTEXT', 21, 'MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 16,777,215 (224 - 1) characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(461, 'LN', 4, 'Syntax:\nLN(X)\n\nReturns the natural logarithm of X; that is, the base-e logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LN(2);\n        -> 0.69314718055995\nmysql> SELECT LN(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(462, 'SHOW COLLATION', 25, 'Syntax:\nSHOW COLLATION\n    [LIKE ''pattern'' | WHERE expr]\n\nThe output from SHOW COLLATION includes all available character sets.\nThe LIKE clause, if present, indicates which collation names to match.\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html. For example:\n\nmysql> SHOW COLLATION LIKE ''latin1%'';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         |          |       0 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       0 |\n| latin1_danish_ci  | latin1  | 15 |         |          |       0 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       0 |\n| latin1_general_ci | latin1  | 48 |         |          |       0 |\n| latin1_general_cs | latin1  | 49 |         |          |       0 |\n| latin1_spanish_ci | latin1  | 94 |         |          |       0 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-collation.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-collation.html'),
(463, 'LOG', 4, 'Syntax:\nLOG(X), LOG(B,X)\n\nIf called with one parameter, this function returns the natural\nlogarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG(2);\n        -> 0.69314718055995\nmysql> SELECT LOG(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(464, 'SET SQL_LOG_BIN', 25, 'Syntax:\nSET SQL_LOG_BIN = {0|1}\n\nDisables or enables binary logging for the current connection\n(SQL_LOG_BIN is a session variable) if the client has the SUPER\nprivilege. The statement is refused with an error if the client does\nnot have that privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-sql-log-bin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-sql-log-bin.html'),
(465, '!=', 18, 'Syntax:\n<>, !=\n\nNot equal:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT ''.01'' <> ''0.01'';\n        -> 1\nmysql> SELECT .01 <> ''0.01'';\n        -> 0\nmysql> SELECT ''zapp'' <> ''zappp'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(466, 'WHILE', 36, 'Syntax:\n[begin_label:] WHILE search_condition DO\n    statement_list\nEND WHILE [end_label]\n\nThe statement list within a WHILE statement is repeated as long as the\nsearch_condition is true. statement_list consists of one or more\nstatements.\n\nA WHILE statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/while-statement.html\n\n', 'CREATE PROCEDURE dowhile()\nBEGIN\n  DECLARE v1 INT DEFAULT 5;\n\n  WHILE v1 > 0 DO\n    ...\n    SET v1 = v1 - 1;\n  END WHILE;\nEND\n', 'http://dev.mysql.com/doc/refman/5.1/en/while-statement.html'),
(467, 'AES_DECRYPT', 11, 'Syntax:\nAES_ENCRYPT(str,key_str), AES_DECRYPT(crypt_str,key_str)\n\nThese functions allow encryption and decryption of data using the\nofficial AES (Advanced Encryption Standard) algorithm, previously known\nas "Rijndael." Encoding with a 128-bit key length is used, but you can\nextend it up to 256 bits by modifying the source. We chose 128 bits\nbecause it is much faster and it is secure enough for most purposes.\n\nAES_ENCRYPT() encrypts a string and returns a binary string.\nAES_DECRYPT() decrypts the encrypted string and returns the original\nstring. The input arguments may be any length. If either argument is\nNULL, the result of this function is also NULL.\n\nBecause AES is a block-level algorithm, padding is used to encode\nuneven length strings and so the result string length may be calculated\nusing this formula:\n\n16 x (trunc(string_length / 16) + 1)\n\nIf AES_DECRYPT() detects invalid data or incorrect padding, it returns\nNULL. However, it is possible for AES_DECRYPT() to return a non-NULL\nvalue (possibly garbage) if the input data or the key is invalid.\n\nYou can use the AES functions to store data in an encrypted form by\nmodifying your queries:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'INSERT INTO t VALUES (1,AES_ENCRYPT(''text'',''password''));\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(468, 'RENAME DATABASE', 37, 'Syntax:\nRENAME {DATABASE | SCHEMA} db_name TO new_db_name;\n\nThis statement renames a database. It requires the ALTER and DROP\nprivileges for the database, and the CREATE privilege for the new\ndatabase. RENAME SCHEMA is a synonym for RENAME DATABASE.\n\nWhen the server receives this statement, it creates a new database.\nThen it moves tables and other database objects such as triggers to the\nnew database. It also updates the Db column in the system tables for\nobjects such as stored routines and events. Finally, the server drops\nthe old database.\n\nNote that currently there are these limitations: RENAME DATABASE does\nnot change any account privileges listed in the system tables. They\nmust be changed manually. RENAME DATABASE destroys any stored routines\nor events associated with the original database.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/rename-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/rename-database.html'),
(469, 'DAYNAME', 29, 'Syntax:\nDAYNAME(date)\n\nReturns the name of the weekday for date. As of MySQL 5.1.12, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.1/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYNAME(''1998-02-05'');\n        -> ''Thursday''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(470, 'COERCIBILITY', 16, 'Syntax:\nCOERCIBILITY(str)\n\nReturns the collation coercibility value of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT COERCIBILITY(''abc'' COLLATE latin1_swedish_ci);\n        -> 0\nmysql> SELECT COERCIBILITY(USER());\n        -> 3\nmysql> SELECT COERCIBILITY(''abc'');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(471, 'INT', 21, 'INT[(M)] [UNSIGNED] [ZEROFILL]\n\nA normal-size integer. The signed range is -2147483648 to 2147483647.\nThe unsigned range is 0 to 4294967295.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(472, 'GLENGTH', 12, 'GLength(ls)\n\nReturns as a double-precision number the length of the LineString value\nls in its associated spatial reference.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT GLength(GeomFromText(@ls));\n+----------------------------+\n| GLength(GeomFromText(@ls)) |\n+----------------------------+\n|            2.8284271247462 |\n+----------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html'),
(473, 'RADIANS', 4, 'Syntax:\nRADIANS(X)\n\nReturns the argument X, converted from degrees to radians. (Note that\nπ radians equals 180 degrees.)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT RADIANS(90);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(474, 'COLLATION', 16, 'Syntax:\nCOLLATION(str)\n\nReturns the collation of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT COLLATION(''abc'');\n        -> ''latin1_swedish_ci''\nmysql> SELECT COLLATION(_utf8''abc'');\n        -> ''utf8_general_ci''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(475, 'COALESCE', 18, 'Syntax:\nCOALESCE(value,...)\n\nReturns the first non-NULL value in the list, or NULL if there are no\nnon-NULL values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT COALESCE(NULL,1);\n        -> 1\nmysql> SELECT COALESCE(NULL,NULL,NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(476, 'VERSION', 16, 'Syntax:\nVERSION()\n\nReturns a string that indicates the MySQL server version. The string\nuses the utf8 character set.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT VERSION();\n        -> ''5.1.21-beta-standard''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(477, 'MAKE_SET', 34, 'Syntax:\nMAKE_SET(bits,str1,str2,...)\n\nReturns a set value (a string containing substrings separated by `,''\ncharacters) consisting of the strings that have the corresponding bit\nin bits set. str1 corresponds to bit 0, str2 to bit 1, and so on. NULL\nvalues in str1, str2, ... are not appended to the result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT MAKE_SET(1,''a'',''b'',''c'');\n        -> ''a''\nmysql> SELECT MAKE_SET(1 | 4,''hello'',''nice'',''world'');\n        -> ''hello,world''\nmysql> SELECT MAKE_SET(1 | 4,''hello'',''nice'',NULL,''world'');\n        -> ''hello''\nmysql> SELECT MAKE_SET(0,''a'',''b'',''c'');\n        -> ''''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(478, 'FIND_IN_SET', 34, 'Syntax:\nFIND_IN_SET(str,strlist)\n\nReturns a value in the range of 1 to N if the string str is in the\nstring list strlist consisting of N substrings. A string list is a\nstring composed of substrings separated by `,'' characters. If the first\nargument is a constant string and the second is a column of type SET,\nthe FIND_IN_SET() function is optimized to use bit arithmetic. Returns\n0 if str is not in strlist or if strlist is the empty string. Returns\nNULL if either argument is NULL. This function does not work properly\nif the first argument contains a comma (`,'') character.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT FIND_IN_SET(''b'',''a,b,c,d'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE IF NOT EXISTS `host` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Trigger_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  PRIMARY KEY  (`Host`,`Db`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';

--
-- Dumping data for table `host`
--


-- --------------------------------------------------------

--
-- Table structure for table `ndb_binlog_index`
--

CREATE TABLE IF NOT EXISTS `ndb_binlog_index` (
  `Position` bigint(20) unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) unsigned NOT NULL,
  `inserts` bigint(20) unsigned NOT NULL,
  `updates` bigint(20) unsigned NOT NULL,
  `deletes` bigint(20) unsigned NOT NULL,
  `schemaops` bigint(20) unsigned NOT NULL,
  PRIMARY KEY  (`epoch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ndb_binlog_index`
--


-- --------------------------------------------------------

--
-- Table structure for table `plugin`
--

CREATE TABLE IF NOT EXISTS `plugin` (
  `name` char(64) collate utf8_bin NOT NULL default '',
  `dl` char(128) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='MySQL plugins';

--
-- Dumping data for table `plugin`
--


-- --------------------------------------------------------

--
-- Table structure for table `proc`
--

CREATE TABLE IF NOT EXISTS `proc` (
  `db` char(64) character set utf8 collate utf8_bin NOT NULL default '',
  `name` char(64) NOT NULL default '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL default '',
  `language` enum('SQL') NOT NULL default 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL default 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL default 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL default 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` char(64) NOT NULL default '',
  `body` longblob NOT NULL,
  `definer` char(77) character set utf8 collate utf8_bin NOT NULL default '',
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL default '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE') NOT NULL default '',
  `comment` char(64) character set utf8 collate utf8_bin NOT NULL default '',
  `character_set_client` char(32) character set utf8 collate utf8_bin default NULL,
  `collation_connection` char(32) character set utf8 collate utf8_bin default NULL,
  `db_collation` char(32) character set utf8 collate utf8_bin default NULL,
  `body_utf8` longblob,
  PRIMARY KEY  (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';

--
-- Dumping data for table `proc`
--


-- --------------------------------------------------------

--
-- Table structure for table `procs_priv`
--

CREATE TABLE IF NOT EXISTS `procs_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Routine_name` char(64) collate utf8_bin NOT NULL default '',
  `Routine_type` enum('FUNCTION','PROCEDURE') collate utf8_bin NOT NULL,
  `Grantor` char(77) collate utf8_bin NOT NULL default '',
  `Proc_priv` set('Execute','Alter Routine','Grant') character set utf8 NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';

--
-- Dumping data for table `procs_priv`
--


-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `Server_name` char(64) NOT NULL default '',
  `Host` char(64) NOT NULL default '',
  `Db` char(64) NOT NULL default '',
  `Username` char(64) NOT NULL default '',
  `Password` char(64) NOT NULL default '',
  `Port` int(4) NOT NULL default '0',
  `Socket` char(64) NOT NULL default '',
  `Wrapper` char(64) NOT NULL default '',
  `Owner` char(64) NOT NULL default '',
  PRIMARY KEY  (`Server_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL Foreign Servers table';

--
-- Dumping data for table `servers`
--


-- --------------------------------------------------------

--
-- Table structure for table `slow_log`
--
-- in use(#1017 - Can't find file: 'slow_log' (errno: 2))

--
-- Dumping data for table `slow_log`
--

-- in use (#1017 - Can't find file: 'slow_log' (errno: 2))

-- --------------------------------------------------------

--
-- Table structure for table `tables_priv`
--

CREATE TABLE IF NOT EXISTS `tables_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Table_name` char(64) collate utf8_bin NOT NULL default '',
  `Grantor` char(77) collate utf8_bin NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') character set utf8 NOT NULL default '',
  `Column_priv` set('Select','Insert','Update','References') character set utf8 NOT NULL default '',
  PRIMARY KEY  (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';

--
-- Dumping data for table `tables_priv`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone`
--

CREATE TABLE IF NOT EXISTS `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL auto_increment,
  `Use_leap_seconds` enum('Y','N') NOT NULL default 'N',
  PRIMARY KEY  (`Time_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zones' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `time_zone`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_leap_second`
--

CREATE TABLE IF NOT EXISTS `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY  (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';

--
-- Dumping data for table `time_zone_leap_second`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_name`
--

CREATE TABLE IF NOT EXISTS `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';

--
-- Dumping data for table `time_zone_name`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition`
--

CREATE TABLE IF NOT EXISTS `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';

--
-- Dumping data for table `time_zone_transition`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition_type`
--

CREATE TABLE IF NOT EXISTS `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL default '0',
  `Is_DST` tinyint(3) unsigned NOT NULL default '0',
  `Abbreviation` char(8) NOT NULL default '',
  PRIMARY KEY  (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';

--
-- Dumping data for table `time_zone_transition_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Password` char(41) character set latin1 collate latin1_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Reload_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Shutdown_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Process_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `File_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_db_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Super_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Repl_slave_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Repl_client_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_user_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Event_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Trigger_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') character set utf8 NOT NULL default '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL default '0',
  `max_updates` int(11) unsigned NOT NULL default '0',
  `max_connections` int(11) unsigned NOT NULL default '0',
  `max_user_connections` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Host`, `User`, `Password`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Reload_priv`, `Shutdown_priv`, `Process_priv`, `File_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Show_db_priv`, `Super_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Execute_priv`, `Repl_slave_priv`, `Repl_client_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Create_user_priv`, `Event_priv`, `Trigger_priv`, `ssl_type`, `ssl_cipher`, `x509_issuer`, `x509_subject`, `max_questions`, `max_updates`, `max_connections`, `max_user_connections`) VALUES
('localhost', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0),
('localhost', 'pma', '', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', 0, 0, 0, 0),
('127.0.0.1', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0);
--
-- Database: `password`
--
CREATE DATABASE `password` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `password`;

-- --------------------------------------------------------

--
-- Table structure for table `examtb`
--

CREATE TABLE IF NOT EXISTS `examtb` (
  `User_Name` varchar(20) NOT NULL default '',
  `Password` varchar(20) default NULL,
  `Sel_Ques` varchar(20) default NULL,
  PRIMARY KEY  (`User_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examtb`
--

INSERT INTO `examtb` (`User_Name`, `Password`, `Sel_Ques`) VALUES
('ankit', '123', 'bikaner');

-- --------------------------------------------------------

--
-- Table structure for table `proctb`
--

CREATE TABLE IF NOT EXISTS `proctb` (
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Sel_Ques` varchar(50) NOT NULL,
  PRIMARY KEY  (`User_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proctb`
--

INSERT INTO `proctb` (`User_Name`, `Password`, `Sel_Ques`) VALUES
('ankit', '123', 'bikaner');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE `phpmyadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL auto_increment,
  `dbase` varchar(255) collate latin1_general_ci NOT NULL default '',
  `user` varchar(255) collate latin1_general_ci NOT NULL default '',
  `label` varchar(255) collate latin1_general_ci NOT NULL default '',
  `query` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pma_bookmark`
--


-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL auto_increment,
  `db_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `table_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `column_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `comment` varchar(255) collate latin1_general_ci NOT NULL default '',
  `mimetype` varchar(255) collate latin1_general_ci NOT NULL default '',
  `transformation` varchar(255) collate latin1_general_ci NOT NULL default '',
  `transformation_options` varchar(255) collate latin1_general_ci NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pma_column_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `table_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `x` int(11) default NULL,
  `y` int(11) default NULL,
  `v` tinyint(4) default NULL,
  `h` tinyint(4) default NULL,
  PRIMARY KEY  (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Table coordinates for Designer';

--
-- Dumping data for table `pma_designer_coords`
--

INSERT INTO `pma_designer_coords` (`db_name`, `table_name`, `x`, `y`, `v`, `h`) VALUES
('details', 'btech', 393, 40, 1, 1),
('details', 'btechexamdetail', 520, 115, 1, 1),
('details', 'mtech', 34, 53, 1, 1),
('details', 'mtechexamdetail', 227, 56, 1, 1),
('details', 'btechdocumentdetails', 678, 293, 1, 1),
('details', 'mtechdocumentdetails', 227, 286, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `username` varchar(64) collate latin1_general_ci NOT NULL default '',
  `db` varchar(64) collate latin1_general_ci NOT NULL default '',
  `table` varchar(64) collate latin1_general_ci NOT NULL default '',
  `timevalue` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `sqlquery` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=254 ;

--
-- Dumping data for table `pma_history`
--

INSERT INTO `pma_history` (`id`, `username`, `db`, `table`, `timevalue`, `sqlquery`) VALUES
(1, 'root', 'Proctor', '', '2017-05-08 00:20:58', 'CREATE DATABASE `Proctor`;'),
(2, 'root', 'Proctor', '', '2017-05-08 00:44:21', 'CREATE DATABASE `proctor management ` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;'),
(3, 'root', 'Proctor', '', '2017-05-08 00:45:46', 'CREATE DATABASE `insert into proctor management ` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;'),
(4, 'root', 'Proctor Management', '', '2017-05-08 00:46:07', 'CREATE DATABASE `Proctor Management`;'),
(5, 'root', 'password', 'examtb', '2017-05-09 17:06:13', 'SELECT * FROM `examtb`'),
(6, 'root', 'password', '', '2017-05-09 17:16:54', 'DROP TABLE `examtb`'),
(7, 'root', 'password', 'examtb', '2017-05-09 17:17:53', 'SELECT * FROM `examtb`'),
(8, 'root', 'password', 'examtb', '2017-05-09 18:34:49', 'SELECT * FROM `examtb`'),
(9, 'root', 'password', 'examtb', '2017-05-09 18:40:03', 'SELECT * FROM `examtb`'),
(10, 'root', 'password', '', '2017-05-09 20:58:06', 'DROP TABLE `passwordtb`'),
(11, 'root', 'password', 'examtb', '2017-05-09 20:58:11', 'SELECT * FROM `examtb`'),
(12, 'root', 'password', 'examtb', '2017-05-09 23:23:58', 'SELECT * FROM `examtb`'),
(13, 'root', 'password', 'examtb', '2017-05-09 23:29:39', 'SELECT * FROM `examtb`'),
(14, 'root', 'password', 'examtb', '2017-05-09 23:29:55', 'ALTER TABLE `examtb` ADD PRIMARY KEY(`User_Name`)'),
(15, 'root', 'password', 'examtb', '2017-05-09 23:30:14', 'SELECT * FROM `examtb`'),
(16, 'root', 'password', 'examtb', '2017-05-09 23:30:18', 'SELECT * FROM `examtb`'),
(17, 'root', 'password', 'examtb', '2017-05-09 23:30:23', 'SELECT * FROM `examtb`'),
(18, 'root', 'password', 'examtb', '2017-05-09 23:30:33', 'SELECT * FROM `examtb`'),
(19, 'root', 'password', 'examtb', '2017-05-09 23:30:54', 'ALTER TABLE `examtb` ADD PRIMARY KEY(`User_Name`)'),
(20, 'root', 'password', 'examtb', '2017-05-09 23:31:26', 'ALTER TABLE `examtb` DROP `Con_passwd`'),
(21, 'root', 'password', 'examtb', '2017-05-09 23:43:44', 'SELECT * FROM `examtb`'),
(22, 'root', 'password', 'examtb', '2017-05-10 00:18:10', 'SELECT * FROM `examtb`'),
(23, 'root', 'password', 'examtb', '2017-05-10 00:21:52', 'SELECT * FROM `examtb`'),
(24, 'root', 'password', 'examtb', '2017-05-10 00:21:55', 'SELECT * FROM `examtb`'),
(25, 'root', 'password', 'examtb', '2017-05-10 00:23:33', 'SELECT * FROM `examtb`'),
(26, 'root', 'password', 'examtb', '2017-05-10 00:25:33', 'SELECT * FROM `examtb`'),
(27, 'root', 'password', 'examtb', '2017-05-10 00:27:14', 'SELECT * FROM `examtb`'),
(28, 'root', 'password', 'examtb', '2017-05-10 00:32:22', 'SELECT * FROM `examtb`'),
(29, 'root', 'password', 'examtb', '2017-05-10 00:34:30', 'SELECT * FROM `examtb`'),
(30, 'root', 'password', 'examtb', '2017-05-10 00:35:50', 'UPDATE `examtb` SET `Password`='''' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(31, 'root', 'password', 'examtb', '2017-05-10 00:36:18', 'UPDATE `examtb` SET `Password`=''qwert'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(32, 'root', 'password', 'examtb', '2017-05-10 00:37:00', 'UPDATE `examtb` SET `Password`=''qwertyu'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(33, 'root', 'password', 'examtb', '2017-05-10 00:37:06', 'UPDATE `examtb` SET `Password`=''qwertyu'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(34, 'root', 'password', 'examtb', '2017-05-10 00:37:08', 'UPDATE `examtb` SET `Password`=''qwertyu'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(35, 'root', 'password', 'examtb', '2017-05-10 00:37:19', 'SELECT * FROM `examtb`'),
(36, 'root', 'password', 'examtb', '2017-05-10 00:37:32', 'UPDATE `examtb` SET `Password`=''qwertu'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(37, 'root', 'password', 'examtb', '2017-05-10 00:37:48', 'UPDATE `examtb` SET `Password`=''qwertuqwety'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(38, 'root', 'password', 'examtb', '2017-05-10 00:38:29', 'UPDATE `examtb` SET `Password`=''qwertyu'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(39, 'root', 'password', 'examtb', '2017-05-10 00:38:48', 'UPDATE `examtb` SET `Password`=''qwer1tyu'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(40, 'root', 'password', 'examtb', '2017-05-10 00:39:18', 'UPDATE `examtb` SET `Password`=''qwertyu'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(41, 'root', 'password', 'examtb', '2017-05-10 00:39:29', 'SELECT * FROM `examtb`'),
(42, 'root', 'password', 'examtb', '2017-05-10 00:40:30', 'UPDATE `examtb` SET `Password`=''qwertyu7'' WHERE `User_Name`=''ravi1'' AND `Sel_Ques`=''test'''),
(43, 'root', 'password', 'examtb', '2017-05-10 00:40:38', 'SELECT * FROM `examtb`'),
(44, 'root', 'password', 'examtb', '2017-05-10 00:41:00', 'SELECT * FROM `examtb`'),
(45, 'root', 'password', 'examtb', '2017-05-10 00:47:42', 'SELECT * FROM `examtb`'),
(46, 'root', 'password', 'examtb', '2017-05-10 00:54:13', 'SELECT * FROM `examtb`'),
(47, 'root', 'password', 'examtb', '2017-05-10 00:54:15', 'SELECT * FROM `examtb`'),
(48, 'root', 'password', 'examtb', '2017-05-10 00:54:24', 'SELECT * FROM `examtb`'),
(49, 'root', 'password', 'examtb', '2017-05-10 00:54:27', 'SELECT * FROM `examtb`'),
(50, 'root', 'password', 'examtb', '2017-05-10 00:54:29', 'SELECT * FROM `examtb`'),
(51, 'root', 'password', 'examtb', '2017-05-10 00:56:34', 'SELECT * FROM `examtb`'),
(52, 'root', 'password', 'examtb', '2017-05-10 00:56:37', 'SELECT * FROM `examtb`'),
(53, 'root', 'password', 'examtb', '2017-05-10 00:56:49', 'SELECT * FROM `examtb`'),
(54, 'root', 'password', 'examtb', '2017-05-10 00:56:53', 'SELECT * FROM `examtb`'),
(55, 'root', 'password', 'examtb', '2017-05-10 00:56:57', 'SELECT * FROM `examtb`'),
(56, 'root', 'password', 'examtb', '2017-05-10 00:57:01', 'SELECT * FROM `examtb`'),
(57, 'root', 'password', 'examtb', '2017-05-10 00:57:04', 'SELECT * FROM `examtb`'),
(58, 'root', 'password', 'examtb', '2017-05-10 00:57:09', 'SELECT * FROM `examtb`'),
(59, 'root', 'password', 'examtb', '2017-05-10 00:57:15', 'SELECT * FROM `examtb`'),
(60, 'root', 'password', 'examtb', '2017-05-10 00:58:02', 'SELECT * FROM `examtb`'),
(61, 'root', 'details', 'btech', '2017-05-10 16:26:52', 'SELECT * FROM `btech`'),
(62, 'root', 'password', 'examtb', '2017-05-10 17:36:54', 'SELECT * FROM `examtb`'),
(63, 'root', 'details', 'btech', '2017-05-10 20:13:52', 'SELECT * FROM `btech`'),
(64, 'root', 'password', 'examtb', '2017-05-10 20:15:04', 'SELECT * FROM `examtb`'),
(65, 'root', 'details', 'btech', '2017-05-10 20:23:22', 'SELECT * FROM `btech`'),
(66, 'root', 'details', 'btech', '2017-05-10 20:23:22', 'SELECT * FROM `btech`'),
(67, 'root', 'details', 'btech', '2017-05-10 20:23:56', 'ALTER TABLE `btech` CHANGE `Beanch` `Branch` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL'),
(68, 'root', 'details', 'btech', '2017-05-10 20:49:44', 'SELECT * FROM `btech`'),
(69, 'root', 'details', 'btech', '2017-05-10 22:29:06', 'SELECT * FROM `btech`'),
(70, 'root', 'details', 'mtech', '2017-05-10 22:33:17', 'ALTER TABLE `mtech` CHANGE `Beanch` `Branch` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL'),
(71, 'root', 'details', 'mtech', '2017-05-10 22:37:06', 'SELECT * FROM `mtech`'),
(72, 'root', 'details', 'btech', '2017-05-10 22:58:02', 'SELECT * FROM `btech`'),
(73, 'root', 'details', 'mtech', '2017-05-10 22:58:28', 'SELECT * FROM `mtech`'),
(74, 'root', 'details', 'mtech', '2017-05-10 22:59:29', 'SELECT * FROM `mtech`'),
(75, 'root', 'details', 'mtech', '2017-05-10 23:00:21', 'SELECT * FROM `mtech`'),
(76, 'root', 'details', 'btech', '2017-05-10 23:06:16', 'SELECT * FROM `btech`'),
(77, 'root', 'details', 'mtech', '2017-05-10 23:10:24', 'SELECT * FROM mtech WHERE Scholar=''tyu'''),
(78, 'root', 'details', 'btechexamdetail', '2017-05-11 00:58:30', 'CREATE TABLE `details`.`mtechexamdetail` (`Scholar` VARCHAR(50) NOT NULL, `IS_Main` TINYINT NOT NULL, `IS_Back` TINYINT NOT NULL, `IS_Rb` TINYINT NOT NULL, `IIS_Main` TINYINT NOT NULL, `IIS_Back` TINYINT NOT NULL, `IIS_Rb` TINYINT NOT NULL, `IIIS_Main` TINYINT NOT NULL, `IIIS_Back` TINYINT NOT NULL, `IIIS_Rb` TINYINT NOT NULL, `IVS_Main` TINYINT NOT NULL, `IVS_Back` TINYINT NOT NULL, `IVS_Rb` TINYINT NOT NULL, PRIMARY KEY (`Scholar`)) ENGINE = MyISAM'),
(79, 'root', 'details', 'btechexamdetail', '2017-05-12 00:23:27', 'INSERT INTO `details`.`btechexamdetail` (`Scholar`, `IS_Main`, `IS_Back`, `IS_Rb`, `IIS_Main`, `IIS_Back`, `IIS_Rb`, `IIIS_Main`, `IIIS_Back`, `IIIS_Rb`, `IVS_Main`, `IVS_Back`, `IVS_Rb`, `VS_Main`, `VS_Back`, `VS_Rb`, `VIS_Main`, `VIS_Back`, `VIS_Rb`, `VIIS_Main`, `VIIS_Back`, `VIIS_Rb`, `VIIIS_Main`, `VIIIS_Back`, `VIIIS_Rb`) VALUES (''13eebcs064'', ''true'', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''');'),
(80, 'root', 'details', 'btechexamdetail', '2017-05-12 00:23:32', 'SELECT * FROM `btechexamdetail`'),
(81, 'root', 'details', 'btech', '2017-05-12 00:52:24', 'SELECT * FROM `btech`'),
(82, 'root', 'password', 'examtb', '2017-05-12 01:13:20', 'SELECT * FROM `examtb`'),
(83, 'root', 'password', 'examtb', '2017-05-12 01:13:27', 'SELECT * FROM `examtb`'),
(84, 'root', 'password', 'proctb', '2017-05-12 01:15:23', 'SELECT * FROM `proctb`'),
(85, 'root', 'details', 'btech', '2017-05-12 01:49:14', 'SELECT * FROM `btech`'),
(86, 'root', 'details', 'btechexamdetail', '2017-05-12 01:59:43', 'SELECT * FROM `btechexamdetail`'),
(87, 'root', 'details', 'btechexamdetail', '2017-05-12 02:04:55', 'SELECT * FROM `btechexamdetail`'),
(88, 'root', 'details', 'btechexamdetail', '2017-05-12 02:05:14', 'SELECT * FROM `btechexamdetail`'),
(89, 'root', 'details', 'btechexamdetail', '2017-05-12 02:15:19', 'SELECT * FROM `btechexamdetail` WHERE `Scholar`=''13eebcs064'''),
(90, 'root', 'details', 'btechexamdetail', '2017-05-12 02:20:40', 'UPDATE `btechexamdetail` SET  `IS_Main`=''1'', `IS_Back`=''1'', `IS_Rb`=''1'', `IIS_Main`=''1'', `IIS_Back`=''1'', `IIS_Rb`=''1'', `IIIS_Main`=''0'', `IIIS_Back`=''0'', `IIIS_Rb`=''0'', `IVS_Main`=''0'', `IVS_Back`=''0'', `IVS_Rb`=''0'', `VS_Main`=''0'', `VS_Back`=''0'', `VS_Rb`=''0'', `VIS_Main`=''0'', `VIS_Back`=''0'', `VIS_Rb`=''0'', `VIIS_Main`=''0'', `VIIS_Back`=''0'', `VIIS_Rb`=''0'', `VIIIS_Main`=''0'', `VIIIS_Back`=''0'', `VIIIS_Rb`=''0'', WHERE `Scholar`=''13eebcs064''\r\n'),
(91, 'root', 'details', 'btechexamdetail', '2017-05-12 02:22:26', 'UPDATE `btechexamdetail` SET  `IS_Main`=''1'', `IS_Back`=''1'', `IS_Rb`=''1'', `IIS_Main`=''1'', `IIS_Back`=''1'', `IIS_Rb`=''1'', `IIIS_Main`=''0'', `IIIS_Back`=''0'', `IIIS_Rb`=''0'', `IVS_Main`=''0'', `IVS_Back`=''0'', `IVS_Rb`=''0'', `VS_Main`=''0'', `VS_Back`=''0'', `VS_Rb`=''0'', `VIS_Main`=''0'', `VIS_Back`=''0'', `VIS_Rb`=''0'', `VIIS_Main`=''0'', `VIIS_Back`=''0'', `VIIS_Rb`=''0'', `VIIIS_Main`=''0'', `VIIIS_Back`=''0'', `VIIIS_Rb`=''0''WHERE `Scholar`=''13eebcs064''\r\n'),
(92, 'root', 'details', 'btechexamdetail', '2017-05-12 02:22:31', 'SELECT * FROM `btechexamdetail`'),
(93, 'root', 'details', 'btechexamdetail', '2017-05-12 02:22:58', 'SELECT * FROM `btechexamdetail`'),
(94, 'root', 'details', 'btechexamdetail', '2017-05-12 02:23:03', 'SELECT * FROM `btechexamdetail`'),
(95, 'root', 'details', 'mtechexamdetail', '2017-05-12 02:35:38', 'SELECT * FROM `mtechexamdetail`'),
(96, 'root', 'details', 'mtechexamdetail', '2017-05-12 02:35:48', 'INSERT INTO `details`.`mtechexamdetail` (`Scholar`, `IS_Main`, `IS_Back`, `IS_Rb`, `IIS_Main`, `IIS_Back`, `IIS_Rb`, `IIIS_Main`, `IIIS_Back`, `IIIS_Rb`, `IVS_Main`, `IVS_Back`, `IVS_Rb`) VALUES (''13eebcs065'', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''', '''');'),
(97, 'root', 'details', 'mtechexamdetail', '2017-05-12 02:36:00', 'SELECT * FROM `mtechexamdetail`'),
(98, 'root', 'details', 'btechexamdetail', '2017-05-12 23:33:26', 'ALTER TABLE `btechexamdetail` ADD `Degree` VARCHAR(50) NOT NULL DEFAULT ''No'', ADD `ProCerti` VARCHAR(50) NOT NULL DEFAULT ''No'';'),
(99, 'root', 'details', 'btechexamdetail', '2017-05-12 23:33:38', 'SELECT * FROM `btechexamdetail`'),
(100, 'root', 'details', 'mtech', '2017-05-13 01:17:06', 'ALTER TABLE `mtech` CHANGE `TenScoecard` `TenScorecard` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL'),
(101, 'root', 'details', 'mtech', '2017-05-13 01:19:20', 'ALTER TABLE `mtech` CHANGE `DipandBtechScoecard` `DipandBtechScorecard` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL'),
(102, 'root', 'details', 'btech', '2017-05-13 01:22:09', 'SELECT * FROM `btech`'),
(103, 'root', 'details', 'btech', '2017-05-13 01:24:31', 'SELECT * FROM `btech` ORDER BY `btech`.`TenScoecard` ASC'),
(104, 'root', 'details', 'btech', '2017-05-13 01:24:52', 'ALTER TABLE `btech` CHANGE `TenScoecard` `TenScorecard` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL'),
(105, 'root', 'details', 'btech', '2017-05-13 01:25:07', 'ALTER TABLE `btech` CHANGE `TweScoecard` `TweScorecard` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL'),
(106, 'root', 'details', 'btech', '2017-05-13 01:25:59', 'ALTER TABLE `btech` CHANGE `DipandBtechScoecard` `DipandBtechScorecard` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL'),
(107, 'root', 'details', 'btech', '2017-05-13 01:29:36', 'SELECT * FROM `btech`'),
(108, 'root', 'details', 'mtech', '2017-05-13 01:33:28', 'SELECT * FROM `mtech`'),
(109, 'root', 'details', 'btech', '2017-05-13 01:34:13', 'SELECT * FROM `btech`'),
(110, 'root', 'details', 'btech', '2017-05-13 01:40:35', 'SELECT * FROM `btech`'),
(111, 'root', 'details', 'btechexamdetail', '2017-05-13 01:46:42', 'ALTER TABLE `btechexamdetail` CHANGE `IS_Main` `IS_Main` TINYINT(4) NOT NULL DEFAULT ''0'''),
(112, 'root', 'details', 'mtechexamdetail', '2017-05-13 01:49:12', 'ALTER TABLE `mtechexamdetail` CHANGE `IS_Main` `IS_Main` TINYINT(4) NOT NULL DEFAULT ''0'', CHANGE `IS_Back` `IS_Back` TINYINT(4) NOT NULL DEFAULT ''00'', CHANGE `IS_Rb` `IS_Rb` TINYINT(4) NOT NULL DEFAULT ''0'', CHANGE `IIS_Main` `IIS_Main` TINYINT(4) NOT NULL DEFAULT ''0'', CHANGE `IIS_Back` `IIS_Back` TINYINT(4) NOT NULL DEFAULT ''0'', CHANGE `IIS_Rb` `IIS_Rb` TINYINT(4) NOT NULL DEFAULT ''0'', CHANGE `IIIS_Main` `IIIS_Main` TINYINT(4) NOT NULL DEFAULT ''0'', CHANGE `IIIS_Back` `IIIS_Back` TINYINT(4) NOT NULL DEFAULT ''000'', CHANGE `IIIS_Rb` `IIIS_Rb` TINYINT(4) NOT NULL DEFAULT ''0'', CHANGE `IVS_Main` `IVS_Main` TINYINT(4) NOT NULL DEFAULT ''0'', CHANGE `IVS_Back` `IVS_Back` TINYINT(4) NOT NULL DEFAULT ''0'', CHANGE `IVS_Rb` `IVS_Rb` TINYINT(4) NOT NULL DEFAULT ''0'''),
(113, 'root', 'details', 'mtechexamdetail', '2017-05-13 01:50:17', 'SELECT * FROM `mtechexamdetail`'),
(114, 'root', 'details', 'btech', '2017-05-13 01:50:21', 'SELECT * FROM `btech`'),
(115, 'root', 'details', 'btechexamdetail', '2017-05-13 01:50:34', 'SELECT * FROM `btechexamdetail`'),
(116, 'root', 'details', 'btechexamdetail', '2017-05-13 21:41:14', 'SELECT * FROM `btechexamdetail`'),
(117, 'root', '', '', '2017-05-14 12:41:01', 'SHOW PROCESSLIST'),
(118, 'root', 'mysql', 'user', '2017-05-14 12:45:51', 'SELECT * FROM `user`'),
(119, 'root', 'mysql', 'db', '2017-05-14 12:46:45', 'SELECT * FROM `db`'),
(120, 'root', 'mysql', 'db', '2017-05-14 12:47:09', 'SELECT * FROM `db`'),
(121, 'root', 'password', 'proctb', '2017-05-14 12:49:32', 'SELECT * FROM `proctb`'),
(122, 'root', 'password', 'proctb', '2017-05-14 12:49:52', 'SELECT * FROM `proctb`'),
(123, 'root', 'details', 'btech', '2017-05-14 12:50:45', 'SELECT * FROM `btech`'),
(124, 'root', 'details', 'btech', '2017-05-14 13:05:29', 'SELECT * FROM `btech`'),
(125, 'root', 'details', 'btechexamdetail', '2017-05-14 14:26:44', 'SELECT * FROM `btechexamdetail`'),
(126, 'root', 'details', 'btechexamdetail', '2017-05-14 14:46:58', 'SELECT * FROM `btechexamdetail`'),
(127, 'root', 'details', 'btech', '2017-05-14 14:55:14', 'SELECT * FROM `btech`'),
(128, 'root', 'details', 'btechexamdetail', '2017-05-14 15:20:25', 'SELECT * FROM `btechexamdetail`'),
(129, 'root', 'details', 'btechexamdetail', '2017-05-14 17:17:02', 'SELECT * FROM `btechexamdetail`'),
(130, 'root', 'details', 'btechexamdetail', '2017-05-14 17:48:05', 'SELECT * FROM `btechexamdetail`'),
(131, 'root', 'details', 'btechexamdetail', '2017-05-14 17:59:06', 'SELECT * FROM `btechexamdetail`'),
(132, 'root', 'details', 'btechexamdetail', '2017-05-14 17:59:11', 'SELECT * FROM `btechexamdetail`'),
(133, 'root', 'details', 'btechexamdetail', '2017-05-14 17:59:27', 'SELECT * FROM `btechexamdetail`'),
(134, 'root', 'details', 'btech', '2017-05-14 18:06:30', 'SELECT * FROM `btech`'),
(135, 'root', 'details', 'btech', '2017-05-14 22:23:50', 'SELECT * FROM `btech`'),
(136, 'root', 'password', 'examtb', '2017-05-14 22:25:38', 'SELECT * FROM `examtb`'),
(137, 'root', 'details', 'btechexamdetail', '2017-05-14 22:26:13', 'SELECT * FROM `btechexamdetail`'),
(138, 'root', 'details', 'btechexamdetail', '2017-05-15 16:15:18', 'ALTER TABLE `btechexamdetail` CHANGE `Degree` `Degree` TINYINT NOT NULL DEFAULT ''No'', CHANGE `ProCerti` `ProCerti` TINYINT NOT NULL DEFAULT ''No'''),
(139, 'root', 'details', 'btechexamdetail', '2017-05-15 16:15:26', 'SELECT * FROM `btechexamdetail`'),
(140, 'root', 'details', 'btechexamdetail', '2017-05-15 16:15:39', 'SELECT * FROM `btechexamdetail`'),
(141, 'root', 'details', 'btechexamdetail', '2017-05-15 16:16:00', 'SELECT * FROM `btechexamdetail`'),
(142, 'root', 'details', 'mtechexamdetail', '2017-05-15 16:17:27', 'SELECT * FROM `mtechexamdetail`'),
(143, 'root', 'details', 'btechexamdetail', '2017-05-15 16:18:05', 'ALTER TABLE `btechexamdetail` CHANGE `Degree` `Degree` TINYINT NOT NULL DEFAULT ''0'', CHANGE `ProCerti` `ProCerti` TINYINT NOT NULL DEFAULT ''0'''),
(144, 'root', 'details', 'mtechexamdetail', '2017-05-15 16:18:34', 'SELECT * FROM `mtechexamdetail`'),
(145, 'root', 'details', 'mtechexamdetail', '2017-05-15 16:19:26', 'ALTER TABLE `mtechexamdetail` ADD `Degree` TINYINT NOT NULL DEFAULT ''0'', ADD `ProCerti` TINYINT NOT NULL DEFAULT ''0'';'),
(146, 'root', 'details', 'mtechexamdetail', '2017-05-15 16:20:03', 'ALTER TABLE `mtechexamdetail` ADD `Degree` TINYINT NOT NULL DEFAULT ''0'', ADD `ProCerti` TINYINT NOT NULL DEFAULT ''0'''),
(147, 'root', 'details', 'mtechexamdetail', '2017-05-15 16:20:18', 'ALTER TABLE `mtechexamdetail` ADD `Degree` TINYINT NOT NULL DEFAULT ''0'', ADD `ProCerti` TINYINT NOT NULL DEFAULT ''0'''),
(148, 'root', 'details', 'mtechexamdetail', '2017-05-15 16:20:50', 'SELECT * FROM `mtechexamdetail`'),
(149, 'root', 'details', 'mtechexamdetail', '2017-05-15 16:33:37', 'SELECT * FROM `mtechexamdetail`'),
(150, 'root', 'details', 'mtechexamdetail', '2017-05-15 16:36:17', 'SELECT * FROM `mtechexamdetail`'),
(151, 'root', 'details', 'documentDetails', '2017-05-15 17:46:58', 'ALTER TABLE `documentDetails` ADD PRIMARY KEY(`Scholar`)'),
(152, 'root', 'details', 'betchDocumentDetails', '2017-05-15 17:47:23', '\n CREATE  TABLE  `details`.`betchDocumentDetails` (  `Scholar` varchar( 50  )  NOT  NULL ,\n `XMarkSheet` tinyint( 4  )  NOT  NULL default  ''0'',\n `XIIMarkSheet` tinyint( 4  )  NOT  NULL default  ''0'',\n `taxDeducation` tinyint( 4  )  NOT  NULL default  ''0'',\n `regStdBon` tinyint( 4  )  NOT  NULL default  ''0'',\n `aictcAppCerti` tinyint( 4  )  NOT  NULL default  ''0'',\n `loan` tinyint( 4  )  NOT  NULL default  ''0'',\n PRIMARY  KEY (  `Scholar`  )  ) ENGINE  =  MyISAM  DEFAULT CHARSET  = latin1;\n\nINSERT INTO `details`.`betchDocumentDetails` SELECT * FROM `details`.`documentDetails`;\n\nDROP TABLE `details`.`documentDetails`;'),
(153, 'root', 'details', 'btechDocumentDetails', '2017-05-15 17:47:34', '\n CREATE  TABLE  `details`.`btechDocumentDetails` (  `Scholar` varchar( 50  )  NOT  NULL ,\n `XMarkSheet` tinyint( 4  )  NOT  NULL default  ''0'',\n `XIIMarkSheet` tinyint( 4  )  NOT  NULL default  ''0'',\n `taxDeducation` tinyint( 4  )  NOT  NULL default  ''0'',\n `regStdBon` tinyint( 4  )  NOT  NULL default  ''0'',\n `aictcAppCerti` tinyint( 4  )  NOT  NULL default  ''0'',\n `loan` tinyint( 4  )  NOT  NULL default  ''0'',\n PRIMARY  KEY (  `Scholar`  )  ) ENGINE  =  MyISAM  DEFAULT CHARSET  = latin1;\n\nINSERT INTO `details`.`btechDocumentDetails` SELECT * FROM `details`.`betchDocumentDetails`;\n\nDROP TABLE `details`.`betchDocumentDetails`;'),
(154, 'root', 'details', 'btechdocumentdetails', '2017-05-15 17:48:11', '\n CREATE  TABLE  `details`.`mtechDocumentDetails` (  `Scholar` varchar( 50  )  NOT  NULL ,\n `XMarkSheet` tinyint( 4  )  NOT  NULL default  ''0'',\n `XIIMarkSheet` tinyint( 4  )  NOT  NULL default  ''0'',\n `taxDeducation` tinyint( 4  )  NOT  NULL default  ''0'',\n `regStdBon` tinyint( 4  )  NOT  NULL default  ''0'',\n `aictcAppCerti` tinyint( 4  )  NOT  NULL default  ''0'',\n `loan` tinyint( 4  )  NOT  NULL default  ''0'',\n PRIMARY  KEY (  `Scholar`  )  ) ENGINE  =  MyISAM  DEFAULT CHARSET  = latin1;\n\nINSERT INTO `details`.`mtechDocumentDetails` SELECT * FROM `details`.`btechdocumentdetails`;'),
(155, 'root', 'details', 'mtechexamdetail', '2017-05-15 17:53:21', 'SELECT * FROM `mtechexamdetail`'),
(156, 'root', 'details', 'mtechexamdetail', '2017-05-15 17:53:32', 'SELECT * FROM `mtechexamdetail`'),
(157, 'root', 'details', 'mtech', '2017-05-15 17:53:40', 'SELECT * FROM `mtech`'),
(158, 'root', 'details', 'mtech', '2017-05-15 17:53:44', 'SELECT * FROM `mtech`'),
(159, 'root', 'details', 'mtech', '2017-05-15 17:53:46', 'SELECT * FROM `mtech`'),
(160, 'root', 'details', 'btechexamdetail', '2017-05-15 17:53:50', 'SELECT * FROM `btechexamdetail`'),
(161, 'root', 'details', 'btechexamdetail', '2017-05-15 17:53:54', 'SELECT * FROM `btechexamdetail`'),
(162, 'root', 'details', 'btechexamdetail', '2017-05-15 17:53:56', 'SELECT * FROM `btechexamdetail`'),
(163, 'root', 'details', 'btech', '2017-05-15 17:53:59', 'SELECT * FROM `btech`'),
(164, 'root', 'details', 'btech', '2017-05-15 17:54:03', 'SELECT * FROM `btech`'),
(165, 'root', 'details', 'btech', '2017-05-15 17:54:10', 'SELECT * FROM `btech`'),
(166, 'root', 'details', 'btech', '2017-05-15 17:54:13', 'SELECT * FROM `btech`'),
(167, 'root', 'details', 'mtechdocumentdetails', '2017-05-15 18:31:59', 'ALTER TABLE `mtechdocumentdetails` ADD `IyearNoDues` TINYINT NOT NULL DEFAULT ''0'', ADD `IIyearNoDues` TINYINT NOT NULL DEFAULT ''0'';'),
(168, 'root', 'details', 'btechdocumentdetails', '2017-05-15 18:32:36', 'ALTER TABLE `btechdocumentdetails` ADD `IyearNoDues` TINYINT NOT NULL DEFAULT ''0'', ADD `IIyearNoDues` TINYINT NOT NULL DEFAULT ''0'', ADD `IIIyearNoDues` TINYINT NOT NULL DEFAULT ''0'', ADD `IVyearNoDues` TINYINT NOT NULL DEFAULT ''0'';'),
(169, 'root', 'details', 'btechdocumentdetails', '2017-05-15 18:52:30', 'ALTER TABLE `btechdocumentdetails` ADD `withMidCourse` TINYINT NOT NULL DEFAULT ''0'', ADD `withMidCourseDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;'),
(170, 'root', 'details', 'mtechdocumentdetails', '2017-05-15 18:53:05', 'ALTER TABLE `mtechdocumentdetails` ADD `withMidCourse` TINYINT NOT NULL DEFAULT ''0'', ADD `withMidCourseDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;'),
(171, 'root', 'details', 'mtechdocumentdetails', '2017-05-15 18:55:40', 'ALTER TABLE `mtechdocumentdetails` ADD `withComplitionCourse` TINYINT NOT NULL DEFAULT ''0'', ADD `withComplitionCourseDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP'),
(172, 'root', 'details', 'mtechdocumentdetails', '2017-05-15 18:56:56', 'ALTER TABLE `mtechdocumentdetails` ADD `withComplitionCourse` TINYINT NOT NULL DEFAULT ''0'', ADD `withComplitionCourseDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP'),
(173, 'root', 'details', 'mtechdocumentdetails', '2017-05-15 18:57:33', 'ALTER TABLE `mtechdocumentdetails` ADD `withComplitionCourse` TINYINT NOT NULL DEFAULT ''0'', ADD `withComplitionCourseDate` DATE NOT NULL;'),
(174, 'root', 'details', 'mtechdocumentdetails', '2017-05-15 18:57:45', 'ALTER TABLE `mtechdocumentdetails` CHANGE `withMidCourseDate` `withMidCourseDate` DATE NOT NULL'),
(175, 'root', 'details', 'btechdocumentdetails', '2017-05-15 18:58:20', 'ALTER TABLE `btechdocumentdetails` ADD `withComplitionCourse` TINYINT NOT NULL DEFAULT ''0'', ADD `withComplitionCourseDate` DATE NOT NULL;'),
(176, 'root', 'details', 'btechdocumentdetails', '2017-05-15 18:58:28', 'ALTER TABLE `btechdocumentdetails` CHANGE `withMidCourseDate` `withMidCourseDate` DATE NOT NULL'),
(177, 'root', 'details', 'btechdocumentdetails', '2017-05-15 18:58:48', 'ALTER TABLE `btechdocumentdetails` CHANGE `withMidCourseDate` `withMidCourseDate` VARCHAR(50) NOT NULL'),
(178, 'root', 'details', 'btechdocumentdetails', '2017-05-15 18:58:57', 'ALTER TABLE `btechdocumentdetails` CHANGE `withComplitionCourseDate` `withComplitionCourseDate` VARCHAR(50) NOT NULL'),
(179, 'root', 'details', 'mtechdocumentdetails', '2017-05-15 18:59:14', 'ALTER TABLE `mtechdocumentdetails` CHANGE `withMidCourseDate` `withMidCourseDate` VARCHAR(50) NOT NULL, CHANGE `withComplitionCourseDate` `withComplitionCourseDate` VARCHAR(50) NOT NULL'),
(180, 'root', 'details', 'btechdocumentdetails', '2017-05-15 19:18:31', 'INSERT INTO `details`.`btechdocumentdetails` (`Scholar`, `XMarkSheet`, `XIIMarkSheet`, `taxDeducation`, `regStdBon`, `aictcAppCerti`, `loan`, `IyearNoDues`, `IIyearNoDues`, `IIIyearNoDues`, `IVyearNoDues`, `withMidCourse`, `withMidCourseDate`, `withComplitionCourse`, `withComplitionCourseDate`) VALUES (''13eebcs064'', ''1'', ''0'', ''0'', ''0'', ''0'', ''1'', ''0'', ''1'', ''0'', ''1'', ''0'', '''', ''1'', ''12/12/2017'');'),
(181, 'root', 'details', 'btech', '2017-05-15 19:19:38', 'INSERT INTO `details`.`btech` (`prog`, `Branch`, `Scholar`, `Exam`, `Rank`, `Under`, `Name`, `Father_Name`, `Mother_Name`, `Address`, `DOB`, `City`, `Image`, `Contact`, `Pin`, `Email`, `State`, `Marriage`, `Blood`, `Gender`, `Religion`, `Belong`, `Income`, `Father_occupation`, `Mother_occupation`, `tenSubject`, `tenBoard`, `tenPass`, `tenMarks`, `tweSubject`, `tweBoard`, `twePass`, `tweMarks`, `ugSubject`, `ugBoard`, `ugPass`, `ugMarks`, `TenScorecard`, `TweScorecard`, `DOB_Certificate`, `Caste_Certificate`, `DipandBtechScorecard`, `PHandEX_Certificate`, `Tc`, `Other`) VALUES (''13eebcs064'', NULL, '''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);'),
(182, 'root', 'details', 'btechexamdetail', '2017-05-15 19:20:44', 'INSERT INTO `details`.`btechexamdetail` (`Scholar`, `IS_Main`, `IS_Back`, `IS_Rb`, `IIS_Main`, `IIS_Back`, `IIS_Rb`, `IIIS_Main`, `IIIS_Back`, `IIIS_Rb`, `IVS_Main`, `IVS_Back`, `IVS_Rb`, `VS_Main`, `VS_Back`, `VS_Rb`, `VIS_Main`, `VIS_Back`, `VIS_Rb`, `VIIS_Main`, `VIIS_Back`, `VIIS_Rb`, `VIIIS_Main`, `VIIIS_Back`, `VIIIS_Rb`, `Degree`, `ProCerti`) VALUES (''13eebcs064'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'');'),
(183, 'root', 'details', 'btechdocumentdetails', '2017-05-15 19:20:47', 'SELECT * FROM `btechdocumentdetails`'),
(184, 'root', 'details', 'btech', '2017-05-15 19:20:52', 'SELECT * FROM `btech`'),
(185, 'root', 'details', 'btech', '2017-05-15 19:22:47', 'SELECT * FROM btech WHERE Scholar=''13eebcs064'''),
(186, 'root', 'details', 'btech', '2017-05-15 19:22:58', 'SELECT * FROM `btech`'),
(187, 'root', 'details', 'btech', '2017-05-15 19:23:12', 'SELECT * FROM `btech`'),
(188, 'root', 'details', 'btech', '2017-05-15 19:23:14', 'SELECT * FROM `btech`'),
(189, 'root', 'details', 'btech', '2017-05-15 19:23:24', 'SELECT * FROM `btech`'),
(190, 'root', 'details', 'btech', '2017-05-15 19:24:04', 'SELECT * FROM `btech`'),
(191, 'root', 'details', 'btechdocumentdetails', '2017-05-15 19:24:06', 'SELECT * FROM `btechdocumentdetails`'),
(192, 'root', 'password', 'examtb', '2017-05-17 00:22:45', 'SELECT * FROM `examtb`'),
(193, 'root', 'password', 'examtb', '2017-05-17 00:22:59', 'SELECT * FROM `examtb`'),
(194, 'root', 'password', 'examtb', '2017-05-17 00:23:01', 'SELECT * FROM `examtb`'),
(195, 'root', 'details', 'btech', '2017-05-17 00:23:41', 'SELECT * FROM `btech`'),
(196, 'root', 'details', 'btech', '2017-05-17 00:23:50', 'TRUNCATE TABLE `btech`'),
(197, 'root', 'details', 'btechdocumentdetails', '2017-05-17 00:24:36', 'SELECT * FROM `btechdocumentdetails`'),
(198, 'root', 'details', 'btechdocumentdetails', '2017-05-17 00:24:39', 'TRUNCATE TABLE `btechdocumentdetails`'),
(199, 'root', 'details', 'btechexamdetail', '2017-05-17 00:24:46', 'TRUNCATE TABLE `btechexamdetail`'),
(200, 'root', 'details', 'mtech', '2017-05-17 00:24:51', 'TRUNCATE TABLE `mtech`'),
(201, 'root', 'details', 'mtechdocumentdetails', '2017-05-17 00:24:56', 'TRUNCATE TABLE `mtechdocumentdetails`'),
(202, 'root', 'details', 'mtechexamdetail', '2017-05-17 00:25:01', 'TRUNCATE TABLE `mtechexamdetail`'),
(203, 'root', 'password', 'examtb', '2017-05-17 00:25:09', 'TRUNCATE TABLE `examtb`'),
(204, 'root', 'password', 'proctb', '2017-05-17 00:25:16', 'SELECT * FROM `proctb`'),
(205, 'root', 'password', 'proctb', '2017-05-17 00:25:20', 'TRUNCATE TABLE `proctb`'),
(206, 'root', 'details', 'btechdocumentdetails', '2017-05-17 00:33:14', 'ALTER TABLE `btechdocumentdetails` CHANGE `withComplitionCourseDate` `withComplitionCourseDate` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL'),
(207, 'root', 'details', 'mtechdocumentdetails', '2017-05-17 00:33:32', 'ALTER TABLE `mtechdocumentdetails` CHANGE `withMidCourseDate` `withMidCourseDate` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, CHANGE `withComplitionCourseDate` `withComplitionCourseDate` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL'),
(208, 'root', 'details', 'btech', '2017-05-17 00:33:47', 'SELECT * FROM `btech`'),
(209, 'root', 'details', 'btechdocumentdetails', '2017-05-17 00:33:56', 'SELECT * FROM `btechdocumentdetails`'),
(210, 'root', 'details', 'btechexamdetail', '2017-05-17 00:34:00', 'SELECT * FROM `btechexamdetail`'),
(211, 'root', 'details', 'btechdocumentdetails', '2017-05-17 00:34:13', 'INSERT INTO `details`.`btechdocumentdetails` (`Scholar`, `XMarkSheet`, `XIIMarkSheet`, `taxDeducation`, `regStdBon`, `aictcAppCerti`, `loan`, `IyearNoDues`, `IIyearNoDues`, `IIIyearNoDues`, `IVyearNoDues`, `withMidCourse`, `withMidCourseDate`, `withComplitionCourse`, `withComplitionCourseDate`) VALUES (''13eebcs064'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', ''0'', NULL, ''0'', NULL);'),
(212, 'root', 'details', 'btechexamdetail', '2017-05-17 00:50:23', 'SELECT * FROM `btechexamdetail`'),
(213, 'root', 'password', 'examtb', '2017-05-17 00:54:14', 'SELECT * FROM `examtb`'),
(214, 'root', 'password', 'proctb', '2017-05-17 00:54:20', 'SELECT * FROM `proctb`'),
(215, 'root', 'details', 'btech', '2017-05-17 02:09:08', 'ALTER TABLE `btech` CHANGE `TenScorecard` `TenScorecard` TINYINT NOT NULL DEFAULT ''0'', CHANGE `TweScorecard` `TweScorecard` TINYINT NOT NULL DEFAULT ''0'', CHANGE `DOB_Certificate` `DOB_Certificate` TINYINT NOT NULL DEFAULT ''0'', CHANGE `Caste_Certificate` `Caste_Certificate` TINYINT NOT NULL DEFAULT ''0'', CHANGE `DipandBtechScorecard` `DipandBtechScorecard` TINYINT NOT NULL DEFAULT ''0'', CHANGE `PHandEX_Certificate` `PHandEX_Certificate` TINYINT NOT NULL DEFAULT ''0'', CHANGE `Tc` `Tc` TINYINT NOT NULL DEFAULT ''0'', CHANGE `Other` `Other` TINYINT NOT NULL DEFAULT ''0'''),
(216, 'root', 'details', 'btech', '2017-05-17 03:01:42', 'SELECT * FROM `btech`'),
(217, 'root', 'details', 'btech', '2017-05-17 03:01:44', 'SELECT * FROM `btech`'),
(218, 'root', 'details', 'btech', '2017-05-17 03:02:08', 'SELECT * FROM `btech`'),
(219, 'root', 'details', 'btech', '2017-05-17 03:10:24', 'SELECT * FROM `btech` PROCEDURE ANALYSE()'),
(220, 'root', 'details', 'btech', '2017-05-17 03:19:04', 'SELECT * FROM `btech`'),
(221, 'root', 'details', 'btech', '2017-05-17 03:19:06', 'SELECT * FROM `btech`'),
(222, 'root', 'details', 'btech', '2017-05-17 03:19:12', 'SELECT * FROM `btech`'),
(223, 'root', 'details', 'btech', '2017-05-17 08:17:07', 'ALTER TABLE `btech` CHANGE `prog` `prog` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL, CHANGE `tenMarks` `tenMarks` VARCHAR(50) NULL DEFAULT NULL, CHANGE `tweMarks` `tweMarks` VARCHAR(50) NULL DEFAULT NULL, CHANGE `ugMarks` `ugMarks` VARCHAR(50) NULL DEFAULT NULL'),
(224, 'root', 'details', 'mtech', '2017-05-17 08:17:48', 'ALTER TABLE `mtech` CHANGE `tenMarks` `tenMarks` VARCHAR(50) NULL DEFAULT NULL, CHANGE `tweMarks` `tweMarks` VARCHAR(50) NULL DEFAULT NULL, CHANGE `ugMarks` `ugMarks` VARCHAR(50) NULL DEFAULT NULL'),
(225, 'root', 'details', 'btech', '2017-05-17 08:37:31', 'SELECT * FROM `btech`'),
(226, 'root', 'details', 'btech', '2017-05-17 08:45:20', 'TRUNCATE TABLE `btech`'),
(227, 'root', 'details', 'btechdocumentdetails', '2017-05-17 08:45:26', 'TRUNCATE TABLE `btechdocumentdetails`'),
(228, 'root', 'details', 'btechexamdetail', '2017-05-17 08:45:32', 'TRUNCATE TABLE `btechexamdetail`'),
(229, 'root', 'password', 'proctb', '2017-05-17 08:46:05', 'SELECT * FROM `proctb`'),
(230, 'root', 'password', 'examtb', '2017-05-17 08:46:16', 'SELECT * FROM `examtb`'),
(231, 'root', 'details', 'btech', '2017-05-17 08:54:01', 'SELECT * FROM `btech`'),
(232, 'root', 'details', 'btechexamdetail', '2017-05-17 08:54:11', 'SELECT * FROM `btechexamdetail`'),
(233, 'root', 'details', 'mtech', '2017-05-17 08:54:22', 'SELECT * FROM `mtech`'),
(234, 'root', 'details', 'btech', '2017-05-22 16:13:11', 'SELECT * FROM `btech`'),
(235, 'root', 'details', 'btechdocumentdetails', '2017-05-22 16:13:51', 'SELECT * FROM `btechdocumentdetails`'),
(236, 'root', 'details', 'btechexamdetail', '2017-05-22 16:14:37', 'SELECT * FROM `btechexamdetail`'),
(237, 'root', 'details', 'btech', '2017-05-22 16:14:51', 'SELECT * FROM `btech`'),
(238, 'root', 'details', 'mtech', '2017-05-22 16:15:10', 'SELECT * FROM `mtech`'),
(239, 'root', 'details', 'mtech', '2017-05-22 16:15:19', 'SELECT * FROM `mtech`'),
(240, 'root', 'details', 'mtechdocumentdetails', '2017-05-22 16:15:24', 'SELECT * FROM `mtechdocumentdetails`'),
(241, 'root', 'details', 'btech', '2017-05-22 16:15:29', 'SELECT * FROM `btech`'),
(242, 'root', 'details', 'btech', '2017-05-23 09:00:24', 'SELECT * FROM `btech`'),
(243, 'root', 'details', 'btech', '2017-05-23 09:00:59', 'SELECT * FROM `btech`'),
(244, 'root', 'details', 'btech', '2017-05-23 09:01:19', 'SELECT * FROM `btech`'),
(245, 'root', 'details', 'btechexamdetail', '2017-05-23 09:03:48', 'SELECT * FROM `btechexamdetail`'),
(246, 'root', 'details', 'btechexamdetail', '2017-05-23 09:03:53', 'SELECT * FROM `btechexamdetail`'),
(247, 'root', 'details', 'btechexamdetail', '2017-05-23 09:04:00', 'SELECT * FROM `btechexamdetail`'),
(248, 'root', 'details', 'btechexamdetail', '2017-05-23 09:04:18', 'SELECT * FROM `btechexamdetail`'),
(249, 'root', 'password', 'examtb', '2017-05-23 09:31:12', 'SELECT * FROM `examtb`'),
(250, 'root', 'password', 'proctb', '2017-05-23 09:31:29', 'SELECT * FROM `proctb`'),
(251, 'root', 'password', 'examtb', '2017-05-23 09:33:28', 'SELECT * FROM `examtb`'),
(252, 'root', 'password', 'examtb', '2017-05-23 09:33:33', 'SELECT * FROM `examtb`'),
(253, 'root', 'password', 'examtb', '2017-05-23 09:33:38', 'SELECT * FROM `examtb`');

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `page_nr` int(10) unsigned NOT NULL auto_increment,
  `page_descr` varchar(50) collate latin1_general_ci NOT NULL default '',
  PRIMARY KEY  (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pma_pdf_pages`
--


-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) collate latin1_general_ci NOT NULL default '',
  `master_table` varchar(64) collate latin1_general_ci NOT NULL default '',
  `master_field` varchar(64) collate latin1_general_ci NOT NULL default '',
  `foreign_db` varchar(64) collate latin1_general_ci NOT NULL default '',
  `foreign_table` varchar(64) collate latin1_general_ci NOT NULL default '',
  `foreign_field` varchar(64) collate latin1_general_ci NOT NULL default '',
  PRIMARY KEY  (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Relation table';

--
-- Dumping data for table `pma_relation`
--


-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `table_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `pdf_page_number` int(11) NOT NULL default '0',
  `x` float unsigned NOT NULL default '0',
  `y` float unsigned NOT NULL default '0',
  PRIMARY KEY  (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Dumping data for table `pma_table_coords`
--


-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `table_name` varchar(64) collate latin1_general_ci NOT NULL default '',
  `display_field` varchar(64) collate latin1_general_ci NOT NULL default '',
  PRIMARY KEY  (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma_table_info`
--

--
-- Database: `proctor`
--
CREATE DATABASE `proctor` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proctor`;
--
-- Database: `proctor management`
--
CREATE DATABASE `proctor management` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proctor management`;
--
-- Database: `test`
--
CREATE DATABASE `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `test`;
--
-- Database: `webauth`
--
CREATE DATABASE `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) collate latin1_general_ci NOT NULL default '',
  `pass` char(32) collate latin1_general_ci NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');
