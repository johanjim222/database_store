-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: arkadiastore
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!50001 DROP VIEW IF EXISTS `categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `categoria` AS SELECT 
 1 AS `nombre_juego`,
 1 AS `categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `pais` varchar(50) NOT NULL,
  `id_pedido` int NOT NULL,
  PRIMARY KEY (`id_cliente`,`id_pedido`),
  KEY `cliente_pedido_idx` (`id_pedido`),
  CONSTRAINT `cliente_credit` FOREIGN KEY (`id_cliente`) REFERENCES `credito_cliente` (`id_cliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cliente_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (6,'milo','menta',88446565,'belgica',6),(7,'sajir','hasan',88446566,'andorra',7),(8,'gary','carballo',88446567,'alemania',8),(9,'miguel','carballo',88446568,'australia',9),(10,'dago','carballo',88446510,'belgica',10),(11,'maria','barrantes',88446511,'brasil',11),(12,'oscar','barrantes',88446512,'china',12),(13,'michael','barrantes',88446513,'belgica',13),(14,'yulissa','rojas',88446514,'china',14),(15,'joshua','rojas',88446515,'china',15),(16,'sebastian','mendez',88446516,'belgica',16),(17,'jose','vega',88446585,'irlanda',17),(18,'andre','montoya',88446535,'brasil',18),(19,'marco','fonseca',88446547,'andorra',19),(20,'valeria','rojas',88446517,'irlanda',20),(21,'isaac','cubero',88446787,'japon',21),(22,'chaco','liendre',88446699,'australia',22),(23,'edgar','malvalona',88446454,'mexico',23),(24,'patricio','estrella',88446454,'japon',24),(25,'bob','esponja',88446321,'mexico',25),(26,'arenita','bellota',88446145,'mexico',26),(27,'vicente','fernandez',88446128,'noruega',27),(28,'luis','azul',88446487,'japon',28),(29,'maira','lucas',88446966,'japon',29),(30,'mayo','avila',88446478,'noruega',30),(31,'roger','villalobos',88446365,'ucrania',31),(32,'gato','doblado',88446789,'italia',32),(33,'larry','lalangosta',88446325,'australia',33),(34,'eliezer','cactus',88446719,'ucrania',34),(35,'marcos','aldo',88446396,'italia',35),(36,'brainer','camion',88446138,'colombia',36),(37,'esteban','quito',88446178,'colombia',37),(38,'estefany','marbella',88446101,'francia',38),(39,'rebecca','salas',88446890,'canada',39),(40,'brayan','salas',88446074,'belgica',40);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cliente_pais`
--

DROP TABLE IF EXISTS `cliente_pais`;
/*!50001 DROP VIEW IF EXISTS `cliente_pais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cliente_pais` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `telefono`,
 1 AS `pais`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `contacto_cliente`
--

DROP TABLE IF EXISTS `contacto_cliente`;
/*!50001 DROP VIEW IF EXISTS `contacto_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contacto_cliente` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `telefono`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `credito_cliente`
--

DROP TABLE IF EXISTS `credito_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credito_cliente` (
  `id_credito` int NOT NULL,
  `id_cliente` int NOT NULL,
  `credito_aprovado` int NOT NULL,
  `credito_total` int NOT NULL,
  `fecha_prox_cobro` int DEFAULT NULL,
  PRIMARY KEY (`id_credito`),
  KEY `credito_cliente_idx` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credito_cliente`
--

LOCK TABLES `credito_cliente` WRITE;
/*!40000 ALTER TABLE `credito_cliente` DISABLE KEYS */;
INSERT INTO `credito_cliente` VALUES (1,1,200,30,NULL),(2,2,200,0,NULL),(3,3,10,10,NULL),(4,4,30,150,NULL),(5,5,500,30,NULL),(6,6,700,15,2025),(7,7,350,20,2025),(8,8,250,100,2025),(9,9,1000,85,2025),(10,10,550,42,2025),(11,11,800,125,2025),(12,12,450,220,2025),(13,13,650,10,2025),(14,14,900,445,2025),(15,15,100,11,NULL),(16,16,2000,125,2024),(17,17,50,10,NULL),(18,18,350,100,2024),(19,19,480,30,2024),(20,20,900,180,2024),(21,21,1000,360,2024),(22,22,200,45,2024),(23,23,350,30,2024),(24,24,400,200,2024),(25,25,610,300,2024),(26,26,350,360,NULL),(27,27,250,50,2024),(28,28,400,300,2024),(29,29,1000,220,2024),(30,30,300,15,NULL),(31,31,800,150,NULL),(32,32,400,200,NULL),(33,33,550,200,NULL),(34,34,650,150,NULL),(35,35,700,200,2023),(36,36,2000,200,NULL),(37,37,750,150,2023),(38,38,440,15,NULL),(39,39,320,80,2023),(40,40,460,150,NULL);
/*!40000 ALTER TABLE `credito_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `credito_total`
--

DROP TABLE IF EXISTS `credito_total`;
/*!50001 DROP VIEW IF EXISTS `credito_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `credito_total` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `credito_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id_empresa` int NOT NULL,
  `id_pais` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `id_encargado` int NOT NULL,
  PRIMARY KEY (`id_empresa`),
  KEY `id_pais` (`id_pais`),
  KEY `empresa_encargado_idx` (`id_encargado`),
  CONSTRAINT `empresa_encargado` FOREIGN KEY (`id_encargado`) REFERENCES `encargado` (`id_encargado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,1,'tienda 1','costa rica',1),(2,2,'tienda 2','alemania',2),(3,3,'tienda 3','andorra',3),(4,4,'tienda 4','argentina',4),(5,5,'tienda 5','australia',5),(6,6,'tienda 6','austria ',6),(7,7,'tienda 7','bahamas',7),(8,8,'tienda 8','bangladesh',8),(9,9,'tienda 9','belgica',9),(10,10,'tienda 10','brasil',10),(11,11,'tienda 11','bulgaria',11),(12,12,'tienda 12','canada',12),(13,13,'tienda 13','chile',13),(14,14,'tienda 14','china',14),(15,15,'tienda 15','colombia',15),(16,16,'tienda 16','croacia',16),(17,17,'tienda 17','ecuador',17),(18,18,'tienda 18','egipto',18),(19,19,'tienda 19','eslovaquia',19),(20,20,'tienda 20','francia',20),(21,21,'tienda 21','irlanda',21),(22,22,'tienda 22','finlandia',22),(23,23,'tienda 23','grecia',23),(24,24,'tienda 24','guatemala',24),(25,25,'tienda 25','honduras',25),(26,26,'tienda 26','panama',26),(27,27,'tienda 27','india',27),(28,28,'tienda 28','japon',28),(29,29,'tienda 29','islandia',29),(30,30,'tienda 30','israel',30),(31,31,'tienda 31','italia',31),(32,32,'tienda 32','roma',32),(33,33,'tienda 33','jordania',33),(34,34,'tienda 34','mexico',34),(35,35,'tienda 35','noruega',35),(36,36,'tienda 36','portugal',36),(37,37,'tienda 37','rumania',37),(38,38,'tienda 38','singapur',38),(39,39,'tienda 39','suiza',39),(40,40,'tienda 40','ucrania',40);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encargado`
--

DROP TABLE IF EXISTS `encargado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encargado` (
  `id_encargado` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `id_empresa` int NOT NULL,
  PRIMARY KEY (`id_encargado`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `encargado_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encargado`
--

LOCK TABLES `encargado` WRITE;
/*!40000 ALTER TABLE `encargado` DISABLE KEYS */;
INSERT INTO `encargado` VALUES (1,'marielos','doblado','Costa Rica',1),(2,'alberto','estampado','alemania',2),(3,'malcom','shus','andorra',3),(4,'mark','zuken','argentina',4),(5,'calusio','tilin','austrailia',5),(6,'pedro','guillen','austria',6),(7,'tuca','mala','bahamas',7),(8,'samir','plas','bangladesh',8),(9,'alvaro','loves','belgica',9),(10,'martin','triples','brasil',10),(11,'spike','morales','bulgaria',11),(12,'pilot','one','canada',12),(13,'barbara','flyl','chile',13),(14,'mercedes','benz','china',14),(15,'michael','lee','colombia',15),(16,'oscar','lee','croacia',16),(17,'gara','lee','ecuador',17),(18,'fio','mendez','egipto',18),(19,'luz','wood','eslovaquia',19),(20,'marsol','blazt','francia',20),(21,'gru','muss','irlanda',21),(22,'malak','kaido','finlandia',22),(23,'zoro','wester','grecia',23),(24,'nami','piece','guatemala',24),(25,'franky','rivers','honduras',25),(26,'robin','well','panama',26),(27,'jason','borges','india',27),(28,'freddy','mercurio','japon',28),(29,'velen','ciaga','islandia',29),(30,'fredo','gucci','israel',30),(31,'venom','torres','italia',31),(32,'muke','towers','roma',32),(33,'paul','alfaro','jordania',33),(34,'fran','medit','mexico',34),(35,'lombard','gucci','noruega',35),(36,'edgar','islas','portugal',36),(37,'marck','tulian','rumania',37),(38,'mary','poter','singapur',38),(39,'mario','lake','suiza',39),(40,'luigy','bros','ucrania',40);
/*!40000 ALTER TABLE `encargado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `gamespd`
--

DROP TABLE IF EXISTS `gamespd`;
/*!50001 DROP VIEW IF EXISTS `gamespd`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gamespd` AS SELECT 
 1 AS `juego`,
 1 AS `precio`,
 1 AS `categoria`,
 1 AS `empresa`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `juegos`
--

DROP TABLE IF EXISTS `juegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juegos` (
  `id_juego` int NOT NULL,
  `id_provedor` int NOT NULL,
  `nombre_juego` varchar(45) NOT NULL,
  `precio` int NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `fecha_salida` date NOT NULL,
  PRIMARY KEY (`id_juego`),
  KEY `id_provedor` (`id_provedor`),
  CONSTRAINT `juegos_ibfk_1` FOREIGN KEY (`id_provedor`) REFERENCES `provedores` (`id_provedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juegos`
--

LOCK TABLES `juegos` WRITE;
/*!40000 ALTER TABLE `juegos` DISABLE KEYS */;
INSERT INTO `juegos` VALUES (1,1,'gta 5',20,'aventura','2015-07-14'),(2,2,'gta san andres',15,'aventura','2002-07-14'),(3,3,'gta ultima edition',60,'aventura','2021-07-14'),(4,4,'call of duty',10,'shooters','2020-07-14'),(5,5,'call of duty 2',20,'shooters','2019-07-14'),(6,6,'bit heroes extended edition',45,'aventura','2011-07-14'),(7,7,'espada del caos',60,'rpg','2012-07-14'),(8,8,'eternio',10,'rpg','2016-07-14'),(9,9,'ragnarak',20,'rpg','2017-07-14'),(10,10,'pokemon',20,'aventura','2018-07-14'),(11,11,'SpellForce',20,'carreras','2017-07-14'),(12,12,'SpellForce 2',15,'shooter','2011-07-14'),(13,13,'SpellForce 3: Reforced',20,'accion','2014-07-14'),(14,14,'live a live 1',20,'aventura','2012-07-14'),(15,15,'live a live 2',35,'aventura','2016-07-14'),(16,16,'live a live oldblood',40,'aventura','2017-07-14'),(17,17,'front mission 1',45,'accion','2019-07-14'),(18,18,'front mission 2',60,'accion','2019-07-14'),(19,19,'crono cros',10,'rpg','2014-07-14'),(20,20,'xenoblade',20,'accion','2013-07-14'),(21,21,'red dead redemption',20,'accion','2016-07-14'),(22,22,'red dead redemption nightmare',15,'accion','2022-07-14'),(23,23,'red dead redemption 2',20,'accion','2020-07-14'),(24,24,'joshi adventures 2',20,'shooter','2018-07-14'),(25,25,'joshi adventures 3',35,'shooter','2019-07-14'),(26,26,'joshi adventures 4',40,'accion','2016-07-14'),(27,27,'joshi adventures 5',45,'accion','2011-07-14'),(28,28,'halo 2',60,'accion','2012-07-14'),(29,29,'halo 3',10,'accion','2016-07-14'),(30,30,'Far cry primal',20,'accion','2013-07-14'),(31,31,'life',60,'aventura','2023-01-15'),(32,32,'life is strange',60,'aventura','2022-05-15'),(33,33,'sherlock holmes',60,'aventura','2022-05-15'),(34,34,'yu gi oh',60,'rpg','2022-05-15'),(35,35,'maglam lord 2',60,'rpg','2022-05-15'),(36,36,'space',60,'aventura','2022-05-15'),(37,37,'space party',60,'accion','2022-05-15'),(38,38,'diying light 2 stay human',60,'accion','2022-05-15'),(39,39,'death end',60,'shooter','2022-05-15'),(40,40,'sifu',60,'aventura','2022-05-15');
/*!40000 ALTER TABLE `juegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id_pais` int NOT NULL,
  `pais` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'costa rica'),(2,'alemania'),(3,'andorra'),(4,'argentina'),(5,'australia'),(6,'austria '),(7,'bahamas'),(8,'bangladesh'),(9,'belgica'),(10,'brasil'),(11,'bulgaria'),(12,'canada'),(13,'chile'),(14,'china'),(15,'colombia'),(16,'croacia'),(17,'ecuador'),(18,'egipto'),(19,'eslovaquia'),(20,'francia'),(21,'irlanda'),(22,'finlandia'),(23,'grecia'),(24,'guatemala'),(25,'honduras'),(26,'panama'),(27,'india'),(28,'japon'),(29,'islandia'),(30,'israel'),(31,'italia'),(32,'roma'),(33,'jordania'),(34,'mexico'),(35,'noruega'),(36,'portugal'),(37,'rumania'),(38,'singapur'),(39,'suiza'),(40,'ucrania');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pais_tienda`
--

DROP TABLE IF EXISTS `pais_tienda`;
/*!50001 DROP VIEW IF EXISTS `pais_tienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pais_tienda` AS SELECT 
 1 AS `nombre`,
 1 AS `pais`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL,
  `id_juego` int NOT NULL,
  `precio_juego` int NOT NULL,
  `id_encargado` int NOT NULL,
  `id_cliente` int NOT NULL,
  `telefono_cliente` int NOT NULL,
  `id_empresa` int NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `juego_pedido_idx` (`id_juego`),
  KEY `pedido_encargado_idx` (`id_juego`,`id_encargado`),
  KEY `pedido_empresa_idx` (`id_empresa`),
  KEY `pedido_client_idx` (`id_cliente`),
  CONSTRAINT `juego_pedido` FOREIGN KEY (`id_juego`) REFERENCES `juegos` (`id_juego`),
  CONSTRAINT `pedido_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,20,1,1,88446569,1),(2,2,15,2,2,88446561,2),(3,3,60,3,3,88446562,3),(4,4,10,4,4,88446563,4),(5,5,20,5,5,88446564,5),(6,6,45,6,6,88446565,6),(7,7,60,7,7,88446566,7),(8,8,10,8,8,88446567,8),(9,9,20,9,9,88446568,9),(10,10,20,10,10,88446510,10),(11,11,20,10,11,88446511,11),(12,12,15,5,12,88446512,12),(13,13,20,4,13,88446513,13),(14,14,20,6,14,88446514,14),(15,15,35,9,15,88446515,15),(16,16,40,7,16,88446516,16),(17,17,45,2,17,88446585,17),(18,18,60,6,18,88446535,18),(19,19,10,1,19,88446547,19),(20,20,20,3,20,88446517,20),(21,21,20,23,21,88446787,21),(22,22,15,21,22,88446699,22),(23,23,20,22,23,88446454,23),(24,24,20,34,24,88446454,24),(25,25,35,35,25,88446321,25),(26,26,40,40,26,88446145,26),(27,27,45,39,27,88446128,27),(28,28,60,36,28,88446487,28),(29,29,10,40,29,88446966,29),(30,30,20,15,30,88446478,30),(31,31,60,13,31,88446365,31),(32,32,60,14,32,88446789,32),(33,33,60,12,33,88446325,33),(34,34,60,11,34,88446719,34),(35,35,60,25,35,88446396,35),(36,36,60,34,36,88446138,36),(37,37,60,28,37,88446178,37),(38,38,60,29,38,88446101,38),(39,39,60,38,39,88446890,39),(40,40,60,32,40,88446074,40);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `preveedores`
--

DROP TABLE IF EXISTS `preveedores`;
/*!50001 DROP VIEW IF EXISTS `preveedores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `preveedores` AS SELECT 
 1 AS `nombre_juego`,
 1 AS `nombre_empresa`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `provedores`
--

DROP TABLE IF EXISTS `provedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provedores` (
  `id_provedor` int NOT NULL,
  `nombre_empresa` varchar(45) NOT NULL,
  `contacto_empresa` varchar(100) NOT NULL,
  PRIMARY KEY (`id_provedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provedores`
--

LOCK TABLES `provedores` WRITE;
/*!40000 ALTER TABLE `provedores` DISABLE KEYS */;
INSERT INTO `provedores` VALUES (1,'Microids Studio Paris','microidns@contact.com'),(2,'Rockstar Games','rockstar@contact.com'),(3,'Activision','activision@contact.com'),(4,'Nintendo','NNintendo@contact.com'),(5,'Paradox Interactive','Pinteractive@contact.com'),(6,'FNTASTIC','fntastic@contact.com'),(7,'Ludeon Studios','Ludeons@contact.com'),(8,'Mooneye Studios','Mooneye@contact.com'),(9,'Electronic Arts','electrinicaa@contact.com'),(10,'Witch Beam','ewitchbeam@contact.com'),(11,'SEGA','sega@contact.com'),(12,'ANNAPURNA INTERACTIVE','annapurna@contact.com'),(13,'CAPCOM','capcom@contact.com'),(14,'SONY','sony@contact.com'),(15,'ACTIVISION BLIZZARD','blizzard@contact.com'),(16,'MICROSOFT','microsoft@contact.com'),(17,'AKSYS GAMES','aksysgames@contact.com'),(18,'DEVOLVER DIGITAL','develcer@contact.com'),(19,'SQUARE ENIX','squareenix@contact.com'),(20,'UBISOFT','ewitchbeam@contact.com'),(21,'FOCUS HOME INTERACTIVE','focushome@contact.com'),(22,'BETHESDA SOFTWORKS','bethesda@contact.com'),(23,'TEAM17','team17@contact.com'),(24,'HUMBLE','humble@contact.com'),(25,'SOLD OUT','soldout@contact.com'),(26,'RAW FURY','rawfury@contact.com'),(27,'Konami','konami@contact.com'),(28,'Namco','namco@contact.com'),(29,'LucasArts','lucasarts@contact.com'),(30,'Midway','midway@contact.com'),(31,'Micro Prose','microprose@contact.com'),(32,'Maxis','maxis@contact.com'),(33,'Acclaim','acclaim@contact.com'),(34,'Sierra','sierra@contact.com'),(35,'Valve','valvecontact.com'),(36,'Taito','taito@contact.com'),(37,'Westwood','westwood@contact.com'),(38,'Rare','rare@contact.com'),(39,'BioWare','bioware@contact.com'),(40,'Looking Glass Studios','lookingglass@contact.com');
/*!40000 ALTER TABLE `provedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `trabajador y empresa`
--

DROP TABLE IF EXISTS `trabajador y empresa`;
/*!50001 DROP VIEW IF EXISTS `trabajador y empresa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trabajador y empresa` AS SELECT 
 1 AS `Tienda`,
 1 AS `pais`,
 1 AS `Apellido de trabajador`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'arkadiastore'
--

--
-- Dumping routines for database 'arkadiastore'
--

--
-- Final view structure for view `categoria`
--

/*!50001 DROP VIEW IF EXISTS `categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `categoria` AS select `juegos`.`nombre_juego` AS `nombre_juego`,`juegos`.`categoria` AS `categoria` from `juegos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cliente_pais`
--

/*!50001 DROP VIEW IF EXISTS `cliente_pais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cliente_pais` AS select `cliente`.`nombre` AS `nombre`,`cliente`.`apellido` AS `apellido`,`cliente`.`telefono` AS `telefono`,`cliente`.`pais` AS `pais` from `cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `contacto_cliente`
--

/*!50001 DROP VIEW IF EXISTS `contacto_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contacto_cliente` AS select `cliente`.`nombre` AS `nombre`,`cliente`.`apellido` AS `apellido`,`cliente`.`telefono` AS `telefono` from `cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `credito_total`
--

/*!50001 DROP VIEW IF EXISTS `credito_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `credito_total` AS select `cliente`.`nombre` AS `nombre`,`cliente`.`apellido` AS `apellido`,`credito_cliente`.`credito_total` AS `credito_total` from (`cliente` join `credito_cliente` on((`cliente`.`id_cliente` = `credito_cliente`.`id_cliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gamespd`
--

/*!50001 DROP VIEW IF EXISTS `gamespd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gamespd` AS select `j`.`nombre_juego` AS `juego`,`j`.`precio` AS `precio`,`j`.`categoria` AS `categoria`,`p`.`nombre_empresa` AS `empresa` from (`juegos` `j` join `provedores` `p` on((`j`.`id_provedor` = `p`.`id_provedor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pais_tienda`
--

/*!50001 DROP VIEW IF EXISTS `pais_tienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pais_tienda` AS select `empresa`.`nombre` AS `nombre`,`empresa`.`pais` AS `pais` from `empresa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `preveedores`
--

/*!50001 DROP VIEW IF EXISTS `preveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `preveedores` AS select `juegos`.`nombre_juego` AS `nombre_juego`,`provedores`.`nombre_empresa` AS `nombre_empresa` from (`juegos` join `provedores` on((`juegos`.`id_provedor` = `provedores`.`id_provedor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trabajador y empresa`
--

/*!50001 DROP VIEW IF EXISTS `trabajador y empresa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trabajador y empresa` AS select `e`.`nombre` AS `Tienda`,`e`.`pais` AS `pais`,`ec`.`apellido` AS `Apellido de trabajador` from (`empresa` `e` join `encargado` `ec` on((`e`.`id_empresa` = `ec`.`id_empresa`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-25  0:18:26
