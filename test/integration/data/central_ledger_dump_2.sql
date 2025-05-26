-- MySQL dump 10.13  Distrib 8.0.36, for Linux (aarch64)
--
-- Host: localhost    Database: central_ledger
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amountType`
--

DROP TABLE IF EXISTS `amountType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amountType` (
  `amountTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`amountTypeId`),
  UNIQUE KEY `amounttype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amountType`
--

LOCK TABLES `amountType` WRITE;
/*!40000 ALTER TABLE `amountType` DISABLE KEYS */;
INSERT INTO `amountType` VALUES (1,'SEND','Amount the Payer would like to send; that is, the amount that should be withdrawn from the Payer account including any fees','2025-05-23 13:49:03'),(2,'RECEIVE','Amount the Payer would like the Payee to receive; that is, the amount that should be sent to the receiver exclusive fees','2025-05-23 13:49:03');
/*!40000 ALTER TABLE `amountType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balanceOfPayments`
--

DROP TABLE IF EXISTS `balanceOfPayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balanceOfPayments` (
  `balanceOfPaymentsId` int unsigned NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL COMMENT 'Possible values and meaning are defined in https://www.imf.org/external/np/sta/bopcode/',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`balanceOfPaymentsId`),
  UNIQUE KEY `balanceofpayments_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='See https://www.imf.org/external/np/sta/bopcode/guide.htm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balanceOfPayments`
--

LOCK TABLES `balanceOfPayments` WRITE;
/*!40000 ALTER TABLE `balanceOfPayments` DISABLE KEYS */;
INSERT INTO `balanceOfPayments` VALUES (100,'100','A. Goods','2025-05-23 13:49:03'),(110,'110','1. General merchandise','2025-05-23 13:49:03'),(150,'150','2. Goods for processing','2025-05-23 13:49:03'),(151,'151','2.1 Processing abroad','2025-05-23 13:49:03'),(152,'152','2.2 Processing in the compiling economy','2025-05-23 13:49:03'),(160,'160','3. Repairs on goods','2025-05-23 13:49:03'),(170,'170','4. Goods procured in ports by carriers','2025-05-23 13:49:03'),(171,'171','4.1 In seaports','2025-05-23 13:49:03'),(172,'172','4.2 In airports','2025-05-23 13:49:03'),(173,'173','4.3 In other ports','2025-05-23 13:49:03'),(180,'180','5. Nonmonetary gold','2025-05-23 13:49:03'),(181,'181','5.1 Held as a store of value','2025-05-23 13:49:03'),(182,'182','5.2 Other','2025-05-23 13:49:03'),(200,'200','B. Services','2025-05-23 13:49:03'),(205,'205','1. Transportation','2025-05-23 13:49:03'),(206,'206','1.1 Sea transport','2025-05-23 13:49:03'),(207,'207','1.1.1 Passenger','2025-05-23 13:49:03'),(208,'208','1.1.2 Freight','2025-05-23 13:49:03'),(209,'209','1.1.3 Other','2025-05-23 13:49:03'),(210,'210','1.2 Air transport','2025-05-23 13:49:03'),(211,'211','1.2.1 Passenger','2025-05-23 13:49:03'),(212,'212','1.2.2 Freight','2025-05-23 13:49:03'),(213,'213','1.2.3 Other','2025-05-23 13:49:03'),(214,'214','1.3 Other transport','2025-05-23 13:49:03'),(215,'215','1.3.1 Passenger','2025-05-23 13:49:03'),(216,'216','1.3.2 Freight','2025-05-23 13:49:03'),(217,'217','1.3.3 Other','2025-05-23 13:49:03'),(218,'218','1.4 Space transport','2025-05-23 13:49:03'),(219,'219','1.5 Rail transport','2025-05-23 13:49:03'),(220,'220','1.5.1 Passenger','2025-05-23 13:49:03'),(221,'221','1.5.2 Freight','2025-05-23 13:49:03'),(222,'222','1.5.3 Other','2025-05-23 13:49:03'),(223,'223','1.6 Road transport','2025-05-23 13:49:03'),(224,'224','1.6.1 Passenger','2025-05-23 13:49:03'),(225,'225','1.6.2 Freight','2025-05-23 13:49:03'),(226,'226','1.6.3 Other','2025-05-23 13:49:03'),(227,'227','1.7 Inland waterway transport','2025-05-23 13:49:03'),(228,'228','1.7.1 Passenger','2025-05-23 13:49:03'),(229,'229','1.7.2 Freight','2025-05-23 13:49:03'),(230,'230','1.7.3 Other','2025-05-23 13:49:03'),(231,'231','1.8 Pipeline transport and electricity transmission','2025-05-23 13:49:03'),(232,'232','1.9 Other supporting and auxiliary transport services','2025-05-23 13:49:03'),(236,'236','2. Travel','2025-05-23 13:49:03'),(237,'237','2.1 Business travel','2025-05-23 13:49:03'),(238,'238','2.1.1 Expenditure by seasonal and border workers','2025-05-23 13:49:03'),(239,'239','2.1.2 Other','2025-05-23 13:49:03'),(240,'240','2.2 Personal travel','2025-05-23 13:49:03'),(241,'241','2.2.1 Health-related expenditure','2025-05-23 13:49:03'),(242,'242','2.2.2 Education-related expenditure','2025-05-23 13:49:03'),(243,'243','2.2.3 Other','2025-05-23 13:49:03'),(245,'245','3. Communications services','2025-05-23 13:49:03'),(246,'246','3.1 Postal and courier services','2025-05-23 13:49:03'),(247,'247','3.2 Telecommunications Services','2025-05-23 13:49:03'),(249,'249','4. Construction services','2025-05-23 13:49:03'),(250,'250','4.1 Construction abroad','2025-05-23 13:49:03'),(251,'251','4.2 Construction in the compiling economy','2025-05-23 13:49:03'),(253,'253','5. Insurance services','2025-05-23 13:49:03'),(254,'254','5.1 Life insurance and pension funding','2025-05-23 13:49:03'),(255,'255','5.2 Freight insurance','2025-05-23 13:49:03'),(256,'256','5.3 Other direct insurance','2025-05-23 13:49:03'),(257,'257','5.4 Reinsurance','2025-05-23 13:49:03'),(258,'258','5.5 Auxiliary services','2025-05-23 13:49:03'),(260,'260','6. Financial services','2025-05-23 13:49:03'),(262,'262','7. Computer and information services','2025-05-23 13:49:03'),(263,'263','7.1 Computer services','2025-05-23 13:49:03'),(264,'264','7.2 Information services','2025-05-23 13:49:03'),(266,'266','8. Royalties and license fees','2025-05-23 13:49:03'),(268,'268','9. Other business services','2025-05-23 13:49:03'),(269,'269','9.1 Merchanting and other trade-related services','2025-05-23 13:49:03'),(270,'270','9.1.1 Merchanting','2025-05-23 13:49:03'),(271,'271','9.1.2 Other trade-related services','2025-05-23 13:49:03'),(272,'272','9.2 Operational leasing services','2025-05-23 13:49:03'),(273,'273','9.3 Miscellaneous business, professional, and technical services','2025-05-23 13:49:03'),(274,'274','9.3.1 Legal, accounting, management consulting, and public relations','2025-05-23 13:49:03'),(275,'275','9.3.1.1 Legal services','2025-05-23 13:49:03'),(276,'276','9.3.1.2 Accounting, auditing, bookkeeping, and tax consulting services','2025-05-23 13:49:03'),(277,'277','9.3.1.3 Business and management consulting and public relations services','2025-05-23 13:49:03'),(278,'278','9.3.2 Advertising, market research, and public opinion polling','2025-05-23 13:49:03'),(279,'279','9.3.3 Research and development','2025-05-23 13:49:03'),(280,'280','9.3.4 Architectural, engineering, and other technical services','2025-05-23 13:49:03'),(281,'281','9.3.5 Agricultural, mining, and on-site processing services','2025-05-23 13:49:03'),(282,'282','9.3.5.1 Waste treatment and depollution','2025-05-23 13:49:03'),(283,'283','9.3.5.2 Agricultural, mining, and other on-site processing services','2025-05-23 13:49:03'),(284,'284','9.3.6 Other business services','2025-05-23 13:49:03'),(285,'285','9.3.7 Services between related enterprises, n.i.e.','2025-05-23 13:49:03'),(287,'287','10. Personal, cultural, and recreational services','2025-05-23 13:49:03'),(288,'288','10.1 Audiovisual and related services','2025-05-23 13:49:03'),(289,'289','10.2 Other personal, cultural, and recreational services','2025-05-23 13:49:03'),(291,'291','11. Government services, n.i.e.','2025-05-23 13:49:03'),(292,'292','11.1 Embassies and consulates','2025-05-23 13:49:03'),(293,'293','11.2 Military units and agencies','2025-05-23 13:49:03'),(294,'294','11.3 Other government services','2025-05-23 13:49:03'),(300,'300','C. Income','2025-05-23 13:49:03'),(310,'310','1. Compensation of employees including border, seasonal, and other workers','2025-05-23 13:49:03'),(320,'320','2. Investment income','2025-05-23 13:49:03'),(330,'330','2.1 Direct investment','2025-05-23 13:49:03'),(331,'331','2.1.1 Income on equity','2025-05-23 13:49:03'),(332,'332','2.1.1.1 Dividends and distributed branch profits','2025-05-23 13:49:03'),(333,'333','2.1.1.2 Reinvested earnings and undistributed branch profits','2025-05-23 13:49:03'),(334,'334','2.1.2 Income on debt (interest)','2025-05-23 13:49:03'),(339,'339','2.2 Portfolio investment','2025-05-23 13:49:03'),(340,'340','2.2.1 Income on equity (dividends)','2025-05-23 13:49:03'),(341,'341','2.2.1.1 Monetary authorities','2025-05-23 13:49:03'),(342,'342','2.2.1.2 General government','2025-05-23 13:49:03'),(343,'343','2.2.1.3 Banks','2025-05-23 13:49:03'),(344,'344','2.2.1.4 Other sectors','2025-05-23 13:49:03'),(349,'349','2.2.2 Income on debt (interest)','2025-05-23 13:49:03'),(350,'350','2.2.2.1 Bonds and notes','2025-05-23 13:49:03'),(351,'351','2.2.2.1.1 Monetary authorities','2025-05-23 13:49:03'),(352,'352','2.2.2.1.2 General government','2025-05-23 13:49:03'),(353,'353','2.2.2.1.3 Banks','2025-05-23 13:49:03'),(354,'354','2.2.2.1.4 Other sectors','2025-05-23 13:49:03'),(360,'360','2.2.2.2 Money-market instruments','2025-05-23 13:49:03'),(361,'361','2.2.2.2.1 Monetary authorities','2025-05-23 13:49:03'),(362,'362','2.2.2.2.2 General government','2025-05-23 13:49:03'),(363,'363','2.2.2.2.3 Banks','2025-05-23 13:49:03'),(364,'364','2.2.2.2.4 Other sectors','2025-05-23 13:49:03'),(370,'370','2.3 Other investment','2025-05-23 13:49:03'),(371,'371','2.3.1 Monetary authorities','2025-05-23 13:49:03'),(372,'372','2.3.2 General government','2025-05-23 13:49:03'),(373,'373','2.3.3 Banks','2025-05-23 13:49:03'),(374,'374','2.3.4 Other sectors','2025-05-23 13:49:03'),(379,'379','D. Current transfers','2025-05-23 13:49:03'),(380,'380','1. General government','2025-05-23 13:49:03'),(390,'390','2. Other sectors','2025-05-23 13:49:03'),(391,'391','2.1 Workers\' remittances','2025-05-23 13:49:03'),(392,'392','2.2 Other transfers','2025-05-23 13:49:03'),(400,'400','1. Capital transfers','2025-05-23 13:49:03'),(401,'401','1.1 General government','2025-05-23 13:49:03'),(402,'402','1.1.1 Debt forgiveness','2025-05-23 13:49:03'),(410,'410','1.1.2 Other','2025-05-23 13:49:03'),(430,'430','1.2 Other sectors','2025-05-23 13:49:03'),(431,'431','1.2.1 Migrants\' transfers','2025-05-23 13:49:03'),(432,'432','1.2.2 Debt forgiveness','2025-05-23 13:49:03'),(440,'440','1.2.3 Other','2025-05-23 13:49:03'),(480,'480','2. Acquisitions/disposal of non-produced nonfinancial assets','2025-05-23 13:49:03'),(500,'500','1. Direct investment','2025-05-23 13:49:03'),(505,'505','1.1 Abroad','2025-05-23 13:49:03'),(510,'510','1.1.1 Equity capital','2025-05-23 13:49:03'),(515,'515','1.1.1.1 Claims on affiliated enterprises','2025-05-23 13:49:03'),(520,'520','1.1.1.2 Liabilities to affiliated enterprises','2025-05-23 13:49:03'),(525,'525','1.1.2 Reinvested earnings','2025-05-23 13:49:03'),(526,'526','1.1.2.1 Claims','2025-05-23 13:49:03'),(527,'527','1.1.2.2 Liabilities','2025-05-23 13:49:03'),(530,'530','1.1.3 Other capital','2025-05-23 13:49:03'),(535,'535','1.1.3.1 Claims on affiliated enterprises','2025-05-23 13:49:03'),(540,'540','1.1.3.2 Liabilities to affiliated enterprises','2025-05-23 13:49:03'),(555,'555','1.2 In reporting economy','2025-05-23 13:49:03'),(560,'560','1.2.1 Equity capital','2025-05-23 13:49:03'),(565,'565','1.2.1.1 Claims on direct investors','2025-05-23 13:49:03'),(570,'570','1.2.1.2 Liabilities to direct investors','2025-05-23 13:49:03'),(575,'575','1.2.2 Reinvested earnings','2025-05-23 13:49:03'),(576,'576','1.2.2.1 Claims','2025-05-23 13:49:03'),(577,'577','1.2.2.2 Liabilities','2025-05-23 13:49:03'),(580,'580','1.2.3 Other capital','2025-05-23 13:49:03'),(585,'585','1.2.3.1 Claims on direct investors','2025-05-23 13:49:03'),(590,'590','1.2.3.2 Liabilities to direct investors','2025-05-23 13:49:03'),(600,'600','2. Portfolio investment','2025-05-23 13:49:03'),(602,'602','2.1 Assets','2025-05-23 13:49:03'),(610,'610','2.1.1 Equity securities','2025-05-23 13:49:03'),(611,'611','2.1.1.1 Monetary authorities','2025-05-23 13:49:03'),(612,'612','2.1.1.2 General government','2025-05-23 13:49:03'),(613,'613','2.1.1.3 Banks','2025-05-23 13:49:03'),(614,'614','2.1.1.4 Other sectors','2025-05-23 13:49:03'),(619,'619','2.1.2 Debt securities','2025-05-23 13:49:03'),(620,'620','2.1.2.1 Bonds and notes','2025-05-23 13:49:03'),(621,'621','2.1.2.1.1 Monetary authorities','2025-05-23 13:49:03'),(622,'622','2.1.2.1.2 General government','2025-05-23 13:49:03'),(623,'623','2.1.2.1.3 Banks','2025-05-23 13:49:03'),(624,'624','2.1.2.1.4 Other sectors','2025-05-23 13:49:03'),(630,'630','2.1.2.2 Money market instruments','2025-05-23 13:49:03'),(631,'631','2.1.2.2.1 Monetary authorities','2025-05-23 13:49:03'),(632,'632','2.1.2.2.2 General government','2025-05-23 13:49:03'),(633,'633','2.1.2.2.3 Banks','2025-05-23 13:49:03'),(634,'634','2.1.2.2.4 Other sectors','2025-05-23 13:49:03'),(652,'652','2.2 Liabilities','2025-05-23 13:49:03'),(660,'660','2.2.1 Equity securities','2025-05-23 13:49:03'),(663,'663','2.2.1.1 Banks','2025-05-23 13:49:03'),(664,'664','2.2.1.2 Other sectors','2025-05-23 13:49:03'),(669,'669','2.2.2 Debt securities','2025-05-23 13:49:03'),(670,'670','2.2.2.1 Bonds and notes','2025-05-23 13:49:03'),(671,'671','2.2.2.1.1 Monetary authorities','2025-05-23 13:49:03'),(672,'672','2.2.2.1.2 General government','2025-05-23 13:49:03'),(673,'673','2.2.2.1.3 Banks','2025-05-23 13:49:03'),(674,'674','2.2.2.1.4 Other sectors','2025-05-23 13:49:03'),(680,'680','2.2.2.2 Money market instruments','2025-05-23 13:49:03'),(681,'681','2.2.2.2.1 Monetary authorities','2025-05-23 13:49:03'),(682,'682','2.2.2.2.2 General government','2025-05-23 13:49:03'),(683,'683','2.2.2.2.3 Banks','2025-05-23 13:49:03'),(684,'684','2.2.2.2.4 Other sectors','2025-05-23 13:49:03'),(700,'700','4. Other investment','2025-05-23 13:49:03'),(703,'703','4.1 Assets','2025-05-23 13:49:03'),(706,'706','4.1.1 Trade credits','2025-05-23 13:49:03'),(707,'707','4.1.1.1 General government','2025-05-23 13:49:03'),(708,'708','4.1.1.1.1 Long-term','2025-05-23 13:49:03'),(709,'709','4.1.1.1.2 Short-term','2025-05-23 13:49:03'),(710,'710','4.1.1.2 Other sectors','2025-05-23 13:49:03'),(711,'711','4.1.1.2.1 Long-term','2025-05-23 13:49:03'),(712,'712','4.1.1.2.2 Short-term','2025-05-23 13:49:03'),(714,'714','4.1.2 Loans','2025-05-23 13:49:03'),(715,'715','4.1.2.1 Monetary authorities','2025-05-23 13:49:03'),(717,'717','4.1.2.1.1 Long-term','2025-05-23 13:49:03'),(718,'718','4.1.2.1.2 Short-term','2025-05-23 13:49:03'),(719,'719','4.1.2.2 General government','2025-05-23 13:49:03'),(720,'720','4.1.2.2.1 Long-term','2025-05-23 13:49:03'),(721,'721','4.1.2.2.2 Short-term','2025-05-23 13:49:03'),(722,'722','4.1.2.3 Banks','2025-05-23 13:49:03'),(723,'723','4.1.2.3.1 Long-term','2025-05-23 13:49:03'),(724,'724','4.1.2.3.2 Short-term','2025-05-23 13:49:03'),(725,'725','4.1.2.4 Other sectors','2025-05-23 13:49:03'),(726,'726','4.1.2.4.1 Long-term','2025-05-23 13:49:03'),(727,'727','4.1.2.4.2 Short-term','2025-05-23 13:49:03'),(730,'730','4.1.3 Currency and deposits','2025-05-23 13:49:03'),(731,'731','4.1.3.1 Monetary authorities','2025-05-23 13:49:03'),(732,'732','4.1.3.2 General government','2025-05-23 13:49:03'),(733,'733','4.1.3.3 Banks','2025-05-23 13:49:03'),(734,'734','4.1.3.4 Other sectors','2025-05-23 13:49:03'),(736,'736','4.1.4 Other assets','2025-05-23 13:49:03'),(737,'737','4.1.4.1 Monetary authorities','2025-05-23 13:49:03'),(738,'738','4.1.4.1.1 Long-term','2025-05-23 13:49:03'),(739,'739','4.1.4.1.2 Short-term','2025-05-23 13:49:03'),(740,'740','4.1.4.2 General government','2025-05-23 13:49:03'),(741,'741','4.1.4.2.1 Long-term','2025-05-23 13:49:03'),(742,'742','4.1.4.2.2 Short-term','2025-05-23 13:49:03'),(743,'743','4.1.4.3 Banks','2025-05-23 13:49:03'),(744,'744','4.1.4.3.1 Long-term','2025-05-23 13:49:03'),(745,'745','4.1.4.3.2 Short-term','2025-05-23 13:49:03'),(746,'746','4.1.4.4 Other sectors','2025-05-23 13:49:03'),(747,'747','4.1.4.4.1 Long-term','2025-05-23 13:49:03'),(748,'748','3.1.4.4.2 Short-term','2025-05-23 13:49:03'),(753,'753','4.2 Liabilities','2025-05-23 13:49:03'),(756,'756','4.2.1 Trade credits','2025-05-23 13:49:03'),(757,'757','4.2.1.1 General government','2025-05-23 13:49:03'),(758,'758','4.2.1.1.1 Long-term','2025-05-23 13:49:03'),(759,'759','4.2.1.1.2 Short-term','2025-05-23 13:49:03'),(760,'760','4.2.1.2 Other sectors','2025-05-23 13:49:03'),(761,'761','4.2.1.2.1 Long-term','2025-05-23 13:49:03'),(762,'762','4.2.1.2.2 Short-term','2025-05-23 13:49:03'),(764,'764','4.2.2 Loans','2025-05-23 13:49:03'),(765,'765','4.2.2.1 Monetary authorities','2025-05-23 13:49:03'),(766,'766','4.2.2.1.1 Use of Fund credit and loans from the Fund','2025-05-23 13:49:03'),(767,'767','4.2.2.1.2 Other long-term','2025-05-23 13:49:03'),(768,'768','4.2.2.1.3 Short-term','2025-05-23 13:49:03'),(769,'769','4.2.2.2 General government','2025-05-23 13:49:03'),(770,'770','4.2.2.2.1 Long-term','2025-05-23 13:49:03'),(771,'771','4.2.2.2.2 Short-term','2025-05-23 13:49:03'),(772,'772','4.2.2.3 Banks','2025-05-23 13:49:03'),(773,'773','4.2.2.3.1 Long-term','2025-05-23 13:49:03'),(774,'774','4.2.2.3.2 Short-term','2025-05-23 13:49:03'),(775,'775','4.2.2.4 Other sectors','2025-05-23 13:49:03'),(776,'776','4.2.2.4.1 Long-term','2025-05-23 13:49:03'),(777,'777','4.2.2.4.2 Short-term','2025-05-23 13:49:03'),(780,'780','4.2.3 Currency and deposits','2025-05-23 13:49:03'),(781,'781','4.2.3.1 Monetary authorities','2025-05-23 13:49:03'),(782,'782','4.2.3.2 General government','2025-05-23 13:49:03'),(783,'783','4.2.3.3 Banks','2025-05-23 13:49:03'),(784,'784','4.2.3.4 Other sectors','2025-05-23 13:49:03'),(786,'786','4.2.4 Other liabilities','2025-05-23 13:49:03'),(787,'787','4.2.4.1 Monetary authorities','2025-05-23 13:49:03'),(788,'788','4.2.4.1.1 Long-term','2025-05-23 13:49:03'),(789,'789','4.2.4.1.2 Short-term','2025-05-23 13:49:03'),(790,'790','4.2.4.2 General government','2025-05-23 13:49:03'),(791,'791','4.2.4.2.1 Long-term','2025-05-23 13:49:03'),(792,'792','4.2.4.2.2 Short-term','2025-05-23 13:49:03'),(793,'793','4.2.4.3 Banks','2025-05-23 13:49:03'),(794,'794','4.2.4.3.1 Long-term','2025-05-23 13:49:03'),(795,'795','4.2.4.3.2 Short-term','2025-05-23 13:49:03'),(796,'796','4.2.4.4 Other sectors','2025-05-23 13:49:03'),(797,'797','4.2.4.4.1 Long-term','2025-05-23 13:49:03'),(798,'798','4.2.4.4.2 Short-term','2025-05-23 13:49:03'),(802,'802','5. Official reserve assets','2025-05-23 13:49:03'),(803,'803','5.4 Foreign exchange','2025-05-23 13:49:03'),(806,'806','5.4.2 Securities','2025-05-23 13:49:03'),(808,'808','5.4.1 Currency and deposits','2025-05-23 13:49:03'),(810,'810','5.3 Reserve position in the Fund','2025-05-23 13:49:03'),(811,'811','5.2 SDRs','2025-05-23 13:49:03'),(812,'812','5.1 Monetary gold (including gold deposits and, if appropriate, gold swapped)','2025-05-23 13:49:03'),(813,'813','5.6 Other claims','2025-05-23 13:49:03'),(850,'850','Total passenger','2025-05-23 13:49:03'),(851,'851','Total freight','2025-05-23 13:49:03'),(852,'852','Total other services','2025-05-23 13:49:03'),(858,'858','1.3 Other freight','2025-05-23 13:49:03'),(862,'862','1.4 Space freight','2025-05-23 13:49:03'),(863,'863','1.5 Rail freight','2025-05-23 13:49:03'),(865,'865','1.7 Inland waterway freight','2025-05-23 13:49:03'),(868,'868','1.8 Pipeline freight','2025-05-23 13:49:03'),(871,'871','2.3 All other travel expenditure','2025-05-23 13:49:03'),(887,'887','5. Financial intermediation services indirectly measured (FISIM)','2025-05-23 13:49:03'),(888,'888','6. Financial services including FISIM','2025-05-23 13:49:03'),(889,'889','7.2.1 News agency services','2025-05-23 13:49:03'),(890,'890','7.2.2 Other information provision services','2025-05-23 13:49:03'),(891,'891','8.1 Franchises and similar rights','2025-05-23 13:49:03'),(892,'892','8.2 Other royalties and license fees','2025-05-23 13:49:03'),(894,'894','8. Audiovisual transactions','2025-05-23 13:49:03'),(895,'895','10.2.1 Education services','2025-05-23 13:49:03'),(896,'896','10.2.2 Health services','2025-05-23 13:49:03'),(897,'897','10.2.3 Other','2025-05-23 13:49:03'),(900,'900','3.1 Financial derivatives assets','2025-05-23 13:49:03'),(901,'901','3.1.1 Monetary authorities','2025-05-23 13:49:03'),(902,'902','3.1.2 General government','2025-05-23 13:49:03'),(903,'903','3.1.3 Banks','2025-05-23 13:49:03'),(904,'904','3.1.4 Other sectors','2025-05-23 13:49:03'),(905,'905','3.2 Financial derivatives liabilities','2025-05-23 13:49:03'),(906,'906','3.2.1 Monetary authorities','2025-05-23 13:49:03'),(907,'907','3.2.2 General government','2025-05-23 13:49:03'),(908,'908','3.2.3 Banks','2025-05-23 13:49:03'),(909,'909','3.2.4 Other sectors','2025-05-23 13:49:03'),(910,'910','3. Financial derivatives (net)','2025-05-23 13:49:03'),(911,'911','3.0.1 Monetary authorities','2025-05-23 13:49:03'),(912,'912','3.0.2 General government','2025-05-23 13:49:03'),(913,'913','3.0.3 Banks','2025-05-23 13:49:03'),(914,'914','3.0.4 Other sectors','2025-05-23 13:49:03'),(920,'920','Exceptional financing transactions (Total)','2025-05-23 13:49:03'),(950,'950','1. Freight transportation on merchandise, valued on a transaction basis','2025-05-23 13:49:03'),(951,'951','1.1 Sea freight','2025-05-23 13:49:03'),(952,'952','1.2 Air freight','2025-05-23 13:49:03'),(953,'953','1.6 Road freight','2025-05-23 13:49:03'),(956,'956','2.1 Expenditure on goods','2025-05-23 13:49:03'),(957,'957','2.2 Expenditure on accommodation and food and beverage serving services','2025-05-23 13:49:03'),(960,'960','3. Gross insurance premiums','2025-05-23 13:49:03'),(961,'961','4. Gross insurance claims','2025-05-23 13:49:03'),(962,'962','7. Merchanting gross flows','2025-05-23 13:49:03'),(972,'972','3.1 Gross premiums-life insurance','2025-05-23 13:49:03'),(973,'973','4.1 Gross claims-life insurance','2025-05-23 13:49:03'),(974,'974','3.2 Gross premiums-freight insurance','2025-05-23 13:49:03'),(975,'975','4.2 Gross claims-freight insurance','2025-05-23 13:49:03'),(976,'976','3.3 Gross premiums-other direct insurance','2025-05-23 13:49:03'),(977,'977','4.3 Gross claims-other direct insurance','2025-05-23 13:49:03'),(982,'982','Current and capital transfers','2025-05-23 13:49:03'),(983,'983','Current + capital + financial accounts','2025-05-23 13:49:03'),(984,'984','Current + capital + financial accounts + net errors and omissions','2025-05-23 13:49:03'),(991,'991','Goods and services','2025-05-23 13:49:03'),(992,'992','Goods, services, and income','2025-05-23 13:49:03'),(993,'993','1. Current account','2025-05-23 13:49:03'),(994,'994','E. Capital Account','2025-05-23 13:49:03'),(995,'995','F. Financial Account','2025-05-23 13:49:03'),(996,'996','Capital and Financial Account','2025-05-23 13:49:03'),(998,'998','Net errors and omissions','2025-05-23 13:49:03'),(11010,'110 B','1.1 Export/import of goods in trade statistics','2025-05-23 13:49:03'),(11020,'110 C','1.2 Adjustments to trade statistics','2025-05-23 13:49:03'),(11030,'110 CA','1.3 For coverage','2025-05-23 13:49:03'),(11040,'110 CB','1.4 For classification','2025-05-23 13:49:03'),(11050,'110 CC','1.5 For valuation','2025-05-23 13:49:03'),(11060,'110 CD','1.6 For timing','2025-05-23 13:49:03'),(38010,'380 EC','Exc. Fin. - Intergovernmental grants','2025-05-23 13:49:03'),(38020,'380 ED','Exc. Fin. - Grants received from Fund subsidy accounts','2025-05-23 13:49:03'),(38030,'380 Z','Other','2025-05-23 13:49:03'),(40210,'402 EB','Exceptional Financing','2025-05-23 13:49:03'),(40220,'402 Z','Other','2025-05-23 13:49:03'),(57010,'570 EF','Exc. Fin. - Investment associated with debt reduction','2025-05-23 13:49:03'),(57020,'570 EG','Exc. Fin. - Other','2025-05-23 13:49:03'),(57030,'570 Z','1.2.1.3 Other','2025-05-23 13:49:03'),(67110,'671 EH','Exc. Fin. - Issues','2025-05-23 13:49:03'),(67120,'671 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(67130,'671 Z','Other','2025-05-23 13:49:03'),(67210,'672 EH','Exc. Fin. - Issues','2025-05-23 13:49:03'),(67220,'672 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(67230,'672 Z','Other','2025-05-23 13:49:03'),(67310,'673 EH','Exc. Fin. - Issues','2025-05-23 13:49:03'),(67320,'673 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(67330,'673 Z','Other','2025-05-23 13:49:03'),(67410,'674 EH','Exc. Fin. - Issues','2025-05-23 13:49:03'),(67420,'674 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(67430,'674 Z','Other','2025-05-23 13:49:03'),(68110,'681 EH','Exc. Fin. - Issues','2025-05-23 13:49:03'),(68120,'681 Z','Other','2025-05-23 13:49:03'),(68210,'682 EH','Exc. Fin. - Issues','2025-05-23 13:49:03'),(68220,'682 Z','Other','2025-05-23 13:49:03'),(68310,'683 EH','Exc. Fin. - Issues','2025-05-23 13:49:03'),(68320,'683 Z','Other','2025-05-23 13:49:03'),(68410,'684 EH','Exc. Fin. - Issues','2025-05-23 13:49:03'),(68420,'684 Z','Other','2025-05-23 13:49:03'),(76710,'767 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors onauthorities\' behalf','2025-05-23 13:49:03'),(76720,'767 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-23 13:49:03'),(76730,'767 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(76740,'767 Z','Other','2025-05-23 13:49:03'),(76810,'768 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-23 13:49:03'),(76820,'768 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-23 13:49:03'),(76830,'768 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(76840,'768 Z','Other','2025-05-23 13:49:03'),(77010,'770 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-23 13:49:03'),(77020,'770 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-23 13:49:03'),(77030,'770 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(77040,'770 Z','Other','2025-05-23 13:49:03'),(77110,'771 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-23 13:49:03'),(77120,'771 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-23 13:49:03'),(77130,'771 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(77140,'771 Z','Other','2025-05-23 13:49:03'),(77310,'773 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-23 13:49:03'),(77320,'773 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-23 13:49:03'),(77330,'773 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(77340,'773 Z','Other','2025-05-23 13:49:03'),(77410,'774 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-23 13:49:03'),(77420,'774 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-23 13:49:03'),(77430,'774 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(77440,'774 Z','Other','2025-05-23 13:49:03'),(77610,'776 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-23 13:49:03'),(77620,'776 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-23 13:49:03'),(77630,'776 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(77640,'776 Z','Other','2025-05-23 13:49:03'),(77710,'777 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-23 13:49:03'),(77720,'777 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-23 13:49:03'),(77730,'777 EM','Exc. Fin. - Advance repayments','2025-05-23 13:49:03'),(77740,'777 Z','Other','2025-05-23 13:49:03'),(78905,'789 F','Exc. Fin. - Total arrears','2025-05-23 13:49:03'),(78910,'789 FA','Exc. Fin. - Accumulation of arrears','2025-05-23 13:49:03'),(78915,'789 FB','Exc. Fin. - Principal on short-term debt','2025-05-23 13:49:03'),(78920,'789 FC','Exc. Fin. - Principal on long-term debt','2025-05-23 13:49:03'),(78925,'789 FD','Exc. Fin. - Original interest','2025-05-23 13:49:03'),(78930,'789 FE','Exc. Fin. - Penalty interest','2025-05-23 13:49:03'),(78935,'789 FF','Exc. Fin. - Repayments of arrears','2025-05-23 13:49:03'),(78940,'789 FG','Exc. Fin. - Principal','2025-05-23 13:49:03'),(78945,'789 FH','Exc. Fin. - Interest','2025-05-23 13:49:03'),(78950,'789 FI','Exc. Fin. - Rescheduling of arrears','2025-05-23 13:49:03'),(78955,'789 FJ','Exc. Fin. - Principal','2025-05-23 13:49:03'),(78960,'789 FK','Exc. Fin. - Interest','2025-05-23 13:49:03'),(78965,'789 FM','Exc. Fin. - Cancellation of arrears','2025-05-23 13:49:03'),(78970,'789 FN','Exc. Fin. - Principal','2025-05-23 13:49:03'),(78975,'789 FO','Exc. Fin. - Interest','2025-05-23 13:49:03'),(78980,'789 Z','Other','2025-05-23 13:49:03'),(79205,'792 F','Exc. Fin. - Total arrears','2025-05-23 13:49:03'),(79210,'792 FA','Exc. Fin. - Accumulation of arrears','2025-05-23 13:49:03'),(79215,'792 FB','Exc. Fin. - Principal on short-term debt','2025-05-23 13:49:03'),(79220,'792 FC','Exc. Fin. - Principal on long-term debt','2025-05-23 13:49:03'),(79225,'792 FD','Exc. Fin. - Original interest','2025-05-23 13:49:03'),(79230,'792 FE','Exc. Fin. - Penalty interest','2025-05-23 13:49:03'),(79235,'792 FF','Exc. Fin. - Repayments of arrears','2025-05-23 13:49:03'),(79240,'792 FG','Exc. Fin. - Principal','2025-05-23 13:49:03'),(79245,'792 FH','Exc. Fin. - Interest','2025-05-23 13:49:03'),(79250,'792 FI','Exc. Fin. - Rescheduling of arrears','2025-05-23 13:49:03'),(79255,'792 FJ','Exc. Fin. - Principal','2025-05-23 13:49:03'),(79260,'792 FK','Exc. Fin. - Interest','2025-05-23 13:49:03'),(79265,'792 FM','Exc. Fin. - Cancellation of arrears','2025-05-23 13:49:03'),(79270,'792 FN','Exc. Fin. - Principal','2025-05-23 13:49:03'),(79275,'792 FO','Exc. Fin. - Interest','2025-05-23 13:49:03'),(79280,'792 Z','Other','2025-05-23 13:49:03'),(79505,'795 F','Exc. Fin. - Total arrears','2025-05-23 13:49:03'),(79510,'795 FA','Exc. Fin. - Accumulation of arrears','2025-05-23 13:49:03'),(79515,'795 FB','Exc. Fin. - Principal on short-term debt','2025-05-23 13:49:03'),(79520,'795 FC','Exc. Fin. - Principal on long-term debt','2025-05-23 13:49:03'),(79525,'795 FD','Exc. Fin. - Original interest','2025-05-23 13:49:03'),(79530,'795 FE','Exc. Fin. - Penalty interest','2025-05-23 13:49:03'),(79535,'795 FF','Exc. Fin. - Repayments of arrears','2025-05-23 13:49:03'),(79540,'795 FG','Exc. Fin. - Principal','2025-05-23 13:49:03'),(79545,'795 FH','Exc. Fin. - Interest','2025-05-23 13:49:03'),(79550,'795 FI','Exc. Fin. - Rescheduling of arrears','2025-05-23 13:49:03'),(79555,'795 FJ','Exc. Fin. - Principal','2025-05-23 13:49:03'),(79560,'795 FK','Exc. Fin. - Interest','2025-05-23 13:49:03'),(79565,'795 FM','Exc. Fin. - Cancellation of arrears','2025-05-23 13:49:03'),(79570,'795 FN','Exc. Fin. - Principal','2025-05-23 13:49:03'),(79575,'795 FO','Exc. Fin. - Interest','2025-05-23 13:49:03'),(79580,'795 Z','Other','2025-05-23 13:49:03'),(79805,'798 F','Exc. Fin. - Total arrears','2025-05-23 13:49:03'),(79810,'798 FA','Exc. Fin. - Accumulation of arrears','2025-05-23 13:49:03'),(79815,'798 FB','Exc. Fin. - Principal on short-term debt','2025-05-23 13:49:03'),(79820,'798 FC','Exc. Fin. - Principal on long-term debt','2025-05-23 13:49:03'),(79825,'798 FD','Exc. Fin. - Original interest','2025-05-23 13:49:03'),(79830,'798 FE','Exc. Fin. - Penalty interest','2025-05-23 13:49:03'),(79835,'798 FF','Exc. Fin. - Repayments of arrears','2025-05-23 13:49:03'),(79840,'798 FG','Exc. Fin. - Principal','2025-05-23 13:49:03'),(79845,'798 FH','Exc. Fin. - Interest','2025-05-23 13:49:03'),(79850,'798 FI','Exc. Fin. - Rescheduling of arrears','2025-05-23 13:49:03'),(79855,'798 FJ','Exc. Fin. - Principal','2025-05-23 13:49:03'),(79860,'798 FK','Exc. Fin. - Interest','2025-05-23 13:49:03'),(79865,'798 FM','Exc. Fin. - Cancellation of arrears','2025-05-23 13:49:03'),(79870,'798 FN','Exc. Fin. - Principal','2025-05-23 13:49:03'),(79875,'798 FO','Exc. Fin. - Interest','2025-05-23 13:49:03'),(79880,'798 Z','Other','2025-05-23 13:49:03'),(80610,'806 S','5.4.2.1 Equities','2025-05-23 13:49:03'),(80620,'806 T','5.4.2.2 Bonds and notes','2025-05-23 13:49:03'),(80630,'806 U','5.4.2.3 Money market instruments','2025-05-23 13:49:03'),(80810,'808 A','5.4.1.1 With monetary authorities','2025-05-23 13:49:03'),(80820,'808 B','5.4.1.2 With banks','2025-05-23 13:49:03'),(81440,'814 A','5.5 Financial derivatives, net','2025-05-23 13:49:03');
/*!40000 ALTER TABLE `balanceOfPayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkProcessingState`
--

DROP TABLE IF EXISTS `bulkProcessingState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkProcessingState` (
  `bulkProcessingStateId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bulkProcessingStateId`),
  UNIQUE KEY `bulkprocessingstate_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkProcessingState`
--

LOCK TABLES `bulkProcessingState` WRITE;
/*!40000 ALTER TABLE `bulkProcessingState` DISABLE KEYS */;
INSERT INTO `bulkProcessingState` VALUES (1,'RECEIVED','The switch has received the individual transfer ids part of the bulk transfer',1,'2025-05-23 13:49:03'),(2,'RECEIVED_DUPLICATE','The switch has matched individual transfer as duplicate',1,'2025-05-23 13:49:03'),(3,'RECEIVED_INVALID','The switch has matched individual transfer as invalid within Prepare or Position Handler',1,'2025-05-23 13:49:03'),(4,'ACCEPTED','The switch has reserved the funds for the transfers in the bulk',1,'2025-05-23 13:49:03'),(5,'PROCESSING','Fulfilment request has been received for the individual transfer',1,'2025-05-23 13:49:03'),(6,'FULFIL_DUPLICATE','The switch has matched individual transfer fulfil as duplicate',1,'2025-05-23 13:49:03'),(7,'FULFIL_INVALID','The switch has matched individual transfer fulfilment as invalid within Fulfil or Position Handler',1,'2025-05-23 13:49:03'),(8,'COMPLETED','The switch has marked the individual transfer as committed',1,'2025-05-23 13:49:03'),(9,'REJECTED','The switch has marked the individual transfer as rejected',1,'2025-05-23 13:49:03'),(10,'EXPIRED','The switch has marked the individual transfer as timed out',1,'2025-05-23 13:49:03'),(11,'ABORTING','The switch has marked the individual transfer as aborting due to failed validation',1,'2025-05-23 13:49:03');
/*!40000 ALTER TABLE `bulkProcessingState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkTransfer`
--

DROP TABLE IF EXISTS `bulkTransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkTransfer` (
  `bulkTransferId` varchar(36) NOT NULL,
  `bulkQuoteId` varchar(36) DEFAULT NULL,
  `payerParticipantId` int unsigned DEFAULT NULL,
  `payeeParticipantId` int unsigned DEFAULT NULL,
  `expirationDate` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bulkTransferId`),
  KEY `bulktransfer_payerparticipantid_index` (`payerParticipantId`),
  KEY `bulktransfer_payeeparticipantid_index` (`payeeParticipantId`),
  CONSTRAINT `bulktransfer_bulktransferid_foreign` FOREIGN KEY (`bulkTransferId`) REFERENCES `bulkTransferDuplicateCheck` (`bulkTransferId`),
  CONSTRAINT `bulktransfer_payeeparticipantid_foreign` FOREIGN KEY (`payeeParticipantId`) REFERENCES `participant` (`participantId`),
  CONSTRAINT `bulktransfer_payerparticipantid_foreign` FOREIGN KEY (`payerParticipantId`) REFERENCES `participant` (`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransfer`
--

LOCK TABLES `bulkTransfer` WRITE;
/*!40000 ALTER TABLE `bulkTransfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulkTransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkTransferAssociation`
--

DROP TABLE IF EXISTS `bulkTransferAssociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkTransferAssociation` (
  `bulkTransferAssociationId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transferId` varchar(36) NOT NULL,
  `bulkTransferId` varchar(36) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bulkProcessingStateId` int unsigned NOT NULL,
  `lastProcessedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `errorCode` int unsigned DEFAULT NULL,
  `errorDescription` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bulkTransferAssociationId`),
  UNIQUE KEY `bulktransferassociation_transferid_bulktransferid_unique` (`transferId`,`bulkTransferId`),
  KEY `bulktransferassociation_bulktransferid_foreign` (`bulkTransferId`),
  KEY `bulktransferassociation_bulkprocessingstateid_foreign` (`bulkProcessingStateId`),
  CONSTRAINT `bulktransferassociation_bulkprocessingstateid_foreign` FOREIGN KEY (`bulkProcessingStateId`) REFERENCES `bulkProcessingState` (`bulkProcessingStateId`),
  CONSTRAINT `bulktransferassociation_bulktransferid_foreign` FOREIGN KEY (`bulkTransferId`) REFERENCES `bulkTransfer` (`bulkTransferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransferAssociation`
--

LOCK TABLES `bulkTransferAssociation` WRITE;
/*!40000 ALTER TABLE `bulkTransferAssociation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulkTransferAssociation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkTransferDuplicateCheck`
--

DROP TABLE IF EXISTS `bulkTransferDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkTransferDuplicateCheck` (
  `bulkTransferId` varchar(36) NOT NULL,
  `hash` varchar(256) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bulkTransferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransferDuplicateCheck`
--

LOCK TABLES `bulkTransferDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `bulkTransferDuplicateCheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulkTransferDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkTransferError`
--

DROP TABLE IF EXISTS `bulkTransferError`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkTransferError` (
  `bulkTransferErrorId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bulkTransferStateChangeId` bigint unsigned NOT NULL,
  `errorCode` int unsigned NOT NULL,
  `errorDescription` varchar(128) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bulkTransferErrorId`),
  KEY `bulktransfererror_bulktransferstatechangeid_index` (`bulkTransferStateChangeId`),
  CONSTRAINT `bulktransfererror_bulktransferstatechangeid_foreign` FOREIGN KEY (`bulkTransferStateChangeId`) REFERENCES `bulkTransferStateChange` (`bulkTransferStateChangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransferError`
--

LOCK TABLES `bulkTransferError` WRITE;
/*!40000 ALTER TABLE `bulkTransferError` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulkTransferError` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkTransferExtension`
--

DROP TABLE IF EXISTS `bulkTransferExtension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkTransferExtension` (
  `bulkTransferExtensionId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bulkTransferId` varchar(36) NOT NULL,
  `isFulfilment` tinyint(1) NOT NULL DEFAULT '0',
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bulkTransferExtensionId`),
  KEY `bulktransferextension_bulktransferid_index` (`bulkTransferId`),
  CONSTRAINT `bulktransferextension_bulktransferid_foreign` FOREIGN KEY (`bulkTransferId`) REFERENCES `bulkTransfer` (`bulkTransferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransferExtension`
--

LOCK TABLES `bulkTransferExtension` WRITE;
/*!40000 ALTER TABLE `bulkTransferExtension` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulkTransferExtension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkTransferFulfilment`
--

DROP TABLE IF EXISTS `bulkTransferFulfilment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkTransferFulfilment` (
  `bulkTransferId` varchar(36) NOT NULL,
  `completedDate` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bulkTransferId`),
  CONSTRAINT `bulktransferfulfilment_bulktransferid_foreign` FOREIGN KEY (`bulkTransferId`) REFERENCES `bulkTransferFulfilmentDuplicateCheck` (`bulkTransferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransferFulfilment`
--

LOCK TABLES `bulkTransferFulfilment` WRITE;
/*!40000 ALTER TABLE `bulkTransferFulfilment` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulkTransferFulfilment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkTransferFulfilmentDuplicateCheck`
--

DROP TABLE IF EXISTS `bulkTransferFulfilmentDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkTransferFulfilmentDuplicateCheck` (
  `bulkTransferId` varchar(36) NOT NULL,
  `hash` varchar(256) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bulkTransferId`),
  CONSTRAINT `bulktransferfulfilmentduplicatecheck_bulktransferid_foreign` FOREIGN KEY (`bulkTransferId`) REFERENCES `bulkTransfer` (`bulkTransferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransferFulfilmentDuplicateCheck`
--

LOCK TABLES `bulkTransferFulfilmentDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `bulkTransferFulfilmentDuplicateCheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulkTransferFulfilmentDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkTransferState`
--

DROP TABLE IF EXISTS `bulkTransferState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkTransferState` (
  `bulkTransferStateId` varchar(50) NOT NULL,
  `enumeration` varchar(50) NOT NULL COMMENT 'bulkTransferState associated to the Mojaloop API',
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bulkTransferStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransferState`
--

LOCK TABLES `bulkTransferState` WRITE;
/*!40000 ALTER TABLE `bulkTransferState` DISABLE KEYS */;
INSERT INTO `bulkTransferState` VALUES ('ABORTING','PROCESSING','The switch is attempting to abort all individual transfers',1,'2025-05-23 13:49:03'),('ACCEPTED','ACCEPTED','The switch has reserved the funds for the transfers in the bulk',1,'2025-05-23 13:49:03'),('COMPLETED','COMPLETED','Final state when transfers in the bulk are committed',1,'2025-05-23 13:49:03'),('EXPIRED','COMPLETED','Final state when transfers in the bulk have expired',1,'2025-05-23 13:49:03'),('EXPIRING','PROCESSING','One or more individual transfers from have expired',1,'2025-05-23 13:49:03'),('INVALID','REJECTED','Final state when the switch has completed processing of pending invalid bulk transfer',1,'2025-05-23 13:49:03'),('PENDING_FULFIL','PROCESSING','Fulfilment request has been received by the switch',1,'2025-05-23 13:49:03'),('PENDING_INVALID','PENDING','Validation of received bulk transfer is not successful',1,'2025-05-23 13:49:03'),('PENDING_PREPARE','PENDING','Validation of received bulk transfer is successful',1,'2025-05-23 13:49:03'),('PROCESSING','PROCESSING','Fulfilment request has been received by the switch',1,'2025-05-23 13:49:03'),('RECEIVED','RECEIVED','The switch has received the bulk transfer',1,'2025-05-23 13:49:03'),('REJECTED','REJECTED','Final state when the switch has completed rejection request by the payee',1,'2025-05-23 13:49:03');
/*!40000 ALTER TABLE `bulkTransferState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkTransferStateChange`
--

DROP TABLE IF EXISTS `bulkTransferStateChange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkTransferStateChange` (
  `bulkTransferStateChangeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bulkTransferId` varchar(36) NOT NULL,
  `bulkTransferStateId` varchar(50) NOT NULL,
  `reason` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bulkTransferStateChangeId`),
  KEY `bulktransferstatechange_bulktransferid_index` (`bulkTransferId`),
  KEY `bulktransferstatechange_bulktransferstateid_index` (`bulkTransferStateId`),
  CONSTRAINT `bulktransferstatechange_bulktransferid_foreign` FOREIGN KEY (`bulkTransferId`) REFERENCES `bulkTransfer` (`bulkTransferId`),
  CONSTRAINT `bulktransferstatechange_bulktransferstateid_foreign` FOREIGN KEY (`bulkTransferStateId`) REFERENCES `bulkTransferState` (`bulkTransferStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransferStateChange`
--

LOCK TABLES `bulkTransferStateChange` WRITE;
/*!40000 ALTER TABLE `bulkTransferStateChange` DISABLE KEYS */;
/*!40000 ALTER TABLE `bulkTransferStateChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactType`
--

DROP TABLE IF EXISTS `contactType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactType` (
  `contactTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contactTypeId`),
  UNIQUE KEY `contacttype_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactType`
--

LOCK TABLES `contactType` WRITE;
/*!40000 ALTER TABLE `contactType` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `currencyId` varchar(3) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scale` int unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`currencyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES ('AED','UAE dirham',1,'2025-05-23 13:49:03',2),('AFA','Afghanistan afghani (obsolete)',1,'2025-05-23 13:49:03',4),('AFN','Afghanistan afghani',1,'2025-05-23 13:49:03',2),('ALL','Albanian lek',1,'2025-05-23 13:49:03',2),('AMD','Armenian dram',1,'2025-05-23 13:49:03',2),('ANG','Netherlands Antillian guilder',1,'2025-05-23 13:49:03',2),('AOA','Angolan kwanza',1,'2025-05-23 13:49:03',2),('AOR','Angolan kwanza reajustado',1,'2025-05-23 13:49:03',4),('ARS','Argentine peso',1,'2025-05-23 13:49:03',2),('AUD','Australian dollar',1,'2025-05-23 13:49:03',2),('AWG','Aruban guilder',1,'2025-05-23 13:49:03',2),('AZN','Azerbaijanian new manat',1,'2025-05-23 13:49:03',2),('BAM','Bosnia-Herzegovina convertible mark',1,'2025-05-23 13:49:03',2),('BBD','Barbados dollar',1,'2025-05-23 13:49:03',2),('BDT','Bangladeshi taka',1,'2025-05-23 13:49:03',2),('BGN','Bulgarian lev',1,'2025-05-23 13:49:03',2),('BHD','Bahraini dinar',1,'2025-05-23 13:49:03',3),('BIF','Burundi franc',1,'2025-05-23 13:49:03',0),('BMD','Bermudian dollar',1,'2025-05-23 13:49:03',2),('BND','Brunei dollar',1,'2025-05-23 13:49:03',2),('BOB','Bolivian boliviano',1,'2025-05-23 13:49:03',2),('BOV','Bolivia Mvdol',1,'2025-05-23 13:49:03',2),('BRL','Brazilian real',1,'2025-05-23 13:49:03',2),('BSD','Bahamian dollar',1,'2025-05-23 13:49:03',2),('BTN','Bhutan ngultrum',1,'2025-05-23 13:49:03',2),('BWP','Botswana pula',1,'2025-05-23 13:49:03',2),('BYN','Belarusian ruble',1,'2025-05-23 13:49:03',4),('BYR','Belarussian Ruble',1,'2025-05-23 13:49:03',0),('BZD','Belize dollar',1,'2025-05-23 13:49:03',2),('CAD','Canadian dollar',1,'2025-05-23 13:49:03',2),('CDF','Congolese franc',1,'2025-05-23 13:49:03',2),('CHE','Switzerland WIR Euro',1,'2025-05-23 13:49:03',2),('CHF','Swiss franc',1,'2025-05-23 13:49:03',2),('CHW','Switzerland WIR Franc',1,'2025-05-23 13:49:03',2),('CLF','Unidad de Fomento',1,'2025-05-23 13:49:03',4),('CLP','Chilean peso',1,'2025-05-23 13:49:03',0),('CNY','Chinese yuan renminbi',1,'2025-05-23 13:49:03',2),('COP','Colombian peso',1,'2025-05-23 13:49:03',2),('COU','Unidad de Valor Real',1,'2025-05-23 13:49:03',2),('CRC','Costa Rican colon',1,'2025-05-23 13:49:03',2),('CUC','Cuban convertible peso',1,'2025-05-23 13:49:03',2),('CUP','Cuban peso',1,'2025-05-23 13:49:03',2),('CVE','Cape Verde escudo',1,'2025-05-23 13:49:03',2),('CZK','Czech koruna',1,'2025-05-23 13:49:03',2),('DJF','Djibouti franc',1,'2025-05-23 13:49:03',0),('DKK','Danish krone',1,'2025-05-23 13:49:03',2),('DOP','Dominican peso',1,'2025-05-23 13:49:03',2),('DZD','Algerian dinar',1,'2025-05-23 13:49:03',2),('EEK','Estonian kroon',1,'2025-05-23 13:49:03',4),('EGP','Egyptian pound',1,'2025-05-23 13:49:03',2),('ERN','Eritrean nakfa',1,'2025-05-23 13:49:03',2),('ETB','Ethiopian birr',1,'2025-05-23 13:49:03',2),('EUR','EU euro',1,'2025-05-23 13:49:03',2),('FJD','Fiji dollar',1,'2025-05-23 13:49:03',2),('FKP','Falkland Islands pound',1,'2025-05-23 13:49:03',2),('GBP','British pound',1,'2025-05-23 13:49:03',2),('GEL','Georgian lari',1,'2025-05-23 13:49:03',2),('GGP','Guernsey pound',1,'2025-05-23 13:49:03',4),('GHS','Ghanaian new cedi',1,'2025-05-23 13:49:03',2),('GIP','Gibraltar pound',1,'2025-05-23 13:49:03',2),('GMD','Gambian dalasi',1,'2025-05-23 13:49:03',2),('GNF','Guinean franc',1,'2025-05-23 13:49:03',0),('GTQ','Guatemalan quetzal',1,'2025-05-23 13:49:03',2),('GYD','Guyana dollar',1,'2025-05-23 13:49:03',2),('HKD','Hong Kong SAR dollar',1,'2025-05-23 13:49:03',2),('HNL','Honduran lempira',1,'2025-05-23 13:49:03',2),('HRK','Croatian kuna',1,'2025-05-23 13:49:03',2),('HTG','Haitian gourde',1,'2025-05-23 13:49:03',2),('HUF','Hungarian forint',1,'2025-05-23 13:49:03',2),('IDR','Indonesian rupiah',1,'2025-05-23 13:49:03',2),('ILS','Israeli new shekel',1,'2025-05-23 13:49:03',2),('IMP','Isle of Man pound',1,'2025-05-23 13:49:03',4),('INR','Indian rupee',1,'2025-05-23 13:49:03',2),('IQD','Iraqi dinar',1,'2025-05-23 13:49:03',3),('IRR','Iranian rial',1,'2025-05-23 13:49:03',2),('ISK','Icelandic krona',1,'2025-05-23 13:49:03',0),('JEP','Jersey pound',1,'2025-05-23 13:49:03',4),('JMD','Jamaican dollar',1,'2025-05-23 13:49:03',2),('JOD','Jordanian dinar',1,'2025-05-23 13:49:03',3),('JPY','Japanese yen',1,'2025-05-23 13:49:03',0),('KES','Kenyan shilling',1,'2025-05-23 13:49:03',2),('KGS','Kyrgyz som',1,'2025-05-23 13:49:03',2),('KHR','Cambodian riel',1,'2025-05-23 13:49:03',2),('KMF','Comoros franc',1,'2025-05-23 13:49:03',0),('KPW','North Korean won',1,'2025-05-23 13:49:03',2),('KRW','South Korean won',1,'2025-05-23 13:49:03',0),('KWD','Kuwaiti dinar',1,'2025-05-23 13:49:03',3),('KYD','Cayman Islands dollar',1,'2025-05-23 13:49:03',2),('KZT','Kazakh tenge',1,'2025-05-23 13:49:03',2),('LAK','Lao kip',1,'2025-05-23 13:49:03',2),('LBP','Lebanese pound',1,'2025-05-23 13:49:03',2),('LKR','Sri Lanka rupee',1,'2025-05-23 13:49:03',2),('LRD','Liberian dollar',1,'2025-05-23 13:49:03',2),('LSL','Lesotho loti',1,'2025-05-23 13:49:03',2),('LTL','Lithuanian litas',1,'2025-05-23 13:49:03',4),('LVL','Latvian lats',1,'2025-05-23 13:49:03',4),('LYD','Libyan dinar',1,'2025-05-23 13:49:03',3),('MAD','Moroccan dirham',1,'2025-05-23 13:49:03',2),('MDL','Moldovan leu',1,'2025-05-23 13:49:03',2),('MGA','Malagasy ariary',1,'2025-05-23 13:49:03',2),('MKD','Macedonian denar',1,'2025-05-23 13:49:03',2),('MMK','Myanmar kyat',1,'2025-05-23 13:49:03',2),('MNT','Mongolian tugrik',1,'2025-05-23 13:49:03',2),('MOP','Macao SAR pataca',1,'2025-05-23 13:49:03',2),('MRO','Mauritanian ouguiya',1,'2025-05-23 13:49:03',2),('MUR','Mauritius rupee',1,'2025-05-23 13:49:03',2),('MVR','Maldivian rufiyaa',1,'2025-05-23 13:49:03',2),('MWK','Malawi kwacha',1,'2025-05-23 13:49:03',2),('MXN','Mexican peso',1,'2025-05-23 13:49:03',2),('MXV','Mexican Unidad de Inversion (UDI)',1,'2025-05-23 13:49:03',2),('MYR','Malaysian ringgit',1,'2025-05-23 13:49:03',2),('MZN','Mozambique new metical',1,'2025-05-23 13:49:03',2),('NAD','Namibian dollar',1,'2025-05-23 13:49:03',2),('NGN','Nigerian naira',1,'2025-05-23 13:49:03',2),('NIO','Nicaraguan cordoba oro',1,'2025-05-23 13:49:03',2),('NOK','Norwegian krone',1,'2025-05-23 13:49:03',2),('NPR','Nepalese rupee',1,'2025-05-23 13:49:03',2),('NZD','New Zealand dollar',1,'2025-05-23 13:49:03',2),('OMR','Omani rial',1,'2025-05-23 13:49:03',3),('PAB','Panamanian balboa',1,'2025-05-23 13:49:03',2),('PEN','Peruvian nuevo sol',1,'2025-05-23 13:49:03',2),('PGK','Papua New Guinea kina',1,'2025-05-23 13:49:03',2),('PHP','Philippine peso',1,'2025-05-23 13:49:03',2),('PKR','Pakistani rupee',1,'2025-05-23 13:49:03',2),('PLN','Polish zloty',1,'2025-05-23 13:49:03',2),('PYG','Paraguayan guarani',1,'2025-05-23 13:49:03',0),('QAR','Qatari rial',1,'2025-05-23 13:49:03',2),('RON','Romanian new leu',1,'2025-05-23 13:49:03',2),('RSD','Serbian dinar',1,'2025-05-23 13:49:03',2),('RUB','Russian ruble',1,'2025-05-23 13:49:03',2),('RWF','Rwandan franc',1,'2025-05-23 13:49:03',0),('SAR','Saudi riyal',1,'2025-05-23 13:49:03',2),('SBD','Solomon Islands dollar',1,'2025-05-23 13:49:03',2),('SCR','Seychelles rupee',1,'2025-05-23 13:49:03',2),('SDG','Sudanese pound',1,'2025-05-23 13:49:03',2),('SEK','Swedish krona',1,'2025-05-23 13:49:03',2),('SGD','Singapore dollar',1,'2025-05-23 13:49:03',2),('SHP','Saint Helena pound',1,'2025-05-23 13:49:03',2),('SLL','Sierra Leone leone',1,'2025-05-23 13:49:03',2),('SOS','Somali shilling',1,'2025-05-23 13:49:03',2),('SPL','Seborgan luigino',1,'2025-05-23 13:49:03',4),('SRD','Suriname dollar',1,'2025-05-23 13:49:03',2),('SSP','South Sudanese Pound',1,'2025-05-23 13:49:03',2),('STD','Sao Tome and Principe dobra',1,'2025-05-23 13:49:03',2),('SVC','El Salvador colon',1,'2025-05-23 13:49:03',2),('SYP','Syrian pound',1,'2025-05-23 13:49:03',2),('SZL','Swaziland lilangeni',1,'2025-05-23 13:49:03',2),('THB','Thai baht',1,'2025-05-23 13:49:03',2),('TJS','Tajik somoni',1,'2025-05-23 13:49:03',2),('TMT','Turkmen new manat',1,'2025-05-23 13:49:03',2),('TND','Tunisian dinar',1,'2025-05-23 13:49:03',3),('TOP','Tongan pa\'anga',1,'2025-05-23 13:49:03',2),('TRY','Turkish lira',1,'2025-05-23 13:49:03',2),('TTD','Trinidad and Tobago dollar',1,'2025-05-23 13:49:03',2),('TVD','Tuvaluan dollar',1,'2025-05-23 13:49:03',4),('TWD','Taiwan New dollar',1,'2025-05-23 13:49:03',2),('TZS','Tanzanian shilling',1,'2025-05-23 13:49:03',2),('UAH','Ukrainian hryvnia',1,'2025-05-23 13:49:03',2),('UGX','Uganda new shilling',1,'2025-05-23 13:49:03',0),('USD','US dollar',1,'2025-05-23 13:49:03',2),('USN','US Dollar (Next day)',1,'2025-05-23 13:49:03',2),('UYI','Uruguay Peso en Unidades Indexadas (URUIURUI)',1,'2025-05-23 13:49:03',0),('UYU','Uruguayan peso uruguayo',1,'2025-05-23 13:49:03',2),('UZS','Uzbekistani sum',1,'2025-05-23 13:49:03',2),('VEF','Venezuelan bolivar fuerte',1,'2025-05-23 13:49:03',2),('VND','Vietnamese dong',1,'2025-05-23 13:49:03',0),('VUV','Vanuatu vatu',1,'2025-05-23 13:49:03',0),('WST','Samoan tala',1,'2025-05-23 13:49:03',2),('XAF','CFA franc BEAC',1,'2025-05-23 13:49:03',0),('XAG','Silver (ounce)',1,'2025-05-23 13:49:03',4),('XAU','Gold (ounce)',1,'2025-05-23 13:49:03',4),('XCD','East Caribbean dollar',1,'2025-05-23 13:49:03',2),('XDR','IMF special drawing right',1,'2025-05-23 13:49:03',4),('XFO','Gold franc',1,'2025-05-23 13:49:03',4),('XFU','UIC franc',1,'2025-05-23 13:49:03',4),('XOF','CFA franc BCEAO',1,'2025-05-23 13:49:03',0),('XPD','Palladium (ounce)',1,'2025-05-23 13:49:03',4),('XPF','CFP franc',1,'2025-05-23 13:49:03',0),('XPT','Platinum (ounce)',1,'2025-05-23 13:49:03',4),('XSU','Sucre',1,'2025-05-23 13:49:03',4),('XTS','Reserved for testing purposes',1,'2025-05-23 13:49:03',4),('XUA','African Development Bank (ADB) Unit of Account',1,'2025-05-23 13:49:03',4),('XXX','Assigned for transactions where no currency is involved',1,'2025-05-23 13:49:03',4),('YER','Yemeni rial',1,'2025-05-23 13:49:03',2),('ZAR','South African rand',1,'2025-05-23 13:49:03',2),('ZMK','Zambian kwacha (obsolete)',1,'2025-05-23 13:49:03',4),('ZMW','Zambian kwacha',1,'2025-05-23 13:49:03',2),('ZWD','Zimbabwe dollar (initial)',1,'2025-05-23 13:49:03',4),('ZWL','Zimbabwe dollar (3rd denomination)',1,'2025-05-23 13:49:03',2),('ZWN','Zimbabwe dollar (1st denomination)',1,'2025-05-23 13:49:03',4),('ZWR','Zimbabwe dollar (2nd denomination)',1,'2025-05-23 13:49:03',4);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endpointType`
--

DROP TABLE IF EXISTS `endpointType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endpointType` (
  `endpointTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`endpointTypeId`),
  UNIQUE KEY `endpointtype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endpointType`
--

LOCK TABLES `endpointType` WRITE;
/*!40000 ALTER TABLE `endpointType` DISABLE KEYS */;
INSERT INTO `endpointType` VALUES (1,'ALARM_NOTIFICATION_URL','Participant callback URL to which alarm notifications can be sent',1,'2025-05-23 13:49:04'),(2,'ALARM_NOTIFICATION_TOPIC','Kafka topic used to publish alarm notifications',1,'2025-05-23 13:49:04'),(3,'FSPIOP_CALLBACK_URL_TRANSFER_POST','Participant callback URL to which transfer post can be sent',1,'2025-05-23 13:49:04'),(4,'FSPIOP_CALLBACK_URL_TRANSFER_PUT','Participant callback URL to which transfer put can be sent',1,'2025-05-23 13:49:04'),(5,'FSPIOP_CALLBACK_URL_TRANSFER_ERROR','Participant callback URL to which transfer error notifications can be sent',1,'2025-05-23 13:49:04'),(6,'FSPIOP_CALLBACK_URL_FX_QUOTES','Participant callback URL to which FX quote requests can be sent',1,'2025-05-23 13:49:04'),(7,'FSPIOP_CALLBACK_URL_FX_TRANSFER_POST','Participant callback URL to which FX transfer post can be sent',1,'2025-05-23 13:49:04'),(8,'FSPIOP_CALLBACK_URL_FX_TRANSFER_PUT','Participant callback URL to which FX transfer put can be sent',1,'2025-05-23 13:49:04'),(9,'FSPIOP_CALLBACK_URL_FX_TRANSFER_ERROR','Participant callback URL to which FX transfer error notifications can be sent',1,'2025-05-23 13:49:04'),(10,'NET_DEBIT_CAP_THRESHOLD_BREACH_EMAIL','Participant/Hub operator email address to which the net debit cap breach e-mail notification can be sent',1,'2025-05-23 13:49:04'),(11,'NET_DEBIT_CAP_ADJUSTMENT_EMAIL','Participant/Hub operator email address to which the net debit cap adjustment e-mail notification can be sent',1,'2025-05-23 13:49:04'),(12,'SETTLEMENT_TRANSFER_POSITION_CHANGE_EMAIL','Participant/Hub operator email address to which the position change due to settlement transfer e-mail notification can be sent',1,'2025-05-23 13:49:04'),(13,'FSPIOP_CALLBACK_URL_PARTICIPANT_PUT','Participant callback URL to which put participant information can be sent',1,'2025-05-23 13:49:04'),(14,'FSPIOP_CALLBACK_URL_PARTICIPANT_SUB_ID_PUT','Participant callback URL to which put participant information can be sent, when subId is specified',1,'2025-05-23 13:49:04'),(15,'FSPIOP_CALLBACK_URL_PARTICIPANT_PUT_ERROR','Participant callback URL to which put participant error information can be sent',1,'2025-05-23 13:49:04'),(16,'FSPIOP_CALLBACK_URL_PARTICIPANT_SUB_ID_PUT_ERROR','Participant callback URL to which put participant error information can be sent, when subId is specified',1,'2025-05-23 13:49:04'),(17,'FSPIOP_CALLBACK_URL_PARTICIPANT_DELETE','Participant callback URL to which delete participant information can be sent',1,'2025-05-23 13:49:04'),(18,'FSPIOP_CALLBACK_URL_PARTICIPANT_SUB_ID_DELETE','Participant callback URL to which delete participant information can be sent, when subId is specified',1,'2025-05-23 13:49:04'),(19,'FSPIOP_CALLBACK_URL_PARTICIPANT_BATCH_PUT','Participant callback URL to which put batch participant information can be sent',1,'2025-05-23 13:49:04'),(20,'FSPIOP_CALLBACK_URL_PARTICIPANT_BATCH_PUT_ERROR','Participant callback URL to which put batch participant error information can be sent',1,'2025-05-23 13:49:04'),(21,'FSPIOP_CALLBACK_URL_PARTIES_GET','Parties callback URL to which get parties information can be requested',1,'2025-05-23 13:49:04'),(22,'FSPIOP_CALLBACK_URL_PARTIES_SUB_ID_GET','Parties callback URL to which get parties information can be requested',1,'2025-05-23 13:49:04'),(23,'FSPIOP_CALLBACK_URL_PARTIES_PUT','Parties callback URL to which put parties information can be sent',1,'2025-05-23 13:49:04'),(24,'FSPIOP_CALLBACK_URL_PARTIES_SUB_ID_PUT','Parties callback URL to which put parties information can be sent when SubId is specified',1,'2025-05-23 13:49:04'),(25,'FSPIOP_CALLBACK_URL_PARTIES_PUT_ERROR','Parties callback URL to which put participant error information can be sent',1,'2025-05-23 13:49:04'),(26,'FSPIOP_CALLBACK_URL_PARTIES_SUB_ID_PUT_ERROR','Parties callback URL to which put parties error information can be sent when SubId is specified',1,'2025-05-23 13:49:04'),(27,'FSPIOP_CALLBACK_URL_QUOTES','Quotes callback URL to which put quotes requests can be sent',1,'2025-05-23 13:49:04'),(28,'FSPIOP_CALLBACK_URL_BULK_TRANSFER_POST','Participant callback URL to which bulk transfer post can be sent',1,'2025-05-23 13:49:04'),(29,'FSPIOP_CALLBACK_URL_BULK_TRANSFER_PUT','Participant callback URL to which bulk transfer put can be sent',1,'2025-05-23 13:49:04'),(30,'FSPIOP_CALLBACK_URL_BULK_TRANSFER_ERROR','Participant callback URL to which bulk transfer error notifications can be sent',1,'2025-05-23 13:49:04'),(31,'FSPIOP_CALLBACK_URL_AUTHORIZATIONS','Participant callback URL to which authorization requests can be sent',1,'2025-05-23 13:49:04'),(32,'FSPIOP_CALLBACK_URL_TRX_REQ_SERVICE','Participant callback URL to which transaction requests can be sent',1,'2025-05-23 13:49:04'),(33,'FSPIOP_CALLBACK_URL_BULK_QUOTES','Bulk Quotes callback URL to which put bulkQuotes requests can be sent',1,'2025-05-23 13:49:04'),(34,'TP_CB_URL_TRANSACTION_REQUEST_GET','Participant callback URL where GET /thirdpartyRequests/transactions/{ID} can be sent',1,'2025-05-23 13:49:04'),(35,'TP_CB_URL_TRANSACTION_REQUEST_POST','Participant callback URL where POST /thirdpartyRequests/transactions can be sent',1,'2025-05-23 13:49:04'),(36,'TP_CB_URL_TRANSACTION_REQUEST_PUT','Participant callback URL where PUT /thirdpartyRequests/transactions/{ID} can be sent',1,'2025-05-23 13:49:04'),(37,'TP_CB_URL_TRANSACTION_REQUEST_PUT_ERROR','Participant callback URL to which PUT /thirdpartyRequests/transactions/{ID}/error error information can be sent',1,'2025-05-23 13:49:04'),(38,'TP_CB_URL_TRANSACTION_REQUEST_PATCH','Participant callback URL where PATCH /thirdpartyRequests/transactions/{ID} can be sent',1,'2025-05-23 13:49:04'),(39,'TP_CB_URL_TRANSACTION_REQUEST_AUTH_POST','Participant callback URL where POST /thirdpartyRequests/transactions/{ID}/authorizations can be sent',1,'2025-05-23 13:49:04'),(40,'TP_CB_URL_TRANSACTION_REQUEST_AUTH_PUT','Participant callback URL where PUT /thirdpartyRequests/transactions/{ID}/authorizations can be sent',1,'2025-05-23 13:49:04'),(41,'TP_CB_URL_TRANSACTION_REQUEST_AUTH_PUT_ERROR','Participant callback URL where PUT /thirdpartyRequests/transactions/{ID}/authorizations/error error information can be sent',1,'2025-05-23 13:49:04'),(42,'TP_CB_URL_TRANSACTION_REQUEST_VERIFY_POST','Participant callback URL where POST /thirdpartyRequests/verifications can be sent',1,'2025-05-23 13:49:04'),(43,'TP_CB_URL_TRANSACTION_REQUEST_VERIFY_PUT','Participant callback URL where PUT /thirdpartyRequests/verifications/{ID} can be sent',1,'2025-05-23 13:49:04'),(44,'TP_CB_URL_TRANSACTION_REQUEST_VERIFY_PUT_ERROR','Participant callback URL where PUT /thirdpartyRequests/verifications/{ID}/error can be sent',1,'2025-05-23 13:49:04'),(45,'TP_CB_URL_CONSENT_REQUEST_POST','Participant callback URL where POST /consentRequests can be sent',1,'2025-05-23 13:49:04'),(46,'TP_CB_URL_CONSENT_REQUEST_PUT','Participant callback URL where PUT /consentRequests/{ID} can be sent',1,'2025-05-23 13:49:04'),(47,'TP_CB_URL_CONSENT_REQUEST_PUT_ERROR','Participant callback URL where PUT /consentRequests/{ID}/error error information can be sent',1,'2025-05-23 13:49:04'),(48,'TP_CB_URL_CONSENT_REQUEST_PATCH','Participant callback URL where PATCH /consentRequests/{ID} can be sent',1,'2025-05-23 13:49:04'),(49,'TP_CB_URL_CREATE_CREDENTIAL_POST','Participant callback URL where POST /consentRequests/{ID}/createCredential can be sent',1,'2025-05-23 13:49:04'),(50,'TP_CB_URL_CONSENT_POST','Participant callback URL where POST /consents/ can be sent',1,'2025-05-23 13:49:04'),(51,'TP_CB_URL_CONSENT_GET','Participant callback URL where GET /consents/{ID} can be sent',1,'2025-05-23 13:49:04'),(52,'TP_CB_URL_CONSENT_PUT','Participant callback URL where PUT /consents/{ID} can be sent',1,'2025-05-23 13:49:04'),(53,'TP_CB_URL_CONSENT_PATCH','Participant callback URL where PATCH /consents/{ID} can be sent',1,'2025-05-23 13:49:04'),(54,'TP_CB_URL_CONSENT_PUT_ERROR','Participant callback URL where PUT /consents/{ID}/error error information can be sent',1,'2025-05-23 13:49:04'),(55,'TP_CB_URL_CONSENT_GENERATE_CHALLENGE_POST','Participant callback URL where POST /consents/{ID}/generateChallenge can be sent',1,'2025-05-23 13:49:04'),(56,'TP_CB_URL_CONSENT_GENERATE_CHALLENGE_PUT_ERROR','Participant callback URL where PUT /consents/{ID}/generateChallenge/error error information can be sent',1,'2025-05-23 13:49:04'),(57,'TP_CB_URL_ACCOUNTS_GET','Accounts callback URL where GET /accounts/{ID} can be sent',1,'2025-05-23 13:49:04'),(58,'TP_CB_URL_ACCOUNTS_PUT','Accounts callback URL where PUT /accounts/{ID} can be sent',1,'2025-05-23 13:49:04'),(59,'TP_CB_URL_ACCOUNTS_PUT_ERROR','Accounts callback URL where PUT /accounts/{ID}/error error information can be sent',1,'2025-05-23 13:49:04'),(60,'TP_CB_URL_SERVICES_GET','Participant callback URL where GET /services/{ServiceType} can be sent',1,'2025-05-23 13:49:04'),(61,'TP_CB_URL_SERVICES_PUT','Participant callback URL where PUT /services/{ServiceType} can be sent',1,'2025-05-23 13:49:04'),(62,'TP_CB_URL_SERVICES_PUT_ERROR','Participant callback URL where PUT /services/{ServiceType}/error can be sent',1,'2025-05-23 13:49:04');
/*!40000 ALTER TABLE `endpointType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `eventId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expiringTransfer`
--

DROP TABLE IF EXISTS `expiringTransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expiringTransfer` (
  `expiringTransferId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transferId` varchar(36) NOT NULL,
  `expirationDate` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`expiringTransferId`),
  UNIQUE KEY `expiringtransfer_transferid_unique` (`transferId`),
  KEY `expiringtransfer_expirationdate_index` (`expirationDate`),
  CONSTRAINT `expiringtransfer_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transfer` (`transferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expiringTransfer`
--

LOCK TABLES `expiringTransfer` WRITE;
/*!40000 ALTER TABLE `expiringTransfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `expiringTransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externalParticipant`
--

DROP TABLE IF EXISTS `externalParticipant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `externalParticipant` (
  `externalParticipantId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `proxyId` int unsigned NOT NULL,
  PRIMARY KEY (`externalParticipantId`),
  UNIQUE KEY `externalparticipant_name_unique` (`name`),
  KEY `externalparticipant_proxyid_foreign` (`proxyId`),
  CONSTRAINT `externalparticipant_proxyid_foreign` FOREIGN KEY (`proxyId`) REFERENCES `participant` (`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalParticipant`
--

LOCK TABLES `externalParticipant` WRITE;
/*!40000 ALTER TABLE `externalParticipant` DISABLE KEYS */;
/*!40000 ALTER TABLE `externalParticipant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxCharge`
--

DROP TABLE IF EXISTS `fxCharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxCharge` (
  `fxChargeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chargeType` varchar(32) NOT NULL COMMENT 'A description of the charge which is being levied.',
  `conversionId` varchar(36) NOT NULL,
  `sourceAmount` decimal(18,4) DEFAULT NULL COMMENT 'The amount of the charge which is being levied, expressed in the source currency.',
  `sourceCurrency` varchar(3) DEFAULT NULL COMMENT 'The currency in which the source amount charge is being levied.',
  `targetAmount` decimal(18,4) DEFAULT NULL COMMENT 'The amount of the charge which is being levied, expressed in the target currency.',
  `targetCurrency` varchar(3) DEFAULT NULL COMMENT 'The currency in which the target amount charge is being levied.',
  PRIMARY KEY (`fxChargeId`),
  KEY `fxcharge_conversionid_foreign` (`conversionId`),
  CONSTRAINT `fxcharge_conversionid_foreign` FOREIGN KEY (`conversionId`) REFERENCES `fxQuoteResponseConversionTerms` (`conversionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxCharge`
--

LOCK TABLES `fxCharge` WRITE;
/*!40000 ALTER TABLE `fxCharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `fxCharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxParticipantCurrencyType`
--

DROP TABLE IF EXISTS `fxParticipantCurrencyType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxParticipantCurrencyType` (
  `fxParticipantCurrencyTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fxParticipantCurrencyTypeId`),
  UNIQUE KEY `fxparticipantcurrencytype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxParticipantCurrencyType`
--

LOCK TABLES `fxParticipantCurrencyType` WRITE;
/*!40000 ALTER TABLE `fxParticipantCurrencyType` DISABLE KEYS */;
INSERT INTO `fxParticipantCurrencyType` VALUES (1,'SOURCE','The participant currency is the source of the currency conversion','2025-05-23 13:49:04'),(2,'TARGET','The participant currency is the target of the currency conversion','2025-05-23 13:49:04');
/*!40000 ALTER TABLE `fxParticipantCurrencyType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxQuote`
--

DROP TABLE IF EXISTS `fxQuote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxQuote` (
  `conversionRequestId` varchar(36) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`conversionRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuote`
--

LOCK TABLES `fxQuote` WRITE;
/*!40000 ALTER TABLE `fxQuote` DISABLE KEYS */;
INSERT INTO `fxQuote` VALUES ('01JW5BVFZX0SQJ7F4X8MBHGM1G','2025-05-26 03:58:19');
/*!40000 ALTER TABLE `fxQuote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxQuoteConversionTerms`
--

DROP TABLE IF EXISTS `fxQuoteConversionTerms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxQuoteConversionTerms` (
  `conversionId` varchar(255) NOT NULL,
  `determiningTransferId` varchar(36) DEFAULT NULL,
  `conversionRequestId` varchar(36) NOT NULL,
  `amountTypeId` int unsigned NOT NULL COMMENT 'This is part of the transaction type that contains valid elements for - Amount Type',
  `initiatingFsp` varchar(255) DEFAULT NULL,
  `counterPartyFsp` varchar(255) DEFAULT NULL,
  `sourceAmount` decimal(18,4) NOT NULL,
  `sourceCurrency` varchar(3) NOT NULL,
  `targetAmount` decimal(18,4) DEFAULT NULL,
  `targetCurrency` varchar(3) NOT NULL,
  `expirationDate` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`conversionId`),
  KEY `fxquoteconversionterms_conversionrequestid_foreign` (`conversionRequestId`),
  KEY `fxquoteconversionterms_amounttypeid_foreign` (`amountTypeId`),
  KEY `fxquoteconversionterms_sourcecurrency_foreign` (`sourceCurrency`),
  KEY `fxquoteconversionterms_targetcurrency_foreign` (`targetCurrency`),
  CONSTRAINT `fxquoteconversionterms_amounttypeid_foreign` FOREIGN KEY (`amountTypeId`) REFERENCES `amountType` (`amountTypeId`),
  CONSTRAINT `fxquoteconversionterms_conversionrequestid_foreign` FOREIGN KEY (`conversionRequestId`) REFERENCES `fxQuote` (`conversionRequestId`),
  CONSTRAINT `fxquoteconversionterms_sourcecurrency_foreign` FOREIGN KEY (`sourceCurrency`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `fxquoteconversionterms_targetcurrency_foreign` FOREIGN KEY (`targetCurrency`) REFERENCES `currency` (`currencyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteConversionTerms`
--

LOCK TABLES `fxQuoteConversionTerms` WRITE;
/*!40000 ALTER TABLE `fxQuoteConversionTerms` DISABLE KEYS */;
INSERT INTO `fxQuoteConversionTerms` VALUES ('01JW5BVG0HZCNMK21G6NYGKN7J','01JW5BVG0MRT1H6PG3K6QA7VZR','01JW5BVFZX0SQJ7F4X8MBHGM1G',1,'ttkfxpayer','ttkfxp1',13.0000,'XDR',NULL,'XTS','2024-08-22 12:33:24','2025-05-26 03:58:19');
/*!40000 ALTER TABLE `fxQuoteConversionTerms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxQuoteConversionTermsExtension`
--

DROP TABLE IF EXISTS `fxQuoteConversionTermsExtension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxQuoteConversionTermsExtension` (
  `fxQuoteConversionTermExtension` bigint unsigned NOT NULL AUTO_INCREMENT,
  `conversionId` varchar(36) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`fxQuoteConversionTermExtension`),
  KEY `fxquoteconversiontermsextension_conversionid_foreign` (`conversionId`),
  CONSTRAINT `fxquoteconversiontermsextension_conversionid_foreign` FOREIGN KEY (`conversionId`) REFERENCES `fxQuoteConversionTerms` (`conversionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteConversionTermsExtension`
--

LOCK TABLES `fxQuoteConversionTermsExtension` WRITE;
/*!40000 ALTER TABLE `fxQuoteConversionTermsExtension` DISABLE KEYS */;
/*!40000 ALTER TABLE `fxQuoteConversionTermsExtension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxQuoteDuplicateCheck`
--

DROP TABLE IF EXISTS `fxQuoteDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxQuoteDuplicateCheck` (
  `conversionRequestId` varchar(36) NOT NULL,
  `hash` varchar(1024) DEFAULT NULL COMMENT 'hash value received for the quote request',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`conversionRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteDuplicateCheck`
--

LOCK TABLES `fxQuoteDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxQuoteDuplicateCheck` DISABLE KEYS */;
INSERT INTO `fxQuoteDuplicateCheck` VALUES ('01JW5BVFZX0SQJ7F4X8MBHGM1G','50cc18155702638d9c18ce725542bb227ae552fff4a23a0fe3700466ce7d4c3a','2025-05-26 03:58:19');
/*!40000 ALTER TABLE `fxQuoteDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxQuoteError`
--

DROP TABLE IF EXISTS `fxQuoteError`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxQuoteError` (
  `fxQuoteErrorId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `conversionRequestId` varchar(36) NOT NULL,
  `fxQuoteResponseId` bigint unsigned DEFAULT NULL COMMENT 'The response to the initial fxQuote',
  `errorCode` int unsigned NOT NULL,
  `errorDescription` varchar(128) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fxQuoteErrorId`),
  KEY `fxquoteerror_conversionrequestid_foreign` (`conversionRequestId`),
  KEY `fxquoteerror_fxquoteresponseid_foreign` (`fxQuoteResponseId`),
  CONSTRAINT `fxquoteerror_conversionrequestid_foreign` FOREIGN KEY (`conversionRequestId`) REFERENCES `fxQuote` (`conversionRequestId`),
  CONSTRAINT `fxquoteerror_fxquoteresponseid_foreign` FOREIGN KEY (`fxQuoteResponseId`) REFERENCES `fxQuoteResponse` (`fxQuoteResponseId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteError`
--

LOCK TABLES `fxQuoteError` WRITE;
/*!40000 ALTER TABLE `fxQuoteError` DISABLE KEYS */;
INSERT INTO `fxQuoteError` VALUES (1,'01JW5BVFZX0SQJ7F4X8MBHGM1G',NULL,2000,'This is a generic error','2025-05-26 03:58:20');
/*!40000 ALTER TABLE `fxQuoteError` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxQuoteResponse`
--

DROP TABLE IF EXISTS `fxQuoteResponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxQuoteResponse` (
  `fxQuoteResponseId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `conversionRequestId` varchar(36) NOT NULL,
  `ilpCondition` varchar(256) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`fxQuoteResponseId`),
  KEY `fxquoteresponse_conversionrequestid_foreign` (`conversionRequestId`),
  CONSTRAINT `fxquoteresponse_conversionrequestid_foreign` FOREIGN KEY (`conversionRequestId`) REFERENCES `fxQuote` (`conversionRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteResponse`
--

LOCK TABLES `fxQuoteResponse` WRITE;
/*!40000 ALTER TABLE `fxQuoteResponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `fxQuoteResponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxQuoteResponseConversionTerms`
--

DROP TABLE IF EXISTS `fxQuoteResponseConversionTerms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxQuoteResponseConversionTerms` (
  `conversionId` varchar(255) NOT NULL,
  `determiningTransferId` varchar(36) DEFAULT NULL,
  `conversionRequestId` varchar(36) NOT NULL,
  `fxQuoteResponseId` bigint unsigned NOT NULL,
  `amountTypeId` int unsigned NOT NULL COMMENT 'This is part of the transaction type that contains valid elements for - Amount Type',
  `initiatingFsp` varchar(255) DEFAULT NULL,
  `counterPartyFsp` varchar(255) DEFAULT NULL,
  `sourceAmount` decimal(18,4) NOT NULL,
  `sourceCurrency` varchar(3) NOT NULL,
  `targetAmount` decimal(18,4) NOT NULL,
  `targetCurrency` varchar(3) NOT NULL,
  `expirationDate` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`conversionId`),
  KEY `fxquoteresponseconversionterms_conversionrequestid_foreign` (`conversionRequestId`),
  KEY `fxquoteresponseconversionterms_fxquoteresponseid_foreign` (`fxQuoteResponseId`),
  KEY `fxquoteresponseconversionterms_amounttypeid_foreign` (`amountTypeId`),
  KEY `fxquoteresponseconversionterms_sourcecurrency_foreign` (`sourceCurrency`),
  KEY `fxquoteresponseconversionterms_targetcurrency_foreign` (`targetCurrency`),
  CONSTRAINT `fxquoteresponseconversionterms_amounttypeid_foreign` FOREIGN KEY (`amountTypeId`) REFERENCES `amountType` (`amountTypeId`),
  CONSTRAINT `fxquoteresponseconversionterms_conversionrequestid_foreign` FOREIGN KEY (`conversionRequestId`) REFERENCES `fxQuote` (`conversionRequestId`),
  CONSTRAINT `fxquoteresponseconversionterms_fxquoteresponseid_foreign` FOREIGN KEY (`fxQuoteResponseId`) REFERENCES `fxQuoteResponse` (`fxQuoteResponseId`),
  CONSTRAINT `fxquoteresponseconversionterms_sourcecurrency_foreign` FOREIGN KEY (`sourceCurrency`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `fxquoteresponseconversionterms_targetcurrency_foreign` FOREIGN KEY (`targetCurrency`) REFERENCES `currency` (`currencyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteResponseConversionTerms`
--

LOCK TABLES `fxQuoteResponseConversionTerms` WRITE;
/*!40000 ALTER TABLE `fxQuoteResponseConversionTerms` DISABLE KEYS */;
/*!40000 ALTER TABLE `fxQuoteResponseConversionTerms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxQuoteResponseConversionTermsExtension`
--

DROP TABLE IF EXISTS `fxQuoteResponseConversionTermsExtension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxQuoteResponseConversionTermsExtension` (
  `fxQuoteResponseConversionTermsExtension` bigint unsigned NOT NULL AUTO_INCREMENT,
  `conversionId` varchar(36) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`fxQuoteResponseConversionTermsExtension`),
  KEY `fxquoteresponseconversiontermsextension_conversionid_foreign` (`conversionId`),
  CONSTRAINT `fxquoteresponseconversiontermsextension_conversionid_foreign` FOREIGN KEY (`conversionId`) REFERENCES `fxQuoteResponseConversionTerms` (`conversionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteResponseConversionTermsExtension`
--

LOCK TABLES `fxQuoteResponseConversionTermsExtension` WRITE;
/*!40000 ALTER TABLE `fxQuoteResponseConversionTermsExtension` DISABLE KEYS */;
/*!40000 ALTER TABLE `fxQuoteResponseConversionTermsExtension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxQuoteResponseDuplicateCheck`
--

DROP TABLE IF EXISTS `fxQuoteResponseDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxQuoteResponseDuplicateCheck` (
  `fxQuoteResponseId` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'The response to the initial quote',
  `conversionRequestId` varchar(36) NOT NULL,
  `hash` varchar(255) DEFAULT NULL COMMENT 'hash value received for the quote response',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`fxQuoteResponseId`),
  KEY `fxquoteresponseduplicatecheck_conversionrequestid_foreign` (`conversionRequestId`),
  CONSTRAINT `fxquoteresponseduplicatecheck_conversionrequestid_foreign` FOREIGN KEY (`conversionRequestId`) REFERENCES `fxQuote` (`conversionRequestId`),
  CONSTRAINT `fxquoteresponseduplicatecheck_fxquoteresponseid_foreign` FOREIGN KEY (`fxQuoteResponseId`) REFERENCES `fxQuoteResponse` (`fxQuoteResponseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteResponseDuplicateCheck`
--

LOCK TABLES `fxQuoteResponseDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxQuoteResponseDuplicateCheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `fxQuoteResponseDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransfer`
--

DROP TABLE IF EXISTS `fxTransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransfer` (
  `commitRequestId` varchar(36) NOT NULL,
  `determiningTransferId` varchar(36) DEFAULT NULL,
  `sourceAmount` decimal(18,4) NOT NULL,
  `targetAmount` decimal(18,4) NOT NULL,
  `sourceCurrency` varchar(3) NOT NULL,
  `targetCurrency` varchar(3) NOT NULL,
  `ilpCondition` varchar(256) NOT NULL,
  `expirationDate` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commitRequestId`),
  KEY `fxtransfer_sourcecurrency_index` (`sourceCurrency`),
  KEY `fxtransfer_targetcurrency_index` (`targetCurrency`),
  KEY `fxtransfer_determiningtransferid_index` (`determiningTransferId`),
  CONSTRAINT `fxtransfer_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransferDuplicateCheck` (`commitRequestId`),
  CONSTRAINT `fxtransfer_sourcecurrency_foreign` FOREIGN KEY (`sourceCurrency`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `fxtransfer_targetcurrency_foreign` FOREIGN KEY (`targetCurrency`) REFERENCES `currency` (`currencyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransfer`
--

LOCK TABLES `fxTransfer` WRITE;
/*!40000 ALTER TABLE `fxTransfer` DISABLE KEYS */;
INSERT INTO `fxTransfer` VALUES ('01JW5BVKEH0MC1992B691ZDQ6J','01JW5BVKEJRWBQTS5DK18ZQRT6',13.0000,15.0000,'XDR','XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-27 03:58:21','2025-05-26 03:58:20'),('01JW5BVMRAE19EVSGE8VBSBKT1','01JW5BVMRC2MSVZQBDBG1SWFWX',10.0000,15.0000,'XDR','XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-27 03:58:22','2025-05-26 03:58:22'),('01JW5BVQMKZVSHWT8DV6QXCEEA','01JW5BVQMNSMX93RCH2X2XMW87',15.0000,15.0000,'XDR','XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-27 03:58:25','2025-05-26 03:58:24'),('01JW5BVW6TT1P4QNTQHWXRA1S4','01JW5BVW76V14F9P35KCE3JGHD',10.0000,15.0000,'XDR','XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-27 03:58:30','2025-05-26 03:58:29'),('01JW5BW04ZW4F40Q4TGYY5TGYT','01JW5BW051T4HPMCPZESJT4C1T',16.0000,15.0000,'XDR','XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-26 03:58:36','2025-05-26 03:58:33'),('01JW5BWCKQ2KH1N8F3ENTR2NEV','01JW5BWCKRP6GV07PGYYYCMZ6A',10.0000,16.0000,'XDR','XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-27 03:58:46','2025-05-26 03:58:46');
/*!40000 ALTER TABLE `fxTransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferDuplicateCheck`
--

DROP TABLE IF EXISTS `fxTransferDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferDuplicateCheck` (
  `commitRequestId` varchar(36) NOT NULL,
  `hash` varchar(256) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commitRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferDuplicateCheck`
--

LOCK TABLES `fxTransferDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxTransferDuplicateCheck` DISABLE KEYS */;
INSERT INTO `fxTransferDuplicateCheck` VALUES ('01JW5BVKEH0MC1992B691ZDQ6J','D0EYuq+jAkPTi1ob5GyWfPwSIaio1qRQbpgAtUuU6d8','2025-05-26 03:58:20'),('01JW5BVMRAE19EVSGE8VBSBKT1','6531pukx4+nvIj8m1IKcO7FbQfwWWoK2qsj7xE1dEyk','2025-05-26 03:58:22'),('01JW5BVQMKZVSHWT8DV6QXCEEA','flbb5rgN1KG1Zp0CjLjk3kvySmgcdgIFhONaIVc88+k','2025-05-26 03:58:24'),('01JW5BVW6TT1P4QNTQHWXRA1S4','TnVujB13PKNmM77bM44kZy29XqqJSFk0boz5d9bxjeI','2025-05-26 03:58:29'),('01JW5BW04ZW4F40Q4TGYY5TGYT','IlI2Vo+SUGT1ih9j6+2O/aBTPZweLG146Y2T3ZuuKNc','2025-05-26 03:58:33'),('01JW5BWCKQ2KH1N8F3ENTR2NEV','HJjxwRKIct+VzpiK5IckY9IOwJ85crIhGfX5jHwS4rM','2025-05-26 03:58:46');
/*!40000 ALTER TABLE `fxTransferDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferError`
--

DROP TABLE IF EXISTS `fxTransferError`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferError` (
  `commitRequestId` varchar(36) NOT NULL,
  `fxTransferStateChangeId` bigint unsigned NOT NULL,
  `errorCode` int unsigned NOT NULL,
  `errorDescription` varchar(128) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commitRequestId`),
  KEY `fxtransfererror_fxtransferstatechangeid_index` (`fxTransferStateChangeId`),
  CONSTRAINT `fxtransfererror_fxtransferstatechangeid_foreign` FOREIGN KEY (`fxTransferStateChangeId`) REFERENCES `fxTransferStateChange` (`fxTransferStateChangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferError`
--

LOCK TABLES `fxTransferError` WRITE;
/*!40000 ALTER TABLE `fxTransferError` DISABLE KEYS */;
INSERT INTO `fxTransferError` VALUES ('01JW5BW04ZW4F40Q4TGYY5TGYT',19,3303,'Transfer expired','2025-05-26 03:58:45'),('01JW5BWCKQ2KH1N8F3ENTR2NEV',24,3303,'Transfer expired','2025-05-26 03:59:00');
/*!40000 ALTER TABLE `fxTransferError` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferErrorDuplicateCheck`
--

DROP TABLE IF EXISTS `fxTransferErrorDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferErrorDuplicateCheck` (
  `commitRequestId` varchar(36) NOT NULL,
  `hash` varchar(256) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commitRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferErrorDuplicateCheck`
--

LOCK TABLES `fxTransferErrorDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxTransferErrorDuplicateCheck` DISABLE KEYS */;
INSERT INTO `fxTransferErrorDuplicateCheck` VALUES ('01JW5BVKEH0MC1992B691ZDQ6J','MIGFNCMoi3m9mpPsiIMFcBiTL9I0pGDsVCOE2WkzixI','2025-05-26 03:58:21');
/*!40000 ALTER TABLE `fxTransferErrorDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferExtension`
--

DROP TABLE IF EXISTS `fxTransferExtension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferExtension` (
  `fxTransferExtensionId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `commitRequestId` varchar(36) NOT NULL,
  `isFulfilment` tinyint(1) NOT NULL DEFAULT '0',
  `isError` tinyint(1) NOT NULL DEFAULT '0',
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fxTransferExtensionId`),
  KEY `fxtransferextension_commitrequestid_index` (`commitRequestId`),
  CONSTRAINT `fxtransferextension_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransfer` (`commitRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferExtension`
--

LOCK TABLES `fxTransferExtension` WRITE;
/*!40000 ALTER TABLE `fxTransferExtension` DISABLE KEYS */;
/*!40000 ALTER TABLE `fxTransferExtension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferFulfilment`
--

DROP TABLE IF EXISTS `fxTransferFulfilment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferFulfilment` (
  `commitRequestId` varchar(36) NOT NULL,
  `ilpFulfilment` varchar(256) DEFAULT NULL,
  `completedDate` datetime NOT NULL,
  `isValid` tinyint(1) DEFAULT NULL,
  `settlementWindowId` bigint unsigned DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commitRequestId`),
  UNIQUE KEY `fxtransferfulfilment_commitrequestid_ilpfulfilment_unique` (`commitRequestId`,`ilpFulfilment`),
  KEY `fxtransferfulfilment_commitrequestid_index` (`commitRequestId`),
  KEY `fxtransferfulfilment_settlementwindowid_index` (`settlementWindowId`),
  CONSTRAINT `fxtransferfulfilment_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransfer` (`commitRequestId`),
  CONSTRAINT `fxtransferfulfilment_settlementwindowid_foreign` FOREIGN KEY (`settlementWindowId`) REFERENCES `settlementWindow` (`settlementWindowId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferFulfilment`
--

LOCK TABLES `fxTransferFulfilment` WRITE;
/*!40000 ALTER TABLE `fxTransferFulfilment` DISABLE KEYS */;
INSERT INTO `fxTransferFulfilment` VALUES ('01JW5BVMRAE19EVSGE8VBSBKT1','UNlJ98hZTY_dsw0cAqw4i_UN3v4utt7CZFB4yfLbVFA','2025-05-26 03:58:22',1,1,'2025-05-26 03:58:22'),('01JW5BVW6TT1P4QNTQHWXRA1S4','UNlJ98hZTY_dsw0cAqw4i_UN3v4utt7CZFB4yfLbVFA','2025-05-26 03:58:30',1,1,'2025-05-26 03:58:30'),('01JW5BWCKQ2KH1N8F3ENTR2NEV','UNlJ98hZTY_dsw0cAqw4i_UN3v4utt7CZFB4yfLbVFA','2025-05-26 03:58:47',1,1,'2025-05-26 03:58:47');
/*!40000 ALTER TABLE `fxTransferFulfilment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferFulfilmentDuplicateCheck`
--

DROP TABLE IF EXISTS `fxTransferFulfilmentDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferFulfilmentDuplicateCheck` (
  `commitRequestId` varchar(36) NOT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commitRequestId`),
  KEY `fxtransferfulfilmentduplicatecheck_commitrequestid_index` (`commitRequestId`),
  CONSTRAINT `fxtransferfulfilmentduplicatecheck_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransfer` (`commitRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferFulfilmentDuplicateCheck`
--

LOCK TABLES `fxTransferFulfilmentDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxTransferFulfilmentDuplicateCheck` DISABLE KEYS */;
INSERT INTO `fxTransferFulfilmentDuplicateCheck` VALUES ('01JW5BVMRAE19EVSGE8VBSBKT1','7QG3foa43V+qFtOVptRDKkELyM6kAbFsrqH4P4CzoDk','2025-05-26 03:58:22'),('01JW5BVQMKZVSHWT8DV6QXCEEA','yeVq1d64CiwtxPHci4tFjxIXWydy/6OPEyuFCSK65zA','2025-05-26 03:58:25'),('01JW5BVW6TT1P4QNTQHWXRA1S4','9RMpsWpQOLdHnbhsVzIj1B8sM4en2i1TQNbRFYXNjRI','2025-05-26 03:58:30'),('01JW5BWCKQ2KH1N8F3ENTR2NEV','JodJrBdLbqwMtA9AkCmx5o/B2NA06xJY041CajNVWOM','2025-05-26 03:58:46');
/*!40000 ALTER TABLE `fxTransferFulfilmentDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferParticipant`
--

DROP TABLE IF EXISTS `fxTransferParticipant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferParticipant` (
  `fxTransferParticipantId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `commitRequestId` varchar(36) NOT NULL,
  `participantCurrencyId` int unsigned DEFAULT NULL,
  `transferParticipantRoleTypeId` int unsigned NOT NULL,
  `ledgerEntryTypeId` int unsigned NOT NULL,
  `fxParticipantCurrencyTypeId` int unsigned DEFAULT NULL,
  `amount` decimal(18,4) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `participantId` int unsigned NOT NULL,
  `externalParticipantId` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`fxTransferParticipantId`),
  KEY `fxtransferparticipant_fxparticipantcurrencytypeid_foreign` (`fxParticipantCurrencyTypeId`),
  KEY `fxtransferparticipant_commitrequestid_index` (`commitRequestId`),
  KEY `fxtransferparticipant_participantcurrencyid_index` (`participantCurrencyId`),
  KEY `fxtransferparticipant_transferparticipantroletypeid_index` (`transferParticipantRoleTypeId`),
  KEY `fxtransferparticipant_ledgerentrytypeid_index` (`ledgerEntryTypeId`),
  KEY `fxtransferparticipant_participantid_index` (`participantId`),
  KEY `fxtransferparticipant_externalparticipantid_index` (`externalParticipantId`),
  CONSTRAINT `fxtransferparticipant_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransfer` (`commitRequestId`),
  CONSTRAINT `fxtransferparticipant_externalparticipantid_foreign` FOREIGN KEY (`externalParticipantId`) REFERENCES `externalParticipant` (`externalParticipantId`),
  CONSTRAINT `fxtransferparticipant_fxparticipantcurrencytypeid_foreign` FOREIGN KEY (`fxParticipantCurrencyTypeId`) REFERENCES `fxParticipantCurrencyType` (`fxParticipantCurrencyTypeId`),
  CONSTRAINT `fxtransferparticipant_ledgerentrytypeid_foreign` FOREIGN KEY (`ledgerEntryTypeId`) REFERENCES `ledgerEntryType` (`ledgerEntryTypeId`),
  CONSTRAINT `fxtransferparticipant_participantcurrencyid_foreign` FOREIGN KEY (`participantCurrencyId`) REFERENCES `participantCurrency` (`participantCurrencyId`),
  CONSTRAINT `fxtransferparticipant_transferparticipantroletypeid_foreign` FOREIGN KEY (`transferParticipantRoleTypeId`) REFERENCES `transferParticipantRoleType` (`transferParticipantRoleTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferParticipant`
--

LOCK TABLES `fxTransferParticipant` WRITE;
/*!40000 ALTER TABLE `fxTransferParticipant` DISABLE KEYS */;
INSERT INTO `fxTransferParticipant` VALUES (1,'01JW5BVKEH0MC1992B691ZDQ6J',NULL,6,1,NULL,13.0000,'2025-05-26 03:58:20',13,NULL),(2,'01JW5BVKEH0MC1992B691ZDQ6J',73,7,1,1,-13.0000,'2025-05-26 03:58:20',11,NULL),(3,'01JW5BVKEH0MC1992B691ZDQ6J',75,7,1,2,-15.0000,'2025-05-26 03:58:20',11,NULL),(4,'01JW5BVMRAE19EVSGE8VBSBKT1',NULL,6,1,NULL,10.0000,'2025-05-26 03:58:22',13,NULL),(5,'01JW5BVMRAE19EVSGE8VBSBKT1',73,7,1,1,-10.0000,'2025-05-26 03:58:22',11,NULL),(6,'01JW5BVMRAE19EVSGE8VBSBKT1',75,7,1,2,-15.0000,'2025-05-26 03:58:22',11,NULL),(7,'01JW5BVQMKZVSHWT8DV6QXCEEA',NULL,6,1,NULL,15.0000,'2025-05-26 03:58:24',13,NULL),(8,'01JW5BVQMKZVSHWT8DV6QXCEEA',73,7,1,1,-15.0000,'2025-05-26 03:58:24',11,NULL),(9,'01JW5BVQMKZVSHWT8DV6QXCEEA',75,7,1,2,-15.0000,'2025-05-26 03:58:24',11,NULL),(10,'01JW5BVW6TT1P4QNTQHWXRA1S4',NULL,6,1,NULL,10.0000,'2025-05-26 03:58:29',13,NULL),(11,'01JW5BVW6TT1P4QNTQHWXRA1S4',73,7,1,1,-10.0000,'2025-05-26 03:58:29',11,NULL),(12,'01JW5BVW6TT1P4QNTQHWXRA1S4',75,7,1,2,-15.0000,'2025-05-26 03:58:29',11,NULL),(13,'01JW5BW04ZW4F40Q4TGYY5TGYT',NULL,6,1,NULL,16.0000,'2025-05-26 03:58:33',13,NULL),(14,'01JW5BW04ZW4F40Q4TGYY5TGYT',73,7,1,1,-16.0000,'2025-05-26 03:58:33',11,NULL),(15,'01JW5BW04ZW4F40Q4TGYY5TGYT',75,7,1,2,-15.0000,'2025-05-26 03:58:33',11,NULL),(16,'01JW5BWCKQ2KH1N8F3ENTR2NEV',NULL,6,1,NULL,10.0000,'2025-05-26 03:58:46',13,NULL),(17,'01JW5BWCKQ2KH1N8F3ENTR2NEV',73,7,1,1,-10.0000,'2025-05-26 03:58:46',11,NULL),(18,'01JW5BWCKQ2KH1N8F3ENTR2NEV',75,7,1,2,-16.0000,'2025-05-26 03:58:46',11,NULL);
/*!40000 ALTER TABLE `fxTransferParticipant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferStateChange`
--

DROP TABLE IF EXISTS `fxTransferStateChange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferStateChange` (
  `fxTransferStateChangeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `commitRequestId` varchar(36) NOT NULL,
  `transferStateId` varchar(50) NOT NULL,
  `reason` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fxTransferStateChangeId`),
  KEY `fxtransferstatechange_commitrequestid_index` (`commitRequestId`),
  KEY `fxtransferstatechange_transferstateid_index` (`transferStateId`),
  CONSTRAINT `fxtransferstatechange_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransfer` (`commitRequestId`),
  CONSTRAINT `fxtransferstatechange_transferstateid_foreign` FOREIGN KEY (`transferStateId`) REFERENCES `transferState` (`transferStateId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferStateChange`
--

LOCK TABLES `fxTransferStateChange` WRITE;
/*!40000 ALTER TABLE `fxTransferStateChange` DISABLE KEYS */;
INSERT INTO `fxTransferStateChange` VALUES (1,'01JW5BVKEH0MC1992B691ZDQ6J','RECEIVED_PREPARE',NULL,'2025-05-26 03:58:21'),(2,'01JW5BVKEH0MC1992B691ZDQ6J','RESERVED',NULL,'2025-05-26 03:58:20'),(3,'01JW5BVKEH0MC1992B691ZDQ6J','RECEIVED_ERROR','This is a generic error','2025-05-26 03:58:21'),(4,'01JW5BVKEH0MC1992B691ZDQ6J','ABORTED_ERROR',NULL,'2025-05-26 03:58:21'),(5,'01JW5BVMRAE19EVSGE8VBSBKT1','RECEIVED_PREPARE',NULL,'2025-05-26 03:58:22'),(6,'01JW5BVMRAE19EVSGE8VBSBKT1','RESERVED',NULL,'2025-05-26 03:58:22'),(7,'01JW5BVMRAE19EVSGE8VBSBKT1','RECEIVED_FULFIL_DEPENDENT',NULL,'2025-05-26 03:58:22'),(8,'01JW5BVMRAE19EVSGE8VBSBKT1','ABORTED_ERROR',NULL,'2025-05-26 03:58:23'),(9,'01JW5BVQMKZVSHWT8DV6QXCEEA','RECEIVED_PREPARE',NULL,'2025-05-26 03:58:25'),(10,'01JW5BVQMKZVSHWT8DV6QXCEEA','RESERVED',NULL,'2025-05-26 03:58:25'),(11,'01JW5BVQMKZVSHWT8DV6QXCEEA','RECEIVED_ERROR','Generic validation error - Invalid FX fulfilment','2025-05-26 03:58:25'),(12,'01JW5BVQMKZVSHWT8DV6QXCEEA','ABORTED_ERROR',NULL,'2025-05-26 03:58:25'),(13,'01JW5BVW6TT1P4QNTQHWXRA1S4','RECEIVED_PREPARE',NULL,'2025-05-26 03:58:30'),(14,'01JW5BVW6TT1P4QNTQHWXRA1S4','RESERVED',NULL,'2025-05-26 03:58:29'),(15,'01JW5BVW6TT1P4QNTQHWXRA1S4','RECEIVED_FULFIL_DEPENDENT',NULL,'2025-05-26 03:58:30'),(16,'01JW5BVW6TT1P4QNTQHWXRA1S4','ABORTED_ERROR',NULL,'2025-05-26 03:58:33'),(17,'01JW5BW04ZW4F40Q4TGYY5TGYT','RECEIVED_PREPARE',NULL,'2025-05-26 03:58:34'),(18,'01JW5BW04ZW4F40Q4TGYY5TGYT','RESERVED',NULL,'2025-05-26 03:58:33'),(19,'01JW5BW04ZW4F40Q4TGYY5TGYT','RESERVED_TIMEOUT','Marked for expiration by Timeout Handler','2025-05-26 03:58:45'),(20,'01JW5BW04ZW4F40Q4TGYY5TGYT','EXPIRED_RESERVED','Transfer expired','2025-05-26 03:58:46'),(21,'01JW5BWCKQ2KH1N8F3ENTR2NEV','RECEIVED_PREPARE',NULL,'2025-05-26 03:58:46'),(22,'01JW5BWCKQ2KH1N8F3ENTR2NEV','RESERVED',NULL,'2025-05-26 03:58:46'),(23,'01JW5BWCKQ2KH1N8F3ENTR2NEV','RECEIVED_FULFIL_DEPENDENT',NULL,'2025-05-26 03:58:47'),(24,'01JW5BWCKQ2KH1N8F3ENTR2NEV','RESERVED_TIMEOUT','Marked for expiration by Timeout Handler','2025-05-26 03:59:00'),(25,'01JW5BWCKQ2KH1N8F3ENTR2NEV','EXPIRED_RESERVED','Transfer expired','2025-05-26 03:59:00');
/*!40000 ALTER TABLE `fxTransferStateChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferTimeout`
--

DROP TABLE IF EXISTS `fxTransferTimeout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferTimeout` (
  `fxTransferTimeoutId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `commitRequestId` varchar(36) NOT NULL,
  `expirationDate` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fxTransferTimeoutId`),
  UNIQUE KEY `fxtransfertimeout_commitrequestid_unique` (`commitRequestId`),
  KEY `fxtransfertimeout_expirationdate_index` (`expirationDate`),
  CONSTRAINT `fxtransfertimeout_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransfer` (`commitRequestId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferTimeout`
--

LOCK TABLES `fxTransferTimeout` WRITE;
/*!40000 ALTER TABLE `fxTransferTimeout` DISABLE KEYS */;
/*!40000 ALTER TABLE `fxTransferTimeout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxTransferType`
--

DROP TABLE IF EXISTS `fxTransferType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxTransferType` (
  `fxTransferTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fxTransferTypeId`),
  UNIQUE KEY `fxtransfertype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferType`
--

LOCK TABLES `fxTransferType` WRITE;
/*!40000 ALTER TABLE `fxTransferType` DISABLE KEYS */;
INSERT INTO `fxTransferType` VALUES (1,'PAYER_CONVERSION','Payer side currency conversion','2025-05-23 13:49:04'),(2,'PAYEE_CONVERSION','Payee side currency conversion','2025-05-23 13:49:04');
/*!40000 ALTER TABLE `fxTransferType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fxWatchList`
--

DROP TABLE IF EXISTS `fxWatchList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fxWatchList` (
  `fxWatchListId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `commitRequestId` varchar(36) NOT NULL,
  `determiningTransferId` varchar(36) NOT NULL,
  `fxTransferTypeId` int unsigned NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fxWatchListId`),
  KEY `fxwatchlist_fxtransfertypeid_foreign` (`fxTransferTypeId`),
  KEY `fxwatchlist_commitrequestid_index` (`commitRequestId`),
  KEY `fxwatchlist_determiningtransferid_index` (`determiningTransferId`),
  CONSTRAINT `fxwatchlist_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransfer` (`commitRequestId`),
  CONSTRAINT `fxwatchlist_fxtransfertypeid_foreign` FOREIGN KEY (`fxTransferTypeId`) REFERENCES `fxTransferType` (`fxTransferTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxWatchList`
--

LOCK TABLES `fxWatchList` WRITE;
/*!40000 ALTER TABLE `fxWatchList` DISABLE KEYS */;
INSERT INTO `fxWatchList` VALUES (1,'01JW5BVKEH0MC1992B691ZDQ6J','01JW5BVKEJRWBQTS5DK18ZQRT6',1,'2025-05-26 03:58:20'),(2,'01JW5BVMRAE19EVSGE8VBSBKT1','01JW5BVMRC2MSVZQBDBG1SWFWX',1,'2025-05-26 03:58:22'),(3,'01JW5BVQMKZVSHWT8DV6QXCEEA','01JW5BVQMNSMX93RCH2X2XMW87',1,'2025-05-26 03:58:24'),(4,'01JW5BVW6TT1P4QNTQHWXRA1S4','01JW5BVW76V14F9P35KCE3JGHD',1,'2025-05-26 03:58:29'),(5,'01JW5BW04ZW4F40Q4TGYY5TGYT','01JW5BW051T4HPMCPZESJT4C1T',1,'2025-05-26 03:58:33'),(6,'01JW5BWCKQ2KH1N8F3ENTR2NEV','01JW5BWCKRP6GV07PGYYYCMZ6A',1,'2025-05-26 03:58:46');
/*!40000 ALTER TABLE `fxWatchList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geoCode`
--

DROP TABLE IF EXISTS `geoCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geoCode` (
  `geoCodeId` int unsigned NOT NULL AUTO_INCREMENT,
  `quotePartyId` bigint unsigned NOT NULL COMMENT 'Optionally the GeoCode for the Payer/Payee may have been provided. If the Quote Response has the GeoCode for the Payee, an additional row is added',
  `latitude` varchar(50) NOT NULL COMMENT 'Latitude of the initiating Party',
  `longitude` varchar(50) NOT NULL COMMENT 'Longitude of the initiating Party',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`geoCodeId`),
  KEY `geocode_quotepartyid_foreign` (`quotePartyId`),
  CONSTRAINT `geocode_quotepartyid_foreign` FOREIGN KEY (`quotePartyId`) REFERENCES `quoteParty` (`quotePartyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geoCode`
--

LOCK TABLES `geoCode` WRITE;
/*!40000 ALTER TABLE `geoCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `geoCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilpPacket`
--

DROP TABLE IF EXISTS `ilpPacket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilpPacket` (
  `transferId` varchar(36) NOT NULL,
  `value` text NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferId`),
  CONSTRAINT `ilppacket_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transfer` (`transferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilpPacket`
--

LOCK TABLES `ilpPacket` WRITE;
/*!40000 ALTER TABLE `ilpPacket` DISABLE KEYS */;
INSERT INTO `ilpPacket` VALUES ('01JW5BE5J7ZHSSGFJBHWDMWAEJ','AYIDNAAAAAAAD0JAHWcucGF5ZWVmc3AubXNpc2RuLjI3NzEzODAzOTEyggMKZXlKeGRXOTBaVWxrSWpvaU1ERktWelZDUlRWS05EWXhRazQ0V1VZelVGTlRTazFYTmpZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWelZDUlRWS04xcElVMU5IUmtwQ1NGZEVUVmRCUlVvaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtOUFRsTlZUVVZTSW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZTd2ljR1Z5YzI5dVlXeEpibVp2SWpwN0ltTnZiWEJzWlhoT1lXMWxJanA3SW1acGNuTjBUbUZ0WlNJNklrWnBjbk4wYm1GdFpTMVVaWE4wSWl3aWJHRnpkRTVoYldVaU9pSk1ZWE4wYm1GdFpTMVVaWE4wSW4wc0ltUmhkR1ZQWmtKcGNuUm9Jam9pTVRrNE5DMHdNUzB3TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpaVU1ETTZOVEk2TURFdU1qQXdXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQA','2025-05-26 03:51:02'),('01JW5BVMRC2MSVZQBDBG1SWFWX','AYIDBQAAAAAAACcQJGcucGF5ZWVmc3AubXNpc2RuLnt7cmVjZWl2ZXJtc2lzZG59fYIC1GV5SjBjbUZ1YzJGamRHbHZia2xrSWpvaVptVXhNREU0Wm1NdE1EaGxZeTAwWWpJM0xUbGpZalF0TnpjMk9URTFNR00zT1dKaklpd2ljWFZ2ZEdWSlpDSTZJbVpsTVRBeE9HWmpMVEE0WldNdE5HSXlOeTA1WTJJMExUYzNOamt4TlRCak56bGlZeUlzSW5CaGVXVmxJanA3SW5CaGNuUjVTV1JKYm1adklqcDdJbkJoY25SNVNXUlVlWEJsSWpvaVRWTkpVMFJPSWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaWUzdHlaV05sYVhabGNrMVRTVk5FVG4xOUlpd2labk53U1dRaU9pSndZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lKTlUwbFRSRTRpTENKd1lYSjBlVWxrWlc1MGFXWnBaWElpT2lJeU56Y3hNemd3TXprd05TSXNJbVp6Y0Vsa0lqb2ljR0Y1WlhKbWMzQWlmU3dpY0dWeWMyOXVZV3hKYm1adklqcDdJbU52YlhCc1pYaE9ZVzFsSWpwN0ltWnBjbk4wVG1GdFpTSTZJazFoZEhNaUxDSnNZWE4wVG1GdFpTSTZJa2hoWjIxaGJpSjlMQ0prWVhSbFQyWkNhWEowYUNJNklqRTVPRE10TVRBdE1qVWlmWDBzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxWVFJDSjlMQ0owY21GdWMyRmpkR2x2YmxSNWNHVWlPbnNpYzJObGJtRnlhVzhpT2lKVVVrRk9VMFpGVWlJc0ltbHVhWFJwWVhSdmNpSTZJbEJCV1VWU0lpd2lhVzVwZEdsaGRHOXlWSGx3WlNJNklrTlBUbE5WVFVWU0luMTkA','2025-05-26 03:58:22'),('01JW5BVQMNSMX93RCH2X2XMW87','AYIDBQAAAAAAACcQJGcucGF5ZWVmc3AubXNpc2RuLnt7cmVjZWl2ZXJtc2lzZG59fYIC1GV5SjBjbUZ1YzJGamRHbHZia2xrSWpvaVptVXhNREU0Wm1NdE1EaGxZeTAwWWpJM0xUbGpZalF0TnpjMk9URTFNR00zT1dKaklpd2ljWFZ2ZEdWSlpDSTZJbVpsTVRBeE9HWmpMVEE0WldNdE5HSXlOeTA1WTJJMExUYzNOamt4TlRCak56bGlZeUlzSW5CaGVXVmxJanA3SW5CaGNuUjVTV1JKYm1adklqcDdJbkJoY25SNVNXUlVlWEJsSWpvaVRWTkpVMFJPSWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaWUzdHlaV05sYVhabGNrMVRTVk5FVG4xOUlpd2labk53U1dRaU9pSndZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lKTlUwbFRSRTRpTENKd1lYSjBlVWxrWlc1MGFXWnBaWElpT2lJeU56Y3hNemd3TXprd05TSXNJbVp6Y0Vsa0lqb2ljR0Y1WlhKbWMzQWlmU3dpY0dWeWMyOXVZV3hKYm1adklqcDdJbU52YlhCc1pYaE9ZVzFsSWpwN0ltWnBjbk4wVG1GdFpTSTZJazFoZEhNaUxDSnNZWE4wVG1GdFpTSTZJa2hoWjIxaGJpSjlMQ0prWVhSbFQyWkNhWEowYUNJNklqRTVPRE10TVRBdE1qVWlmWDBzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxWVFJDSjlMQ0owY21GdWMyRmpkR2x2YmxSNWNHVWlPbnNpYzJObGJtRnlhVzhpT2lKVVVrRk9VMFpGVWlJc0ltbHVhWFJwWVhSdmNpSTZJbEJCV1VWU0lpd2lhVzVwZEdsaGRHOXlWSGx3WlNJNklrTlBUbE5WVFVWU0luMTkA','2025-05-26 03:58:25'),('01JW5BVW76V14F9P35KCE3JGHD','AYIDBQAAAAAAACcQJGcucGF5ZWVmc3AubXNpc2RuLnt7cmVjZWl2ZXJtc2lzZG59fYIC1GV5SjBjbUZ1YzJGamRHbHZia2xrSWpvaVptVXhNREU0Wm1NdE1EaGxZeTAwWWpJM0xUbGpZalF0TnpjMk9URTFNR00zT1dKaklpd2ljWFZ2ZEdWSlpDSTZJbVpsTVRBeE9HWmpMVEE0WldNdE5HSXlOeTA1WTJJMExUYzNOamt4TlRCak56bGlZeUlzSW5CaGVXVmxJanA3SW5CaGNuUjVTV1JKYm1adklqcDdJbkJoY25SNVNXUlVlWEJsSWpvaVRWTkpVMFJPSWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaWUzdHlaV05sYVhabGNrMVRTVk5FVG4xOUlpd2labk53U1dRaU9pSndZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lKTlUwbFRSRTRpTENKd1lYSjBlVWxrWlc1MGFXWnBaWElpT2lJeU56Y3hNemd3TXprd05TSXNJbVp6Y0Vsa0lqb2ljR0Y1WlhKbWMzQWlmU3dpY0dWeWMyOXVZV3hKYm1adklqcDdJbU52YlhCc1pYaE9ZVzFsSWpwN0ltWnBjbk4wVG1GdFpTSTZJazFoZEhNaUxDSnNZWE4wVG1GdFpTSTZJa2hoWjIxaGJpSjlMQ0prWVhSbFQyWkNhWEowYUNJNklqRTVPRE10TVRBdE1qVWlmWDBzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxWVFJDSjlMQ0owY21GdWMyRmpkR2x2YmxSNWNHVWlPbnNpYzJObGJtRnlhVzhpT2lKVVVrRk9VMFpGVWlJc0ltbHVhWFJwWVhSdmNpSTZJbEJCV1VWU0lpd2lhVzVwZEdsaGRHOXlWSGx3WlNJNklrTlBUbE5WVFVWU0luMTkA','2025-05-26 03:58:30'),('01JW5BWCKRP6GV07PGYYYCMZ6A','AYIDBQAAAAAAACcQJGcucGF5ZWVmc3AubXNpc2RuLnt7cmVjZWl2ZXJtc2lzZG59fYIC1GV5SjBjbUZ1YzJGamRHbHZia2xrSWpvaVptVXhNREU0Wm1NdE1EaGxZeTAwWWpJM0xUbGpZalF0TnpjMk9URTFNR00zT1dKaklpd2ljWFZ2ZEdWSlpDSTZJbVpsTVRBeE9HWmpMVEE0WldNdE5HSXlOeTA1WTJJMExUYzNOamt4TlRCak56bGlZeUlzSW5CaGVXVmxJanA3SW5CaGNuUjVTV1JKYm1adklqcDdJbkJoY25SNVNXUlVlWEJsSWpvaVRWTkpVMFJPSWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaWUzdHlaV05sYVhabGNrMVRTVk5FVG4xOUlpd2labk53U1dRaU9pSndZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lKTlUwbFRSRTRpTENKd1lYSjBlVWxrWlc1MGFXWnBaWElpT2lJeU56Y3hNemd3TXprd05TSXNJbVp6Y0Vsa0lqb2ljR0Y1WlhKbWMzQWlmU3dpY0dWeWMyOXVZV3hKYm1adklqcDdJbU52YlhCc1pYaE9ZVzFsSWpwN0ltWnBjbk4wVG1GdFpTSTZJazFoZEhNaUxDSnNZWE4wVG1GdFpTSTZJa2hoWjIxaGJpSjlMQ0prWVhSbFQyWkNhWEowYUNJNklqRTVPRE10TVRBdE1qVWlmWDBzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxWVFJDSjlMQ0owY21GdWMyRmpkR2x2YmxSNWNHVWlPbnNpYzJObGJtRnlhVzhpT2lKVVVrRk9VMFpGVWlJc0ltbHVhWFJwWVhSdmNpSTZJbEJCV1VWU0lpd2lhVzVwZEdsaGRHOXlWSGx3WlNJNklrTlBUbE5WVFVWU0luMTkA','2025-05-26 03:58:46');
/*!40000 ALTER TABLE `ilpPacket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledgerAccountType`
--

DROP TABLE IF EXISTS `ledgerAccountType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ledgerAccountType` (
  `ledgerAccountTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isSettleable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ledgerAccountTypeId`),
  UNIQUE KEY `ledgeraccounttype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledgerAccountType`
--

LOCK TABLES `ledgerAccountType` WRITE;
/*!40000 ALTER TABLE `ledgerAccountType` DISABLE KEYS */;
INSERT INTO `ledgerAccountType` VALUES (1,'POSITION','Typical accounts from which a DFSP provisions transfers',1,'2025-05-23 13:49:04',1),(2,'SETTLEMENT','Reflects the individual DFSP Settlement Accounts as held at the Settlement Bank',1,'2025-05-23 13:49:04',0),(3,'HUB_RECONCILIATION','A single account for each currency with which the hub operates. The account is \"held\" by the Participant representing the hub in the switch',1,'2025-05-23 13:49:04',0),(4,'HUB_MULTILATERAL_SETTLEMENT','A single account for each currency with which the hub operates. The account is \"held\" by the Participant representing the hub in the switch',1,'2025-05-23 13:49:04',0),(5,'INTERCHANGE_FEE',NULL,1,'2025-05-23 13:49:04',1),(6,'INTERCHANGE_FEE_SETTLEMENT',NULL,1,'2025-05-23 13:49:04',0);
/*!40000 ALTER TABLE `ledgerAccountType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ledgerEntryType`
--

DROP TABLE IF EXISTS `ledgerEntryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ledgerEntryType` (
  `ledgerEntryTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ledgerAccountTypeId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ledgerEntryTypeId`),
  UNIQUE KEY `ledgerentrytype_name_unique` (`name`),
  KEY `ledgerentrytype_ledgeraccounttypeid_foreign` (`ledgerAccountTypeId`),
  CONSTRAINT `ledgerentrytype_ledgeraccounttypeid_foreign` FOREIGN KEY (`ledgerAccountTypeId`) REFERENCES `ledgerAccountType` (`ledgerAccountTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledgerEntryType`
--

LOCK TABLES `ledgerEntryType` WRITE;
/*!40000 ALTER TABLE `ledgerEntryType` DISABLE KEYS */;
INSERT INTO `ledgerEntryType` VALUES (1,'PRINCIPLE_VALUE','The principle amount to be settled between parties, derived on quotes between DFSPs',1,'2025-05-23 13:49:04',1),(2,'INTERCHANGE_FEE','Fees to be paid between DFSP',1,'2025-05-23 13:49:04',5),(3,'HUB_FEE','Fees to be paid from the DFSPs to the Hub Operator',1,'2025-05-23 13:49:04',NULL),(4,'POSITION_DEPOSIT','Used when increasing Net Debit Cap',1,'2025-05-23 13:49:04',NULL),(5,'POSITION_WITHDRAWAL','Used when decreasing Net Debit Cap',1,'2025-05-23 13:49:04',NULL),(6,'SETTLEMENT_NET_RECIPIENT','Participant is settlement net recipient',1,'2025-05-23 13:49:04',NULL),(7,'SETTLEMENT_NET_SENDER','Participant is settlement net sender',1,'2025-05-23 13:49:04',NULL),(8,'SETTLEMENT_NET_ZERO','Participant is settlement net sender',1,'2025-05-23 13:49:04',NULL),(9,'RECORD_FUNDS_IN','Settlement account funds in',1,'2025-05-23 13:49:04',NULL),(10,'RECORD_FUNDS_OUT','Settlement account funds out',1,'2025-05-23 13:49:04',NULL);
/*!40000 ALTER TABLE `ledgerEntryType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migration` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES (1,'100100_event.js',1,'2025-05-23 13:48:52'),(2,'110100_contactType.js',1,'2025-05-23 13:48:52'),(3,'110101_contactType-indexes.js',1,'2025-05-23 13:48:52'),(4,'110200_currency.js',1,'2025-05-23 13:48:52'),(5,'110201_currency-scale.js',1,'2025-05-23 13:48:52'),(6,'110300_endpointType.js',1,'2025-05-23 13:48:52'),(7,'110301_endpointType-indexes.js',1,'2025-05-23 13:48:52'),(8,'110400_ledgerEntryType.js',1,'2025-05-23 13:48:52'),(9,'110401_ledgerEntryType-indexes.js',1,'2025-05-23 13:48:52'),(10,'110450_ledgerAccountType.js',1,'2025-05-23 13:48:52'),(11,'110451_ledgerAccountType-indexes.js',1,'2025-05-23 13:48:52'),(12,'110500_participantLimitType.js',1,'2025-05-23 13:48:52'),(13,'110501_participantLimitType-indexes.js',1,'2025-05-23 13:48:52'),(14,'110600_transferParticipantRoleType.js',1,'2025-05-23 13:48:52'),(15,'110601_transferParticipantRoleType-indexes.js',1,'2025-05-23 13:48:52'),(16,'110700_transferState.js',1,'2025-05-23 13:48:52'),(17,'110800_settlementWindowState.js',1,'2025-05-23 13:48:52'),(18,'110900_settlementState.js',1,'2025-05-23 13:48:52'),(19,'111000_amountType.js',1,'2025-05-23 13:48:52'),(20,'111001_amountType-indexes.js',1,'2025-05-23 13:48:53'),(21,'111100_balanceOfPayments.js',1,'2025-05-23 13:48:53'),(22,'111101_balanceOfPayments-indexes.js',1,'2025-05-23 13:48:53'),(23,'111200_partyIdentifierType.js',1,'2025-05-23 13:48:53'),(24,'111201_partyIdentifierType-indexes.js',1,'2025-05-23 13:48:53'),(25,'111300_partyType.js',1,'2025-05-23 13:48:53'),(26,'111301_partyType-indexes.js',1,'2025-05-23 13:48:53'),(27,'111400_quoteDuplicateCheck.js',1,'2025-05-23 13:48:53'),(28,'111500_transactionInitiator.js',1,'2025-05-23 13:48:53'),(29,'111501_transactionInitiator-indexes.js',1,'2025-05-23 13:48:53'),(30,'111600_transactionInitiatorType.js',1,'2025-05-23 13:48:53'),(31,'111601_transactionInitiatorType-indexes.js',1,'2025-05-23 13:48:53'),(32,'111700_settlementDelay.js',1,'2025-05-23 13:48:53'),(33,'111701_settlementDelay-indexes.js',1,'2025-05-23 13:48:53'),(34,'111800_settlementInterchange.js',1,'2025-05-23 13:48:53'),(35,'111801_settlementInterchange-indexes.js',1,'2025-05-23 13:48:53'),(36,'111900_settlementGranularity.js',1,'2025-05-23 13:48:53'),(37,'111901_settlementGranularity-indexes.js',1,'2025-05-23 13:48:53'),(38,'112000_bulkTransferState.js',1,'2025-05-23 13:48:53'),(39,'112100_bulkProcessingState.js',1,'2025-05-23 13:48:53'),(40,'112101_bulkProcessingState-indexes.js',1,'2025-05-23 13:48:53'),(41,'200100_participant.js',1,'2025-05-23 13:48:53'),(42,'200101_participant-indexes.js',1,'2025-05-23 13:48:53'),(43,'200200_participantContact.js',1,'2025-05-23 13:48:53'),(44,'200201_participantContact-indexes.js',1,'2025-05-23 13:48:53'),(45,'200300_participantEndpoint.js',1,'2025-05-23 13:48:53'),(46,'200301_participantEndpoint-indexes.js',1,'2025-05-23 13:48:53'),(47,'200400_participantParty.js',1,'2025-05-23 13:48:53'),(48,'200401_participantParty-indexes.js',1,'2025-05-23 13:48:53'),(49,'200600_token.js',1,'2025-05-23 13:48:53'),(50,'200601_token-indexes.js',1,'2025-05-23 13:48:53'),(51,'300100_transferDuplicateCheck.js',1,'2025-05-23 13:48:53'),(52,'300150_bulkTransferDuplicateCheck.js',1,'2025-05-23 13:48:53'),(53,'300200_transfer.js',1,'2025-05-23 13:48:53'),(54,'300201_transfer-indexes.js',1,'2025-05-23 13:48:53'),(55,'300202_transfer-decimal184.js',1,'2025-05-23 13:48:53'),(56,'300250_bulkTransfer.js',1,'2025-05-23 13:48:53'),(57,'300251_bulkTransfer-indexes.js',1,'2025-05-23 13:48:53'),(58,'300275_bulkTransferAssociation.js',1,'2025-05-23 13:48:54'),(59,'300276_bulkTransferAssociation-indexes.js',1,'2025-05-23 13:48:54'),(60,'300300_ilpPacket.js',1,'2025-05-23 13:48:54'),(61,'300400_transferStateChange.js',1,'2025-05-23 13:48:54'),(62,'300401_transferStateChange-indexes.js',1,'2025-05-23 13:48:54'),(63,'300450_bulkTransferStateChange.js',1,'2025-05-23 13:48:54'),(64,'300451_bulkTransferStateChange-indexes.js',1,'2025-05-23 13:48:54'),(65,'300500_segment.js',1,'2025-05-23 13:48:54'),(66,'300501_segment-indexes.js',1,'2025-05-23 13:48:54'),(67,'310100_participantCurrency.js',1,'2025-05-23 13:48:54'),(68,'310101_participantCurrency-indexes.js',1,'2025-05-23 13:48:54'),(69,'310200_transferParticipant.js',1,'2025-05-23 13:48:54'),(70,'310201_transferParticipant-indexes.js',1,'2025-05-23 13:48:55'),(71,'310202_transferParticipant-decimal184.js',1,'2025-05-23 13:48:55'),(72,'310203_transferParticipant-indexes.js',1,'2025-05-23 13:48:55'),(73,'310204_transferParticipant-participantId.js',1,'2025-05-23 13:48:55'),(74,'310300_participantPosition.js',1,'2025-05-23 13:48:55'),(75,'310301_participantPosition-indexes.js',1,'2025-05-23 13:48:55'),(76,'310302_participantPosition-decimal184.js',1,'2025-05-23 13:48:55'),(77,'310400_participantPositionChange.js',1,'2025-05-23 13:48:55'),(78,'310401_participantPositionChange-indexes.js',1,'2025-05-23 13:48:55'),(79,'310402_participantPositionChange-decimal184.js',1,'2025-05-23 13:48:55'),(80,'310403_participantPositionChange-participantCurrencyId.js',1,'2025-05-23 13:48:55'),(81,'310404_participantPositionChange-change.js',1,'2025-05-23 13:48:55'),(82,'310500_participantLimit.js',1,'2025-05-23 13:48:55'),(83,'310501_participantLimit-indexes.js',1,'2025-05-23 13:48:55'),(84,'310502_participantLimit-decimal184.js',1,'2025-05-23 13:48:55'),(85,'310503_participantLimit-indexes-composite.js',1,'2025-05-23 13:48:55'),(86,'400100_settlementWindow.js',1,'2025-05-23 13:48:55'),(87,'400200_settlement.js',1,'2025-05-23 13:48:55'),(88,'400300_settlementSettlementWindow.js',1,'2025-05-23 13:48:55'),(89,'400301_settlementSettlementWindow-indexes.js',1,'2025-05-23 13:48:55'),(90,'400400_settlementWindowStateChange.js',1,'2025-05-23 13:48:55'),(91,'400401_settlmentWindowStateChange-indexes.js',1,'2025-05-23 13:48:55'),(92,'400500_settlementTransferParticipant.js',1,'2025-05-23 13:48:56'),(93,'400501_settlementTransferParticipant-indexes.js',1,'2025-05-23 13:48:56'),(94,'400502_settlementTransferParticipant-decimal184.js',1,'2025-05-23 13:48:56'),(95,'400600_settlementParticipantCurrency.js',1,'2025-05-23 13:48:56'),(96,'400601_settlementParticipantCurrency-indexes.js',1,'2025-05-23 13:48:56'),(97,'400602_settlementParticipantCurrency-decimal184.js',1,'2025-05-23 13:48:56'),(98,'400700_settlementParticipantCurrencyStateChange.js',1,'2025-05-23 13:48:56'),(99,'400701_settlementParticipantCurrencyStateChange-indexes.js',1,'2025-05-23 13:48:56'),(100,'400800_settlementStateChange.js',1,'2025-05-23 13:48:56'),(101,'400801_settlementStateChange-indexes.js',1,'2025-05-23 13:48:56'),(102,'400900_settlementWindowContent.js',1,'2025-05-23 13:48:56'),(103,'401000_settlementWindowContentStateChange.js',1,'2025-05-23 13:48:56'),(104,'401001_settlementWindowContentStateChange-indexes.js',1,'2025-05-23 13:48:56'),(105,'401002_settlementWindowContent-indexes.js',1,'2025-05-23 13:48:56'),(106,'401200_settlementContentAggregation.js',1,'2025-05-23 13:48:57'),(107,'401201_settlementContentAggregation-indexes.js',1,'2025-05-23 13:48:57'),(108,'401300_settlementModel.js',1,'2025-05-23 13:48:57'),(109,'401301_settlementModel-indexes.js',1,'2025-05-23 13:48:57'),(110,'410100_transferFulfilmentDuplicateCheck.js',1,'2025-05-23 13:48:57'),(111,'410101_transferFulfilmentDuplicateCheck-indexes.js',1,'2025-05-23 13:48:57'),(112,'410102_transferFulfilmentDuplicateCheck-dropForeignTransferId.js',1,'2025-05-23 13:48:57'),(113,'410103_transferFulfilmentDuplicateCheck-hashNullable.js',1,'2025-05-23 13:48:57'),(114,'410200_transferFulfilment.js',1,'2025-05-23 13:48:57'),(115,'410201_transferFulfilment-indexes.js',1,'2025-05-23 13:48:57'),(116,'410202_transferFulfilment-ilpFulfilment.js',1,'2025-05-23 13:48:57'),(117,'410203_transferFulfilment-foreignTransferFulfilmentId.js',1,'2025-05-23 13:48:57'),(118,'410240_bulkTransferFulfilmentDuplicateCheck.js',1,'2025-05-23 13:48:57'),(119,'410250_bulkTransferFulfilment.js',1,'2025-05-23 13:48:57'),(120,'410300_transferExtension.js',1,'2025-05-23 13:48:57'),(121,'410301_transferExtension-indexes.js',1,'2025-05-23 13:48:57'),(122,'410302_transferExtension-transferErrorId.js',1,'2025-05-23 13:48:57'),(123,'410350_bulkTransferExtension.js',1,'2025-05-23 13:48:57'),(124,'410351_bulkTransferExtension-indexes.js',1,'2025-05-23 13:48:57'),(125,'410400_transferTimeout.js',1,'2025-05-23 13:48:58'),(126,'410401_transferTimeout-indexes.js',1,'2025-05-23 13:48:58'),(127,'410450_transferErrorDuplicateCheck.js',1,'2025-05-23 13:48:58'),(128,'410500_transferError.js',1,'2025-05-23 13:48:58'),(129,'410501_transferError-indexes.js',1,'2025-05-23 13:48:58'),(130,'410502_transferError-foreignTransferErrorDuplicateCheckId.js',1,'2025-05-23 13:48:58'),(131,'410550_bulkTransferError.js',1,'2025-05-23 13:48:58'),(132,'410551_bulkTransferError-indexes.js',1,'2025-05-23 13:48:58'),(133,'410600_expiringTransfer.js',1,'2025-05-23 13:48:58'),(134,'410601_expiringTransfer-indexes.js',1,'2025-05-23 13:48:58'),(135,'500100_transactionReference.js',1,'2025-05-23 13:48:58'),(136,'500101_transactionReference-indexes.js',1,'2025-05-23 13:48:58'),(137,'500200_transactionScenario.js',1,'2025-05-23 13:48:58'),(138,'500201_transactionScenario-indexes.js',1,'2025-05-23 13:48:58'),(139,'500300_transactionSubScenario.js',1,'2025-05-23 13:48:58'),(140,'500400_quote.js',1,'2025-05-23 13:48:58'),(141,'500401_quote-hotfix-2719.js',1,'2025-05-23 13:48:58'),(142,'500500_quoteParty.js',1,'2025-05-23 13:48:59'),(143,'500501_feature-fixSubIdRef.js',1,'2025-05-23 13:48:59'),(144,'500600_party.js',1,'2025-05-23 13:48:59'),(145,'500601_party-2480.js',1,'2025-05-23 13:48:59'),(146,'500700_quoteResponse.js',1,'2025-05-23 13:48:59'),(147,'500800_quoteResponseIlpPacket.js',1,'2025-05-23 13:48:59'),(148,'500900_geoCode.js',1,'2025-05-23 13:48:59'),(149,'501000_quoteExtension.js',1,'2025-05-23 13:48:59'),(150,'501001_quoteExtension-quote-service-174.js',1,'2025-05-23 13:48:59'),(151,'501002_quoteExtension-2522.js',1,'2025-05-23 13:48:59'),(152,'501100_quoteResponseDuplicateCheck.js',1,'2025-05-23 13:48:59'),(153,'501200_quoteError.js',1,'2025-05-23 13:49:00'),(154,'501300_transferRules.js',1,'2025-05-23 13:49:00'),(155,'600010_fxTransferType.js',1,'2025-05-23 13:49:00'),(156,'600011_fxTransferType-indexes.js',1,'2025-05-23 13:49:00'),(157,'600012_fxParticipantCurrencyType.js',1,'2025-05-23 13:49:00'),(158,'600013_fxParticipantCurrencyType-indexes.js',1,'2025-05-23 13:49:00'),(159,'600100_fxTransferDuplicateCheck.js',1,'2025-05-23 13:49:00'),(160,'600110_fxTransferErrorDuplicateCheck.js.js',1,'2025-05-23 13:49:00'),(161,'600200_fxTransfer.js',1,'2025-05-23 13:49:00'),(162,'600201_fxTransfer-indexes.js',1,'2025-05-23 13:49:00'),(163,'600400_fxTransferStateChange.js',1,'2025-05-23 13:49:00'),(164,'600401_fxTransferStateChange-indexes.js',1,'2025-05-23 13:49:00'),(165,'600501_fxWatchList.js',1,'2025-05-23 13:49:00'),(166,'600502_fxWatchList-indexes.js',1,'2025-05-23 13:49:00'),(167,'600600_fxTransferFulfilmentDuplicateCheck.js',1,'2025-05-23 13:49:00'),(168,'600601_fxTransferFulfilmentDuplicateCheck-indexes.js',1,'2025-05-23 13:49:00'),(169,'600700_fxTransferFulfilment.js',1,'2025-05-23 13:49:00'),(170,'600701_fxTransferFulfilment-indexes.js',1,'2025-05-23 13:49:00'),(171,'600800_fxTransferExtension.js',1,'2025-05-23 13:49:00'),(172,'601400_fxTransferTimeout.js',1,'2025-05-23 13:49:00'),(173,'601401_fxTransferTimeout-indexes.js',1,'2025-05-23 13:49:00'),(174,'601500_fxTransferError.js',1,'2025-05-23 13:49:00'),(175,'601501_fxTransferError-indexes.js',1,'2025-05-23 13:49:00'),(176,'610200_fxTransferParticipant.js',1,'2025-05-23 13:49:00'),(177,'610201_fxTransferParticipant-indexes.js',1,'2025-05-23 13:49:00'),(178,'610202_fxTransferParticipant-participantId.js',1,'2025-05-23 13:49:00'),(179,'610403_participantPositionChange-fxTransfer.js',1,'2025-05-23 13:49:01'),(180,'800100_quotePartyView.js',1,'2025-05-23 13:49:01'),(181,'800101_feature-fixSubIdRef.js',1,'2025-05-23 13:49:01'),(182,'800200_quoteView.js',1,'2025-05-23 13:49:01'),(183,'800300_quoteResponseView.js',1,'2025-05-23 13:49:01'),(184,'900100_foreign-keys.js',1,'2025-05-23 13:49:01'),(185,'900101_foreign-keys.js',1,'2025-05-23 13:49:01'),(186,'910100_feature904DDL.js',1,'2025-05-23 13:49:01'),(187,'910101_feature904DataMigration.js',1,'2025-05-23 13:49:01'),(188,'910102_feature949DataMigration.js',1,'2025-05-23 13:49:01'),(189,'910102_hotfix954.js',1,'2025-05-23 13:49:01'),(190,'910103_feature1093SettlementByCurrency.js',1,'2025-05-23 13:49:01'),(191,'940100_quotePartyIdInfoExtension.js',1,'2025-05-23 13:49:01'),(192,'940101_quotePartyIdInfoExtension-2522.js',1,'2025-05-23 13:49:01'),(193,'950100_settlementContentAggregation-decimal184.js',1,'2025-05-23 13:49:01'),(194,'950101_transferParticipantStateChange.js',1,'2025-05-23 13:49:01'),(195,'950102_settlementModel-adjustPosition.js',1,'2025-05-23 13:49:01'),(196,'950103_dropTransferParticipantStateChange.js',1,'2025-05-23 13:49:01'),(197,'950104_settlementModel-settlementAccountTypeId.js',1,'2025-05-23 13:49:02'),(198,'950106_unique_settlement_model_ledger_account_currency.js',1,'2025-05-23 13:49:02'),(199,'950107_settlementWindowContent_foreign_settlementModel.js',1,'2025-05-23 13:49:02'),(200,'950108_participantProxy.js',1,'2025-05-23 13:49:02'),(201,'950109_fxQuote.js',1,'2025-05-23 13:49:02'),(202,'950110_fxQuoteResponse.js',1,'2025-05-23 13:49:02'),(203,'950111_fxQuoteError.js',1,'2025-05-23 13:49:02'),(204,'950113_fxQuoteDuplicateCheck.js',1,'2025-05-23 13:49:02'),(205,'950114_fxQuoteResponseDuplicateCheck.js',1,'2025-05-23 13:49:02'),(206,'950115_fxQuoteConversionTerms.js',1,'2025-05-23 13:49:02'),(207,'950116_fxQuoteConversionTermsExtension.js',1,'2025-05-23 13:49:02'),(208,'950117_fxQuoteResponseConversionTerms.js',1,'2025-05-23 13:49:02'),(209,'950118_fxQuoteResponseConversionTermsExtension.js',1,'2025-05-23 13:49:02'),(210,'950119_fxCharge.js',1,'2025-05-23 13:49:02'),(211,'960100_create_externalParticipant.js',1,'2025-05-23 13:49:02'),(212,'960110_alter_transferParticipant__addFiled_externalParticipantId.js',1,'2025-05-23 13:49:02'),(213,'960111_alter_fxTransferParticipant__addFiled_externalParticipantId.js',1,'2025-05-23 13:49:02'),(214,'960112_fxTransfer-indexes2.js',1,'2025-05-23 13:49:02'),(215,'960113_fxTransferExtension-indexes.js',1,'2025-05-23 13:49:02'),(216,'960114_fxTransferTimeout-indexes2.js',1,'2025-05-23 13:49:02');
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_lock`
--

DROP TABLE IF EXISTS `migration_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migration_lock` (
  `index` int unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_lock`
--

LOCK TABLES `migration_lock` WRITE;
/*!40000 ALTER TABLE `migration_lock` DISABLE KEYS */;
INSERT INTO `migration_lock` VALUES (1,0);
/*!40000 ALTER TABLE `migration_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant` (
  `participantId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(128) NOT NULL,
  `isProxy` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`participantId`),
  UNIQUE KEY `participant_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (1,'Hub','Hub Operator',1,'2025-05-23 13:49:04','seeds',0),(2,'payerfsp',NULL,1,'2025-05-23 13:54:06','unknown',0),(3,'payeefsp',NULL,1,'2025-05-23 13:55:18','unknown',0),(4,'noresponsepayeefsp',NULL,1,'2025-05-23 13:56:26','unknown',0),(5,'testfsp1',NULL,1,'2025-05-23 13:57:33','unknown',0),(6,'testfsp2',NULL,1,'2025-05-23 13:58:30','unknown',0),(7,'testingtoolkitdfsp',NULL,1,'2025-05-23 13:59:34','unknown',0),(8,'ttkpayeefsp',NULL,1,'2025-05-23 14:00:44','unknown',0),(9,'testfsp3',NULL,1,'2025-05-23 14:01:30','unknown',0),(10,'testfsp4',NULL,1,'2025-05-23 14:01:55','unknown',0),(11,'ttkfxp1',NULL,1,'2025-05-23 14:02:21','unknown',0),(12,'ttkfxpayee',NULL,1,'2025-05-23 14:03:21','unknown',0),(13,'ttkfxpayer',NULL,1,'2025-05-23 14:35:19','unknown',0);
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantContact`
--

DROP TABLE IF EXISTS `participantContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantContact` (
  `participantContactId` int unsigned NOT NULL AUTO_INCREMENT,
  `participantId` int unsigned NOT NULL,
  `contactTypeId` int unsigned NOT NULL,
  `value` varchar(256) NOT NULL,
  `priorityPreference` int NOT NULL DEFAULT '9',
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(128) NOT NULL,
  PRIMARY KEY (`participantContactId`),
  KEY `participantcontact_participantid_index` (`participantId`),
  KEY `participantcontact_contacttypeid_index` (`contactTypeId`),
  CONSTRAINT `participantcontact_contacttypeid_foreign` FOREIGN KEY (`contactTypeId`) REFERENCES `contactType` (`contactTypeId`),
  CONSTRAINT `participantcontact_participantid_foreign` FOREIGN KEY (`participantId`) REFERENCES `participant` (`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantContact`
--

LOCK TABLES `participantContact` WRITE;
/*!40000 ALTER TABLE `participantContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `participantContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantCurrency`
--

DROP TABLE IF EXISTS `participantCurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantCurrency` (
  `participantCurrencyId` int unsigned NOT NULL AUTO_INCREMENT,
  `participantId` int unsigned NOT NULL,
  `currencyId` varchar(3) NOT NULL,
  `ledgerAccountTypeId` int unsigned NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(128) NOT NULL,
  PRIMARY KEY (`participantCurrencyId`),
  UNIQUE KEY `participantcurrency_pcl_unique` (`participantId`,`currencyId`,`ledgerAccountTypeId`),
  KEY `participantcurrency_ledgeraccounttypeid_foreign` (`ledgerAccountTypeId`),
  KEY `participantcurrency_participantid_index` (`participantId`),
  KEY `participantcurrency_currencyid_index` (`currencyId`),
  CONSTRAINT `participantcurrency_currencyid_foreign` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `participantcurrency_ledgeraccounttypeid_foreign` FOREIGN KEY (`ledgerAccountTypeId`) REFERENCES `ledgerAccountType` (`ledgerAccountTypeId`),
  CONSTRAINT `participantcurrency_participantid_foreign` FOREIGN KEY (`participantId`) REFERENCES `participant` (`participantId`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantCurrency`
--

LOCK TABLES `participantCurrency` WRITE;
/*!40000 ALTER TABLE `participantCurrency` DISABLE KEYS */;
INSERT INTO `participantCurrency` VALUES (1,1,'XXX',4,1,'2025-05-23 13:53:32','unknown'),(2,1,'XXX',3,1,'2025-05-23 13:53:33','unknown'),(3,1,'XTS',4,1,'2025-05-23 13:53:40','unknown'),(4,1,'XTS',3,1,'2025-05-23 13:53:41','unknown'),(5,1,'INR',4,1,'2025-05-23 13:53:42','unknown'),(6,1,'INR',3,1,'2025-05-23 13:53:44','unknown'),(7,1,'XDR',4,1,'2025-05-23 13:53:45','unknown'),(8,1,'XDR',3,1,'2025-05-23 13:53:47','unknown'),(9,2,'XXX',1,1,'2025-05-23 13:54:06','unknown'),(10,2,'XXX',2,1,'2025-05-23 13:54:06','unknown'),(11,2,'XTS',1,1,'2025-05-23 13:54:24','unknown'),(12,2,'XTS',2,1,'2025-05-23 13:54:24','unknown'),(13,2,'INR',1,1,'2025-05-23 13:54:28','unknown'),(14,2,'INR',2,1,'2025-05-23 13:54:28','unknown'),(15,2,'INR',5,1,'2025-05-23 13:54:28','unknown'),(16,2,'INR',6,1,'2025-05-23 13:54:28','unknown'),(17,3,'XXX',1,1,'2025-05-23 13:55:18','unknown'),(18,3,'XXX',2,1,'2025-05-23 13:55:18','unknown'),(19,3,'XTS',1,1,'2025-05-23 13:55:32','unknown'),(20,3,'XTS',2,1,'2025-05-23 13:55:32','unknown'),(21,3,'INR',1,1,'2025-05-23 13:55:35','unknown'),(22,3,'INR',2,1,'2025-05-23 13:55:35','unknown'),(23,3,'INR',6,1,'2025-05-23 13:55:35','unknown'),(24,3,'INR',5,1,'2025-05-23 13:55:35','unknown'),(25,4,'XXX',1,1,'2025-05-23 13:56:26','unknown'),(26,4,'XXX',2,1,'2025-05-23 13:56:26','unknown'),(27,4,'XTS',1,1,'2025-05-23 13:56:40','unknown'),(28,4,'XTS',2,1,'2025-05-23 13:56:40','unknown'),(29,4,'INR',1,1,'2025-05-23 13:56:43','unknown'),(30,4,'INR',2,1,'2025-05-23 13:56:43','unknown'),(31,4,'INR',5,1,'2025-05-23 13:56:43','unknown'),(32,4,'INR',6,1,'2025-05-23 13:56:43','unknown'),(33,5,'XXX',1,1,'2025-05-23 13:57:33','unknown'),(34,5,'XXX',2,1,'2025-05-23 13:57:33','unknown'),(35,5,'XTS',1,1,'2025-05-23 13:57:42','unknown'),(36,5,'XTS',2,1,'2025-05-23 13:57:42','unknown'),(37,5,'INR',1,1,'2025-05-23 13:57:45','unknown'),(38,5,'INR',2,1,'2025-05-23 13:57:45','unknown'),(39,5,'INR',5,1,'2025-05-23 13:57:45','unknown'),(40,5,'INR',6,1,'2025-05-23 13:57:45','unknown'),(41,6,'XXX',1,1,'2025-05-23 13:58:30','unknown'),(42,6,'XXX',2,1,'2025-05-23 13:58:30','unknown'),(43,6,'XTS',1,1,'2025-05-23 13:58:43','unknown'),(44,6,'XTS',2,1,'2025-05-23 13:58:43','unknown'),(45,6,'INR',1,1,'2025-05-23 13:58:47','unknown'),(46,6,'INR',2,1,'2025-05-23 13:58:47','unknown'),(47,6,'INR',5,1,'2025-05-23 13:58:47','unknown'),(48,6,'INR',6,1,'2025-05-23 13:58:47','unknown'),(49,7,'XXX',1,1,'2025-05-23 13:59:34','unknown'),(50,7,'XXX',2,1,'2025-05-23 13:59:34','unknown'),(51,7,'XTS',1,1,'2025-05-23 13:59:36','unknown'),(52,7,'XTS',2,1,'2025-05-23 13:59:36','unknown'),(53,7,'INR',1,1,'2025-05-23 13:59:39','unknown'),(54,7,'INR',2,1,'2025-05-23 13:59:39','unknown'),(55,7,'INR',5,1,'2025-05-23 13:59:39','unknown'),(56,7,'INR',6,1,'2025-05-23 13:59:39','unknown'),(57,8,'XXX',1,1,'2025-05-23 14:00:44','unknown'),(58,8,'XXX',2,1,'2025-05-23 14:00:44','unknown'),(59,8,'XTS',1,1,'2025-05-23 14:01:19','unknown'),(60,8,'XTS',2,1,'2025-05-23 14:01:19','unknown'),(61,8,'INR',1,1,'2025-05-23 14:01:22','unknown'),(62,8,'INR',2,1,'2025-05-23 14:01:22','unknown'),(63,8,'INR',5,1,'2025-05-23 14:01:22','unknown'),(64,8,'INR',6,1,'2025-05-23 14:01:22','unknown'),(65,9,'INR',1,1,'2025-05-23 14:01:30','unknown'),(66,9,'INR',2,1,'2025-05-23 14:01:30','unknown'),(67,9,'INR',5,1,'2025-05-23 14:01:30','unknown'),(68,9,'INR',6,1,'2025-05-23 14:01:30','unknown'),(69,10,'INR',1,1,'2025-05-23 14:01:55','unknown'),(70,10,'INR',2,1,'2025-05-23 14:01:55','unknown'),(71,10,'INR',5,1,'2025-05-23 14:01:55','unknown'),(72,10,'INR',6,1,'2025-05-23 14:01:55','unknown'),(73,11,'XDR',1,1,'2025-05-23 14:02:21','unknown'),(74,11,'XDR',2,1,'2025-05-23 14:02:21','unknown'),(75,11,'XTS',1,1,'2025-05-23 14:02:24','unknown'),(76,11,'XTS',2,1,'2025-05-23 14:02:24','unknown'),(77,12,'XTS',1,1,'2025-05-23 14:03:21','unknown'),(78,12,'XTS',2,1,'2025-05-23 14:03:21','unknown'),(79,13,'XDR',1,1,'2025-05-23 14:35:19','unknown'),(80,13,'XDR',2,1,'2025-05-23 14:35:19','unknown');
/*!40000 ALTER TABLE `participantCurrency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantEndpoint`
--

DROP TABLE IF EXISTS `participantEndpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantEndpoint` (
  `participantEndpointId` int unsigned NOT NULL AUTO_INCREMENT,
  `participantId` int unsigned NOT NULL,
  `endpointTypeId` int unsigned NOT NULL,
  `value` varchar(512) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(128) NOT NULL,
  PRIMARY KEY (`participantEndpointId`),
  KEY `participantendpoint_participantid_index` (`participantId`),
  KEY `participantendpoint_endpointtypeid_index` (`endpointTypeId`),
  CONSTRAINT `participantendpoint_endpointtypeid_foreign` FOREIGN KEY (`endpointTypeId`) REFERENCES `endpointType` (`endpointTypeId`),
  CONSTRAINT `participantendpoint_participantid_foreign` FOREIGN KEY (`participantId`) REFERENCES `participant` (`participantId`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantEndpoint`
--

LOCK TABLES `participantEndpoint` WRITE;
/*!40000 ALTER TABLE `participantEndpoint` DISABLE KEYS */;
INSERT INTO `participantEndpoint` VALUES (1,1,12,'some.email@gmail.com',1,'2025-05-23 13:53:34','unknown'),(2,1,11,'some.email@gmail.com',1,'2025-05-23 13:53:36','unknown'),(3,1,10,'some.email@gmail.com',1,'2025-05-23 13:53:37','unknown'),(4,2,31,'http://moja-sim-payerfsp-scheme-adapter:4000',1,'2025-05-23 13:54:41','unknown'),(5,2,13,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:54:42','unknown'),(6,2,15,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:54:43','unknown'),(7,2,19,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-23 13:54:44','unknown'),(8,2,20,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-23 13:54:47','unknown'),(9,2,21,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:54:48','unknown'),(10,2,23,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:54:49','unknown'),(11,2,25,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:54:51','unknown'),(12,2,27,'http://moja-sim-payerfsp-scheme-adapter:4000',1,'2025-05-23 13:54:52','unknown'),(13,2,32,'http://moja-sim-payerfsp-scheme-adapter:4000',1,'2025-05-23 13:54:53','unknown'),(14,2,3,'http://moja-sim-payerfsp-scheme-adapter:4000/transfers',1,'2025-05-23 13:54:55','unknown'),(15,2,4,'http://moja-sim-payerfsp-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-23 13:54:56','unknown'),(16,2,5,'http://moja-sim-payerfsp-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-23 13:54:57','unknown'),(17,2,28,'http://moja-sim-payerfsp-scheme-adapter:4000/bulkTransfers',1,'2025-05-23 13:54:59','unknown'),(18,2,29,'http://moja-sim-payerfsp-scheme-adapter:4000/bulkTransfers/{{id}}',1,'2025-05-23 13:55:00','unknown'),(19,2,30,'http://moja-sim-payerfsp-scheme-adapter:4000/bulkTransfers/{{id}}/error',1,'2025-05-23 13:55:01','unknown'),(20,2,14,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:55:03','unknown'),(21,2,16,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:55:04','unknown'),(22,2,18,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:55:05','unknown'),(23,2,22,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:55:07','unknown'),(24,2,24,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:55:09','unknown'),(25,2,26,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:55:11','unknown'),(26,2,10,'some.email@gmail.com',1,'2025-05-23 13:55:12','unknown'),(27,2,11,'some.email@gmail.com',1,'2025-05-23 13:55:13','unknown'),(28,2,12,'some.email@gmail.com',1,'2025-05-23 13:55:15','unknown'),(29,3,31,'http://moja-sim-payeefsp-scheme-adapter:4000',1,'2025-05-23 13:55:48','unknown'),(30,3,13,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:55:49','unknown'),(31,3,15,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:55:50','unknown'),(32,3,19,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-23 13:55:51','unknown'),(33,3,20,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-23 13:55:54','unknown'),(34,3,21,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:55:55','unknown'),(35,3,23,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:55:56','unknown'),(36,3,25,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:55:58','unknown'),(37,3,27,'http://moja-sim-payeefsp-scheme-adapter:4000',1,'2025-05-23 13:55:59','unknown'),(38,3,32,'http://moja-sim-payeefsp-scheme-adapter:4000',1,'2025-05-23 13:56:00','unknown'),(39,3,3,'http://moja-sim-payeefsp-scheme-adapter:4000/transfers',1,'2025-05-23 13:56:02','unknown'),(40,3,4,'http://moja-sim-payeefsp-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-23 13:56:03','unknown'),(41,3,5,'http://moja-sim-payeefsp-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-23 13:56:04','unknown'),(42,3,28,'http://moja-sim-payeefsp-scheme-adapter:4000/bulkTransfers',1,'2025-05-23 13:56:05','unknown'),(43,3,29,'http://moja-sim-payeefsp-scheme-adapter:4000/bulkTransfers/{{id}}',1,'2025-05-23 13:56:07','unknown'),(44,3,30,'http://moja-sim-payeefsp-scheme-adapter:4000/bulkTransfers/{{id}}/error',1,'2025-05-23 13:56:08','unknown'),(45,3,14,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:56:10','unknown'),(46,3,16,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:56:11','unknown'),(47,3,18,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:56:12','unknown'),(48,3,22,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:56:14','unknown'),(49,3,24,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:56:15','unknown'),(50,3,26,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:56:17','unknown'),(51,3,10,'some.email@gmail.com',1,'2025-05-23 13:56:19','unknown'),(52,3,11,'some.email@gmail.com',1,'2025-05-23 13:56:20','unknown'),(53,3,12,'some.email@gmail.com',1,'2025-05-23 13:56:21','unknown'),(54,4,31,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 13:56:56','unknown'),(55,4,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:56:57','unknown'),(56,4,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:56:59','unknown'),(57,4,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-23 13:57:00','unknown'),(58,4,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-23 13:57:03','unknown'),(59,4,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:57:04','unknown'),(60,4,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:57:05','unknown'),(61,4,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:57:07','unknown'),(62,4,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 13:57:08','unknown'),(63,4,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 13:57:09','unknown'),(64,4,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-23 13:57:11','unknown'),(65,4,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-23 13:57:12','unknown'),(66,4,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-23 13:57:14','unknown'),(67,4,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-23 13:57:15','unknown'),(68,4,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-23 13:57:16','unknown'),(69,4,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-23 13:57:17','unknown'),(70,4,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:57:19','unknown'),(71,4,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:57:22','unknown'),(72,4,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:57:23','unknown'),(73,4,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:57:24','unknown'),(74,4,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:57:26','unknown'),(75,4,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:57:27','unknown'),(76,4,10,'some.email@gmail.com',1,'2025-05-23 13:57:29','unknown'),(77,4,11,'some.email@gmail.com',1,'2025-05-23 13:57:30','unknown'),(78,4,12,'some.email@gmail.com',1,'2025-05-23 13:57:31','unknown'),(79,5,21,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:57:57','unknown'),(80,5,23,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:57:58','unknown'),(81,5,25,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:58:01','unknown'),(82,5,13,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:58:03','unknown'),(83,5,15,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:58:05','unknown'),(84,5,19,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-23 13:58:06','unknown'),(85,5,20,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-23 13:58:07','unknown'),(86,5,27,'http://moja-sim-testfsp1-scheme-adapter:4000',1,'2025-05-23 13:58:08','unknown'),(87,5,3,'http://moja-sim-testfsp1-scheme-adapter:4000/transfers',1,'2025-05-23 13:58:10','unknown'),(88,5,4,'http://moja-sim-testfsp1-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-23 13:58:11','unknown'),(89,5,5,'http://moja-sim-testfsp1-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-23 13:58:12','unknown'),(90,5,14,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:58:14','unknown'),(91,5,16,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:58:15','unknown'),(92,5,18,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:58:16','unknown'),(93,5,22,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:58:17','unknown'),(94,5,24,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:58:19','unknown'),(95,5,26,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:58:20','unknown'),(96,5,10,'some.email@gmail.com',1,'2025-05-23 13:58:21','unknown'),(97,5,11,'some.email@gmail.com',1,'2025-05-23 13:58:24','unknown'),(98,5,12,'some.email@gmail.com',1,'2025-05-23 13:58:26','unknown'),(99,6,21,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:59:00','unknown'),(100,6,23,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:59:01','unknown'),(101,6,25,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:59:02','unknown'),(102,6,13,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:59:04','unknown'),(103,6,15,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:59:05','unknown'),(104,6,19,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-23 13:59:06','unknown'),(105,6,20,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-23 13:59:07','unknown'),(106,6,27,'http://moja-sim-testfsp2-scheme-adapter:4000',1,'2025-05-23 13:59:09','unknown'),(107,6,3,'http://moja-sim-testfsp2-scheme-adapter:4000/transfers',1,'2025-05-23 13:59:12','unknown'),(108,6,4,'http://moja-sim-testfsp2-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-23 13:59:13','unknown'),(109,6,5,'http://moja-sim-testfsp2-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-23 13:59:14','unknown'),(110,6,14,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:59:16','unknown'),(111,6,16,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:59:17','unknown'),(112,6,18,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:59:18','unknown'),(113,6,22,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:59:19','unknown'),(114,6,24,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:59:21','unknown'),(115,6,26,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:59:22','unknown'),(116,6,10,'some.email@gmail.com',1,'2025-05-23 13:59:24','unknown'),(117,6,11,'some.email@gmail.com',1,'2025-05-23 13:59:25','unknown'),(118,6,12,'some.email@gmail.com',1,'2025-05-23 13:59:27','unknown'),(119,7,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:59:42','unknown'),(120,7,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 13:59:43','unknown'),(121,7,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:59:44','unknown'),(122,7,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 13:59:45','unknown'),(123,7,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 13:59:47','unknown'),(124,7,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-23 13:59:48','unknown'),(125,7,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-23 13:59:49','unknown'),(126,7,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-23 13:59:50','unknown'),(127,7,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:59:53','unknown'),(128,7,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 13:59:55','unknown'),(129,7,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:59:56','unknown'),(130,7,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:59:58','unknown'),(131,7,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 13:59:59','unknown'),(132,7,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 14:00:00','unknown'),(133,7,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:00:02','unknown'),(134,7,11,'{$inputs.email}',1,'2025-05-23 14:00:03','unknown'),(135,7,12,'{$inputs.email}',1,'2025-05-23 14:00:04','unknown'),(136,7,10,'{$inputs.email}',1,'2025-05-23 14:00:06','unknown'),(137,7,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-23 14:00:07','unknown'),(138,7,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-23 14:00:08','unknown'),(139,7,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-23 14:00:09','unknown'),(140,7,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-23 14:00:11','unknown'),(141,7,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-23 14:00:12','unknown'),(142,7,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:00:15','unknown'),(143,7,7,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers',1,'2025-05-23 14:00:16','unknown'),(144,7,8,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-23 14:00:18','unknown'),(145,7,9,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-23 14:00:19','unknown'),(146,7,6,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:00:20','unknown'),(147,8,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:00:46','unknown'),(148,8,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:00:47','unknown'),(149,8,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:00:49','unknown'),(150,8,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:00:50','unknown'),(151,8,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:00:51','unknown'),(152,8,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-23 14:00:53','unknown'),(153,8,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-23 14:00:54','unknown'),(154,8,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-23 14:00:55','unknown'),(155,8,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:00:57','unknown'),(156,8,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 14:00:58','unknown'),(157,8,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:00:59','unknown'),(158,8,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:01:02','unknown'),(159,8,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:01:04','unknown'),(160,8,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 14:01:05','unknown'),(161,8,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:01:07','unknown'),(162,8,11,'{$inputs.email}',1,'2025-05-23 14:01:08','unknown'),(163,8,12,'{$inputs.email}',1,'2025-05-23 14:01:09','unknown'),(164,8,10,'{$inputs.email}',1,'2025-05-23 14:01:11','unknown'),(165,8,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-23 14:01:12','unknown'),(166,8,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-23 14:01:13','unknown'),(167,8,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-23 14:01:14','unknown'),(168,8,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-23 14:01:16','unknown'),(169,8,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-23 14:01:17','unknown'),(170,8,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:01:18','unknown'),(171,9,31,'http://moja-sim-testfsp3-scheme-adapter:4000',1,'2025-05-23 14:01:32','unknown'),(172,9,13,'http://moja-sim-testfsp3-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:01:34','unknown'),(173,9,15,'http://moja-sim-testfsp3-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:01:35','unknown'),(174,9,19,'http://moja-sim-testfsp3-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-23 14:01:36','unknown'),(175,9,20,'http://moja-sim-testfsp3-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-23 14:01:37','unknown'),(176,9,21,'http://moja-sim-testfsp3-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:01:39','unknown'),(177,9,23,'http://moja-sim-testfsp3-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:01:40','unknown'),(178,9,25,'http://moja-sim-testfsp3-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:01:43','unknown'),(179,9,27,'http://moja-sim-testfsp3-scheme-adapter:4000',1,'2025-05-23 14:01:45','unknown'),(180,9,32,'http://moja-sim-testfsp3-scheme-adapter:4000',1,'2025-05-23 14:01:46','unknown'),(181,9,3,'http://moja-sim-testfsp3-scheme-adapter:4000/transfers',1,'2025-05-23 14:01:47','unknown'),(182,9,4,'http://moja-sim-testfsp3-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-23 14:01:49','unknown'),(183,9,5,'http://moja-sim-testfsp3-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-23 14:01:50','unknown'),(184,9,10,'{$environment.MASTER_EMAIL}',1,'2025-05-23 14:01:51','unknown'),(185,9,11,'{$environment.MASTER_EMAIL}',1,'2025-05-23 14:01:52','unknown'),(186,9,12,'{$environment.MASTER_EMAIL}',1,'2025-05-23 14:01:54','unknown'),(187,10,31,'http://moja-sim-testfsp4-scheme-adapter:4000',1,'2025-05-23 14:01:58','unknown'),(188,10,13,'http://moja-sim-testfsp4-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:01:59','unknown'),(189,10,15,'http://moja-sim-testfsp4-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:02:01','unknown'),(190,10,19,'http://moja-sim-testfsp4-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-23 14:02:02','unknown'),(191,10,20,'http://moja-sim-testfsp4-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-23 14:02:03','unknown'),(192,10,21,'http://moja-sim-testfsp4-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:02:06','unknown'),(193,10,23,'http://moja-sim-testfsp4-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:02:08','unknown'),(194,10,25,'http://moja-sim-testfsp4-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:02:09','unknown'),(195,10,27,'http://moja-sim-testfsp4-scheme-adapter:4000',1,'2025-05-23 14:02:10','unknown'),(196,10,32,'http://moja-sim-testfsp4-scheme-adapter:4000',1,'2025-05-23 14:02:12','unknown'),(197,10,3,'http://moja-sim-testfsp4-scheme-adapter:4000/transfers',1,'2025-05-23 14:02:13','unknown'),(198,10,4,'http://moja-sim-testfsp4-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-23 14:02:14','unknown'),(199,10,5,'http://moja-sim-testfsp4-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-23 14:02:16','unknown'),(200,10,10,'{$environment.MASTER_EMAIL}',1,'2025-05-23 14:02:17','unknown'),(201,10,11,'{$environment.MASTER_EMAIL}',1,'2025-05-23 14:02:18','unknown'),(202,10,12,'{$environment.MASTER_EMAIL}',1,'2025-05-23 14:02:20','unknown'),(203,11,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:02:26','unknown'),(204,11,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:02:27','unknown'),(205,11,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:02:31','unknown'),(206,11,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:02:32','unknown'),(207,11,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:02:34','unknown'),(208,11,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-23 14:02:35','unknown'),(209,11,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-23 14:02:36','unknown'),(210,11,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-23 14:02:37','unknown'),(211,11,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:02:39','unknown'),(212,11,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 14:02:40','unknown'),(213,11,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:02:41','unknown'),(214,11,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:02:43','unknown'),(215,11,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:02:44','unknown'),(216,11,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 14:02:45','unknown'),(217,11,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:02:46','unknown'),(218,11,11,'{$inputs.email}',1,'2025-05-23 14:02:47','unknown'),(219,11,12,'{$inputs.email}',1,'2025-05-23 14:02:49','unknown'),(220,11,10,'{$inputs.email}',1,'2025-05-23 14:02:50','unknown'),(221,11,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-23 14:02:51','unknown'),(222,11,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-23 14:02:55','unknown'),(223,11,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-23 14:02:57','unknown'),(224,11,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-23 14:02:58','unknown'),(225,11,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-23 14:02:59','unknown'),(226,11,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:03:00','unknown'),(227,11,7,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers',1,'2025-05-23 14:03:02','unknown'),(228,11,8,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-23 14:03:03','unknown'),(229,11,9,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-23 14:03:05','unknown'),(230,11,6,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:03:06','unknown'),(231,12,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:03:24','unknown'),(232,12,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:03:25','unknown'),(233,12,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:03:26','unknown'),(234,12,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:03:28','unknown'),(235,12,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:03:29','unknown'),(236,12,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-23 14:03:31','unknown'),(237,12,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-23 14:03:33','unknown'),(238,12,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-23 14:03:34','unknown'),(239,12,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:03:36','unknown'),(240,12,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 14:03:37','unknown'),(241,12,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:34:49','unknown'),(242,12,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:34:51','unknown'),(243,12,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:34:55','unknown'),(244,12,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 14:34:56','unknown'),(245,12,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:34:57','unknown'),(246,12,11,'{$inputs.email}',1,'2025-05-23 14:34:59','unknown'),(247,12,12,'{$inputs.email}',1,'2025-05-23 14:35:00','unknown'),(248,12,10,'{$inputs.email}',1,'2025-05-23 14:35:01','unknown'),(249,12,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-23 14:35:03','unknown'),(250,12,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-23 14:35:04','unknown'),(251,12,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-23 14:35:05','unknown'),(252,12,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-23 14:35:07','unknown'),(253,12,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-23 14:35:08','unknown'),(254,12,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:35:09','unknown'),(255,12,7,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers',1,'2025-05-23 14:35:10','unknown'),(256,12,8,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-23 14:35:12','unknown'),(257,12,9,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-23 14:35:16','unknown'),(258,12,6,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:35:17','unknown'),(259,13,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:35:21','unknown'),(260,13,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:35:23','unknown'),(261,13,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:35:24','unknown'),(262,13,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-23 14:35:25','unknown'),(263,13,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:35:27','unknown'),(264,13,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-23 14:35:28','unknown'),(265,13,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-23 14:35:29','unknown'),(266,13,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-23 14:35:30','unknown'),(267,13,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:35:32','unknown'),(268,13,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 14:35:33','unknown'),(269,13,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:35:34','unknown'),(270,13,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:35:38','unknown'),(271,13,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-23 14:35:39','unknown'),(272,13,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-23 14:35:41','unknown'),(273,13,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:35:42','unknown'),(274,13,11,'{$inputs.email}',1,'2025-05-23 14:35:43','unknown'),(275,13,12,'{$inputs.email}',1,'2025-05-23 14:35:45','unknown'),(276,13,10,'{$inputs.email}',1,'2025-05-23 14:35:46','unknown'),(277,13,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-23 14:35:47','unknown'),(278,13,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-23 14:35:49','unknown'),(279,13,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-23 14:35:50','unknown'),(280,13,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-23 14:35:51','unknown'),(281,13,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-23 14:35:53','unknown'),(282,13,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-23 14:35:54','unknown'),(283,13,7,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers',1,'2025-05-23 14:35:55','unknown'),(284,13,8,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-23 14:35:56','unknown'),(285,13,9,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-23 14:36:00','unknown'),(286,13,6,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-23 14:36:02','unknown');
/*!40000 ALTER TABLE `participantEndpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantLimit`
--

DROP TABLE IF EXISTS `participantLimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantLimit` (
  `participantLimitId` int unsigned NOT NULL AUTO_INCREMENT,
  `participantCurrencyId` int unsigned NOT NULL,
  `participantLimitTypeId` int unsigned NOT NULL,
  `value` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `thresholdAlarmPercentage` decimal(5,2) NOT NULL DEFAULT '10.00',
  `startAfterParticipantPositionChangeId` bigint unsigned DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(128) NOT NULL,
  PRIMARY KEY (`participantLimitId`),
  UNIQUE KEY `participantLimit_unique_idx` (`participantCurrencyId`,`participantLimitTypeId`,`isActive`,`participantLimitId`),
  KEY `participantlimit_participantcurrencyid_index` (`participantCurrencyId`),
  KEY `participantlimit_participantlimittypeid_index` (`participantLimitTypeId`),
  KEY `participantlimit_startafterparticipantpositionchangeid_index` (`startAfterParticipantPositionChangeId`),
  CONSTRAINT `participantlimit_participantcurrencyid_foreign` FOREIGN KEY (`participantCurrencyId`) REFERENCES `participantCurrency` (`participantCurrencyId`),
  CONSTRAINT `participantlimit_participantlimittypeid_foreign` FOREIGN KEY (`participantLimitTypeId`) REFERENCES `participantLimitType` (`participantLimitTypeId`),
  CONSTRAINT `participantlimit_startafterparticipantpositionchangeid_foreign` FOREIGN KEY (`startAfterParticipantPositionChangeId`) REFERENCES `participantPositionChange` (`participantPositionChangeId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantLimit`
--

LOCK TABLES `participantLimit` WRITE;
/*!40000 ALTER TABLE `participantLimit` DISABLE KEYS */;
INSERT INTO `participantLimit` VALUES (1,9,1,10000.0000,10.00,NULL,1,'2025-05-23 13:54:07','unknown'),(2,11,1,10000.0000,10.00,NULL,1,'2025-05-23 13:54:26','unknown'),(3,13,1,10000.0000,10.00,NULL,0,'2025-05-23 13:54:29','unknown'),(4,17,1,10000.0000,10.00,NULL,1,'2025-05-23 13:55:19','unknown'),(5,19,1,10000.0000,10.00,NULL,1,'2025-05-23 13:55:33','unknown'),(6,21,1,10000.0000,10.00,NULL,0,'2025-05-23 13:55:36','unknown'),(7,25,1,10000.0000,10.00,NULL,1,'2025-05-23 13:56:27','unknown'),(8,27,1,10000.0000,10.00,NULL,1,'2025-05-23 13:56:41','unknown'),(9,29,1,10000.0000,10.00,NULL,1,'2025-05-23 13:56:44','unknown'),(10,33,1,10000.0000,10.00,NULL,1,'2025-05-23 13:57:34','unknown'),(11,35,1,10000.0000,10.00,NULL,1,'2025-05-23 13:57:43','unknown'),(12,37,1,10000.0000,10.00,NULL,0,'2025-05-23 13:57:46','unknown'),(13,41,1,10000.0000,10.00,NULL,1,'2025-05-23 13:58:32','unknown'),(14,43,1,10000.0000,10.00,NULL,1,'2025-05-23 13:58:44','unknown'),(15,45,1,10000.0000,10.00,NULL,0,'2025-05-23 13:58:48','unknown'),(16,49,1,1000000.0000,10.00,NULL,1,'2025-05-23 13:59:35','unknown'),(17,51,1,1000000.0000,10.00,NULL,1,'2025-05-23 13:59:38','unknown'),(18,53,1,1000000.0000,10.00,NULL,1,'2025-05-23 13:59:40','unknown'),(19,57,1,1000000.0000,10.00,NULL,1,'2025-05-23 14:00:45','unknown'),(20,59,1,1000000.0000,10.00,NULL,1,'2025-05-23 14:01:21','unknown'),(21,61,1,1000000.0000,10.00,NULL,1,'2025-05-23 14:01:25','unknown'),(22,65,1,1000000.0000,10.00,NULL,0,'2025-05-23 14:01:31','unknown'),(23,69,1,1000000.0000,10.00,NULL,0,'2025-05-23 14:01:56','unknown'),(24,73,1,1000000.0000,10.00,NULL,1,'2025-05-23 14:02:22','unknown'),(25,75,1,1000000.0000,10.00,NULL,1,'2025-05-23 14:02:25','unknown'),(26,77,1,1000000.0000,10.00,NULL,1,'2025-05-23 14:03:22','unknown'),(27,79,1,1000000.0000,10.00,NULL,1,'2025-05-23 14:35:20','unknown'),(28,13,1,50000.0000,0.00,NULL,1,'2025-05-23 14:36:59','unknown'),(29,21,1,50000.0000,0.00,NULL,1,'2025-05-23 14:36:59','unknown'),(30,37,1,50000.0000,0.00,NULL,1,'2025-05-23 14:36:59','unknown'),(31,45,1,50000.0000,0.00,NULL,1,'2025-05-23 14:37:00','unknown'),(32,65,1,50000.0000,0.00,NULL,1,'2025-05-23 14:37:00','unknown'),(33,69,1,50000.0000,0.00,NULL,1,'2025-05-23 14:37:00','unknown');
/*!40000 ALTER TABLE `participantLimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantLimitType`
--

DROP TABLE IF EXISTS `participantLimitType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantLimitType` (
  `participantLimitTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`participantLimitTypeId`),
  UNIQUE KEY `participantlimittype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantLimitType`
--

LOCK TABLES `participantLimitType` WRITE;
/*!40000 ALTER TABLE `participantLimitType` DISABLE KEYS */;
INSERT INTO `participantLimitType` VALUES (1,'NET_DEBIT_CAP',NULL,1,'2025-05-23 13:49:04');
/*!40000 ALTER TABLE `participantLimitType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantParty`
--

DROP TABLE IF EXISTS `participantParty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantParty` (
  `participantPartyId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `participantId` int unsigned NOT NULL,
  `partyId` bigint unsigned NOT NULL,
  PRIMARY KEY (`participantPartyId`),
  UNIQUE KEY `participantparty_participantid_partyid_unique` (`participantId`,`partyId`),
  KEY `participantparty_participantid_index` (`participantId`),
  CONSTRAINT `participantparty_participantid_foreign` FOREIGN KEY (`participantId`) REFERENCES `participant` (`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantParty`
--

LOCK TABLES `participantParty` WRITE;
/*!40000 ALTER TABLE `participantParty` DISABLE KEYS */;
/*!40000 ALTER TABLE `participantParty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantPosition`
--

DROP TABLE IF EXISTS `participantPosition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantPosition` (
  `participantPositionId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `participantCurrencyId` int unsigned NOT NULL,
  `value` decimal(18,4) NOT NULL,
  `reservedValue` decimal(18,4) NOT NULL,
  `changedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`participantPositionId`),
  KEY `participantposition_participantcurrencyid_index` (`participantCurrencyId`),
  CONSTRAINT `participantposition_participantcurrencyid_foreign` FOREIGN KEY (`participantCurrencyId`) REFERENCES `participantCurrency` (`participantCurrencyId`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantPosition`
--

LOCK TABLES `participantPosition` WRITE;
/*!40000 ALTER TABLE `participantPosition` DISABLE KEYS */;
INSERT INTO `participantPosition` VALUES (1,1,0.0000,0.0000,'2025-05-23 13:53:31'),(2,2,30000.0000,0.0000,'2025-05-23 14:00:24'),(3,3,0.0000,0.0000,'2025-05-23 13:53:39'),(4,4,35000.0000,0.0000,'2025-05-23 14:03:10'),(5,5,0.0000,0.0000,'2025-05-23 13:53:42'),(6,6,10000.0000,0.0000,'2025-05-23 14:01:57'),(7,7,0.0000,0.0000,'2025-05-23 13:53:45'),(8,8,5000.0000,0.0000,'2025-05-23 14:36:06'),(9,9,0.0000,0.0000,'2025-05-23 13:54:07'),(10,10,-5000.0000,0.0000,'2025-05-23 13:54:17'),(11,11,0.0000,0.0000,'2025-05-23 13:54:26'),(12,12,-5000.0000,0.0000,'2025-05-23 13:54:33'),(13,13,0.0000,0.0000,'2025-05-23 13:54:29'),(14,14,0.0000,0.0000,'2025-05-23 13:54:29'),(15,15,0.0000,0.0000,'2025-05-23 13:54:29'),(16,16,0.0000,0.0000,'2025-05-23 13:54:29'),(17,17,-100.0000,0.0000,'2025-05-26 03:51:06'),(18,18,-5000.0000,0.0000,'2025-05-23 13:55:23'),(19,19,0.0000,0.0000,'2025-05-23 13:55:33'),(20,20,-5000.0000,0.0000,'2025-05-23 13:55:40'),(21,21,0.0000,0.0000,'2025-05-23 13:55:36'),(22,22,0.0000,0.0000,'2025-05-23 13:55:36'),(23,24,0.0000,0.0000,'2025-05-23 13:55:36'),(24,23,0.0000,0.0000,'2025-05-23 13:55:36'),(25,25,0.0000,0.0000,'2025-05-23 13:56:27'),(26,26,-5000.0000,0.0000,'2025-05-23 13:56:31'),(27,27,0.0000,0.0000,'2025-05-23 13:56:41'),(28,28,-5000.0000,0.0000,'2025-05-23 13:56:48'),(29,29,0.0000,0.0000,'2025-05-23 13:56:44'),(30,30,0.0000,0.0000,'2025-05-23 13:56:44'),(31,31,0.0000,0.0000,'2025-05-23 13:56:44'),(32,32,0.0000,0.0000,'2025-05-23 13:56:44'),(33,33,0.0000,0.0000,'2025-05-23 13:57:34'),(34,34,-5000.0000,0.0000,'2025-05-23 13:57:38'),(35,35,0.0000,0.0000,'2025-05-23 13:57:43'),(36,36,-5000.0000,0.0000,'2025-05-23 13:57:50'),(37,37,0.0000,0.0000,'2025-05-23 13:57:46'),(38,38,0.0000,0.0000,'2025-05-23 13:57:46'),(39,39,0.0000,0.0000,'2025-05-23 13:57:46'),(40,40,0.0000,0.0000,'2025-05-23 13:57:46'),(41,41,0.0000,0.0000,'2025-05-23 13:58:32'),(42,42,-5000.0000,0.0000,'2025-05-23 13:58:35'),(43,43,0.0000,0.0000,'2025-05-23 13:58:44'),(44,44,-5000.0000,0.0000,'2025-05-23 13:58:52'),(45,45,0.0000,0.0000,'2025-05-23 13:58:48'),(46,46,0.0000,0.0000,'2025-05-23 13:58:48'),(47,47,0.0000,0.0000,'2025-05-23 13:58:48'),(48,48,0.0000,0.0000,'2025-05-23 13:58:48'),(49,49,100.0000,0.0000,'2025-05-26 03:51:04'),(50,50,-5000.0000,0.0000,'2025-05-23 14:00:24'),(51,51,0.0000,0.0000,'2025-05-23 13:59:38'),(52,52,-5000.0000,0.0000,'2025-05-23 14:00:34'),(53,53,0.0000,0.0000,'2025-05-23 13:59:40'),(54,54,0.0000,0.0000,'2025-05-23 13:59:40'),(55,55,0.0000,0.0000,'2025-05-23 13:59:40'),(56,56,0.0000,0.0000,'2025-05-23 13:59:40'),(57,57,0.0000,0.0000,'2025-05-23 14:00:45'),(58,58,0.0000,0.0000,'2025-05-23 14:00:45'),(59,59,0.0000,0.0000,'2025-05-23 14:01:21'),(60,60,0.0000,0.0000,'2025-05-23 14:01:21'),(61,61,0.0000,0.0000,'2025-05-23 14:01:25'),(62,62,0.0000,0.0000,'2025-05-23 14:01:25'),(63,63,0.0000,0.0000,'2025-05-23 14:01:25'),(64,64,0.0000,0.0000,'2025-05-23 14:01:25'),(65,65,0.0000,0.0000,'2025-05-23 14:01:31'),(66,66,-5000.0000,0.0000,'2025-05-23 14:01:32'),(67,67,0.0000,0.0000,'2025-05-23 14:01:31'),(68,68,0.0000,0.0000,'2025-05-23 14:01:31'),(69,69,0.0000,0.0000,'2025-05-23 14:01:56'),(70,70,-5000.0000,0.0000,'2025-05-23 14:01:57'),(71,71,0.0000,0.0000,'2025-05-23 14:01:56'),(72,72,0.0000,0.0000,'2025-05-23 14:01:56'),(73,73,0.0000,0.0000,'2025-05-26 03:58:47'),(74,74,0.0000,0.0000,'2025-05-23 14:02:22'),(75,75,0.0000,0.0000,'2025-05-26 03:59:00'),(76,76,-5000.0000,0.0000,'2025-05-23 14:03:10'),(77,77,0.0000,0.0000,'2025-05-23 14:03:22'),(78,78,0.0000,0.0000,'2025-05-23 14:03:22'),(79,79,0.0000,0.0000,'2025-05-26 03:59:00'),(80,80,-5000.0000,0.0000,'2025-05-23 14:36:06');
/*!40000 ALTER TABLE `participantPosition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantPositionChange`
--

DROP TABLE IF EXISTS `participantPositionChange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantPositionChange` (
  `participantPositionChangeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `participantPositionId` bigint unsigned NOT NULL,
  `transferStateChangeId` bigint unsigned DEFAULT NULL,
  `value` decimal(18,4) NOT NULL,
  `reservedValue` decimal(18,4) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `participantCurrencyId` int unsigned NOT NULL,
  `change` decimal(18,2) NOT NULL,
  `fxTransferStateChangeId` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`participantPositionChangeId`),
  KEY `participantpositionchange_participantpositionid_index` (`participantPositionId`),
  KEY `participantpositionchange_transferstatechangeid_index` (`transferStateChangeId`),
  KEY `participantpositionchange_participantcurrencyid_foreign` (`participantCurrencyId`),
  KEY `participantpositionchange_fxtransferstatechangeid_foreign` (`fxTransferStateChangeId`),
  CONSTRAINT `participantpositionchange_fxtransferstatechangeid_foreign` FOREIGN KEY (`fxTransferStateChangeId`) REFERENCES `fxTransferStateChange` (`fxTransferStateChangeId`),
  CONSTRAINT `participantpositionchange_participantcurrencyid_foreign` FOREIGN KEY (`participantCurrencyId`) REFERENCES `participantCurrency` (`participantCurrencyId`),
  CONSTRAINT `participantpositionchange_participantpositionid_foreign` FOREIGN KEY (`participantPositionId`) REFERENCES `participantPosition` (`participantPositionId`),
  CONSTRAINT `participantpositionchange_transferstatechangeid_foreign` FOREIGN KEY (`transferStateChangeId`) REFERENCES `transferStateChange` (`transferStateChangeId`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantPositionChange`
--

LOCK TABLES `participantPositionChange` WRITE;
/*!40000 ALTER TABLE `participantPositionChange` DISABLE KEYS */;
INSERT INTO `participantPositionChange` VALUES (1,2,2,5000.0000,0.0000,'2025-05-23 13:54:17',2,5000.00,NULL),(2,10,4,-5000.0000,0.0000,'2025-05-23 13:54:17',10,-5000.00,NULL),(3,4,6,5000.0000,0.0000,'2025-05-23 13:54:33',4,5000.00,NULL),(4,12,8,-5000.0000,0.0000,'2025-05-23 13:54:33',12,-5000.00,NULL),(5,2,10,10000.0000,0.0000,'2025-05-23 13:55:23',2,5000.00,NULL),(6,18,12,-5000.0000,0.0000,'2025-05-23 13:55:23',18,-5000.00,NULL),(7,4,14,10000.0000,0.0000,'2025-05-23 13:55:40',4,5000.00,NULL),(8,20,16,-5000.0000,0.0000,'2025-05-23 13:55:40',20,-5000.00,NULL),(9,2,18,15000.0000,0.0000,'2025-05-23 13:56:31',2,5000.00,NULL),(10,26,20,-5000.0000,0.0000,'2025-05-23 13:56:31',26,-5000.00,NULL),(11,4,22,15000.0000,0.0000,'2025-05-23 13:56:48',4,5000.00,NULL),(12,28,24,-5000.0000,0.0000,'2025-05-23 13:56:48',28,-5000.00,NULL),(13,2,26,20000.0000,0.0000,'2025-05-23 13:57:38',2,5000.00,NULL),(14,34,28,-5000.0000,0.0000,'2025-05-23 13:57:38',34,-5000.00,NULL),(15,4,30,20000.0000,0.0000,'2025-05-23 13:57:50',4,5000.00,NULL),(16,36,32,-5000.0000,0.0000,'2025-05-23 13:57:50',36,-5000.00,NULL),(17,2,34,25000.0000,0.0000,'2025-05-23 13:58:35',2,5000.00,NULL),(18,42,36,-5000.0000,0.0000,'2025-05-23 13:58:35',42,-5000.00,NULL),(19,4,38,25000.0000,0.0000,'2025-05-23 13:58:52',4,5000.00,NULL),(20,44,40,-5000.0000,0.0000,'2025-05-23 13:58:52',44,-5000.00,NULL),(21,2,42,30000.0000,0.0000,'2025-05-23 14:00:24',2,5000.00,NULL),(22,50,44,-5000.0000,0.0000,'2025-05-23 14:00:24',50,-5000.00,NULL),(23,4,46,30000.0000,0.0000,'2025-05-23 14:00:34',4,5000.00,NULL),(24,52,48,-5000.0000,0.0000,'2025-05-23 14:00:34',52,-5000.00,NULL),(25,6,50,5000.0000,0.0000,'2025-05-23 14:01:32',6,5000.00,NULL),(26,66,52,-5000.0000,0.0000,'2025-05-23 14:01:32',66,-5000.00,NULL),(27,6,54,10000.0000,0.0000,'2025-05-23 14:01:57',6,5000.00,NULL),(28,70,56,-5000.0000,0.0000,'2025-05-23 14:01:57',70,-5000.00,NULL),(29,4,58,35000.0000,0.0000,'2025-05-23 14:03:10',4,5000.00,NULL),(30,76,60,-5000.0000,0.0000,'2025-05-23 14:03:10',76,-5000.00,NULL),(31,8,62,5000.0000,0.0000,'2025-05-23 14:36:06',8,5000.00,NULL),(32,80,64,-5000.0000,0.0000,'2025-05-23 14:36:06',80,-5000.00,NULL),(33,49,66,100.0000,0.0000,'2025-05-26 03:51:03',49,100.00,NULL),(34,17,68,-100.0000,0.0000,'2025-05-26 03:51:06',17,-100.00,NULL),(35,79,NULL,13.0000,0.0000,'2025-05-26 03:58:20',79,13.00,2),(36,79,NULL,0.0000,0.0000,'2025-05-26 03:58:21',79,-13.00,4),(37,79,NULL,10.0000,0.0000,'2025-05-26 03:58:22',79,10.00,6),(38,75,70,15.0000,0.0000,'2025-05-26 03:58:23',75,15.00,NULL),(39,79,NULL,0.0000,0.0000,'2025-05-26 03:58:23',79,-10.00,8),(40,75,72,0.0000,0.0000,'2025-05-26 03:58:24',75,-15.00,NULL),(41,79,NULL,15.0000,0.0000,'2025-05-26 03:58:25',79,15.00,10),(42,79,NULL,0.0000,0.0000,'2025-05-26 03:58:25',79,-15.00,12),(43,79,NULL,10.0000,0.0000,'2025-05-26 03:58:29',79,10.00,14),(44,75,75,15.0000,0.0000,'2025-05-26 03:58:30',75,15.00,NULL),(45,79,NULL,0.0000,0.0000,'2025-05-26 03:58:33',79,-10.00,16),(46,75,77,0.0000,0.0000,'2025-05-26 03:58:33',75,-15.00,NULL),(47,79,NULL,16.0000,0.0000,'2025-05-26 03:58:33',79,16.00,18),(48,79,NULL,0.0000,0.0000,'2025-05-26 03:58:46',79,16.00,20),(49,79,NULL,10.0000,0.0000,'2025-05-26 03:58:46',79,10.00,22),(50,75,79,16.0000,0.0000,'2025-05-26 03:58:46',75,16.00,NULL),(51,75,81,0.0000,0.0000,'2025-05-26 03:59:00',75,-16.00,NULL),(52,79,NULL,0.0000,0.0000,'2025-05-26 03:59:00',79,10.00,25);
/*!40000 ALTER TABLE `participantPositionChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party` (
  `partyId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotePartyId` bigint unsigned NOT NULL,
  `firstName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middleName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateOfBirth` datetime DEFAULT NULL,
  PRIMARY KEY (`partyId`),
  KEY `party_quotepartyid_foreign` (`quotePartyId`),
  CONSTRAINT `party_quotepartyid_foreign` FOREIGN KEY (`quotePartyId`) REFERENCES `quoteParty` (`quotePartyId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Optional pers. data provided during Quote Request & Response';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` VALUES (1,1,'Firstname-Test',NULL,'Lastname-Test','1984-01-01 00:00:00');
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partyIdentifierType`
--

DROP TABLE IF EXISTS `partyIdentifierType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partyIdentifierType` (
  `partyIdentifierTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  PRIMARY KEY (`partyIdentifierTypeId`),
  UNIQUE KEY `partyidentifiertype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partyIdentifierType`
--

LOCK TABLES `partyIdentifierType` WRITE;
/*!40000 ALTER TABLE `partyIdentifierType` DISABLE KEYS */;
INSERT INTO `partyIdentifierType` VALUES (1,'MSISDN','An MSISDN (Mobile Station International Subscriber Directory Number; that is, a phone number) is used in reference to a Party'),(2,'EMAIL','An email is used in reference to a Party. The format of the email should be according to the informational RFC 3696'),(3,'PERSONAL_ID','A personal identifier is used in reference to a participant. Examples of personal identification are passport number, birth certificate number, and national registration number. The identifier number is added in the PartyIdentifier element. The personal identifier type is added in the PartySubIdOrType element'),(4,'BUSINESS','A specific Business (for example, an organization or a company) is used in reference to a participant. The BUSINESS identifier can be in any format. To make a transaction connected to a specific username or bill number in a Business, the PartySubIdOrType element should be used'),(5,'DEVICE','A specific device (for example, POS or ATM) ID connected to a specific business or organization is used in reference to a Party. For referencing a specific device under a specific business or organization, use the PartySubIdOrType element'),(6,'ACCOUNT_ID','A bank account number or FSP account ID should be used in reference to a participant. The ACCOUNT_ID identifier can be in any format, as formats can greatly differ depending on country and FSP'),(7,'IBAN','A bank account number or FSP account ID is used in reference to a participant. The IBAN identifier can consist of up to 34 alphanumeric characters and should be entered without whitespace'),(8,'ALIAS','An alias is used in reference to a participant. The alias should be created in the FSP as an alternative reference to an account owner. Another example of an alias is a username in the FSP system. The ALIAS identifier can be in any format. It is also possible to use the PartySubIdOrType element for identifying an account under an Alias defined by the PartyIdentifier');
/*!40000 ALTER TABLE `partyIdentifierType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partyType`
--

DROP TABLE IF EXISTS `partyType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partyType` (
  `partyTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(256) NOT NULL,
  PRIMARY KEY (`partyTypeId`),
  UNIQUE KEY `partytype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partyType`
--

LOCK TABLES `partyType` WRITE;
/*!40000 ALTER TABLE `partyType` DISABLE KEYS */;
INSERT INTO `partyType` VALUES (1,'PAYER','Represents the entity sending money'),(2,'PAYEE','Represents the entity receiving money');
/*!40000 ALTER TABLE `partyType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quote` (
  `quoteId` varchar(36) NOT NULL,
  `transactionReferenceId` varchar(36) NOT NULL COMMENT 'Common ID (decided by the Payer FSP) between the FSPs for the future transaction object',
  `transactionRequestId` varchar(36) DEFAULT NULL COMMENT 'Optional previously-sent transaction request',
  `note` text COMMENT 'A memo that will be attached to the transaction',
  `expirationDate` datetime DEFAULT NULL COMMENT 'Optional expiration for the requested transaction',
  `transactionInitiatorId` int unsigned NOT NULL COMMENT 'This is part of the transaction initiator',
  `transactionInitiatorTypeId` int unsigned NOT NULL COMMENT 'This is part of the transaction initiator type',
  `transactionScenarioId` int unsigned NOT NULL COMMENT 'This is part of the transaction scenario',
  `balanceOfPaymentsId` int unsigned DEFAULT NULL COMMENT 'This is part of the transaction type that contains the elements- balance of payment',
  `transactionSubScenarioId` int unsigned DEFAULT NULL COMMENT 'This is part of the transaction type sub scenario as defined by the local scheme',
  `amountTypeId` int unsigned NOT NULL COMMENT 'This is part of the transaction type that contains valid elements for - Amount Type',
  `amount` decimal(18,4) NOT NULL DEFAULT '0.0000' COMMENT 'The amount that the quote is being requested for. Need to be interpert in accordance with the amount type',
  `currencyId` varchar(255) DEFAULT NULL COMMENT 'Trading currency pertaining to the Amount',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`quoteId`),
  KEY `quote_transactionreferenceid_foreign` (`transactionReferenceId`),
  KEY `quote_transactionrequestid_foreign` (`transactionRequestId`),
  KEY `quote_transactioninitiatorid_foreign` (`transactionInitiatorId`),
  KEY `quote_transactioninitiatortypeid_foreign` (`transactionInitiatorTypeId`),
  KEY `quote_transactionscenarioid_foreign` (`transactionScenarioId`),
  KEY `quote_balanceofpaymentsid_foreign` (`balanceOfPaymentsId`),
  KEY `quote_transactionsubscenarioid_foreign` (`transactionSubScenarioId`),
  KEY `quote_amounttypeid_foreign` (`amountTypeId`),
  KEY `quote_currencyid_foreign` (`currencyId`),
  CONSTRAINT `quote_amounttypeid_foreign` FOREIGN KEY (`amountTypeId`) REFERENCES `amountType` (`amountTypeId`),
  CONSTRAINT `quote_balanceofpaymentsid_foreign` FOREIGN KEY (`balanceOfPaymentsId`) REFERENCES `balanceOfPayments` (`balanceOfPaymentsId`),
  CONSTRAINT `quote_currencyid_foreign` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `quote_transactioninitiatorid_foreign` FOREIGN KEY (`transactionInitiatorId`) REFERENCES `transactionInitiator` (`transactionInitiatorId`),
  CONSTRAINT `quote_transactioninitiatortypeid_foreign` FOREIGN KEY (`transactionInitiatorTypeId`) REFERENCES `transactionInitiatorType` (`transactionInitiatorTypeId`),
  CONSTRAINT `quote_transactionreferenceid_foreign` FOREIGN KEY (`transactionReferenceId`) REFERENCES `transactionReference` (`transactionReferenceId`),
  CONSTRAINT `quote_transactionscenarioid_foreign` FOREIGN KEY (`transactionScenarioId`) REFERENCES `transactionScenario` (`transactionScenarioId`),
  CONSTRAINT `quote_transactionsubscenarioid_foreign` FOREIGN KEY (`transactionSubScenarioId`) REFERENCES `transactionSubScenario` (`transactionSubScenarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote`
--

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
INSERT INTO `quote` VALUES ('01JW5BE5J461BN8YF3PSSJMW66','01JW5BE5J7ZHSSGFJBHWDMWAEJ','01JW5BE5J82W8Q7RDHB56PCB6K','test',NULL,1,1,1,NULL,NULL,2,100.0000,'XXX','2025-05-26 03:51:01');
/*!40000 ALTER TABLE `quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quoteDuplicateCheck`
--

DROP TABLE IF EXISTS `quoteDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quoteDuplicateCheck` (
  `quoteId` varchar(36) NOT NULL COMMENT 'Common ID between the FSPs for the quote object, decided by the Payer FSP',
  `hash` varchar(1024) DEFAULT NULL COMMENT 'hash value received for the quote request',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`quoteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteDuplicateCheck`
--

LOCK TABLES `quoteDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `quoteDuplicateCheck` DISABLE KEYS */;
INSERT INTO `quoteDuplicateCheck` VALUES ('01JW5BE5J461BN8YF3PSSJMW66','9b74d99d99626be697973eea1f1853cd5130b7f47c88373dbebe75d9f7f660c0','2025-05-26 03:51:01');
/*!40000 ALTER TABLE `quoteDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quoteError`
--

DROP TABLE IF EXISTS `quoteError`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quoteError` (
  `quoteErrorId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quoteId` varchar(36) NOT NULL COMMENT 'Common ID between the FSPs for the quote object, decided by the Payer FSP',
  `quoteResponseId` bigint unsigned DEFAULT NULL COMMENT 'The response to the intial quote',
  `errorCode` int unsigned NOT NULL,
  `errorDescription` varchar(128) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`quoteErrorId`),
  KEY `quoteerror_quoteid_foreign` (`quoteId`),
  KEY `quoteerror_quoteresponseid_foreign` (`quoteResponseId`),
  CONSTRAINT `quoteerror_quoteid_foreign` FOREIGN KEY (`quoteId`) REFERENCES `quote` (`quoteId`),
  CONSTRAINT `quoteerror_quoteresponseid_foreign` FOREIGN KEY (`quoteResponseId`) REFERENCES `quoteResponse` (`quoteResponseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteError`
--

LOCK TABLES `quoteError` WRITE;
/*!40000 ALTER TABLE `quoteError` DISABLE KEYS */;
/*!40000 ALTER TABLE `quoteError` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quoteExtension`
--

DROP TABLE IF EXISTS `quoteExtension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quoteExtension` (
  `quoteExtensionId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quoteId` varchar(36) NOT NULL COMMENT 'Common ID between the FSPs for the quote object, decided by the Payer FSP',
  `quoteResponseId` bigint unsigned DEFAULT NULL,
  `transactionId` varchar(36) DEFAULT NULL COMMENT 'The transaction reference that is part of the initial quote',
  `key` varchar(128) NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`quoteExtensionId`),
  KEY `quoteextension_quoteid_foreign` (`quoteId`),
  KEY `quoteextension_quoteresponseid_foreign` (`quoteResponseId`),
  KEY `quoteextension_transactionid_foreign` (`transactionId`),
  CONSTRAINT `quoteextension_quoteid_foreign` FOREIGN KEY (`quoteId`) REFERENCES `quote` (`quoteId`),
  CONSTRAINT `quoteextension_quoteresponseid_foreign` FOREIGN KEY (`quoteResponseId`) REFERENCES `quoteResponse` (`quoteResponseId`),
  CONSTRAINT `quoteextension_transactionid_foreign` FOREIGN KEY (`transactionId`) REFERENCES `transactionReference` (`transactionReferenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteExtension`
--

LOCK TABLES `quoteExtension` WRITE;
/*!40000 ALTER TABLE `quoteExtension` DISABLE KEYS */;
/*!40000 ALTER TABLE `quoteExtension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quoteParty`
--

DROP TABLE IF EXISTS `quoteParty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quoteParty` (
  `quotePartyId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quoteId` varchar(36) NOT NULL COMMENT 'Common ID between the FSPs for the quote object, decided by the Payer FSP',
  `partyTypeId` int unsigned NOT NULL COMMENT 'Specifies the type of party this row relates to; typically PAYER or PAYEE',
  `partyIdentifierTypeId` int unsigned NOT NULL COMMENT 'Specifies the type of identifier used to identify this party e.g. MSISDN, IBAN etc...',
  `partyIdentifierValue` varchar(128) NOT NULL COMMENT 'The value of the identifier used to identify this party',
  `partySubIdOrTypeId` varchar(128) DEFAULT NULL COMMENT 'A sub-identifier or sub-type for the Party',
  `fspId` varchar(255) DEFAULT NULL COMMENT 'This is the FSP ID as provided in the quote. For the switch between multi-parties it is required',
  `participantId` int unsigned DEFAULT NULL COMMENT 'Reference to the resolved FSP ID (if supplied/known). If not an error will be reported',
  `merchantClassificationCode` varchar(4) DEFAULT NULL COMMENT 'Used in the context of Payee Information, where the Payee happens to be a merchant accepting merchant payments',
  `partyName` varchar(128) DEFAULT NULL COMMENT 'Display name of the Party, could be a real name or a nick name',
  `transferParticipantRoleTypeId` int unsigned NOT NULL COMMENT 'The role this Party is playing in the transaction',
  `ledgerEntryTypeId` int unsigned NOT NULL COMMENT 'The type of financial entry this Party is presenting',
  `amount` decimal(18,4) NOT NULL,
  `currencyId` varchar(3) NOT NULL COMMENT 'Trading currency pertaining to the party amount',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`quotePartyId`),
  KEY `quoteparty_quoteid_foreign` (`quoteId`),
  KEY `quoteparty_partytypeid_foreign` (`partyTypeId`),
  KEY `quoteparty_partyidentifiertypeid_foreign` (`partyIdentifierTypeId`),
  KEY `quoteparty_partysubidortypeid_foreign` (`partySubIdOrTypeId`),
  KEY `quoteparty_participantid_foreign` (`participantId`),
  KEY `quoteparty_transferparticipantroletypeid_foreign` (`transferParticipantRoleTypeId`),
  KEY `quoteparty_ledgerentrytypeid_foreign` (`ledgerEntryTypeId`),
  KEY `quoteparty_currencyid_foreign` (`currencyId`),
  CONSTRAINT `quoteparty_currencyid_foreign` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `quoteparty_ledgerentrytypeid_foreign` FOREIGN KEY (`ledgerEntryTypeId`) REFERENCES `ledgerEntryType` (`ledgerEntryTypeId`),
  CONSTRAINT `quoteparty_participantid_foreign` FOREIGN KEY (`participantId`) REFERENCES `participant` (`participantId`),
  CONSTRAINT `quoteparty_partyidentifiertypeid_foreign` FOREIGN KEY (`partyIdentifierTypeId`) REFERENCES `partyIdentifierType` (`partyIdentifierTypeId`),
  CONSTRAINT `quoteparty_partytypeid_foreign` FOREIGN KEY (`partyTypeId`) REFERENCES `partyType` (`partyTypeId`),
  CONSTRAINT `quoteparty_quoteid_foreign` FOREIGN KEY (`quoteId`) REFERENCES `quote` (`quoteId`),
  CONSTRAINT `quoteparty_transferparticipantroletypeid_foreign` FOREIGN KEY (`transferParticipantRoleTypeId`) REFERENCES `transferParticipantRoleType` (`transferParticipantRoleTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteParty`
--

LOCK TABLES `quoteParty` WRITE;
/*!40000 ALTER TABLE `quoteParty` DISABLE KEYS */;
INSERT INTO `quoteParty` VALUES (1,'01JW5BE5J461BN8YF3PSSJMW66',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-26 03:51:01'),(2,'01JW5BE5J461BN8YF3PSSJMW66',2,1,'27713803912',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-26 03:51:01');
/*!40000 ALTER TABLE `quoteParty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotePartyIdInfoExtension`
--

DROP TABLE IF EXISTS `quotePartyIdInfoExtension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotePartyIdInfoExtension` (
  `quotePartyIdInfoExtensionId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotePartyId` bigint unsigned NOT NULL COMMENT 'quotePartyId: a common id between the tables quotePartyIdInfoExtension and quoteParty',
  `key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`quotePartyIdInfoExtensionId`),
  KEY `quotepartyidinfoextension_quotepartyid_foreign` (`quotePartyId`),
  CONSTRAINT `quotepartyidinfoextension_quotepartyid_foreign` FOREIGN KEY (`quotePartyId`) REFERENCES `quoteParty` (`quotePartyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotePartyIdInfoExtension`
--

LOCK TABLES `quotePartyIdInfoExtension` WRITE;
/*!40000 ALTER TABLE `quotePartyIdInfoExtension` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotePartyIdInfoExtension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `quotePartyView`
--

DROP TABLE IF EXISTS `quotePartyView`;
/*!50001 DROP VIEW IF EXISTS `quotePartyView`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quotePartyView` AS SELECT 
 1 AS `quoteId`,
 1 AS `quotePartyId`,
 1 AS `partyType`,
 1 AS `identifierType`,
 1 AS `partyIdentifierValue`,
 1 AS `partySubIdOrType`,
 1 AS `fspId`,
 1 AS `merchantClassificationCode`,
 1 AS `partyName`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `middleName`,
 1 AS `dateOfBirth`,
 1 AS `longitude`,
 1 AS `latitude`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `quoteResponse`
--

DROP TABLE IF EXISTS `quoteResponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quoteResponse` (
  `quoteResponseId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quoteId` varchar(36) NOT NULL COMMENT 'Common ID between the FSPs for the quote object, decided by the Payer FSP',
  `transferAmountCurrencyId` varchar(3) NOT NULL COMMENT 'CurrencyId of the transfer amount',
  `transferAmount` decimal(18,4) NOT NULL COMMENT 'The amount of money that the Payer FSP should transfer to the Payee FSP',
  `payeeReceiveAmountCurrencyId` varchar(3) DEFAULT NULL COMMENT 'CurrencyId of the payee receive amount',
  `payeeReceiveAmount` decimal(18,4) DEFAULT NULL COMMENT 'The amount of Money that the Payee should receive in the end-to-end transaction. Optional as the Payee FSP might not want to disclose any optional Payee fees',
  `payeeFspFeeCurrencyId` varchar(3) DEFAULT NULL COMMENT 'CurrencyId of the payee fsp fee amount',
  `payeeFspFeeAmount` decimal(18,4) DEFAULT NULL COMMENT 'Payee FSP’s part of the transaction fee',
  `payeeFspCommissionCurrencyId` varchar(3) DEFAULT NULL COMMENT 'CurrencyId of the payee fsp commission amount',
  `payeeFspCommissionAmount` decimal(18,4) DEFAULT NULL COMMENT 'Transaction commission from the Payee FSP',
  `ilpCondition` varchar(256) NOT NULL,
  `responseExpirationDate` datetime DEFAULT NULL COMMENT 'Optional expiration for the requested transaction',
  `isValid` tinyint(1) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`quoteResponseId`),
  KEY `quoteresponse_quoteid_foreign` (`quoteId`),
  KEY `quoteresponse_transferamountcurrencyid_foreign` (`transferAmountCurrencyId`),
  KEY `quoteresponse_payeereceiveamountcurrencyid_foreign` (`payeeReceiveAmountCurrencyId`),
  KEY `quoteresponse_payeefspcommissioncurrencyid_foreign` (`payeeFspCommissionCurrencyId`),
  CONSTRAINT `quoteresponse_payeefspcommissioncurrencyid_foreign` FOREIGN KEY (`payeeFspCommissionCurrencyId`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `quoteresponse_payeereceiveamountcurrencyid_foreign` FOREIGN KEY (`payeeReceiveAmountCurrencyId`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `quoteresponse_quoteid_foreign` FOREIGN KEY (`quoteId`) REFERENCES `quote` (`quoteId`),
  CONSTRAINT `quoteresponse_transferamountcurrencyid_foreign` FOREIGN KEY (`transferAmountCurrencyId`) REFERENCES `currency` (`currencyId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='This table is the primary store for quote responses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteResponse`
--

LOCK TABLES `quoteResponse` WRITE;
/*!40000 ALTER TABLE `quoteResponse` DISABLE KEYS */;
INSERT INTO `quoteResponse` VALUES (1,'01JW5BE5J461BN8YF3PSSJMW66','XXX',100.0000,NULL,NULL,'XXX',5.0000,'XXX',5.0000,'3GwM2FB0ynmJQ5B6Dnsb64l5bVCNLG9yGdSS26HzDnk','2025-05-26 03:52:01',1,'2025-05-26 03:51:02');
/*!40000 ALTER TABLE `quoteResponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quoteResponseDuplicateCheck`
--

DROP TABLE IF EXISTS `quoteResponseDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quoteResponseDuplicateCheck` (
  `quoteResponseId` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'The response to the intial quote',
  `quoteId` varchar(36) NOT NULL COMMENT 'Common ID between the FSPs for the quote object, decided by the Payer FSP',
  `hash` varchar(255) DEFAULT NULL COMMENT 'hash value received for the quote response',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`quoteResponseId`),
  KEY `quoteresponseduplicatecheck_quoteid_foreign` (`quoteId`),
  CONSTRAINT `quoteresponseduplicatecheck_quoteid_foreign` FOREIGN KEY (`quoteId`) REFERENCES `quote` (`quoteId`),
  CONSTRAINT `quoteresponseduplicatecheck_quoteresponseid_foreign` FOREIGN KEY (`quoteResponseId`) REFERENCES `quoteResponse` (`quoteResponseId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteResponseDuplicateCheck`
--

LOCK TABLES `quoteResponseDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `quoteResponseDuplicateCheck` DISABLE KEYS */;
INSERT INTO `quoteResponseDuplicateCheck` VALUES (1,'01JW5BE5J461BN8YF3PSSJMW66','04c7900d40d28d3f230d96c11e20e4101f14b54f45582b016f386101ed9c29ad','2025-05-26 03:51:02');
/*!40000 ALTER TABLE `quoteResponseDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quoteResponseIlpPacket`
--

DROP TABLE IF EXISTS `quoteResponseIlpPacket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quoteResponseIlpPacket` (
  `quoteResponseId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `value` text NOT NULL COMMENT 'ilpPacket returned from Payee in response to a quote request',
  PRIMARY KEY (`quoteResponseId`),
  CONSTRAINT `quoteresponseilppacket_quoteresponseid_foreign` FOREIGN KEY (`quoteResponseId`) REFERENCES `quoteResponse` (`quoteResponseId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteResponseIlpPacket`
--

LOCK TABLES `quoteResponseIlpPacket` WRITE;
/*!40000 ALTER TABLE `quoteResponseIlpPacket` DISABLE KEYS */;
INSERT INTO `quoteResponseIlpPacket` VALUES (1,'AYIDNAAAAAAAD0JAHWcucGF5ZWVmc3AubXNpc2RuLjI3NzEzODAzOTEyggMKZXlKeGRXOTBaVWxrSWpvaU1ERktWelZDUlRWS05EWXhRazQ0V1VZelVGTlRTazFYTmpZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWelZDUlRWS04xcElVMU5IUmtwQ1NGZEVUVmRCUlVvaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtOUFRsTlZUVVZTSW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZTd2ljR1Z5YzI5dVlXeEpibVp2SWpwN0ltTnZiWEJzWlhoT1lXMWxJanA3SW1acGNuTjBUbUZ0WlNJNklrWnBjbk4wYm1GdFpTMVVaWE4wSWl3aWJHRnpkRTVoYldVaU9pSk1ZWE4wYm1GdFpTMVVaWE4wSW4wc0ltUmhkR1ZQWmtKcGNuUm9Jam9pTVRrNE5DMHdNUzB3TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpaVU1ETTZOVEk2TURFdU1qQXdXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQA');
/*!40000 ALTER TABLE `quoteResponseIlpPacket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `quoteResponseView`
--

DROP TABLE IF EXISTS `quoteResponseView`;
/*!50001 DROP VIEW IF EXISTS `quoteResponseView`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quoteResponseView` AS SELECT 
 1 AS `quoteResponseId`,
 1 AS `quoteId`,
 1 AS `transferAmountCurrencyId`,
 1 AS `transferAmount`,
 1 AS `payeeReceiveAmountCurrencyId`,
 1 AS `payeeReceiveAmount`,
 1 AS `payeeFspFeeCurrencyId`,
 1 AS `payeeFspFeeAmount`,
 1 AS `payeeFspCommissionCurrencyId`,
 1 AS `payeeFspCommissionAmount`,
 1 AS `ilpCondition`,
 1 AS `responseExpirationDate`,
 1 AS `isValid`,
 1 AS `createdDate`,
 1 AS `ilpPacket`,
 1 AS `longitude`,
 1 AS `latitude`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `quoteView`
--

DROP TABLE IF EXISTS `quoteView`;
/*!50001 DROP VIEW IF EXISTS `quoteView`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quoteView` AS SELECT 
 1 AS `quoteId`,
 1 AS `transactionReferenceId`,
 1 AS `transactionRequestId`,
 1 AS `note`,
 1 AS `expirationDate`,
 1 AS `transactionInitiator`,
 1 AS `transactionInitiatorType`,
 1 AS `transactionScenario`,
 1 AS `balanceOfPaymentsId`,
 1 AS `transactionSubScenario`,
 1 AS `amountType`,
 1 AS `amount`,
 1 AS `currency`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `segment`
--

DROP TABLE IF EXISTS `segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `segment` (
  `segmentId` int unsigned NOT NULL AUTO_INCREMENT,
  `segmentType` varchar(50) NOT NULL,
  `enumeration` int NOT NULL DEFAULT '0',
  `tableName` varchar(50) NOT NULL,
  `value` bigint NOT NULL,
  `changedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`segmentId`),
  KEY `segment_keys_index` (`segmentType`,`enumeration`,`tableName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segment`
--

LOCK TABLES `segment` WRITE;
/*!40000 ALTER TABLE `segment` DISABLE KEYS */;
INSERT INTO `segment` VALUES (1,'timeout',0,'transferStateChange',81,'2025-05-23 13:52:00'),(2,'timeout',0,'fxTransferStateChange',25,'2025-05-23 13:52:00');
/*!40000 ALTER TABLE `segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlement`
--

DROP TABLE IF EXISTS `settlement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlement` (
  `settlementId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currentStateChangeId` bigint unsigned DEFAULT NULL,
  `settlementModelId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`settlementId`),
  KEY `settlement_currentstatechangeid_foreign` (`currentStateChangeId`),
  KEY `settlement_settlementmodelid_foreign` (`settlementModelId`),
  CONSTRAINT `settlement_currentstatechangeid_foreign` FOREIGN KEY (`currentStateChangeId`) REFERENCES `settlementStateChange` (`settlementStateChangeId`),
  CONSTRAINT `settlement_settlementmodelid_foreign` FOREIGN KEY (`settlementModelId`) REFERENCES `settlementModel` (`settlementModelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlement`
--

LOCK TABLES `settlement` WRITE;
/*!40000 ALTER TABLE `settlement` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementContentAggregation`
--

DROP TABLE IF EXISTS `settlementContentAggregation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementContentAggregation` (
  `settlementContentAggregationId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlementWindowContentId` bigint unsigned NOT NULL,
  `participantCurrencyId` int unsigned NOT NULL,
  `transferParticipantRoleTypeId` int unsigned NOT NULL,
  `ledgerEntryTypeId` int unsigned NOT NULL,
  `amount` decimal(18,4) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currentStateId` varchar(50) NOT NULL,
  `settlementId` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`settlementContentAggregationId`),
  KEY `settlementcontentaggregation_settlementwindowcontentid_index` (`settlementWindowContentId`),
  KEY `settlementcontentaggregation_participantcurrencyid_index` (`participantCurrencyId`),
  KEY `settlementcontentaggregation_transferparticipantroletypeid_index` (`transferParticipantRoleTypeId`),
  KEY `settlementcontentaggregation_ledgerentrytypeid_index` (`ledgerEntryTypeId`),
  KEY `settlementcontentaggregation_currentstateid_index` (`currentStateId`),
  KEY `settlementcontentaggregation_settlementid_index` (`settlementId`),
  CONSTRAINT `sca_transferparticipantroletypeid_foreign` FOREIGN KEY (`transferParticipantRoleTypeId`) REFERENCES `transferParticipantRoleType` (`transferParticipantRoleTypeId`),
  CONSTRAINT `settlementcontentaggregation_currentstateid_foreign` FOREIGN KEY (`currentStateId`) REFERENCES `settlementWindowState` (`settlementWindowStateId`),
  CONSTRAINT `settlementcontentaggregation_ledgerentrytypeid_foreign` FOREIGN KEY (`ledgerEntryTypeId`) REFERENCES `ledgerEntryType` (`ledgerEntryTypeId`),
  CONSTRAINT `settlementcontentaggregation_participantcurrencyid_foreign` FOREIGN KEY (`participantCurrencyId`) REFERENCES `participantCurrency` (`participantCurrencyId`),
  CONSTRAINT `settlementcontentaggregation_settlementid_foreign` FOREIGN KEY (`settlementId`) REFERENCES `settlement` (`settlementId`),
  CONSTRAINT `settlementcontentaggregation_settlementwindowcontentid_foreign` FOREIGN KEY (`settlementWindowContentId`) REFERENCES `settlementWindowContent` (`settlementWindowContentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementContentAggregation`
--

LOCK TABLES `settlementContentAggregation` WRITE;
/*!40000 ALTER TABLE `settlementContentAggregation` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlementContentAggregation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementDelay`
--

DROP TABLE IF EXISTS `settlementDelay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementDelay` (
  `settlementDelayId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`settlementDelayId`),
  UNIQUE KEY `settlementdelay_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementDelay`
--

LOCK TABLES `settlementDelay` WRITE;
/*!40000 ALTER TABLE `settlementDelay` DISABLE KEYS */;
INSERT INTO `settlementDelay` VALUES (1,'IMMEDIATE',NULL,1,'2025-05-23 13:49:04'),(2,'DEFERRED',NULL,1,'2025-05-23 13:49:04');
/*!40000 ALTER TABLE `settlementDelay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementGranularity`
--

DROP TABLE IF EXISTS `settlementGranularity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementGranularity` (
  `settlementGranularityId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`settlementGranularityId`),
  UNIQUE KEY `settlementgranularity_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementGranularity`
--

LOCK TABLES `settlementGranularity` WRITE;
/*!40000 ALTER TABLE `settlementGranularity` DISABLE KEYS */;
INSERT INTO `settlementGranularity` VALUES (1,'GROSS',NULL,1,'2025-05-23 13:49:04'),(2,'NET',NULL,1,'2025-05-23 13:49:04');
/*!40000 ALTER TABLE `settlementGranularity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementInterchange`
--

DROP TABLE IF EXISTS `settlementInterchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementInterchange` (
  `settlementInterchangeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`settlementInterchangeId`),
  UNIQUE KEY `settlementinterchange_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementInterchange`
--

LOCK TABLES `settlementInterchange` WRITE;
/*!40000 ALTER TABLE `settlementInterchange` DISABLE KEYS */;
INSERT INTO `settlementInterchange` VALUES (1,'BILATERAL',NULL,1,'2025-05-23 13:49:04'),(2,'MULTILATERAL',NULL,1,'2025-05-23 13:49:04');
/*!40000 ALTER TABLE `settlementInterchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementModel`
--

DROP TABLE IF EXISTS `settlementModel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementModel` (
  `settlementModelId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `settlementGranularityId` int unsigned NOT NULL,
  `settlementInterchangeId` int unsigned NOT NULL,
  `settlementDelayId` int unsigned NOT NULL,
  `currencyId` varchar(3) DEFAULT NULL,
  `requireLiquidityCheck` tinyint(1) NOT NULL DEFAULT '1',
  `ledgerAccountTypeId` int unsigned NOT NULL,
  `autoPositionReset` tinyint(1) NOT NULL DEFAULT '0',
  `adjustPosition` tinyint(1) NOT NULL DEFAULT '0',
  `settlementAccountTypeId` int NOT NULL,
  PRIMARY KEY (`settlementModelId`),
  UNIQUE KEY `settlementmodel_name_unique` (`name`),
  UNIQUE KEY `settlementmodel_unique` (`settlementGranularityId`,`settlementInterchangeId`,`settlementDelayId`,`ledgerAccountTypeId`,`currencyId`),
  UNIQUE KEY `settlementmodel_uniqueAccountCurrency` (`ledgerAccountTypeId`,`currencyId`),
  UNIQUE KEY `settlementmodel_currencyid_ledgeraccounttypeid_unique` (`currencyId`,`ledgerAccountTypeId`),
  KEY `settlementmodel_settlementgranularityid_index` (`settlementGranularityId`),
  KEY `settlementmodel_settlementinterchangeid_index` (`settlementInterchangeId`),
  KEY `settlementmodel_settlementdelayid_index` (`settlementDelayId`),
  KEY `settlementmodel_currencyid_index` (`currencyId`),
  KEY `settlementmodel_ledgeraccounttypeid_index` (`ledgerAccountTypeId`),
  CONSTRAINT `settlementmodel_currencyid_foreign` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `settlementmodel_ledgeraccounttypeid_foreign` FOREIGN KEY (`ledgerAccountTypeId`) REFERENCES `ledgerAccountType` (`ledgerAccountTypeId`),
  CONSTRAINT `settlementmodel_settlementdelayid_foreign` FOREIGN KEY (`settlementDelayId`) REFERENCES `settlementDelay` (`settlementDelayId`),
  CONSTRAINT `settlementmodel_settlementgranularityid_foreign` FOREIGN KEY (`settlementGranularityId`) REFERENCES `settlementGranularity` (`settlementGranularityId`),
  CONSTRAINT `settlementmodel_settlementinterchangeid_foreign` FOREIGN KEY (`settlementInterchangeId`) REFERENCES `settlementInterchange` (`settlementInterchangeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementModel`
--

LOCK TABLES `settlementModel` WRITE;
/*!40000 ALTER TABLE `settlementModel` DISABLE KEYS */;
INSERT INTO `settlementModel` VALUES (1,'DEFERREDNETXXX',1,2,2,2,'XXX',1,1,1,0,2),(2,'DEFAULTDEFERREDNET',1,2,2,2,NULL,1,1,1,0,2),(3,'CGS',1,1,1,1,'INR',1,1,0,0,2),(4,'INTERCHANGEFEE',1,2,2,2,'INR',0,5,1,0,6);
/*!40000 ALTER TABLE `settlementModel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementParticipantCurrency`
--

DROP TABLE IF EXISTS `settlementParticipantCurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementParticipantCurrency` (
  `settlementParticipantCurrencyId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlementId` bigint unsigned NOT NULL,
  `participantCurrencyId` int unsigned NOT NULL,
  `netAmount` decimal(18,4) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currentStateChangeId` bigint unsigned DEFAULT NULL,
  `settlementTransferId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`settlementParticipantCurrencyId`),
  KEY `settlementparticipantcurrency_settlementid_index` (`settlementId`),
  KEY `settlementparticipantcurrency_participantcurrencyid_index` (`participantCurrencyId`),
  KEY `settlementparticipantcurrency_settlementtransferid_index` (`settlementTransferId`),
  KEY `spc_currentstatechangeid_foreign` (`currentStateChangeId`),
  CONSTRAINT `settlementparticipantcurrency_participantcurrencyid_foreign` FOREIGN KEY (`participantCurrencyId`) REFERENCES `participantCurrency` (`participantCurrencyId`),
  CONSTRAINT `settlementparticipantcurrency_settlementid_foreign` FOREIGN KEY (`settlementId`) REFERENCES `settlement` (`settlementId`),
  CONSTRAINT `spc_currentstatechangeid_foreign` FOREIGN KEY (`currentStateChangeId`) REFERENCES `settlementParticipantCurrencyStateChange` (`settlementParticipantCurrencyStateChangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementParticipantCurrency`
--

LOCK TABLES `settlementParticipantCurrency` WRITE;
/*!40000 ALTER TABLE `settlementParticipantCurrency` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlementParticipantCurrency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementParticipantCurrencyStateChange`
--

DROP TABLE IF EXISTS `settlementParticipantCurrencyStateChange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementParticipantCurrencyStateChange` (
  `settlementParticipantCurrencyStateChangeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlementParticipantCurrencyId` bigint unsigned NOT NULL,
  `settlementStateId` varchar(50) NOT NULL,
  `reason` varchar(512) DEFAULT NULL,
  `externalReference` varchar(50) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`settlementParticipantCurrencyStateChangeId`),
  KEY `spcsc_settlementparticipantcurrencyid_index` (`settlementParticipantCurrencyId`),
  KEY `spcsc_settlementstateid_index` (`settlementStateId`),
  CONSTRAINT `spcsc_settlementparticipantcurrencyid_foreign` FOREIGN KEY (`settlementParticipantCurrencyId`) REFERENCES `settlementParticipantCurrency` (`settlementParticipantCurrencyId`),
  CONSTRAINT `spcsc_settlementstateid_foreign` FOREIGN KEY (`settlementStateId`) REFERENCES `settlementState` (`settlementStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementParticipantCurrencyStateChange`
--

LOCK TABLES `settlementParticipantCurrencyStateChange` WRITE;
/*!40000 ALTER TABLE `settlementParticipantCurrencyStateChange` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlementParticipantCurrencyStateChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementSettlementWindow`
--

DROP TABLE IF EXISTS `settlementSettlementWindow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementSettlementWindow` (
  `settlementSettlementWindowId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlementId` bigint unsigned NOT NULL,
  `settlementWindowId` bigint unsigned NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`settlementSettlementWindowId`),
  UNIQUE KEY `settlementsettlementwindow_unique` (`settlementId`,`settlementWindowId`),
  KEY `settlementsettlementwindow_settlementid_index` (`settlementId`),
  KEY `settlementsettlementwindow_settlementwindowid_index` (`settlementWindowId`),
  CONSTRAINT `settlementsettlementwindow_settlementid_foreign` FOREIGN KEY (`settlementId`) REFERENCES `settlement` (`settlementId`),
  CONSTRAINT `settlementsettlementwindow_settlementwindowid_foreign` FOREIGN KEY (`settlementWindowId`) REFERENCES `settlementWindow` (`settlementWindowId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementSettlementWindow`
--

LOCK TABLES `settlementSettlementWindow` WRITE;
/*!40000 ALTER TABLE `settlementSettlementWindow` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlementSettlementWindow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementState`
--

DROP TABLE IF EXISTS `settlementState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementState` (
  `settlementStateId` varchar(50) NOT NULL,
  `enumeration` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`settlementStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementState`
--

LOCK TABLES `settlementState` WRITE;
/*!40000 ALTER TABLE `settlementState` DISABLE KEYS */;
INSERT INTO `settlementState` VALUES ('ABORTED','ABORTED','Final state when the settlement is not possible.',1,'2025-05-23 13:49:04'),('PENDING_SETTLEMENT','PENDING_SETTLEMENT','The net settlement report for this window has been taken, with the parameter set to indicate that settlement is to be processed.',1,'2025-05-23 13:49:04'),('PS_TRANSFERS_COMMITTED','PS_TRANSFERS_COMMITTED','All the credit entries for the MLNS transfers are committed. An identifier might be received and recorded from the Settlement bank to allow reconciliation.',1,'2025-05-23 13:49:04'),('PS_TRANSFERS_RECORDED','PS_TRANSFERS_RECORDED','Record transfer entries against the Position Account and the Multi-lateral Net Settlement Account, these are the \"multi-lateral net  settlement transfers\" (MLNS transfers). An identifier might be provided to be past to the reference bank.',1,'2025-05-23 13:49:04'),('PS_TRANSFERS_RESERVED','PS_TRANSFERS_RESERVED','All the debit entries for the MLNS transfers are reserved.',1,'2025-05-23 13:49:04'),('SETTLED','SETTLED','When all outstanding accounts are SETTLED, the entire Settlement is moved to SETTLED.',1,'2025-05-23 13:49:04'),('SETTLING','SETTLING','If all accounts are not yet SETTLED, the Status of the settlement is moved to SETTLING. Note: applies only on settlement level.',1,'2025-05-23 13:49:04');
/*!40000 ALTER TABLE `settlementState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementStateChange`
--

DROP TABLE IF EXISTS `settlementStateChange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementStateChange` (
  `settlementStateChangeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlementId` bigint unsigned NOT NULL,
  `settlementStateId` varchar(50) NOT NULL,
  `reason` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`settlementStateChangeId`),
  KEY `settlementstatechange_settlementid_index` (`settlementId`),
  KEY `settlementstatechange_settlementstateid_index` (`settlementStateId`),
  CONSTRAINT `settlementstatechange_settlementid_foreign` FOREIGN KEY (`settlementId`) REFERENCES `settlement` (`settlementId`),
  CONSTRAINT `settlementstatechange_settlementstateid_foreign` FOREIGN KEY (`settlementStateId`) REFERENCES `settlementState` (`settlementStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementStateChange`
--

LOCK TABLES `settlementStateChange` WRITE;
/*!40000 ALTER TABLE `settlementStateChange` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlementStateChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementTransferParticipant`
--

DROP TABLE IF EXISTS `settlementTransferParticipant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementTransferParticipant` (
  `settlementTransferParticipantId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlementId` bigint unsigned NOT NULL,
  `settlementWindowId` bigint unsigned NOT NULL,
  `participantCurrencyId` int unsigned NOT NULL,
  `transferParticipantRoleTypeId` int unsigned NOT NULL,
  `ledgerEntryTypeId` int unsigned NOT NULL,
  `amount` decimal(18,4) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`settlementTransferParticipantId`),
  KEY `settlementtransferparticipant_settlementid_index` (`settlementId`),
  KEY `settlementtransferparticipant_settlementwindowid_index` (`settlementWindowId`),
  KEY `settlementtransferparticipant_participantcurrencyid_index` (`participantCurrencyId`),
  KEY `stp_transferparticipantroletypeid_index` (`transferParticipantRoleTypeId`),
  KEY `settlementtransferparticipant_ledgerentrytypeid_index` (`ledgerEntryTypeId`),
  CONSTRAINT `settlementtransferparticipant_ledgerentrytypeid_foreign` FOREIGN KEY (`ledgerEntryTypeId`) REFERENCES `ledgerEntryType` (`ledgerEntryTypeId`),
  CONSTRAINT `settlementtransferparticipant_participantcurrencyid_foreign` FOREIGN KEY (`participantCurrencyId`) REFERENCES `participantCurrency` (`participantCurrencyId`),
  CONSTRAINT `settlementtransferparticipant_settlementid_foreign` FOREIGN KEY (`settlementId`) REFERENCES `settlement` (`settlementId`),
  CONSTRAINT `settlementtransferparticipant_settlementwindowid_foreign` FOREIGN KEY (`settlementWindowId`) REFERENCES `settlementWindow` (`settlementWindowId`),
  CONSTRAINT `stp_transferparticipantroletypeid_foreign` FOREIGN KEY (`transferParticipantRoleTypeId`) REFERENCES `transferParticipantRoleType` (`transferParticipantRoleTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementTransferParticipant`
--

LOCK TABLES `settlementTransferParticipant` WRITE;
/*!40000 ALTER TABLE `settlementTransferParticipant` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlementTransferParticipant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementWindow`
--

DROP TABLE IF EXISTS `settlementWindow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementWindow` (
  `settlementWindowId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currentStateChangeId` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`settlementWindowId`),
  KEY `settlementwindow_currentstatechangeid_foreign` (`currentStateChangeId`),
  CONSTRAINT `settlementwindow_currentstatechangeid_foreign` FOREIGN KEY (`currentStateChangeId`) REFERENCES `settlementWindowStateChange` (`settlementWindowStateChangeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindow`
--

LOCK TABLES `settlementWindow` WRITE;
/*!40000 ALTER TABLE `settlementWindow` DISABLE KEYS */;
INSERT INTO `settlementWindow` VALUES (1,'initial window','2025-05-23 13:49:04',1);
/*!40000 ALTER TABLE `settlementWindow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementWindowContent`
--

DROP TABLE IF EXISTS `settlementWindowContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementWindowContent` (
  `settlementWindowContentId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlementWindowId` bigint unsigned NOT NULL,
  `ledgerAccountTypeId` int unsigned NOT NULL,
  `currencyId` varchar(3) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currentStateChangeId` bigint unsigned DEFAULT NULL,
  `settlementId` bigint unsigned DEFAULT NULL,
  `SettlementModelId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`settlementWindowContentId`),
  KEY `settlementwindowcontent_settlementwindowid_index` (`settlementWindowId`),
  KEY `settlementwindowcontent_ledgeraccounttypeid_index` (`ledgerAccountTypeId`),
  KEY `settlementwindowcontent_currencyid_index` (`currencyId`),
  KEY `settlementwindowcontent_currentstatechangeid_index` (`currentStateChangeId`),
  KEY `settlementwindowcontent_settlementid_index` (`settlementId`),
  KEY `settlementwindowcontent_settlementmodelid_foreign` (`SettlementModelId`),
  CONSTRAINT `settlementwindowcontent_currencyid_foreign` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `settlementwindowcontent_currentstatechangeid_foreign` FOREIGN KEY (`currentStateChangeId`) REFERENCES `settlementWindowContentStateChange` (`settlementWindowContentStateChangeId`),
  CONSTRAINT `settlementwindowcontent_ledgeraccounttypeid_foreign` FOREIGN KEY (`ledgerAccountTypeId`) REFERENCES `ledgerAccountType` (`ledgerAccountTypeId`),
  CONSTRAINT `settlementwindowcontent_settlementid_foreign` FOREIGN KEY (`settlementId`) REFERENCES `settlement` (`settlementId`),
  CONSTRAINT `settlementwindowcontent_settlementmodelid_foreign` FOREIGN KEY (`SettlementModelId`) REFERENCES `settlementModel` (`settlementModelId`),
  CONSTRAINT `settlementwindowcontent_settlementwindowid_foreign` FOREIGN KEY (`settlementWindowId`) REFERENCES `settlementWindow` (`settlementWindowId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindowContent`
--

LOCK TABLES `settlementWindowContent` WRITE;
/*!40000 ALTER TABLE `settlementWindowContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlementWindowContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementWindowContentStateChange`
--

DROP TABLE IF EXISTS `settlementWindowContentStateChange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementWindowContentStateChange` (
  `settlementWindowContentStateChangeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlementWindowContentId` bigint unsigned NOT NULL,
  `settlementWindowStateId` varchar(50) NOT NULL,
  `reason` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`settlementWindowContentStateChangeId`),
  KEY `swcsc_settlementwindowcontentid_index` (`settlementWindowContentId`),
  KEY `swcsc_settlementwindowstateid_index` (`settlementWindowStateId`),
  CONSTRAINT `swc_settlementwindowcontentid_foreign` FOREIGN KEY (`settlementWindowContentId`) REFERENCES `settlementWindowContent` (`settlementWindowContentId`),
  CONSTRAINT `sws1_settlementwindowstateid_foreign` FOREIGN KEY (`settlementWindowStateId`) REFERENCES `settlementWindowState` (`settlementWindowStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindowContentStateChange`
--

LOCK TABLES `settlementWindowContentStateChange` WRITE;
/*!40000 ALTER TABLE `settlementWindowContentStateChange` DISABLE KEYS */;
/*!40000 ALTER TABLE `settlementWindowContentStateChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementWindowState`
--

DROP TABLE IF EXISTS `settlementWindowState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementWindowState` (
  `settlementWindowStateId` varchar(50) NOT NULL,
  `enumeration` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`settlementWindowStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindowState`
--

LOCK TABLES `settlementWindowState` WRITE;
/*!40000 ALTER TABLE `settlementWindowState` DISABLE KEYS */;
INSERT INTO `settlementWindowState` VALUES ('ABORTED','ABORTED','Window returned to this state when the settlement was not possible. This window may now be included in a future settlement.',1,'2025-05-23 13:49:04'),('CLOSED','CLOSED','Settlement Window is not accepting any additional transfers. All new transfers are being allocated to the OPEN Settlement Window.',1,'2025-05-23 13:49:04'),('FAILED','FAILED','Used when close window processing failed and all retries have been exhausted.',1,'2025-05-23 13:49:04'),('OPEN','OPEN','Current window into which Fulfilled transfers are being allocated. Only one window should be open at a time.',1,'2025-05-23 13:49:04'),('PENDING_SETTLEMENT','PENDING_SETTLEMENT','The net settlement report for this window has been taken, with the parameter set to indicate that settlement is to be processed.',1,'2025-05-23 13:49:04'),('PROCESSING','PROCESSING','Intermediate state when closing a window.',1,'2025-05-23 13:49:04'),('SETTLED','SETTLED','The Hub Operator/Settlement Bank has confirmed that all the participants that engaged in the settlement window have now settled their payments in accordance with the net settlement report.',1,'2025-05-23 13:49:04');
/*!40000 ALTER TABLE `settlementWindowState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlementWindowStateChange`
--

DROP TABLE IF EXISTS `settlementWindowStateChange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settlementWindowStateChange` (
  `settlementWindowStateChangeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlementWindowId` bigint unsigned NOT NULL,
  `settlementWindowStateId` varchar(50) NOT NULL,
  `reason` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`settlementWindowStateChangeId`),
  KEY `settlementwindowstatechange_settlementwindowid_index` (`settlementWindowId`),
  KEY `settlementwindowstatechange_settlementwindowstateid_index` (`settlementWindowStateId`),
  CONSTRAINT `settlementwindowstatechange_settlementwindowid_foreign` FOREIGN KEY (`settlementWindowId`) REFERENCES `settlementWindow` (`settlementWindowId`),
  CONSTRAINT `settlementwindowstatechange_settlementwindowstateid_foreign` FOREIGN KEY (`settlementWindowStateId`) REFERENCES `settlementWindowState` (`settlementWindowStateId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindowStateChange`
--

LOCK TABLES `settlementWindowStateChange` WRITE;
/*!40000 ALTER TABLE `settlementWindowStateChange` DISABLE KEYS */;
INSERT INTO `settlementWindowStateChange` VALUES (1,1,'OPEN','initial window','2025-05-23 13:49:04');
/*!40000 ALTER TABLE `settlementWindowStateChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `tokenId` int unsigned NOT NULL AUTO_INCREMENT,
  `participantId` int unsigned NOT NULL,
  `value` varchar(256) NOT NULL,
  `expiration` bigint DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tokenId`),
  UNIQUE KEY `token_value_unique` (`value`),
  KEY `token_participantid_index` (`participantId`),
  CONSTRAINT `token_participantid_foreign` FOREIGN KEY (`participantId`) REFERENCES `participant` (`participantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionInitiator`
--

DROP TABLE IF EXISTS `transactionInitiator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactionInitiator` (
  `transactionInitiatorId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`transactionInitiatorId`),
  UNIQUE KEY `transactioninitiator_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionInitiator`
--

LOCK TABLES `transactionInitiator` WRITE;
/*!40000 ALTER TABLE `transactionInitiator` DISABLE KEYS */;
INSERT INTO `transactionInitiator` VALUES (1,'PAYER','Sender of funds is initiating the transaction. The account to send from is either owned by the Payer or is connected to the Payer in some way','2025-05-23 13:49:04'),(2,'PAYEE','Recipient of the funds is initiating the transaction by sending a transaction request. The Payer must approve the transaction, either automatically by a pre-generated OTP or by pre-approval of the Payee, or manually by approving on their own Device','2025-05-23 13:49:04');
/*!40000 ALTER TABLE `transactionInitiator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionInitiatorType`
--

DROP TABLE IF EXISTS `transactionInitiatorType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactionInitiatorType` (
  `transactionInitiatorTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`transactionInitiatorTypeId`),
  UNIQUE KEY `transactioninitiatortype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionInitiatorType`
--

LOCK TABLES `transactionInitiatorType` WRITE;
/*!40000 ALTER TABLE `transactionInitiatorType` DISABLE KEYS */;
INSERT INTO `transactionInitiatorType` VALUES (1,'CONSUMER','Consumer is the initiator of the transaction','2025-05-23 13:49:04'),(2,'AGENT','Agent is the initiator of the transaction','2025-05-23 13:49:04'),(3,'BUSINESS','Business is the initiator of the transaction','2025-05-23 13:49:04'),(4,'DEVICE','Device is the initiator of the transaction','2025-05-23 13:49:04');
/*!40000 ALTER TABLE `transactionInitiatorType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionReference`
--

DROP TABLE IF EXISTS `transactionReference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactionReference` (
  `transactionReferenceId` varchar(36) NOT NULL COMMENT 'Common ID (decided by the Payer FSP) between the FSPs for the future transaction object',
  `quoteId` varchar(36) DEFAULT NULL COMMENT 'Common ID between the FSPs for the quote object, decided by the Payer FSP',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System row creation timestamp',
  PRIMARY KEY (`transactionReferenceId`),
  KEY `transactionreference_quoteid_index` (`quoteId`),
  CONSTRAINT `transactionreference_quoteid_foreign` FOREIGN KEY (`quoteId`) REFERENCES `quoteDuplicateCheck` (`quoteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionReference`
--

LOCK TABLES `transactionReference` WRITE;
/*!40000 ALTER TABLE `transactionReference` DISABLE KEYS */;
INSERT INTO `transactionReference` VALUES ('01JW5BE5J7ZHSSGFJBHWDMWAEJ','01JW5BE5J461BN8YF3PSSJMW66','2025-05-26 03:51:01');
/*!40000 ALTER TABLE `transactionReference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionScenario`
--

DROP TABLE IF EXISTS `transactionScenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactionScenario` (
  `transactionScenarioId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`transactionScenarioId`),
  UNIQUE KEY `transactionscenario_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionScenario`
--

LOCK TABLES `transactionScenario` WRITE;
/*!40000 ALTER TABLE `transactionScenario` DISABLE KEYS */;
INSERT INTO `transactionScenario` VALUES (1,'TRANSFER','Used for performing a P2P (Peer to Peer, or Consumer to Consumer) transaction','2025-05-23 13:49:04'),(2,'DEPOSIT','Used for performing a Cash-In (deposit) transaction. In a normal scenario, electronic funds are transferred from a Business account to a Consumer account, and physical cash is given from the Consumer to the Business User','2025-05-23 13:49:04'),(3,'WITHDRAWAL','Used for performing a Cash-Out (withdrawal) transaction. In a normal scenario, electronic funds are transferred from a Consumer’s account to a Business account, and physical cash is given from the Business User to the Consumer','2025-05-23 13:49:04'),(4,'PAYMENT','Usually used for performing a transaction from a Consumer to a Merchant or Organization, but could also be for a B2B (Business to Business) payment. The transaction could be online for a purchase in an Internet store, in a physical store where both the Consumer and Business User are present, a bill payment, a donation, and so on','2025-05-23 13:49:04'),(5,'REFUND','Used for performing a refund of transaction','2025-05-23 13:49:04');
/*!40000 ALTER TABLE `transactionScenario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionSubScenario`
--

DROP TABLE IF EXISTS `transactionSubScenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactionSubScenario` (
  `transactionSubScenarioId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL COMMENT 'Possible sub-scenario, defined locally within the scheme',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'System dateTime stamp pertaining to the inserted record',
  PRIMARY KEY (`transactionSubScenarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionSubScenario`
--

LOCK TABLES `transactionSubScenario` WRITE;
/*!40000 ALTER TABLE `transactionSubScenario` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionSubScenario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer` (
  `transferId` varchar(36) NOT NULL,
  `amount` decimal(18,4) NOT NULL,
  `currencyId` varchar(3) NOT NULL,
  `ilpCondition` varchar(256) NOT NULL,
  `expirationDate` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferId`),
  KEY `transfer_currencyid_index` (`currencyId`),
  CONSTRAINT `transfer_currencyid_foreign` FOREIGN KEY (`currencyId`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `transfer_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transferDuplicateCheck` (`transferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` VALUES ('01JVYQ5X2Z46H8SXSGZ9DBW4V7',5000.0000,'INR','0','2025-05-28 14:01:32','2025-05-23 14:01:32'),('01JVYQ6P147KFAG62P9RTYJZSM',5000.0000,'INR','0','2025-05-28 14:01:57','2025-05-23 14:01:57'),('01JW5BE5J7ZHSSGFJBHWDMWAEJ',100.0000,'XXX','3GwM2FB0ynmJQ5B6Dnsb64l5bVCNLG9yGdSS26HzDnk','2025-05-26 03:52:01','2025-05-26 03:51:02'),('01JW5BVMRC2MSVZQBDBG1SWFWX',13.0000,'XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-27 03:58:23','2025-05-26 03:58:22'),('01JW5BVQMNSMX93RCH2X2XMW87',15.0000,'XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-27 03:58:25','2025-05-26 03:58:25'),('01JW5BVW76V14F9P35KCE3JGHD',15.0000,'XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-27 03:58:30','2025-05-26 03:58:30'),('01JW5BWCKRP6GV07PGYYYCMZ6A',16.0000,'XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-26 03:58:49','2025-05-26 03:58:46'),('0435f2b9-a511-45ac-acd1-ea24df7a7364',5000.0000,'XXX','0','2025-05-28 13:58:35','2025-05-23 13:58:35'),('4634ee10-702d-4589-8088-df5283b248e4',5000.0000,'XXX','0','2025-05-28 14:00:24','2025-05-23 14:00:24'),('51c7525d-003a-4037-b5bc-a692677c878e',5000.0000,'XXX','0','2025-05-28 13:56:31','2025-05-23 13:56:31'),('5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f',5000.0000,'XTS','0','2025-05-28 13:54:33','2025-05-23 13:54:33'),('66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5',5000.0000,'XXX','0','2025-05-28 13:54:17','2025-05-23 13:54:17'),('78dfd696-7c6d-4b8d-9a70-683a93c420eb',5000.0000,'XTS','0','2025-05-28 13:57:50','2025-05-23 13:57:50'),('95a22e91-b939-4788-adc2-02756d72346d',5000.0000,'XTS','0','2025-05-28 14:00:34','2025-05-23 14:00:34'),('99b2f882-4319-406d-9d7a-82b9bda23a2c',5000.0000,'XTS','0','2025-05-28 13:55:40','2025-05-23 13:55:40'),('a587963a-e7a0-4cde-8c45-02b39d27af6b',5000.0000,'XXX','0','2025-05-28 13:57:38','2025-05-23 13:57:38'),('bc227aa9-14d8-4210-81ed-ef63ca5f8d7c',5000.0000,'XXX','0','2025-05-28 13:55:23','2025-05-23 13:55:23'),('cb49578c-7f16-4e11-9c0d-33ed983559e1',5000.0000,'XDR','0','2025-05-28 14:36:06','2025-05-23 14:36:06'),('ce0fce14-4772-4564-87b5-80b816190eef',5000.0000,'XTS','0','2025-05-28 13:56:48','2025-05-23 13:56:48'),('cfab587d-c044-4993-ab21-fb4819e55afe',5000.0000,'XTS','0','2025-05-28 13:58:52','2025-05-23 13:58:52'),('dd25e5d2-9195-4b9c-9b86-693990b6b713',5000.0000,'XTS','0','2025-05-28 14:03:10','2025-05-23 14:03:10');
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferDuplicateCheck`
--

DROP TABLE IF EXISTS `transferDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferDuplicateCheck` (
  `transferId` varchar(36) NOT NULL,
  `hash` varchar(256) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferDuplicateCheck`
--

LOCK TABLES `transferDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `transferDuplicateCheck` DISABLE KEYS */;
INSERT INTO `transferDuplicateCheck` VALUES ('01JVYQ5X2Z46H8SXSGZ9DBW4V7','s5nuA2GqmkT8T48xhFyWsj0VaMcbGjPi1A6kmWdT+qE','2025-05-23 14:01:31'),('01JVYQ6P147KFAG62P9RTYJZSM','5cirNm6z3RRQcmCzjDZUDa5BkmnEpq/JULOniXOtOdw','2025-05-23 14:01:57'),('01JW5BE5J7ZHSSGFJBHWDMWAEJ','LjzVHK4yTEHcZRhJK+SNxD5wiTchyICeFBEkhJTCp+E','2025-05-26 03:51:02'),('01JW5BVMRC2MSVZQBDBG1SWFWX','bqz/ZOCBZoLBd+XWxxIkfd3OS2PlMs/BRhR+imFuAAA','2025-05-26 03:58:22'),('01JW5BVQMNSMX93RCH2X2XMW87','ntONuCgaHAyHqJSG4YWiSaiqRG5eMu9ZwUyYlV6XW8E','2025-05-26 03:58:25'),('01JW5BVW76V14F9P35KCE3JGHD','rCQjNr7eKRLBYAnutTb/eAkdjdWgBC4u1NwsfdxcAdk','2025-05-26 03:58:30'),('01JW5BWCKRP6GV07PGYYYCMZ6A','v4fSqBqO+XjXRucorzQXRavPJaalsFrHLKUW9SOHGTw','2025-05-26 03:58:46'),('0435f2b9-a511-45ac-acd1-ea24df7a7364','aU2O9tsZHFe3sA+okgJgxswCyN9Ki6JzB8KlEc1YMc4','2025-05-23 13:58:35'),('4634ee10-702d-4589-8088-df5283b248e4','PVoekaZVzwoDQSdU7C4EZT1/2yflILxsLJuqGIBocd0','2025-05-23 14:00:24'),('51c7525d-003a-4037-b5bc-a692677c878e','7JQBIq/OmlMFSw/1in1XErM9nyn/SFzguROPE7Oor6o','2025-05-23 13:56:31'),('5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f','aRR2go2O5b+w0X41zTg5paSiT+W+ocEcCPFFxvw+RPI','2025-05-23 13:54:32'),('66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5','mRPuAh8xLPWpP2MKnoxVCUHrZPa+qrmZGbl4p2bPjjk','2025-05-23 13:54:17'),('78dfd696-7c6d-4b8d-9a70-683a93c420eb','81A4ZhfVaMOhqfGnlGIMX1GHxyU4v7VWNIOx17NcIQs','2025-05-23 13:57:49'),('95a22e91-b939-4788-adc2-02756d72346d','yJFRKWeQV97wLnnQh+BmwIdkIijjKLgdWpyPpbgQwfo','2025-05-23 14:00:34'),('99b2f882-4319-406d-9d7a-82b9bda23a2c','YfdRzhU55hcIU3Z2kI6hRSx3tbG8RWI2PH+IeYRYZjg','2025-05-23 13:55:39'),('a587963a-e7a0-4cde-8c45-02b39d27af6b','Qrp+BWWSSa1YwA6mEnlBGdVwBCYLZFXv2RPXRQO1HD8','2025-05-23 13:57:37'),('bc227aa9-14d8-4210-81ed-ef63ca5f8d7c','YtszBAGmeHsrDQvRfc9ebytoWxcO1Twnzy3vXtPUQk0','2025-05-23 13:55:23'),('cb49578c-7f16-4e11-9c0d-33ed983559e1','UkI6y+hG/G43DLixVwIhDsppbsE4OmOksUqsPGwdiRw','2025-05-23 14:36:05'),('ce0fce14-4772-4564-87b5-80b816190eef','NTPY2M30gBhtPMtGlE7JLODpHOnqzmsJlPvg4AodnJc','2025-05-23 13:56:48'),('cfab587d-c044-4993-ab21-fb4819e55afe','Lr/meUMeUUChWu3OgXxL+MTOg/HpuFet328U9/fLus0','2025-05-23 13:58:52'),('dd25e5d2-9195-4b9c-9b86-693990b6b713','5zm7bRenjeTbI4huZMLq9Ku2/Mvp95HQQHilphtpw+Q','2025-05-23 14:03:09');
/*!40000 ALTER TABLE `transferDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferError`
--

DROP TABLE IF EXISTS `transferError`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferError` (
  `transferId` varchar(36) NOT NULL,
  `transferStateChangeId` bigint unsigned NOT NULL,
  `errorCode` int unsigned NOT NULL,
  `errorDescription` varchar(128) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferId`),
  KEY `transfererror_transferstatechangeid_foreign` (`transferStateChangeId`),
  CONSTRAINT `transfererror_transferstatechangeid_foreign` FOREIGN KEY (`transferStateChangeId`) REFERENCES `transferStateChange` (`transferStateChangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferError`
--

LOCK TABLES `transferError` WRITE;
/*!40000 ALTER TABLE `transferError` DISABLE KEYS */;
INSERT INTO `transferError` VALUES ('01JW5BVMRC2MSVZQBDBG1SWFWX',71,2000,'This is a generic error','2025-05-26 03:58:23'),('01JW5BVQMNSMX93RCH2X2XMW87',73,3100,'Related FX Transfer is not fulfilled','2025-05-26 03:58:25'),('01JW5BVW76V14F9P35KCE3JGHD',76,3100,'Generic validation error - invalid fulfilment','2025-05-26 03:58:33'),('01JW5BWCKRP6GV07PGYYYCMZ6A',80,3303,'Transfer expired','2025-05-26 03:59:00');
/*!40000 ALTER TABLE `transferError` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferErrorDuplicateCheck`
--

DROP TABLE IF EXISTS `transferErrorDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferErrorDuplicateCheck` (
  `transferId` varchar(36) NOT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferId`),
  CONSTRAINT `transfererrorduplicatecheck_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transfer` (`transferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferErrorDuplicateCheck`
--

LOCK TABLES `transferErrorDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `transferErrorDuplicateCheck` DISABLE KEYS */;
INSERT INTO `transferErrorDuplicateCheck` VALUES ('01JW5BVMRC2MSVZQBDBG1SWFWX','MIGFNCMoi3m9mpPsiIMFcBiTL9I0pGDsVCOE2WkzixI','2025-05-26 03:58:23');
/*!40000 ALTER TABLE `transferErrorDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferExtension`
--

DROP TABLE IF EXISTS `transferExtension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferExtension` (
  `transferExtensionId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transferId` varchar(36) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `isFulfilment` tinyint(1) NOT NULL DEFAULT '0',
  `isError` tinyint(1) NOT NULL DEFAULT '0',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferExtensionId`),
  KEY `transferextension_transferid_foreign` (`transferId`),
  CONSTRAINT `transferextension_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transfer` (`transferId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferExtension`
--

LOCK TABLES `transferExtension` WRITE;
/*!40000 ALTER TABLE `transferExtension` DISABLE KEYS */;
INSERT INTO `transferExtension` VALUES (1,'66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5','externalReference','string',0,0,'2025-05-23 13:54:17'),(2,'66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5','string','string',0,0,'2025-05-23 13:54:17'),(3,'5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f','externalReference','string',0,0,'2025-05-23 13:54:33'),(4,'5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f','string','string',0,0,'2025-05-23 13:54:33'),(5,'bc227aa9-14d8-4210-81ed-ef63ca5f8d7c','externalReference','string',0,0,'2025-05-23 13:55:23'),(6,'bc227aa9-14d8-4210-81ed-ef63ca5f8d7c','string','string',0,0,'2025-05-23 13:55:23'),(7,'99b2f882-4319-406d-9d7a-82b9bda23a2c','externalReference','string',0,0,'2025-05-23 13:55:40'),(8,'99b2f882-4319-406d-9d7a-82b9bda23a2c','string','string',0,0,'2025-05-23 13:55:40'),(9,'51c7525d-003a-4037-b5bc-a692677c878e','externalReference','string',0,0,'2025-05-23 13:56:31'),(10,'51c7525d-003a-4037-b5bc-a692677c878e','string','string',0,0,'2025-05-23 13:56:31'),(11,'ce0fce14-4772-4564-87b5-80b816190eef','externalReference','string',0,0,'2025-05-23 13:56:48'),(12,'ce0fce14-4772-4564-87b5-80b816190eef','string','string',0,0,'2025-05-23 13:56:48'),(13,'a587963a-e7a0-4cde-8c45-02b39d27af6b','externalReference','string',0,0,'2025-05-23 13:57:38'),(14,'a587963a-e7a0-4cde-8c45-02b39d27af6b','string','string',0,0,'2025-05-23 13:57:38'),(15,'78dfd696-7c6d-4b8d-9a70-683a93c420eb','externalReference','string',0,0,'2025-05-23 13:57:50'),(16,'78dfd696-7c6d-4b8d-9a70-683a93c420eb','string','string',0,0,'2025-05-23 13:57:50'),(17,'0435f2b9-a511-45ac-acd1-ea24df7a7364','externalReference','string',0,0,'2025-05-23 13:58:35'),(18,'0435f2b9-a511-45ac-acd1-ea24df7a7364','string','string',0,0,'2025-05-23 13:58:35'),(19,'cfab587d-c044-4993-ab21-fb4819e55afe','externalReference','string',0,0,'2025-05-23 13:58:52'),(20,'cfab587d-c044-4993-ab21-fb4819e55afe','string','string',0,0,'2025-05-23 13:58:52'),(21,'4634ee10-702d-4589-8088-df5283b248e4','externalReference','string',0,0,'2025-05-23 14:00:24'),(22,'4634ee10-702d-4589-8088-df5283b248e4','string','string',0,0,'2025-05-23 14:00:24'),(23,'95a22e91-b939-4788-adc2-02756d72346d','externalReference','string',0,0,'2025-05-23 14:00:34'),(24,'95a22e91-b939-4788-adc2-02756d72346d','string','string',0,0,'2025-05-23 14:00:34'),(25,'01JVYQ5X2Z46H8SXSGZ9DBW4V7','externalReference','string',0,0,'2025-05-23 14:01:32'),(26,'01JVYQ5X2Z46H8SXSGZ9DBW4V7','string','string',0,0,'2025-05-23 14:01:32'),(27,'01JVYQ6P147KFAG62P9RTYJZSM','externalReference','string',0,0,'2025-05-23 14:01:57'),(28,'01JVYQ6P147KFAG62P9RTYJZSM','string','string',0,0,'2025-05-23 14:01:57'),(29,'dd25e5d2-9195-4b9c-9b86-693990b6b713','externalReference','string',0,0,'2025-05-23 14:03:10'),(30,'dd25e5d2-9195-4b9c-9b86-693990b6b713','string','string',0,0,'2025-05-23 14:03:10'),(31,'cb49578c-7f16-4e11-9c0d-33ed983559e1','externalReference','string',0,0,'2025-05-23 14:36:06'),(32,'cb49578c-7f16-4e11-9c0d-33ed983559e1','string','string',0,0,'2025-05-23 14:36:06');
/*!40000 ALTER TABLE `transferExtension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferFulfilment`
--

DROP TABLE IF EXISTS `transferFulfilment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferFulfilment` (
  `transferId` varchar(36) NOT NULL,
  `ilpFulfilment` varchar(256) DEFAULT NULL,
  `completedDate` datetime NOT NULL,
  `isValid` tinyint(1) DEFAULT NULL,
  `settlementWindowId` bigint unsigned DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferId`),
  KEY `transferfulfilment_settlementwindowid_foreign` (`settlementWindowId`),
  CONSTRAINT `transferfulfilment_settlementwindowid_foreign` FOREIGN KEY (`settlementWindowId`) REFERENCES `settlementWindow` (`settlementWindowId`),
  CONSTRAINT `transferfulfilment_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transferFulfilmentDuplicateCheck` (`transferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferFulfilment`
--

LOCK TABLES `transferFulfilment` WRITE;
/*!40000 ALTER TABLE `transferFulfilment` DISABLE KEYS */;
INSERT INTO `transferFulfilment` VALUES ('01JVYQ5X2Z46H8SXSGZ9DBW4V7','0','2025-05-23 14:01:32',1,NULL,'2025-05-23 14:01:32'),('01JVYQ6P147KFAG62P9RTYJZSM','0','2025-05-23 14:01:57',1,NULL,'2025-05-23 14:01:57'),('01JW5BE5J7ZHSSGFJBHWDMWAEJ','KnIwPDizCQiUEaKz2ZMALzkFAqQfs4ee6KjFPmOlRRI','2025-05-26 03:51:05',1,1,'2025-05-26 03:51:05'),('0435f2b9-a511-45ac-acd1-ea24df7a7364','0','2025-05-23 13:58:35',1,NULL,'2025-05-23 13:58:35'),('4634ee10-702d-4589-8088-df5283b248e4','0','2025-05-23 14:00:24',1,NULL,'2025-05-23 14:00:24'),('51c7525d-003a-4037-b5bc-a692677c878e','0','2025-05-23 13:56:31',1,NULL,'2025-05-23 13:56:31'),('5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f','0','2025-05-23 13:54:33',1,NULL,'2025-05-23 13:54:33'),('66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5','0','2025-05-23 13:54:17',1,NULL,'2025-05-23 13:54:17'),('78dfd696-7c6d-4b8d-9a70-683a93c420eb','0','2025-05-23 13:57:50',1,NULL,'2025-05-23 13:57:50'),('95a22e91-b939-4788-adc2-02756d72346d','0','2025-05-23 14:00:34',1,NULL,'2025-05-23 14:00:34'),('99b2f882-4319-406d-9d7a-82b9bda23a2c','0','2025-05-23 13:55:40',1,NULL,'2025-05-23 13:55:40'),('a587963a-e7a0-4cde-8c45-02b39d27af6b','0','2025-05-23 13:57:38',1,NULL,'2025-05-23 13:57:38'),('bc227aa9-14d8-4210-81ed-ef63ca5f8d7c','0','2025-05-23 13:55:23',1,NULL,'2025-05-23 13:55:23'),('cb49578c-7f16-4e11-9c0d-33ed983559e1','0','2025-05-23 14:36:06',1,NULL,'2025-05-23 14:36:06'),('ce0fce14-4772-4564-87b5-80b816190eef','0','2025-05-23 13:56:48',1,NULL,'2025-05-23 13:56:48'),('cfab587d-c044-4993-ab21-fb4819e55afe','0','2025-05-23 13:58:52',1,NULL,'2025-05-23 13:58:52'),('dd25e5d2-9195-4b9c-9b86-693990b6b713','0','2025-05-23 14:03:10',1,NULL,'2025-05-23 14:03:10');
/*!40000 ALTER TABLE `transferFulfilment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferFulfilmentDuplicateCheck`
--

DROP TABLE IF EXISTS `transferFulfilmentDuplicateCheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferFulfilmentDuplicateCheck` (
  `transferId` varchar(36) NOT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferId`),
  CONSTRAINT `transferfulfilmentduplicatecheck_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transfer` (`transferId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferFulfilmentDuplicateCheck`
--

LOCK TABLES `transferFulfilmentDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `transferFulfilmentDuplicateCheck` DISABLE KEYS */;
INSERT INTO `transferFulfilmentDuplicateCheck` VALUES ('01JVYQ5X2Z46H8SXSGZ9DBW4V7',NULL,'2025-05-23 14:01:31'),('01JVYQ6P147KFAG62P9RTYJZSM',NULL,'2025-05-23 14:01:57'),('01JW5BE5J7ZHSSGFJBHWDMWAEJ','Qd31NrHlhnARZuPfLgYSJBn5/pjGT22515VqKBdw0+0','2025-05-26 03:51:05'),('01JW5BVW76V14F9P35KCE3JGHD','FmHZMe9DsCfgnnW538C3vIbkgArTTUgZjjPwx0ZE0Uk','2025-05-26 03:58:33'),('0435f2b9-a511-45ac-acd1-ea24df7a7364',NULL,'2025-05-23 13:58:35'),('4634ee10-702d-4589-8088-df5283b248e4',NULL,'2025-05-23 14:00:24'),('51c7525d-003a-4037-b5bc-a692677c878e',NULL,'2025-05-23 13:56:31'),('5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f',NULL,'2025-05-23 13:54:32'),('66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5',NULL,'2025-05-23 13:54:17'),('78dfd696-7c6d-4b8d-9a70-683a93c420eb',NULL,'2025-05-23 13:57:49'),('95a22e91-b939-4788-adc2-02756d72346d',NULL,'2025-05-23 14:00:34'),('99b2f882-4319-406d-9d7a-82b9bda23a2c',NULL,'2025-05-23 13:55:39'),('a587963a-e7a0-4cde-8c45-02b39d27af6b',NULL,'2025-05-23 13:57:37'),('bc227aa9-14d8-4210-81ed-ef63ca5f8d7c',NULL,'2025-05-23 13:55:23'),('cb49578c-7f16-4e11-9c0d-33ed983559e1',NULL,'2025-05-23 14:36:05'),('ce0fce14-4772-4564-87b5-80b816190eef',NULL,'2025-05-23 13:56:48'),('cfab587d-c044-4993-ab21-fb4819e55afe',NULL,'2025-05-23 13:58:52'),('dd25e5d2-9195-4b9c-9b86-693990b6b713',NULL,'2025-05-23 14:03:09');
/*!40000 ALTER TABLE `transferFulfilmentDuplicateCheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferParticipant`
--

DROP TABLE IF EXISTS `transferParticipant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferParticipant` (
  `transferParticipantId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transferId` varchar(36) NOT NULL,
  `participantCurrencyId` int unsigned DEFAULT NULL,
  `transferParticipantRoleTypeId` int unsigned NOT NULL,
  `ledgerEntryTypeId` int unsigned NOT NULL,
  `amount` decimal(18,4) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `participantId` int unsigned NOT NULL,
  `externalParticipantId` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`transferParticipantId`),
  KEY `transferparticipant_transferid_index` (`transferId`),
  KEY `transferparticipant_participantcurrencyid_index` (`participantCurrencyId`),
  KEY `transferparticipant_transferparticipantroletypeid_index` (`transferParticipantRoleTypeId`),
  KEY `transferparticipant_ledgerentrytypeid_index` (`ledgerEntryTypeId`),
  KEY `getTransferInfoToChangePosition` (`transferId`,`transferParticipantRoleTypeId`,`ledgerEntryTypeId`),
  KEY `transferparticipant_participantid_index` (`participantId`),
  KEY `transferparticipant_externalparticipantid_index` (`externalParticipantId`),
  CONSTRAINT `transferparticipant_externalparticipantid_foreign` FOREIGN KEY (`externalParticipantId`) REFERENCES `externalParticipant` (`externalParticipantId`),
  CONSTRAINT `transferparticipant_ledgerentrytypeid_foreign` FOREIGN KEY (`ledgerEntryTypeId`) REFERENCES `ledgerEntryType` (`ledgerEntryTypeId`),
  CONSTRAINT `transferparticipant_participantcurrencyid_foreign` FOREIGN KEY (`participantCurrencyId`) REFERENCES `participantCurrency` (`participantCurrencyId`),
  CONSTRAINT `transferparticipant_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transfer` (`transferId`),
  CONSTRAINT `transferparticipant_transferparticipantroletypeid_foreign` FOREIGN KEY (`transferParticipantRoleTypeId`) REFERENCES `transferParticipantRoleType` (`transferParticipantRoleTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferParticipant`
--

LOCK TABLES `transferParticipant` WRITE;
/*!40000 ALTER TABLE `transferParticipant` DISABLE KEYS */;
INSERT INTO `transferParticipant` VALUES (1,'66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5',2,3,9,5000.0000,'2025-05-23 13:54:17',1,NULL),(2,'66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5',10,4,9,-5000.0000,'2025-05-23 13:54:17',2,NULL),(3,'5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f',4,3,9,5000.0000,'2025-05-23 13:54:33',1,NULL),(4,'5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f',12,4,9,-5000.0000,'2025-05-23 13:54:33',2,NULL),(5,'bc227aa9-14d8-4210-81ed-ef63ca5f8d7c',2,3,9,5000.0000,'2025-05-23 13:55:23',1,NULL),(6,'bc227aa9-14d8-4210-81ed-ef63ca5f8d7c',18,4,9,-5000.0000,'2025-05-23 13:55:23',3,NULL),(7,'99b2f882-4319-406d-9d7a-82b9bda23a2c',4,3,9,5000.0000,'2025-05-23 13:55:40',1,NULL),(8,'99b2f882-4319-406d-9d7a-82b9bda23a2c',20,4,9,-5000.0000,'2025-05-23 13:55:40',3,NULL),(9,'51c7525d-003a-4037-b5bc-a692677c878e',2,3,9,5000.0000,'2025-05-23 13:56:31',1,NULL),(10,'51c7525d-003a-4037-b5bc-a692677c878e',26,4,9,-5000.0000,'2025-05-23 13:56:31',4,NULL),(11,'ce0fce14-4772-4564-87b5-80b816190eef',4,3,9,5000.0000,'2025-05-23 13:56:48',1,NULL),(12,'ce0fce14-4772-4564-87b5-80b816190eef',28,4,9,-5000.0000,'2025-05-23 13:56:48',4,NULL),(13,'a587963a-e7a0-4cde-8c45-02b39d27af6b',2,3,9,5000.0000,'2025-05-23 13:57:38',1,NULL),(14,'a587963a-e7a0-4cde-8c45-02b39d27af6b',34,4,9,-5000.0000,'2025-05-23 13:57:38',5,NULL),(15,'78dfd696-7c6d-4b8d-9a70-683a93c420eb',4,3,9,5000.0000,'2025-05-23 13:57:50',1,NULL),(16,'78dfd696-7c6d-4b8d-9a70-683a93c420eb',36,4,9,-5000.0000,'2025-05-23 13:57:50',5,NULL),(17,'0435f2b9-a511-45ac-acd1-ea24df7a7364',2,3,9,5000.0000,'2025-05-23 13:58:35',1,NULL),(18,'0435f2b9-a511-45ac-acd1-ea24df7a7364',42,4,9,-5000.0000,'2025-05-23 13:58:35',6,NULL),(19,'cfab587d-c044-4993-ab21-fb4819e55afe',4,3,9,5000.0000,'2025-05-23 13:58:52',1,NULL),(20,'cfab587d-c044-4993-ab21-fb4819e55afe',44,4,9,-5000.0000,'2025-05-23 13:58:52',6,NULL),(21,'4634ee10-702d-4589-8088-df5283b248e4',2,3,9,5000.0000,'2025-05-23 14:00:24',1,NULL),(22,'4634ee10-702d-4589-8088-df5283b248e4',50,4,9,-5000.0000,'2025-05-23 14:00:24',7,NULL),(23,'95a22e91-b939-4788-adc2-02756d72346d',4,3,9,5000.0000,'2025-05-23 14:00:34',1,NULL),(24,'95a22e91-b939-4788-adc2-02756d72346d',52,4,9,-5000.0000,'2025-05-23 14:00:34',7,NULL),(25,'01JVYQ5X2Z46H8SXSGZ9DBW4V7',6,3,9,5000.0000,'2025-05-23 14:01:32',1,NULL),(26,'01JVYQ5X2Z46H8SXSGZ9DBW4V7',66,4,9,-5000.0000,'2025-05-23 14:01:32',9,NULL),(27,'01JVYQ6P147KFAG62P9RTYJZSM',6,3,9,5000.0000,'2025-05-23 14:01:57',1,NULL),(28,'01JVYQ6P147KFAG62P9RTYJZSM',70,4,9,-5000.0000,'2025-05-23 14:01:57',10,NULL),(29,'dd25e5d2-9195-4b9c-9b86-693990b6b713',4,3,9,5000.0000,'2025-05-23 14:03:10',1,NULL),(30,'dd25e5d2-9195-4b9c-9b86-693990b6b713',76,4,9,-5000.0000,'2025-05-23 14:03:10',11,NULL),(31,'cb49578c-7f16-4e11-9c0d-33ed983559e1',8,3,9,5000.0000,'2025-05-23 14:36:06',1,NULL),(32,'cb49578c-7f16-4e11-9c0d-33ed983559e1',80,4,9,-5000.0000,'2025-05-23 14:36:06',13,NULL),(33,'01JW5BE5J7ZHSSGFJBHWDMWAEJ',49,1,1,100.0000,'2025-05-26 03:51:02',7,NULL),(34,'01JW5BE5J7ZHSSGFJBHWDMWAEJ',17,2,1,-100.0000,'2025-05-26 03:51:02',3,NULL),(35,'01JW5BVMRC2MSVZQBDBG1SWFWX',NULL,1,1,13.0000,'2025-05-26 03:58:22',13,NULL),(36,'01JW5BVMRC2MSVZQBDBG1SWFWX',77,2,1,-13.0000,'2025-05-26 03:58:22',12,NULL),(37,'01JW5BVQMNSMX93RCH2X2XMW87',NULL,1,1,15.0000,'2025-05-26 03:58:25',13,NULL),(38,'01JW5BVQMNSMX93RCH2X2XMW87',77,2,1,-15.0000,'2025-05-26 03:58:25',12,NULL),(39,'01JW5BVW76V14F9P35KCE3JGHD',NULL,1,1,15.0000,'2025-05-26 03:58:30',13,NULL),(40,'01JW5BVW76V14F9P35KCE3JGHD',77,2,1,-15.0000,'2025-05-26 03:58:30',12,NULL),(41,'01JW5BWCKRP6GV07PGYYYCMZ6A',NULL,1,1,16.0000,'2025-05-26 03:58:46',13,NULL),(42,'01JW5BWCKRP6GV07PGYYYCMZ6A',77,2,1,-16.0000,'2025-05-26 03:58:46',12,NULL);
/*!40000 ALTER TABLE `transferParticipant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferParticipantRoleType`
--

DROP TABLE IF EXISTS `transferParticipantRoleType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferParticipantRoleType` (
  `transferParticipantRoleTypeId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferParticipantRoleTypeId`),
  UNIQUE KEY `transferparticipantroletype_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferParticipantRoleType`
--

LOCK TABLES `transferParticipantRoleType` WRITE;
/*!40000 ALTER TABLE `transferParticipantRoleType` DISABLE KEYS */;
INSERT INTO `transferParticipantRoleType` VALUES (1,'PAYER_DFSP','The participant is the Payer DFSP in this transfer and is sending the funds',1,'2025-05-23 13:49:04'),(2,'PAYEE_DFSP','The participant is the Payee DFSP in this transfer and is receiving the funds',1,'2025-05-23 13:49:04'),(3,'HUB','The participant is representing the Hub Operator',1,'2025-05-23 13:49:04'),(4,'DFSP_SETTLEMENT','Indicates the settlement account',1,'2025-05-23 13:49:04'),(5,'DFSP_POSITION','Indicates the position account',1,'2025-05-23 13:49:04'),(6,'INITIATING_FSP','Identifier for the FSP who is requesting a currency conversion',1,'2025-05-23 13:49:04'),(7,'COUNTER_PARTY_FSP','Identifier for the FXP who is performing the currency conversion',1,'2025-05-23 13:49:04');
/*!40000 ALTER TABLE `transferParticipantRoleType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferRules`
--

DROP TABLE IF EXISTS `transferRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferRules` (
  `transferRulesId` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `rule` text NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferRulesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferRules`
--

LOCK TABLES `transferRules` WRITE;
/*!40000 ALTER TABLE `transferRules` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferState`
--

DROP TABLE IF EXISTS `transferState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferState` (
  `transferStateId` varchar(50) NOT NULL,
  `enumeration` varchar(50) NOT NULL COMMENT 'transferState associated to the Mojaloop API',
  `description` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferState`
--

LOCK TABLES `transferState` WRITE;
/*!40000 ALTER TABLE `transferState` DISABLE KEYS */;
INSERT INTO `transferState` VALUES ('ABORTED_ERROR','ABORTED','The switch has aborted a transfer due to being RECEIVED_ERROR',1,'2025-05-23 13:49:04'),('ABORTED_REJECTED','ABORTED','The switch has aborted a transfer due to being RECEIVED_REJECT.',1,'2025-05-23 13:49:04'),('COMMITTED','COMMITTED','The switch has successfully performed the transfer.',1,'2025-05-23 13:49:04'),('EXPIRED_PREPARED','ABORTED','The switch has aborted the transfer due to being EXPIRED transfer from RECEIVED_PREPARE.',1,'2025-05-23 13:49:04'),('EXPIRED_RESERVED','ABORTED','The switch has aborted the transfer due to being EXPIRED transfer from RESERVED.',1,'2025-05-23 13:49:04'),('FAILED','ABORTED','Aborted the transfer due to failure to perform the transfer.',1,'2025-05-23 13:49:04'),('INVALID','ABORTED','The switch has aborted the transfer due to validation failure.',1,'2025-05-23 13:49:04'),('RECEIVED_ERROR','RESERVED','The switch has received a transfer error callback',1,'2025-05-23 13:49:04'),('RECEIVED_FULFIL','RESERVED','The switch has reserved the transfer, and has been assigned to a settlement window.',1,'2025-05-23 13:49:04'),('RECEIVED_FULFIL_DEPENDENT','RESERVED','The switch has reserved the fxTransfer fulfilment.',1,'2025-05-23 13:49:04'),('RECEIVED_PREPARE','RECEIVED','The switch has received the transfer.',1,'2025-05-23 13:49:04'),('RECEIVED_REJECT','RESERVED','The switch has received a transfer abort from payee fsp.',1,'2025-05-23 13:49:04'),('RESERVED','RESERVED','The switch has reserved the transfer.',1,'2025-05-23 13:49:04'),('RESERVED_FORWARDED','RESERVED','The switch has forwarded the transfer to a proxy participant',1,'2025-05-23 13:49:04'),('RESERVED_TIMEOUT','RESERVED','Expiring the transfer and returning funds to payer fsp.',1,'2025-05-23 13:49:04'),('SETTLED','SETTLED','The switch has settled the transfer.',1,'2025-05-23 13:49:04');
/*!40000 ALTER TABLE `transferState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferStateChange`
--

DROP TABLE IF EXISTS `transferStateChange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferStateChange` (
  `transferStateChangeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transferId` varchar(36) NOT NULL,
  `transferStateId` varchar(50) NOT NULL,
  `reason` varchar(512) DEFAULT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferStateChangeId`),
  KEY `transferstatechange_transferid_index` (`transferId`),
  KEY `transferstatechange_transferstateid_index` (`transferStateId`),
  CONSTRAINT `transferstatechange_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transfer` (`transferId`),
  CONSTRAINT `transferstatechange_transferstateid_foreign` FOREIGN KEY (`transferStateId`) REFERENCES `transferState` (`transferStateId`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferStateChange`
--

LOCK TABLES `transferStateChange` WRITE;
/*!40000 ALTER TABLE `transferStateChange` DISABLE KEYS */;
INSERT INTO `transferStateChange` VALUES (1,'66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5','RECEIVED_PREPARE','string','2025-05-23 13:54:17'),(2,'66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5','RESERVED','string','2025-05-23 13:54:17'),(3,'66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5','RECEIVED_FULFIL','string','2025-05-23 13:54:17'),(4,'66fb5ecc-b3ed-40d6-afea-a0b55b22b0a5','COMMITTED','string','2025-05-23 13:54:17'),(5,'5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f','RECEIVED_PREPARE','string','2025-05-23 13:54:33'),(6,'5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f','RESERVED','string','2025-05-23 13:54:33'),(7,'5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f','RECEIVED_FULFIL','string','2025-05-23 13:54:33'),(8,'5ce3ce03-ac99-4e3c-bc11-f70e95e05a8f','COMMITTED','string','2025-05-23 13:54:33'),(9,'bc227aa9-14d8-4210-81ed-ef63ca5f8d7c','RECEIVED_PREPARE','string','2025-05-23 13:55:23'),(10,'bc227aa9-14d8-4210-81ed-ef63ca5f8d7c','RESERVED','string','2025-05-23 13:55:23'),(11,'bc227aa9-14d8-4210-81ed-ef63ca5f8d7c','RECEIVED_FULFIL','string','2025-05-23 13:55:23'),(12,'bc227aa9-14d8-4210-81ed-ef63ca5f8d7c','COMMITTED','string','2025-05-23 13:55:23'),(13,'99b2f882-4319-406d-9d7a-82b9bda23a2c','RECEIVED_PREPARE','string','2025-05-23 13:55:40'),(14,'99b2f882-4319-406d-9d7a-82b9bda23a2c','RESERVED','string','2025-05-23 13:55:40'),(15,'99b2f882-4319-406d-9d7a-82b9bda23a2c','RECEIVED_FULFIL','string','2025-05-23 13:55:40'),(16,'99b2f882-4319-406d-9d7a-82b9bda23a2c','COMMITTED','string','2025-05-23 13:55:40'),(17,'51c7525d-003a-4037-b5bc-a692677c878e','RECEIVED_PREPARE','string','2025-05-23 13:56:31'),(18,'51c7525d-003a-4037-b5bc-a692677c878e','RESERVED','string','2025-05-23 13:56:31'),(19,'51c7525d-003a-4037-b5bc-a692677c878e','RECEIVED_FULFIL','string','2025-05-23 13:56:31'),(20,'51c7525d-003a-4037-b5bc-a692677c878e','COMMITTED','string','2025-05-23 13:56:31'),(21,'ce0fce14-4772-4564-87b5-80b816190eef','RECEIVED_PREPARE','string','2025-05-23 13:56:48'),(22,'ce0fce14-4772-4564-87b5-80b816190eef','RESERVED','string','2025-05-23 13:56:48'),(23,'ce0fce14-4772-4564-87b5-80b816190eef','RECEIVED_FULFIL','string','2025-05-23 13:56:48'),(24,'ce0fce14-4772-4564-87b5-80b816190eef','COMMITTED','string','2025-05-23 13:56:48'),(25,'a587963a-e7a0-4cde-8c45-02b39d27af6b','RECEIVED_PREPARE','string','2025-05-23 13:57:38'),(26,'a587963a-e7a0-4cde-8c45-02b39d27af6b','RESERVED','string','2025-05-23 13:57:38'),(27,'a587963a-e7a0-4cde-8c45-02b39d27af6b','RECEIVED_FULFIL','string','2025-05-23 13:57:38'),(28,'a587963a-e7a0-4cde-8c45-02b39d27af6b','COMMITTED','string','2025-05-23 13:57:38'),(29,'78dfd696-7c6d-4b8d-9a70-683a93c420eb','RECEIVED_PREPARE','string','2025-05-23 13:57:50'),(30,'78dfd696-7c6d-4b8d-9a70-683a93c420eb','RESERVED','string','2025-05-23 13:57:50'),(31,'78dfd696-7c6d-4b8d-9a70-683a93c420eb','RECEIVED_FULFIL','string','2025-05-23 13:57:50'),(32,'78dfd696-7c6d-4b8d-9a70-683a93c420eb','COMMITTED','string','2025-05-23 13:57:50'),(33,'0435f2b9-a511-45ac-acd1-ea24df7a7364','RECEIVED_PREPARE','string','2025-05-23 13:58:35'),(34,'0435f2b9-a511-45ac-acd1-ea24df7a7364','RESERVED','string','2025-05-23 13:58:35'),(35,'0435f2b9-a511-45ac-acd1-ea24df7a7364','RECEIVED_FULFIL','string','2025-05-23 13:58:35'),(36,'0435f2b9-a511-45ac-acd1-ea24df7a7364','COMMITTED','string','2025-05-23 13:58:35'),(37,'cfab587d-c044-4993-ab21-fb4819e55afe','RECEIVED_PREPARE','string','2025-05-23 13:58:52'),(38,'cfab587d-c044-4993-ab21-fb4819e55afe','RESERVED','string','2025-05-23 13:58:52'),(39,'cfab587d-c044-4993-ab21-fb4819e55afe','RECEIVED_FULFIL','string','2025-05-23 13:58:52'),(40,'cfab587d-c044-4993-ab21-fb4819e55afe','COMMITTED','string','2025-05-23 13:58:52'),(41,'4634ee10-702d-4589-8088-df5283b248e4','RECEIVED_PREPARE','string','2025-05-23 14:00:24'),(42,'4634ee10-702d-4589-8088-df5283b248e4','RESERVED','string','2025-05-23 14:00:24'),(43,'4634ee10-702d-4589-8088-df5283b248e4','RECEIVED_FULFIL','string','2025-05-23 14:00:24'),(44,'4634ee10-702d-4589-8088-df5283b248e4','COMMITTED','string','2025-05-23 14:00:24'),(45,'95a22e91-b939-4788-adc2-02756d72346d','RECEIVED_PREPARE','string','2025-05-23 14:00:34'),(46,'95a22e91-b939-4788-adc2-02756d72346d','RESERVED','string','2025-05-23 14:00:34'),(47,'95a22e91-b939-4788-adc2-02756d72346d','RECEIVED_FULFIL','string','2025-05-23 14:00:34'),(48,'95a22e91-b939-4788-adc2-02756d72346d','COMMITTED','string','2025-05-23 14:00:34'),(49,'01JVYQ5X2Z46H8SXSGZ9DBW4V7','RECEIVED_PREPARE','string','2025-05-23 14:01:32'),(50,'01JVYQ5X2Z46H8SXSGZ9DBW4V7','RESERVED','string','2025-05-23 14:01:32'),(51,'01JVYQ5X2Z46H8SXSGZ9DBW4V7','RECEIVED_FULFIL','string','2025-05-23 14:01:32'),(52,'01JVYQ5X2Z46H8SXSGZ9DBW4V7','COMMITTED','string','2025-05-23 14:01:32'),(53,'01JVYQ6P147KFAG62P9RTYJZSM','RECEIVED_PREPARE','string','2025-05-23 14:01:57'),(54,'01JVYQ6P147KFAG62P9RTYJZSM','RESERVED','string','2025-05-23 14:01:57'),(55,'01JVYQ6P147KFAG62P9RTYJZSM','RECEIVED_FULFIL','string','2025-05-23 14:01:57'),(56,'01JVYQ6P147KFAG62P9RTYJZSM','COMMITTED','string','2025-05-23 14:01:57'),(57,'dd25e5d2-9195-4b9c-9b86-693990b6b713','RECEIVED_PREPARE','string','2025-05-23 14:03:10'),(58,'dd25e5d2-9195-4b9c-9b86-693990b6b713','RESERVED','string','2025-05-23 14:03:10'),(59,'dd25e5d2-9195-4b9c-9b86-693990b6b713','RECEIVED_FULFIL','string','2025-05-23 14:03:10'),(60,'dd25e5d2-9195-4b9c-9b86-693990b6b713','COMMITTED','string','2025-05-23 14:03:10'),(61,'cb49578c-7f16-4e11-9c0d-33ed983559e1','RECEIVED_PREPARE','string','2025-05-23 14:36:06'),(62,'cb49578c-7f16-4e11-9c0d-33ed983559e1','RESERVED','string','2025-05-23 14:36:06'),(63,'cb49578c-7f16-4e11-9c0d-33ed983559e1','RECEIVED_FULFIL','string','2025-05-23 14:36:06'),(64,'cb49578c-7f16-4e11-9c0d-33ed983559e1','COMMITTED','string','2025-05-23 14:36:06'),(65,'01JW5BE5J7ZHSSGFJBHWDMWAEJ','RECEIVED_PREPARE',NULL,'2025-05-26 03:51:03'),(66,'01JW5BE5J7ZHSSGFJBHWDMWAEJ','RESERVED',NULL,'2025-05-26 03:51:03'),(67,'01JW5BE5J7ZHSSGFJBHWDMWAEJ','RECEIVED_FULFIL',NULL,'2025-05-26 03:51:05'),(68,'01JW5BE5J7ZHSSGFJBHWDMWAEJ','COMMITTED',NULL,'2025-05-26 03:51:06'),(69,'01JW5BVMRC2MSVZQBDBG1SWFWX','RECEIVED_PREPARE',NULL,'2025-05-26 03:58:23'),(70,'01JW5BVMRC2MSVZQBDBG1SWFWX','RESERVED',NULL,'2025-05-26 03:58:23'),(71,'01JW5BVMRC2MSVZQBDBG1SWFWX','RECEIVED_ERROR','This is a generic error','2025-05-26 03:58:23'),(72,'01JW5BVMRC2MSVZQBDBG1SWFWX','ABORTED_ERROR',NULL,'2025-05-26 03:58:24'),(73,'01JW5BVQMNSMX93RCH2X2XMW87','INVALID','Related FX Transfer is not fulfilled','2025-05-26 03:58:25'),(74,'01JW5BVW76V14F9P35KCE3JGHD','RECEIVED_PREPARE',NULL,'2025-05-26 03:58:31'),(75,'01JW5BVW76V14F9P35KCE3JGHD','RESERVED',NULL,'2025-05-26 03:58:30'),(76,'01JW5BVW76V14F9P35KCE3JGHD','RECEIVED_ERROR','Generic validation error - invalid fulfilment','2025-05-26 03:58:33'),(77,'01JW5BVW76V14F9P35KCE3JGHD','ABORTED_ERROR',NULL,'2025-05-26 03:58:33'),(78,'01JW5BWCKRP6GV07PGYYYCMZ6A','RECEIVED_PREPARE',NULL,'2025-05-26 03:58:47'),(79,'01JW5BWCKRP6GV07PGYYYCMZ6A','RESERVED',NULL,'2025-05-26 03:58:46'),(80,'01JW5BWCKRP6GV07PGYYYCMZ6A','RESERVED_TIMEOUT','Marked for expiration by Timeout Handler','2025-05-26 03:59:00'),(81,'01JW5BWCKRP6GV07PGYYYCMZ6A','EXPIRED_RESERVED','Transfer expired','2025-05-26 03:59:00');
/*!40000 ALTER TABLE `transferStateChange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferTimeout`
--

DROP TABLE IF EXISTS `transferTimeout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferTimeout` (
  `transferTimeoutId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transferId` varchar(36) NOT NULL,
  `expirationDate` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transferTimeoutId`),
  UNIQUE KEY `transfertimeout_transferid_unique` (`transferId`),
  CONSTRAINT `transfertimeout_transferid_foreign` FOREIGN KEY (`transferId`) REFERENCES `transfer` (`transferId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferTimeout`
--

LOCK TABLES `transferTimeout` WRITE;
/*!40000 ALTER TABLE `transferTimeout` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferTimeout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `quotePartyView`
--

/*!50001 DROP VIEW IF EXISTS `quotePartyView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`central_ledger`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `quotePartyView` AS select `qp`.`quoteId` AS `quoteId`,`qp`.`quotePartyId` AS `quotePartyId`,`pt`.`name` AS `partyType`,`pit`.`name` AS `identifierType`,`qp`.`partyIdentifierValue` AS `partyIdentifierValue`,`qp`.`partySubIdOrTypeId` AS `partySubIdOrType`,`qp`.`fspId` AS `fspId`,`qp`.`merchantClassificationCode` AS `merchantClassificationCode`,`qp`.`partyName` AS `partyName`,`p`.`firstName` AS `firstName`,`p`.`lastName` AS `lastName`,`p`.`middleName` AS `middleName`,`p`.`dateOfBirth` AS `dateOfBirth`,`gc`.`longitude` AS `longitude`,`gc`.`latitude` AS `latitude` from ((((`quoteParty` `qp` join `partyType` `pt` on((`pt`.`partyTypeId` = `qp`.`partyTypeId`))) join `partyIdentifierType` `pit` on((`pit`.`partyIdentifierTypeId` = `qp`.`partyIdentifierTypeId`))) left join `party` `p` on((`p`.`quotePartyId` = `qp`.`quotePartyId`))) left join `geoCode` `gc` on((`gc`.`quotePartyId` = `qp`.`quotePartyId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quoteResponseView`
--

/*!50001 DROP VIEW IF EXISTS `quoteResponseView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`central_ledger`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `quoteResponseView` AS select `qr`.`quoteResponseId` AS `quoteResponseId`,`qr`.`quoteId` AS `quoteId`,`qr`.`transferAmountCurrencyId` AS `transferAmountCurrencyId`,`qr`.`transferAmount` AS `transferAmount`,`qr`.`payeeReceiveAmountCurrencyId` AS `payeeReceiveAmountCurrencyId`,`qr`.`payeeReceiveAmount` AS `payeeReceiveAmount`,`qr`.`payeeFspFeeCurrencyId` AS `payeeFspFeeCurrencyId`,`qr`.`payeeFspFeeAmount` AS `payeeFspFeeAmount`,`qr`.`payeeFspCommissionCurrencyId` AS `payeeFspCommissionCurrencyId`,`qr`.`payeeFspCommissionAmount` AS `payeeFspCommissionAmount`,`qr`.`ilpCondition` AS `ilpCondition`,`qr`.`responseExpirationDate` AS `responseExpirationDate`,`qr`.`isValid` AS `isValid`,`qr`.`createdDate` AS `createdDate`,`qrilp`.`value` AS `ilpPacket`,`gc`.`longitude` AS `longitude`,`gc`.`latitude` AS `latitude` from ((((`quoteResponse` `qr` join `quoteResponseIlpPacket` `qrilp` on((`qrilp`.`quoteResponseId` = `qr`.`quoteResponseId`))) join `quoteParty` `qp` on((`qp`.`quoteId` = `qr`.`quoteId`))) join `partyType` `pt` on((`pt`.`partyTypeId` = `qp`.`partyTypeId`))) left join `geoCode` `gc` on((`gc`.`quotePartyId` = `qp`.`quotePartyId`))) where (`pt`.`name` = 'PAYEE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quoteView`
--

/*!50001 DROP VIEW IF EXISTS `quoteView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`central_ledger`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `quoteView` AS select `q`.`quoteId` AS `quoteId`,`q`.`transactionReferenceId` AS `transactionReferenceId`,`q`.`transactionRequestId` AS `transactionRequestId`,`q`.`note` AS `note`,`q`.`expirationDate` AS `expirationDate`,`ti`.`name` AS `transactionInitiator`,`tit`.`name` AS `transactionInitiatorType`,`ts`.`name` AS `transactionScenario`,`q`.`balanceOfPaymentsId` AS `balanceOfPaymentsId`,`tss`.`name` AS `transactionSubScenario`,`amt`.`name` AS `amountType`,`q`.`amount` AS `amount`,`q`.`currencyId` AS `currency` from (((((`quote` `q` join `transactionInitiator` `ti` on((`ti`.`transactionInitiatorId` = `q`.`transactionInitiatorId`))) join `transactionInitiatorType` `tit` on((`tit`.`transactionInitiatorTypeId` = `q`.`transactionInitiatorTypeId`))) join `transactionScenario` `ts` on((`ts`.`transactionScenarioId` = `q`.`transactionScenarioId`))) join `amountType` `amt` on((`amt`.`amountTypeId` = `q`.`amountTypeId`))) left join `transactionSubScenario` `tss` on((`tss`.`transactionSubScenarioId` = `q`.`transactionSubScenarioId`))) */;
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

-- Dump completed on 2025-05-26  4:09:10
