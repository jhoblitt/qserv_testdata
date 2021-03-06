-- MySQL dump 10.13  Distrib 5.1.61, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: w2013
-- ------------------------------------------------------
-- Server version	5.1.61

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Science_Ccd_Exposure`
--

DROP TABLE IF EXISTS `Science_Ccd_Exposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Science_Ccd_Exposure` (
  `scienceCcdExposureId` bigint(20) NOT NULL,
  `run` int(11) NOT NULL,
  `camcol` tinyint(4) NOT NULL,
  `filterId` tinyint(4) NOT NULL,
  `field` int(11) NOT NULL,
  `filterName` char(3) NOT NULL,
  `ra` double NOT NULL,
  `decl` double NOT NULL,
  `htmId20` bigint(20) NOT NULL,
  `equinox` float NOT NULL,
  `raDeSys` varchar(20) NOT NULL,
  `ctype1` varchar(20) NOT NULL,
  `ctype2` varchar(20) NOT NULL,
  `crpix1` float NOT NULL,
  `crpix2` float NOT NULL,
  `crval1` double NOT NULL,
  `crval2` double NOT NULL,
  `cd1_1` double NOT NULL,
  `cd1_2` double NOT NULL,
  `cd2_1` double NOT NULL,
  `cd2_2` double NOT NULL,
  `corner1Ra` double NOT NULL,
  `corner1Decl` double NOT NULL,
  `corner2Ra` double NOT NULL,
  `corner2Decl` double NOT NULL,
  `corner3Ra` double NOT NULL,
  `corner3Decl` double NOT NULL,
  `corner4Ra` double NOT NULL,
  `corner4Decl` double NOT NULL,
  `poly` binary(120) NOT NULL,
  `taiMjd` double NOT NULL,
  `obsStart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expMidpt` varchar(30) NOT NULL,
  `expTime` float NOT NULL,
  `nCombine` int(11) NOT NULL,
  `binX` int(11) NOT NULL,
  `binY` int(11) NOT NULL,
  `fluxMag0` float NOT NULL,
  `fluxMag0Sigma` float NOT NULL,
  `fwhm` double NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`scienceCcdExposureId`),
  KEY `IDX_htmId20` (`htmId20`),
  KEY `FK_Science_Ccd_Exposure_filterId` (`filterId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-08 15:04:22
