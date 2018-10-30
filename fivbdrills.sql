CREATE DATABASE  IF NOT EXISTS `fivbdrills` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `fivbdrills`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: fivbdrills
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `drills`
--

DROP TABLE IF EXISTS `drills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `drills` (
  `drill_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `objective` varchar(500) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `mods` varchar(200) DEFAULT NULL,
  `pointers` varchar(500) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`drill_id`),
  KEY `page_id_idx` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COMMENT='All of the drills with unique drill_id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drills`
--

LOCK TABLES `drills` WRITE;
/*!40000 ALTER TABLE `drills` DISABLE KEYS */;
INSERT INTO `drills` VALUES (1,NULL,'voleste','The objective of this drill is to raise boy temperature in preparation for more strenuous activity and increase awareness of how current ocnditions affect the ball. Additionaly this drill reinforces correct defense technques','Drill starts with two athletes on either side ofthe net with one athlete serving underhandbefore moving into the court.Athletes are attempting to win a point byplaying the ball over the net using theforearm pass. The ball can only be contactedonce on each side of the net.Initially however you could allow 2 touches,as this makes the game slightly easier.For athletes under 9 or 10 (or for beginners)voleste should be played on a smaller court.Any ball played overhead must be playedwith both hands together and a one armedplay is only allowed below the waist.If you have more than two teams you canplay with a ‘challenger’ and ‘points’ side.If the team on the challenger side wins theygo to the ‘points’ side to receive the nextserve and chance to win a point.To speed the game up a coach can initiate afree-ball onto the ‘points’ side.For additional Voleste ideas go to page 127.','Athletes need to drop to the groundbetween each contact they makewith the ball. Athletes can run around the net aftereach play.','Athletes need to stay very low and be activated andready to move as the opposition is about to contactthe ball.2Athletes should be encouraged to watch the athletenot the ball.3Athletes should be reminded that they should thinkstrategically about where they are placing the ball,looking to play the ball away from the opposition.',1,1,1),(2,NULL,'Two-Ball Juggle',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'Two-Ball Juggle in Pairs','The objective of this drill is to raise body temperature in preparation for more strenuous activity and increase awareness of how current conditions affect the ball. Additionally, this drill develops hand-eye coordiation and encourages good athlete body positioning','Each athlete starts with one ball. The drill begins with one athlete throwing a ball to their partner(Athlete 1 throws the ball to athlete 2). etc',NULL,NULL,1,3,1),(4,NULL,'Throw/Pass/Catch',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'Skyball Serve and Catch',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,'Catch Behind in Lunge Position','This drill gets athletes moving while getting a feel for current wind conditions. It also helps athlestes develop an awareness of where the ball is, even when it is out of direct sight, and reinforces the correct lunge position that athletste should adopt when playing a short ball.','Step 1: An athlete throws the ball up in the air(low at first). and proceeds to catch it behind their back in a lunge position.',NULL,NULL,2,6,1),(7,NULL,'Pass/Tomahawk/Turn and Dig',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,'Pass Means Set/ Set Means Pass',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,'WARM-UPVOLESTE','This objective of this drill is to loosen up thebody and raise body temperature inpreparation for more strenuous activity.It will also increase the athlete’s awarenessof how current environmental conditionsaffect the ball.Additionally this drill reinforces correctdefense techniques and overall hustle.','This drill starts with one athlete on either sideof the net.One side is the ‘points’ side and the other isthe ‘challenger’ side.The athlete on the ‘challenger’ sideunderhand serves across the net andathletes play out the rally with only one toucheach.For a slightly easier option you can make thedrill ‘2 touch’.The ball must be played with both handstogether.If the athlete on the ‘points’ side wins the rallythey get a point and if the player on the‘challenger’ side wins they move to the‘points’ side to receive the next serve.If there are two athletes they can stay ontheir own side and play to a certain score.If there is only one athlete, the coach canmark out a smaller court for her/himself andhave the athlete working harder for a point.','?Athletes need to drop to the groundbetween each contact they makewith the ball.?Individuals or teams must play theball and run round the court to enterfrom the other side','1 Athletes need to stay very low and be activated andready to move as the opposition is about to contactthe ball.2If there is only one athlete on each side the athleteneeds to attempt to return to the middle (and slightlyback) of the court after each contact, as this is thebest ‘base’ position from which to dig any ballcoming over.',3,NULL,1),(23,NULL,'Serve And Get Into Position','Rarely do we serve and stay at the baseline','In this drill the athlete serves and then moves',NULL,NULL,1,NULL,8),(24,NULL,'Serving Outside of the Heart','This drill focuses on the development of','A heart shape should be drawn on the sand.',NULL,NULL,2,NULL,8),(25,NULL,'Deep Serve Practice','Athletes learn to develop a good consistent',NULL,NULL,NULL,2,NULL,8),(30,NULL,'Pass Around The Lines',NULL,NULL,NULL,NULL,1,NULL,2),(31,NULL,'One On One',NULL,NULL,NULL,NULL,1,NULL,2),(32,NULL,'Pass And Slap Hands',NULL,NULL,NULL,NULL,1,NULL,2),(33,NULL,'Non-Pass Move',NULL,NULL,NULL,NULL,1,24,2),(34,NULL,'Diamond Passing ',NULL,NULL,NULL,NULL,1,NULL,2),(35,NULL,'U Passing Drill',NULL,NULL,NULL,NULL,2,NULL,2),(36,NULL,'Passing In System',NULL,NULL,NULL,NULL,2,NULL,2);
/*!40000 ALTER TABLE `drills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `levels` (
  `level_id` int(11) NOT NULL,
  `level` varchar(45) DEFAULT NULL,
  `alt_level` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'beginner',NULL),(2,'beginner','intermediate'),(3,'intermediate',NULL),(4,'intermediate','advanced'),(5,'advanced',NULL);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `image` blob,
  `youtube` varchar(45) NOT NULL,
  `drill_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  KEY `drill_id_idx` (`drill_id`),
  CONSTRAINT `drill_id` FOREIGN KEY (`drill_id`) REFERENCES `drills` (`drill_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='blobs/links to the pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` varchar(45) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='skills such as passing, serving, blocking, etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'warm-up'),(2,'passing'),(3,'setting'),(4,'attacking'),(5,'blocking'),(6,'defense'),(7,'game'),(8,'serving');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-29 20:53:30
