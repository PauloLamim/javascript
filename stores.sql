# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Database: angling_direct_mage
# Generation Time: 2017-08-17 08:31:51 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table clickcollect_stores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clickcollect_stores`;

CREATE TABLE `clickcollect_stores` (
  `location_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The store id',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status of store',
  `title` varchar(255) DEFAULT NULL COMMENT 'The stores name',
  `city` varchar(255) DEFAULT NULL COMMENT 'The stores city',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'The stores postcode',
  `phone` varchar(255) DEFAULT NULL COMMENT 'The stores phone number',
  `latitude` varchar(255) DEFAULT NULL COMMENT 'The stores latitude',
  `longitude` varchar(255) DEFAULT NULL COMMENT 'The stores longitude',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Click and collect stores';

LOCK TABLES `clickcollect_stores` WRITE;
/*!40000 ALTER TABLE `clickcollect_stores` DISABLE KEYS */;

INSERT INTO `clickcollect_stores` (`location_id`, `status`, `title`, `city`, `postcode`, `phone`, `latitude`, `longitude`)
VALUES
	(1,1,'Angling Direct Waltham Cross, London','London','EN8 7HF','01992 769 769','51.68632660000001','-0.02705300000002353'),
	(2,1,'Angling Direct Norwich, Norfolk','Norwich','NR3 2RE','01603 400 757','52.6483404','1.2817442000000483'),
	(3,1,'Angling Direct Halesowen, Birmingham','Halesowen','B62 9EP','01212 275 665','52.4629858','-2.028083000000038'),
	(4,1,'Angling Direct Stanway, Colchester','Stanway','CO3 0AB','01206 579 001','51.87727','0.8452479999999696'),
	(5,1,'Angling Direct Rayleigh, Essex','Rayleigh','SS6 7UP','01268 777 127','51.5754063','0.602646199999981'),
	(6,1,'Angling Direct Chelmsford, Essex','Chelmsford','CM1 3AA','01245 352 300','51.72189900000001','0.4478641000000607'),
	(7,1,'Angling Direct Beccles, Suffolk','Beccles','NR34 9QB','01502 713 379','52.4592057','1.5640860999999404'),
	(8,1,'Angling Direct Crayford, Dartford','Crayford','DA1 4HG','01322 554 545','51.4523823','0.17779300000006515'),
	(9,1,'Angling Direct Ashford, Kent','Ashford','TN23 6LZ','01233 630 914','51.128611','0.8637665999999626'),
	(10,1,'Angling Direct Sittingbourne, Kent','Sittingbourne','ME10 3DE','01795 426 011','51.3390204','0.7464122999999745'),
	(11,1,'Angling Direct Willenhall, West Midlands','Willenhall','WV13 2BS','01902 229 839','52.583492733074245','-2.0572674337643093'),
	(12,1,'Angling Direct Wroxham, Norfolk','Wroxham','NR12 8UR','01603 782453','52.713741','1.4088400000000547'),
	(13,1,'Angling Direct Reading','Reading','RG30 6AZ','01189412896','51.46449539999999','-1.016152199999965'),
	(14,1,'AD Sheffield - Previously Climax Tackle','Dronfield','S18 1PP','01246 291155 ','53.308357','-1.479333'),
	(15,1,'Angling Direct Lincoln','Lincoln','LN6 9UH','01522 690301','53.176991769725184','-0.6172761730163074'),
	(16,1,'Angling Direct Swindon','Swindon',NULL,NULL,'51.5558','-1.7797'),
	(17,1,'Angling Direct Slough','Slough',NULL,NULL,'51.5105','-0.5950');

/*!40000 ALTER TABLE `clickcollect_stores` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
