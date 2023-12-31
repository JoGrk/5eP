-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: 5ep_puchar
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `zawodnicy`
--

DROP TABLE IF EXISTS `zawodnicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zawodnicy` (
  `id_zawodnika` int(3) NOT NULL,
  `nazwisko_i_imie` varchar(24) DEFAULT NULL,
  `panstwo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_zawodnika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zawodnicy`
--

LOCK TABLES `zawodnicy` WRITE;
/*!40000 ALTER TABLE `zawodnicy` DISABLE KEYS */;
INSERT INTO `zawodnicy` VALUES (1,'AAGHEIM Morten','Norwegia'),(2,'AARAAS Jon','Norwegia'),(3,'AHONEN Janne','Finlandia'),(4,'ALBORN Alan','USA'),(5,'AMMANN Simon','Szwajcaria'),(6,'ANISIMOV Maksim','Bialorus'),(7,'AREN Andreas','Szwecja'),(8,'AUDENRIETH Roland','Niemcy'),(9,'BACHLEDA Marcin','Polska'),(10,'BADER Ferdinand','Niemcy'),(11,'BARDAL Anders','Norwegia'),(12,'BAUMGARTNER Andreas','Austria'),(13,'BENKOVIC Rok','Slowenia'),(14,'BODMER Pascal','Niemcy'),(15,'BOGATAJ Jure','Slowenia'),(16,'BOGNER Tobias','Niemcy'),(17,'BOSHCHUK Volodymyr','Ukraina'),(18,'BRACHT Kai','Niemcy'),(19,'BRENDEN Kristian','Norwegia'),(20,'BRUDER Christian','Niemcy'),(21,'BYSTOEL Lars','Norwegia'),(22,'CECON Roberto','Wlochy'),(23,'CHAADAEV Petr','Bialorus'),(24,'CHEDAL Emmanuel','Francja'),(25,'CHIAPOLINO Stefano','Wlochy'),(26,'CHOI Heung-Chul','Korea'),(27,'CHOI Yong-Jik','Korea'),(28,'CIKL Martin','Czechy'),(29,'COLLOREDO Sebastian','Wlochy'),(30,'DAMJAN Anze','Slowenia'),(31,'DAMJAN Jernej','Slowenia'),(32,'DELLASEGA Roberto','Wlochy'),(33,'DESCOMBES SEVOIE Vincent','Francja'),(34,'DESSUM Nicolas','Francja'),(35,'DLUGOPOLSKI Krystian','Polska'),(36,'DOENNEM Olav Magne','Norwegia'),(37,'DOLEZAL Michal','Czechy'),(38,'DUFFNER Christof','Niemcy'),(39,'EGGENHOFER Markus','Austria'),(40,'ELSE Dirk','Niemcy'),(41,'ENGER Ole Christen','Norwegia'),(42,'ERIKSON Johan','Szwecja'),(43,'EVENSEN Johan Remen','Norwegia'),(44,'FAIRALL Nicholas','USA'),(45,'FANNEMEL Anders','Norwegia'),(46,'FATCHULLIN Ildar','Rosja'),(47,'FETTNER Manuel','Austria'),(48,'FILIMONOV Stanislav','Kazachstan'),(49,'FORFANG Daniel','Norwegia'),(50,'FRAS Damjan','Slowenia'),(51,'FREIHOLZ Sylvain','Szwajcaria'),(52,'FREITAG Richard','Niemcy'),(53,'FREUND Severin','Niemcy'),(54,'FUKITA Yukitaka','Japonia'),(55,'FUNAKI Kazuyoshi','Japonia'),(56,'GANGNES Kenneth','Norwegia'),(57,'GOLDBERGER Andreas','Austria'),(58,'GRILLHOESL Christoph','Niemcy'),(59,'GRIMHOLM Isak','Szwecja'),(60,'HAFELE Mathias','Austria'),(61,'HAJEK Antonin','Czechy'),(62,'HAKOLA Lauri','Finlandia'),(63,'HANNAWALD Sven','Niemcy'),(64,'HANSEN Kim-Roar','Norwegia'),(65,'HAPPONEN Janne','Finlandia'),(66,'HARADA Masahiko','Japonia'),(67,'HAUTAMAEKI Jussi','Finlandia'),(68,'HAUTAMAEKI Matti','Finlandia'),(69,'HAYBOECK Michael','Austria'),(70,'HERR Alexander','Niemcy'),(71,'HIGASHI Akira','Japonia'),(72,'HILDE Tom','Norwegia'),(73,'HILDE Tom','Norwegia'),(74,'HLAVA Jakub','Czechy'),(75,'HLAVA Lukas','Czechy'),(76,'HOCKE Stephan','Niemcy'),(77,'HOELLWARTH Martin','Austria'),(78,'HORLACHER Kevin','Niemcy'),(79,'HORNGACHER Stefan','Austria'),(80,'HRGOTA Robert','Slowenia'),(81,'HULA Stefan','Polska'),(82,'HUUSKONEN Lassi','Finlandia'),(83,'ICHINOHE Tsuyoshi','Japonia'),(84,'IKONEN Joonas','Finlandia'),(85,'INGEBRIGTSEN Tommy','Norwegia'),(86,'INNAUER Mario','Austria'),(87,'IPATOV Dimitri','Rosja'),(88,'ITO Daiki','Japonia'),(89,'ITO Kenshiro','Japonia'),(90,'JAAFS Kristoffer','Szwecja'),(91,'JACOBSEN Anders','Norwegia'),(92,'JAEKLE Hansjoerg','Niemcy'),(93,'JANDA Jakub','Czechy'),(94,'JIROUTEK Jakub','Czechy'),(95,'JOHNSON Anders','USA'),(96,'JONES Clint','USA'),(97,'JURIS Jaan','Estonia'),(98,'JUSSILAINEN Risto','Finlandia'),(99,'KAISER Stefan','Austria'),(100,'KALINITSCHENKO Anton','Rosja'),(101,'KALTENBOECK Bastian','Austria'),(102,'KANEKO Yusuke','Japonia'),(103,'KANG Chil Gu','Korea'),(104,'KANTEE Ville','Finlandia'),(105,'KARAULOV Ivan','Kazachstan'),(106,'KARELIN Pavel','Rosja'),(107,'KARPENKO Nikolay','Kazachstan'),(108,'KASAI Noriaki','Japonia'),(109,'KEITURI Kalle','Finlandia'),(110,'KIM Hyun-Ki','Korea'),(111,'KIURU Tami','Finlandia'),(112,'KOBELEV Valery','Rosja'),(113,'KOCH Martin','Austria'),(114,'KOFLER Andreas','Austria'),(115,'KOKKONEN Akseli','Norwegia'),(116,'KORNILOV Denis','Rosja'),(117,'KOROLEV Alex','Kazachstan'),(118,'KOUDELKA Roman','Czechy'),(119,'KOVALJEFF Kai','Finlandia'),(120,'KRANJEC Robert','Slowenia'),(121,'KREUZER Christoph','Holandia'),(122,'KRUCZEK Lukasz','Polska'),(123,'KUETTEL Andreas','Szwajcaria'),(124,'LACKNER Daniel','Austria'),(125,'LANDERT Guido','Szwajcaria'),(126,'LAPPI Arttu','Finlandia'),(127,'LARINTO Ville','Finlandia'),(128,'LAZAROVYCH Oleksandr','Ukraina'),(129,'LAZZARONI David','Francja'),(130,'LIE Haavard','Norwegia'),(131,'LIEGL Florian','Austria'),(132,'LINDSTROEM Veli-Matti','Finlandia'),(133,'LJOEKELSOEY Roar','Norwegia'),(134,'LOEFFLER Frank','Niemcy'),(135,'LOITZL Wolfgang','Austria'),(136,'MALYSZ Adam','Polska'),(138,'MATEJA Robert','Polska'),(139,'MATURA Jan','Czechy'),(140,'MAYER Nicolas','Francja'),(141,'MAYR Ingemar','Holandia'),(142,'MAZOCH Jan','Czechy'),(143,'MAZOCH Jiri','Czechy'),(144,'MECHLER Maximilian','Niemcy'),(145,'MEDVED Igor','Slowenia'),(146,'MESIK Martin','Slowacja'),(147,'METZLER Bernhard','Austria'),(148,'MEZNAR Mitja','Slowenia'),(149,'MIETUS Grzegorz','Polska'),(150,'MIETUS Krzysztof','Polska'),(151,'MIYAHIRA Hideharu','Japonia'),(152,'MOELLINGER Michael','Szwajcaria'),(153,'MORASSI Andrea','Wlochy'),(154,'MORGENSTERN Thomas','Austria'),(155,'MUELLER Lukas','Austria'),(156,'MUELLER Roland','Austria'),(157,'MUNTERS Johan','Szwecja'),(158,'MUOTKA Olli','Finlandia'),(159,'MUSIOL Julian','Niemcy'),(160,'NAGILLER Christian','Austria'),(161,'NAKAMURA Kazuhiro','Japonia'),(162,'NEUMAYER Michael','Niemcy'),(163,'NIEMI Sami','Finlandia'),(164,'NIEMINEN Toni','Finlandia'),(165,'OKABE Takanobu','Japonia'),(166,'OKAMURA Sota','Japonia'),(167,'OLLI Harri','Finlandia'),(168,'OTTESEN Lasse','Norwegia'),(169,'PAULI Arthur','Austria'),(170,'PETERKA Primoz','Slowenia'),(171,'PETTERSEN Sigurd','Norwegia'),(172,'PIEPER Stefan','Niemcy'),(173,'PIKL Primoz','Slowenia'),(174,'POCHWALA Tomasz','Polska'),(175,'PREVC Peter','Slowenia'),(176,'RADELJ Jure','Slowenia'),(177,'READ Stefan','Kanada'),(178,'REICHEL Frank','Niemcy'),(179,'REMY Maxime','Francja'),(180,'RENE ELVERUM SORSELL Kim','Norwegia'),(181,'RITZERFELD Joerg','Niemcy'),(182,'ROENSEN Atle Pedersen','Norwegia'),(183,'ROMOEREN Bjoern-Einar','Norwegia'),(184,'ROSLIAKOV Ilja','Rosja'),(185,'RUTKOWSKI Lukasz','Polska'),(186,'RUTKOWSKI Mateusz','Polska'),(187,'RUUSKANEN Juha-Matti','Finlandia'),(188,'SAITO Hiroya','Japonia'),(189,'SAKALA Jaroslav','Czechy'),(190,'SAKANO Yukio','Japonia'),(191,'SAKUYAMA Kento','Japonia'),(192,'SALMINEN Pekka','Finlandia'),(193,'SALUMAE Jens','Estonia'),(194,'SANTIAGO Remi','Francja'),(195,'SCHABEREITER Florian','Austria'),(196,'SCHLIERENZAUER Gregor','Austria'),(197,'SCHMITT Martin','Niemcy'),(198,'SCHNEIDER Balthasar','Austria'),(199,'SCHOFT Felix','Niemcy'),(200,'SCHWARZENBERGER Reinhard','Austria'),(201,'SEDLAK Borek','Czechy'),(202,'SHUMBARETS Vitaliy','Ukraina'),(203,'SILAEV Alexei','Rosja'),(204,'SIMON Erik','Niemcy'),(205,'SINKOVEC Jure','Slowenia'),(206,'SKLETT Vegard-Haukoe','Norwegia'),(207,'SKUPIEN Wojciech','Polska'),(208,'SOININEN Jani','Finlandia'),(209,'SOLEM Morten','Norwegia'),(210,'SPAETH Georg','Niemcy'),(211,'STEINAUER Marco','Szwajcaria'),(212,'STENSRUD Henning','Norwegia'),(213,'STJERNEN Andreas','Norwegia'),(214,'STOCH Kamil','Polska'),(215,'STOERL Dennis','Niemcy'),(216,'SLIZ Rafal','Polska'),(217,'TAJNER Tomislaw','Polska'),(218,'TAJNER Wojciech','Polska'),(219,'TAKANO Teppei','Japonia'),(220,'TAKEUCHI Taku','Japonia'),(221,'TAKHTAKHUNOV Assan','Kazachstan'),(222,'TEPES Jurij','Slowenia'),(223,'THURNBICHLER Stefan','Austria'),(224,'TOCHIMOTO Shohhei','Japonia'),(225,'UENO Shingo','Japonia'),(226,'UHRMANN Michael','Niemcy'),(227,'ULMER Christian','Niemcy'),(228,'URBANC Rok','Slowenia'),(229,'URH-ZUPAN Primoz','Slowenia'),(230,'VACULIK Ondrej','Czechy'),(231,'VASSILIEV Dimitry','Rosja'),(232,'VILBERG Andreas','Norwegia'),(233,'VRHOVNIK Blaz','Slowenia'),(234,'WANK Andreas','Niemcy'),(235,'WATASE Yuta','Japonia'),(236,'WIDHOELZL Andreas','Austria'),(237,'YAMADA Hiroki','Japonia'),(238,'YLIJAERVI Janne','Finlandia'),(239,'YLIRIESTO Kimmo','Finlandia'),(240,'YOSHIOKA Kazuya','Japonia'),(241,'YUMOTO Fumihisa','Japonia'),(242,'ZAUNER David','Austria'),(243,'ZHAPAROV Radik','Kazachstan'),(244,'ZONTA Peter','Slowenia'),(245,'ZUPAN Bine','Slowenia'),(246,'ZYLA Piotr','Polska');
/*!40000 ALTER TABLE `zawodnicy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-17  8:41:19
