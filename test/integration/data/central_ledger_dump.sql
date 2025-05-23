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
INSERT INTO `amountType` VALUES (1,'SEND','Amount the Payer would like to send; that is, the amount that should be withdrawn from the Payer account including any fees','2025-05-22 12:04:07'),(2,'RECEIVE','Amount the Payer would like the Payee to receive; that is, the amount that should be sent to the receiver exclusive fees','2025-05-22 12:04:07');
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
INSERT INTO `balanceOfPayments` VALUES (100,'100','A. Goods','2025-05-22 12:04:07'),(110,'110','1. General merchandise','2025-05-22 12:04:07'),(150,'150','2. Goods for processing','2025-05-22 12:04:07'),(151,'151','2.1 Processing abroad','2025-05-22 12:04:07'),(152,'152','2.2 Processing in the compiling economy','2025-05-22 12:04:07'),(160,'160','3. Repairs on goods','2025-05-22 12:04:07'),(170,'170','4. Goods procured in ports by carriers','2025-05-22 12:04:07'),(171,'171','4.1 In seaports','2025-05-22 12:04:07'),(172,'172','4.2 In airports','2025-05-22 12:04:07'),(173,'173','4.3 In other ports','2025-05-22 12:04:07'),(180,'180','5. Nonmonetary gold','2025-05-22 12:04:07'),(181,'181','5.1 Held as a store of value','2025-05-22 12:04:07'),(182,'182','5.2 Other','2025-05-22 12:04:07'),(200,'200','B. Services','2025-05-22 12:04:07'),(205,'205','1. Transportation','2025-05-22 12:04:07'),(206,'206','1.1 Sea transport','2025-05-22 12:04:07'),(207,'207','1.1.1 Passenger','2025-05-22 12:04:07'),(208,'208','1.1.2 Freight','2025-05-22 12:04:07'),(209,'209','1.1.3 Other','2025-05-22 12:04:07'),(210,'210','1.2 Air transport','2025-05-22 12:04:07'),(211,'211','1.2.1 Passenger','2025-05-22 12:04:07'),(212,'212','1.2.2 Freight','2025-05-22 12:04:07'),(213,'213','1.2.3 Other','2025-05-22 12:04:07'),(214,'214','1.3 Other transport','2025-05-22 12:04:07'),(215,'215','1.3.1 Passenger','2025-05-22 12:04:07'),(216,'216','1.3.2 Freight','2025-05-22 12:04:07'),(217,'217','1.3.3 Other','2025-05-22 12:04:07'),(218,'218','1.4 Space transport','2025-05-22 12:04:07'),(219,'219','1.5 Rail transport','2025-05-22 12:04:07'),(220,'220','1.5.1 Passenger','2025-05-22 12:04:07'),(221,'221','1.5.2 Freight','2025-05-22 12:04:07'),(222,'222','1.5.3 Other','2025-05-22 12:04:07'),(223,'223','1.6 Road transport','2025-05-22 12:04:07'),(224,'224','1.6.1 Passenger','2025-05-22 12:04:07'),(225,'225','1.6.2 Freight','2025-05-22 12:04:07'),(226,'226','1.6.3 Other','2025-05-22 12:04:07'),(227,'227','1.7 Inland waterway transport','2025-05-22 12:04:07'),(228,'228','1.7.1 Passenger','2025-05-22 12:04:07'),(229,'229','1.7.2 Freight','2025-05-22 12:04:07'),(230,'230','1.7.3 Other','2025-05-22 12:04:07'),(231,'231','1.8 Pipeline transport and electricity transmission','2025-05-22 12:04:07'),(232,'232','1.9 Other supporting and auxiliary transport services','2025-05-22 12:04:07'),(236,'236','2. Travel','2025-05-22 12:04:07'),(237,'237','2.1 Business travel','2025-05-22 12:04:07'),(238,'238','2.1.1 Expenditure by seasonal and border workers','2025-05-22 12:04:07'),(239,'239','2.1.2 Other','2025-05-22 12:04:07'),(240,'240','2.2 Personal travel','2025-05-22 12:04:07'),(241,'241','2.2.1 Health-related expenditure','2025-05-22 12:04:07'),(242,'242','2.2.2 Education-related expenditure','2025-05-22 12:04:07'),(243,'243','2.2.3 Other','2025-05-22 12:04:07'),(245,'245','3. Communications services','2025-05-22 12:04:07'),(246,'246','3.1 Postal and courier services','2025-05-22 12:04:07'),(247,'247','3.2 Telecommunications Services','2025-05-22 12:04:07'),(249,'249','4. Construction services','2025-05-22 12:04:07'),(250,'250','4.1 Construction abroad','2025-05-22 12:04:07'),(251,'251','4.2 Construction in the compiling economy','2025-05-22 12:04:07'),(253,'253','5. Insurance services','2025-05-22 12:04:07'),(254,'254','5.1 Life insurance and pension funding','2025-05-22 12:04:07'),(255,'255','5.2 Freight insurance','2025-05-22 12:04:07'),(256,'256','5.3 Other direct insurance','2025-05-22 12:04:07'),(257,'257','5.4 Reinsurance','2025-05-22 12:04:07'),(258,'258','5.5 Auxiliary services','2025-05-22 12:04:07'),(260,'260','6. Financial services','2025-05-22 12:04:07'),(262,'262','7. Computer and information services','2025-05-22 12:04:07'),(263,'263','7.1 Computer services','2025-05-22 12:04:07'),(264,'264','7.2 Information services','2025-05-22 12:04:07'),(266,'266','8. Royalties and license fees','2025-05-22 12:04:07'),(268,'268','9. Other business services','2025-05-22 12:04:07'),(269,'269','9.1 Merchanting and other trade-related services','2025-05-22 12:04:07'),(270,'270','9.1.1 Merchanting','2025-05-22 12:04:07'),(271,'271','9.1.2 Other trade-related services','2025-05-22 12:04:07'),(272,'272','9.2 Operational leasing services','2025-05-22 12:04:07'),(273,'273','9.3 Miscellaneous business, professional, and technical services','2025-05-22 12:04:07'),(274,'274','9.3.1 Legal, accounting, management consulting, and public relations','2025-05-22 12:04:07'),(275,'275','9.3.1.1 Legal services','2025-05-22 12:04:07'),(276,'276','9.3.1.2 Accounting, auditing, bookkeeping, and tax consulting services','2025-05-22 12:04:07'),(277,'277','9.3.1.3 Business and management consulting and public relations services','2025-05-22 12:04:07'),(278,'278','9.3.2 Advertising, market research, and public opinion polling','2025-05-22 12:04:07'),(279,'279','9.3.3 Research and development','2025-05-22 12:04:07'),(280,'280','9.3.4 Architectural, engineering, and other technical services','2025-05-22 12:04:07'),(281,'281','9.3.5 Agricultural, mining, and on-site processing services','2025-05-22 12:04:07'),(282,'282','9.3.5.1 Waste treatment and depollution','2025-05-22 12:04:07'),(283,'283','9.3.5.2 Agricultural, mining, and other on-site processing services','2025-05-22 12:04:07'),(284,'284','9.3.6 Other business services','2025-05-22 12:04:07'),(285,'285','9.3.7 Services between related enterprises, n.i.e.','2025-05-22 12:04:07'),(287,'287','10. Personal, cultural, and recreational services','2025-05-22 12:04:07'),(288,'288','10.1 Audiovisual and related services','2025-05-22 12:04:07'),(289,'289','10.2 Other personal, cultural, and recreational services','2025-05-22 12:04:07'),(291,'291','11. Government services, n.i.e.','2025-05-22 12:04:07'),(292,'292','11.1 Embassies and consulates','2025-05-22 12:04:07'),(293,'293','11.2 Military units and agencies','2025-05-22 12:04:07'),(294,'294','11.3 Other government services','2025-05-22 12:04:07'),(300,'300','C. Income','2025-05-22 12:04:07'),(310,'310','1. Compensation of employees including border, seasonal, and other workers','2025-05-22 12:04:07'),(320,'320','2. Investment income','2025-05-22 12:04:07'),(330,'330','2.1 Direct investment','2025-05-22 12:04:07'),(331,'331','2.1.1 Income on equity','2025-05-22 12:04:07'),(332,'332','2.1.1.1 Dividends and distributed branch profits','2025-05-22 12:04:07'),(333,'333','2.1.1.2 Reinvested earnings and undistributed branch profits','2025-05-22 12:04:07'),(334,'334','2.1.2 Income on debt (interest)','2025-05-22 12:04:07'),(339,'339','2.2 Portfolio investment','2025-05-22 12:04:07'),(340,'340','2.2.1 Income on equity (dividends)','2025-05-22 12:04:07'),(341,'341','2.2.1.1 Monetary authorities','2025-05-22 12:04:07'),(342,'342','2.2.1.2 General government','2025-05-22 12:04:07'),(343,'343','2.2.1.3 Banks','2025-05-22 12:04:07'),(344,'344','2.2.1.4 Other sectors','2025-05-22 12:04:07'),(349,'349','2.2.2 Income on debt (interest)','2025-05-22 12:04:07'),(350,'350','2.2.2.1 Bonds and notes','2025-05-22 12:04:07'),(351,'351','2.2.2.1.1 Monetary authorities','2025-05-22 12:04:07'),(352,'352','2.2.2.1.2 General government','2025-05-22 12:04:07'),(353,'353','2.2.2.1.3 Banks','2025-05-22 12:04:07'),(354,'354','2.2.2.1.4 Other sectors','2025-05-22 12:04:07'),(360,'360','2.2.2.2 Money-market instruments','2025-05-22 12:04:07'),(361,'361','2.2.2.2.1 Monetary authorities','2025-05-22 12:04:07'),(362,'362','2.2.2.2.2 General government','2025-05-22 12:04:07'),(363,'363','2.2.2.2.3 Banks','2025-05-22 12:04:07'),(364,'364','2.2.2.2.4 Other sectors','2025-05-22 12:04:07'),(370,'370','2.3 Other investment','2025-05-22 12:04:07'),(371,'371','2.3.1 Monetary authorities','2025-05-22 12:04:07'),(372,'372','2.3.2 General government','2025-05-22 12:04:07'),(373,'373','2.3.3 Banks','2025-05-22 12:04:07'),(374,'374','2.3.4 Other sectors','2025-05-22 12:04:07'),(379,'379','D. Current transfers','2025-05-22 12:04:07'),(380,'380','1. General government','2025-05-22 12:04:07'),(390,'390','2. Other sectors','2025-05-22 12:04:07'),(391,'391','2.1 Workers\' remittances','2025-05-22 12:04:07'),(392,'392','2.2 Other transfers','2025-05-22 12:04:07'),(400,'400','1. Capital transfers','2025-05-22 12:04:07'),(401,'401','1.1 General government','2025-05-22 12:04:07'),(402,'402','1.1.1 Debt forgiveness','2025-05-22 12:04:07'),(410,'410','1.1.2 Other','2025-05-22 12:04:07'),(430,'430','1.2 Other sectors','2025-05-22 12:04:07'),(431,'431','1.2.1 Migrants\' transfers','2025-05-22 12:04:07'),(432,'432','1.2.2 Debt forgiveness','2025-05-22 12:04:07'),(440,'440','1.2.3 Other','2025-05-22 12:04:07'),(480,'480','2. Acquisitions/disposal of non-produced nonfinancial assets','2025-05-22 12:04:07'),(500,'500','1. Direct investment','2025-05-22 12:04:07'),(505,'505','1.1 Abroad','2025-05-22 12:04:07'),(510,'510','1.1.1 Equity capital','2025-05-22 12:04:07'),(515,'515','1.1.1.1 Claims on affiliated enterprises','2025-05-22 12:04:07'),(520,'520','1.1.1.2 Liabilities to affiliated enterprises','2025-05-22 12:04:07'),(525,'525','1.1.2 Reinvested earnings','2025-05-22 12:04:07'),(526,'526','1.1.2.1 Claims','2025-05-22 12:04:07'),(527,'527','1.1.2.2 Liabilities','2025-05-22 12:04:07'),(530,'530','1.1.3 Other capital','2025-05-22 12:04:07'),(535,'535','1.1.3.1 Claims on affiliated enterprises','2025-05-22 12:04:07'),(540,'540','1.1.3.2 Liabilities to affiliated enterprises','2025-05-22 12:04:07'),(555,'555','1.2 In reporting economy','2025-05-22 12:04:07'),(560,'560','1.2.1 Equity capital','2025-05-22 12:04:07'),(565,'565','1.2.1.1 Claims on direct investors','2025-05-22 12:04:07'),(570,'570','1.2.1.2 Liabilities to direct investors','2025-05-22 12:04:07'),(575,'575','1.2.2 Reinvested earnings','2025-05-22 12:04:07'),(576,'576','1.2.2.1 Claims','2025-05-22 12:04:07'),(577,'577','1.2.2.2 Liabilities','2025-05-22 12:04:07'),(580,'580','1.2.3 Other capital','2025-05-22 12:04:07'),(585,'585','1.2.3.1 Claims on direct investors','2025-05-22 12:04:07'),(590,'590','1.2.3.2 Liabilities to direct investors','2025-05-22 12:04:07'),(600,'600','2. Portfolio investment','2025-05-22 12:04:07'),(602,'602','2.1 Assets','2025-05-22 12:04:07'),(610,'610','2.1.1 Equity securities','2025-05-22 12:04:07'),(611,'611','2.1.1.1 Monetary authorities','2025-05-22 12:04:07'),(612,'612','2.1.1.2 General government','2025-05-22 12:04:07'),(613,'613','2.1.1.3 Banks','2025-05-22 12:04:07'),(614,'614','2.1.1.4 Other sectors','2025-05-22 12:04:07'),(619,'619','2.1.2 Debt securities','2025-05-22 12:04:07'),(620,'620','2.1.2.1 Bonds and notes','2025-05-22 12:04:07'),(621,'621','2.1.2.1.1 Monetary authorities','2025-05-22 12:04:07'),(622,'622','2.1.2.1.2 General government','2025-05-22 12:04:07'),(623,'623','2.1.2.1.3 Banks','2025-05-22 12:04:07'),(624,'624','2.1.2.1.4 Other sectors','2025-05-22 12:04:07'),(630,'630','2.1.2.2 Money market instruments','2025-05-22 12:04:07'),(631,'631','2.1.2.2.1 Monetary authorities','2025-05-22 12:04:07'),(632,'632','2.1.2.2.2 General government','2025-05-22 12:04:07'),(633,'633','2.1.2.2.3 Banks','2025-05-22 12:04:07'),(634,'634','2.1.2.2.4 Other sectors','2025-05-22 12:04:07'),(652,'652','2.2 Liabilities','2025-05-22 12:04:07'),(660,'660','2.2.1 Equity securities','2025-05-22 12:04:07'),(663,'663','2.2.1.1 Banks','2025-05-22 12:04:07'),(664,'664','2.2.1.2 Other sectors','2025-05-22 12:04:07'),(669,'669','2.2.2 Debt securities','2025-05-22 12:04:07'),(670,'670','2.2.2.1 Bonds and notes','2025-05-22 12:04:07'),(671,'671','2.2.2.1.1 Monetary authorities','2025-05-22 12:04:07'),(672,'672','2.2.2.1.2 General government','2025-05-22 12:04:07'),(673,'673','2.2.2.1.3 Banks','2025-05-22 12:04:07'),(674,'674','2.2.2.1.4 Other sectors','2025-05-22 12:04:07'),(680,'680','2.2.2.2 Money market instruments','2025-05-22 12:04:07'),(681,'681','2.2.2.2.1 Monetary authorities','2025-05-22 12:04:07'),(682,'682','2.2.2.2.2 General government','2025-05-22 12:04:07'),(683,'683','2.2.2.2.3 Banks','2025-05-22 12:04:07'),(684,'684','2.2.2.2.4 Other sectors','2025-05-22 12:04:07'),(700,'700','4. Other investment','2025-05-22 12:04:07'),(703,'703','4.1 Assets','2025-05-22 12:04:07'),(706,'706','4.1.1 Trade credits','2025-05-22 12:04:07'),(707,'707','4.1.1.1 General government','2025-05-22 12:04:07'),(708,'708','4.1.1.1.1 Long-term','2025-05-22 12:04:07'),(709,'709','4.1.1.1.2 Short-term','2025-05-22 12:04:07'),(710,'710','4.1.1.2 Other sectors','2025-05-22 12:04:07'),(711,'711','4.1.1.2.1 Long-term','2025-05-22 12:04:07'),(712,'712','4.1.1.2.2 Short-term','2025-05-22 12:04:07'),(714,'714','4.1.2 Loans','2025-05-22 12:04:07'),(715,'715','4.1.2.1 Monetary authorities','2025-05-22 12:04:07'),(717,'717','4.1.2.1.1 Long-term','2025-05-22 12:04:07'),(718,'718','4.1.2.1.2 Short-term','2025-05-22 12:04:07'),(719,'719','4.1.2.2 General government','2025-05-22 12:04:07'),(720,'720','4.1.2.2.1 Long-term','2025-05-22 12:04:07'),(721,'721','4.1.2.2.2 Short-term','2025-05-22 12:04:07'),(722,'722','4.1.2.3 Banks','2025-05-22 12:04:07'),(723,'723','4.1.2.3.1 Long-term','2025-05-22 12:04:07'),(724,'724','4.1.2.3.2 Short-term','2025-05-22 12:04:07'),(725,'725','4.1.2.4 Other sectors','2025-05-22 12:04:07'),(726,'726','4.1.2.4.1 Long-term','2025-05-22 12:04:07'),(727,'727','4.1.2.4.2 Short-term','2025-05-22 12:04:07'),(730,'730','4.1.3 Currency and deposits','2025-05-22 12:04:07'),(731,'731','4.1.3.1 Monetary authorities','2025-05-22 12:04:07'),(732,'732','4.1.3.2 General government','2025-05-22 12:04:07'),(733,'733','4.1.3.3 Banks','2025-05-22 12:04:07'),(734,'734','4.1.3.4 Other sectors','2025-05-22 12:04:07'),(736,'736','4.1.4 Other assets','2025-05-22 12:04:07'),(737,'737','4.1.4.1 Monetary authorities','2025-05-22 12:04:07'),(738,'738','4.1.4.1.1 Long-term','2025-05-22 12:04:07'),(739,'739','4.1.4.1.2 Short-term','2025-05-22 12:04:07'),(740,'740','4.1.4.2 General government','2025-05-22 12:04:07'),(741,'741','4.1.4.2.1 Long-term','2025-05-22 12:04:07'),(742,'742','4.1.4.2.2 Short-term','2025-05-22 12:04:07'),(743,'743','4.1.4.3 Banks','2025-05-22 12:04:07'),(744,'744','4.1.4.3.1 Long-term','2025-05-22 12:04:07'),(745,'745','4.1.4.3.2 Short-term','2025-05-22 12:04:07'),(746,'746','4.1.4.4 Other sectors','2025-05-22 12:04:07'),(747,'747','4.1.4.4.1 Long-term','2025-05-22 12:04:07'),(748,'748','3.1.4.4.2 Short-term','2025-05-22 12:04:07'),(753,'753','4.2 Liabilities','2025-05-22 12:04:07'),(756,'756','4.2.1 Trade credits','2025-05-22 12:04:07'),(757,'757','4.2.1.1 General government','2025-05-22 12:04:07'),(758,'758','4.2.1.1.1 Long-term','2025-05-22 12:04:07'),(759,'759','4.2.1.1.2 Short-term','2025-05-22 12:04:07'),(760,'760','4.2.1.2 Other sectors','2025-05-22 12:04:07'),(761,'761','4.2.1.2.1 Long-term','2025-05-22 12:04:07'),(762,'762','4.2.1.2.2 Short-term','2025-05-22 12:04:07'),(764,'764','4.2.2 Loans','2025-05-22 12:04:07'),(765,'765','4.2.2.1 Monetary authorities','2025-05-22 12:04:07'),(766,'766','4.2.2.1.1 Use of Fund credit and loans from the Fund','2025-05-22 12:04:07'),(767,'767','4.2.2.1.2 Other long-term','2025-05-22 12:04:07'),(768,'768','4.2.2.1.3 Short-term','2025-05-22 12:04:07'),(769,'769','4.2.2.2 General government','2025-05-22 12:04:07'),(770,'770','4.2.2.2.1 Long-term','2025-05-22 12:04:07'),(771,'771','4.2.2.2.2 Short-term','2025-05-22 12:04:07'),(772,'772','4.2.2.3 Banks','2025-05-22 12:04:07'),(773,'773','4.2.2.3.1 Long-term','2025-05-22 12:04:07'),(774,'774','4.2.2.3.2 Short-term','2025-05-22 12:04:07'),(775,'775','4.2.2.4 Other sectors','2025-05-22 12:04:07'),(776,'776','4.2.2.4.1 Long-term','2025-05-22 12:04:07'),(777,'777','4.2.2.4.2 Short-term','2025-05-22 12:04:07'),(780,'780','4.2.3 Currency and deposits','2025-05-22 12:04:07'),(781,'781','4.2.3.1 Monetary authorities','2025-05-22 12:04:07'),(782,'782','4.2.3.2 General government','2025-05-22 12:04:07'),(783,'783','4.2.3.3 Banks','2025-05-22 12:04:07'),(784,'784','4.2.3.4 Other sectors','2025-05-22 12:04:07'),(786,'786','4.2.4 Other liabilities','2025-05-22 12:04:07'),(787,'787','4.2.4.1 Monetary authorities','2025-05-22 12:04:07'),(788,'788','4.2.4.1.1 Long-term','2025-05-22 12:04:07'),(789,'789','4.2.4.1.2 Short-term','2025-05-22 12:04:07'),(790,'790','4.2.4.2 General government','2025-05-22 12:04:07'),(791,'791','4.2.4.2.1 Long-term','2025-05-22 12:04:07'),(792,'792','4.2.4.2.2 Short-term','2025-05-22 12:04:07'),(793,'793','4.2.4.3 Banks','2025-05-22 12:04:07'),(794,'794','4.2.4.3.1 Long-term','2025-05-22 12:04:07'),(795,'795','4.2.4.3.2 Short-term','2025-05-22 12:04:07'),(796,'796','4.2.4.4 Other sectors','2025-05-22 12:04:07'),(797,'797','4.2.4.4.1 Long-term','2025-05-22 12:04:07'),(798,'798','4.2.4.4.2 Short-term','2025-05-22 12:04:07'),(802,'802','5. Official reserve assets','2025-05-22 12:04:07'),(803,'803','5.4 Foreign exchange','2025-05-22 12:04:07'),(806,'806','5.4.2 Securities','2025-05-22 12:04:07'),(808,'808','5.4.1 Currency and deposits','2025-05-22 12:04:07'),(810,'810','5.3 Reserve position in the Fund','2025-05-22 12:04:07'),(811,'811','5.2 SDRs','2025-05-22 12:04:07'),(812,'812','5.1 Monetary gold (including gold deposits and, if appropriate, gold swapped)','2025-05-22 12:04:07'),(813,'813','5.6 Other claims','2025-05-22 12:04:07'),(850,'850','Total passenger','2025-05-22 12:04:07'),(851,'851','Total freight','2025-05-22 12:04:07'),(852,'852','Total other services','2025-05-22 12:04:07'),(858,'858','1.3 Other freight','2025-05-22 12:04:07'),(862,'862','1.4 Space freight','2025-05-22 12:04:07'),(863,'863','1.5 Rail freight','2025-05-22 12:04:07'),(865,'865','1.7 Inland waterway freight','2025-05-22 12:04:07'),(868,'868','1.8 Pipeline freight','2025-05-22 12:04:07'),(871,'871','2.3 All other travel expenditure','2025-05-22 12:04:07'),(887,'887','5. Financial intermediation services indirectly measured (FISIM)','2025-05-22 12:04:07'),(888,'888','6. Financial services including FISIM','2025-05-22 12:04:07'),(889,'889','7.2.1 News agency services','2025-05-22 12:04:07'),(890,'890','7.2.2 Other information provision services','2025-05-22 12:04:07'),(891,'891','8.1 Franchises and similar rights','2025-05-22 12:04:07'),(892,'892','8.2 Other royalties and license fees','2025-05-22 12:04:07'),(894,'894','8. Audiovisual transactions','2025-05-22 12:04:07'),(895,'895','10.2.1 Education services','2025-05-22 12:04:07'),(896,'896','10.2.2 Health services','2025-05-22 12:04:07'),(897,'897','10.2.3 Other','2025-05-22 12:04:07'),(900,'900','3.1 Financial derivatives assets','2025-05-22 12:04:07'),(901,'901','3.1.1 Monetary authorities','2025-05-22 12:04:07'),(902,'902','3.1.2 General government','2025-05-22 12:04:07'),(903,'903','3.1.3 Banks','2025-05-22 12:04:07'),(904,'904','3.1.4 Other sectors','2025-05-22 12:04:07'),(905,'905','3.2 Financial derivatives liabilities','2025-05-22 12:04:07'),(906,'906','3.2.1 Monetary authorities','2025-05-22 12:04:07'),(907,'907','3.2.2 General government','2025-05-22 12:04:07'),(908,'908','3.2.3 Banks','2025-05-22 12:04:07'),(909,'909','3.2.4 Other sectors','2025-05-22 12:04:07'),(910,'910','3. Financial derivatives (net)','2025-05-22 12:04:07'),(911,'911','3.0.1 Monetary authorities','2025-05-22 12:04:07'),(912,'912','3.0.2 General government','2025-05-22 12:04:07'),(913,'913','3.0.3 Banks','2025-05-22 12:04:07'),(914,'914','3.0.4 Other sectors','2025-05-22 12:04:07'),(920,'920','Exceptional financing transactions (Total)','2025-05-22 12:04:07'),(950,'950','1. Freight transportation on merchandise, valued on a transaction basis','2025-05-22 12:04:07'),(951,'951','1.1 Sea freight','2025-05-22 12:04:07'),(952,'952','1.2 Air freight','2025-05-22 12:04:07'),(953,'953','1.6 Road freight','2025-05-22 12:04:07'),(956,'956','2.1 Expenditure on goods','2025-05-22 12:04:07'),(957,'957','2.2 Expenditure on accommodation and food and beverage serving services','2025-05-22 12:04:07'),(960,'960','3. Gross insurance premiums','2025-05-22 12:04:07'),(961,'961','4. Gross insurance claims','2025-05-22 12:04:07'),(962,'962','7. Merchanting gross flows','2025-05-22 12:04:07'),(972,'972','3.1 Gross premiums-life insurance','2025-05-22 12:04:07'),(973,'973','4.1 Gross claims-life insurance','2025-05-22 12:04:07'),(974,'974','3.2 Gross premiums-freight insurance','2025-05-22 12:04:07'),(975,'975','4.2 Gross claims-freight insurance','2025-05-22 12:04:07'),(976,'976','3.3 Gross premiums-other direct insurance','2025-05-22 12:04:07'),(977,'977','4.3 Gross claims-other direct insurance','2025-05-22 12:04:07'),(982,'982','Current and capital transfers','2025-05-22 12:04:07'),(983,'983','Current + capital + financial accounts','2025-05-22 12:04:07'),(984,'984','Current + capital + financial accounts + net errors and omissions','2025-05-22 12:04:07'),(991,'991','Goods and services','2025-05-22 12:04:07'),(992,'992','Goods, services, and income','2025-05-22 12:04:07'),(993,'993','1. Current account','2025-05-22 12:04:07'),(994,'994','E. Capital Account','2025-05-22 12:04:07'),(995,'995','F. Financial Account','2025-05-22 12:04:07'),(996,'996','Capital and Financial Account','2025-05-22 12:04:07'),(998,'998','Net errors and omissions','2025-05-22 12:04:07'),(11010,'110 B','1.1 Export/import of goods in trade statistics','2025-05-22 12:04:07'),(11020,'110 C','1.2 Adjustments to trade statistics','2025-05-22 12:04:07'),(11030,'110 CA','1.3 For coverage','2025-05-22 12:04:07'),(11040,'110 CB','1.4 For classification','2025-05-22 12:04:07'),(11050,'110 CC','1.5 For valuation','2025-05-22 12:04:07'),(11060,'110 CD','1.6 For timing','2025-05-22 12:04:07'),(38010,'380 EC','Exc. Fin. - Intergovernmental grants','2025-05-22 12:04:07'),(38020,'380 ED','Exc. Fin. - Grants received from Fund subsidy accounts','2025-05-22 12:04:07'),(38030,'380 Z','Other','2025-05-22 12:04:07'),(40210,'402 EB','Exceptional Financing','2025-05-22 12:04:07'),(40220,'402 Z','Other','2025-05-22 12:04:07'),(57010,'570 EF','Exc. Fin. - Investment associated with debt reduction','2025-05-22 12:04:07'),(57020,'570 EG','Exc. Fin. - Other','2025-05-22 12:04:07'),(57030,'570 Z','1.2.1.3 Other','2025-05-22 12:04:07'),(67110,'671 EH','Exc. Fin. - Issues','2025-05-22 12:04:07'),(67120,'671 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(67130,'671 Z','Other','2025-05-22 12:04:07'),(67210,'672 EH','Exc. Fin. - Issues','2025-05-22 12:04:07'),(67220,'672 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(67230,'672 Z','Other','2025-05-22 12:04:07'),(67310,'673 EH','Exc. Fin. - Issues','2025-05-22 12:04:07'),(67320,'673 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(67330,'673 Z','Other','2025-05-22 12:04:07'),(67410,'674 EH','Exc. Fin. - Issues','2025-05-22 12:04:07'),(67420,'674 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(67430,'674 Z','Other','2025-05-22 12:04:07'),(68110,'681 EH','Exc. Fin. - Issues','2025-05-22 12:04:07'),(68120,'681 Z','Other','2025-05-22 12:04:07'),(68210,'682 EH','Exc. Fin. - Issues','2025-05-22 12:04:07'),(68220,'682 Z','Other','2025-05-22 12:04:07'),(68310,'683 EH','Exc. Fin. - Issues','2025-05-22 12:04:07'),(68320,'683 Z','Other','2025-05-22 12:04:07'),(68410,'684 EH','Exc. Fin. - Issues','2025-05-22 12:04:07'),(68420,'684 Z','Other','2025-05-22 12:04:07'),(76710,'767 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors onauthorities\' behalf','2025-05-22 12:04:07'),(76720,'767 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-22 12:04:07'),(76730,'767 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(76740,'767 Z','Other','2025-05-22 12:04:07'),(76810,'768 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-22 12:04:07'),(76820,'768 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-22 12:04:07'),(76830,'768 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(76840,'768 Z','Other','2025-05-22 12:04:07'),(77010,'770 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-22 12:04:07'),(77020,'770 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-22 12:04:07'),(77030,'770 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(77040,'770 Z','Other','2025-05-22 12:04:07'),(77110,'771 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-22 12:04:07'),(77120,'771 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-22 12:04:07'),(77130,'771 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(77140,'771 Z','Other','2025-05-22 12:04:07'),(77310,'773 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-22 12:04:07'),(77320,'773 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-22 12:04:07'),(77330,'773 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(77340,'773 Z','Other','2025-05-22 12:04:07'),(77410,'774 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-22 12:04:07'),(77420,'774 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-22 12:04:07'),(77430,'774 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(77440,'774 Z','Other','2025-05-22 12:04:07'),(77610,'776 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-22 12:04:07'),(77620,'776 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-22 12:04:07'),(77630,'776 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(77640,'776 Z','Other','2025-05-22 12:04:07'),(77710,'777 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-22 12:04:07'),(77720,'777 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-22 12:04:07'),(77730,'777 EM','Exc. Fin. - Advance repayments','2025-05-22 12:04:07'),(77740,'777 Z','Other','2025-05-22 12:04:07'),(78905,'789 F','Exc. Fin. - Total arrears','2025-05-22 12:04:07'),(78910,'789 FA','Exc. Fin. - Accumulation of arrears','2025-05-22 12:04:07'),(78915,'789 FB','Exc. Fin. - Principal on short-term debt','2025-05-22 12:04:07'),(78920,'789 FC','Exc. Fin. - Principal on long-term debt','2025-05-22 12:04:07'),(78925,'789 FD','Exc. Fin. - Original interest','2025-05-22 12:04:07'),(78930,'789 FE','Exc. Fin. - Penalty interest','2025-05-22 12:04:07'),(78935,'789 FF','Exc. Fin. - Repayments of arrears','2025-05-22 12:04:07'),(78940,'789 FG','Exc. Fin. - Principal','2025-05-22 12:04:07'),(78945,'789 FH','Exc. Fin. - Interest','2025-05-22 12:04:07'),(78950,'789 FI','Exc. Fin. - Rescheduling of arrears','2025-05-22 12:04:07'),(78955,'789 FJ','Exc. Fin. - Principal','2025-05-22 12:04:07'),(78960,'789 FK','Exc. Fin. - Interest','2025-05-22 12:04:07'),(78965,'789 FM','Exc. Fin. - Cancellation of arrears','2025-05-22 12:04:07'),(78970,'789 FN','Exc. Fin. - Principal','2025-05-22 12:04:07'),(78975,'789 FO','Exc. Fin. - Interest','2025-05-22 12:04:07'),(78980,'789 Z','Other','2025-05-22 12:04:07'),(79205,'792 F','Exc. Fin. - Total arrears','2025-05-22 12:04:07'),(79210,'792 FA','Exc. Fin. - Accumulation of arrears','2025-05-22 12:04:07'),(79215,'792 FB','Exc. Fin. - Principal on short-term debt','2025-05-22 12:04:07'),(79220,'792 FC','Exc. Fin. - Principal on long-term debt','2025-05-22 12:04:07'),(79225,'792 FD','Exc. Fin. - Original interest','2025-05-22 12:04:07'),(79230,'792 FE','Exc. Fin. - Penalty interest','2025-05-22 12:04:07'),(79235,'792 FF','Exc. Fin. - Repayments of arrears','2025-05-22 12:04:07'),(79240,'792 FG','Exc. Fin. - Principal','2025-05-22 12:04:07'),(79245,'792 FH','Exc. Fin. - Interest','2025-05-22 12:04:07'),(79250,'792 FI','Exc. Fin. - Rescheduling of arrears','2025-05-22 12:04:07'),(79255,'792 FJ','Exc. Fin. - Principal','2025-05-22 12:04:07'),(79260,'792 FK','Exc. Fin. - Interest','2025-05-22 12:04:07'),(79265,'792 FM','Exc. Fin. - Cancellation of arrears','2025-05-22 12:04:07'),(79270,'792 FN','Exc. Fin. - Principal','2025-05-22 12:04:07'),(79275,'792 FO','Exc. Fin. - Interest','2025-05-22 12:04:07'),(79280,'792 Z','Other','2025-05-22 12:04:07'),(79505,'795 F','Exc. Fin. - Total arrears','2025-05-22 12:04:07'),(79510,'795 FA','Exc. Fin. - Accumulation of arrears','2025-05-22 12:04:07'),(79515,'795 FB','Exc. Fin. - Principal on short-term debt','2025-05-22 12:04:07'),(79520,'795 FC','Exc. Fin. - Principal on long-term debt','2025-05-22 12:04:07'),(79525,'795 FD','Exc. Fin. - Original interest','2025-05-22 12:04:07'),(79530,'795 FE','Exc. Fin. - Penalty interest','2025-05-22 12:04:07'),(79535,'795 FF','Exc. Fin. - Repayments of arrears','2025-05-22 12:04:07'),(79540,'795 FG','Exc. Fin. - Principal','2025-05-22 12:04:07'),(79545,'795 FH','Exc. Fin. - Interest','2025-05-22 12:04:07'),(79550,'795 FI','Exc. Fin. - Rescheduling of arrears','2025-05-22 12:04:07'),(79555,'795 FJ','Exc. Fin. - Principal','2025-05-22 12:04:07'),(79560,'795 FK','Exc. Fin. - Interest','2025-05-22 12:04:07'),(79565,'795 FM','Exc. Fin. - Cancellation of arrears','2025-05-22 12:04:07'),(79570,'795 FN','Exc. Fin. - Principal','2025-05-22 12:04:07'),(79575,'795 FO','Exc. Fin. - Interest','2025-05-22 12:04:07'),(79580,'795 Z','Other','2025-05-22 12:04:07'),(79805,'798 F','Exc. Fin. - Total arrears','2025-05-22 12:04:07'),(79810,'798 FA','Exc. Fin. - Accumulation of arrears','2025-05-22 12:04:07'),(79815,'798 FB','Exc. Fin. - Principal on short-term debt','2025-05-22 12:04:07'),(79820,'798 FC','Exc. Fin. - Principal on long-term debt','2025-05-22 12:04:07'),(79825,'798 FD','Exc. Fin. - Original interest','2025-05-22 12:04:07'),(79830,'798 FE','Exc. Fin. - Penalty interest','2025-05-22 12:04:07'),(79835,'798 FF','Exc. Fin. - Repayments of arrears','2025-05-22 12:04:07'),(79840,'798 FG','Exc. Fin. - Principal','2025-05-22 12:04:07'),(79845,'798 FH','Exc. Fin. - Interest','2025-05-22 12:04:07'),(79850,'798 FI','Exc. Fin. - Rescheduling of arrears','2025-05-22 12:04:07'),(79855,'798 FJ','Exc. Fin. - Principal','2025-05-22 12:04:07'),(79860,'798 FK','Exc. Fin. - Interest','2025-05-22 12:04:07'),(79865,'798 FM','Exc. Fin. - Cancellation of arrears','2025-05-22 12:04:07'),(79870,'798 FN','Exc. Fin. - Principal','2025-05-22 12:04:07'),(79875,'798 FO','Exc. Fin. - Interest','2025-05-22 12:04:07'),(79880,'798 Z','Other','2025-05-22 12:04:07'),(80610,'806 S','5.4.2.1 Equities','2025-05-22 12:04:07'),(80620,'806 T','5.4.2.2 Bonds and notes','2025-05-22 12:04:07'),(80630,'806 U','5.4.2.3 Money market instruments','2025-05-22 12:04:07'),(80810,'808 A','5.4.1.1 With monetary authorities','2025-05-22 12:04:07'),(80820,'808 B','5.4.1.2 With banks','2025-05-22 12:04:07'),(81440,'814 A','5.5 Financial derivatives, net','2025-05-22 12:04:07');
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
INSERT INTO `bulkProcessingState` VALUES (1,'RECEIVED','The switch has received the individual transfer ids part of the bulk transfer',1,'2025-05-22 12:04:07'),(2,'RECEIVED_DUPLICATE','The switch has matched individual transfer as duplicate',1,'2025-05-22 12:04:07'),(3,'RECEIVED_INVALID','The switch has matched individual transfer as invalid within Prepare or Position Handler',1,'2025-05-22 12:04:07'),(4,'ACCEPTED','The switch has reserved the funds for the transfers in the bulk',1,'2025-05-22 12:04:07'),(5,'PROCESSING','Fulfilment request has been received for the individual transfer',1,'2025-05-22 12:04:07'),(6,'FULFIL_DUPLICATE','The switch has matched individual transfer fulfil as duplicate',1,'2025-05-22 12:04:07'),(7,'FULFIL_INVALID','The switch has matched individual transfer fulfilment as invalid within Fulfil or Position Handler',1,'2025-05-22 12:04:07'),(8,'COMPLETED','The switch has marked the individual transfer as committed',1,'2025-05-22 12:04:07'),(9,'REJECTED','The switch has marked the individual transfer as rejected',1,'2025-05-22 12:04:07'),(10,'EXPIRED','The switch has marked the individual transfer as timed out',1,'2025-05-22 12:04:07'),(11,'ABORTING','The switch has marked the individual transfer as aborting due to failed validation',1,'2025-05-22 12:04:07');
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
INSERT INTO `bulkTransferState` VALUES ('ABORTING','PROCESSING','The switch is attempting to abort all individual transfers',1,'2025-05-22 12:04:07'),('ACCEPTED','ACCEPTED','The switch has reserved the funds for the transfers in the bulk',1,'2025-05-22 12:04:07'),('COMPLETED','COMPLETED','Final state when transfers in the bulk are committed',1,'2025-05-22 12:04:07'),('EXPIRED','COMPLETED','Final state when transfers in the bulk have expired',1,'2025-05-22 12:04:07'),('EXPIRING','PROCESSING','One or more individual transfers from have expired',1,'2025-05-22 12:04:07'),('INVALID','REJECTED','Final state when the switch has completed processing of pending invalid bulk transfer',1,'2025-05-22 12:04:07'),('PENDING_FULFIL','PROCESSING','Fulfilment request has been received by the switch',1,'2025-05-22 12:04:07'),('PENDING_INVALID','PENDING','Validation of received bulk transfer is not successful',1,'2025-05-22 12:04:07'),('PENDING_PREPARE','PENDING','Validation of received bulk transfer is successful',1,'2025-05-22 12:04:07'),('PROCESSING','PROCESSING','Fulfilment request has been received by the switch',1,'2025-05-22 12:04:07'),('RECEIVED','RECEIVED','The switch has received the bulk transfer',1,'2025-05-22 12:04:07'),('REJECTED','REJECTED','Final state when the switch has completed rejection request by the payee',1,'2025-05-22 12:04:07');
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
INSERT INTO `currency` VALUES ('AED','UAE dirham',1,'2025-05-22 12:04:07',2),('AFA','Afghanistan afghani (obsolete)',1,'2025-05-22 12:04:07',4),('AFN','Afghanistan afghani',1,'2025-05-22 12:04:07',2),('ALL','Albanian lek',1,'2025-05-22 12:04:07',2),('AMD','Armenian dram',1,'2025-05-22 12:04:07',2),('ANG','Netherlands Antillian guilder',1,'2025-05-22 12:04:07',2),('AOA','Angolan kwanza',1,'2025-05-22 12:04:07',2),('AOR','Angolan kwanza reajustado',1,'2025-05-22 12:04:07',4),('ARS','Argentine peso',1,'2025-05-22 12:04:07',2),('AUD','Australian dollar',1,'2025-05-22 12:04:07',2),('AWG','Aruban guilder',1,'2025-05-22 12:04:07',2),('AZN','Azerbaijanian new manat',1,'2025-05-22 12:04:07',2),('BAM','Bosnia-Herzegovina convertible mark',1,'2025-05-22 12:04:07',2),('BBD','Barbados dollar',1,'2025-05-22 12:04:07',2),('BDT','Bangladeshi taka',1,'2025-05-22 12:04:07',2),('BGN','Bulgarian lev',1,'2025-05-22 12:04:07',2),('BHD','Bahraini dinar',1,'2025-05-22 12:04:07',3),('BIF','Burundi franc',1,'2025-05-22 12:04:07',0),('BMD','Bermudian dollar',1,'2025-05-22 12:04:07',2),('BND','Brunei dollar',1,'2025-05-22 12:04:07',2),('BOB','Bolivian boliviano',1,'2025-05-22 12:04:07',2),('BOV','Bolivia Mvdol',1,'2025-05-22 12:04:07',2),('BRL','Brazilian real',1,'2025-05-22 12:04:07',2),('BSD','Bahamian dollar',1,'2025-05-22 12:04:07',2),('BTN','Bhutan ngultrum',1,'2025-05-22 12:04:07',2),('BWP','Botswana pula',1,'2025-05-22 12:04:07',2),('BYN','Belarusian ruble',1,'2025-05-22 12:04:07',4),('BYR','Belarussian Ruble',1,'2025-05-22 12:04:07',0),('BZD','Belize dollar',1,'2025-05-22 12:04:07',2),('CAD','Canadian dollar',1,'2025-05-22 12:04:07',2),('CDF','Congolese franc',1,'2025-05-22 12:04:07',2),('CHE','Switzerland WIR Euro',1,'2025-05-22 12:04:07',2),('CHF','Swiss franc',1,'2025-05-22 12:04:07',2),('CHW','Switzerland WIR Franc',1,'2025-05-22 12:04:07',2),('CLF','Unidad de Fomento',1,'2025-05-22 12:04:07',4),('CLP','Chilean peso',1,'2025-05-22 12:04:07',0),('CNY','Chinese yuan renminbi',1,'2025-05-22 12:04:07',2),('COP','Colombian peso',1,'2025-05-22 12:04:07',2),('COU','Unidad de Valor Real',1,'2025-05-22 12:04:07',2),('CRC','Costa Rican colon',1,'2025-05-22 12:04:07',2),('CUC','Cuban convertible peso',1,'2025-05-22 12:04:07',2),('CUP','Cuban peso',1,'2025-05-22 12:04:07',2),('CVE','Cape Verde escudo',1,'2025-05-22 12:04:07',2),('CZK','Czech koruna',1,'2025-05-22 12:04:07',2),('DJF','Djibouti franc',1,'2025-05-22 12:04:07',0),('DKK','Danish krone',1,'2025-05-22 12:04:07',2),('DOP','Dominican peso',1,'2025-05-22 12:04:07',2),('DZD','Algerian dinar',1,'2025-05-22 12:04:07',2),('EEK','Estonian kroon',1,'2025-05-22 12:04:07',4),('EGP','Egyptian pound',1,'2025-05-22 12:04:07',2),('ERN','Eritrean nakfa',1,'2025-05-22 12:04:07',2),('ETB','Ethiopian birr',1,'2025-05-22 12:04:07',2),('EUR','EU euro',1,'2025-05-22 12:04:07',2),('FJD','Fiji dollar',1,'2025-05-22 12:04:07',2),('FKP','Falkland Islands pound',1,'2025-05-22 12:04:07',2),('GBP','British pound',1,'2025-05-22 12:04:07',2),('GEL','Georgian lari',1,'2025-05-22 12:04:07',2),('GGP','Guernsey pound',1,'2025-05-22 12:04:07',4),('GHS','Ghanaian new cedi',1,'2025-05-22 12:04:07',2),('GIP','Gibraltar pound',1,'2025-05-22 12:04:07',2),('GMD','Gambian dalasi',1,'2025-05-22 12:04:07',2),('GNF','Guinean franc',1,'2025-05-22 12:04:07',0),('GTQ','Guatemalan quetzal',1,'2025-05-22 12:04:07',2),('GYD','Guyana dollar',1,'2025-05-22 12:04:07',2),('HKD','Hong Kong SAR dollar',1,'2025-05-22 12:04:07',2),('HNL','Honduran lempira',1,'2025-05-22 12:04:07',2),('HRK','Croatian kuna',1,'2025-05-22 12:04:07',2),('HTG','Haitian gourde',1,'2025-05-22 12:04:07',2),('HUF','Hungarian forint',1,'2025-05-22 12:04:07',2),('IDR','Indonesian rupiah',1,'2025-05-22 12:04:07',2),('ILS','Israeli new shekel',1,'2025-05-22 12:04:07',2),('IMP','Isle of Man pound',1,'2025-05-22 12:04:07',4),('INR','Indian rupee',1,'2025-05-22 12:04:07',2),('IQD','Iraqi dinar',1,'2025-05-22 12:04:07',3),('IRR','Iranian rial',1,'2025-05-22 12:04:07',2),('ISK','Icelandic krona',1,'2025-05-22 12:04:07',0),('JEP','Jersey pound',1,'2025-05-22 12:04:07',4),('JMD','Jamaican dollar',1,'2025-05-22 12:04:07',2),('JOD','Jordanian dinar',1,'2025-05-22 12:04:07',3),('JPY','Japanese yen',1,'2025-05-22 12:04:07',0),('KES','Kenyan shilling',1,'2025-05-22 12:04:07',2),('KGS','Kyrgyz som',1,'2025-05-22 12:04:07',2),('KHR','Cambodian riel',1,'2025-05-22 12:04:07',2),('KMF','Comoros franc',1,'2025-05-22 12:04:07',0),('KPW','North Korean won',1,'2025-05-22 12:04:07',2),('KRW','South Korean won',1,'2025-05-22 12:04:07',0),('KWD','Kuwaiti dinar',1,'2025-05-22 12:04:07',3),('KYD','Cayman Islands dollar',1,'2025-05-22 12:04:07',2),('KZT','Kazakh tenge',1,'2025-05-22 12:04:07',2),('LAK','Lao kip',1,'2025-05-22 12:04:07',2),('LBP','Lebanese pound',1,'2025-05-22 12:04:07',2),('LKR','Sri Lanka rupee',1,'2025-05-22 12:04:07',2),('LRD','Liberian dollar',1,'2025-05-22 12:04:07',2),('LSL','Lesotho loti',1,'2025-05-22 12:04:07',2),('LTL','Lithuanian litas',1,'2025-05-22 12:04:07',4),('LVL','Latvian lats',1,'2025-05-22 12:04:07',4),('LYD','Libyan dinar',1,'2025-05-22 12:04:07',3),('MAD','Moroccan dirham',1,'2025-05-22 12:04:07',2),('MDL','Moldovan leu',1,'2025-05-22 12:04:07',2),('MGA','Malagasy ariary',1,'2025-05-22 12:04:07',2),('MKD','Macedonian denar',1,'2025-05-22 12:04:07',2),('MMK','Myanmar kyat',1,'2025-05-22 12:04:07',2),('MNT','Mongolian tugrik',1,'2025-05-22 12:04:07',2),('MOP','Macao SAR pataca',1,'2025-05-22 12:04:07',2),('MRO','Mauritanian ouguiya',1,'2025-05-22 12:04:07',2),('MUR','Mauritius rupee',1,'2025-05-22 12:04:07',2),('MVR','Maldivian rufiyaa',1,'2025-05-22 12:04:07',2),('MWK','Malawi kwacha',1,'2025-05-22 12:04:07',2),('MXN','Mexican peso',1,'2025-05-22 12:04:07',2),('MXV','Mexican Unidad de Inversion (UDI)',1,'2025-05-22 12:04:07',2),('MYR','Malaysian ringgit',1,'2025-05-22 12:04:07',2),('MZN','Mozambique new metical',1,'2025-05-22 12:04:07',2),('NAD','Namibian dollar',1,'2025-05-22 12:04:07',2),('NGN','Nigerian naira',1,'2025-05-22 12:04:07',2),('NIO','Nicaraguan cordoba oro',1,'2025-05-22 12:04:07',2),('NOK','Norwegian krone',1,'2025-05-22 12:04:07',2),('NPR','Nepalese rupee',1,'2025-05-22 12:04:07',2),('NZD','New Zealand dollar',1,'2025-05-22 12:04:07',2),('OMR','Omani rial',1,'2025-05-22 12:04:07',3),('PAB','Panamanian balboa',1,'2025-05-22 12:04:07',2),('PEN','Peruvian nuevo sol',1,'2025-05-22 12:04:07',2),('PGK','Papua New Guinea kina',1,'2025-05-22 12:04:07',2),('PHP','Philippine peso',1,'2025-05-22 12:04:07',2),('PKR','Pakistani rupee',1,'2025-05-22 12:04:07',2),('PLN','Polish zloty',1,'2025-05-22 12:04:07',2),('PYG','Paraguayan guarani',1,'2025-05-22 12:04:07',0),('QAR','Qatari rial',1,'2025-05-22 12:04:07',2),('RON','Romanian new leu',1,'2025-05-22 12:04:07',2),('RSD','Serbian dinar',1,'2025-05-22 12:04:07',2),('RUB','Russian ruble',1,'2025-05-22 12:04:07',2),('RWF','Rwandan franc',1,'2025-05-22 12:04:07',0),('SAR','Saudi riyal',1,'2025-05-22 12:04:07',2),('SBD','Solomon Islands dollar',1,'2025-05-22 12:04:07',2),('SCR','Seychelles rupee',1,'2025-05-22 12:04:07',2),('SDG','Sudanese pound',1,'2025-05-22 12:04:07',2),('SEK','Swedish krona',1,'2025-05-22 12:04:07',2),('SGD','Singapore dollar',1,'2025-05-22 12:04:07',2),('SHP','Saint Helena pound',1,'2025-05-22 12:04:07',2),('SLL','Sierra Leone leone',1,'2025-05-22 12:04:07',2),('SOS','Somali shilling',1,'2025-05-22 12:04:07',2),('SPL','Seborgan luigino',1,'2025-05-22 12:04:07',4),('SRD','Suriname dollar',1,'2025-05-22 12:04:07',2),('SSP','South Sudanese Pound',1,'2025-05-22 12:04:07',2),('STD','Sao Tome and Principe dobra',1,'2025-05-22 12:04:07',2),('SVC','El Salvador colon',1,'2025-05-22 12:04:07',2),('SYP','Syrian pound',1,'2025-05-22 12:04:07',2),('SZL','Swaziland lilangeni',1,'2025-05-22 12:04:07',2),('THB','Thai baht',1,'2025-05-22 12:04:07',2),('TJS','Tajik somoni',1,'2025-05-22 12:04:07',2),('TMT','Turkmen new manat',1,'2025-05-22 12:04:07',2),('TND','Tunisian dinar',1,'2025-05-22 12:04:07',3),('TOP','Tongan pa\'anga',1,'2025-05-22 12:04:07',2),('TRY','Turkish lira',1,'2025-05-22 12:04:07',2),('TTD','Trinidad and Tobago dollar',1,'2025-05-22 12:04:07',2),('TVD','Tuvaluan dollar',1,'2025-05-22 12:04:07',4),('TWD','Taiwan New dollar',1,'2025-05-22 12:04:07',2),('TZS','Tanzanian shilling',1,'2025-05-22 12:04:07',2),('UAH','Ukrainian hryvnia',1,'2025-05-22 12:04:07',2),('UGX','Uganda new shilling',1,'2025-05-22 12:04:07',0),('USD','US dollar',1,'2025-05-22 12:04:07',2),('USN','US Dollar (Next day)',1,'2025-05-22 12:04:07',2),('UYI','Uruguay Peso en Unidades Indexadas (URUIURUI)',1,'2025-05-22 12:04:07',0),('UYU','Uruguayan peso uruguayo',1,'2025-05-22 12:04:07',2),('UZS','Uzbekistani sum',1,'2025-05-22 12:04:07',2),('VEF','Venezuelan bolivar fuerte',1,'2025-05-22 12:04:07',2),('VND','Vietnamese dong',1,'2025-05-22 12:04:07',0),('VUV','Vanuatu vatu',1,'2025-05-22 12:04:07',0),('WST','Samoan tala',1,'2025-05-22 12:04:07',2),('XAF','CFA franc BEAC',1,'2025-05-22 12:04:07',0),('XAG','Silver (ounce)',1,'2025-05-22 12:04:07',4),('XAU','Gold (ounce)',1,'2025-05-22 12:04:07',4),('XCD','East Caribbean dollar',1,'2025-05-22 12:04:07',2),('XDR','IMF special drawing right',1,'2025-05-22 12:04:07',4),('XFO','Gold franc',1,'2025-05-22 12:04:07',4),('XFU','UIC franc',1,'2025-05-22 12:04:07',4),('XOF','CFA franc BCEAO',1,'2025-05-22 12:04:07',0),('XPD','Palladium (ounce)',1,'2025-05-22 12:04:07',4),('XPF','CFP franc',1,'2025-05-22 12:04:07',0),('XPT','Platinum (ounce)',1,'2025-05-22 12:04:07',4),('XSU','Sucre',1,'2025-05-22 12:04:07',4),('XTS','Reserved for testing purposes',1,'2025-05-22 12:04:07',4),('XUA','African Development Bank (ADB) Unit of Account',1,'2025-05-22 12:04:07',4),('XXX','Assigned for transactions where no currency is involved',1,'2025-05-22 12:04:07',4),('YER','Yemeni rial',1,'2025-05-22 12:04:07',2),('ZAR','South African rand',1,'2025-05-22 12:04:07',2),('ZMK','Zambian kwacha (obsolete)',1,'2025-05-22 12:04:07',4),('ZMW','Zambian kwacha',1,'2025-05-22 12:04:07',2),('ZWD','Zimbabwe dollar (initial)',1,'2025-05-22 12:04:07',4),('ZWL','Zimbabwe dollar (3rd denomination)',1,'2025-05-22 12:04:07',2),('ZWN','Zimbabwe dollar (1st denomination)',1,'2025-05-22 12:04:07',4),('ZWR','Zimbabwe dollar (2nd denomination)',1,'2025-05-22 12:04:07',4);
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
INSERT INTO `endpointType` VALUES (1,'ALARM_NOTIFICATION_URL','Participant callback URL to which alarm notifications can be sent',1,'2025-05-22 12:04:07'),(2,'ALARM_NOTIFICATION_TOPIC','Kafka topic used to publish alarm notifications',1,'2025-05-22 12:04:07'),(3,'FSPIOP_CALLBACK_URL_TRANSFER_POST','Participant callback URL to which transfer post can be sent',1,'2025-05-22 12:04:07'),(4,'FSPIOP_CALLBACK_URL_TRANSFER_PUT','Participant callback URL to which transfer put can be sent',1,'2025-05-22 12:04:07'),(5,'FSPIOP_CALLBACK_URL_TRANSFER_ERROR','Participant callback URL to which transfer error notifications can be sent',1,'2025-05-22 12:04:07'),(6,'FSPIOP_CALLBACK_URL_FX_QUOTES','Participant callback URL to which FX quote requests can be sent',1,'2025-05-22 12:04:07'),(7,'FSPIOP_CALLBACK_URL_FX_TRANSFER_POST','Participant callback URL to which FX transfer post can be sent',1,'2025-05-22 12:04:07'),(8,'FSPIOP_CALLBACK_URL_FX_TRANSFER_PUT','Participant callback URL to which FX transfer put can be sent',1,'2025-05-22 12:04:07'),(9,'FSPIOP_CALLBACK_URL_FX_TRANSFER_ERROR','Participant callback URL to which FX transfer error notifications can be sent',1,'2025-05-22 12:04:07'),(10,'NET_DEBIT_CAP_THRESHOLD_BREACH_EMAIL','Participant/Hub operator email address to which the net debit cap breach e-mail notification can be sent',1,'2025-05-22 12:04:07'),(11,'NET_DEBIT_CAP_ADJUSTMENT_EMAIL','Participant/Hub operator email address to which the net debit cap adjustment e-mail notification can be sent',1,'2025-05-22 12:04:07'),(12,'SETTLEMENT_TRANSFER_POSITION_CHANGE_EMAIL','Participant/Hub operator email address to which the position change due to settlement transfer e-mail notification can be sent',1,'2025-05-22 12:04:07'),(13,'FSPIOP_CALLBACK_URL_PARTICIPANT_PUT','Participant callback URL to which put participant information can be sent',1,'2025-05-22 12:04:07'),(14,'FSPIOP_CALLBACK_URL_PARTICIPANT_SUB_ID_PUT','Participant callback URL to which put participant information can be sent, when subId is specified',1,'2025-05-22 12:04:07'),(15,'FSPIOP_CALLBACK_URL_PARTICIPANT_PUT_ERROR','Participant callback URL to which put participant error information can be sent',1,'2025-05-22 12:04:07'),(16,'FSPIOP_CALLBACK_URL_PARTICIPANT_SUB_ID_PUT_ERROR','Participant callback URL to which put participant error information can be sent, when subId is specified',1,'2025-05-22 12:04:07'),(17,'FSPIOP_CALLBACK_URL_PARTICIPANT_DELETE','Participant callback URL to which delete participant information can be sent',1,'2025-05-22 12:04:07'),(18,'FSPIOP_CALLBACK_URL_PARTICIPANT_SUB_ID_DELETE','Participant callback URL to which delete participant information can be sent, when subId is specified',1,'2025-05-22 12:04:07'),(19,'FSPIOP_CALLBACK_URL_PARTICIPANT_BATCH_PUT','Participant callback URL to which put batch participant information can be sent',1,'2025-05-22 12:04:07'),(20,'FSPIOP_CALLBACK_URL_PARTICIPANT_BATCH_PUT_ERROR','Participant callback URL to which put batch participant error information can be sent',1,'2025-05-22 12:04:07'),(21,'FSPIOP_CALLBACK_URL_PARTIES_GET','Parties callback URL to which get parties information can be requested',1,'2025-05-22 12:04:07'),(22,'FSPIOP_CALLBACK_URL_PARTIES_SUB_ID_GET','Parties callback URL to which get parties information can be requested',1,'2025-05-22 12:04:07'),(23,'FSPIOP_CALLBACK_URL_PARTIES_PUT','Parties callback URL to which put parties information can be sent',1,'2025-05-22 12:04:07'),(24,'FSPIOP_CALLBACK_URL_PARTIES_SUB_ID_PUT','Parties callback URL to which put parties information can be sent when SubId is specified',1,'2025-05-22 12:04:07'),(25,'FSPIOP_CALLBACK_URL_PARTIES_PUT_ERROR','Parties callback URL to which put participant error information can be sent',1,'2025-05-22 12:04:07'),(26,'FSPIOP_CALLBACK_URL_PARTIES_SUB_ID_PUT_ERROR','Parties callback URL to which put parties error information can be sent when SubId is specified',1,'2025-05-22 12:04:07'),(27,'FSPIOP_CALLBACK_URL_QUOTES','Quotes callback URL to which put quotes requests can be sent',1,'2025-05-22 12:04:07'),(28,'FSPIOP_CALLBACK_URL_BULK_TRANSFER_POST','Participant callback URL to which bulk transfer post can be sent',1,'2025-05-22 12:04:07'),(29,'FSPIOP_CALLBACK_URL_BULK_TRANSFER_PUT','Participant callback URL to which bulk transfer put can be sent',1,'2025-05-22 12:04:07'),(30,'FSPIOP_CALLBACK_URL_BULK_TRANSFER_ERROR','Participant callback URL to which bulk transfer error notifications can be sent',1,'2025-05-22 12:04:07'),(31,'FSPIOP_CALLBACK_URL_AUTHORIZATIONS','Participant callback URL to which authorization requests can be sent',1,'2025-05-22 12:04:07'),(32,'FSPIOP_CALLBACK_URL_TRX_REQ_SERVICE','Participant callback URL to which transaction requests can be sent',1,'2025-05-22 12:04:07'),(33,'FSPIOP_CALLBACK_URL_BULK_QUOTES','Bulk Quotes callback URL to which put bulkQuotes requests can be sent',1,'2025-05-22 12:04:07'),(34,'TP_CB_URL_TRANSACTION_REQUEST_GET','Participant callback URL where GET /thirdpartyRequests/transactions/{ID} can be sent',1,'2025-05-22 12:04:07'),(35,'TP_CB_URL_TRANSACTION_REQUEST_POST','Participant callback URL where POST /thirdpartyRequests/transactions can be sent',1,'2025-05-22 12:04:07'),(36,'TP_CB_URL_TRANSACTION_REQUEST_PUT','Participant callback URL where PUT /thirdpartyRequests/transactions/{ID} can be sent',1,'2025-05-22 12:04:07'),(37,'TP_CB_URL_TRANSACTION_REQUEST_PUT_ERROR','Participant callback URL to which PUT /thirdpartyRequests/transactions/{ID}/error error information can be sent',1,'2025-05-22 12:04:07'),(38,'TP_CB_URL_TRANSACTION_REQUEST_PATCH','Participant callback URL where PATCH /thirdpartyRequests/transactions/{ID} can be sent',1,'2025-05-22 12:04:07'),(39,'TP_CB_URL_TRANSACTION_REQUEST_AUTH_POST','Participant callback URL where POST /thirdpartyRequests/transactions/{ID}/authorizations can be sent',1,'2025-05-22 12:04:07'),(40,'TP_CB_URL_TRANSACTION_REQUEST_AUTH_PUT','Participant callback URL where PUT /thirdpartyRequests/transactions/{ID}/authorizations can be sent',1,'2025-05-22 12:04:07'),(41,'TP_CB_URL_TRANSACTION_REQUEST_AUTH_PUT_ERROR','Participant callback URL where PUT /thirdpartyRequests/transactions/{ID}/authorizations/error error information can be sent',1,'2025-05-22 12:04:07'),(42,'TP_CB_URL_TRANSACTION_REQUEST_VERIFY_POST','Participant callback URL where POST /thirdpartyRequests/verifications can be sent',1,'2025-05-22 12:04:07'),(43,'TP_CB_URL_TRANSACTION_REQUEST_VERIFY_PUT','Participant callback URL where PUT /thirdpartyRequests/verifications/{ID} can be sent',1,'2025-05-22 12:04:07'),(44,'TP_CB_URL_TRANSACTION_REQUEST_VERIFY_PUT_ERROR','Participant callback URL where PUT /thirdpartyRequests/verifications/{ID}/error can be sent',1,'2025-05-22 12:04:07'),(45,'TP_CB_URL_CONSENT_REQUEST_POST','Participant callback URL where POST /consentRequests can be sent',1,'2025-05-22 12:04:07'),(46,'TP_CB_URL_CONSENT_REQUEST_PUT','Participant callback URL where PUT /consentRequests/{ID} can be sent',1,'2025-05-22 12:04:07'),(47,'TP_CB_URL_CONSENT_REQUEST_PUT_ERROR','Participant callback URL where PUT /consentRequests/{ID}/error error information can be sent',1,'2025-05-22 12:04:07'),(48,'TP_CB_URL_CONSENT_REQUEST_PATCH','Participant callback URL where PATCH /consentRequests/{ID} can be sent',1,'2025-05-22 12:04:07'),(49,'TP_CB_URL_CREATE_CREDENTIAL_POST','Participant callback URL where POST /consentRequests/{ID}/createCredential can be sent',1,'2025-05-22 12:04:07'),(50,'TP_CB_URL_CONSENT_POST','Participant callback URL where POST /consents/ can be sent',1,'2025-05-22 12:04:07'),(51,'TP_CB_URL_CONSENT_GET','Participant callback URL where GET /consents/{ID} can be sent',1,'2025-05-22 12:04:07'),(52,'TP_CB_URL_CONSENT_PUT','Participant callback URL where PUT /consents/{ID} can be sent',1,'2025-05-22 12:04:07'),(53,'TP_CB_URL_CONSENT_PATCH','Participant callback URL where PATCH /consents/{ID} can be sent',1,'2025-05-22 12:04:07'),(54,'TP_CB_URL_CONSENT_PUT_ERROR','Participant callback URL where PUT /consents/{ID}/error error information can be sent',1,'2025-05-22 12:04:07'),(55,'TP_CB_URL_CONSENT_GENERATE_CHALLENGE_POST','Participant callback URL where POST /consents/{ID}/generateChallenge can be sent',1,'2025-05-22 12:04:07'),(56,'TP_CB_URL_CONSENT_GENERATE_CHALLENGE_PUT_ERROR','Participant callback URL where PUT /consents/{ID}/generateChallenge/error error information can be sent',1,'2025-05-22 12:04:07'),(57,'TP_CB_URL_ACCOUNTS_GET','Accounts callback URL where GET /accounts/{ID} can be sent',1,'2025-05-22 12:04:07'),(58,'TP_CB_URL_ACCOUNTS_PUT','Accounts callback URL where PUT /accounts/{ID} can be sent',1,'2025-05-22 12:04:07'),(59,'TP_CB_URL_ACCOUNTS_PUT_ERROR','Accounts callback URL where PUT /accounts/{ID}/error error information can be sent',1,'2025-05-22 12:04:07'),(60,'TP_CB_URL_SERVICES_GET','Participant callback URL where GET /services/{ServiceType} can be sent',1,'2025-05-22 12:04:07'),(61,'TP_CB_URL_SERVICES_PUT','Participant callback URL where PUT /services/{ServiceType} can be sent',1,'2025-05-22 12:04:07'),(62,'TP_CB_URL_SERVICES_PUT_ERROR','Participant callback URL where PUT /services/{ServiceType}/error can be sent',1,'2025-05-22 12:04:07');
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
INSERT INTO `fxParticipantCurrencyType` VALUES (1,'SOURCE','The participant currency is the source of the currency conversion','2025-05-22 12:04:07'),(2,'TARGET','The participant currency is the target of the currency conversion','2025-05-22 12:04:07');
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
INSERT INTO `fxQuote` VALUES ('01JVVZDGPX55BMW0DMSC3PYDMF','2025-05-22 12:27:47'),('01JVVZE15PWGN422JRG83KWCJG','2025-05-22 12:28:04'),('01JVVZEAVYCVYABTT0YJ77WM8M','2025-05-22 12:28:14'),('01JVW42Z5N4YQF68B3NA164AZB','2025-05-22 13:49:24');
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
INSERT INTO `fxQuoteConversionTerms` VALUES ('01JVVZDGPYKG97DW9BVSMV69XZ','01JVVZDGPZ2NQGA7ZJB7XCDK09','01JVVZDGPX55BMW0DMSC3PYDMF',1,'ttkfxpayer','ttkfxp1',10.0000,'XDR',0.0000,'XTS','2024-08-22 12:33:24','2025-05-22 12:27:47'),('01JVVZE15QP4831CFAEQCT7F44','01JVVZE15SAK643DT7N3R8RBSM','01JVVZE15PWGN422JRG83KWCJG',1,'ttkfxpayer','ttkfxp1',10.0000,'XDR',0.0000,'XTS','2024-08-22 12:33:24','2025-05-22 12:28:04'),('01JVVZEAVZZJSAKJHW3N8T4GFE','01JVVZEAVZZJSAKJHW3N8T4GFF','01JVVZEAVYCVYABTT0YJ77WM8M',1,'ttkfxpayer','ttkfxp1',13.0000,'XDR',0.0000,'XTS','2024-08-22 12:33:24','2025-05-22 12:28:14'),('01JVW42Z5PYHH8SFG82M8HWJ8H','01JVW42Z5QTKBHK30VGJ05GGAP','01JVW42Z5N4YQF68B3NA164AZB',2,'ttkfxpayer','ttkfxp1',10.0000,'XDR',0.0000,'XTS','2024-08-22 12:33:24','2025-05-22 13:49:24');
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
INSERT INTO `fxQuoteDuplicateCheck` VALUES ('01JVVZDGPX55BMW0DMSC3PYDMF','45d4e85f2c5e660791f075ce60c997547955dcbcbba54119808cd68494bc88c9','2025-05-22 12:27:47'),('01JVVZE15PWGN422JRG83KWCJG','feaf2f93fac0891343c706b0022c3720ce4d04933df4aca037c2abfdbeb97509','2025-05-22 12:28:04'),('01JVVZEAVYCVYABTT0YJ77WM8M','58361d36d68e01d1ba6e75cebe2a8fb3d4fc38d2bc69780fc01e3c0575a86f06','2025-05-22 12:28:14'),('01JVW42Z5N4YQF68B3NA164AZB','fc43c2ea96891aa7d0d200fdae29b0d1fd6b4c728cb5244f135162e9a54e5a0d','2025-05-22 13:49:24');
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
INSERT INTO `fxQuoteError` VALUES (1,'01JVVZEAVYCVYABTT0YJ77WM8M',NULL,2000,'Generic server error','2025-05-22 12:28:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteResponse`
--

LOCK TABLES `fxQuoteResponse` WRITE;
/*!40000 ALTER TABLE `fxQuoteResponse` DISABLE KEYS */;
INSERT INTO `fxQuoteResponse` VALUES (1,'01JVVZDGPX55BMW0DMSC3PYDMF','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-22 12:27:52'),(2,'01JVVZE15PWGN422JRG83KWCJG','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-22 12:28:04'),(3,'01JVW42Z5N4YQF68B3NA164AZB','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-22 13:49:25');
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
INSERT INTO `fxQuoteResponseConversionTerms` VALUES ('01JVVZDGPYKG97DW9BVSMV69XZ','01JVVZDGPZ2NQGA7ZJB7XCDK09','01JVVZDGPX55BMW0DMSC3PYDMF',1,1,'ttkfxpayer','ttkfxp1',10.0000,'XDR',100.0000,'XTS','2025-05-23 12:27:53','2025-05-22 12:27:52'),('01JVVZE15QP4831CFAEQCT7F44','01JVVZE15SAK643DT7N3R8RBSM','01JVVZE15PWGN422JRG83KWCJG',2,1,'ttkfxpayer','ttkfxp1',10.0000,'XDR',100.0000,'XTS','2025-05-23 12:28:05','2025-05-22 12:28:04'),('01JVW42Z5PYHH8SFG82M8HWJ8H','01JVW42Z5QTKBHK30VGJ05GGAP','01JVW42Z5N4YQF68B3NA164AZB',3,2,'ttkfxpayer','ttkfxp1',10.0000,'XDR',100.0000,'XTS','2025-05-23 13:49:25','2025-05-22 13:49:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteResponseDuplicateCheck`
--

LOCK TABLES `fxQuoteResponseDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxQuoteResponseDuplicateCheck` DISABLE KEYS */;
INSERT INTO `fxQuoteResponseDuplicateCheck` VALUES (1,'01JVVZDGPX55BMW0DMSC3PYDMF','76c1f77a1cefd21d3385795e1459930a2dd465d71406d54da9c3553ae72ddaf1','2025-05-22 12:27:52'),(2,'01JVVZE15PWGN422JRG83KWCJG','6abc70b859ccfed0bbed37ffd03ed4a9a47af65116fa33ae608c177f4c003b2a','2025-05-22 12:28:04'),(3,'01JVW42Z5N4YQF68B3NA164AZB','bb1ebe67b6621744b02a5705dad9df38b8e9945b6276ffbf52e8bb2e9020aff7','2025-05-22 13:49:25');
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
INSERT INTO `fxTransfer` VALUES ('01JVVZDGPYKG97DW9BVSMV69XZ','01JVVZDGPZ2NQGA7ZJB7XCDK09',10.0000,100.0000,'XDR','XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-23 12:27:56','2025-05-22 12:27:56'),('01JVVZE15QP4831CFAEQCT7F44','01JVVZE15SAK643DT7N3R8RBSM',10.0000,100.0000,'XDR','XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-23 12:28:10','2025-05-22 12:28:10'),('01JVVZECYYJ24EVC9349H3KDRM','01JVVZECYZTCJASAN0R0JYQVJ0',13.0000,15.0000,'XDR','XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:28:15','2025-05-22 12:28:15'),('01JVVZEDKHC0MMYXRSD5J8NY8A','01JVVZEDKHC0MMYXRSD5J8NY8B',10.0000,15.0000,'XDR','XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:28:16','2025-05-22 12:28:15'),('01JVVZEEDWGYNJV655N86YQXS2','01JVVZEEDWGYNJV655N86YQXS3',15.0000,15.0000,'XDR','XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:28:17','2025-05-22 12:28:16'),('01JVVZEFEEYZ6DESBAVYMHFRGW','01JVVZEFEF2HRCGCXD3Y0XRVBY',10.0000,15.0000,'XDR','XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:28:18','2025-05-22 12:28:17'),('01JVVZEG76M40JXVA2RA64NFVK','01JVVZEG77PWG660GJE40ZZQHB',16.0000,15.0000,'XDR','XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:28:21','2025-05-22 12:28:18'),('01JVVZEGV0P9BPEEVC6E4M6AS1','01JVVZEGV1R1V31ZT6ZVZBTET5',10.0000,16.0000,'XDR','XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:28:19','2025-05-22 12:28:19'),('01JVW42Z5PYHH8SFG82M8HWJ8H','01JVW42Z5QTKBHK30VGJ05GGAP',10.0000,100.0000,'XDR','XTS','GRzLaTP7DJ9t4P-a_BA0WA9wzzlsugf00-Tn6kESAfM','2025-05-23 13:49:27','2025-05-22 13:49:27');
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
INSERT INTO `fxTransferDuplicateCheck` VALUES ('01JVVZDGPYKG97DW9BVSMV69XZ','ycrB7oArTOA+42KNZC9ofe4ZwK/gCj0+NMQdl5qkNds','2025-05-22 12:27:56'),('01JVVZE15QP4831CFAEQCT7F44','xKAjmCuEtnbtbY7GUpFCI2W3uUxRDPAUMbQSMbRvGr8','2025-05-22 12:28:10'),('01JVVZECYYJ24EVC9349H3KDRM','uo9UGc+8RZRmsm1CREDZ1fq3RZRurjwJBPXMkqgRe3o','2025-05-22 12:28:15'),('01JVVZEDKHC0MMYXRSD5J8NY8A','1NgVkyzvKEuIstqq/bTTDmDVpf/dGhZ5Ze5xOEmQxgU','2025-05-22 12:28:15'),('01JVVZEEDWGYNJV655N86YQXS2','JufG0O9PfXU8/xKx+ubrsBAxfvZoiErnkRhXc18JATE','2025-05-22 12:28:16'),('01JVVZEFEEYZ6DESBAVYMHFRGW','zoSGm1/Mw5oL9XilOtFus/bV770uXqxGqa+7x+rpg9Q','2025-05-22 12:28:17'),('01JVVZEG76M40JXVA2RA64NFVK','tqi6oIYctvQrtf2vP+r6BVSGnwukB2O3QMgFcjj6/Fk','2025-05-22 12:28:18'),('01JVVZEGV0P9BPEEVC6E4M6AS1','7T+3gbYj+xQfbpwcElFKYvUSVXrCf7epi1cOO5RJzm8','2025-05-22 12:28:19'),('01JVW42Z5PYHH8SFG82M8HWJ8H','nKkckIkG+McrKL+jcA3qqSHX6E0FFFQmv/XpsfcMwSM','2025-05-22 13:49:27');
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
INSERT INTO `fxTransferErrorDuplicateCheck` VALUES ('01JVVZECYYJ24EVC9349H3KDRM','seCVZH2IZ2OJ2045h/ZXrDdLlSTPGh/cSeGpUc2p7bk','2025-05-22 12:28:15');
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
INSERT INTO `fxTransferFulfilment` VALUES ('01JVVZDGPYKG97DW9BVSMV69XZ','UNlJ98hZTY_dsw0cAqw4i_UN3v4utt7CZFB4yfLbVFA','2025-05-22 12:27:58',1,5,'2025-05-22 12:27:58'),('01JVVZE15QP4831CFAEQCT7F44','UNlJ98hZTY_dsw0cAqw4i_UN3v4utt7CZFB4yfLbVFA','2025-05-22 12:28:11',1,5,'2025-05-22 12:28:11'),('01JVW42Z5PYHH8SFG82M8HWJ8H','UNlJ98hZTY_dsw0cAqw4i_UN3v4utt7CZFB4yfLbVFA','2025-05-22 13:49:28',1,5,'2025-05-22 13:49:28');
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
INSERT INTO `fxTransferFulfilmentDuplicateCheck` VALUES ('01JVVZDGPYKG97DW9BVSMV69XZ','bkE+9eZQoxr6U+9FZK3YAw3ECbuIErsl9023+XwEyp8','2025-05-22 12:27:57'),('01JVVZE15QP4831CFAEQCT7F44','bkE+9eZQoxr6U+9FZK3YAw3ECbuIErsl9023+XwEyp8','2025-05-22 12:28:10'),('01JVVZEDKHC0MMYXRSD5J8NY8A','bkE+9eZQoxr6U+9FZK3YAw3ECbuIErsl9023+XwEyp8','2025-05-22 12:28:16'),('01JVVZEEDWGYNJV655N86YQXS2','bkE+9eZQoxr6U+9FZK3YAw3ECbuIErsl9023+XwEyp8','2025-05-22 12:28:17'),('01JVVZEFEEYZ6DESBAVYMHFRGW','bkE+9eZQoxr6U+9FZK3YAw3ECbuIErsl9023+XwEyp8','2025-05-22 12:28:18'),('01JVVZEG76M40JXVA2RA64NFVK','bkE+9eZQoxr6U+9FZK3YAw3ECbuIErsl9023+XwEyp8','2025-05-22 12:28:18'),('01JVVZEGV0P9BPEEVC6E4M6AS1','bkE+9eZQoxr6U+9FZK3YAw3ECbuIErsl9023+XwEyp8','2025-05-22 12:28:19'),('01JVW42Z5PYHH8SFG82M8HWJ8H','bkE+9eZQoxr6U+9FZK3YAw3ECbuIErsl9023+XwEyp8','2025-05-22 13:49:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferParticipant`
--

LOCK TABLES `fxTransferParticipant` WRITE;
/*!40000 ALTER TABLE `fxTransferParticipant` DISABLE KEYS */;
INSERT INTO `fxTransferParticipant` VALUES (1,'01JVVZDGPYKG97DW9BVSMV69XZ',NULL,6,1,NULL,10.0000,'2025-05-22 12:27:56',13,NULL),(2,'01JVVZDGPYKG97DW9BVSMV69XZ',73,7,1,1,-10.0000,'2025-05-22 12:27:56',11,NULL),(3,'01JVVZDGPYKG97DW9BVSMV69XZ',75,7,1,2,-100.0000,'2025-05-22 12:27:56',11,NULL),(4,'01JVVZE15QP4831CFAEQCT7F44',NULL,6,1,NULL,10.0000,'2025-05-22 12:28:10',13,NULL),(5,'01JVVZE15QP4831CFAEQCT7F44',73,7,1,1,-10.0000,'2025-05-22 12:28:10',11,NULL),(6,'01JVVZE15QP4831CFAEQCT7F44',75,7,1,2,-100.0000,'2025-05-22 12:28:10',11,NULL),(7,'01JVVZECYYJ24EVC9349H3KDRM',NULL,6,1,NULL,13.0000,'2025-05-22 12:28:15',13,NULL),(8,'01JVVZECYYJ24EVC9349H3KDRM',73,7,1,1,-13.0000,'2025-05-22 12:28:15',11,NULL),(9,'01JVVZECYYJ24EVC9349H3KDRM',75,7,1,2,-15.0000,'2025-05-22 12:28:15',11,NULL),(10,'01JVVZEDKHC0MMYXRSD5J8NY8A',NULL,6,1,NULL,10.0000,'2025-05-22 12:28:15',13,NULL),(11,'01JVVZEDKHC0MMYXRSD5J8NY8A',73,7,1,1,-10.0000,'2025-05-22 12:28:15',11,NULL),(12,'01JVVZEDKHC0MMYXRSD5J8NY8A',75,7,1,2,-15.0000,'2025-05-22 12:28:15',11,NULL),(13,'01JVVZEEDWGYNJV655N86YQXS2',NULL,6,1,NULL,15.0000,'2025-05-22 12:28:16',13,NULL),(14,'01JVVZEEDWGYNJV655N86YQXS2',73,7,1,1,-15.0000,'2025-05-22 12:28:16',11,NULL),(15,'01JVVZEEDWGYNJV655N86YQXS2',75,7,1,2,-15.0000,'2025-05-22 12:28:16',11,NULL),(16,'01JVVZEFEEYZ6DESBAVYMHFRGW',NULL,6,1,NULL,10.0000,'2025-05-22 12:28:17',13,NULL),(17,'01JVVZEFEEYZ6DESBAVYMHFRGW',73,7,1,1,-10.0000,'2025-05-22 12:28:17',11,NULL),(18,'01JVVZEFEEYZ6DESBAVYMHFRGW',75,7,1,2,-15.0000,'2025-05-22 12:28:17',11,NULL),(19,'01JVVZEG76M40JXVA2RA64NFVK',NULL,6,1,NULL,16.0000,'2025-05-22 12:28:18',13,NULL),(20,'01JVVZEG76M40JXVA2RA64NFVK',73,7,1,1,-16.0000,'2025-05-22 12:28:18',11,NULL),(21,'01JVVZEG76M40JXVA2RA64NFVK',75,7,1,2,-15.0000,'2025-05-22 12:28:18',11,NULL),(22,'01JVVZEGV0P9BPEEVC6E4M6AS1',NULL,6,1,NULL,10.0000,'2025-05-22 12:28:19',13,NULL),(23,'01JVVZEGV0P9BPEEVC6E4M6AS1',73,7,1,1,-10.0000,'2025-05-22 12:28:19',11,NULL),(24,'01JVVZEGV0P9BPEEVC6E4M6AS1',75,7,1,2,-16.0000,'2025-05-22 12:28:19',11,NULL),(25,'01JVW42Z5PYHH8SFG82M8HWJ8H',NULL,6,1,NULL,10.0000,'2025-05-22 13:49:27',13,NULL),(26,'01JVW42Z5PYHH8SFG82M8HWJ8H',73,7,1,1,-10.0000,'2025-05-22 13:49:27',11,NULL),(27,'01JVW42Z5PYHH8SFG82M8HWJ8H',75,7,1,2,-100.0000,'2025-05-22 13:49:27',11,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferStateChange`
--

LOCK TABLES `fxTransferStateChange` WRITE;
/*!40000 ALTER TABLE `fxTransferStateChange` DISABLE KEYS */;
INSERT INTO `fxTransferStateChange` VALUES (1,'01JVVZDGPYKG97DW9BVSMV69XZ','RECEIVED_PREPARE',NULL,'2025-05-22 12:27:57'),(2,'01JVVZDGPYKG97DW9BVSMV69XZ','RESERVED',NULL,'2025-05-22 12:27:56'),(3,'01JVVZDGPYKG97DW9BVSMV69XZ','RECEIVED_FULFIL_DEPENDENT',NULL,'2025-05-22 12:27:58'),(4,'01JVVZDGPYKG97DW9BVSMV69XZ','COMMITTED',NULL,'2025-05-22 12:28:00'),(5,'01JVVZE15QP4831CFAEQCT7F44','RECEIVED_PREPARE',NULL,'2025-05-22 12:28:10'),(6,'01JVVZE15QP4831CFAEQCT7F44','RESERVED',NULL,'2025-05-22 12:28:10'),(7,'01JVVZE15QP4831CFAEQCT7F44','RECEIVED_FULFIL_DEPENDENT',NULL,'2025-05-22 12:28:11'),(8,'01JVVZE15QP4831CFAEQCT7F44','COMMITTED',NULL,'2025-05-22 12:28:11'),(9,'01JVVZECYYJ24EVC9349H3KDRM','RECEIVED_PREPARE',NULL,'2025-05-22 12:28:15'),(10,'01JVVZECYYJ24EVC9349H3KDRM','RESERVED',NULL,'2025-05-22 12:28:15'),(11,'01JVVZECYYJ24EVC9349H3KDRM','RECEIVED_ERROR','Generic server error','2025-05-22 12:28:16'),(12,'01JVVZECYYJ24EVC9349H3KDRM','ABORTED_ERROR',NULL,'2025-05-22 12:28:15'),(13,'01JVVZEDKHC0MMYXRSD5J8NY8A','RECEIVED_PREPARE',NULL,'2025-05-22 12:28:16'),(14,'01JVVZEDKHC0MMYXRSD5J8NY8A','RESERVED',NULL,'2025-05-22 12:28:15'),(15,'01JVVZEDKHC0MMYXRSD5J8NY8A','RECEIVED_ERROR','Generic validation error - Invalid FX fulfilment','2025-05-22 12:28:16'),(16,'01JVVZEDKHC0MMYXRSD5J8NY8A','ABORTED_ERROR',NULL,'2025-05-22 12:28:16'),(17,'01JVVZEEDWGYNJV655N86YQXS2','RECEIVED_PREPARE',NULL,'2025-05-22 12:28:17'),(18,'01JVVZEEDWGYNJV655N86YQXS2','RESERVED',NULL,'2025-05-22 12:28:16'),(19,'01JVVZEEDWGYNJV655N86YQXS2','RECEIVED_ERROR','Generic validation error - Invalid FX fulfilment','2025-05-22 12:28:17'),(20,'01JVVZEEDWGYNJV655N86YQXS2','ABORTED_ERROR',NULL,'2025-05-22 12:28:17'),(21,'01JVVZEFEEYZ6DESBAVYMHFRGW','RECEIVED_PREPARE',NULL,'2025-05-22 12:28:18'),(22,'01JVVZEFEEYZ6DESBAVYMHFRGW','RESERVED',NULL,'2025-05-22 12:28:17'),(23,'01JVVZEFEEYZ6DESBAVYMHFRGW','RECEIVED_ERROR','Generic validation error - Invalid FX fulfilment','2025-05-22 12:28:18'),(24,'01JVVZEFEEYZ6DESBAVYMHFRGW','ABORTED_ERROR',NULL,'2025-05-22 12:28:18'),(25,'01JVVZEG76M40JXVA2RA64NFVK','RECEIVED_PREPARE',NULL,'2025-05-22 12:28:19'),(26,'01JVVZEG76M40JXVA2RA64NFVK','RESERVED',NULL,'2025-05-22 12:28:18'),(27,'01JVVZEG76M40JXVA2RA64NFVK','RECEIVED_ERROR','Generic validation error - Invalid FX fulfilment','2025-05-22 12:28:19'),(28,'01JVVZEG76M40JXVA2RA64NFVK','ABORTED_ERROR',NULL,'2025-05-22 12:28:18'),(29,'01JVVZEGV0P9BPEEVC6E4M6AS1','RECEIVED_PREPARE',NULL,'2025-05-22 12:28:19'),(30,'01JVVZEGV0P9BPEEVC6E4M6AS1','RESERVED',NULL,'2025-05-22 12:28:19'),(31,'01JVVZEGV0P9BPEEVC6E4M6AS1','RECEIVED_ERROR','Generic validation error - Invalid FX fulfilment','2025-05-22 12:28:19'),(32,'01JVVZEGV0P9BPEEVC6E4M6AS1','ABORTED_ERROR',NULL,'2025-05-22 12:28:19'),(33,'01JVW42Z5PYHH8SFG82M8HWJ8H','RECEIVED_PREPARE',NULL,'2025-05-22 13:49:27'),(34,'01JVW42Z5PYHH8SFG82M8HWJ8H','RESERVED',NULL,'2025-05-22 13:49:27'),(35,'01JVW42Z5PYHH8SFG82M8HWJ8H','RECEIVED_FULFIL_DEPENDENT',NULL,'2025-05-22 13:49:28'),(36,'01JVW42Z5PYHH8SFG82M8HWJ8H','COMMITTED',NULL,'2025-05-22 13:49:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
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
INSERT INTO `fxTransferType` VALUES (1,'PAYER_CONVERSION','Payer side currency conversion','2025-05-22 12:04:07'),(2,'PAYEE_CONVERSION','Payee side currency conversion','2025-05-22 12:04:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxWatchList`
--

LOCK TABLES `fxWatchList` WRITE;
/*!40000 ALTER TABLE `fxWatchList` DISABLE KEYS */;
INSERT INTO `fxWatchList` VALUES (1,'01JVVZDGPYKG97DW9BVSMV69XZ','01JVVZDGPZ2NQGA7ZJB7XCDK09',1,'2025-05-22 12:27:56'),(2,'01JVVZE15QP4831CFAEQCT7F44','01JVVZE15SAK643DT7N3R8RBSM',1,'2025-05-22 12:28:10'),(3,'01JVVZECYYJ24EVC9349H3KDRM','01JVVZECYZTCJASAN0R0JYQVJ0',1,'2025-05-22 12:28:15'),(4,'01JVVZEDKHC0MMYXRSD5J8NY8A','01JVVZEDKHC0MMYXRSD5J8NY8B',1,'2025-05-22 12:28:15'),(5,'01JVVZEEDWGYNJV655N86YQXS2','01JVVZEEDWGYNJV655N86YQXS3',1,'2025-05-22 12:28:16'),(6,'01JVVZEFEEYZ6DESBAVYMHFRGW','01JVVZEFEF2HRCGCXD3Y0XRVBY',1,'2025-05-22 12:28:17'),(7,'01JVVZEG76M40JXVA2RA64NFVK','01JVVZEG77PWG660GJE40ZZQHB',1,'2025-05-22 12:28:18'),(8,'01JVVZEGV0P9BPEEVC6E4M6AS1','01JVVZEGV1R1V31ZT6ZVZBTET5',1,'2025-05-22 12:28:19'),(9,'01JVW42Z5PYHH8SFG82M8HWJ8H','01JVW42Z5QTKBHK30VGJ05GGAP',1,'2025-05-22 13:49:27');
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
INSERT INTO `ilpPacket` VALUES ('01JVVYYNASE5P0RW5XK8TNQYT7','DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIwNDIyNjHl6OjwsTdJV9i-hCObNyvVf4dKUsGCNqWhSX6W98pfvgpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFpaV1U1QlIxSllPRUU0TjBGUVJWcEJTRTFRVnpRaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFpaV1U1QlUwVTFVREJTVnpWWVN6aFVUbEZaVkRjaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl3T2pReUxqSTJNVm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA','2025-05-22 12:19:50'),('01JVVYZ9M8GJ2E6NDJFRVHZTE5','DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIxMDA4NDmxiICW0y1mcwqMB8O38U_w-DTZ8zBIEd0sqm3a0pF7VwpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFpaV2psTk5EaFNRMWhEUzBwTlF6UkZXRU5ZTlVzaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFpaV2psTk9FZEtNa1UyVGtSS1JsSldTRnBVUlRVaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl4T2pBd0xqZzBPVm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA','2025-05-22 12:20:01'),('01JVVYZJSBK68PY2YXHV4Q78V3','DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIxMDk5ODIBa1WSUCYyWV2mO9a4UngP-MnkIt_WDTRrqVdfIp6YGwpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFpaV2twVE9UVkVNVGRFU0VjMk0wdEtVRFF4VWtVaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFpaV2twVFFrczJPRkJaTWxsWVNGWTBVVGM0VmpNaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lPVGN3TXprNE1UazVPVGtpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl4T2pBNUxqazRNbG9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA','2025-05-22 12:20:10'),('01JVVYZTDKB6SGRY98ZJPKXZF6','DIICtQAAAAAAD0JAMjAyNTA1MjIxMjIxMTc3MTMq79e_ehb6yiwrGLVaiYrWiHOTVp62lKxdrgR48vRg3ApnLm1vamFsb29wggJuZXlKeGRXOTBaVWxrSWpvaU1ERktWbFpaV2xSRVNrUktVRFZTVWtZek56UkRTazFDU0RFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFpaV2xSRVMwSTJVMGRTV1RrNFdrcFFTMWhhUmpZaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNakl5TkRRME9EZzRPQ0lzSW1aemNFbGtJam9pY0dGNVpXVm1jM0FpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lORFF4TWpNME5UWTNPRGtpTENKbWMzQkpaQ0k2SW5SbGMzUnBibWQwYjI5c2EybDBaR1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNakU2TVRjdU56RXpXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQ','2025-05-22 12:20:18'),('01JVVZ06893Q0H73NX30HCESHR','DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIxMjk3NTPAuT4fhY_D6uXD19HS4pOuTS3oVww2iuzsZFT5YCJa1ApnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTURZNE5sZzFVa1ExVGxkWk5WaFJNekE0UkVvaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTURZNE9UTlJNRWczTTA1WU16QklRMFZUU0ZJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl4T2pJNUxqYzFNMW9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA','2025-05-22 12:20:30'),('01JVVZ0BH7R508BKGCE5WABEBT','DIICbQAAAAAAD0JAMjAyNTA1MjMxMjIwMzczMDmiVbByX7vB-7_DS4lrus3UoJQbq0_ORfv5OtPGYe-k6gpnLm1vamFsb29wggImZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFNRUpJTjFJMU1EaENTMGREUlRWWFFVSkZRbFFpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphTUVKSU5scEVSVUpUVkZFMlZqZzNNVlF3UlZnaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUyTnpFeU16UWlMQ0p3WVhKMGVVbGtaVzUwYVdacFpYSWlPaUpOVTBsVFJFNGlMQ0ptYzNCSlpDSTZJblIwYTNCaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbUZ0YjNWdWRDSTZleUpqZFhKeVpXNWplU0k2SWxoWVdDSXNJbUZ0YjNWdWRDSTZJakV3TUNKOUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9tNTFiR3dzSW1WNGNHbHlZWFJwYjI0aU9pSXlNREkxTFRBMUxUSXpWREV5T2pJd09qTTNMak13T1ZvaUxDSnViM1JsSWpwdWRXeHNmUQ','2025-05-22 12:20:37'),('01JVVZ0FQYDR1E597MMG006A34','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:20:39'),('01JVVZ0SBFX5M7B5M1FQTZ2DSE','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:20:49'),('01JVVZ0WRHRVJKS2FJ3Y37CH1Q','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:20:53'),('01JVVZ18EYKN9QETM9DJJZZ151','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:21:04'),('01JVVZ1BQCF077ADV07PPYK3HS','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:21:08'),('01JVVZ1R2TH5BCDN98FE0Y6NWB','DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIyMjA5NDdN85MpjrGs_Viv0Ig2qLfJdu5pwbIHMdEKtefZHHgRGQpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTVZJeVVUQkxTekpEV0UwMFFUVkhNa0ZHUlRNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTVZJeVZFZzFRa05FVGprNFJrVXdXVFpPVjBJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl5T2pJd0xqazBOMW9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA','2025-05-22 12:21:21'),('01JVVZ1TZS9H0RQVFP43PGZ8BB','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:21:24'),('01JVVZ221NER7VFNEF8FM5JTPT','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:21:31'),('01JVVZ2AES2FXQYK192KDQHME7','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:21:40'),('01JVVZ2BQCZDQTKCEZ5XBFKPFQ','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:21:41'),('01JVVZ2E7NS5FY74A42ZYWZ9D3','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:21:47'),('01JVVZ2M8ZYZ3C6RNVNWK5GGDR','DIICqQAAAAAAD0JAMjAyNTA1MjIxMjIyNTA4OTOU5yJy2dTDzlamgTNzcoAqbc2CJhd808UDQlt3l1F2jApnLm1vamFsb29wggJiZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTWswNFdEZFJSemxhUWpaQ1JsQTBVelJHTmpNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTWswNFdsbGFNME0yVWs1V1RsZExOVWRIUkZJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNakk2TlRBdU9Ea3pXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQ','2025-05-22 12:21:51'),('01JVVZ2R9K46GP3JP4RPBEDXDC','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:21:54'),('01JVVZ2V83SQFDK3VW0VYS33EF','DIICqQAAAAAAD0JAMjAyNTA1MjIxMjIyNTc3NzC7SGimnT2YuFuXWSFdB6crKCs9M2gF00c54gJTXxK43QpnLm1vamFsb29wggJiZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTWxZNE1UWXpXa2RVVXpFeVRrUlVWalJXUmxvaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTWxZNE0xTlJSa1JMTTFaWE1GWlpVek16UlVZaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNakk2TlRjdU56Y3dXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQ','2025-05-22 12:22:00'),('01JVVZ3066XG1TGDSS1ZKVXJCH','DIICtwAAAAADKGkgMjAyNTA1MjIxMjIzMDIxMTLJWgyPX4f6pzIhY4YWft-EQ0GeeiOQAITuHs917M28FQpnLm1vamFsb29wggJwZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTXpBMk5EZEJVa1JIU0ZsSU1EUldTRTVCUVZZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTXpBMk5saEhNVlJIUkZOVE1WcExWbGhLUTBnaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl6T2pBeUxqRXhNbG9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU5USTVPQ0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5','2025-05-22 12:22:02'),('01JVVZ328M7WQJV988ES7C4WVB','DIICtwAAAAAB92MwMjAyNTA1MjIxMjIzMDM5ODemuMknK3RjGedMlUuhEFOxGRupzB-YziIlwbLRDAhMdApnLm1vamFsb29wggJwZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTXpJNFNsa3hNMWxPUVZoUlIxQk9WemROTmxJaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTXpJNFRUZFhVVXBXT1RnNFJWTTNRelJYVmtJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl6T2pBekxqazROMW9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU16STVPU0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5','2025-05-22 12:22:04'),('01JVVZ3J8WD4XBANQ8DC4FGG8P','DIICtQAAAAAACSfAMjAyNTA1MjIxMjIzMjA2ODYIHI1CIZnC809DkbPvFVHbMpT1d2GTnmURZgdRXTWBlQpnLm1vamFsb29wggJuZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTTBvNFZGQTFVVGN3T0ZGWVVGbFpUbG8xTUUwaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTTBvNFYwUTBXRUpCVGxFNFJFTTBSa2RIT0ZBaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl6T2pJd0xqWTRObG9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU5qQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQ','2025-05-22 12:22:21'),('01JVVZ3VGJNN1BY4NK6NWG1FED','DIICzwAAAAAAAYagMjAyNTA1MjIxMjIzMzAwMjE8HkJ3buBw74v05o9mt3syGXjihaNWOHx5EKzTOLzdVwpnLm1vamFsb29wggKIZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTTFaT1RVNUxTa0ZFTkRZM1FWRlpVekpYVTBNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTTFaSFNrNU9NVUpaTkU1TE5rNVhSekZHUlVRaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOUxDSnVZVzFsSWpvaVVHRjVaWEpHYVhKemRDQlFZWGxsY2t4aGMzUWlmU3dpWlhod2FYSmhkR2x2YmlJNklqSXdNalV0TURVdE1qSlVNVEk2TWpNNk16QXVNREl4V2lJc0ltRnRiM1Z1ZENJNmV5SmhiVzkxYm5RaU9pSXhNQ0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5','2025-05-22 12:22:30'),('01JVVZ3X9BFSJH1BVHNCZKE14R','DIICzwAAAAAAAYagMjAyNTA1MjIxMjIzMzE5MzDw6ac4LoPSJpAuTV5Ja-03iXkU0F7jQ5OFX2aEvs7iMQpnLm1vamFsb29wggKIZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTTFoTFZETTBRelJZVGpnMFdrNDBOa1ZVTkZnaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTTFnNVFrWlRTa2d4UWxaSVRrTmFTMFV4TkZJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEEwSWl3aVpuTndTV1FpT2lKMFpYTjBabk53TWlKOUxDSnVZVzFsSWpvaVVHRjVaWEpHYVhKemRDQlFZWGxsY2t4aGMzUWlmU3dpWlhod2FYSmhkR2x2YmlJNklqSXdNalV0TURVdE1qSlVNVEk2TWpNNk16RXVPVE13V2lJc0ltRnRiM1Z1ZENJNmV5SmhiVzkxYm5RaU9pSXhNQ0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5','2025-05-22 12:22:32'),('01JVVZ3Y9BVY4W8GF8WDT0N05R','DIICcgAAAAAAD2lQMjAyNTA1MjMxMjIyMzQ0Mzj6VFywUKQ_6siTI3kL11nZ0jXkoAslyYXF3hVH10EN7ApnLm1vamFsb29wggIrZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFNMWs1UWxaWk5GYzRSMFk0VjBSVU1FNHdOVklpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphTTFrNU9VdFdOazAwUlZwTldVUTFOVlpSU2tvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdHdZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lJME5ERXlNelExTmpjNE9TSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJazFUU1ZORVRpSXNJbVp6Y0Vsa0lqb2lkR1Z6ZEdsdVozUnZiMnhyYVhSa1puTndJbjE5TENKaGJXOTFiblFpT25zaVkzVnljbVZ1WTNraU9pSllXRmdpTENKaGJXOTFiblFpT2lJeE1ERWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanB1ZFd4c0xDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TTFReE1qb3lNam96TkM0ME16aGFJaXdpYm05MFpTSTZiblZzYkgw','2025-05-22 12:22:34'),('01JVVZ445N2K4GE2DF3MNZVY9R','DIICcgAAAAAAD7dwMjAyNTA1MjMxMjIyNDIwNDceIx343Gfvvxpyoo-12_okOJpmJnhLHE_Pt76q7YSX1QpnLm1vamFsb29wggIrZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFORFExVGpKTE5FZEZNa1JHTTAxT1dsWlpPVklpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphTkRRMVF6RTJTek5RVkVVeFVqbFJVVnBUTTFZaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdHdZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lJME5ERXlNelExTmpjNE9TSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJazFUU1ZORVRpSXNJbVp6Y0Vsa0lqb2lkR1Z6ZEdsdVozUnZiMnhyYVhSa1puTndJbjE5TENKaGJXOTFiblFpT25zaVkzVnljbVZ1WTNraU9pSllXRmdpTENKaGJXOTFiblFpT2lJeE1ETWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanB1ZFd4c0xDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TTFReE1qb3lNam8wTWk0d05EZGFJaXdpYm05MFpTSTZiblZzYkgw','2025-05-22 12:22:42'),('01JVVZ4NX5NNMQ12YF0GBCX80Y','DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIzNTY3ODh5fLDcwABTlLx4GLGxICKgiQfNfLdi77oUlBqQLt1yiApnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTkU1WU5FRkdVamxaV2psQlZ6ZzJUVEpRTmtzaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTkU1WU5VNU9UVkV4TWxsR01FZENRMWc0TUZraUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl6T2pVMkxqYzRPRm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA','2025-05-22 12:22:57'),('01JVVZ72MA0X195WQSYWTCWZHK','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:24:15'),('01JVVZ80N2SSZ3ETPBJEZDMWWT','DIICuwAAAAAACSySMjAyNTA1MjIxMjI1NDYwNjX_rDRUIB4Z28U0pS44b_2Pv52JcfvyrCPVD3fw0ijZ6wpnLm1vamFsb29wggJ0ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT0RCT01UQkxPVkJGUkVGSVFrNHhPRGxHU0RBaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT0RCT01sTlRXak5GVkZCQ1NrVmFSRTFYVjFRaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakkxT2pRMkxqQTJOVm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU5qQXVNVEl6TkNJc0ltTjFjbkpsYm1ONUlqb2lXRmhZSW4xOQ','2025-05-22 12:24:51'),('01JVVZ86M93TDPW5604HXZ8R1P','DIICcgAAAAAAD96AMjAyNTA1MjMxMjI0NTQ2MTRUxGCpsR0fYPQ_TZ44ZOhbzxG7NeBgNSUNhywpTKvicApnLm1vamFsb29wggIrZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFPRFpOT1ROVVJGQlhOVFl3TkVoWVdqaFNNVkFpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphT0RaTk4xbFpPVkF6TTBNM1MxZE5SRGszVGtvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdHdZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lJME5ERXlNelExTmpjNE9TSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJazFUU1ZORVRpSXNJbVp6Y0Vsa0lqb2lkR1Z6ZEdsdVozUnZiMnhyYVhSa1puTndJbjE5TENKaGJXOTFiblFpT25zaVkzVnljbVZ1WTNraU9pSllXRmdpTENKaGJXOTFiblFpT2lJeE1EUWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanB1ZFd4c0xDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TTFReE1qb3lORG8xTkM0Mk1UUmFJaXdpYm05MFpTSTZiblZzYkgw','2025-05-22 12:24:55'),('01JVVZ8QQQJVTB05KA7N0HQJB5','DIICcgAAAAAAD5BgMjAyNTA1MjMxMjI1MTI1OTeZuAwyP3wW7uLbzstBdXrXAz7CoGlCbXgcaIwe5MjwCgpnLm1vamFsb29wggIrZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFPRkZSVVVwV1ZFSXdOVXRCTjA0d1NGRktRalVpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphT0ZGUlMwNVJRa1V6UkUxV1VscFRNa3REU2pJaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdHdZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lJME5ERXlNelExTmpjNE9TSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJazFUU1ZORVRpSXNJbVp6Y0Vsa0lqb2lkR1Z6ZEdsdVozUnZiMnhyYVhSa1puTndJbjE5TENKaGJXOTFiblFpT25zaVkzVnljbVZ1WTNraU9pSllXRmdpTENKaGJXOTFiblFpT2lJeE1ESWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanB1ZFd4c0xDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TTFReE1qb3lOVG94TWk0MU9UZGFJaXdpYm05MFpTSTZiblZzYkgw','2025-05-22 12:25:16'),('01JVVZ94DKVQD82PPXZ3EHCH0Q','DIICpgAAAAAAAMNQMjAyNTA1MjIxMjI2MjI4NzjtX6evqJfqtEie5Qr0YS0SYK6ibUbRuketeUPDkRAxdwpnLm1vamFsb29wggJfZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1RSRU9WQTROVUphTlZsRk1qVlNPRWRDVTBZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1RSRVMxWlJSRGd5VUZCWVdqTkZTRU5JTUZFaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF5SWl3aVpuTndTV1FpT2lKd1lYbGxaV1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TWpJdU9EYzRXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA','2025-05-22 12:25:23'),('01JVVZ9TZ733QQ55ZBREVSPXKJ','DIICpwAAAAAACSfAMjAyNTA1MjIxMjI2NDU5MDQASal4Gfel4KruyDAYj-45LJzv749BG54HG6VjYtvh9ApnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1ZSYU5UZzBSbE5XV0ZCVVVVdEtTelpOT1RBaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1ZSYU56TXpVVkUxTlZwQ1VrVldVMUJZUzBvaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TkRVdU9UQTBXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJMk1DSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk','2025-05-22 12:25:46'),('01JVVZ9VKSC0EZXY02EZEES1FX','DIICvgAAAAAACGRwMjAyNTA1MjIxMjI2NDY0NjbAfN_6hny9ut9wBD9a2A10PMhGQTDsv0flDGpvID-DGwpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1ZaTFVsaFhWRlpDTVRsTE9EQmFWRlpLU2xRaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1ZaTFUwTXdSVnBZV1RBeVJWcEZSVk14UmxnaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pY0dGNVpXVm1jM0FpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lOam8wTmk0ME5qWmFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpVMUlpd2lZM1Z5Y21WdVkza2lPaUpZVkZNaWZYMA','2025-05-22 12:25:46'),('01JVVZ9W382KZS35BMGMY29BNB','DIICpwAAAAAABVcwMjAyNTA1MjIxMjI2NDY5NzK10GshBAhRo113thqUkcUbhyFR_VD9sx1p06A2JbnlKQpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1Zjek4xWkNVRFUxVUZCS01sSkJPVUpRVWpNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1Zjek9ESkxXbE16TlVKTlIwMVpNamxDVGtJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TkRZdU9UY3lXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJek5TSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk','2025-05-22 12:25:47'),('01JVVZ9WPHY11YZWGE701H8AMV','DIICpwAAAAAAAw1AMjAyNTA1MjIxMjI2NDc2NjRldvE9RFS-gjYevjPv6mVEP_blKzryGhyR2qBac83svwpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1ZkUVIxcERWMUU0UkRJeE9USTJTRFZRTURFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1ZkUVNGa3hNVmxhVjBkRk56QXhTRGhCVFZZaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEEwSWl3aVpuTndTV1FpT2lKMFpYTjBabk53TWlKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TkRjdU5qWTBXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU1DSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk','2025-05-22 12:25:47'),('01JVVZ9XD7C0YR5E4QZZBN60Z8','DIICvgAAAAAABVcwMjAyNTA1MjIxMjI2NDgzMDIZCbVsSSOd8Y8ZzOZYoQJL_yQRWG-Q7BGjP1AYM880ZQpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1ZoRU5rcElPVGROVGtZNFJVUlNOMDB3TVRJaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1ZoRU4wTXdXVkkxUlRSUldscENUall3V2pnaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pZEdWemRHWnpjRElpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lOam8wT0M0ek1ESmFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpNMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA','2025-05-22 12:25:48'),('01JVVZ9Y054WX1STK8G4A61T6G','DIICpwAAAAAAA9CQMjAyNTA1MjIxMjI2NDg4OTE1JLXyP4vZsxcweKtznFkkrB_oZ83hH1Y_0HyP1ydR9QpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1Zrd05UUlhXREZUVkVzNFJ6UkJOakZVTmtZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1Zrd05UUlhXREZUVkVzNFJ6UkJOakZVTmtjaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF5SWl3aVpuTndTV1FpT2lKd1lYbGxaV1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TkRndU9Ea3hXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU5TSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk','2025-05-22 12:25:49'),('01JVVZB9ZP474ZV0MKFZ6AFCHR','DIICpwAAAAAACSfAMjAyNTA1MjIxMjI3MzQyMzehs24wIyRO20puoarJr4V8QNx6JyucvvCSPYoMc47HDgpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWpsWlVrdFVTamRPUTBkRFVGSXhXRTQyTkRFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWpsYVVEUTNORnBXTUUxTFJsbzJRVVpEU0ZJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamM2TXpRdU1qTTNXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJMk1DSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk','2025-05-22 12:26:34'),('01JVVZBB3F6XNXJ64AB6D6H7R4','DIICvgAAAAAACGRwMjAyNTA1MjIxMjI3MzUxMDQrWQo_pCxI3KSQHdFlXFBx4MjPvGnW0ICqBdPZ4OUouQpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtJelJVRkROa1JOTVU0MFVVWkZPREZGVVZRaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtJelJqWllUbGhLTmpSQlFqWkVOa2czVWpRaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pY0dGNVpXVm1jM0FpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lOem96TlM0eE1EUmFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpVMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA','2025-05-22 12:26:35'),('01JVVZBBK9VKY1JV2305X31ED2','DIICpwAAAAAABVcwMjAyNTA1MjIxMjI3MzU2MjYO4-fujUYZYjk7KalDFE3v2dpft8gBFjnl-Ez2PG6AkwpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtKTE9GcFRUVXRUU0RZMk5UY3hSREpVUkVvaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtKTE9WWkxXVEZLVmpJek1EVllNekZGUkRJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamM2TXpVdU5qSTJXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJek5TSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk','2025-05-22 12:26:35'),('01JVVZBC36V4B7D37BXHJDG06E','DIICpwAAAAAAAw1AMjAyNTA1MjIxMjI3MzYxMDhBtYk8NafqfMkenMUN21UpELAmqoQoGHbC-6rUlG_Y6wpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtNek5VTkZSVkpXVFVoWk56UlVVRGxMUnpNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtNek5sWTBRamRFTXpkQ1dFaEtSRWN3TmtVaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEEwSWl3aVpuTndTV1FpT2lKMFpYTjBabk53TWlKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamM2TXpZdU1UQTRXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU1DSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk','2025-05-22 12:26:36'),('01JVVZBCK01QKBN5CTGM2GWKGY','DIICvgAAAAAABVcwMjAyNTA1MjIxMjI3MzY1ODgckBIA7rw51Wz4xLa7c11jcFyNudvLkkNHFMy9_YHpXgpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtOS1drRlNRVVZVTVVkQ1dFaE9NelZGVFZZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtOTE1ERlJTMEpPTlVOVVIwMHlSMWRMUjFraUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pZEdWemRHWnpjRElpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lOem96Tmk0MU9EaGFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpNMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA','2025-05-22 12:26:36'),('01JVVZBD463527KDKSEDAQCPH3','DIICpwAAAAAAA9CQMjAyNTA1MjIxMjI3MzcyNzYkcnhmRCZ0TAwBa3e8FokaimSp0UVO2xwWF1XZq9BViApnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtRME0wUXhXamxCUWsxWldESTVTMGd3UlVFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtRME5qTTFNamRMUkV0VFJVUkJVVU5RU0RNaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF5SWl3aVpuTndTV1FpT2lKd1lYbGxaV1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamM2TXpjdU1qYzJXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU5TSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk','2025-05-22 12:26:37'),('01JVVZC581V1D996Z1GVPGXXSX','DIICpwAAAAAACSfAMjAyNTA1MjIxMjI4MDE5MTKYlsGljczLhSrJvrIzHvJtsXd1I8D_GU2j9F1sIXHjDwpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpVNE1ERlNORTVVVFZkQlExQk9UVmd3TjBvaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpVNE1WWXhSRGs1TmxveFIxWlFSMWhZVTFnaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamc2TURFdU9URXlXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJMk1DSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk','2025-05-22 12:27:02'),('01JVVZC5XS9T55E3FEQV8CCJT5','DIICvgAAAAAACGRwMjAyNTA1MjIxMjI4MDI1NTMdCmWVW4vbbojhdcj9BCjx3cykAvt_LWOO_b9bJ2FnLQpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpWWVV6bFVOVFZGTTBaRlVWWTRRME5LVkRRaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpWWVV6bFVOVFZGTTBaRlVWWTRRME5LVkRVaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pY0dGNVpXVm1jM0FpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lPRG93TWk0MU5UTmFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpVMUlpd2lZM1Z5Y21WdVkza2lPaUpZVkZNaWZYMA','2025-05-22 12:27:02'),('01JVVZC6DVAC3HQHGHWZ2MMVVP','DIICpwAAAAAABVcwMjAyNTA1MjIxMjI4MDMwNTWBCnIWlF2SphVXCk5io5Kw9no70jMjvGEzWL8_UtJkfQpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpaRVZFcE9SamhRV2xwSU5EVkxUVmswTjFFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpaRVZrRkRNMGhSU0VkSVYxb3lUVTFXVmxBaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamc2TURNdU1EVTFXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJek5TSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk','2025-05-22 12:27:03'),('01JVVZC6YBB244VVDNNSEKG7KN','DIICpwAAAAAAAw1AMjAyNTA1MjIxMjI4MDM2MTOGPXWbQ2U3u_Kc5bIBwkKZaV4aZOktqVnFDq4RLqeV6wpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpaWlFWa3dUa05aVFVaWVVsRTFXVGhOT1RBaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpaWlFrSXlORFJXVmtST1RsTkZTMGMzUzA0aUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEEwSWl3aVpuTndTV1FpT2lKMFpYTjBabk53TWlKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamc2TURNdU5qRXpXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU1DSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk','2025-05-22 12:27:03'),('01JVVZC8Q5ARSYRSEVCX90CXXQ','DIICvgAAAAAABVcwMjAyNTA1MjIxMjI4MDU0NThv24EqtW6jMDWBUM2QUCHWq9-YG9GWQf9I3sKV2YGi0ApnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpoUk5GRlFOVmhLUzBKWVZEaFJRVUZGVmtnaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpoUk5VRlNVMWxTVTBWV1ExZzVNRU5ZV0ZFaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pZEdWemRHWnpjRElpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lPRG93TlM0ME5UaGFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpNMUlpd2lZM1Z5Y21WdVkza2lPaUpZVkZNaWZYMA','2025-05-22 12:27:05'),('01JVVZC97AD4YWVPWS5DTSKV5B','DIICpwAAAAAAA9CQMjAyNTA1MjIxMjI4MDU5MzDL9jAuUHmQ8X02amO5Q7-gr7mnpRA1vtK6zMp4ia0ZIQpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXprM09VVXpRakl5U3pWSE1UY3dPVmN3UjFNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXprM1FVUTBXVmRXVUZkVE5VUlVVMHRXTlVJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF5SWl3aVpuTndTV1FpT2lKd1lYbGxaV1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamc2TURVdU9UTXdXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU5TSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk','2025-05-22 12:27:06'),('01JVVZDGPZ2NQGA7ZJB7XCDK09','DIICYwAAAAAAD0JAMjAyNTA1MjMxMjI3NTYwNzlb87HX_z54swUkVbTudVNwQ2hUqKNha1-F2u78KX-ohwpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFSRWRRV2pKT1VVZEJOMXBLUWpkWVEwUkxNRGtpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphUkZJMlFrZElWbEZJUTFKVE9UYzBOMHM0VFVnaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpVdE1EVXRNak5VTVRJNk1qYzZOVFl1TURjNVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:27:59'),('01JVVZE15SAK643DT7N3R8RBSM','DIICYgAAAAAAD0JAMjAyNTA1MjMxMjI4MDYxMTX0v_kehJgE6Rt2lE8oJ72T-kVs2Gs-rDpx1IbpE46WIwpnLm1vamFsb29wggIbZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFSVEUxVTBGTE5qUXpSRlEzVGpOU09GSkNVMDBpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphUlRKUVJGcEtSamsyV0ZRelNFSlNWak5ZVTFNaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0bWVIQmhlV1ZsSW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdG1lSEJoZVdWeUluMTlMQ0poYlc5MWJuUWlPbnNpWTNWeWNtVnVZM2tpT2lKWVZGTWlMQ0poYlc5MWJuUWlPaUl4TURBaWZTd2lkSEpoYm5OaFkzUnBiMjVVZVhCbElqcHVkV3hzTENKbGVIQnBjbUYwYVc5dUlqb2lNakF5TlMwd05TMHlNMVF4TWpveU9Eb3dOaTR4TVRWYUlpd2libTkwWlNJNmJuVnNiSDA','2025-05-22 12:28:11'),('01JVVZEDKHC0MMYXRSD5J8NY8B','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:28:16'),('01JVVZEEDWGYNJV655N86YQXS3','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:28:17'),('01JVVZEFEF2HRCGCXD3Y0XRVBY','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:28:18'),('01JVVZEGV1R1V31ZT6ZVZBTET5','DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 12:28:19'),('01JVW42Z5QTKBHK30VGJ05GGAP','DIICYwAAAAAAD0JAMjAyNTA1MjMxMzQ5MjY5OTNh0wXmKF7nNj-c5VHMhv9gFzwuV-PA7hNnfHIH8_9hcQpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsYzBNbG8xVVZSTFFraExNekJXUjBvd05VZEhRVkFpTENKeGRXOTBaVWxrSWpvaU1ERktWbGMwTXpCYVFsQlNOMEZSVUVVd1VrdE5SMWhPUWpVaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpVdE1EVXRNak5VTVRNNk5EazZNall1T1RreldpSXNJbTV2ZEdVaU9tNTFiR3g5','2025-05-22 13:49:33');
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
INSERT INTO `ledgerAccountType` VALUES (1,'POSITION','Typical accounts from which a DFSP provisions transfers',1,'2025-05-22 12:04:07',1),(2,'SETTLEMENT','Reflects the individual DFSP Settlement Accounts as held at the Settlement Bank',1,'2025-05-22 12:04:07',0),(3,'HUB_RECONCILIATION','A single account for each currency with which the hub operates. The account is \"held\" by the Participant representing the hub in the switch',1,'2025-05-22 12:04:07',0),(4,'HUB_MULTILATERAL_SETTLEMENT','A single account for each currency with which the hub operates. The account is \"held\" by the Participant representing the hub in the switch',1,'2025-05-22 12:04:07',0),(5,'INTERCHANGE_FEE',NULL,1,'2025-05-22 12:04:07',1),(6,'INTERCHANGE_FEE_SETTLEMENT',NULL,1,'2025-05-22 12:04:07',0);
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
INSERT INTO `ledgerEntryType` VALUES (1,'PRINCIPLE_VALUE','The principle amount to be settled between parties, derived on quotes between DFSPs',1,'2025-05-22 12:04:07',1),(2,'INTERCHANGE_FEE','Fees to be paid between DFSP',1,'2025-05-22 12:04:07',5),(3,'HUB_FEE','Fees to be paid from the DFSPs to the Hub Operator',1,'2025-05-22 12:04:07',NULL),(4,'POSITION_DEPOSIT','Used when increasing Net Debit Cap',1,'2025-05-22 12:04:07',NULL),(5,'POSITION_WITHDRAWAL','Used when decreasing Net Debit Cap',1,'2025-05-22 12:04:07',NULL),(6,'SETTLEMENT_NET_RECIPIENT','Participant is settlement net recipient',1,'2025-05-22 12:04:07',NULL),(7,'SETTLEMENT_NET_SENDER','Participant is settlement net sender',1,'2025-05-22 12:04:07',NULL),(8,'SETTLEMENT_NET_ZERO','Participant is settlement net sender',1,'2025-05-22 12:04:07',NULL),(9,'RECORD_FUNDS_IN','Settlement account funds in',1,'2025-05-22 12:04:07',NULL),(10,'RECORD_FUNDS_OUT','Settlement account funds out',1,'2025-05-22 12:04:07',NULL);
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
INSERT INTO `migration` VALUES (1,'100100_event.js',1,'2025-05-22 12:03:55'),(2,'110100_contactType.js',1,'2025-05-22 12:03:55'),(3,'110101_contactType-indexes.js',1,'2025-05-22 12:03:55'),(4,'110200_currency.js',1,'2025-05-22 12:03:55'),(5,'110201_currency-scale.js',1,'2025-05-22 12:03:55'),(6,'110300_endpointType.js',1,'2025-05-22 12:03:55'),(7,'110301_endpointType-indexes.js',1,'2025-05-22 12:03:55'),(8,'110400_ledgerEntryType.js',1,'2025-05-22 12:03:55'),(9,'110401_ledgerEntryType-indexes.js',1,'2025-05-22 12:03:56'),(10,'110450_ledgerAccountType.js',1,'2025-05-22 12:03:56'),(11,'110451_ledgerAccountType-indexes.js',1,'2025-05-22 12:03:56'),(12,'110500_participantLimitType.js',1,'2025-05-22 12:03:56'),(13,'110501_participantLimitType-indexes.js',1,'2025-05-22 12:03:56'),(14,'110600_transferParticipantRoleType.js',1,'2025-05-22 12:03:56'),(15,'110601_transferParticipantRoleType-indexes.js',1,'2025-05-22 12:03:56'),(16,'110700_transferState.js',1,'2025-05-22 12:03:56'),(17,'110800_settlementWindowState.js',1,'2025-05-22 12:03:56'),(18,'110900_settlementState.js',1,'2025-05-22 12:03:56'),(19,'111000_amountType.js',1,'2025-05-22 12:03:56'),(20,'111001_amountType-indexes.js',1,'2025-05-22 12:03:56'),(21,'111100_balanceOfPayments.js',1,'2025-05-22 12:03:56'),(22,'111101_balanceOfPayments-indexes.js',1,'2025-05-22 12:03:56'),(23,'111200_partyIdentifierType.js',1,'2025-05-22 12:03:56'),(24,'111201_partyIdentifierType-indexes.js',1,'2025-05-22 12:03:56'),(25,'111300_partyType.js',1,'2025-05-22 12:03:56'),(26,'111301_partyType-indexes.js',1,'2025-05-22 12:03:56'),(27,'111400_quoteDuplicateCheck.js',1,'2025-05-22 12:03:56'),(28,'111500_transactionInitiator.js',1,'2025-05-22 12:03:56'),(29,'111501_transactionInitiator-indexes.js',1,'2025-05-22 12:03:56'),(30,'111600_transactionInitiatorType.js',1,'2025-05-22 12:03:56'),(31,'111601_transactionInitiatorType-indexes.js',1,'2025-05-22 12:03:56'),(32,'111700_settlementDelay.js',1,'2025-05-22 12:03:56'),(33,'111701_settlementDelay-indexes.js',1,'2025-05-22 12:03:56'),(34,'111800_settlementInterchange.js',1,'2025-05-22 12:03:56'),(35,'111801_settlementInterchange-indexes.js',1,'2025-05-22 12:03:56'),(36,'111900_settlementGranularity.js',1,'2025-05-22 12:03:56'),(37,'111901_settlementGranularity-indexes.js',1,'2025-05-22 12:03:56'),(38,'112000_bulkTransferState.js',1,'2025-05-22 12:03:56'),(39,'112100_bulkProcessingState.js',1,'2025-05-22 12:03:56'),(40,'112101_bulkProcessingState-indexes.js',1,'2025-05-22 12:03:56'),(41,'200100_participant.js',1,'2025-05-22 12:03:56'),(42,'200101_participant-indexes.js',1,'2025-05-22 12:03:56'),(43,'200200_participantContact.js',1,'2025-05-22 12:03:56'),(44,'200201_participantContact-indexes.js',1,'2025-05-22 12:03:56'),(45,'200300_participantEndpoint.js',1,'2025-05-22 12:03:56'),(46,'200301_participantEndpoint-indexes.js',1,'2025-05-22 12:03:56'),(47,'200400_participantParty.js',1,'2025-05-22 12:03:56'),(48,'200401_participantParty-indexes.js',1,'2025-05-22 12:03:56'),(49,'200600_token.js',1,'2025-05-22 12:03:56'),(50,'200601_token-indexes.js',1,'2025-05-22 12:03:56'),(51,'300100_transferDuplicateCheck.js',1,'2025-05-22 12:03:56'),(52,'300150_bulkTransferDuplicateCheck.js',1,'2025-05-22 12:03:56'),(53,'300200_transfer.js',1,'2025-05-22 12:03:57'),(54,'300201_transfer-indexes.js',1,'2025-05-22 12:03:57'),(55,'300202_transfer-decimal184.js',1,'2025-05-22 12:03:57'),(56,'300250_bulkTransfer.js',1,'2025-05-22 12:03:57'),(57,'300251_bulkTransfer-indexes.js',1,'2025-05-22 12:03:57'),(58,'300275_bulkTransferAssociation.js',1,'2025-05-22 12:03:57'),(59,'300276_bulkTransferAssociation-indexes.js',1,'2025-05-22 12:03:57'),(60,'300300_ilpPacket.js',1,'2025-05-22 12:03:57'),(61,'300400_transferStateChange.js',1,'2025-05-22 12:03:57'),(62,'300401_transferStateChange-indexes.js',1,'2025-05-22 12:03:57'),(63,'300450_bulkTransferStateChange.js',1,'2025-05-22 12:03:57'),(64,'300451_bulkTransferStateChange-indexes.js',1,'2025-05-22 12:03:57'),(65,'300500_segment.js',1,'2025-05-22 12:03:57'),(66,'300501_segment-indexes.js',1,'2025-05-22 12:03:57'),(67,'310100_participantCurrency.js',1,'2025-05-22 12:03:57'),(68,'310101_participantCurrency-indexes.js',1,'2025-05-22 12:03:57'),(69,'310200_transferParticipant.js',1,'2025-05-22 12:03:57'),(70,'310201_transferParticipant-indexes.js',1,'2025-05-22 12:03:58'),(71,'310202_transferParticipant-decimal184.js',1,'2025-05-22 12:03:58'),(72,'310203_transferParticipant-indexes.js',1,'2025-05-22 12:03:58'),(73,'310204_transferParticipant-participantId.js',1,'2025-05-22 12:03:58'),(74,'310300_participantPosition.js',1,'2025-05-22 12:03:58'),(75,'310301_participantPosition-indexes.js',1,'2025-05-22 12:03:58'),(76,'310302_participantPosition-decimal184.js',1,'2025-05-22 12:03:58'),(77,'310400_participantPositionChange.js',1,'2025-05-22 12:03:58'),(78,'310401_participantPositionChange-indexes.js',1,'2025-05-22 12:03:58'),(79,'310402_participantPositionChange-decimal184.js',1,'2025-05-22 12:03:58'),(80,'310403_participantPositionChange-participantCurrencyId.js',1,'2025-05-22 12:03:58'),(81,'310404_participantPositionChange-change.js',1,'2025-05-22 12:03:58'),(82,'310500_participantLimit.js',1,'2025-05-22 12:03:58'),(83,'310501_participantLimit-indexes.js',1,'2025-05-22 12:03:58'),(84,'310502_participantLimit-decimal184.js',1,'2025-05-22 12:03:58'),(85,'310503_participantLimit-indexes-composite.js',1,'2025-05-22 12:03:58'),(86,'400100_settlementWindow.js',1,'2025-05-22 12:03:58'),(87,'400200_settlement.js',1,'2025-05-22 12:03:58'),(88,'400300_settlementSettlementWindow.js',1,'2025-05-22 12:03:58'),(89,'400301_settlementSettlementWindow-indexes.js',1,'2025-05-22 12:03:58'),(90,'400400_settlementWindowStateChange.js',1,'2025-05-22 12:03:58'),(91,'400401_settlmentWindowStateChange-indexes.js',1,'2025-05-22 12:03:58'),(92,'400500_settlementTransferParticipant.js',1,'2025-05-22 12:03:58'),(93,'400501_settlementTransferParticipant-indexes.js',1,'2025-05-22 12:03:59'),(94,'400502_settlementTransferParticipant-decimal184.js',1,'2025-05-22 12:03:59'),(95,'400600_settlementParticipantCurrency.js',1,'2025-05-22 12:03:59'),(96,'400601_settlementParticipantCurrency-indexes.js',1,'2025-05-22 12:03:59'),(97,'400602_settlementParticipantCurrency-decimal184.js',1,'2025-05-22 12:03:59'),(98,'400700_settlementParticipantCurrencyStateChange.js',1,'2025-05-22 12:03:59'),(99,'400701_settlementParticipantCurrencyStateChange-indexes.js',1,'2025-05-22 12:03:59'),(100,'400800_settlementStateChange.js',1,'2025-05-22 12:03:59'),(101,'400801_settlementStateChange-indexes.js',1,'2025-05-22 12:03:59'),(102,'400900_settlementWindowContent.js',1,'2025-05-22 12:03:59'),(103,'401000_settlementWindowContentStateChange.js',1,'2025-05-22 12:03:59'),(104,'401001_settlementWindowContentStateChange-indexes.js',1,'2025-05-22 12:03:59'),(105,'401002_settlementWindowContent-indexes.js',1,'2025-05-22 12:03:59'),(106,'401200_settlementContentAggregation.js',1,'2025-05-22 12:04:00'),(107,'401201_settlementContentAggregation-indexes.js',1,'2025-05-22 12:04:00'),(108,'401300_settlementModel.js',1,'2025-05-22 12:04:00'),(109,'401301_settlementModel-indexes.js',1,'2025-05-22 12:04:00'),(110,'410100_transferFulfilmentDuplicateCheck.js',1,'2025-05-22 12:04:00'),(111,'410101_transferFulfilmentDuplicateCheck-indexes.js',1,'2025-05-22 12:04:00'),(112,'410102_transferFulfilmentDuplicateCheck-dropForeignTransferId.js',1,'2025-05-22 12:04:00'),(113,'410103_transferFulfilmentDuplicateCheck-hashNullable.js',1,'2025-05-22 12:04:00'),(114,'410200_transferFulfilment.js',1,'2025-05-22 12:04:00'),(115,'410201_transferFulfilment-indexes.js',1,'2025-05-22 12:04:00'),(116,'410202_transferFulfilment-ilpFulfilment.js',1,'2025-05-22 12:04:00'),(117,'410203_transferFulfilment-foreignTransferFulfilmentId.js',1,'2025-05-22 12:04:00'),(118,'410240_bulkTransferFulfilmentDuplicateCheck.js',1,'2025-05-22 12:04:00'),(119,'410250_bulkTransferFulfilment.js',1,'2025-05-22 12:04:00'),(120,'410300_transferExtension.js',1,'2025-05-22 12:04:01'),(121,'410301_transferExtension-indexes.js',1,'2025-05-22 12:04:01'),(122,'410302_transferExtension-transferErrorId.js',1,'2025-05-22 12:04:01'),(123,'410350_bulkTransferExtension.js',1,'2025-05-22 12:04:01'),(124,'410351_bulkTransferExtension-indexes.js',1,'2025-05-22 12:04:01'),(125,'410400_transferTimeout.js',1,'2025-05-22 12:04:01'),(126,'410401_transferTimeout-indexes.js',1,'2025-05-22 12:04:01'),(127,'410450_transferErrorDuplicateCheck.js',1,'2025-05-22 12:04:01'),(128,'410500_transferError.js',1,'2025-05-22 12:04:01'),(129,'410501_transferError-indexes.js',1,'2025-05-22 12:04:01'),(130,'410502_transferError-foreignTransferErrorDuplicateCheckId.js',1,'2025-05-22 12:04:01'),(131,'410550_bulkTransferError.js',1,'2025-05-22 12:04:01'),(132,'410551_bulkTransferError-indexes.js',1,'2025-05-22 12:04:01'),(133,'410600_expiringTransfer.js',1,'2025-05-22 12:04:01'),(134,'410601_expiringTransfer-indexes.js',1,'2025-05-22 12:04:01'),(135,'500100_transactionReference.js',1,'2025-05-22 12:04:01'),(136,'500101_transactionReference-indexes.js',1,'2025-05-22 12:04:01'),(137,'500200_transactionScenario.js',1,'2025-05-22 12:04:01'),(138,'500201_transactionScenario-indexes.js',1,'2025-05-22 12:04:01'),(139,'500300_transactionSubScenario.js',1,'2025-05-22 12:04:01'),(140,'500400_quote.js',1,'2025-05-22 12:04:02'),(141,'500401_quote-hotfix-2719.js',1,'2025-05-22 12:04:02'),(142,'500500_quoteParty.js',1,'2025-05-22 12:04:02'),(143,'500501_feature-fixSubIdRef.js',1,'2025-05-22 12:04:02'),(144,'500600_party.js',1,'2025-05-22 12:04:02'),(145,'500601_party-2480.js',1,'2025-05-22 12:04:02'),(146,'500700_quoteResponse.js',1,'2025-05-22 12:04:02'),(147,'500800_quoteResponseIlpPacket.js',1,'2025-05-22 12:04:02'),(148,'500900_geoCode.js',1,'2025-05-22 12:04:03'),(149,'501000_quoteExtension.js',1,'2025-05-22 12:04:03'),(150,'501001_quoteExtension-quote-service-174.js',1,'2025-05-22 12:04:03'),(151,'501002_quoteExtension-2522.js',1,'2025-05-22 12:04:03'),(152,'501100_quoteResponseDuplicateCheck.js',1,'2025-05-22 12:04:03'),(153,'501200_quoteError.js',1,'2025-05-22 12:04:03'),(154,'501300_transferRules.js',1,'2025-05-22 12:04:03'),(155,'600010_fxTransferType.js',1,'2025-05-22 12:04:03'),(156,'600011_fxTransferType-indexes.js',1,'2025-05-22 12:04:03'),(157,'600012_fxParticipantCurrencyType.js',1,'2025-05-22 12:04:03'),(158,'600013_fxParticipantCurrencyType-indexes.js',1,'2025-05-22 12:04:03'),(159,'600100_fxTransferDuplicateCheck.js',1,'2025-05-22 12:04:03'),(160,'600110_fxTransferErrorDuplicateCheck.js.js',1,'2025-05-22 12:04:03'),(161,'600200_fxTransfer.js',1,'2025-05-22 12:04:03'),(162,'600201_fxTransfer-indexes.js',1,'2025-05-22 12:04:03'),(163,'600400_fxTransferStateChange.js',1,'2025-05-22 12:04:03'),(164,'600401_fxTransferStateChange-indexes.js',1,'2025-05-22 12:04:03'),(165,'600501_fxWatchList.js',1,'2025-05-22 12:04:03'),(166,'600502_fxWatchList-indexes.js',1,'2025-05-22 12:04:03'),(167,'600600_fxTransferFulfilmentDuplicateCheck.js',1,'2025-05-22 12:04:03'),(168,'600601_fxTransferFulfilmentDuplicateCheck-indexes.js',1,'2025-05-22 12:04:03'),(169,'600700_fxTransferFulfilment.js',1,'2025-05-22 12:04:03'),(170,'600701_fxTransferFulfilment-indexes.js',1,'2025-05-22 12:04:03'),(171,'600800_fxTransferExtension.js',1,'2025-05-22 12:04:03'),(172,'601400_fxTransferTimeout.js',1,'2025-05-22 12:04:03'),(173,'601401_fxTransferTimeout-indexes.js',1,'2025-05-22 12:04:03'),(174,'601500_fxTransferError.js',1,'2025-05-22 12:04:03'),(175,'601501_fxTransferError-indexes.js',1,'2025-05-22 12:04:03'),(176,'610200_fxTransferParticipant.js',1,'2025-05-22 12:04:04'),(177,'610201_fxTransferParticipant-indexes.js',1,'2025-05-22 12:04:04'),(178,'610202_fxTransferParticipant-participantId.js',1,'2025-05-22 12:04:04'),(179,'610403_participantPositionChange-fxTransfer.js',1,'2025-05-22 12:04:04'),(180,'800100_quotePartyView.js',1,'2025-05-22 12:04:04'),(181,'800101_feature-fixSubIdRef.js',1,'2025-05-22 12:04:04'),(182,'800200_quoteView.js',1,'2025-05-22 12:04:04'),(183,'800300_quoteResponseView.js',1,'2025-05-22 12:04:04'),(184,'900100_foreign-keys.js',1,'2025-05-22 12:04:04'),(185,'900101_foreign-keys.js',1,'2025-05-22 12:04:04'),(186,'910100_feature904DDL.js',1,'2025-05-22 12:04:04'),(187,'910101_feature904DataMigration.js',1,'2025-05-22 12:04:04'),(188,'910102_feature949DataMigration.js',1,'2025-05-22 12:04:04'),(189,'910102_hotfix954.js',1,'2025-05-22 12:04:04'),(190,'910103_feature1093SettlementByCurrency.js',1,'2025-05-22 12:04:05'),(191,'940100_quotePartyIdInfoExtension.js',1,'2025-05-22 12:04:05'),(192,'940101_quotePartyIdInfoExtension-2522.js',1,'2025-05-22 12:04:05'),(193,'950100_settlementContentAggregation-decimal184.js',1,'2025-05-22 12:04:05'),(194,'950101_transferParticipantStateChange.js',1,'2025-05-22 12:04:05'),(195,'950102_settlementModel-adjustPosition.js',1,'2025-05-22 12:04:05'),(196,'950103_dropTransferParticipantStateChange.js',1,'2025-05-22 12:04:05'),(197,'950104_settlementModel-settlementAccountTypeId.js',1,'2025-05-22 12:04:05'),(198,'950106_unique_settlement_model_ledger_account_currency.js',1,'2025-05-22 12:04:05'),(199,'950107_settlementWindowContent_foreign_settlementModel.js',1,'2025-05-22 12:04:05'),(200,'950108_participantProxy.js',1,'2025-05-22 12:04:05'),(201,'950109_fxQuote.js',1,'2025-05-22 12:04:05'),(202,'950110_fxQuoteResponse.js',1,'2025-05-22 12:04:05'),(203,'950111_fxQuoteError.js',1,'2025-05-22 12:04:05'),(204,'950113_fxQuoteDuplicateCheck.js',1,'2025-05-22 12:04:05'),(205,'950114_fxQuoteResponseDuplicateCheck.js',1,'2025-05-22 12:04:05'),(206,'950115_fxQuoteConversionTerms.js',1,'2025-05-22 12:04:05'),(207,'950116_fxQuoteConversionTermsExtension.js',1,'2025-05-22 12:04:05'),(208,'950117_fxQuoteResponseConversionTerms.js',1,'2025-05-22 12:04:06'),(209,'950118_fxQuoteResponseConversionTermsExtension.js',1,'2025-05-22 12:04:06'),(210,'950119_fxCharge.js',1,'2025-05-22 12:04:06'),(211,'960100_create_externalParticipant.js',1,'2025-05-22 12:04:06'),(212,'960110_alter_transferParticipant__addFiled_externalParticipantId.js',1,'2025-05-22 12:04:06'),(213,'960111_alter_fxTransferParticipant__addFiled_externalParticipantId.js',1,'2025-05-22 12:04:06'),(214,'960112_fxTransfer-indexes2.js',1,'2025-05-22 12:04:06'),(215,'960113_fxTransferExtension-indexes.js',1,'2025-05-22 12:04:06'),(216,'960114_fxTransferTimeout-indexes2.js',1,'2025-05-22 12:04:06');
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
INSERT INTO `participant` VALUES (1,'Hub','Hub Operator',1,'2025-05-22 12:04:07','seeds',0),(2,'payerfsp',NULL,1,'2025-05-22 12:12:42','unknown',0),(3,'payeefsp',NULL,1,'2025-05-22 12:13:53','unknown',0),(4,'noresponsepayeefsp',NULL,1,'2025-05-22 12:15:02','unknown',0),(5,'testfsp1',NULL,1,'2025-05-22 12:16:05','unknown',0),(6,'testfsp2',NULL,1,'2025-05-22 12:17:00','unknown',0),(7,'testingtoolkitdfsp',NULL,1,'2025-05-22 12:18:00','unknown',0),(8,'ttkpayeefsp',NULL,1,'2025-05-22 12:19:08','unknown',0),(9,'testfsp3',NULL,1,'2025-05-22 12:20:08','unknown',0),(10,'testfsp4',NULL,1,'2025-05-22 12:20:43','unknown',0),(11,'ttkfxp1',NULL,1,'2025-05-22 12:21:16','unknown',0),(12,'ttkfxpayee',NULL,1,'2025-05-22 12:22:33','unknown',0),(13,'ttkfxpayer',NULL,1,'2025-05-22 12:23:33','unknown',0);
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
INSERT INTO `participantCurrency` VALUES (1,1,'XXX',4,1,'2025-05-22 12:12:08','unknown'),(2,1,'XXX',3,1,'2025-05-22 12:12:09','unknown'),(3,1,'XTS',4,1,'2025-05-22 12:12:15','unknown'),(4,1,'XTS',3,1,'2025-05-22 12:12:17','unknown'),(5,1,'INR',4,1,'2025-05-22 12:12:18','unknown'),(6,1,'INR',3,1,'2025-05-22 12:12:19','unknown'),(7,1,'XDR',4,1,'2025-05-22 12:12:21','unknown'),(8,1,'XDR',3,1,'2025-05-22 12:12:22','unknown'),(9,2,'XXX',1,1,'2025-05-22 12:12:42','unknown'),(10,2,'XXX',2,1,'2025-05-22 12:12:42','unknown'),(11,2,'XTS',1,1,'2025-05-22 12:13:01','unknown'),(12,2,'XTS',2,1,'2025-05-22 12:13:01','unknown'),(13,2,'INR',1,1,'2025-05-22 12:13:04','unknown'),(14,2,'INR',2,1,'2025-05-22 12:13:04','unknown'),(15,2,'INR',5,1,'2025-05-22 12:13:04','unknown'),(16,2,'INR',6,1,'2025-05-22 12:13:04','unknown'),(17,3,'XXX',1,1,'2025-05-22 12:13:53','unknown'),(18,3,'XXX',2,1,'2025-05-22 12:13:53','unknown'),(19,3,'XTS',1,1,'2025-05-22 12:14:07','unknown'),(20,3,'XTS',2,1,'2025-05-22 12:14:07','unknown'),(21,3,'INR',1,1,'2025-05-22 12:14:10','unknown'),(22,3,'INR',2,1,'2025-05-22 12:14:10','unknown'),(23,3,'INR',5,1,'2025-05-22 12:14:10','unknown'),(24,3,'INR',6,1,'2025-05-22 12:14:10','unknown'),(25,4,'XXX',1,1,'2025-05-22 12:15:02','unknown'),(26,4,'XXX',2,1,'2025-05-22 12:15:02','unknown'),(27,4,'XTS',1,1,'2025-05-22 12:15:16','unknown'),(28,4,'XTS',2,1,'2025-05-22 12:15:16','unknown'),(29,4,'INR',1,1,'2025-05-22 12:15:18','unknown'),(30,4,'INR',2,1,'2025-05-22 12:15:18','unknown'),(31,4,'INR',5,1,'2025-05-22 12:15:18','unknown'),(32,4,'INR',6,1,'2025-05-22 12:15:18','unknown'),(33,5,'XXX',1,1,'2025-05-22 12:16:05','unknown'),(34,5,'XXX',2,1,'2025-05-22 12:16:05','unknown'),(35,5,'XTS',1,1,'2025-05-22 12:16:14','unknown'),(36,5,'XTS',2,1,'2025-05-22 12:16:14','unknown'),(37,5,'INR',1,1,'2025-05-22 12:16:17','unknown'),(38,5,'INR',2,1,'2025-05-22 12:16:17','unknown'),(39,5,'INR',5,1,'2025-05-22 12:16:17','unknown'),(40,5,'INR',6,1,'2025-05-22 12:16:17','unknown'),(41,6,'XXX',1,1,'2025-05-22 12:17:00','unknown'),(42,6,'XXX',2,1,'2025-05-22 12:17:00','unknown'),(43,6,'XTS',1,1,'2025-05-22 12:17:14','unknown'),(44,6,'XTS',2,1,'2025-05-22 12:17:14','unknown'),(45,6,'INR',1,1,'2025-05-22 12:17:16','unknown'),(46,6,'INR',2,1,'2025-05-22 12:17:16','unknown'),(47,6,'INR',5,1,'2025-05-22 12:17:16','unknown'),(48,6,'INR',6,1,'2025-05-22 12:17:16','unknown'),(49,7,'XXX',1,1,'2025-05-22 12:18:00','unknown'),(50,7,'XXX',2,1,'2025-05-22 12:18:00','unknown'),(51,7,'XTS',1,1,'2025-05-22 12:18:02','unknown'),(52,7,'XTS',2,1,'2025-05-22 12:18:02','unknown'),(53,7,'INR',1,1,'2025-05-22 12:18:05','unknown'),(54,7,'INR',2,1,'2025-05-22 12:18:05','unknown'),(55,7,'INR',5,1,'2025-05-22 12:18:05','unknown'),(56,7,'INR',6,1,'2025-05-22 12:18:05','unknown'),(57,8,'XXX',1,1,'2025-05-22 12:19:08','unknown'),(58,8,'XXX',2,1,'2025-05-22 12:19:08','unknown'),(59,8,'XTS',1,1,'2025-05-22 12:19:54','unknown'),(60,8,'XTS',2,1,'2025-05-22 12:19:54','unknown'),(61,8,'INR',1,1,'2025-05-22 12:19:58','unknown'),(62,8,'INR',2,1,'2025-05-22 12:19:58','unknown'),(63,8,'INR',5,1,'2025-05-22 12:19:58','unknown'),(64,8,'INR',6,1,'2025-05-22 12:19:58','unknown'),(65,9,'INR',1,1,'2025-05-22 12:20:08','unknown'),(66,9,'INR',2,1,'2025-05-22 12:20:08','unknown'),(67,9,'INR',5,1,'2025-05-22 12:20:08','unknown'),(68,9,'INR',6,1,'2025-05-22 12:20:08','unknown'),(69,10,'INR',1,1,'2025-05-22 12:20:43','unknown'),(70,10,'INR',2,1,'2025-05-22 12:20:43','unknown'),(71,10,'INR',5,1,'2025-05-22 12:20:43','unknown'),(72,10,'INR',6,1,'2025-05-22 12:20:43','unknown'),(73,11,'XDR',1,1,'2025-05-22 12:21:16','unknown'),(74,11,'XDR',2,1,'2025-05-22 12:21:16','unknown'),(75,11,'XTS',1,1,'2025-05-22 12:21:22','unknown'),(76,11,'XTS',2,1,'2025-05-22 12:21:22','unknown'),(77,12,'XTS',1,1,'2025-05-22 12:22:33','unknown'),(78,12,'XTS',2,1,'2025-05-22 12:22:33','unknown'),(79,13,'XDR',1,1,'2025-05-22 12:23:33','unknown'),(80,13,'XDR',2,1,'2025-05-22 12:23:33','unknown');
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
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantEndpoint`
--

LOCK TABLES `participantEndpoint` WRITE;
/*!40000 ALTER TABLE `participantEndpoint` DISABLE KEYS */;
INSERT INTO `participantEndpoint` VALUES (1,1,12,'some.email@gmail.com',1,'2025-05-22 12:12:10','unknown'),(2,1,11,'some.email@gmail.com',1,'2025-05-22 12:12:12','unknown'),(3,1,10,'some.email@gmail.com',1,'2025-05-22 12:12:13','unknown'),(4,2,31,'http://moja-sim-payerfsp-scheme-adapter:4000',1,'2025-05-22 12:13:16','unknown'),(5,2,13,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:13:17','unknown'),(6,2,15,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:13:19','unknown'),(7,2,19,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-22 12:13:21','unknown'),(8,2,20,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-22 12:13:22','unknown'),(9,2,21,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:13:23','unknown'),(10,2,23,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:13:25','unknown'),(11,2,25,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:13:26','unknown'),(12,2,27,'http://moja-sim-payerfsp-scheme-adapter:4000',1,'2025-05-22 12:13:27','unknown'),(13,2,32,'http://moja-sim-payerfsp-scheme-adapter:4000',1,'2025-05-22 12:13:28','unknown'),(14,2,3,'http://moja-sim-payerfsp-scheme-adapter:4000/transfers',1,'2025-05-22 12:13:30','unknown'),(15,2,4,'http://moja-sim-payerfsp-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-22 12:13:31','unknown'),(16,2,5,'http://moja-sim-payerfsp-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-22 12:13:32','unknown'),(17,2,28,'http://moja-sim-payerfsp-scheme-adapter:4000/bulkTransfers',1,'2025-05-22 12:13:34','unknown'),(18,2,29,'http://moja-sim-payerfsp-scheme-adapter:4000/bulkTransfers/{{id}}',1,'2025-05-22 12:13:35','unknown'),(19,2,30,'http://moja-sim-payerfsp-scheme-adapter:4000/bulkTransfers/{{id}}/error',1,'2025-05-22 12:13:37','unknown'),(20,2,14,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:13:39','unknown'),(21,2,16,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:13:40','unknown'),(22,2,18,'http://moja-sim-payerfsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:13:41','unknown'),(23,2,22,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:13:43','unknown'),(24,2,24,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:13:44','unknown'),(25,2,26,'http://moja-sim-payerfsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:13:45','unknown'),(26,2,10,'some.email@gmail.com',1,'2025-05-22 12:13:46','unknown'),(27,2,11,'some.email@gmail.com',1,'2025-05-22 12:13:48','unknown'),(28,2,12,'some.email@gmail.com',1,'2025-05-22 12:13:49','unknown'),(29,3,31,'http://moja-sim-payeefsp-scheme-adapter:4000',1,'2025-05-22 12:14:24','unknown'),(30,3,13,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:14:26','unknown'),(31,3,15,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:14:27','unknown'),(32,3,19,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-22 12:14:28','unknown'),(33,3,20,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-22 12:14:29','unknown'),(34,3,21,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:14:31','unknown'),(35,3,23,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:14:32','unknown'),(36,3,25,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:14:33','unknown'),(37,3,27,'http://moja-sim-payeefsp-scheme-adapter:4000',0,'2025-05-22 12:14:35','unknown'),(38,3,32,'http://moja-sim-payeefsp-scheme-adapter:4000',1,'2025-05-22 12:14:36','unknown'),(39,3,3,'http://moja-sim-payeefsp-scheme-adapter:4000/transfers',1,'2025-05-22 12:14:37','unknown'),(40,3,4,'http://moja-sim-payeefsp-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-22 12:14:38','unknown'),(41,3,5,'http://moja-sim-payeefsp-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-22 12:14:40','unknown'),(42,3,28,'http://moja-sim-payeefsp-scheme-adapter:4000/bulkTransfers',1,'2025-05-22 12:14:41','unknown'),(43,3,29,'http://moja-sim-payeefsp-scheme-adapter:4000/bulkTransfers/{{id}}',1,'2025-05-22 12:14:42','unknown'),(44,3,30,'http://moja-sim-payeefsp-scheme-adapter:4000/bulkTransfers/{{id}}/error',1,'2025-05-22 12:14:45','unknown'),(45,3,14,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:14:47','unknown'),(46,3,16,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:14:48','unknown'),(47,3,18,'http://moja-sim-payeefsp-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:14:49','unknown'),(48,3,22,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:14:51','unknown'),(49,3,24,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:14:52','unknown'),(50,3,26,'http://moja-sim-payeefsp-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:14:53','unknown'),(51,3,10,'some.email@gmail.com',1,'2025-05-22 12:14:54','unknown'),(52,3,11,'some.email@gmail.com',1,'2025-05-22 12:14:56','unknown'),(53,3,12,'some.email@gmail.com',1,'2025-05-22 12:14:57','unknown'),(54,4,31,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:15:32','unknown'),(55,4,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:15:33','unknown'),(56,4,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:15:34','unknown'),(57,4,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-22 12:15:36','unknown'),(58,4,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-22 12:15:37','unknown'),(59,4,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:15:38','unknown'),(60,4,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:15:39','unknown'),(61,4,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:15:41','unknown'),(62,4,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:15:42','unknown'),(63,4,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:15:44','unknown'),(64,4,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-22 12:15:45','unknown'),(65,4,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-22 12:15:46','unknown'),(66,4,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-22 12:15:47','unknown'),(67,4,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-22 12:15:50','unknown'),(68,4,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-22 12:15:51','unknown'),(69,4,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-22 12:15:52','unknown'),(70,4,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:15:54','unknown'),(71,4,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:15:55','unknown'),(72,4,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:15:56','unknown'),(73,4,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:15:58','unknown'),(74,4,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:15:59','unknown'),(75,4,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:16:00','unknown'),(76,4,10,'some.email@gmail.com',1,'2025-05-22 12:16:02','unknown'),(77,4,11,'some.email@gmail.com',1,'2025-05-22 12:16:03','unknown'),(78,4,12,'some.email@gmail.com',1,'2025-05-22 12:16:04','unknown'),(79,5,21,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:16:30','unknown'),(80,5,23,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:16:31','unknown'),(81,5,25,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:16:33','unknown'),(82,5,13,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:16:34','unknown'),(83,5,15,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:16:35','unknown'),(84,5,19,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-22 12:16:36','unknown'),(85,5,20,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-22 12:16:38','unknown'),(86,5,27,'http://moja-sim-testfsp1-scheme-adapter:4000',1,'2025-05-22 12:16:39','unknown'),(87,5,3,'http://moja-sim-testfsp1-scheme-adapter:4000/transfers',1,'2025-05-22 12:16:40','unknown'),(88,5,4,'http://moja-sim-testfsp1-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-22 12:16:41','unknown'),(89,5,5,'http://moja-sim-testfsp1-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-22 12:16:43','unknown'),(90,5,14,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:16:44','unknown'),(91,5,16,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:16:45','unknown'),(92,5,18,'http://moja-sim-testfsp1-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:16:46','unknown'),(93,5,22,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:16:48','unknown'),(94,5,24,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:16:49','unknown'),(95,5,26,'http://moja-sim-testfsp1-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:16:51','unknown'),(96,5,10,'some.email@gmail.com',1,'2025-05-22 12:16:53','unknown'),(97,5,11,'some.email@gmail.com',1,'2025-05-22 12:16:54','unknown'),(98,5,12,'some.email@gmail.com',1,'2025-05-22 12:16:55','unknown'),(99,6,21,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:17:28','unknown'),(100,6,23,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:17:30','unknown'),(101,6,25,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:17:31','unknown'),(102,6,13,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:17:32','unknown'),(103,6,15,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:17:34','unknown'),(104,6,19,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-22 12:17:36','unknown'),(105,6,20,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-22 12:17:37','unknown'),(106,6,27,'http://moja-sim-testfsp2-scheme-adapter:4000',1,'2025-05-22 12:17:38','unknown'),(107,6,3,'http://moja-sim-testfsp2-scheme-adapter:4000/transfers',1,'2025-05-22 12:17:40','unknown'),(108,6,4,'http://moja-sim-testfsp2-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-22 12:17:41','unknown'),(109,6,5,'http://moja-sim-testfsp2-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-22 12:17:42','unknown'),(110,6,14,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:17:43','unknown'),(111,6,16,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:17:45','unknown'),(112,6,18,'http://moja-sim-testfsp2-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:17:46','unknown'),(113,6,22,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:17:47','unknown'),(114,6,24,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:17:48','unknown'),(115,6,26,'http://moja-sim-testfsp2-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:17:50','unknown'),(116,6,10,'some.email@gmail.com',1,'2025-05-22 12:17:51','unknown'),(117,6,11,'some.email@gmail.com',1,'2025-05-22 12:17:52','unknown'),(118,6,12,'some.email@gmail.com',1,'2025-05-22 12:17:53','unknown'),(119,7,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:18:07','unknown'),(120,7,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:18:09','unknown'),(121,7,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:18:10','unknown'),(122,7,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:18:11','unknown'),(123,7,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:18:13','unknown'),(124,7,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-22 12:18:15','unknown'),(125,7,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-22 12:18:16','unknown'),(126,7,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-22 12:18:17','unknown'),(127,7,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:18:19','unknown'),(128,7,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:18:20','unknown'),(129,7,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:18:21','unknown'),(130,7,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:18:23','unknown'),(131,7,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:18:24','unknown'),(132,7,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:18:25','unknown'),(133,7,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:18:26','unknown'),(134,7,11,'{$inputs.email}',1,'2025-05-22 12:18:27','unknown'),(135,7,12,'{$inputs.email}',1,'2025-05-22 12:18:29','unknown'),(136,7,10,'{$inputs.email}',1,'2025-05-22 12:18:30','unknown'),(137,7,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-22 12:18:31','unknown'),(138,7,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-22 12:18:33','unknown'),(139,7,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-22 12:18:35','unknown'),(140,7,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-22 12:18:36','unknown'),(141,7,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-22 12:18:38','unknown'),(142,7,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:18:39','unknown'),(143,7,7,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers',1,'2025-05-22 12:18:40','unknown'),(144,7,8,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-22 12:18:42','unknown'),(145,7,9,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-22 12:18:43','unknown'),(146,7,6,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:18:44','unknown'),(147,8,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:19:11','unknown'),(148,8,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:19:12','unknown'),(149,8,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:19:13','unknown'),(150,8,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:19:14','unknown'),(151,8,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:19:16','unknown'),(152,8,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-22 12:19:17','unknown'),(153,8,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-22 12:19:21','unknown'),(154,8,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-22 12:19:23','unknown'),(155,8,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:19:24','unknown'),(156,8,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:19:25','unknown'),(157,8,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:19:27','unknown'),(158,8,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:19:28','unknown'),(159,8,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:19:30','unknown'),(160,8,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:19:31','unknown'),(161,8,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:19:33','unknown'),(162,8,11,'{$inputs.email}',1,'2025-05-22 12:19:36','unknown'),(163,8,12,'{$inputs.email}',1,'2025-05-22 12:19:39','unknown'),(164,8,10,'{$inputs.email}',1,'2025-05-22 12:19:41','unknown'),(165,8,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-22 12:19:45','unknown'),(166,8,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-22 12:19:47','unknown'),(167,8,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-22 12:19:48','unknown'),(168,8,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-22 12:19:49','unknown'),(169,8,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-22 12:19:51','unknown'),(170,8,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:19:52','unknown'),(171,9,31,'http://moja-sim-testfsp3-scheme-adapter:4000',1,'2025-05-22 12:20:11','unknown'),(172,9,13,'http://moja-sim-testfsp3-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:20:13','unknown'),(173,9,15,'http://moja-sim-testfsp3-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:20:14','unknown'),(174,9,19,'http://moja-sim-testfsp3-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-22 12:20:15','unknown'),(175,9,20,'http://moja-sim-testfsp3-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-22 12:20:17','unknown'),(176,9,21,'http://moja-sim-testfsp3-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:20:22','unknown'),(177,9,23,'http://moja-sim-testfsp3-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:20:24','unknown'),(178,9,25,'http://moja-sim-testfsp3-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:20:25','unknown'),(179,9,27,'http://moja-sim-testfsp3-scheme-adapter:4000',1,'2025-05-22 12:20:27','unknown'),(180,9,32,'http://moja-sim-testfsp3-scheme-adapter:4000',1,'2025-05-22 12:20:28','unknown'),(181,9,3,'http://moja-sim-testfsp3-scheme-adapter:4000/transfers',1,'2025-05-22 12:20:30','unknown'),(182,9,4,'http://moja-sim-testfsp3-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-22 12:20:34','unknown'),(183,9,5,'http://moja-sim-testfsp3-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-22 12:20:37','unknown'),(184,9,10,'{$environment.MASTER_EMAIL}',1,'2025-05-22 12:20:38','unknown'),(185,9,11,'{$environment.MASTER_EMAIL}',1,'2025-05-22 12:20:40','unknown'),(186,9,12,'{$environment.MASTER_EMAIL}',1,'2025-05-22 12:20:42','unknown'),(187,10,31,'http://moja-sim-testfsp4-scheme-adapter:4000',1,'2025-05-22 12:20:48','unknown'),(188,10,13,'http://moja-sim-testfsp4-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:20:51','unknown'),(189,10,15,'http://moja-sim-testfsp4-scheme-adapter:4000/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:20:52','unknown'),(190,10,19,'http://moja-sim-testfsp4-scheme-adapter:4000/participants/{{requestId}}',1,'2025-05-22 12:20:54','unknown'),(191,10,20,'http://moja-sim-testfsp4-scheme-adapter:4000/participants/{{requestId}}/error',1,'2025-05-22 12:20:55','unknown'),(192,10,21,'http://moja-sim-testfsp4-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:20:57','unknown'),(193,10,23,'http://moja-sim-testfsp4-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:20:58','unknown'),(194,10,25,'http://moja-sim-testfsp4-scheme-adapter:4000/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:20:59','unknown'),(195,10,27,'http://moja-sim-testfsp4-scheme-adapter:4000',1,'2025-05-22 12:21:03','unknown'),(196,10,32,'http://moja-sim-testfsp4-scheme-adapter:4000',1,'2025-05-22 12:21:06','unknown'),(197,10,3,'http://moja-sim-testfsp4-scheme-adapter:4000/transfers',1,'2025-05-22 12:21:07','unknown'),(198,10,4,'http://moja-sim-testfsp4-scheme-adapter:4000/transfers/{{transferId}}',1,'2025-05-22 12:21:09','unknown'),(199,10,5,'http://moja-sim-testfsp4-scheme-adapter:4000/transfers/{{transferId}}/error',1,'2025-05-22 12:21:10','unknown'),(200,10,10,'{$environment.MASTER_EMAIL}',1,'2025-05-22 12:21:12','unknown'),(201,10,11,'{$environment.MASTER_EMAIL}',1,'2025-05-22 12:21:13','unknown'),(202,10,12,'{$environment.MASTER_EMAIL}',1,'2025-05-22 12:21:14','unknown'),(203,11,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:21:25','unknown'),(204,11,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:21:26','unknown'),(205,11,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:21:28','unknown'),(206,11,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:21:29','unknown'),(207,11,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:21:30','unknown'),(208,11,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-22 12:21:35','unknown'),(209,11,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-22 12:21:36','unknown'),(210,11,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-22 12:21:37','unknown'),(211,11,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:21:39','unknown'),(212,11,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:21:40','unknown'),(213,11,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:21:42','unknown'),(214,11,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:21:44','unknown'),(215,11,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:21:48','unknown'),(216,11,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:21:50','unknown'),(217,11,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:21:51','unknown'),(218,11,11,'{$inputs.email}',1,'2025-05-22 12:21:53','unknown'),(219,11,12,'{$inputs.email}',1,'2025-05-22 12:21:54','unknown'),(220,11,10,'{$inputs.email}',1,'2025-05-22 12:21:56','unknown'),(221,11,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-22 12:21:57','unknown'),(222,11,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-22 12:22:02','unknown'),(223,11,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-22 12:22:04','unknown'),(224,11,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-22 12:22:06','unknown'),(225,11,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-22 12:22:08','unknown'),(226,11,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:22:13','unknown'),(227,11,7,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers',1,'2025-05-22 12:22:14','unknown'),(228,11,8,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-22 12:22:16','unknown'),(229,11,9,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-22 12:22:17','unknown'),(230,11,6,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:22:19','unknown'),(231,12,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:22:39','unknown'),(232,12,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:22:41','unknown'),(233,12,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:22:43','unknown'),(234,12,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:22:44','unknown'),(235,12,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:22:46','unknown'),(236,12,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-22 12:22:49','unknown'),(237,12,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-22 12:22:51','unknown'),(238,12,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-22 12:22:53','unknown'),(239,12,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:22:54','unknown'),(240,12,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:22:56','unknown'),(241,12,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:22:57','unknown'),(242,12,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:22:59','unknown'),(243,12,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:23:00','unknown'),(244,12,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:23:05','unknown'),(245,12,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:23:07','unknown'),(246,12,11,'{$inputs.email}',1,'2025-05-22 12:23:08','unknown'),(247,12,12,'{$inputs.email}',1,'2025-05-22 12:23:09','unknown'),(248,12,10,'{$inputs.email}',1,'2025-05-22 12:23:11','unknown'),(249,12,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-22 12:23:15','unknown'),(250,12,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-22 12:23:18','unknown'),(251,12,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-22 12:23:20','unknown'),(252,12,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-22 12:23:21','unknown'),(253,12,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-22 12:23:22','unknown'),(254,12,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:23:24','unknown'),(255,12,7,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers',1,'2025-05-22 12:23:25','unknown'),(256,12,8,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-22 12:23:26','unknown'),(257,12,9,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-22 12:23:28','unknown'),(258,12,6,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:23:31','unknown'),(259,13,13,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:23:36','unknown'),(260,13,15,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:23:37','unknown'),(261,13,21,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:23:38','unknown'),(262,13,23,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-22 12:23:40','unknown'),(263,13,27,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:23:41','unknown'),(264,13,3,'http://moja-ml-testing-toolkit-backend:4040/transfers',1,'2025-05-22 12:23:43','unknown'),(265,13,4,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}',1,'2025-05-22 12:23:44','unknown'),(266,13,5,'http://moja-ml-testing-toolkit-backend:4040/transfers/{{transferId}}/error',1,'2025-05-22 12:23:45','unknown'),(267,13,14,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:23:47','unknown'),(268,13,16,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:23:51','unknown'),(269,13,18,'http://moja-ml-testing-toolkit-backend:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:23:53','unknown'),(270,13,22,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:23:54','unknown'),(271,13,24,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-22 12:23:56','unknown'),(272,13,26,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-22 12:23:57','unknown'),(273,13,32,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:23:58','unknown'),(274,13,11,'{$inputs.email}',1,'2025-05-22 12:23:59','unknown'),(275,13,12,'{$inputs.email}',1,'2025-05-22 12:24:01','unknown'),(276,13,10,'{$inputs.email}',1,'2025-05-22 12:24:03','unknown'),(277,13,28,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers',1,'2025-05-22 12:24:04','unknown'),(278,13,29,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}',1,'2025-05-22 12:24:08','unknown'),(279,13,30,'http://moja-ml-testing-toolkit-backend:4040/bulkTransfers/{{id}}/error',1,'2025-05-22 12:24:10','unknown'),(280,13,19,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}',1,'2025-05-22 12:24:11','unknown'),(281,13,20,'http://moja-ml-testing-toolkit-backend:4040/participants/{{requestId}}/error',1,'2025-05-22 12:24:13','unknown'),(282,13,25,'http://moja-ml-testing-toolkit-backend:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-22 12:24:15','unknown'),(283,13,7,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers',1,'2025-05-22 12:24:20','unknown'),(284,13,8,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-22 12:24:22','unknown'),(285,13,9,'http://moja-ml-testing-toolkit-backend:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-22 12:24:24','unknown'),(286,13,6,'http://moja-ml-testing-toolkit-backend:4040',1,'2025-05-22 12:24:29','unknown'),(287,3,27,'http://moja-sim-payeefsp-scheme-adapter:4000/incorrectpayeefsp',0,'2025-05-22 12:24:33','unknown'),(288,3,27,'http://moja-sim-payeefsp-scheme-adapter:4000',1,'2025-05-22 12:24:39','unknown');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantLimit`
--

LOCK TABLES `participantLimit` WRITE;
/*!40000 ALTER TABLE `participantLimit` DISABLE KEYS */;
INSERT INTO `participantLimit` VALUES (1,9,1,10000.0000,10.00,NULL,1,'2025-05-22 12:12:43','unknown'),(2,11,1,10000.0000,10.00,NULL,1,'2025-05-22 12:13:02','unknown'),(3,13,1,10000.0000,10.00,NULL,0,'2025-05-22 12:13:05','unknown'),(4,17,1,10000.0000,10.00,NULL,1,'2025-05-22 12:13:56','unknown'),(5,19,1,10000.0000,10.00,NULL,1,'2025-05-22 12:14:09','unknown'),(6,21,1,10000.0000,10.00,NULL,0,'2025-05-22 12:14:12','unknown'),(7,25,1,10000.0000,10.00,NULL,1,'2025-05-22 12:15:05','unknown'),(8,27,1,10000.0000,10.00,NULL,1,'2025-05-22 12:15:17','unknown'),(9,29,1,10000.0000,10.00,NULL,1,'2025-05-22 12:15:20','unknown'),(10,33,1,10000.0000,10.00,NULL,1,'2025-05-22 12:16:07','unknown'),(11,35,1,10000.0000,10.00,NULL,1,'2025-05-22 12:16:15','unknown'),(12,37,1,10000.0000,10.00,NULL,0,'2025-05-22 12:16:18','unknown'),(13,41,1,10000.0000,10.00,NULL,1,'2025-05-22 12:17:01','unknown'),(14,43,1,10000.0000,10.00,NULL,1,'2025-05-22 12:17:15','unknown'),(15,45,1,10000.0000,10.00,NULL,0,'2025-05-22 12:17:17','unknown'),(16,49,1,1000000.0000,10.00,NULL,0,'2025-05-22 12:18:01','unknown'),(17,51,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:18:03','unknown'),(18,53,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:18:06','unknown'),(19,57,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:19:09','unknown'),(20,59,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:19:55','unknown'),(21,61,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:20:01','unknown'),(22,65,1,1000000.0000,10.00,NULL,0,'2025-05-22 12:20:09','unknown'),(23,69,1,1000000.0000,10.00,NULL,0,'2025-05-22 12:20:44','unknown'),(24,73,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:21:20','unknown'),(25,75,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:21:23','unknown'),(26,49,1,4000.0000,10.00,NULL,0,'2025-05-22 12:22:03','unknown'),(27,49,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:22:04','unknown'),(28,77,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:22:34','unknown'),(29,79,1,1000000.0000,10.00,NULL,1,'2025-05-22 12:23:35','unknown'),(30,13,1,50000.0000,0.00,NULL,1,'2025-05-22 12:25:49','unknown'),(31,21,1,50000.0000,0.00,NULL,1,'2025-05-22 12:25:49','unknown'),(32,37,1,50000.0000,0.00,NULL,1,'2025-05-22 12:25:49','unknown'),(33,45,1,50000.0000,0.00,NULL,1,'2025-05-22 12:25:49','unknown'),(34,65,1,50000.0000,0.00,NULL,1,'2025-05-22 12:25:49','unknown'),(35,69,1,50000.0000,0.00,NULL,1,'2025-05-22 12:25:49','unknown');
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
INSERT INTO `participantLimitType` VALUES (1,'NET_DEBIT_CAP',NULL,1,'2025-05-22 12:04:07');
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
INSERT INTO `participantPosition` VALUES (1,1,0.0000,0.0000,'2025-05-22 12:12:07'),(2,2,30000.0000,0.0000,'2025-05-22 12:22:18'),(3,3,0.0000,0.0000,'2025-05-22 12:12:15'),(4,4,35000.0000,0.0000,'2025-05-22 12:22:24'),(5,5,0.0000,0.0000,'2025-05-22 12:12:17'),(6,6,10000.0000,0.0000,'2025-05-22 12:20:45'),(7,7,0.0000,0.0000,'2025-05-22 12:12:20'),(8,8,5000.0000,0.0000,'2025-05-22 12:24:34'),(9,9,10.0000,0.0000,'2025-05-22 12:26:38'),(10,10,-5000.0000,0.0000,'2025-05-22 12:12:53'),(11,11,0.0000,0.0000,'2025-05-22 12:27:06'),(12,12,-5000.0000,0.0000,'2025-05-22 12:13:08'),(13,13,0.0000,0.0000,'2025-05-22 12:13:05'),(14,14,0.0000,0.0000,'2025-05-22 12:13:05'),(15,15,0.0000,0.0000,'2025-05-22 12:13:05'),(16,16,0.0000,0.0000,'2025-05-22 12:13:05'),(17,17,-780.1234,0.0000,'2025-05-22 12:26:37'),(18,18,-5000.0000,0.0000,'2025-05-22 12:14:00'),(19,19,0.0000,0.0000,'2025-05-22 12:27:06'),(20,20,-5000.0000,0.0000,'2025-05-22 12:14:15'),(21,21,0.0000,0.0000,'2025-05-22 12:14:12'),(22,22,0.0000,0.0000,'2025-05-22 12:14:12'),(23,23,0.0000,0.0000,'2025-05-22 12:14:12'),(24,24,0.0000,0.0000,'2025-05-22 12:14:12'),(25,25,-2.0000,0.0000,'2025-05-22 12:21:34'),(26,26,-5000.0000,0.0000,'2025-05-22 12:15:08'),(27,27,0.0000,0.0000,'2025-05-22 12:15:17'),(28,28,-5000.0000,0.0000,'2025-05-22 12:15:24'),(29,29,0.0000,0.0000,'2025-05-22 12:15:20'),(30,30,0.0000,0.0000,'2025-05-22 12:15:20'),(31,31,0.0000,0.0000,'2025-05-22 12:15:20'),(32,32,0.0000,0.0000,'2025-05-22 12:15:20'),(33,33,190.0000,0.0000,'2025-05-22 12:26:36'),(34,34,-5000.0000,0.0000,'2025-05-22 12:16:12'),(35,35,0.0000,0.0000,'2025-05-22 12:27:03'),(36,36,-5000.0000,0.0000,'2025-05-22 12:16:22'),(37,37,0.0000,0.0000,'2025-05-22 12:16:18'),(38,38,0.0000,0.0000,'2025-05-22 12:16:18'),(39,39,0.0000,0.0000,'2025-05-22 12:16:18'),(40,40,0.0000,0.0000,'2025-05-22 12:16:18'),(41,41,-190.0000,0.0000,'2025-05-22 12:26:37'),(42,42,-5000.0000,0.0000,'2025-05-22 12:17:05'),(43,43,0.0000,0.0000,'2025-05-22 12:27:06'),(44,44,-5000.0000,0.0000,'2025-05-22 12:17:21'),(45,45,0.0000,0.0000,'2025-05-22 12:17:17'),(46,46,0.0000,0.0000,'2025-05-22 12:17:17'),(47,47,0.0000,0.0000,'2025-05-22 12:17:17'),(48,48,0.0000,0.0000,'2025-05-22 12:17:17'),(49,49,973.1234,0.0000,'2025-05-22 12:25:17'),(50,50,-5000.0000,0.0000,'2025-05-22 12:22:16'),(51,51,0.0000,0.0000,'2025-05-22 12:18:03'),(52,52,-5000.0000,0.0000,'2025-05-22 12:19:00'),(53,53,0.0000,0.0000,'2025-05-22 12:18:06'),(54,54,0.0000,0.0000,'2025-05-22 12:18:06'),(55,55,0.0000,0.0000,'2025-05-22 12:18:06'),(56,56,0.0000,0.0000,'2025-05-22 12:18:06'),(57,57,-201.0000,0.0000,'2025-05-22 12:22:35'),(58,58,0.0000,0.0000,'2025-05-22 12:19:09'),(59,59,0.0000,0.0000,'2025-05-22 12:19:55'),(60,60,0.0000,0.0000,'2025-05-22 12:19:55'),(61,61,0.0000,0.0000,'2025-05-22 12:20:01'),(62,62,0.0000,0.0000,'2025-05-22 12:20:01'),(63,63,0.0000,0.0000,'2025-05-22 12:20:01'),(64,64,0.0000,0.0000,'2025-05-22 12:20:01'),(65,65,0.0000,0.0000,'2025-05-22 12:20:09'),(66,66,-5000.0000,0.0000,'2025-05-22 12:20:10'),(67,67,0.0000,0.0000,'2025-05-22 12:20:09'),(68,68,0.0000,0.0000,'2025-05-22 12:20:09'),(69,69,0.0000,0.0000,'2025-05-22 12:20:44'),(70,70,-5000.0000,0.0000,'2025-05-22 12:20:45'),(71,71,0.0000,0.0000,'2025-05-22 12:20:44'),(72,72,0.0000,0.0000,'2025-05-22 12:20:44'),(73,73,-30.0000,0.0000,'2025-05-22 13:49:34'),(74,74,0.0000,0.0000,'2025-05-22 12:21:20'),(75,75,300.0000,0.0000,'2025-05-22 13:49:33'),(76,76,-5000.0000,0.0000,'2025-05-22 12:22:24'),(77,77,-300.0000,0.0000,'2025-05-22 13:49:34'),(78,78,0.0000,0.0000,'2025-05-22 12:22:34'),(79,79,30.0000,0.0000,'2025-05-22 13:49:28'),(80,80,-5000.0000,0.0000,'2025-05-22 12:24:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantPositionChange`
--

LOCK TABLES `participantPositionChange` WRITE;
/*!40000 ALTER TABLE `participantPositionChange` DISABLE KEYS */;
INSERT INTO `participantPositionChange` VALUES (1,2,2,5000.0000,0.0000,'2025-05-22 12:12:53',2,5000.00,NULL),(2,10,4,-5000.0000,0.0000,'2025-05-22 12:12:53',10,-5000.00,NULL),(3,4,6,5000.0000,0.0000,'2025-05-22 12:13:08',4,5000.00,NULL),(4,12,8,-5000.0000,0.0000,'2025-05-22 12:13:08',12,-5000.00,NULL),(5,2,10,10000.0000,0.0000,'2025-05-22 12:14:00',2,5000.00,NULL),(6,18,12,-5000.0000,0.0000,'2025-05-22 12:14:00',18,-5000.00,NULL),(7,4,14,10000.0000,0.0000,'2025-05-22 12:14:15',4,5000.00,NULL),(8,20,16,-5000.0000,0.0000,'2025-05-22 12:14:15',20,-5000.00,NULL),(9,2,18,15000.0000,0.0000,'2025-05-22 12:15:08',2,5000.00,NULL),(10,26,20,-5000.0000,0.0000,'2025-05-22 12:15:08',26,-5000.00,NULL),(11,4,22,15000.0000,0.0000,'2025-05-22 12:15:24',4,5000.00,NULL),(12,28,24,-5000.0000,0.0000,'2025-05-22 12:15:24',28,-5000.00,NULL),(13,2,26,20000.0000,0.0000,'2025-05-22 12:16:11',2,5000.00,NULL),(14,34,28,-5000.0000,0.0000,'2025-05-22 12:16:11',34,-5000.00,NULL),(15,4,30,20000.0000,0.0000,'2025-05-22 12:16:21',4,5000.00,NULL),(16,36,32,-5000.0000,0.0000,'2025-05-22 12:16:21',36,-5000.00,NULL),(17,2,34,25000.0000,0.0000,'2025-05-22 12:17:05',2,5000.00,NULL),(18,42,36,-5000.0000,0.0000,'2025-05-22 12:17:05',42,-5000.00,NULL),(19,4,38,25000.0000,0.0000,'2025-05-22 12:17:21',4,5000.00,NULL),(20,44,40,-5000.0000,0.0000,'2025-05-22 12:17:21',44,-5000.00,NULL),(21,2,42,30000.0000,0.0000,'2025-05-22 12:18:48',2,5000.00,NULL),(22,50,44,-5000.0000,0.0000,'2025-05-22 12:18:48',50,-5000.00,NULL),(23,4,46,30000.0000,0.0000,'2025-05-22 12:19:00',4,5000.00,NULL),(24,52,48,-5000.0000,0.0000,'2025-05-22 12:19:00',52,-5000.00,NULL),(25,49,50,100.0000,0.0000,'2025-05-22 12:19:52',49,100.00,NULL),(26,17,52,-100.0000,0.0000,'2025-05-22 12:19:54',17,-100.00,NULL),(27,49,54,200.0000,0.0000,'2025-05-22 12:20:02',49,100.00,NULL),(28,17,56,-200.0000,0.0000,'2025-05-22 12:20:02',17,-100.00,NULL),(29,6,58,5000.0000,0.0000,'2025-05-22 12:20:10',6,5000.00,NULL),(30,66,60,-5000.0000,0.0000,'2025-05-22 12:20:10',66,-5000.00,NULL),(31,49,62,300.0000,0.0000,'2025-05-22 12:20:10',49,100.00,NULL),(32,17,64,-300.0000,0.0000,'2025-05-22 12:20:10',17,-100.00,NULL),(33,49,66,400.0000,0.0000,'2025-05-22 12:20:18',49,100.00,NULL),(34,17,68,-400.0000,0.0000,'2025-05-22 12:20:18',17,-100.00,NULL),(35,49,70,500.0000,0.0000,'2025-05-22 12:20:30',49,100.00,NULL),(36,17,72,-500.0000,0.0000,'2025-05-22 12:20:30',17,-100.00,NULL),(37,49,74,600.0000,0.0000,'2025-05-22 12:20:37',49,100.00,NULL),(38,57,76,-100.0000,0.0000,'2025-05-22 12:20:39',57,-100.00,NULL),(39,49,78,601.0000,0.0000,'2025-05-22 12:20:39',49,1.00,NULL),(40,6,80,10000.0000,0.0000,'2025-05-22 12:20:45',6,5000.00,NULL),(41,70,82,-5000.0000,0.0000,'2025-05-22 12:20:45',70,-5000.00,NULL),(42,49,84,600.0000,0.0000,'2025-05-22 12:20:46',49,-1.00,NULL),(43,49,86,700.0000,0.0000,'2025-05-22 12:20:50',49,100.00,NULL),(44,49,88,600.0000,0.0000,'2025-05-22 12:20:50',49,-100.00,NULL),(45,49,90,700.0000,0.0000,'2025-05-22 12:20:53',49,100.00,NULL),(46,49,92,600.0000,0.0000,'2025-05-22 12:21:00',49,-100.00,NULL),(47,49,94,700.0000,0.0000,'2025-05-22 12:21:04',49,100.00,NULL),(48,49,96,600.0000,0.0000,'2025-05-22 12:21:05',49,-100.00,NULL),(49,49,98,705.0000,0.0000,'2025-05-22 12:21:08',49,105.00,NULL),(50,49,100,600.0000,0.0000,'2025-05-22 12:21:15',49,-105.00,NULL),(51,49,102,700.0000,0.0000,'2025-05-22 12:21:21',49,100.00,NULL),(52,17,104,-600.0000,0.0000,'2025-05-22 12:21:21',17,-100.00,NULL),(53,49,106,701.0000,0.0000,'2025-05-22 12:21:24',49,1.00,NULL),(54,25,108,-1.0000,0.0000,'2025-05-22 12:21:24',25,-1.00,NULL),(55,49,110,702.0000,0.0000,'2025-05-22 12:21:31',49,1.00,NULL),(56,25,112,-2.0000,0.0000,'2025-05-22 12:21:34',25,-1.00,NULL),(57,49,114,703.0000,0.0000,'2025-05-22 12:21:40',49,1.00,NULL),(58,49,116,702.0000,0.0000,'2025-05-22 12:21:40',49,-1.00,NULL),(59,49,118,703.0000,0.0000,'2025-05-22 12:21:41',49,1.00,NULL),(60,49,120,702.0000,0.0000,'2025-05-22 12:21:41',49,-1.00,NULL),(61,33,123,100.0000,0.0000,'2025-05-22 12:21:51',33,100.00,NULL),(62,41,125,-100.0000,0.0000,'2025-05-22 12:21:51',41,-100.00,NULL),(63,33,128,200.0000,0.0000,'2025-05-22 12:22:00',33,100.00,NULL),(64,41,130,-200.0000,0.0000,'2025-05-22 12:22:00',41,-100.00,NULL),(65,2,136,30010.0000,0.0000,'2025-05-22 12:22:05',2,10.00,NULL),(66,50,138,-5010.0000,0.0000,'2025-05-22 12:22:05',50,-10.00,NULL),(67,50,140,-5000.0000,0.0000,'2025-05-22 12:22:08',50,10.00,NULL),(68,50,142,-5010.0000,0.0000,'2025-05-22 12:22:13',50,-10.00,NULL),(69,50,144,-5000.0000,0.0000,'2025-05-22 12:22:16',50,10.00,NULL),(70,2,146,30000.0000,0.0000,'2025-05-22 12:22:18',2,-10.00,NULL),(71,49,148,712.0000,0.0000,'2025-05-22 12:22:21',49,10.00,NULL),(72,17,150,-610.0000,0.0000,'2025-05-22 12:22:21',17,-10.00,NULL),(73,4,152,35000.0000,0.0000,'2025-05-22 12:22:24',4,5000.00,NULL),(74,76,154,-5000.0000,0.0000,'2025-05-22 12:22:24',76,-5000.00,NULL),(75,9,156,10.0000,0.0000,'2025-05-22 12:22:30',9,10.00,NULL),(76,17,158,-620.0000,0.0000,'2025-05-22 12:22:30',17,-10.00,NULL),(77,41,160,-190.0000,0.0000,'2025-05-22 12:22:32',41,10.00,NULL),(78,33,162,190.0000,0.0000,'2025-05-22 12:22:32',33,-10.00,NULL),(79,49,164,813.0000,0.0000,'2025-05-22 12:22:35',49,101.00,NULL),(80,57,166,-201.0000,0.0000,'2025-05-22 12:22:35',57,-101.00,NULL),(81,49,168,916.0000,0.0000,'2025-05-22 12:22:42',49,103.00,NULL),(82,49,170,813.0000,0.0000,'2025-05-22 12:22:43',49,-103.00,NULL),(83,49,172,913.0000,0.0000,'2025-05-22 12:22:57',49,100.00,NULL),(84,17,174,-720.0000,0.0000,'2025-05-22 12:22:57',17,-100.00,NULL),(85,8,177,5000.0000,0.0000,'2025-05-22 12:24:34',8,5000.00,NULL),(86,80,179,-5000.0000,0.0000,'2025-05-22 12:24:34',80,-5000.00,NULL),(87,49,181,973.1234,0.0000,'2025-05-22 12:24:51',49,60.12,NULL),(88,17,183,-780.1234,0.0000,'2025-05-22 12:24:51',17,-60.12,NULL),(89,49,185,1077.1234,0.0000,'2025-05-22 12:24:55',49,104.00,NULL),(90,49,187,973.1234,0.0000,'2025-05-22 12:25:00',49,-104.00,NULL),(91,49,189,1075.1234,0.0000,'2025-05-22 12:25:16',49,102.00,NULL),(92,49,191,973.1234,0.0000,'2025-05-22 12:25:17',49,-102.00,NULL),(93,33,194,250.0000,0.0000,'2025-05-22 12:25:46',33,60.00,NULL),(94,41,196,-250.0000,0.0000,'2025-05-22 12:25:46',41,-60.00,NULL),(95,35,198,55.0000,0.0000,'2025-05-22 12:25:46',35,55.00,NULL),(96,19,200,-55.0000,0.0000,'2025-05-22 12:25:46',19,-55.00,NULL),(97,9,202,45.0000,0.0000,'2025-05-22 12:25:47',9,35.00,NULL),(98,33,204,215.0000,0.0000,'2025-05-22 12:25:47',33,-35.00,NULL),(99,43,206,20.0000,0.0000,'2025-05-22 12:25:47',43,20.00,NULL),(100,11,208,-20.0000,0.0000,'2025-05-22 12:25:48',11,-20.00,NULL),(101,17,210,-745.1234,0.0000,'2025-05-22 12:25:48',17,35.00,NULL),(102,41,212,-285.0000,0.0000,'2025-05-22 12:25:48',41,-35.00,NULL),(103,19,214,-30.0000,0.0000,'2025-05-22 12:25:49',19,25.00,NULL),(104,11,216,-45.0000,0.0000,'2025-05-22 12:25:49',11,-25.00,NULL),(105,41,228,-190.0000,0.0000,'2025-05-22 12:26:06',41,95.00,NULL),(106,1,228,-95.0000,0.0000,'2025-05-22 12:26:06',1,-95.00,NULL),(107,11,229,0.0000,0.0000,'2025-05-22 12:26:08',11,45.00,NULL),(108,3,229,-45.0000,0.0000,'2025-05-22 12:26:08',3,-45.00,NULL),(109,19,230,0.0000,0.0000,'2025-05-22 12:26:08',19,30.00,NULL),(110,3,230,-75.0000,0.0000,'2025-05-22 12:26:08',3,-30.00,NULL),(111,9,234,10.0000,0.0000,'2025-05-22 12:26:11',9,-35.00,NULL),(112,1,234,-60.0000,0.0000,'2025-05-22 12:26:11',1,35.00,NULL),(113,17,236,-780.1234,0.0000,'2025-05-22 12:26:11',17,-35.00,NULL),(114,1,236,-25.0000,0.0000,'2025-05-22 12:26:11',1,35.00,NULL),(115,33,238,190.0000,0.0000,'2025-05-22 12:26:11',33,-25.00,NULL),(116,1,238,0.0000,0.0000,'2025-05-22 12:26:11',1,25.00,NULL),(117,35,246,0.0000,0.0000,'2025-05-22 12:26:14',35,-55.00,NULL),(118,3,246,-20.0000,0.0000,'2025-05-22 12:26:14',3,55.00,NULL),(119,43,248,0.0000,0.0000,'2025-05-22 12:26:14',43,-20.00,NULL),(120,3,248,0.0000,0.0000,'2025-05-22 12:26:14',3,20.00,NULL),(121,33,250,250.0000,0.0000,'2025-05-22 12:26:34',33,60.00,NULL),(122,41,252,-250.0000,0.0000,'2025-05-22 12:26:34',41,-60.00,NULL),(123,33,254,305.0000,0.0000,'2025-05-22 12:26:35',33,55.00,NULL),(124,17,256,-835.1234,0.0000,'2025-05-22 12:26:35',17,-55.00,NULL),(125,9,258,45.0000,0.0000,'2025-05-22 12:26:35',9,35.00,NULL),(126,33,260,270.0000,0.0000,'2025-05-22 12:26:35',33,-35.00,NULL),(127,41,262,-230.0000,0.0000,'2025-05-22 12:26:36',41,20.00,NULL),(128,9,264,25.0000,0.0000,'2025-05-22 12:26:36',9,-20.00,NULL),(129,17,266,-800.1234,0.0000,'2025-05-22 12:26:36',17,35.00,NULL),(130,41,268,-265.0000,0.0000,'2025-05-22 12:26:37',41,-35.00,NULL),(131,17,270,-775.1234,0.0000,'2025-05-22 12:26:37',17,25.00,NULL),(132,9,272,0.0000,0.0000,'2025-05-22 12:26:37',9,-25.00,NULL),(133,9,277,10.0000,0.0000,'2025-05-22 12:26:46',9,10.00,NULL),(134,1,277,-10.0000,0.0000,'2025-05-22 12:26:46',1,-10.00,NULL),(135,41,280,-190.0000,0.0000,'2025-05-22 12:26:47',41,75.00,NULL),(136,1,280,-85.0000,0.0000,'2025-05-22 12:26:47',1,-75.00,NULL),(137,17,284,-780.1234,0.0000,'2025-05-22 12:26:49',17,-5.00,NULL),(138,1,284,-80.0000,0.0000,'2025-05-22 12:26:49',1,5.00,NULL),(139,33,286,190.0000,0.0000,'2025-05-22 12:26:49',33,-80.00,NULL),(140,1,286,0.0000,0.0000,'2025-05-22 12:26:49',1,80.00,NULL),(141,35,290,60.0000,0.0000,'2025-05-22 12:27:02',35,60.00,NULL),(142,43,292,-60.0000,0.0000,'2025-05-22 12:27:02',43,-60.00,NULL),(143,35,294,115.0000,0.0000,'2025-05-22 12:27:02',35,55.00,NULL),(144,19,296,-55.0000,0.0000,'2025-05-22 12:27:02',19,-55.00,NULL),(145,11,298,35.0000,0.0000,'2025-05-22 12:27:03',11,35.00,NULL),(146,35,300,80.0000,0.0000,'2025-05-22 12:27:03',35,-35.00,NULL),(147,43,302,-40.0000,0.0000,'2025-05-22 12:27:03',43,20.00,NULL),(148,11,304,15.0000,0.0000,'2025-05-22 12:27:03',11,-20.00,NULL),(149,19,306,-20.0000,0.0000,'2025-05-22 12:27:05',19,35.00,NULL),(150,43,308,-75.0000,0.0000,'2025-05-22 12:27:05',43,-35.00,NULL),(151,19,310,5.0000,0.0000,'2025-05-22 12:27:06',19,25.00,NULL),(152,11,312,-10.0000,0.0000,'2025-05-22 12:27:06',11,-25.00,NULL),(153,11,317,0.0000,0.0000,'2025-05-22 12:27:16',11,10.00,NULL),(154,3,317,-10.0000,0.0000,'2025-05-22 12:27:16',3,-10.00,NULL),(155,43,320,0.0000,0.0000,'2025-05-22 12:27:16',43,75.00,NULL),(156,3,320,-85.0000,0.0000,'2025-05-22 12:27:16',3,-75.00,NULL),(157,19,324,0.0000,0.0000,'2025-05-22 12:27:19',19,-5.00,NULL),(158,3,324,-80.0000,0.0000,'2025-05-22 12:27:19',3,5.00,NULL),(159,35,326,0.0000,0.0000,'2025-05-22 12:27:19',35,-80.00,NULL),(160,3,326,0.0000,0.0000,'2025-05-22 12:27:19',3,80.00,NULL),(161,79,NULL,10.0000,0.0000,'2025-05-22 12:27:56',79,10.00,2),(162,75,330,100.0000,0.0000,'2025-05-22 12:27:59',75,100.00,NULL),(163,73,NULL,-10.0000,0.0000,'2025-05-22 12:28:00',73,-10.00,4),(164,77,332,-100.0000,0.0000,'2025-05-22 12:28:01',77,-100.00,NULL),(165,79,NULL,20.0000,0.0000,'2025-05-22 12:28:10',79,10.00,6),(166,75,334,200.0000,0.0000,'2025-05-22 12:28:11',75,100.00,NULL),(167,73,NULL,-20.0000,0.0000,'2025-05-22 12:28:11',73,-10.00,8),(168,77,336,-200.0000,0.0000,'2025-05-22 12:28:12',77,-100.00,NULL),(169,79,NULL,33.0000,0.0000,'2025-05-22 12:28:15',79,13.00,10),(170,79,NULL,20.0000,0.0000,'2025-05-22 12:28:15',79,-13.00,12),(171,79,NULL,30.0000,0.0000,'2025-05-22 12:28:16',79,10.00,14),(172,79,NULL,20.0000,0.0000,'2025-05-22 12:28:16',79,-10.00,16),(173,79,NULL,35.0000,0.0000,'2025-05-22 12:28:16',79,15.00,18),(174,79,NULL,20.0000,0.0000,'2025-05-22 12:28:17',79,-15.00,20),(175,79,NULL,30.0000,0.0000,'2025-05-22 12:28:17',79,10.00,22),(176,79,NULL,20.0000,0.0000,'2025-05-22 12:28:18',79,-10.00,24),(177,79,NULL,36.0000,0.0000,'2025-05-22 12:28:18',79,16.00,26),(178,79,NULL,20.0000,0.0000,'2025-05-22 12:28:18',79,-16.00,28),(179,79,NULL,30.0000,0.0000,'2025-05-22 12:28:19',79,10.00,30),(180,79,NULL,20.0000,0.0000,'2025-05-22 12:28:19',79,-10.00,32),(181,79,NULL,30.0000,0.0000,'2025-05-22 13:49:27',79,10.00,34),(182,75,342,300.0000,0.0000,'2025-05-22 13:49:33',75,100.00,NULL),(183,73,NULL,-30.0000,0.0000,'2025-05-22 13:49:34',73,-10.00,36),(184,77,344,-300.0000,0.0000,'2025-05-22 13:49:34',77,-100.00,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Optional pers. data provided during Quote Request & Response';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
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
INSERT INTO `quote` VALUES ('01JVVYYNAGRX8A87APEZAHMPW4','01JVVYYNASE5P0RW5XK8TNQYT7',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:19:42'),('01JVVYZ9M48RCXCKJMC4EXCX5K','01JVVYZ9M8GJ2E6NDJFRVHZTE5',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:20:00'),('01JVVYZJS95D17DHG63KJP41RE','01JVVYZJSBK68PY2YXHV4Q78V3',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:20:09'),('01JVVYZTDJDJP5RRF374CJMBH1','01JVVYZTDKB6SGRY98ZJPKXZF6',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:20:17'),('01JVVZ0686X5RD5NWY5XQ308DJ','01JVVZ06893Q0H73NX30HCESHR',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:20:29'),('01JVVZ0BH6ZDEBSTQ6V871T0EX','01JVVZ0BH7R508BKGCE5WABEBT',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:20:35'),('01JVVZ0FQX7Y507N5QGRYHHE75','01JVVZ0FQYDR1E597MMG006A34',NULL,NULL,NULL,1,3,1,NULL,NULL,2,1.0000,'XXX','2025-05-22 12:20:39'),('01JVVZ0SB967KPXVPF4G634MSH','01JVVZ0SBFX5M7B5M1FQTZ2DSE',NULL,NULL,NULL,1,3,1,NULL,NULL,2,1.0000,'XXX','2025-05-22 12:20:49'),('01JVVZ0WRGBZ7WXN2RJB5XRGP6','01JVVZ0WRHRVJKS2FJ3Y37CH1Q',NULL,NULL,NULL,1,3,1,NULL,NULL,2,1.0000,'XXX','2025-05-22 12:20:52'),('01JVVZ1R2Q0KK2CXM4A5G2AFE3','01JVVZ1R2TH5BCDN98FE0Y6NWB',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:21:20'),('01JVVZ1TZR84YNZAYCS223C4C8','01JVVZ1TZS9H0RQVFP43PGZ8BB',NULL,NULL,NULL,1,3,1,NULL,NULL,2,1.0000,'XXX','2025-05-22 12:21:23'),('01JVVZ221K3RPRD8HKXP2334E1','01JVVZ221NER7VFNEF8FM5JTPT',NULL,NULL,NULL,1,3,1,NULL,NULL,2,1.0000,'XXX','2025-05-22 12:21:31'),('01JVVZ2AEQZYANJW6YP47CMRBZ','01JVVZ2AES2FXQYK192KDQHME7',NULL,NULL,NULL,1,3,1,NULL,NULL,2,1.0000,'XXX','2025-05-22 12:21:39'),('01JVVZ2BQBQDTGB5W34AP0X9ZH','01JVVZ2BQCZDQTKCEZ5XBFKPFQ',NULL,NULL,NULL,1,3,1,NULL,NULL,2,1.0000,'XXX','2025-05-22 12:21:40'),('01JVVZ2M8X7QG9ZB6BFP4S4F63','01JVVZ2M8ZYZ3C6RNVNWK5GGDR',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:21:50'),('01JVVZ2V8163ZGTS12NDTV4VFZ','01JVVZ2V83SQFDK3VW0VYS33EF',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:21:57'),('01JVVZ30647ARDGHYH04VHNAAV','01JVVZ3066XG1TGDSS1ZKVXJCH',NULL,NULL,NULL,1,3,1,NULL,NULL,2,5298.0000,'XXX','2025-05-22 12:22:01'),('01JVVZ328JY13YNAXQGPNW7M6R','01JVVZ328M7WQJV988ES7C4WVB',NULL,NULL,NULL,1,3,1,NULL,NULL,2,3299.0000,'XXX','2025-05-22 12:22:03'),('01JVVZ3J8TP5Q708QXPYYNZ50M','01JVVZ3J8WD4XBANQ8DC4FGG8P',NULL,NULL,NULL,1,3,1,NULL,NULL,2,60.0000,'XXX','2025-05-22 12:22:20'),('01JVVZ3VNMNKJAD467AQYS2WSC','01JVVZ3VGJNN1BY4NK6NWG1FED',NULL,NULL,'2025-05-22 12:23:30',1,3,1,NULL,NULL,1,10.0000,'XXX','2025-05-22 12:22:29'),('01JVVZ3XKT34C4XN84ZN46ET4X','01JVVZ3X9BFSJH1BVHNCZKE14R',NULL,NULL,'2025-05-22 12:23:32',1,3,1,NULL,NULL,1,10.0000,'XXX','2025-05-22 12:22:31'),('01JVVZ3Y99KV6M4EZMYD55VQJJ','01JVVZ3Y9BVY4W8GF8WDT0N05R',NULL,NULL,NULL,1,3,1,NULL,NULL,1,101.0000,'XXX','2025-05-22 12:22:34'),('01JVVZ445C16K3PTE1R9QQZS3V','01JVVZ445N2K4GE2DF3MNZVY9R',NULL,NULL,NULL,1,3,1,NULL,NULL,1,103.0000,'XXX','2025-05-22 12:22:41'),('01JVVZ4N6619YEV5KM4KSMBXD9','01JVVZ4N688PQ9AB9DYCF5QDZ7',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:22:56'),('01JVVZ4NX4AFR9YZ9AW86M2P6K','01JVVZ4NX5NNMQ12YF0GBCX80Y',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:22:56'),('01JVVZ79SEJBF7MCJWBJ7VMQEE','01JVVZ79SJ8VQ0F5636X5ZWEHD',NULL,NULL,NULL,1,3,1,NULL,NULL,2,60.1234,'XXX','2025-05-22 12:24:22'),('01JVVZ7SBZXQDH3ER3GQ0SVY80','01JVVZ7SC03SVGMXEERGWS0T6E',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:24:39'),('01JVVZ7ZGM0JKMZNG4MX942W72','01JVVZ7ZGNJJNH04E9VBEGV0S6',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XXX','2025-05-22 12:24:45'),('01JVVZ80N10K9PEDAHBN189FH0','01JVVZ80N2SSZ3ETPBJEZDMWWT',NULL,NULL,NULL,1,3,1,NULL,NULL,2,60.1234,'XXX','2025-05-22 12:24:46'),('01JVVZ86M7YY9P33C7KWMD97NJ','01JVVZ86M93TDPW5604HXZ8R1P',NULL,NULL,NULL,1,3,1,NULL,NULL,1,104.0000,'XXX','2025-05-22 12:24:54'),('01JVVZ8QQKNQBE3DMVRZS2KCJ2','01JVVZ8QQQJVTB05KA7N0HQJB5',NULL,NULL,NULL,1,3,1,NULL,NULL,1,102.0000,'XXX','2025-05-22 12:25:12'),('01JVVZ94D9P85BZ5YE25R8GBSF','01JVVZ94DKVQD82PPXZ3EHCH0Q',NULL,NULL,NULL,1,3,1,NULL,NULL,1,5.0000,'XXX','2025-05-22 12:25:22'),('01JVVZ94Z8ZTVGBC3168RPWWP0','01JVVZ94Z9Q7NYFY8BSF2YC7GV',NULL,NULL,NULL,1,3,1,NULL,NULL,1,5.0000,'XXX','2025-05-22 12:25:23'),('01JVVZ9TZ584FSVXPTQKJK6M90','01JVVZ9TZ733QQ55ZBREVSPXKJ',NULL,NULL,NULL,1,3,1,NULL,NULL,2,60.0000,'XXX','2025-05-22 12:25:45'),('01JVVZ9VKRXWTVB19K80ZTVJJT','01JVVZ9VKSC0EZXY02EZEES1FX',NULL,NULL,NULL,1,3,1,NULL,NULL,2,55.0000,'XTS','2025-05-22 12:25:46'),('01JVVZ9W37VBP55PPJ2RA9BPR3','01JVVZ9W382KZS35BMGMY29BNB',NULL,NULL,NULL,1,3,1,NULL,NULL,2,35.0000,'XXX','2025-05-22 12:25:46'),('01JVVZ9WPGZCWQ8D21926H5P01','01JVVZ9WPHY11YZWGE701H8AMV',NULL,NULL,NULL,1,3,1,NULL,NULL,2,20.0000,'XTS','2025-05-22 12:25:47'),('01JVVZ9XD6JH97MNF8EDR7M012','01JVVZ9XD7C0YR5E4QZZBN60Z8',NULL,NULL,NULL,1,3,1,NULL,NULL,2,35.0000,'XXX','2025-05-22 12:25:48'),('01JVVZ9Y054WX1STK8G4A61T6F','01JVVZ9Y054WX1STK8G4A61T6G',NULL,NULL,NULL,1,3,1,NULL,NULL,2,25.0000,'XTS','2025-05-22 12:25:48'),('01JVVZB9YRKTJ7NCGCPR1XN641','01JVVZB9ZP474ZV0MKFZ6AFCHR',NULL,NULL,NULL,1,3,1,NULL,NULL,2,60.0000,'XXX','2025-05-22 12:26:34'),('01JVVZBB3EAC6DM1N4QFE81EQT','01JVVZBB3F6XNXJ64AB6D6H7R4',NULL,NULL,NULL,1,3,1,NULL,NULL,2,55.0000,'XXX','2025-05-22 12:26:35'),('01JVVZBBK8ZSMKSH66571D2TDJ','01JVVZBBK9VKY1JV2305X31ED2',NULL,NULL,NULL,1,3,1,NULL,NULL,2,35.0000,'XXX','2025-05-22 12:26:35'),('01JVVZBC35CEERVMHY74TP9KG3','01JVVZBC36V4B7D37BXHJDG06E',NULL,NULL,NULL,1,3,1,NULL,NULL,2,20.0000,'XXX','2025-05-22 12:26:36'),('01JVVZBCJZARAET1GBXHN35EMV','01JVVZBCK01QKBN5CTGM2GWKGY',NULL,NULL,NULL,1,3,1,NULL,NULL,2,35.0000,'XXX','2025-05-22 12:26:36'),('01JVVZBD43D1Z9ABMYX29KH0EA','01JVVZBD463527KDKSEDAQCPH3',NULL,NULL,NULL,1,3,1,NULL,NULL,2,25.0000,'XXX','2025-05-22 12:26:37'),('01JVVZC5801R4NTMWACPNMX07J','01JVVZC581V1D996Z1GVPGXXSX',NULL,NULL,NULL,1,3,1,NULL,NULL,2,60.0000,'XTS','2025-05-22 12:27:01'),('01JVVZC5XS9T55E3FEQV8CCJT4','01JVVZC5XS9T55E3FEQV8CCJT5',NULL,NULL,NULL,1,3,1,NULL,NULL,2,55.0000,'XTS','2025-05-22 12:27:02'),('01JVVZC6DTJNF8PZZH45KMY47Q','01JVVZC6DVAC3HQHGHWZ2MMVVP',NULL,NULL,NULL,1,3,1,NULL,NULL,2,35.0000,'XTS','2025-05-22 12:27:03'),('01JVVZC6YAY0NCYMFXRQ5Y8M90','01JVVZC6YBB244VVDNNSEKG7KN',NULL,NULL,NULL,1,3,1,NULL,NULL,2,20.0000,'XTS','2025-05-22 12:27:03'),('01JVVZC8Q4QP5XJKBXT8QAAEVH','01JVVZC8Q5ARSYRSEVCX90CXXQ',NULL,NULL,NULL,1,3,1,NULL,NULL,2,35.0000,'XTS','2025-05-22 12:27:05'),('01JVVZC979E3B22K5G1709W0GS','01JVVZC97AD4YWVPWS5DTSKV5B',NULL,NULL,NULL,1,3,1,NULL,NULL,2,25.0000,'XTS','2025-05-22 12:27:05'),('01JVVZDR6BGHVQHCRS9747K8MH','01JVVZDGPZ2NQGA7ZJB7XCDK09',NULL,NULL,NULL,1,3,1,NULL,NULL,1,100.0000,'XTS','2025-05-22 12:27:55'),('01JVVZE2PDZJF96XT3HBRV3XSS','01JVVZE15SAK643DT7N3R8RBSM',NULL,NULL,NULL,1,3,1,NULL,NULL,1,100.0000,'XTS','2025-05-22 12:28:05'),('01JVW430ZBPR7AQPE0RKMGXNB5','01JVW42Z5QTKBHK30VGJ05GGAP',NULL,NULL,NULL,1,3,1,NULL,NULL,2,100.0000,'XTS','2025-05-22 13:49:26');
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
INSERT INTO `quoteDuplicateCheck` VALUES ('01JVVYYNAGRX8A87APEZAHMPW4','85a9793b10e2ca77cbea1e4db793964d6bdb547217a40ec84ba0dc5b377242ab','2025-05-22 12:19:42'),('01JVVYZ9M48RCXCKJMC4EXCX5K','3728ddad51426c914e4d85efeaef062bde5379322a9bfde67c9e5a198f2b77d4','2025-05-22 12:20:00'),('01JVVYZJS95D17DHG63KJP41RE','caceeff5e08b7a533d97aa42f1026c2458359d264201d258d9388b59be9b91be','2025-05-22 12:20:09'),('01JVVYZTDJDJP5RRF374CJMBH1','194807321ff950f81b4ea600ef3093a9a78aad632c6527ddb9afeb9720b4af24','2025-05-22 12:20:17'),('01JVVZ0686X5RD5NWY5XQ308DJ','c132de9821e8cacdf957b8d704202068f26312e42f50a20b2ea99f4b41bbb8ef','2025-05-22 12:20:29'),('01JVVZ0BH6ZDEBSTQ6V871T0EX','8772c7200bf3806a71c87780d1d4873469f8ec5e67243c18d89a733c775865a5','2025-05-22 12:20:35'),('01JVVZ0FQX7Y507N5QGRYHHE75','ca1e7933d95c91ad8902b05a6d782034ec5bb8c81e4662bddbd0c0ab965a68f5','2025-05-22 12:20:39'),('01JVVZ0SB967KPXVPF4G634MSH','c4349397882cb3b528557800579dcae3f17c3862507a998aa6370b040ac7f6e3','2025-05-22 12:20:49'),('01JVVZ0WRGBZ7WXN2RJB5XRGP6','1d415c7020f0ad620da10a536a020647d2ce95333cfc0e2805f5c339eabd5248','2025-05-22 12:20:52'),('01JVVZ1R2Q0KK2CXM4A5G2AFE3','17ccf2035bd9e5cbd5007b9b789002490fa536a3f9d9e36da40dc4c94f73f698','2025-05-22 12:21:20'),('01JVVZ1TZR84YNZAYCS223C4C8','246b304a6302d1cd1d55b5b0d522b449c6c2a086807fe24b63b52d2cd6a1c214','2025-05-22 12:21:23'),('01JVVZ221K3RPRD8HKXP2334E1','6d5506f85495354bc426df688fe0a104763f141ba2b9f1d4bf159fe2512f10fe','2025-05-22 12:21:31'),('01JVVZ2AEQZYANJW6YP47CMRBZ','31c4f75404b63a92b4d4e71e10fc5116dd102364ce52283c92f2cdb4965266e7','2025-05-22 12:21:39'),('01JVVZ2BQBQDTGB5W34AP0X9ZH','8c73ccc0ff138d9096d25b29d77f1215c5d0a9ff8a65129b7c8790409e7e2478','2025-05-22 12:21:40'),('01JVVZ2M8X7QG9ZB6BFP4S4F63','cc596ab7d5630ade757060b18cc8c5362ec9b6e4d43c27dfddd8e4565cdcb2ce','2025-05-22 12:21:50'),('01JVVZ2V8163ZGTS12NDTV4VFZ','e0962ab9cd2a6066c85f08c44b8d9655511e53899faba38968cffd5e2d9c6fd5','2025-05-22 12:21:57'),('01JVVZ30647ARDGHYH04VHNAAV','96a23d5a4fd96c53764e6353d79cd513f798d4bcfedb076de7aab5aeb5d7ee7d','2025-05-22 12:22:01'),('01JVVZ328JY13YNAXQGPNW7M6R','ab7ee871ce2814bccaab44d1d3c3668b6e517edd110c1ca1f57403b1eaf5c529','2025-05-22 12:22:03'),('01JVVZ3J8TP5Q708QXPYYNZ50M','9f7b4ff180e95bf5960f08c4bbcf095d162c451acef71926853753eba278c28f','2025-05-22 12:22:20'),('01JVVZ3VNMNKJAD467AQYS2WSC','0b719e6f922aa9bd1f5c8d1399af0ba7904d70f31a0059e52715a54119223736','2025-05-22 12:22:29'),('01JVVZ3XKT34C4XN84ZN46ET4X','26a4a348b367a7c3f35928d103703a1894efcb7f25189d610b2cc37fda90bb81','2025-05-22 12:22:31'),('01JVVZ3Y99KV6M4EZMYD55VQJJ','faefaf6bba32c10ffffb9d8d74087c5d1da74f8a02f7c547addee5feb900aac0','2025-05-22 12:22:34'),('01JVVZ445C16K3PTE1R9QQZS3V','d01567634c6f8885d064b5b877e99ff97dadc4b2b09ba6ce040325d63d267339','2025-05-22 12:22:41'),('01JVVZ4N6619YEV5KM4KSMBXD9','46bb0e0cae9e05e11ae6bbd3ea3c0a3b3ede270530982c0edd36a5c4e576bf94','2025-05-22 12:22:56'),('01JVVZ4NX4AFR9YZ9AW86M2P6K','118494bdb27eff443b2c90b90a8536f56d411ba620cec3dd043b2568872332f7','2025-05-22 12:22:56'),('01JVVZ79SEJBF7MCJWBJ7VMQEE','d9ff9396979b133eca2cb9a6d728c9f8f48665eef0be2d2fe245960256fdb4a0','2025-05-22 12:24:22'),('01JVVZ7SBZXQDH3ER3GQ0SVY80','4df5215f7184fa05c9adff6f174d16978d1b8cc3bf5609d5265949f0e491ccd6','2025-05-22 12:24:39'),('01JVVZ7ZGM0JKMZNG4MX942W72','25cf067b3f330d8785adc849049744c401642a30753bc3f70b25cca7c4363b6a','2025-05-22 12:24:45'),('01JVVZ80N10K9PEDAHBN189FH0','d28c10df91ca02d901219a0e4e914b649d38820173b31823aa8ba99327bba057','2025-05-22 12:24:46'),('01JVVZ86M7YY9P33C7KWMD97NJ','2cbd4c8ce30f18860f6190a57276d3e6bec8bc9d39d1f2308b1834bc90bf9af5','2025-05-22 12:24:54'),('01JVVZ8QQKNQBE3DMVRZS2KCJ2','6ab9069af7153ed11aded65af8b5d25aa84039bb5af49c22b1ab2cd9daf55fef','2025-05-22 12:25:12'),('01JVVZ94D9P85BZ5YE25R8GBSF','91e96825993b0fade46cacc45c55d1343ac32d1faca8a4c5711ed9fb14a191f6','2025-05-22 12:25:22'),('01JVVZ94Z8ZTVGBC3168RPWWP0','d6bc34e739386403cad7291680be8df89dcedcb3b8225bc99c8ca126fc47616d','2025-05-22 12:25:23'),('01JVVZ9TZ584FSVXPTQKJK6M90','307d883483a5cb5714bf368d786e65a47f6e1db610944de30df7b4de8c5e147f','2025-05-22 12:25:45'),('01JVVZ9VKRXWTVB19K80ZTVJJT','c7a977caf43b5635e2abfda6abbf26d32c0d0a5379c00e05f0fee5dfb31adc52','2025-05-22 12:25:46'),('01JVVZ9W37VBP55PPJ2RA9BPR3','6803c9b3d58ddd9e6d9d40f3ffc878dc8f6423b2c3506ef4a59fdb4c4526c1cd','2025-05-22 12:25:46'),('01JVVZ9WPGZCWQ8D21926H5P01','187c607c6cc86819e01fd9bcfea5fe37c5e578a1730eed6d1f8bca3bf0d7d796','2025-05-22 12:25:47'),('01JVVZ9XD6JH97MNF8EDR7M012','d64c22039b1280d36cefc1d7f5e29373445037c748bbe5fce8c72d924935bc1a','2025-05-22 12:25:48'),('01JVVZ9Y054WX1STK8G4A61T6F','56efd2fed55494d8947fdb7627b73b4b0455feb50547bd30e698bac60adffeaa','2025-05-22 12:25:48'),('01JVVZB9YRKTJ7NCGCPR1XN641','dbd306887b0d608db45ad6e9b815e9beb354be63034676c81768c30979f52e90','2025-05-22 12:26:34'),('01JVVZBB3EAC6DM1N4QFE81EQT','9b064db6c26fcc37a6f30f704d2f938801369b5d1ca14ff2ddda706808c63805','2025-05-22 12:26:35'),('01JVVZBBK8ZSMKSH66571D2TDJ','49ab2a3e8e73d346d9701da56fa46357f6922db4bfee1dee30e2de773d789a1a','2025-05-22 12:26:35'),('01JVVZBC35CEERVMHY74TP9KG3','abf682bd19c4d590b40f8c362ce64a4ed4817fee28f5f8f4a102001fb16c5af0','2025-05-22 12:26:36'),('01JVVZBCJZARAET1GBXHN35EMV','26a7ea40e998dbd91a4e3a3bbf5055f7219c78ad0503582fbebe6cb104781bbd','2025-05-22 12:26:36'),('01JVVZBD43D1Z9ABMYX29KH0EA','1b13d5db477049411fc672c760c4aed3c08bf4db70154b5c9ac6746a829eff9a','2025-05-22 12:26:37'),('01JVVZC5801R4NTMWACPNMX07J','5fdc427f21b1dfb565a0bad6a65a091b53eb6e0f203825a8e5dbc64ce829c744','2025-05-22 12:27:01'),('01JVVZC5XS9T55E3FEQV8CCJT4','73762ad3f41dcd70939bda428d3bd23a949e0329c9f64c2c36ad4e3a62a987cd','2025-05-22 12:27:02'),('01JVVZC6DTJNF8PZZH45KMY47Q','c0adce8a9582428adc4c446c63ee93a2fdb413e0ae5931b0686dfe9b234f7402','2025-05-22 12:27:03'),('01JVVZC6YAY0NCYMFXRQ5Y8M90','7efb2917c4cf7b7f31533321a9c394367c2f580ec919b74fc9aa2bf77707e7a7','2025-05-22 12:27:03'),('01JVVZC8Q4QP5XJKBXT8QAAEVH','6f41e822163f8b4adbc1ca419561730851cad3d2bc34bfd0295124a7a33e0d2c','2025-05-22 12:27:05'),('01JVVZC979E3B22K5G1709W0GS','b1b2a1f052142479a0df95f7bbb5dba3c2150ab856136ab1a4c246b4180b4727','2025-05-22 12:27:05'),('01JVVZDR6BGHVQHCRS9747K8MH','4a22ed2dee9f0934f094929cb617e1fca509b2e6902a487fac11c4b46e65b76f','2025-05-22 12:27:55'),('01JVVZE2PDZJF96XT3HBRV3XSS','da84cf56545585f376c4b82a79d3cc847c447d34721a4b09a7f385fa7b27e5b4','2025-05-22 12:28:05'),('01JVW430ZBPR7AQPE0RKMGXNB5','0d9cadf3b230066206fbe941bc0faef65c2ee47b9c2ec096dc1d97449f0fc42f','2025-05-22 13:49:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteError`
--

LOCK TABLES `quoteError` WRITE;
/*!40000 ALTER TABLE `quoteError` DISABLE KEYS */;
INSERT INTO `quoteError` VALUES (1,'01JVVZ94Z8ZTVGBC3168RPWWP0',NULL,2001,'Internal server error','2025-05-22 12:25:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteParty`
--

LOCK TABLES `quoteParty` WRITE;
/*!40000 ALTER TABLE `quoteParty` DISABLE KEYS */;
INSERT INTO `quoteParty` VALUES (1,'01JVVYYNAGRX8A87APEZAHMPW4',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:19:42'),(2,'01JVVYYNAGRX8A87APEZAHMPW4',2,1,'27713803912',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:19:42'),(3,'01JVVYZ9M48RCXCKJMC4EXCX5K',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:20:00'),(4,'01JVVYZ9M48RCXCKJMC4EXCX5K',2,1,'27713803912',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:20:00'),(5,'01JVVYZJS95D17DHG63KJP41RE',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:20:09'),(6,'01JVVYZJS95D17DHG63KJP41RE',2,1,'97039819999',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:20:09'),(7,'01JVVYZTDJDJP5RRF374CJMBH1',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:20:17'),(8,'01JVVYZTDJDJP5RRF374CJMBH1',2,1,'2224448888',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:20:17'),(9,'01JVVZ0686X5RD5NWY5XQ308DJ',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:20:29'),(10,'01JVVZ0686X5RD5NWY5XQ308DJ',2,1,'27713803912',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:20:29'),(11,'01JVVZ0BH6ZDEBSTQ6V871T0EX',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:20:35'),(12,'01JVVZ0BH6ZDEBSTQ6V871T0EX',2,1,'5671234',NULL,'ttkpayeefsp',8,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:20:35'),(13,'01JVVZ0FQX7Y507N5QGRYHHE75',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,1.0000,'XXX','2025-05-22 12:20:39'),(14,'01JVVZ0FQX7Y507N5QGRYHHE75',2,1,'27713803912',NULL,'noresponsepayeefsp',4,NULL,NULL,2,1,-1.0000,'XXX','2025-05-22 12:20:39'),(15,'01JVVZ0SB967KPXVPF4G634MSH',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,1.0000,'XXX','2025-05-22 12:20:49'),(16,'01JVVZ0SB967KPXVPF4G634MSH',2,1,'27713803912',NULL,'noresponsepayeefsp',4,NULL,NULL,2,1,-1.0000,'XXX','2025-05-22 12:20:49'),(17,'01JVVZ0WRGBZ7WXN2RJB5XRGP6',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,1.0000,'XXX','2025-05-22 12:20:52'),(18,'01JVVZ0WRGBZ7WXN2RJB5XRGP6',2,1,'27713803912',NULL,'noresponsepayeefsp',4,NULL,NULL,2,1,-1.0000,'XXX','2025-05-22 12:20:52'),(19,'01JVVZ1R2Q0KK2CXM4A5G2AFE3',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:21:20'),(20,'01JVVZ1R2Q0KK2CXM4A5G2AFE3',2,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:21:20'),(21,'01JVVZ1TZR84YNZAYCS223C4C8',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,1.0000,'XXX','2025-05-22 12:21:23'),(22,'01JVVZ1TZR84YNZAYCS223C4C8',2,1,'27713803912',NULL,'noresponsepayeefsp',4,NULL,NULL,2,1,-1.0000,'XXX','2025-05-22 12:21:23'),(23,'01JVVZ221K3RPRD8HKXP2334E1',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,1.0000,'XXX','2025-05-22 12:21:31'),(24,'01JVVZ221K3RPRD8HKXP2334E1',2,1,'27713803912',NULL,'noresponsepayeefsp',4,NULL,NULL,2,1,-1.0000,'XXX','2025-05-22 12:21:31'),(25,'01JVVZ2AEQZYANJW6YP47CMRBZ',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,1.0000,'XXX','2025-05-22 12:21:39'),(26,'01JVVZ2AEQZYANJW6YP47CMRBZ',2,1,'27713803912',NULL,'noresponsepayeefsp',4,NULL,NULL,2,1,-1.0000,'XXX','2025-05-22 12:21:39'),(27,'01JVVZ2BQBQDTGB5W34AP0X9ZH',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,1.0000,'XXX','2025-05-22 12:21:40'),(28,'01JVVZ2BQBQDTGB5W34AP0X9ZH',2,1,'27713803912',NULL,'noresponsepayeefsp',4,NULL,NULL,2,1,-1.0000,'XXX','2025-05-22 12:21:40'),(29,'01JVVZ2M8X7QG9ZB6BFP4S4F63',1,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:21:50'),(30,'01JVVZ2M8X7QG9ZB6BFP4S4F63',2,1,'17039811904',NULL,'testfsp2',6,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:21:50'),(31,'01JVVZ2V8163ZGTS12NDTV4VFZ',1,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:21:57'),(32,'01JVVZ2V8163ZGTS12NDTV4VFZ',2,1,'17039811904',NULL,'testfsp2',6,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:21:57'),(33,'01JVVZ30647ARDGHYH04VHNAAV',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,5298.0000,'XXX','2025-05-22 12:22:01'),(34,'01JVVZ30647ARDGHYH04VHNAAV',2,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,2,1,-5298.0000,'XXX','2025-05-22 12:22:01'),(35,'01JVVZ328JY13YNAXQGPNW7M6R',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,3299.0000,'XXX','2025-05-22 12:22:03'),(36,'01JVVZ328JY13YNAXQGPNW7M6R',2,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,2,1,-3299.0000,'XXX','2025-05-22 12:22:03'),(37,'01JVVZ3J8TP5Q708QXPYYNZ50M',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,60.0000,'XXX','2025-05-22 12:22:20'),(38,'01JVVZ3J8TP5Q708QXPYYNZ50M',2,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,2,1,-60.0000,'XXX','2025-05-22 12:22:20'),(39,'01JVVZ3VNMNKJAD467AQYS2WSC',1,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,1,1,10.0000,'XXX','2025-05-22 12:22:29'),(40,'01JVVZ3VNMNKJAD467AQYS2WSC',2,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,2,1,-10.0000,'XXX','2025-05-22 12:22:29'),(41,'01JVVZ3XKT34C4XN84ZN46ET4X',1,1,'17039811904',NULL,'testfsp2',6,NULL,NULL,1,1,10.0000,'XXX','2025-05-22 12:22:31'),(42,'01JVVZ3XKT34C4XN84ZN46ET4X',2,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,2,1,-10.0000,'XXX','2025-05-22 12:22:31'),(43,'01JVVZ3Y99KV6M4EZMYD55VQJJ',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,101.0000,'XXX','2025-05-22 12:22:34'),(44,'01JVVZ3Y99KV6M4EZMYD55VQJJ',2,1,'44123456789',NULL,'ttkpayeefsp',8,NULL,NULL,2,1,-101.0000,'XXX','2025-05-22 12:22:34'),(45,'01JVVZ445C16K3PTE1R9QQZS3V',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,103.0000,'XXX','2025-05-22 12:22:41'),(46,'01JVVZ445C16K3PTE1R9QQZS3V',2,1,'44123456789',NULL,'ttkpayeefsp',8,NULL,NULL,2,1,-103.0000,'XXX','2025-05-22 12:22:41'),(47,'01JVVZ4N6619YEV5KM4KSMBXD9',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:22:56'),(48,'01JVVZ4N6619YEV5KM4KSMBXD9',2,1,'27713803912',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:22:56'),(49,'01JVVZ4NX4AFR9YZ9AW86M2P6K',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:22:56'),(50,'01JVVZ4NX4AFR9YZ9AW86M2P6K',2,1,'27713803912',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:22:56'),(51,'01JVVZ79SEJBF7MCJWBJ7VMQEE',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,60.1234,'XXX','2025-05-22 12:24:22'),(52,'01JVVZ79SEJBF7MCJWBJ7VMQEE',2,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,2,1,-60.1234,'XXX','2025-05-22 12:24:22'),(53,'01JVVZ7SBZXQDH3ER3GQ0SVY80',1,1,'44123456789',NULL,'payerfsp',2,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:24:39'),(54,'01JVVZ7SBZXQDH3ER3GQ0SVY80',2,1,'27713803912',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:24:39'),(55,'01JVVZ7ZGM0JKMZNG4MX942W72',1,1,'44123456789',NULL,'payerfsp',2,NULL,NULL,1,1,100.0000,'XXX','2025-05-22 12:24:45'),(56,'01JVVZ7ZGM0JKMZNG4MX942W72',2,1,'27713803912',NULL,'payeefsp',3,NULL,NULL,2,1,-100.0000,'XXX','2025-05-22 12:24:45'),(57,'01JVVZ80N10K9PEDAHBN189FH0',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,60.1234,'XXX','2025-05-22 12:24:46'),(58,'01JVVZ80N10K9PEDAHBN189FH0',2,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,2,1,-60.1234,'XXX','2025-05-22 12:24:46'),(59,'01JVVZ86M7YY9P33C7KWMD97NJ',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,104.0000,'XXX','2025-05-22 12:24:54'),(60,'01JVVZ86M7YY9P33C7KWMD97NJ',2,1,'44123456789',NULL,'ttkpayeefsp',8,NULL,NULL,2,1,-104.0000,'XXX','2025-05-22 12:24:54'),(61,'01JVVZ8QQKNQBE3DMVRZS2KCJ2',1,1,'44123456789',NULL,'testingtoolkitdfsp',7,NULL,NULL,1,1,102.0000,'XXX','2025-05-22 12:25:12'),(62,'01JVVZ8QQKNQBE3DMVRZS2KCJ2',2,1,'44123456789',NULL,'ttkpayeefsp',8,NULL,NULL,2,1,-102.0000,'XXX','2025-05-22 12:25:12'),(63,'01JVVZ94D9P85BZ5YE25R8GBSF',1,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,1,1,5.0000,'XXX','2025-05-22 12:25:22'),(64,'01JVVZ94D9P85BZ5YE25R8GBSF',2,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,2,1,-5.0000,'XXX','2025-05-22 12:25:22'),(65,'01JVVZ94Z8ZTVGBC3168RPWWP0',1,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,1,1,5.0000,'XXX','2025-05-22 12:25:23'),(66,'01JVVZ94Z8ZTVGBC3168RPWWP0',2,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,2,1,-5.0000,'XXX','2025-05-22 12:25:23'),(67,'01JVVZ9TZ584FSVXPTQKJK6M90',1,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,1,1,60.0000,'XXX','2025-05-22 12:25:45'),(68,'01JVVZ9TZ584FSVXPTQKJK6M90',2,1,'17039811904',NULL,'testfsp2',6,NULL,NULL,2,1,-60.0000,'XXX','2025-05-22 12:25:45'),(69,'01JVVZ9VKRXWTVB19K80ZTVJJT',1,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,1,1,55.0000,'XTS','2025-05-22 12:25:46'),(70,'01JVVZ9VKRXWTVB19K80ZTVJJT',2,1,'{$inputs.payeefspIdentifier}',NULL,'payeefsp',3,NULL,NULL,2,1,-55.0000,'XTS','2025-05-22 12:25:46'),(71,'01JVVZ9W37VBP55PPJ2RA9BPR3',1,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,1,1,35.0000,'XXX','2025-05-22 12:25:46'),(72,'01JVVZ9W37VBP55PPJ2RA9BPR3',2,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,2,1,-35.0000,'XXX','2025-05-22 12:25:46'),(73,'01JVVZ9WPGZCWQ8D21926H5P01',1,1,'17039811904',NULL,'testfsp2',6,NULL,NULL,1,1,20.0000,'XTS','2025-05-22 12:25:47'),(74,'01JVVZ9WPGZCWQ8D21926H5P01',2,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,2,1,-20.0000,'XTS','2025-05-22 12:25:47'),(75,'01JVVZ9XD6JH97MNF8EDR7M012',1,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,1,1,35.0000,'XXX','2025-05-22 12:25:48'),(76,'01JVVZ9XD6JH97MNF8EDR7M012',2,1,'{$inputs.payeefspIdentifier}',NULL,'testfsp2',6,NULL,NULL,2,1,-35.0000,'XXX','2025-05-22 12:25:48'),(77,'01JVVZ9Y054WX1STK8G4A61T6F',1,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,1,1,25.0000,'XTS','2025-05-22 12:25:48'),(78,'01JVVZ9Y054WX1STK8G4A61T6F',2,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,2,1,-25.0000,'XTS','2025-05-22 12:25:48'),(79,'01JVVZB9YRKTJ7NCGCPR1XN641',1,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,1,1,60.0000,'XXX','2025-05-22 12:26:34'),(80,'01JVVZB9YRKTJ7NCGCPR1XN641',2,1,'17039811904',NULL,'testfsp2',6,NULL,NULL,2,1,-60.0000,'XXX','2025-05-22 12:26:34'),(81,'01JVVZBB3EAC6DM1N4QFE81EQT',1,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,1,1,55.0000,'XXX','2025-05-22 12:26:35'),(82,'01JVVZBB3EAC6DM1N4QFE81EQT',2,1,'{$inputs.payeefspIdentifier}',NULL,'payeefsp',3,NULL,NULL,2,1,-55.0000,'XXX','2025-05-22 12:26:35'),(83,'01JVVZBBK8ZSMKSH66571D2TDJ',1,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,1,1,35.0000,'XXX','2025-05-22 12:26:35'),(84,'01JVVZBBK8ZSMKSH66571D2TDJ',2,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,2,1,-35.0000,'XXX','2025-05-22 12:26:35'),(85,'01JVVZBC35CEERVMHY74TP9KG3',1,1,'17039811904',NULL,'testfsp2',6,NULL,NULL,1,1,20.0000,'XXX','2025-05-22 12:26:36'),(86,'01JVVZBC35CEERVMHY74TP9KG3',2,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,2,1,-20.0000,'XXX','2025-05-22 12:26:36'),(87,'01JVVZBCJZARAET1GBXHN35EMV',1,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,1,1,35.0000,'XXX','2025-05-22 12:26:36'),(88,'01JVVZBCJZARAET1GBXHN35EMV',2,1,'{$inputs.payeefspIdentifier}',NULL,'testfsp2',6,NULL,NULL,2,1,-35.0000,'XXX','2025-05-22 12:26:36'),(89,'01JVVZBD43D1Z9ABMYX29KH0EA',1,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,1,1,25.0000,'XXX','2025-05-22 12:26:37'),(90,'01JVVZBD43D1Z9ABMYX29KH0EA',2,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,2,1,-25.0000,'XXX','2025-05-22 12:26:37'),(91,'01JVVZC5801R4NTMWACPNMX07J',1,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,1,1,60.0000,'XTS','2025-05-22 12:27:01'),(92,'01JVVZC5801R4NTMWACPNMX07J',2,1,'17039811904',NULL,'testfsp2',6,NULL,NULL,2,1,-60.0000,'XTS','2025-05-22 12:27:01'),(93,'01JVVZC5XS9T55E3FEQV8CCJT4',1,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,1,1,55.0000,'XTS','2025-05-22 12:27:02'),(94,'01JVVZC5XS9T55E3FEQV8CCJT4',2,1,'{$inputs.payeefspIdentifier}',NULL,'payeefsp',3,NULL,NULL,2,1,-55.0000,'XTS','2025-05-22 12:27:02'),(95,'01JVVZC6DTJNF8PZZH45KMY47Q',1,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,1,1,35.0000,'XTS','2025-05-22 12:27:03'),(96,'01JVVZC6DTJNF8PZZH45KMY47Q',2,1,'17039811903',NULL,'testfsp1',5,NULL,NULL,2,1,-35.0000,'XTS','2025-05-22 12:27:03'),(97,'01JVVZC6YAY0NCYMFXRQ5Y8M90',1,1,'17039811904',NULL,'testfsp2',6,NULL,NULL,1,1,20.0000,'XTS','2025-05-22 12:27:03'),(98,'01JVVZC6YAY0NCYMFXRQ5Y8M90',2,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,2,1,-20.0000,'XTS','2025-05-22 12:27:03'),(99,'01JVVZC8Q4QP5XJKBXT8QAAEVH',1,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,1,1,35.0000,'XTS','2025-05-22 12:27:05'),(100,'01JVVZC8Q4QP5XJKBXT8QAAEVH',2,1,'{$inputs.payeefspIdentifier}',NULL,'testfsp2',6,NULL,NULL,2,1,-35.0000,'XTS','2025-05-22 12:27:05'),(101,'01JVVZC979E3B22K5G1709W0GS',1,1,'17039811902',NULL,'payeefsp',3,NULL,NULL,1,1,25.0000,'XTS','2025-05-22 12:27:05'),(102,'01JVVZC979E3B22K5G1709W0GS',2,1,'17039811901',NULL,'payerfsp',2,NULL,NULL,2,1,-25.0000,'XTS','2025-05-22 12:27:05'),(103,'01JVVZDR6BGHVQHCRS9747K8MH',1,1,'44123456789',NULL,'ttkfxpayer',13,NULL,NULL,1,1,100.0000,'XTS','2025-05-22 12:27:55'),(104,'01JVVZDR6BGHVQHCRS9747K8MH',2,1,'54321001',NULL,'ttkpayeefsp',8,NULL,NULL,2,1,-100.0000,'XTS','2025-05-22 12:27:55'),(105,'01JVVZE2PDZJF96XT3HBRV3XSS',1,1,'44123456789',NULL,'ttkfxpayer',13,NULL,NULL,1,1,100.0000,'XTS','2025-05-22 12:28:05'),(106,'01JVVZE2PDZJF96XT3HBRV3XSS',2,1,'54321001',NULL,'ttkfxpayee',12,NULL,NULL,2,1,-100.0000,'XTS','2025-05-22 12:28:06'),(107,'01JVW430ZBPR7AQPE0RKMGXNB5',1,1,'44123456789',NULL,'ttkfxpayer',13,NULL,NULL,1,1,100.0000,'XTS','2025-05-22 13:49:26'),(108,'01JVW430ZBPR7AQPE0RKMGXNB5',2,1,'54321001',NULL,'ttkpayeefsp',8,NULL,NULL,2,1,-100.0000,'XTS','2025-05-22 13:49:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3 COMMENT='This table is the primary store for quote responses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteResponse`
--

LOCK TABLES `quoteResponse` WRITE;
/*!40000 ALTER TABLE `quoteResponse` DISABLE KEYS */;
INSERT INTO `quoteResponse` VALUES (1,'01JVVYYNAGRX8A87APEZAHMPW4','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'5ejo8LE3SVfYvoQjmzcr1X-HSlLBgjaloUl-lvfKX74','2025-05-22 12:20:42',1,'2025-05-22 12:19:42'),(2,'01JVVYZ9M48RCXCKJMC4EXCX5K','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'sYiAltMtZnMKjAfDt_FP8Pg02fMwSBHdLKpt2tKRe1c','2025-05-22 12:21:01',1,'2025-05-22 12:20:00'),(3,'01JVVYZJS95D17DHG63KJP41RE','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'AWtVklAmMlldpjvWuFJ4D_jJ5CLf1g00a6lXXyKemBs','2025-05-22 12:21:10',1,'2025-05-22 12:20:10'),(4,'01JVVYZTDJDJP5RRF374CJMBH1','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'Ku_Xv3oW-sosKxi1WomK1ohzk1aetpSsXa4EePL0YNw','2025-05-22 12:21:18',1,'2025-05-22 12:20:17'),(5,'01JVVZ0686X5RD5NWY5XQ308DJ','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'wLk-H4WPw-rlw9fR0uKTrk0t6FcMNors7GRU-WAiWtQ','2025-05-22 12:21:30',1,'2025-05-22 12:20:29'),(6,'01JVVZ0BH6ZDEBSTQ6V871T0EX','XXX',100.0000,'XXX',100.0000,'XXX',0.0000,NULL,NULL,'olWwcl-7wfu_w0uJa7rN1KCUG6tPzkX7-TrTxmHvpOo','2025-05-23 12:20:37',1,'2025-05-22 12:20:37'),(7,'01JVVZ0FQX7Y507N5QGRYHHE75','XXX',1.0000,'XXX',1.0000,'XXX',0.0000,NULL,NULL,'L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:20:40',1,'2025-05-22 12:20:39'),(8,'01JVVZ0SB967KPXVPF4G634MSH','XXX',1.0000,'XXX',1.0000,'XXX',0.0000,NULL,NULL,'L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:20:50',1,'2025-05-22 12:20:49'),(9,'01JVVZ0WRGBZ7WXN2RJB5XRGP6','XXX',1.0000,'XXX',1.0000,'XXX',0.0000,NULL,NULL,'L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:20:53',1,'2025-05-22 12:20:53'),(10,'01JVVZ1R2Q0KK2CXM4A5G2AFE3','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'TfOTKY6xrP1Yr9CINqi3yXbuacGyBzHRCrXn2Rx4ERk','2025-05-22 12:22:21',1,'2025-05-22 12:21:21'),(11,'01JVVZ1TZR84YNZAYCS223C4C8','XXX',1.0000,'XXX',1.0000,'XXX',0.0000,NULL,NULL,'L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:21:24',1,'2025-05-22 12:21:23'),(12,'01JVVZ221K3RPRD8HKXP2334E1','XXX',1.0000,'XXX',1.0000,'XXX',0.0000,NULL,NULL,'L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:21:31',1,'2025-05-22 12:21:31'),(13,'01JVVZ2AEQZYANJW6YP47CMRBZ','XXX',1.0000,'XXX',1.0000,'XXX',0.0000,NULL,NULL,'L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:21:40',1,'2025-05-22 12:21:39'),(14,'01JVVZ2BQBQDTGB5W34AP0X9ZH','XXX',1.0000,'XXX',1.0000,'XXX',0.0000,NULL,NULL,'L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:21:41',1,'2025-05-22 12:21:41'),(15,'01JVVZ2M8X7QG9ZB6BFP4S4F63','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'lOcictnUw85WpoEzc3KAKm3NgiYXfNPFA0Jbd5dRdow','2025-05-22 12:22:51',1,'2025-05-22 12:21:51'),(16,'01JVVZ2V8163ZGTS12NDTV4VFZ','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'u0hopp09mLhbl1khXQenKygrPTNoBdNHOeICU18SuN0','2025-05-22 12:22:58',1,'2025-05-22 12:21:57'),(17,'01JVVZ30647ARDGHYH04VHNAAV','XXX',5298.0000,NULL,NULL,'XXX',264.0000,NULL,NULL,'yVoMj1-H-qcyIWOGFn7fhENBnnojkACE7h7PdezNvBU','2025-05-22 12:23:02',1,'2025-05-22 12:22:02'),(18,'01JVVZ328JY13YNAXQGPNW7M6R','XXX',3299.0000,NULL,NULL,'XXX',164.0000,NULL,NULL,'prjJJyt0YxnnTJVLoRBTsRkbqcwfmM4iJcGy0QwITHQ','2025-05-22 12:23:04',1,'2025-05-22 12:22:04'),(19,'01JVVZ3J8TP5Q708QXPYYNZ50M','XXX',60.0000,NULL,NULL,'XXX',3.0000,NULL,NULL,'CByNQiGZwvNPQ5Gz7xVR2zKU9Xdhk55lEWYHUV01gZU','2025-05-22 12:23:21',1,'2025-05-22 12:22:20'),(20,'01JVVZ3VNMNKJAD467AQYS2WSC','XXX',10.0000,NULL,NULL,'XXX',0.0000,NULL,NULL,'PB5Cd27gcO-L9OaPZrd7Mhl44oWjVjh8eRCs0zi83Vc','2025-05-22 12:23:30',1,'2025-05-22 12:22:30'),(21,'01JVVZ3XKT34C4XN84ZN46ET4X','XXX',10.0000,NULL,NULL,'XXX',0.0000,NULL,NULL,'8OmnOC6D0iaQLk1eSWvtN4l5FNBe40OThV9mhL7O4jE','2025-05-22 12:23:32',1,'2025-05-22 12:22:31'),(22,'01JVVZ3Y99KV6M4EZMYD55VQJJ','XXX',101.0000,'XXX',101.0000,'XXX',0.0000,NULL,NULL,'-lRcsFCkP-rIkyN5C9dZ2dI15KALJcmFxd4VR9dBDew','2025-05-23 12:22:34',1,'2025-05-22 12:22:34'),(23,'01JVVZ445C16K3PTE1R9QQZS3V','XXX',103.0000,'XXX',103.0000,'XXX',0.0000,NULL,NULL,'HiMd-Nxn778acqKPtdv6JDiaZiZ4SxxPz7e-qu2El9U','2025-05-23 12:22:42',1,'2025-05-22 12:22:42'),(24,'01JVVZ4N6619YEV5KM4KSMBXD9','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'EVhrfCtnPdvUVywXEVkAzRNyP8sm53uZzJra-Mo7uA8','2025-05-22 12:23:56',1,'2025-05-22 12:22:56'),(25,'01JVVZ4NX4AFR9YZ9AW86M2P6K','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'eXyw3MAAU5S8eBixsSAioIkHzXy3Yu-6FJQakC7dcog','2025-05-22 12:23:57',1,'2025-05-22 12:22:56'),(26,'01JVVZ79SEJBF7MCJWBJ7VMQEE','XXX',60.1234,NULL,NULL,'XXX',3.0000,NULL,NULL,'M2g708UBFnFCw5lgRNf6K0TZZjb6EEx4T59l7UK1-Wo','2025-05-22 12:25:23',1,'2025-05-22 12:24:22'),(27,'01JVVZ7ZGM0JKMZNG4MX942W72','XXX',100.0000,NULL,NULL,'XXX',5.0000,NULL,NULL,'t4zAzgO6y5XMIF4GviYXkLFpIgrX2R6cxfbMyPNEuKk','2025-05-22 12:25:46',1,'2025-05-22 12:24:45'),(28,'01JVVZ80N10K9PEDAHBN189FH0','XXX',60.1234,NULL,NULL,'XXX',3.0000,NULL,NULL,'_6w0VCAeGdvFNKUuOG_9j7-diXH78qwj1Q938NIo2es','2025-05-22 12:25:46',1,'2025-05-22 12:24:46'),(29,'01JVVZ86M7YY9P33C7KWMD97NJ','XXX',104.0000,'XXX',104.0000,'XXX',0.0000,NULL,NULL,'VMRgqbEdH2D0P02eOGToW88RuzXgYDUlDYcsKUyr4nA','2025-05-23 12:24:55',1,'2025-05-22 12:24:54'),(30,'01JVVZ8QQKNQBE3DMVRZS2KCJ2','XXX',102.0000,'XXX',102.0000,'XXX',0.0000,NULL,NULL,'mbgMMj98Fu7i287LQXV61wM-wqBpQm14HGiMHuTI8Ao','2025-05-23 12:25:13',1,'2025-05-22 12:25:12'),(31,'01JVVZ94D9P85BZ5YE25R8GBSF','XXX',5.0000,NULL,NULL,'XXX',0.0000,NULL,NULL,'7V-nr6iX6rRInuUK9GEtEmCuom1G0bpHrXlDw5EQMXc','2025-05-22 12:26:23',1,'2025-05-22 12:25:22'),(32,'01JVVZ94Z8ZTVGBC3168RPWWP0','XXX',5.0000,NULL,NULL,'XXX',0.0000,NULL,NULL,'tKRfzc0C3eo9a_mXZYvClTxfU7fCvFD9MAgqlf3Vdqs','2025-05-22 12:26:23',1,'2025-05-22 12:25:23'),(33,'01JVVZ9TZ584FSVXPTQKJK6M90','XXX',60.0000,NULL,NULL,'XXX',3.0000,NULL,NULL,'AEmpeBn3peCq7sgwGI_uOSyc7--PQRueBxulY2Lb4fQ','2025-05-22 12:26:46',1,'2025-05-22 12:25:45'),(34,'01JVVZ9VKRXWTVB19K80ZTVJJT','XTS',55.0000,NULL,NULL,'XTS',2.0000,NULL,NULL,'wHzf-oZ8vbrfcAQ_WtgNdDzIRkEw7L9H5QxqbyA_gxs','2025-05-22 12:26:46',1,'2025-05-22 12:25:46'),(35,'01JVVZ9W37VBP55PPJ2RA9BPR3','XXX',35.0000,NULL,NULL,'XXX',1.0000,NULL,NULL,'tdBrIQQIUaNdd7YalJHFG4chUf1Q_bMdadOgNiW55Sk','2025-05-22 12:26:47',1,'2025-05-22 12:25:47'),(36,'01JVVZ9WPGZCWQ8D21926H5P01','XTS',20.0000,NULL,NULL,'XTS',1.0000,NULL,NULL,'ZXbxPURUvoI2Hr4z7-plRD_25Ss68hockdqgWnPN7L8','2025-05-22 12:26:48',1,'2025-05-22 12:25:47'),(37,'01JVVZ9XD6JH97MNF8EDR7M012','XXX',35.0000,NULL,NULL,'XXX',1.0000,NULL,NULL,'GQm1bEkjnfGPGczmWKECS_8kEVhvkOwRoz9QGDPPNGU','2025-05-22 12:26:48',1,'2025-05-22 12:25:48'),(38,'01JVVZ9Y054WX1STK8G4A61T6F','XTS',25.0000,NULL,NULL,'XTS',1.0000,NULL,NULL,'NSS18j-L2bMXMHirc5xZJKwf6GfN4R9WP9B8j9cnUfU','2025-05-22 12:26:49',1,'2025-05-22 12:25:48'),(39,'01JVVZB9YRKTJ7NCGCPR1XN641','XXX',60.0000,NULL,NULL,'XXX',3.0000,NULL,NULL,'obNuMCMkTttKbqGqya-FfEDceicrnL7wkj2KDHOOxw4','2025-05-22 12:27:34',1,'2025-05-22 12:26:34'),(40,'01JVVZBB3EAC6DM1N4QFE81EQT','XXX',55.0000,NULL,NULL,'XXX',2.0000,NULL,NULL,'K1kKP6QsSNykkB3RZVxQceDIz7xp1tCAqgXT2eDlKLk','2025-05-22 12:27:35',1,'2025-05-22 12:26:35'),(41,'01JVVZBBK8ZSMKSH66571D2TDJ','XXX',35.0000,NULL,NULL,'XXX',1.0000,NULL,NULL,'DuPn7o1GGWI5OympQxRN79naX7fIARY55fhM9jxugJM','2025-05-22 12:27:36',1,'2025-05-22 12:26:35'),(42,'01JVVZBC35CEERVMHY74TP9KG3','XXX',20.0000,NULL,NULL,'XXX',1.0000,NULL,NULL,'QbWJPDWn6nzJHpzFDdtVKRCwJqqEKBh2wvuq1JRv2Os','2025-05-22 12:27:36',1,'2025-05-22 12:26:36'),(43,'01JVVZBCJZARAET1GBXHN35EMV','XXX',35.0000,NULL,NULL,'XXX',1.0000,NULL,NULL,'HJASAO68OdVs-MS2u3NdY3Bcjbnby5JDRxTMvf2B6V4','2025-05-22 12:27:37',1,'2025-05-22 12:26:36'),(44,'01JVVZBD43D1Z9ABMYX29KH0EA','XXX',25.0000,NULL,NULL,'XXX',1.0000,NULL,NULL,'JHJ4ZkQmdEwMAWt3vBaJGopkqdFFTtscFhdV2avQVYg','2025-05-22 12:27:37',1,'2025-05-22 12:26:37'),(45,'01JVVZC5801R4NTMWACPNMX07J','XTS',60.0000,NULL,NULL,'XTS',3.0000,NULL,NULL,'mJbBpY3My4Uqyb6yMx7ybbF3dSPA_xlNo_RdbCFx4w8','2025-05-22 12:28:02',1,'2025-05-22 12:27:01'),(46,'01JVVZC5XS9T55E3FEQV8CCJT4','XTS',55.0000,NULL,NULL,'XTS',2.0000,NULL,NULL,'HQpllVuL226I4XXI_QQo8d3MpAL7fy1jjv2_WydhZy0','2025-05-22 12:28:03',1,'2025-05-22 12:27:02'),(47,'01JVVZC6DTJNF8PZZH45KMY47Q','XTS',35.0000,NULL,NULL,'XTS',1.0000,NULL,NULL,'gQpyFpRdkqYVVwpOYqOSsPZ6O9IzI7xhM1i_P1LSZH0','2025-05-22 12:28:03',1,'2025-05-22 12:27:03'),(48,'01JVVZC6YAY0NCYMFXRQ5Y8M90','XTS',20.0000,NULL,NULL,'XTS',1.0000,NULL,NULL,'hj11m0NlN7vynOWyAcJCmWleGmTpLalZxQ6uES6nles','2025-05-22 12:28:04',1,'2025-05-22 12:27:03'),(49,'01JVVZC8Q4QP5XJKBXT8QAAEVH','XTS',35.0000,NULL,NULL,'XTS',1.0000,NULL,NULL,'b9uBKrVuozA1gVDNkFAh1qvfmBvRlkH_SN7CldmBotA','2025-05-22 12:28:05',1,'2025-05-22 12:27:05'),(50,'01JVVZC979E3B22K5G1709W0GS','XTS',25.0000,NULL,NULL,'XTS',1.0000,NULL,NULL,'y_YwLlB5kPF9NmpjuUO_oK-5p6UQNb7SuszKeImtGSE','2025-05-22 12:28:06',1,'2025-05-22 12:27:05'),(51,'01JVVZDR6BGHVQHCRS9747K8MH','XTS',100.0000,'XTS',100.0000,'XTS',0.0000,NULL,NULL,'W_Ox1_8-eLMFJFW07nVTcENoVKijYWtfhdru_Cl_qIc','2025-05-23 12:27:56',1,'2025-05-22 12:27:56'),(52,'01JVVZE2PDZJF96XT3HBRV3XSS','XTS',100.0000,'XTS',100.0000,'XTS',0.0000,NULL,NULL,'9L_5HoSYBOkbdpRPKCe9k_pFbNhrPqw6cdSG6ROOliM','2025-05-23 12:28:06',1,'2025-05-22 12:28:09'),(53,'01JVW430ZBPR7AQPE0RKMGXNB5','XTS',100.0000,'XTS',100.0000,'XTS',0.0000,NULL,NULL,'YdMF5ihe5zY_nOVRzIb_YBc8LlfjwO4TZ3xyB_P_YXE','2025-05-23 13:49:27',1,'2025-05-22 13:49:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteResponseDuplicateCheck`
--

LOCK TABLES `quoteResponseDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `quoteResponseDuplicateCheck` DISABLE KEYS */;
INSERT INTO `quoteResponseDuplicateCheck` VALUES (1,'01JVVYYNAGRX8A87APEZAHMPW4','c12a6104c2d0f651580563e5842cc6f134263e764e14c5330ac503260b530820','2025-05-22 12:19:42'),(2,'01JVVYZ9M48RCXCKJMC4EXCX5K','7a0b834e27dfad9bc547bfdbfd74a4ebf9b078e602abc883e3cf96711afa0b87','2025-05-22 12:20:00'),(3,'01JVVYZJS95D17DHG63KJP41RE','2661b5dbab773324d3d3eab8e253dc6157a0237f5fff0140940b8e41a31fd395','2025-05-22 12:20:10'),(4,'01JVVYZTDJDJP5RRF374CJMBH1','3dcc0a021effa81e6e58281bc3ef76915b3b6a8b14cd4999feaab902c379d3d9','2025-05-22 12:20:17'),(5,'01JVVZ0686X5RD5NWY5XQ308DJ','2415c8828b06a114cc2718059c386f0c26a3733a1d14a6d7a1b89315d97e79fc','2025-05-22 12:20:29'),(6,'01JVVZ0BH6ZDEBSTQ6V871T0EX','bd75243335663dfc7223600caa24db9d8556b35ad193afc0ce415f0aade37be1','2025-05-22 12:20:37'),(7,'01JVVZ0FQX7Y507N5QGRYHHE75','c77fd6cf309fd15fad7eab5a63c96273b97c08e25cc2ff5ca66fb5423903e785','2025-05-22 12:20:39'),(8,'01JVVZ0SB967KPXVPF4G634MSH','6d8494b73cb8856f5860b27b042957429d666458bea116c5340a2262659c47e1','2025-05-22 12:20:49'),(9,'01JVVZ0WRGBZ7WXN2RJB5XRGP6','8f680729ac38d11ba8518db4baf868aa920f7b5d8803fe3efe6557388114c5ec','2025-05-22 12:20:53'),(10,'01JVVZ1R2Q0KK2CXM4A5G2AFE3','a934dfa45884c75b8de60b8892397dfedfab37a5aef5ef19e9cc21e7b77f665b','2025-05-22 12:21:21'),(11,'01JVVZ1TZR84YNZAYCS223C4C8','06c6648653ddfa279023819bad48360887d7cfa5d5fa6a84774b2e55e8175f7a','2025-05-22 12:21:23'),(12,'01JVVZ221K3RPRD8HKXP2334E1','1ddbf9879fd54377b25d08ffecf76ba1049ef00cddd2a529725cbddf9744cdc8','2025-05-22 12:21:31'),(13,'01JVVZ2AEQZYANJW6YP47CMRBZ','254029bdf5218089b43797d4a7b5efe795d8f8062ab3df02c99984c4448d6fe4','2025-05-22 12:21:39'),(14,'01JVVZ2BQBQDTGB5W34AP0X9ZH','e8d9ab31e0e28315e3463c19b468ce018dee1e600389ddb718cdb38ee796ab80','2025-05-22 12:21:41'),(15,'01JVVZ2M8X7QG9ZB6BFP4S4F63','b5ffa337939f85a50f42bc7c8695636af4dd0e29df6b21bddc9526d8eb26dec0','2025-05-22 12:21:51'),(16,'01JVVZ2V8163ZGTS12NDTV4VFZ','a86cb3872131c427b37b4ea04442fa173d511371c0a67e5081940595a97c7c6f','2025-05-22 12:21:57'),(17,'01JVVZ30647ARDGHYH04VHNAAV','9cb09df43cc6b5b6a9f80c709ea703be597b26efc8f3e90e98ec9263379a5040','2025-05-22 12:22:02'),(18,'01JVVZ328JY13YNAXQGPNW7M6R','1c70edded3519313bf8430e4f7bdd36f6cc2ff851c3986cced9bdb45c7bdedc0','2025-05-22 12:22:04'),(19,'01JVVZ3J8TP5Q708QXPYYNZ50M','21921d18053adcbe4f0e0a479266dea72ac2ada1f8b1293ed7a745aef64c4748','2025-05-22 12:22:20'),(20,'01JVVZ3VNMNKJAD467AQYS2WSC','49a34f70c9d203dc704d61414b41ef53b32445e59b5a651fc9a9f3ec82e6df49','2025-05-22 12:22:30'),(21,'01JVVZ3XKT34C4XN84ZN46ET4X','0d6d9bb29969eeb12f21a1202e48cd531f83eec6a26f745c5953b4f7652722fe','2025-05-22 12:22:31'),(22,'01JVVZ3Y99KV6M4EZMYD55VQJJ','328ab8d39116c1989c1c93f16c1008d6bfd7ab697deac7ac01ff395b29fb19ab','2025-05-22 12:22:34'),(23,'01JVVZ445C16K3PTE1R9QQZS3V','3ca82e60116ee21af370dfd0f9a0d55299de06f27033972f310e0af0053882b4','2025-05-22 12:22:42'),(24,'01JVVZ4N6619YEV5KM4KSMBXD9','ac208263ecc2a1bd99ec869fcd02234fbbacbc012385a16a35f5424c1ff6c671','2025-05-22 12:22:56'),(25,'01JVVZ4NX4AFR9YZ9AW86M2P6K','1b0a992ad54a9d767f7ed439beebdf9bb11c619918cde6205ce2d45332e6fd2f','2025-05-22 12:22:56'),(26,'01JVVZ79SEJBF7MCJWBJ7VMQEE','ef9f185f9ac4d35e14f714c99b8771a9d942bed0e66fb8053499cb064d4dbb93','2025-05-22 12:24:22'),(27,'01JVVZ7ZGM0JKMZNG4MX942W72','5bb8256fc2871e99df7aa9c338f8b1c2c561530a07383f9560c4b5ec75e17129','2025-05-22 12:24:45'),(28,'01JVVZ80N10K9PEDAHBN189FH0','37a6b4b21fc8f7caa93eb551ff47d4fde87dc1183cec6fe41d943d668ffadbe8','2025-05-22 12:24:46'),(29,'01JVVZ86M7YY9P33C7KWMD97NJ','6e5614f732ff547b0eab632cea21b0cd782ecad89986a7fd00be6f2530cdcfff','2025-05-22 12:24:54'),(30,'01JVVZ8QQKNQBE3DMVRZS2KCJ2','8d33b96b442cb0d76679dd181aac092104640a268b4cc9cec6b40e104b67225a','2025-05-22 12:25:12'),(31,'01JVVZ94D9P85BZ5YE25R8GBSF','a2f946eb074b3fdcfef3c11d9c40b0c4611427b4ef9da73a7be77b3886ceb7ae','2025-05-22 12:25:22'),(32,'01JVVZ94Z8ZTVGBC3168RPWWP0','b6e72e45821d34448251381df784f2a115984c456bc23d71279708d8a1d13c37','2025-05-22 12:25:23'),(33,'01JVVZ9TZ584FSVXPTQKJK6M90','19fcb8ab8ff3ca9536d36ab168e97225f61a7943e226b818d24cfc1749e64083','2025-05-22 12:25:45'),(34,'01JVVZ9VKRXWTVB19K80ZTVJJT','1403d965d968caf651765fb470620efd6bf6e64e7c29f336d809cc6678a24afe','2025-05-22 12:25:46'),(35,'01JVVZ9W37VBP55PPJ2RA9BPR3','642a4c03837f2cb0d5b750a758764be377027037767eb68775eb85a3860fa13a','2025-05-22 12:25:47'),(36,'01JVVZ9WPGZCWQ8D21926H5P01','089fb9041bf8aea9e8aed311697386b3fb9014a699c4a87e024db1eeada0c0b7','2025-05-22 12:25:47'),(37,'01JVVZ9XD6JH97MNF8EDR7M012','258f38e40831140d0a38c9018edb2bab66be7cd200540c09c87592478d903482','2025-05-22 12:25:48'),(38,'01JVVZ9Y054WX1STK8G4A61T6F','784669425d9f487c5da1922fa4047971bd82096ec9a4bba945c746718fd45706','2025-05-22 12:25:48'),(39,'01JVVZB9YRKTJ7NCGCPR1XN641','8b0719cfec9151e3bd0817bc41ecd6b2c962c626406b6088f1556440e010c9a1','2025-05-22 12:26:34'),(40,'01JVVZBB3EAC6DM1N4QFE81EQT','8249f0e931b0e3da8de6cb955fcb9924a2d9440d27f2fe6ed246378c0d65abb0','2025-05-22 12:26:35'),(41,'01JVVZBBK8ZSMKSH66571D2TDJ','fbba9a209788b95aed5cace41e140652efa6183b16b06d283557f241cb75524f','2025-05-22 12:26:35'),(42,'01JVVZBC35CEERVMHY74TP9KG3','4c53ac7e80cde06c504d4f4938e597636dfbb96950ffa0c0545ebf0a426206f0','2025-05-22 12:26:36'),(43,'01JVVZBCJZARAET1GBXHN35EMV','72a520aaf5a6b56b52fec4e1870556ce97544f03e1a743c1cb8647d3b4cf0b57','2025-05-22 12:26:36'),(44,'01JVVZBD43D1Z9ABMYX29KH0EA','10466a561323d742bfa0421631c1c081e71ac8d39f7be10fcf0a57f088114e21','2025-05-22 12:26:37'),(45,'01JVVZC5801R4NTMWACPNMX07J','d6e3a546d6c849892b55150953d002447bd79753027c904a65be6af9f8df9f04','2025-05-22 12:27:01'),(46,'01JVVZC5XS9T55E3FEQV8CCJT4','488e37cbe73fed88f593af8c218f830d768609a47b19a498afaf23e695a7151e','2025-05-22 12:27:02'),(47,'01JVVZC6DTJNF8PZZH45KMY47Q','49573fa064892714ea9c179b5b2dc71e334e01aca7baa7c22ad263ecaaaac13a','2025-05-22 12:27:03'),(48,'01JVVZC6YAY0NCYMFXRQ5Y8M90','ec7a7970c913e49dd2062a947b57ef310a0aa03f053035cec7ff609664c54757','2025-05-22 12:27:03'),(49,'01JVVZC8Q4QP5XJKBXT8QAAEVH','5e843e25cad7576feb806ba1b1ee6635349abb77282935d540c7b23baeb100e5','2025-05-22 12:27:05'),(50,'01JVVZC979E3B22K5G1709W0GS','6044389a9ed707c1653a84619fedaddccaf08872d1aaee3ac6cc78758036b2cc','2025-05-22 12:27:05'),(51,'01JVVZDR6BGHVQHCRS9747K8MH','1c0226bdbde9c36f713f214d6a46410c8381edfdd68d68e50db0289ff4e8d06d','2025-05-22 12:27:56'),(52,'01JVVZE2PDZJF96XT3HBRV3XSS','94515b17e0983de636f10a26a1545d26cca78e6d3537313c82b58400d3947b0f','2025-05-22 12:28:09'),(53,'01JVW430ZBPR7AQPE0RKMGXNB5','b03a5fecb67e62c56930704d1f9704d0c684dc54d9989b2844accc6ee94b07c3','2025-05-22 13:49:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteResponseIlpPacket`
--

LOCK TABLES `quoteResponseIlpPacket` WRITE;
/*!40000 ALTER TABLE `quoteResponseIlpPacket` DISABLE KEYS */;
INSERT INTO `quoteResponseIlpPacket` VALUES (1,'DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIwNDIyNjHl6OjwsTdJV9i-hCObNyvVf4dKUsGCNqWhSX6W98pfvgpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFpaV1U1QlIxSllPRUU0TjBGUVJWcEJTRTFRVnpRaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFpaV1U1QlUwVTFVREJTVnpWWVN6aFVUbEZaVkRjaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl3T2pReUxqSTJNVm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA'),(2,'DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIxMDA4NDmxiICW0y1mcwqMB8O38U_w-DTZ8zBIEd0sqm3a0pF7VwpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFpaV2psTk5EaFNRMWhEUzBwTlF6UkZXRU5ZTlVzaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFpaV2psTk9FZEtNa1UyVGtSS1JsSldTRnBVUlRVaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl4T2pBd0xqZzBPVm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA'),(3,'DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIxMDk5ODIBa1WSUCYyWV2mO9a4UngP-MnkIt_WDTRrqVdfIp6YGwpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFpaV2twVE9UVkVNVGRFU0VjMk0wdEtVRFF4VWtVaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFpaV2twVFFrczJPRkJaTWxsWVNGWTBVVGM0VmpNaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lPVGN3TXprNE1UazVPVGtpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl4T2pBNUxqazRNbG9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA'),(4,'DIICtQAAAAAAD0JAMjAyNTA1MjIxMjIxMTc3MTMq79e_ehb6yiwrGLVaiYrWiHOTVp62lKxdrgR48vRg3ApnLm1vamFsb29wggJuZXlKeGRXOTBaVWxrSWpvaU1ERktWbFpaV2xSRVNrUktVRFZTVWtZek56UkRTazFDU0RFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFpaV2xSRVMwSTJVMGRTV1RrNFdrcFFTMWhhUmpZaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNakl5TkRRME9EZzRPQ0lzSW1aemNFbGtJam9pY0dGNVpXVm1jM0FpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lORFF4TWpNME5UWTNPRGtpTENKbWMzQkpaQ0k2SW5SbGMzUnBibWQwYjI5c2EybDBaR1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNakU2TVRjdU56RXpXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQ'),(5,'DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIxMjk3NTPAuT4fhY_D6uXD19HS4pOuTS3oVww2iuzsZFT5YCJa1ApnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTURZNE5sZzFVa1ExVGxkWk5WaFJNekE0UkVvaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTURZNE9UTlJNRWczTTA1WU16QklRMFZUU0ZJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl4T2pJNUxqYzFNMW9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA'),(6,'DIICbQAAAAAAD0JAMjAyNTA1MjMxMjIwMzczMDmiVbByX7vB-7_DS4lrus3UoJQbq0_ORfv5OtPGYe-k6gpnLm1vamFsb29wggImZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFNRUpJTjFJMU1EaENTMGREUlRWWFFVSkZRbFFpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphTUVKSU5scEVSVUpUVkZFMlZqZzNNVlF3UlZnaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUyTnpFeU16UWlMQ0p3WVhKMGVVbGtaVzUwYVdacFpYSWlPaUpOVTBsVFJFNGlMQ0ptYzNCSlpDSTZJblIwYTNCaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbUZ0YjNWdWRDSTZleUpqZFhKeVpXNWplU0k2SWxoWVdDSXNJbUZ0YjNWdWRDSTZJakV3TUNKOUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9tNTFiR3dzSW1WNGNHbHlZWFJwYjI0aU9pSXlNREkxTFRBMUxUSXpWREV5T2pJd09qTTNMak13T1ZvaUxDSnViM1JsSWpwdWRXeHNmUQ'),(7,'DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5'),(8,'DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5'),(9,'DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5'),(10,'DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIyMjA5NDdN85MpjrGs_Viv0Ig2qLfJdu5pwbIHMdEKtefZHHgRGQpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTVZJeVVUQkxTekpEV0UwMFFUVkhNa0ZHUlRNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTVZJeVZFZzFRa05FVGprNFJrVXdXVFpPVjBJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl5T2pJd0xqazBOMW9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA'),(11,'DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5'),(12,'DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5'),(13,'DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5'),(14,'DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5'),(15,'DIICqQAAAAAAD0JAMjAyNTA1MjIxMjIyNTA4OTOU5yJy2dTDzlamgTNzcoAqbc2CJhd808UDQlt3l1F2jApnLm1vamFsb29wggJiZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTWswNFdEZFJSemxhUWpaQ1JsQTBVelJHTmpNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTWswNFdsbGFNME0yVWs1V1RsZExOVWRIUkZJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNakk2TlRBdU9Ea3pXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQ'),(16,'DIICqQAAAAAAD0JAMjAyNTA1MjIxMjIyNTc3NzC7SGimnT2YuFuXWSFdB6crKCs9M2gF00c54gJTXxK43QpnLm1vamFsb29wggJiZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTWxZNE1UWXpXa2RVVXpFeVRrUlVWalJXUmxvaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTWxZNE0xTlJSa1JMTTFaWE1GWlpVek16UlVZaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNakk2TlRjdU56Y3dXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQ'),(17,'DIICtwAAAAADKGkgMjAyNTA1MjIxMjIzMDIxMTLJWgyPX4f6pzIhY4YWft-EQ0GeeiOQAITuHs917M28FQpnLm1vamFsb29wggJwZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTXpBMk5EZEJVa1JIU0ZsSU1EUldTRTVCUVZZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTXpBMk5saEhNVlJIUkZOVE1WcExWbGhLUTBnaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl6T2pBeUxqRXhNbG9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU5USTVPQ0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5'),(18,'DIICtwAAAAAB92MwMjAyNTA1MjIxMjIzMDM5ODemuMknK3RjGedMlUuhEFOxGRupzB-YziIlwbLRDAhMdApnLm1vamFsb29wggJwZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTXpJNFNsa3hNMWxPUVZoUlIxQk9WemROTmxJaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTXpJNFRUZFhVVXBXT1RnNFJWTTNRelJYVmtJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl6T2pBekxqazROMW9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU16STVPU0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5'),(19,'DIICtQAAAAAACSfAMjAyNTA1MjIxMjIzMjA2ODYIHI1CIZnC809DkbPvFVHbMpT1d2GTnmURZgdRXTWBlQpnLm1vamFsb29wggJuZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTTBvNFZGQTFVVGN3T0ZGWVVGbFpUbG8xTUUwaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTTBvNFYwUTBXRUpCVGxFNFJFTTBSa2RIT0ZBaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl6T2pJd0xqWTRObG9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU5qQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQ'),(20,'DIICzwAAAAAAAYagMjAyNTA1MjIxMjIzMzAwMjE8HkJ3buBw74v05o9mt3syGXjihaNWOHx5EKzTOLzdVwpnLm1vamFsb29wggKIZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTTFaT1RVNUxTa0ZFTkRZM1FWRlpVekpYVTBNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTTFaSFNrNU9NVUpaTkU1TE5rNVhSekZHUlVRaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOUxDSnVZVzFsSWpvaVVHRjVaWEpHYVhKemRDQlFZWGxsY2t4aGMzUWlmU3dpWlhod2FYSmhkR2x2YmlJNklqSXdNalV0TURVdE1qSlVNVEk2TWpNNk16QXVNREl4V2lJc0ltRnRiM1Z1ZENJNmV5SmhiVzkxYm5RaU9pSXhNQ0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5'),(21,'DIICzwAAAAAAAYagMjAyNTA1MjIxMjIzMzE5MzDw6ac4LoPSJpAuTV5Ja-03iXkU0F7jQ5OFX2aEvs7iMQpnLm1vamFsb29wggKIZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTTFoTFZETTBRelJZVGpnMFdrNDBOa1ZVTkZnaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTTFnNVFrWlRTa2d4UWxaSVRrTmFTMFV4TkZJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEEwSWl3aVpuTndTV1FpT2lKMFpYTjBabk53TWlKOUxDSnVZVzFsSWpvaVVHRjVaWEpHYVhKemRDQlFZWGxsY2t4aGMzUWlmU3dpWlhod2FYSmhkR2x2YmlJNklqSXdNalV0TURVdE1qSlVNVEk2TWpNNk16RXVPVE13V2lJc0ltRnRiM1Z1ZENJNmV5SmhiVzkxYm5RaU9pSXhNQ0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5'),(22,'DIICcgAAAAAAD2lQMjAyNTA1MjMxMjIyMzQ0Mzj6VFywUKQ_6siTI3kL11nZ0jXkoAslyYXF3hVH10EN7ApnLm1vamFsb29wggIrZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFNMWs1UWxaWk5GYzRSMFk0VjBSVU1FNHdOVklpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphTTFrNU9VdFdOazAwUlZwTldVUTFOVlpSU2tvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdHdZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lJME5ERXlNelExTmpjNE9TSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJazFUU1ZORVRpSXNJbVp6Y0Vsa0lqb2lkR1Z6ZEdsdVozUnZiMnhyYVhSa1puTndJbjE5TENKaGJXOTFiblFpT25zaVkzVnljbVZ1WTNraU9pSllXRmdpTENKaGJXOTFiblFpT2lJeE1ERWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanB1ZFd4c0xDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TTFReE1qb3lNam96TkM0ME16aGFJaXdpYm05MFpTSTZiblZzYkgw'),(23,'DIICcgAAAAAAD7dwMjAyNTA1MjMxMjIyNDIwNDceIx343Gfvvxpyoo-12_okOJpmJnhLHE_Pt76q7YSX1QpnLm1vamFsb29wggIrZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFORFExVGpKTE5FZEZNa1JHTTAxT1dsWlpPVklpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphTkRRMVF6RTJTek5RVkVVeFVqbFJVVnBUTTFZaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdHdZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lJME5ERXlNelExTmpjNE9TSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJazFUU1ZORVRpSXNJbVp6Y0Vsa0lqb2lkR1Z6ZEdsdVozUnZiMnhyYVhSa1puTndJbjE5TENKaGJXOTFiblFpT25zaVkzVnljbVZ1WTNraU9pSllXRmdpTENKaGJXOTFiblFpT2lJeE1ETWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanB1ZFd4c0xDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TTFReE1qb3lNam8wTWk0d05EZGFJaXdpYm05MFpTSTZiblZzYkgw'),(24,'DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIzNTYxNTYRWGt8K2c929RXLBcRWQDNE3I_yybne5nMmtr4yju4DwpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTkU0Mk5qRTVXVVZXTlV0Tk5FdFRUVUpZUkRraUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTkU0Mk9EaFFVVGxCUWpsRVdVTkdOVkZFV2pjaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl6T2pVMkxqRTFObG9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA'),(25,'DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIzNTY3ODh5fLDcwABTlLx4GLGxICKgiQfNfLdi77oUlBqQLt1yiApnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTkU1WU5FRkdVamxaV2psQlZ6ZzJUVEpRTmtzaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTkU1WU5VNU9UVkV4TWxsR01FZENRMWc0TUZraUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl6T2pVMkxqYzRPRm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA'),(26,'DIICuwAAAAAACSySMjAyNTA1MjIxMjI1MjI4NTUzaDvTxQEWcULDmWBE1_orRNlmNvoQTHhPn2XtQrX5agpnLm1vamFsb29wggJ0ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTnpsVFJVcENSamROUTBwWFFrbzNWazFSUlVVaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTnpsVFNqaFdVVEJHTlRZek5sZzFXbGRGU0VRaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakkxT2pJeUxqZzFOVm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU5qQXVNVEl6TkNJc0ltTjFjbkpsYm1ONUlqb2lXRmhZSW4xOQ'),(27,'DIICqQAAAAAAD0JAMjAyNTA1MjIxMjI1NDU5MjK3jMDOA7rLlcwgXga-JheQsWkiCtfZHpzF9szI80S4qQpnLm1vamFsb29wggJiZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTjFwSFRUQktTMDFhVGtjMFRWZzVOREpYTnpJaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTjFwSFRrcEtUa2d3TkVVNVZrSkZSMVl3VXpZaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalU2TkRVdU9USXlXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeE1EQWlMQ0pqZFhKeVpXNWplU0k2SWxoWVdDSjlmUQ'),(28,'DIICuwAAAAAACSySMjAyNTA1MjIxMjI1NDYwNjX_rDRUIB4Z28U0pS44b_2Pv52JcfvyrCPVD3fw0ijZ6wpnLm1vamFsb29wggJ0ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT0RCT01UQkxPVkJGUkVGSVFrNHhPRGxHU0RBaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT0RCT01sTlRXak5GVkZCQ1NrVmFSRTFYVjFRaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakkxT2pRMkxqQTJOVm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU5qQXVNVEl6TkNJc0ltTjFjbkpsYm1ONUlqb2lXRmhZSW4xOQ'),(29,'DIICcgAAAAAAD96AMjAyNTA1MjMxMjI0NTQ2MTRUxGCpsR0fYPQ_TZ44ZOhbzxG7NeBgNSUNhywpTKvicApnLm1vamFsb29wggIrZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFPRFpOT1ROVVJGQlhOVFl3TkVoWVdqaFNNVkFpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphT0RaTk4xbFpPVkF6TTBNM1MxZE5SRGszVGtvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdHdZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lJME5ERXlNelExTmpjNE9TSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJazFUU1ZORVRpSXNJbVp6Y0Vsa0lqb2lkR1Z6ZEdsdVozUnZiMnhyYVhSa1puTndJbjE5TENKaGJXOTFiblFpT25zaVkzVnljbVZ1WTNraU9pSllXRmdpTENKaGJXOTFiblFpT2lJeE1EUWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanB1ZFd4c0xDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TTFReE1qb3lORG8xTkM0Mk1UUmFJaXdpYm05MFpTSTZiblZzYkgw'),(30,'DIICcgAAAAAAD5BgMjAyNTA1MjMxMjI1MTI1OTeZuAwyP3wW7uLbzstBdXrXAz7CoGlCbXgcaIwe5MjwCgpnLm1vamFsb29wggIrZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFPRkZSVVVwV1ZFSXdOVXRCTjA0d1NGRktRalVpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphT0ZGUlMwNVJRa1V6UkUxV1VscFRNa3REU2pJaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdHdZWGxsWldaemNDSjlmU3dpY0dGNVpYSWlPbnNpY0dGeWRIbEpaRWx1Wm04aU9uc2ljR0Z5ZEhsSlpGUjVjR1VpT2lJME5ERXlNelExTmpjNE9TSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJazFUU1ZORVRpSXNJbVp6Y0Vsa0lqb2lkR1Z6ZEdsdVozUnZiMnhyYVhSa1puTndJbjE5TENKaGJXOTFiblFpT25zaVkzVnljbVZ1WTNraU9pSllXRmdpTENKaGJXOTFiblFpT2lJeE1ESWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanB1ZFd4c0xDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TTFReE1qb3lOVG94TWk0MU9UZGFJaXdpYm05MFpTSTZiblZzYkgw'),(31,'DIICpgAAAAAAAMNQMjAyNTA1MjIxMjI2MjI4NzjtX6evqJfqtEie5Qr0YS0SYK6ibUbRuketeUPDkRAxdwpnLm1vamFsb29wggJfZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1RSRU9WQTROVUphTlZsRk1qVlNPRWRDVTBZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1RSRVMxWlJSRGd5VUZCWVdqTkZTRU5JTUZFaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF5SWl3aVpuTndTV1FpT2lKd1lYbGxaV1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TWpJdU9EYzRXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA'),(32,'DIICpgAAAAAAAMNQMjAyNTA1MjIxMjI2MjMyOTG0pF_NzQLd6j1r-Zdli8KVPF9Tt8K8UP0wCCqV_dV2qwpnLm1vamFsb29wggJfZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1RSYU9GcFVWa2RDUXpNeE5qaFNVRmRYVURBaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1RSYU9WRTNUbGxHV1RoQ1UwWXlXVU0zUjFZaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TWpNdU1qa3hXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA'),(33,'DIICpwAAAAAACSfAMjAyNTA1MjIxMjI2NDU5MDQASal4Gfel4KruyDAYj-45LJzv749BG54HG6VjYtvh9ApnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1ZSYU5UZzBSbE5XV0ZCVVVVdEtTelpOT1RBaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1ZSYU56TXpVVkUxTlZwQ1VrVldVMUJZUzBvaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TkRVdU9UQTBXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJMk1DSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk'),(34,'DIICvgAAAAAACGRwMjAyNTA1MjIxMjI2NDY0NjbAfN_6hny9ut9wBD9a2A10PMhGQTDsv0flDGpvID-DGwpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1ZaTFVsaFhWRlpDTVRsTE9EQmFWRlpLU2xRaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1ZaTFUwTXdSVnBZV1RBeVJWcEZSVk14UmxnaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pY0dGNVpXVm1jM0FpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lOam8wTmk0ME5qWmFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpVMUlpd2lZM1Z5Y21WdVkza2lPaUpZVkZNaWZYMA'),(35,'DIICpwAAAAAABVcwMjAyNTA1MjIxMjI2NDY5NzK10GshBAhRo113thqUkcUbhyFR_VD9sx1p06A2JbnlKQpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1Zjek4xWkNVRFUxVUZCS01sSkJPVUpRVWpNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1Zjek9ESkxXbE16TlVKTlIwMVpNamxDVGtJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TkRZdU9UY3lXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJek5TSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk'),(36,'DIICpwAAAAAAAw1AMjAyNTA1MjIxMjI2NDc2NjRldvE9RFS-gjYevjPv6mVEP_blKzryGhyR2qBac83svwpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1ZkUVIxcERWMUU0UkRJeE9USTJTRFZRTURFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1ZkUVNGa3hNVmxhVjBkRk56QXhTRGhCVFZZaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEEwSWl3aVpuTndTV1FpT2lKMFpYTjBabk53TWlKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TkRjdU5qWTBXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU1DSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk'),(37,'DIICvgAAAAAABVcwMjAyNTA1MjIxMjI2NDgzMDIZCbVsSSOd8Y8ZzOZYoQJL_yQRWG-Q7BGjP1AYM880ZQpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1ZoRU5rcElPVGROVGtZNFJVUlNOMDB3TVRJaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1ZoRU4wTXdXVkkxUlRSUldscENUall3V2pnaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pZEdWemRHWnpjRElpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lOam8wT0M0ek1ESmFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpNMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA'),(38,'DIICpwAAAAAAA9CQMjAyNTA1MjIxMjI2NDg4OTE1JLXyP4vZsxcweKtznFkkrB_oZ83hH1Y_0HyP1ydR9QpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1Zrd05UUlhXREZUVkVzNFJ6UkJOakZVTmtZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1Zrd05UUlhXREZUVkVzNFJ6UkJOakZVTmtjaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF5SWl3aVpuTndTV1FpT2lKd1lYbGxaV1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNalk2TkRndU9Ea3hXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU5TSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk'),(39,'DIICpwAAAAAACSfAMjAyNTA1MjIxMjI3MzQyMzehs24wIyRO20puoarJr4V8QNx6JyucvvCSPYoMc47HDgpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWpsWlVrdFVTamRPUTBkRFVGSXhXRTQyTkRFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWpsYVVEUTNORnBXTUUxTFJsbzJRVVpEU0ZJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamM2TXpRdU1qTTNXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJMk1DSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk'),(40,'DIICvgAAAAAACGRwMjAyNTA1MjIxMjI3MzUxMDQrWQo_pCxI3KSQHdFlXFBx4MjPvGnW0ICqBdPZ4OUouQpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtJelJVRkROa1JOTVU0MFVVWkZPREZGVVZRaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtJelJqWllUbGhLTmpSQlFqWkVOa2czVWpRaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pY0dGNVpXVm1jM0FpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lOem96TlM0eE1EUmFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpVMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA'),(41,'DIICpwAAAAAABVcwMjAyNTA1MjIxMjI3MzU2MjYO4-fujUYZYjk7KalDFE3v2dpft8gBFjnl-Ez2PG6AkwpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtKTE9GcFRUVXRUU0RZMk5UY3hSREpVUkVvaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtKTE9WWkxXVEZLVmpJek1EVllNekZGUkRJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamM2TXpVdU5qSTJXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJek5TSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk'),(42,'DIICpwAAAAAAAw1AMjAyNTA1MjIxMjI3MzYxMDhBtYk8NafqfMkenMUN21UpELAmqoQoGHbC-6rUlG_Y6wpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtNek5VTkZSVkpXVFVoWk56UlVVRGxMUnpNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtNek5sWTBRamRFTXpkQ1dFaEtSRWN3TmtVaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEEwSWl3aVpuTndTV1FpT2lKMFpYTjBabk53TWlKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamM2TXpZdU1UQTRXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU1DSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk'),(43,'DIICvgAAAAAABVcwMjAyNTA1MjIxMjI3MzY1ODgckBIA7rw51Wz4xLa7c11jcFyNudvLkkNHFMy9_YHpXgpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtOS1drRlNRVVZVTVVkQ1dFaE9NelZGVFZZaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtOTE1ERlJTMEpPTlVOVVIwMHlSMWRMUjFraUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pZEdWemRHWnpjRElpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lOem96Tmk0MU9EaGFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpNMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA'),(44,'DIICpwAAAAAAA9CQMjAyNTA1MjIxMjI3MzcyNzYkcnhmRCZ0TAwBa3e8FokaimSp0UVO2xwWF1XZq9BViApnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUWtRME0wUXhXamxCUWsxWldESTVTMGd3UlVFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUWtRME5qTTFNamRMUkV0VFJVUkJVVU5RU0RNaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF5SWl3aVpuTndTV1FpT2lKd1lYbGxaV1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamM2TXpjdU1qYzJXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU5TSXNJbU4xY25KbGJtTjVJam9pV0ZoWUluMTk'),(45,'DIICpwAAAAAACSfAMjAyNTA1MjIxMjI4MDE5MTKYlsGljczLhSrJvrIzHvJtsXd1I8D_GU2j9F1sIXHjDwpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpVNE1ERlNORTVVVFZkQlExQk9UVmd3TjBvaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpVNE1WWXhSRGs1TmxveFIxWlFSMWhZVTFnaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRFFpTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F5SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF6SWl3aVpuTndTV1FpT2lKMFpYTjBabk53TVNKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamc2TURFdU9URXlXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJMk1DSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk'),(46,'DIICvgAAAAAACGRwMjAyNTA1MjIxMjI4MDI1NTMdCmWVW4vbbojhdcj9BCjx3cykAvt_LWOO_b9bJ2FnLQpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpWWVV6bFVOVFZGTTBaRlVWWTRRME5LVkRRaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpWWVV6bFVOVFZGTTBaRlVWWTRRME5LVkRVaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pY0dGNVpXVm1jM0FpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lPRG93TWk0MU5UTmFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpVMUlpd2lZM1Z5Y21WdVkza2lPaUpZVkZNaWZYMA'),(47,'DIICpwAAAAAABVcwMjAyNTA1MjIxMjI4MDMwNTWBCnIWlF2SphVXCk5io5Kw9no70jMjvGEzWL8_UtJkfQpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpaRVZFcE9SamhRV2xwSU5EVkxUVmswTjFFaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpaRVZrRkRNMGhSU0VkSVYxb3lUVTFXVmxBaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamc2TURNdU1EVTFXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJek5TSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk'),(48,'DIICpwAAAAAAAw1AMjAyNTA1MjIxMjI4MDM2MTOGPXWbQ2U3u_Kc5bIBwkKZaV4aZOktqVnFDq4RLqeV6wpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpaWlFWa3dUa05aVFVaWVVsRTFXVGhOT1RBaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpaWlFrSXlORFJXVmtST1RsTkZTMGMzUzA0aUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEEwSWl3aVpuTndTV1FpT2lKMFpYTjBabk53TWlKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamc2TURNdU5qRXpXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU1DSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk'),(49,'DIICvgAAAAAABVcwMjAyNTA1MjIxMjI4MDU0NThv24EqtW6jMDWBUM2QUCHWq9-YG9GWQf9I3sKV2YGi0ApnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXpoUk5GRlFOVmhLUzBKWVZEaFJRVUZGVmtnaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXpoUk5VRlNVMWxTVTBWV1ExZzVNRU5ZV0ZFaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pZEdWemRHWnpjRElpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lPRG93TlM0ME5UaGFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpNMUlpd2lZM1Z5Y21WdVkza2lPaUpZVkZNaWZYMA'),(50,'DIICpwAAAAAAA9CQMjAyNTA1MjIxMjI4MDU5MzDL9jAuUHmQ8X02amO5Q7-gr7mnpRA1vtK6zMp4ia0ZIQpnLm1vamFsb29wggJgZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphUXprM09VVXpRakl5U3pWSE1UY3dPVmN3UjFNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphUXprM1FVUTBXVmRXVUZkVE5VUlVVMHRXTlVJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNREVpTENKbWMzQkpaQ0k2SW5CaGVXVnlabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF5SWl3aVpuTndTV1FpT2lKd1lYbGxaV1p6Y0NKOWZTd2laWGh3YVhKaGRHbHZiaUk2SWpJd01qVXRNRFV0TWpKVU1USTZNamc2TURVdU9UTXdXaUlzSW1GdGIzVnVkQ0k2ZXlKaGJXOTFiblFpT2lJeU5TSXNJbU4xY25KbGJtTjVJam9pV0ZSVEluMTk'),(51,'DIICYwAAAAAAD0JAMjAyNTA1MjMxMjI3NTYwNzlb87HX_z54swUkVbTudVNwQ2hUqKNha1-F2u78KX-ohwpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFSRWRRV2pKT1VVZEJOMXBLUWpkWVEwUkxNRGtpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphUkZJMlFrZElWbEZJUTFKVE9UYzBOMHM0VFVnaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpVdE1EVXRNak5VTVRJNk1qYzZOVFl1TURjNVdpSXNJbTV2ZEdVaU9tNTFiR3g5'),(52,'DIICYgAAAAAAD0JAMjAyNTA1MjMxMjI4MDYxMTX0v_kehJgE6Rt2lE8oJ72T-kVs2Gs-rDpx1IbpE46WIwpnLm1vamFsb29wggIbZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFSVEUxVTBGTE5qUXpSRlEzVGpOU09GSkNVMDBpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphUlRKUVJGcEtSamsyV0ZRelNFSlNWak5ZVTFNaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0bWVIQmhlV1ZsSW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalEwTVRJek5EVTJOemc1SWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaVRWTkpVMFJPSWl3aVpuTndTV1FpT2lKMGRHdG1lSEJoZVdWeUluMTlMQ0poYlc5MWJuUWlPbnNpWTNWeWNtVnVZM2tpT2lKWVZGTWlMQ0poYlc5MWJuUWlPaUl4TURBaWZTd2lkSEpoYm5OaFkzUnBiMjVVZVhCbElqcHVkV3hzTENKbGVIQnBjbUYwYVc5dUlqb2lNakF5TlMwd05TMHlNMVF4TWpveU9Eb3dOaTR4TVRWYUlpd2libTkwWlNJNmJuVnNiSDA'),(53,'DIICYwAAAAAAD0JAMjAyNTA1MjMxMzQ5MjY5OTNh0wXmKF7nNj-c5VHMhv9gFzwuV-PA7hNnfHIH8_9hcQpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsYzBNbG8xVVZSTFFraExNekJXUjBvd05VZEhRVkFpTENKeGRXOTBaVWxrSWpvaU1ERktWbGMwTXpCYVFsQlNOMEZSVUVVd1VrdE5SMWhPUWpVaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpVdE1EVXRNak5VTVRNNk5EazZNall1T1RreldpSXNJbTV2ZEdVaU9tNTFiR3g5');
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
INSERT INTO `segment` VALUES (1,'timeout',0,'transferStateChange',344,'2025-05-22 12:06:15'),(2,'timeout',0,'fxTransferStateChange',36,'2025-05-22 12:06:15');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlement`
--

LOCK TABLES `settlement` WRITE;
/*!40000 ALTER TABLE `settlement` DISABLE KEYS */;
INSERT INTO `settlement` VALUES (1,'TESTING','2025-05-22 12:25:52',10,1),(2,'TESTING','2025-05-22 12:25:56',12,2),(3,'TESTING','2025-05-22 12:26:41',18,1),(4,'TESTING','2025-05-22 12:27:09',24,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementContentAggregation`
--

LOCK TABLES `settlementContentAggregation` WRITE;
/*!40000 ALTER TABLE `settlementContentAggregation` DISABLE KEYS */;
INSERT INTO `settlementContentAggregation` VALUES (1,1,49,1,1,973.1200,'2025-05-22 12:25:44','CLOSED',NULL),(2,1,17,2,1,-780.1200,'2025-05-22 12:25:44','CLOSED',NULL),(3,1,57,2,1,-201.0000,'2025-05-22 12:25:44','CLOSED',NULL),(4,1,25,2,1,-2.0000,'2025-05-22 12:25:44','CLOSED',NULL),(5,1,33,1,1,200.0000,'2025-05-22 12:25:44','CLOSED',NULL),(6,1,41,2,1,-200.0000,'2025-05-22 12:25:44','CLOSED',NULL),(7,1,9,1,1,10.0000,'2025-05-22 12:25:44','CLOSED',NULL),(8,1,41,1,1,10.0000,'2025-05-22 12:25:44','CLOSED',NULL),(9,1,33,2,1,-10.0000,'2025-05-22 12:25:44','CLOSED',NULL),(16,2,33,1,1,60.0000,'2025-05-22 12:25:49','SETTLED',1),(17,2,41,2,1,-95.0000,'2025-05-22 12:25:49','SETTLED',1),(18,2,9,1,1,35.0000,'2025-05-22 12:25:49','SETTLED',1),(19,2,33,2,1,-35.0000,'2025-05-22 12:25:49','SETTLED',1),(20,2,17,1,1,35.0000,'2025-05-22 12:25:49','SETTLED',1),(21,3,35,1,1,55.0000,'2025-05-22 12:25:49','SETTLED',2),(22,3,19,2,1,-55.0000,'2025-05-22 12:25:49','SETTLED',2),(23,3,43,1,1,20.0000,'2025-05-22 12:25:49','SETTLED',2),(24,3,11,2,1,-45.0000,'2025-05-22 12:25:49','SETTLED',2),(25,3,19,1,1,25.0000,'2025-05-22 12:25:49','SETTLED',2),(31,4,33,1,1,115.0000,'2025-05-22 12:26:38','SETTLED',3),(32,4,41,2,1,-95.0000,'2025-05-22 12:26:38','SETTLED',3),(33,4,17,2,1,-55.0000,'2025-05-22 12:26:38','SETTLED',3),(34,4,9,1,1,35.0000,'2025-05-22 12:26:38','SETTLED',3),(35,4,33,2,1,-35.0000,'2025-05-22 12:26:38','SETTLED',3),(36,4,41,1,1,20.0000,'2025-05-22 12:26:38','SETTLED',3),(37,4,9,2,1,-45.0000,'2025-05-22 12:26:38','SETTLED',3),(38,4,17,1,1,60.0000,'2025-05-22 12:26:38','SETTLED',3),(46,5,35,1,1,115.0000,'2025-05-22 12:27:06','SETTLED',4),(47,5,43,2,1,-95.0000,'2025-05-22 12:27:06','SETTLED',4),(48,5,19,2,1,-55.0000,'2025-05-22 12:27:06','SETTLED',4),(49,5,11,1,1,35.0000,'2025-05-22 12:27:06','SETTLED',4),(50,5,35,2,1,-35.0000,'2025-05-22 12:27:06','SETTLED',4),(51,5,43,1,1,20.0000,'2025-05-22 12:27:06','SETTLED',4),(52,5,11,2,1,-45.0000,'2025-05-22 12:27:06','SETTLED',4),(53,5,19,1,1,60.0000,'2025-05-22 12:27:06','SETTLED',4);
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
INSERT INTO `settlementDelay` VALUES (1,'IMMEDIATE',NULL,1,'2025-05-22 12:04:07'),(2,'DEFERRED',NULL,1,'2025-05-22 12:04:07');
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
INSERT INTO `settlementGranularity` VALUES (1,'GROSS',NULL,1,'2025-05-22 12:04:07'),(2,'NET',NULL,1,'2025-05-22 12:04:07');
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
INSERT INTO `settlementInterchange` VALUES (1,'BILATERAL',NULL,1,'2025-05-22 12:04:07'),(2,'MULTILATERAL',NULL,1,'2025-05-22 12:04:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementParticipantCurrency`
--

LOCK TABLES `settlementParticipantCurrency` WRITE;
/*!40000 ALTER TABLE `settlementParticipantCurrency` DISABLE KEYS */;
INSERT INTO `settlementParticipantCurrency` VALUES (1,1,33,25.0000,'2025-05-22 12:25:52',35,'01JVVZA7FQJ79XDQ8VMH2JCVEK'),(2,1,41,-95.0000,'2025-05-22 12:25:52',36,'01JVVZA7G81WZGW7EJERHXX0SB'),(3,1,9,35.0000,'2025-05-22 12:25:52',33,'01JVVZA7EESE9FZW4CRPN785AV'),(4,1,17,35.0000,'2025-05-22 12:25:52',34,'01JVVZA7F78539T8W8BTH80D33'),(8,2,35,55.0000,'2025-05-22 12:25:56',39,'01JVVZAB6B6S28K7PARE12T23T'),(9,2,19,-30.0000,'2025-05-22 12:25:56',38,'01JVVZAB5T7EQBP85XG97K7NTC'),(10,2,43,20.0000,'2025-05-22 12:25:56',40,'01JVVZAB7Y0M1FN8N7QXTQ6HXM'),(11,2,11,-45.0000,'2025-05-22 12:25:56',37,'01JVVZAB4TNRZ5KPGZEKSAAJTE'),(15,3,33,80.0000,'2025-05-22 12:26:41',59,'01JVVZBKHP5FZKVE2150AC5AZR'),(16,3,41,-75.0000,'2025-05-22 12:26:41',60,'01JVVZBKJ3HYF6ESM6MZGYD016'),(17,3,17,5.0000,'2025-05-22 12:26:41',58,'01JVVZBKH9W4KE5J9EXYB1GR6G'),(18,3,9,-10.0000,'2025-05-22 12:26:41',57,'01JVVZBKGMWB0DCZ3CS281CEKA'),(22,4,35,80.0000,'2025-05-22 12:27:09',79,'01JVVZCFHP7T16AVH2NRJBQJVV'),(23,4,43,-75.0000,'2025-05-22 12:27:09',80,'01JVVZCFJCQWYWZF7PT02BGJQF'),(24,4,19,5.0000,'2025-05-22 12:27:09',78,'01JVVZCFH699BKP2TB3DJP63MZ'),(25,4,11,-10.0000,'2025-05-22 12:27:09',77,'01JVVZCFGNCZQ8XJYW2MAGHHBW');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementParticipantCurrencyStateChange`
--

LOCK TABLES `settlementParticipantCurrencyStateChange` WRITE;
/*!40000 ALTER TABLE `settlementParticipantCurrencyStateChange` DISABLE KEYS */;
INSERT INTO `settlementParticipantCurrencyStateChange` VALUES (1,1,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:25:52'),(2,2,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:25:52'),(3,3,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:25:52'),(4,4,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:25:52'),(5,8,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:25:56'),(6,9,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:25:56'),(7,10,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:25:56'),(8,11,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:25:56'),(9,3,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:25:58'),(10,4,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:25:59'),(11,1,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:25:59'),(12,2,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:25:59'),(13,11,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:26:02'),(14,9,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:26:02'),(15,8,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:26:02'),(16,10,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:26:02'),(17,3,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:06'),(18,4,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:06'),(19,1,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:06'),(20,2,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:06'),(21,11,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:08'),(22,9,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:08'),(23,8,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:09'),(24,10,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:09'),(25,3,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:11'),(26,4,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:11'),(27,1,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:11'),(28,2,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:11'),(29,11,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:14'),(30,9,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:14'),(31,8,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:14'),(32,10,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:14'),(33,3,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:17'),(34,4,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:17'),(35,1,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:17'),(36,2,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:17'),(37,11,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:20'),(38,9,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:20'),(39,8,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:20'),(40,10,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:20'),(41,15,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:26:41'),(42,16,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:26:41'),(43,17,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:26:41'),(44,18,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:26:41'),(45,18,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:26:44'),(46,17,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:26:44'),(47,15,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:26:44'),(48,16,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:26:44'),(49,18,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:46'),(50,17,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:46'),(51,15,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:47'),(52,16,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:26:47'),(53,18,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:49'),(54,17,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:49'),(55,15,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:49'),(56,16,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:26:49'),(57,18,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:52'),(58,17,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:52'),(59,15,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:52'),(60,16,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:26:52'),(61,22,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:27:09'),(62,23,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:27:09'),(63,24,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:27:09'),(64,25,'PENDING_SETTLEMENT','TESTING',NULL,'2025-05-22 12:27:09'),(65,25,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:27:12'),(66,24,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:27:12'),(67,22,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:27:12'),(68,23,'PS_TRANSFERS_RECORDED','Transfers recorded for payer',NULL,'2025-05-22 12:27:12'),(69,25,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:27:16'),(70,24,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:27:16'),(71,22,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:27:16'),(72,23,'PS_TRANSFERS_RESERVED','Transfers reserved',NULL,'2025-05-22 12:27:16'),(73,25,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:27:19'),(74,24,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:27:19'),(75,22,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:27:19'),(76,23,'PS_TRANSFERS_COMMITTED','Transfers committed',NULL,'2025-05-22 12:27:19'),(77,25,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:27:22'),(78,24,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:27:22'),(79,22,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:27:22'),(80,23,'SETTLED','Transfers settled for payer',NULL,'2025-05-22 12:27:22');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementSettlementWindow`
--

LOCK TABLES `settlementSettlementWindow` WRITE;
/*!40000 ALTER TABLE `settlementSettlementWindow` DISABLE KEYS */;
INSERT INTO `settlementSettlementWindow` VALUES (1,1,2,'2025-05-22 12:25:52'),(2,2,2,'2025-05-22 12:25:56'),(3,3,3,'2025-05-22 12:26:41'),(4,4,4,'2025-05-22 12:27:09');
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
INSERT INTO `settlementState` VALUES ('ABORTED','ABORTED','Final state when the settlement is not possible.',1,'2025-05-22 12:04:07'),('PENDING_SETTLEMENT','PENDING_SETTLEMENT','The net settlement report for this window has been taken, with the parameter set to indicate that settlement is to be processed.',1,'2025-05-22 12:04:07'),('PS_TRANSFERS_COMMITTED','PS_TRANSFERS_COMMITTED','All the credit entries for the MLNS transfers are committed. An identifier might be received and recorded from the Settlement bank to allow reconciliation.',1,'2025-05-22 12:04:07'),('PS_TRANSFERS_RECORDED','PS_TRANSFERS_RECORDED','Record transfer entries against the Position Account and the Multi-lateral Net Settlement Account, these are the \"multi-lateral net  settlement transfers\" (MLNS transfers). An identifier might be provided to be past to the reference bank.',1,'2025-05-22 12:04:07'),('PS_TRANSFERS_RESERVED','PS_TRANSFERS_RESERVED','All the debit entries for the MLNS transfers are reserved.',1,'2025-05-22 12:04:07'),('SETTLED','SETTLED','When all outstanding accounts are SETTLED, the entire Settlement is moved to SETTLED.',1,'2025-05-22 12:04:07'),('SETTLING','SETTLING','If all accounts are not yet SETTLED, the Status of the settlement is moved to SETTLING. Note: applies only on settlement level.',1,'2025-05-22 12:04:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementStateChange`
--

LOCK TABLES `settlementStateChange` WRITE;
/*!40000 ALTER TABLE `settlementStateChange` DISABLE KEYS */;
INSERT INTO `settlementStateChange` VALUES (1,1,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:25:52'),(2,2,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:25:56'),(3,1,'PS_TRANSFERS_RECORDED','All settlement accounts are PS_TRANSFERS_RECORDED','2025-05-22 12:25:59'),(4,2,'PS_TRANSFERS_RECORDED','All settlement accounts are PS_TRANSFERS_RECORDED','2025-05-22 12:26:02'),(5,1,'PS_TRANSFERS_RESERVED','All settlement accounts are PS_TRANSFERS_RESERVED','2025-05-22 12:26:06'),(6,2,'PS_TRANSFERS_RESERVED','All settlement accounts are PS_TRANSFERS_RESERVED','2025-05-22 12:26:09'),(7,1,'PS_TRANSFERS_COMMITTED','All settlement accounts are PS_TRANSFERS_COMMITTED','2025-05-22 12:26:11'),(8,2,'PS_TRANSFERS_COMMITTED','All settlement accounts are PS_TRANSFERS_COMMITTED','2025-05-22 12:26:14'),(9,1,'SETTLING','Some settlement accounts are SETTLED','2025-05-22 12:26:17'),(10,1,'SETTLED','All settlement accounts are SETTLED','2025-05-22 12:26:17'),(11,2,'SETTLING','Some settlement accounts are SETTLED','2025-05-22 12:26:20'),(12,2,'SETTLED','All settlement accounts are SETTLED','2025-05-22 12:26:20'),(13,3,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:26:41'),(14,3,'PS_TRANSFERS_RECORDED','All settlement accounts are PS_TRANSFERS_RECORDED','2025-05-22 12:26:44'),(15,3,'PS_TRANSFERS_RESERVED','All settlement accounts are PS_TRANSFERS_RESERVED','2025-05-22 12:26:47'),(16,3,'PS_TRANSFERS_COMMITTED','All settlement accounts are PS_TRANSFERS_COMMITTED','2025-05-22 12:26:49'),(17,3,'SETTLING','Some settlement accounts are SETTLED','2025-05-22 12:26:52'),(18,3,'SETTLED','All settlement accounts are SETTLED','2025-05-22 12:26:52'),(19,4,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:27:09'),(20,4,'PS_TRANSFERS_RECORDED','All settlement accounts are PS_TRANSFERS_RECORDED','2025-05-22 12:27:12'),(21,4,'PS_TRANSFERS_RESERVED','All settlement accounts are PS_TRANSFERS_RESERVED','2025-05-22 12:27:16'),(22,4,'PS_TRANSFERS_COMMITTED','All settlement accounts are PS_TRANSFERS_COMMITTED','2025-05-22 12:27:19'),(23,4,'SETTLING','Some settlement accounts are SETTLED','2025-05-22 12:27:22'),(24,4,'SETTLED','All settlement accounts are SETTLED','2025-05-22 12:27:22');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindow`
--

LOCK TABLES `settlementWindow` WRITE;
/*!40000 ALTER TABLE `settlementWindow` DISABLE KEYS */;
INSERT INTO `settlementWindow` VALUES (1,'initial window','2025-05-22 12:04:07',4),(2,'string','2025-05-22 12:25:39',9),(3,'string','2025-05-22 12:25:49',14),(4,'string','2025-05-22 12:26:38',19),(5,'string','2025-05-22 12:27:06',16);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindowContent`
--

LOCK TABLES `settlementWindowContent` WRITE;
/*!40000 ALTER TABLE `settlementWindowContent` DISABLE KEYS */;
INSERT INTO `settlementWindowContent` VALUES (1,1,1,'XXX','2025-05-22 12:25:44',1,NULL,1),(2,2,1,'XXX','2025-05-22 12:25:49',7,1,1),(3,2,1,'XTS','2025-05-22 12:25:49',8,2,2),(4,3,1,'XXX','2025-05-22 12:26:38',11,3,1),(5,4,1,'XTS','2025-05-22 12:27:06',14,4,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindowContentStateChange`
--

LOCK TABLES `settlementWindowContentStateChange` WRITE;
/*!40000 ALTER TABLE `settlementWindowContentStateChange` DISABLE KEYS */;
INSERT INTO `settlementWindowContentStateChange` VALUES (1,1,'CLOSED','string','2025-05-22 12:25:44'),(2,2,'CLOSED','string','2025-05-22 12:25:49'),(3,3,'CLOSED','string','2025-05-22 12:25:49'),(5,2,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:25:52'),(6,3,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:25:56'),(7,2,'SETTLED','All content aggregation records are SETTLED','2025-05-22 12:26:17'),(8,3,'SETTLED','All content aggregation records are SETTLED','2025-05-22 12:26:19'),(9,4,'CLOSED','string','2025-05-22 12:26:38'),(10,4,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:26:41'),(11,4,'SETTLED','All content aggregation records are SETTLED','2025-05-22 12:26:52'),(12,5,'CLOSED','string','2025-05-22 12:27:06'),(13,5,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:27:09'),(14,5,'SETTLED','All content aggregation records are SETTLED','2025-05-22 12:27:21');
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
INSERT INTO `settlementWindowState` VALUES ('ABORTED','ABORTED','Window returned to this state when the settlement was not possible. This window may now be included in a future settlement.',1,'2025-05-22 12:04:07'),('CLOSED','CLOSED','Settlement Window is not accepting any additional transfers. All new transfers are being allocated to the OPEN Settlement Window.',1,'2025-05-22 12:04:07'),('FAILED','FAILED','Used when close window processing failed and all retries have been exhausted.',1,'2025-05-22 12:04:07'),('OPEN','OPEN','Current window into which Fulfilled transfers are being allocated. Only one window should be open at a time.',1,'2025-05-22 12:04:07'),('PENDING_SETTLEMENT','PENDING_SETTLEMENT','The net settlement report for this window has been taken, with the parameter set to indicate that settlement is to be processed.',1,'2025-05-22 12:04:07'),('PROCESSING','PROCESSING','Intermediate state when closing a window.',1,'2025-05-22 12:04:07'),('SETTLED','SETTLED','The Hub Operator/Settlement Bank has confirmed that all the participants that engaged in the settlement window have now settled their payments in accordance with the net settlement report.',1,'2025-05-22 12:04:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindowStateChange`
--

LOCK TABLES `settlementWindowStateChange` WRITE;
/*!40000 ALTER TABLE `settlementWindowStateChange` DISABLE KEYS */;
INSERT INTO `settlementWindowStateChange` VALUES (1,1,'OPEN','initial window','2025-05-22 12:04:07'),(2,1,'PROCESSING','string','2025-05-22 12:25:39'),(3,2,'OPEN','string','2025-05-22 12:25:39'),(4,1,'CLOSED','string','2025-05-22 12:25:44'),(5,2,'PROCESSING','string','2025-05-22 12:25:49'),(6,3,'OPEN','string','2025-05-22 12:25:49'),(7,2,'CLOSED','string','2025-05-22 12:25:49'),(8,2,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:25:52'),(9,2,'SETTLED','All settlement window content is SETTLED','2025-05-22 12:26:19'),(10,3,'PROCESSING','string','2025-05-22 12:26:38'),(11,4,'OPEN','string','2025-05-22 12:26:38'),(12,3,'CLOSED','string','2025-05-22 12:26:38'),(13,3,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:26:41'),(14,3,'SETTLED','All settlement window content is SETTLED','2025-05-22 12:26:52'),(15,4,'PROCESSING','string','2025-05-22 12:27:06'),(16,5,'OPEN','string','2025-05-22 12:27:06'),(17,4,'CLOSED','string','2025-05-22 12:27:06'),(18,4,'PENDING_SETTLEMENT','TESTING','2025-05-22 12:27:09'),(19,4,'SETTLED','All settlement window content is SETTLED','2025-05-22 12:27:21');
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
INSERT INTO `transactionInitiator` VALUES (1,'PAYER','Sender of funds is initiating the transaction. The account to send from is either owned by the Payer or is connected to the Payer in some way','2025-05-22 12:04:07'),(2,'PAYEE','Recipient of the funds is initiating the transaction by sending a transaction request. The Payer must approve the transaction, either automatically by a pre-generated OTP or by pre-approval of the Payee, or manually by approving on their own Device','2025-05-22 12:04:07');
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
INSERT INTO `transactionInitiatorType` VALUES (1,'CONSUMER','Consumer is the initiator of the transaction','2025-05-22 12:04:07'),(2,'AGENT','Agent is the initiator of the transaction','2025-05-22 12:04:07'),(3,'BUSINESS','Business is the initiator of the transaction','2025-05-22 12:04:07'),(4,'DEVICE','Device is the initiator of the transaction','2025-05-22 12:04:07');
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
INSERT INTO `transactionReference` VALUES ('01JVVYYNASE5P0RW5XK8TNQYT7','01JVVYYNAGRX8A87APEZAHMPW4','2025-05-22 12:19:42'),('01JVVYZ9M8GJ2E6NDJFRVHZTE5','01JVVYZ9M48RCXCKJMC4EXCX5K','2025-05-22 12:20:00'),('01JVVYZJSBK68PY2YXHV4Q78V3','01JVVYZJS95D17DHG63KJP41RE','2025-05-22 12:20:09'),('01JVVYZTDKB6SGRY98ZJPKXZF6','01JVVYZTDJDJP5RRF374CJMBH1','2025-05-22 12:20:17'),('01JVVZ06893Q0H73NX30HCESHR','01JVVZ0686X5RD5NWY5XQ308DJ','2025-05-22 12:20:29'),('01JVVZ0BH7R508BKGCE5WABEBT','01JVVZ0BH6ZDEBSTQ6V871T0EX','2025-05-22 12:20:35'),('01JVVZ0FQYDR1E597MMG006A34','01JVVZ0FQX7Y507N5QGRYHHE75','2025-05-22 12:20:39'),('01JVVZ0SBFX5M7B5M1FQTZ2DSE','01JVVZ0SB967KPXVPF4G634MSH','2025-05-22 12:20:49'),('01JVVZ0WRHRVJKS2FJ3Y37CH1Q','01JVVZ0WRGBZ7WXN2RJB5XRGP6','2025-05-22 12:20:52'),('01JVVZ1R2TH5BCDN98FE0Y6NWB','01JVVZ1R2Q0KK2CXM4A5G2AFE3','2025-05-22 12:21:20'),('01JVVZ1TZS9H0RQVFP43PGZ8BB','01JVVZ1TZR84YNZAYCS223C4C8','2025-05-22 12:21:23'),('01JVVZ221NER7VFNEF8FM5JTPT','01JVVZ221K3RPRD8HKXP2334E1','2025-05-22 12:21:31'),('01JVVZ2AES2FXQYK192KDQHME7','01JVVZ2AEQZYANJW6YP47CMRBZ','2025-05-22 12:21:39'),('01JVVZ2BQCZDQTKCEZ5XBFKPFQ','01JVVZ2BQBQDTGB5W34AP0X9ZH','2025-05-22 12:21:40'),('01JVVZ2M8ZYZ3C6RNVNWK5GGDR','01JVVZ2M8X7QG9ZB6BFP4S4F63','2025-05-22 12:21:50'),('01JVVZ2V83SQFDK3VW0VYS33EF','01JVVZ2V8163ZGTS12NDTV4VFZ','2025-05-22 12:21:57'),('01JVVZ3066XG1TGDSS1ZKVXJCH','01JVVZ30647ARDGHYH04VHNAAV','2025-05-22 12:22:01'),('01JVVZ328M7WQJV988ES7C4WVB','01JVVZ328JY13YNAXQGPNW7M6R','2025-05-22 12:22:03'),('01JVVZ3J8WD4XBANQ8DC4FGG8P','01JVVZ3J8TP5Q708QXPYYNZ50M','2025-05-22 12:22:20'),('01JVVZ3VGJNN1BY4NK6NWG1FED','01JVVZ3VNMNKJAD467AQYS2WSC','2025-05-22 12:22:29'),('01JVVZ3X9BFSJH1BVHNCZKE14R','01JVVZ3XKT34C4XN84ZN46ET4X','2025-05-22 12:22:31'),('01JVVZ3Y9BVY4W8GF8WDT0N05R','01JVVZ3Y99KV6M4EZMYD55VQJJ','2025-05-22 12:22:34'),('01JVVZ445N2K4GE2DF3MNZVY9R','01JVVZ445C16K3PTE1R9QQZS3V','2025-05-22 12:22:41'),('01JVVZ4N688PQ9AB9DYCF5QDZ7','01JVVZ4N6619YEV5KM4KSMBXD9','2025-05-22 12:22:56'),('01JVVZ4NX5NNMQ12YF0GBCX80Y','01JVVZ4NX4AFR9YZ9AW86M2P6K','2025-05-22 12:22:56'),('01JVVZ79SJ8VQ0F5636X5ZWEHD','01JVVZ79SEJBF7MCJWBJ7VMQEE','2025-05-22 12:24:22'),('01JVVZ7SC03SVGMXEERGWS0T6E','01JVVZ7SBZXQDH3ER3GQ0SVY80','2025-05-22 12:24:39'),('01JVVZ7ZGNJJNH04E9VBEGV0S6','01JVVZ7ZGM0JKMZNG4MX942W72','2025-05-22 12:24:45'),('01JVVZ80N2SSZ3ETPBJEZDMWWT','01JVVZ80N10K9PEDAHBN189FH0','2025-05-22 12:24:46'),('01JVVZ86M93TDPW5604HXZ8R1P','01JVVZ86M7YY9P33C7KWMD97NJ','2025-05-22 12:24:54'),('01JVVZ8QQQJVTB05KA7N0HQJB5','01JVVZ8QQKNQBE3DMVRZS2KCJ2','2025-05-22 12:25:12'),('01JVVZ94DKVQD82PPXZ3EHCH0Q','01JVVZ94D9P85BZ5YE25R8GBSF','2025-05-22 12:25:22'),('01JVVZ94Z9Q7NYFY8BSF2YC7GV','01JVVZ94Z8ZTVGBC3168RPWWP0','2025-05-22 12:25:23'),('01JVVZ9TZ733QQ55ZBREVSPXKJ','01JVVZ9TZ584FSVXPTQKJK6M90','2025-05-22 12:25:45'),('01JVVZ9VKSC0EZXY02EZEES1FX','01JVVZ9VKRXWTVB19K80ZTVJJT','2025-05-22 12:25:46'),('01JVVZ9W382KZS35BMGMY29BNB','01JVVZ9W37VBP55PPJ2RA9BPR3','2025-05-22 12:25:46'),('01JVVZ9WPHY11YZWGE701H8AMV','01JVVZ9WPGZCWQ8D21926H5P01','2025-05-22 12:25:47'),('01JVVZ9XD7C0YR5E4QZZBN60Z8','01JVVZ9XD6JH97MNF8EDR7M012','2025-05-22 12:25:48'),('01JVVZ9Y054WX1STK8G4A61T6G','01JVVZ9Y054WX1STK8G4A61T6F','2025-05-22 12:25:48'),('01JVVZB9ZP474ZV0MKFZ6AFCHR','01JVVZB9YRKTJ7NCGCPR1XN641','2025-05-22 12:26:34'),('01JVVZBB3F6XNXJ64AB6D6H7R4','01JVVZBB3EAC6DM1N4QFE81EQT','2025-05-22 12:26:35'),('01JVVZBBK9VKY1JV2305X31ED2','01JVVZBBK8ZSMKSH66571D2TDJ','2025-05-22 12:26:35'),('01JVVZBC36V4B7D37BXHJDG06E','01JVVZBC35CEERVMHY74TP9KG3','2025-05-22 12:26:36'),('01JVVZBCK01QKBN5CTGM2GWKGY','01JVVZBCJZARAET1GBXHN35EMV','2025-05-22 12:26:36'),('01JVVZBD463527KDKSEDAQCPH3','01JVVZBD43D1Z9ABMYX29KH0EA','2025-05-22 12:26:37'),('01JVVZC581V1D996Z1GVPGXXSX','01JVVZC5801R4NTMWACPNMX07J','2025-05-22 12:27:01'),('01JVVZC5XS9T55E3FEQV8CCJT5','01JVVZC5XS9T55E3FEQV8CCJT4','2025-05-22 12:27:02'),('01JVVZC6DVAC3HQHGHWZ2MMVVP','01JVVZC6DTJNF8PZZH45KMY47Q','2025-05-22 12:27:03'),('01JVVZC6YBB244VVDNNSEKG7KN','01JVVZC6YAY0NCYMFXRQ5Y8M90','2025-05-22 12:27:03'),('01JVVZC8Q5ARSYRSEVCX90CXXQ','01JVVZC8Q4QP5XJKBXT8QAAEVH','2025-05-22 12:27:05'),('01JVVZC97AD4YWVPWS5DTSKV5B','01JVVZC979E3B22K5G1709W0GS','2025-05-22 12:27:05'),('01JVVZDGPZ2NQGA7ZJB7XCDK09','01JVVZDR6BGHVQHCRS9747K8MH','2025-05-22 12:27:55'),('01JVVZE15SAK643DT7N3R8RBSM','01JVVZE2PDZJF96XT3HBRV3XSS','2025-05-22 12:28:05'),('01JVW42Z5QTKBHK30VGJ05GGAP','01JVW430ZBPR7AQPE0RKMGXNB5','2025-05-22 13:49:26');
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
INSERT INTO `transactionScenario` VALUES (1,'TRANSFER','Used for performing a P2P (Peer to Peer, or Consumer to Consumer) transaction','2025-05-22 12:04:07'),(2,'DEPOSIT','Used for performing a Cash-In (deposit) transaction. In a normal scenario, electronic funds are transferred from a Business account to a Consumer account, and physical cash is given from the Consumer to the Business User','2025-05-22 12:04:07'),(3,'WITHDRAWAL','Used for performing a Cash-Out (withdrawal) transaction. In a normal scenario, electronic funds are transferred from a Consumer’s account to a Business account, and physical cash is given from the Business User to the Consumer','2025-05-22 12:04:07'),(4,'PAYMENT','Usually used for performing a transaction from a Consumer to a Merchant or Organization, but could also be for a B2B (Business to Business) payment. The transaction could be online for a purchase in an Internet store, in a physical store where both the Consumer and Business User are present, a bill payment, a donation, and so on','2025-05-22 12:04:07'),(5,'REFUND','Used for performing a refund of transaction','2025-05-22 12:04:07');
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
INSERT INTO `transfer` VALUES ('01JVVYYNASE5P0RW5XK8TNQYT7',100.0000,'XXX','5ejo8LE3SVfYvoQjmzcr1X-HSlLBgjaloUl-lvfKX74','2025-05-22 12:20:42','2025-05-22 12:19:50'),('01JVVYZ9M8GJ2E6NDJFRVHZTE5',100.0000,'XXX','sYiAltMtZnMKjAfDt_FP8Pg02fMwSBHdLKpt2tKRe1c','2025-05-22 12:21:01','2025-05-22 12:20:01'),('01JVVYZJSBK68PY2YXHV4Q78V3',100.0000,'XXX','AWtVklAmMlldpjvWuFJ4D_jJ5CLf1g00a6lXXyKemBs','2025-05-22 12:21:10','2025-05-22 12:20:10'),('01JVVYZK0NQNFT3NV7QVS9APYG',5000.0000,'INR','0','2025-05-27 12:20:10','2025-05-22 12:20:10'),('01JVVYZTDKB6SGRY98ZJPKXZF6',100.0000,'XXX','Ku_Xv3oW-sosKxi1WomK1ohzk1aetpSsXa4EePL0YNw','2025-05-22 12:21:18','2025-05-22 12:20:18'),('01JVVZ06893Q0H73NX30HCESHR',100.0000,'XXX','wLk-H4WPw-rlw9fR0uKTrk0t6FcMNors7GRU-WAiWtQ','2025-05-22 12:21:30','2025-05-22 12:20:30'),('01JVVZ0BH7R508BKGCE5WABEBT',100.0000,'XXX','olWwcl-7wfu_w0uJa7rN1KCUG6tPzkX7-TrTxmHvpOo','2025-05-23 12:20:37','2025-05-22 12:20:37'),('01JVVZ0FQYDR1E597MMG006A34',1.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:20:42','2025-05-22 12:20:39'),('01JVVZ0N64JM0PP084VPM2AKH4',5000.0000,'INR','0','2025-05-27 12:20:45','2025-05-22 12:20:45'),('01JVVZ0SBFX5M7B5M1FQTZ2DSE',100.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:20:50','2025-05-22 12:20:49'),('01JVVZ0WRHRVJKS2FJ3Y37CH1Q',100.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:20:55','2025-05-22 12:20:53'),('01JVVZ18EYKN9QETM9DJJZZ151',100.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:21:07','2025-05-22 12:21:04'),('01JVVZ1BQCF077ADV07PPYK3HS',105.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:21:10','2025-05-22 12:21:08'),('01JVVZ1R2TH5BCDN98FE0Y6NWB',100.0000,'XXX','TfOTKY6xrP1Yr9CINqi3yXbuacGyBzHRCrXn2Rx4ERk','2025-05-22 12:22:21','2025-05-22 12:21:21'),('01JVVZ1TZS9H0RQVFP43PGZ8BB',1.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:22:24','2025-05-22 12:21:24'),('01JVVZ221NER7VFNEF8FM5JTPT',1.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:22:31','2025-05-22 12:21:31'),('01JVVZ2AES2FXQYK192KDQHME7',1.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:22:40','2025-05-22 12:21:40'),('01JVVZ2BQCZDQTKCEZ5XBFKPFQ',1.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:22:41','2025-05-22 12:21:41'),('01JVVZ2E7NS5FY74A42ZYWZ9D3',100.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:22:47','2025-05-22 12:21:47'),('01JVVZ2M8ZYZ3C6RNVNWK5GGDR',100.0000,'XXX','lOcictnUw85WpoEzc3KAKm3NgiYXfNPFA0Jbd5dRdow','2025-05-22 12:22:51','2025-05-22 12:21:51'),('01JVVZ2R9K46GP3JP4RPBEDXDC',100.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:22:55','2025-05-22 12:21:54'),('01JVVZ2V83SQFDK3VW0VYS33EF',100.0000,'XXX','u0hopp09mLhbl1khXQenKygrPTNoBdNHOeICU18SuN0','2025-05-22 12:22:58','2025-05-22 12:22:00'),('01JVVZ3066XG1TGDSS1ZKVXJCH',5298.0000,'XXX','yVoMj1-H-qcyIWOGFn7fhENBnnojkACE7h7PdezNvBU','2025-05-22 12:23:02','2025-05-22 12:22:02'),('01JVVZ328M7WQJV988ES7C4WVB',3299.0000,'XXX','prjJJyt0YxnnTJVLoRBTsRkbqcwfmM4iJcGy0QwITHQ','2025-05-22 12:23:04','2025-05-22 12:22:04'),('01JVVZ33NPEG3HZ1MDRQ1ARK3K',10.0000,'XXX','0','2025-05-27 12:22:05','2025-05-22 12:22:05'),('01JVVZ36A87NNR50QJ9EX5YPNW',10.0000,'XXX','0','2025-05-27 12:22:08','2025-05-22 12:22:08'),('01JVVZ3DMJ12FT1SJBV4A5EDY8',10.0000,'XXX','0','2025-05-27 12:22:16','2025-05-22 12:22:16'),('01JVVZ3J8WD4XBANQ8DC4FGG8P',10.0000,'XXX','CByNQiGZwvNPQ5Gz7xVR2zKU9Xdhk55lEWYHUV01gZU','2025-05-22 12:23:21','2025-05-22 12:22:21'),('01JVVZ3VGJNN1BY4NK6NWG1FED',10.0000,'XXX','PB5Cd27gcO-L9OaPZrd7Mhl44oWjVjh8eRCs0zi83Vc','2025-05-22 12:23:30','2025-05-22 12:22:30'),('01JVVZ3X9BFSJH1BVHNCZKE14R',10.0000,'XXX','8OmnOC6D0iaQLk1eSWvtN4l5FNBe40OThV9mhL7O4jE','2025-05-22 12:23:32','2025-05-22 12:22:32'),('01JVVZ3Y9BVY4W8GF8WDT0N05R',101.0000,'XXX','-lRcsFCkP-rIkyN5C9dZ2dI15KALJcmFxd4VR9dBDew','2025-05-23 12:22:34','2025-05-22 12:22:34'),('01JVVZ445N2K4GE2DF3MNZVY9R',103.0000,'XXX','HiMd-Nxn778acqKPtdv6JDiaZiZ4SxxPz7e-qu2El9U','2025-05-23 12:22:42','2025-05-22 12:22:42'),('01JVVZ4NX5NNMQ12YF0GBCX80Y',100.0000,'XXX','eXyw3MAAU5S8eBixsSAioIkHzXy3Yu-6FJQakC7dcog','2025-05-22 12:23:57','2025-05-22 12:22:57'),('01JVVZ72MA0X195WQSYWTCWZHK',100.0000,'XXX','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:34:15','2025-05-22 12:24:15'),('01JVVZ80N2SSZ3ETPBJEZDMWWT',60.1234,'XXX','_6w0VCAeGdvFNKUuOG_9j7-diXH78qwj1Q938NIo2es','2025-05-22 12:25:46','2025-05-22 12:24:51'),('01JVVZ86M93TDPW5604HXZ8R1P',104.0000,'XXX','VMRgqbEdH2D0P02eOGToW88RuzXgYDUlDYcsKUyr4nA','2025-05-23 12:24:55','2025-05-22 12:24:55'),('01JVVZ8QQQJVTB05KA7N0HQJB5',102.0000,'XXX','mbgMMj98Fu7i287LQXV61wM-wqBpQm14HGiMHuTI8Ao','2025-05-23 12:25:13','2025-05-22 12:25:16'),('01JVVZ94DKVQD82PPXZ3EHCH0Q',5.0000,'XXX','7V-nr6iX6rRInuUK9GEtEmCuom1G0bpHrXlDw5EQMXc','2025-05-22 12:26:23','2025-05-22 12:25:23'),('01JVVZ9TZ733QQ55ZBREVSPXKJ',60.0000,'XXX','AEmpeBn3peCq7sgwGI_uOSyc7--PQRueBxulY2Lb4fQ','2025-05-22 12:26:46','2025-05-22 12:25:46'),('01JVVZ9VKSC0EZXY02EZEES1FX',55.0000,'XTS','wHzf-oZ8vbrfcAQ_WtgNdDzIRkEw7L9H5QxqbyA_gxs','2025-05-22 12:26:46','2025-05-22 12:25:46'),('01JVVZ9W382KZS35BMGMY29BNB',35.0000,'XXX','tdBrIQQIUaNdd7YalJHFG4chUf1Q_bMdadOgNiW55Sk','2025-05-22 12:26:47','2025-05-22 12:25:47'),('01JVVZ9WPHY11YZWGE701H8AMV',20.0000,'XTS','ZXbxPURUvoI2Hr4z7-plRD_25Ss68hockdqgWnPN7L8','2025-05-22 12:26:48','2025-05-22 12:25:47'),('01JVVZ9XD7C0YR5E4QZZBN60Z8',35.0000,'XXX','GQm1bEkjnfGPGczmWKECS_8kEVhvkOwRoz9QGDPPNGU','2025-05-22 12:26:48','2025-05-22 12:25:48'),('01JVVZ9Y054WX1STK8G4A61T6G',25.0000,'XTS','NSS18j-L2bMXMHirc5xZJKwf6GfN4R9WP9B8j9cnUfU','2025-05-22 12:26:49','2025-05-22 12:25:49'),('01JVVZA7EESE9FZW4CRPN785AV',35.0000,'XXX','0','2025-05-27 12:25:58','2025-05-22 12:25:58'),('01JVVZA7F78539T8W8BTH80D33',35.0000,'XXX','0','2025-05-27 12:25:59','2025-05-22 12:25:59'),('01JVVZA7FQJ79XDQ8VMH2JCVEK',25.0000,'XXX','0','2025-05-27 12:25:59','2025-05-22 12:25:59'),('01JVVZA7G81WZGW7EJERHXX0SB',95.0000,'XXX','0','2025-05-27 12:25:59','2025-05-22 12:25:59'),('01JVVZAB4TNRZ5KPGZEKSAAJTE',45.0000,'XTS','0','2025-05-27 12:26:02','2025-05-22 12:26:02'),('01JVVZAB5T7EQBP85XG97K7NTC',30.0000,'XTS','0','2025-05-27 12:26:02','2025-05-22 12:26:02'),('01JVVZAB6B6S28K7PARE12T23T',55.0000,'XTS','0','2025-05-27 12:26:02','2025-05-22 12:26:02'),('01JVVZAB7Y0M1FN8N7QXTQ6HXM',20.0000,'XTS','0','2025-05-27 12:26:02','2025-05-22 12:26:02'),('01JVVZB9ZP474ZV0MKFZ6AFCHR',60.0000,'XXX','obNuMCMkTttKbqGqya-FfEDceicrnL7wkj2KDHOOxw4','2025-05-22 12:27:34','2025-05-22 12:26:34'),('01JVVZBB3F6XNXJ64AB6D6H7R4',55.0000,'XXX','K1kKP6QsSNykkB3RZVxQceDIz7xp1tCAqgXT2eDlKLk','2025-05-22 12:27:35','2025-05-22 12:26:35'),('01JVVZBBK9VKY1JV2305X31ED2',35.0000,'XXX','DuPn7o1GGWI5OympQxRN79naX7fIARY55fhM9jxugJM','2025-05-22 12:27:36','2025-05-22 12:26:35'),('01JVVZBC36V4B7D37BXHJDG06E',20.0000,'XXX','QbWJPDWn6nzJHpzFDdtVKRCwJqqEKBh2wvuq1JRv2Os','2025-05-22 12:27:36','2025-05-22 12:26:36'),('01JVVZBCK01QKBN5CTGM2GWKGY',35.0000,'XXX','HJASAO68OdVs-MS2u3NdY3Bcjbnby5JDRxTMvf2B6V4','2025-05-22 12:27:37','2025-05-22 12:26:36'),('01JVVZBD463527KDKSEDAQCPH3',25.0000,'XXX','JHJ4ZkQmdEwMAWt3vBaJGopkqdFFTtscFhdV2avQVYg','2025-05-22 12:27:37','2025-05-22 12:26:37'),('01JVVZBKGMWB0DCZ3CS281CEKA',10.0000,'XXX','0','2025-05-27 12:26:44','2025-05-22 12:26:44'),('01JVVZBKH9W4KE5J9EXYB1GR6G',5.0000,'XXX','0','2025-05-27 12:26:44','2025-05-22 12:26:44'),('01JVVZBKHP5FZKVE2150AC5AZR',80.0000,'XXX','0','2025-05-27 12:26:44','2025-05-22 12:26:44'),('01JVVZBKJ3HYF6ESM6MZGYD016',75.0000,'XXX','0','2025-05-27 12:26:44','2025-05-22 12:26:44'),('01JVVZC581V1D996Z1GVPGXXSX',60.0000,'XTS','mJbBpY3My4Uqyb6yMx7ybbF3dSPA_xlNo_RdbCFx4w8','2025-05-22 12:28:02','2025-05-22 12:27:02'),('01JVVZC5XS9T55E3FEQV8CCJT5',55.0000,'XTS','HQpllVuL226I4XXI_QQo8d3MpAL7fy1jjv2_WydhZy0','2025-05-22 12:28:03','2025-05-22 12:27:02'),('01JVVZC6DVAC3HQHGHWZ2MMVVP',35.0000,'XTS','gQpyFpRdkqYVVwpOYqOSsPZ6O9IzI7xhM1i_P1LSZH0','2025-05-22 12:28:03','2025-05-22 12:27:03'),('01JVVZC6YBB244VVDNNSEKG7KN',20.0000,'XTS','hj11m0NlN7vynOWyAcJCmWleGmTpLalZxQ6uES6nles','2025-05-22 12:28:04','2025-05-22 12:27:03'),('01JVVZC8Q5ARSYRSEVCX90CXXQ',35.0000,'XTS','b9uBKrVuozA1gVDNkFAh1qvfmBvRlkH_SN7CldmBotA','2025-05-22 12:28:05','2025-05-22 12:27:05'),('01JVVZC97AD4YWVPWS5DTSKV5B',25.0000,'XTS','y_YwLlB5kPF9NmpjuUO_oK-5p6UQNb7SuszKeImtGSE','2025-05-22 12:28:06','2025-05-22 12:27:06'),('01JVVZCFGNCZQ8XJYW2MAGHHBW',10.0000,'XTS','0','2025-05-27 12:27:12','2025-05-22 12:27:12'),('01JVVZCFH699BKP2TB3DJP63MZ',5.0000,'XTS','0','2025-05-27 12:27:12','2025-05-22 12:27:12'),('01JVVZCFHP7T16AVH2NRJBQJVV',80.0000,'XTS','0','2025-05-27 12:27:12','2025-05-22 12:27:12'),('01JVVZCFJCQWYWZF7PT02BGJQF',75.0000,'XTS','0','2025-05-27 12:27:12','2025-05-22 12:27:12'),('01JVVZDGPZ2NQGA7ZJB7XCDK09',100.0000,'XTS','W_Ox1_8-eLMFJFW07nVTcENoVKijYWtfhdru_Cl_qIc','2025-05-23 12:27:56','2025-05-22 12:27:59'),('01JVVZE15SAK643DT7N3R8RBSM',100.0000,'XTS','9L_5HoSYBOkbdpRPKCe9k_pFbNhrPqw6cdSG6ROOliM','2025-05-23 12:28:06','2025-05-22 12:28:11'),('01JVVZEDKHC0MMYXRSD5J8NY8B',13.0000,'XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:28:16','2025-05-22 12:28:16'),('01JVVZEEDWGYNJV655N86YQXS3',15.0000,'XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:28:17','2025-05-22 12:28:17'),('01JVVZEFEF2HRCGCXD3Y0XRVBY',15.0000,'XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-23 12:28:18','2025-05-22 12:28:18'),('01JVVZEGV1R1V31ZT6ZVZBTET5',16.0000,'XTS','L9ZUmT5NJj-SKP5127Dvc1JkF4p74yW4RsLKnOd6QEY','2025-05-22 12:28:22','2025-05-22 12:28:19'),('01JVW42Z5QTKBHK30VGJ05GGAP',100.0000,'XTS','YdMF5ihe5zY_nOVRzIb_YBc8LlfjwO4TZ3xyB_P_YXE','2025-05-23 13:49:27','2025-05-22 13:49:33'),('0a0520cd-d12c-42f2-b0db-fd9152bb88e7',5000.0000,'XTS','0','2025-05-27 12:15:24','2025-05-22 12:15:24'),('0bf9f9e5-78ce-48e8-a957-504ebfc449b2',5000.0000,'XXX','0','2025-05-27 12:17:05','2025-05-22 12:17:05'),('0db4ef52-1e0c-45e8-9b45-f93da6dfab9b',5000.0000,'XDR','0','2025-05-27 12:24:34','2025-05-22 12:24:34'),('199c2299-9cab-46d1-9b5f-91a7a0250f54',5000.0000,'XTS','0','2025-05-27 12:17:21','2025-05-22 12:17:21'),('1ab87be6-d50f-4c36-b93f-66c14d9dbf54',5000.0000,'XTS','0','2025-05-27 12:16:21','2025-05-22 12:16:21'),('21123852-97f6-48e2-be89-7791a5308152',5000.0000,'XXX','0','2025-05-27 12:14:00','2025-05-22 12:14:00'),('2d97f330-9984-4464-b78b-92d5bf796202',5000.0000,'XTS','0','2025-05-27 12:14:15','2025-05-22 12:14:15'),('62df22e8-2872-4fe6-90d0-d069fa904890',5000.0000,'XTS','0','2025-05-27 12:19:00','2025-05-22 12:19:00'),('92a18b7c-37de-46fc-829d-51021ecaefb6',5000.0000,'XTS','0','2025-05-27 12:13:08','2025-05-22 12:13:08'),('be69d192-e0d4-4f44-ac8f-f10153423609',5000.0000,'XTS','0','2025-05-27 12:22:24','2025-05-22 12:22:24'),('c71102e5-de0a-4759-b73b-641c5db20a4a',5000.0000,'XXX','0','2025-05-27 12:12:53','2025-05-22 12:12:53'),('cf89af51-97f1-4b0f-9176-4ac3d4d02e34',5000.0000,'XXX','0','2025-05-27 12:15:08','2025-05-22 12:15:08'),('ec3997db-f39c-4bdb-98e7-906485587a45',5000.0000,'XXX','0','2025-05-27 12:16:12','2025-05-22 12:16:11'),('eec8c141-e4ad-49c2-9842-ae5e6dd27bf8',5000.0000,'XXX','0','2025-05-27 12:18:48','2025-05-22 12:18:48');
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
INSERT INTO `transferDuplicateCheck` VALUES ('01JVVYYNASE5P0RW5XK8TNQYT7','ZCr6qYDQdnXfadKy9UQlRLd4Xbq/7EeYUmC1qXRYu0w','2025-05-22 12:19:50'),('01JVVYZ9M8GJ2E6NDJFRVHZTE5','8CgyXsQPzLoVo23kDah2i9KeIvcDl67FMUleXSj841Q','2025-05-22 12:20:01'),('01JVVYZJSBK68PY2YXHV4Q78V3','CE3GuFWLM5sOPc0sfWxFGXUESsSDkBiJ8H8thnEYgr4','2025-05-22 12:20:10'),('01JVVYZK0NQNFT3NV7QVS9APYG','5sL8HAfqDfzArZYUdEx4/lzgSvsNJB/81qJqZfn83PY','2025-05-22 12:20:09'),('01JVVYZTDKB6SGRY98ZJPKXZF6','1WlnUaiusYBhvdeYb9glIX/02tbRQ9Mzur9aEyvRTRw','2025-05-22 12:20:17'),('01JVVZ06893Q0H73NX30HCESHR','gQPInjBn9btP/icRttx2Sz2gFcaB6fQ/W+VKQIU15h0','2025-05-22 12:20:30'),('01JVVZ0BH7R508BKGCE5WABEBT','MuU/ajhBLIQGQwOVd+Qp7c7OR/KVPy3lGUSdSjE3YM8','2025-05-22 12:20:37'),('01JVVZ0FQYDR1E597MMG006A34','j4UXDiqbbAtqSQPXNdh1Oq7G+ZqHyszSXPPP7YINJ4E','2025-05-22 12:20:39'),('01JVVZ0N64JM0PP084VPM2AKH4','JMhM9LgtPPaPuLqAGyP3Ys2P4YNkLmfdXEXoGpn9qug','2025-05-22 12:20:44'),('01JVVZ0SBFX5M7B5M1FQTZ2DSE','GPPQHk+AefSzIsJDc4uLz7zxIJYfumdy1ez4qNNGbJU','2025-05-22 12:20:49'),('01JVVZ0WRHRVJKS2FJ3Y37CH1Q','aIO7rx8OyRfgLgrnUhekMpH0NztlKPhjHfjF5H5ffBg','2025-05-22 12:20:53'),('01JVVZ18EYKN9QETM9DJJZZ151','RY6emKqTBGeQaHJh6zHt1PaPWysq/jTRydfo5otOAPI','2025-05-22 12:21:04'),('01JVVZ1BQCF077ADV07PPYK3HS','zFAlFDUZxtZwQeyK7yPdolsgh123sUq5H9F9E4691jw','2025-05-22 12:21:08'),('01JVVZ1R2TH5BCDN98FE0Y6NWB','qj5JWN3DUjmfk+QnHWdeVhtNX8+WfSnJaQp+uNkpLC8','2025-05-22 12:21:21'),('01JVVZ1TZS9H0RQVFP43PGZ8BB','sK4D8DUBI0WLXvpB/yN4UUjG7umBKHEeVXcXZDpvsDE','2025-05-22 12:21:24'),('01JVVZ221NER7VFNEF8FM5JTPT','N8EssZQW4bmTJL7mulJ2Qqeql0W1vSeJ2Sz3emaxIlY','2025-05-22 12:21:31'),('01JVVZ2AES2FXQYK192KDQHME7','ZOetRJhy9szWBV2nOLqj73jwKyWdOvRYGxxPfuEhNvs','2025-05-22 12:21:40'),('01JVVZ2BQCZDQTKCEZ5XBFKPFQ','2zDdiKzOWVksWW2F16XvBe23oMffDQ1pGBjbYgO2U6k','2025-05-22 12:21:41'),('01JVVZ2E7NS5FY74A42ZYWZ9D3','5J8Ifa9FUnkcK5d5RBvl5MEDUHO9NevYxcdLnqq+xFA','2025-05-22 12:21:47'),('01JVVZ2M8ZYZ3C6RNVNWK5GGDR','2E79CF+TubdTquGL2sciE7J0FuPbsfgTx60JMJjH4RQ','2025-05-22 12:21:51'),('01JVVZ2R9K46GP3JP4RPBEDXDC','6mlygKbpY/IV3EZqLdlq2vFQ7JpGrCA0ddL1yItx2pQ','2025-05-22 12:21:54'),('01JVVZ2V83SQFDK3VW0VYS33EF','AYfz3toFqCwEWG8PAqPLmcLW/ey3SDD0Ps1AWiT/JA0','2025-05-22 12:22:00'),('01JVVZ3066XG1TGDSS1ZKVXJCH','APYB7Fi2S31JV7kT0tQu+EN86VaSOfmDxunNG0hokoc','2025-05-22 12:22:02'),('01JVVZ328M7WQJV988ES7C4WVB','VA+7g1v91XWPARv+xvCUQaKG1YhHrInBBP32Ucjfles','2025-05-22 12:22:04'),('01JVVZ33NPEG3HZ1MDRQ1ARK3K','ArQKXCuM/1tqY0pajNKX/4n3JFxKArgCO8z85JpFJlk','2025-05-22 12:22:05'),('01JVVZ36A87NNR50QJ9EX5YPNW','Vyppd+HXfjx39xLMzJ/nAfhfKvdeLxA6gWiFLp9n/6g','2025-05-22 12:22:07'),('01JVVZ3DMJ12FT1SJBV4A5EDY8','sGi/os4/7jcKQcpFhjdKF6XWem2WAzLKQvG1wsTQsTA','2025-05-22 12:22:15'),('01JVVZ3J8WD4XBANQ8DC4FGG8P','QPcgmuLHOcD8/dff/P6iYwN5ufyOyOBvAqdULHI8HiA','2025-05-22 12:22:21'),('01JVVZ3VGJNN1BY4NK6NWG1FED','QKnGbf6+bcIVpzZe6IJMKj0NM5gRmsXklbXl0Im3LDw','2025-05-22 12:22:30'),('01JVVZ3X9BFSJH1BVHNCZKE14R','XhMMX8sPvq193xxBuhk7ya9X4NHnvtbAzUnXtP0nzQY','2025-05-22 12:22:32'),('01JVVZ3Y9BVY4W8GF8WDT0N05R','6sg5/TejfIg2f5lI1r5kMTsafki7RWRCUo9GNxm8EuY','2025-05-22 12:22:34'),('01JVVZ445N2K4GE2DF3MNZVY9R','qC+qoNrqK59es8PhfmHkIbbUlHbjuRhkszdPttizA/w','2025-05-22 12:22:42'),('01JVVZ4NX5NNMQ12YF0GBCX80Y','viq1nTmMu2Rjgd5cce1Yd8fVSuPMieKqIa83COjAh58','2025-05-22 12:22:57'),('01JVVZ72MA0X195WQSYWTCWZHK','kgJIhPM1LpeopZiUGb0qopN9oK36MZuZv6/+Px26ASU','2025-05-22 12:24:15'),('01JVVZ80N2SSZ3ETPBJEZDMWWT','XJD43d1RhsQomLwUinJz+Ev4ZNG/7PphGGeDXsnZrsc','2025-05-22 12:24:51'),('01JVVZ86M93TDPW5604HXZ8R1P','ZS6h8OUKlI81RDpIYvA7Nx9gzsMtkVoqVLTDIH7IiYA','2025-05-22 12:24:55'),('01JVVZ8QQQJVTB05KA7N0HQJB5','mPnKBovN5uw/ZKuR1UIowmRjGI/sKApa3f6PC1XiMa4','2025-05-22 12:25:16'),('01JVVZ94DKVQD82PPXZ3EHCH0Q','t3uE0TeTK9EDP6KHD1fhryMjNPz2geclj6ok47IErxE','2025-05-22 12:25:23'),('01JVVZ9TZ733QQ55ZBREVSPXKJ','b3ysbVs68kU47qKC2sSdD+tp/59f0pnZrKILJh58Al0','2025-05-22 12:25:46'),('01JVVZ9VKSC0EZXY02EZEES1FX','RlS/NgXtPe0V3VtZLvtPGmNsD7X8IYd4Z6vptZibctc','2025-05-22 12:25:46'),('01JVVZ9W382KZS35BMGMY29BNB','bbhBXyrPGjoh1RwzoOrtBtsIIAJt+y1qIFU7wa1+JU4','2025-05-22 12:25:47'),('01JVVZ9WPHY11YZWGE701H8AMV','pwXq/VsNwt8QGiQ0wradcJ7nsONWzqkSg7gI+34NLnw','2025-05-22 12:25:47'),('01JVVZ9XD7C0YR5E4QZZBN60Z8','OH8dzSWrC3isAX5o2jTvDNw6KLyrVsm8KfFhPrwYohM','2025-05-22 12:25:48'),('01JVVZ9Y054WX1STK8G4A61T6G','Vu9PiQuVa2xXTkoUiRvBQeR5jww9YPtwVkxDLawNlms','2025-05-22 12:25:49'),('01JVVZA7EESE9FZW4CRPN785AV','x5kc8L2MIcwHZnA+ZI6Pkhf0WwOL/dSou5wmvyyytVA','2025-05-22 12:25:58'),('01JVVZA7F78539T8W8BTH80D33','bugOTmedkmE4q4MdpYmS5nU3GjjRA6Wktivu1O+cTKo','2025-05-22 12:25:59'),('01JVVZA7FQJ79XDQ8VMH2JCVEK','7JQEOO3EXuJUMSn+Na/kH2e2GyWElkkSrBCPEZWHOKM','2025-05-22 12:25:59'),('01JVVZA7G81WZGW7EJERHXX0SB','47fKWLIZc/ehvFiXLI/RihTXruCmJDwaicaVvShYweo','2025-05-22 12:25:59'),('01JVVZAB4TNRZ5KPGZEKSAAJTE','E7txmwtKA6kafrynlSMyWjkGrgCWg+g4LaJXUn9izYQ','2025-05-22 12:26:02'),('01JVVZAB5T7EQBP85XG97K7NTC','I9wLGo/KcE1VDcnrXuRExt3FH7k3IWlRzPcJAkgDCeY','2025-05-22 12:26:02'),('01JVVZAB6B6S28K7PARE12T23T','UbtOuBa/AZhrQ1zISqDc/NXPmHAIHMfDpcdo/9AR3tA','2025-05-22 12:26:02'),('01JVVZAB7Y0M1FN8N7QXTQ6HXM','SBS6lu9sfBEqzFcHFVk7OQWYLpdXaM4FFl1Sd0Fuie4','2025-05-22 12:26:02'),('01JVVZB9ZP474ZV0MKFZ6AFCHR','9DR6IMnaZTVLrBHLYvmWqtXf+9h/nAfpZosMT7xWV+8','2025-05-22 12:26:34'),('01JVVZBB3F6XNXJ64AB6D6H7R4','IPc09maJCrGxYm/kkiUUizYVZJp/nPWWfk5nUJisbt4','2025-05-22 12:26:35'),('01JVVZBBK9VKY1JV2305X31ED2','aFrnOQig1WAO0wgkf2hXnz3KgzgvpCiguMdVm4S7PMY','2025-05-22 12:26:35'),('01JVVZBC36V4B7D37BXHJDG06E','4Vs6ujA8wUPemOsuznVBqbZlu+ApouWxWQeTA1D2nSM','2025-05-22 12:26:36'),('01JVVZBCK01QKBN5CTGM2GWKGY','//8T8l00ynksV2Z8sz6ybpJUumjZXeC4InXHtWICUS0','2025-05-22 12:26:36'),('01JVVZBD463527KDKSEDAQCPH3','kjpF9MBr6z4m5qRrVQ/FxmPFI5SZCmJ41LKTGiGx2p0','2025-05-22 12:26:37'),('01JVVZBKGMWB0DCZ3CS281CEKA','wIUdoqtWt1Y9VBKdWCULtn0uoVSAuJ8FJYugfLYPtAc','2025-05-22 12:26:44'),('01JVVZBKH9W4KE5J9EXYB1GR6G','uMz1CLapJHMUX5BNxPhUATm1+kPhdJjuvkP9e1vKLJY','2025-05-22 12:26:44'),('01JVVZBKHP5FZKVE2150AC5AZR','ezTUEofg79+nrfDjeReCj7HI5G23FZ4BeyXtPJ+rwew','2025-05-22 12:26:44'),('01JVVZBKJ3HYF6ESM6MZGYD016','po+cuMAWQGCg7JKB/O3Rohk34ZJXaOPLvLJpG55yJCU','2025-05-22 12:26:44'),('01JVVZC581V1D996Z1GVPGXXSX','R63tfpIzJKkb35rCN77ioIK7Iw7CL05IpweIhez3qKE','2025-05-22 12:27:02'),('01JVVZC5XS9T55E3FEQV8CCJT5','T237QS/Hl3/io4HiDekSYG2K4kB+lq9QWgRAwPyPsWE','2025-05-22 12:27:02'),('01JVVZC6DVAC3HQHGHWZ2MMVVP','rJkL20X42ttkH4A/YcOYq6qj++ZWlQSHkVSgK/AgLH4','2025-05-22 12:27:03'),('01JVVZC6YBB244VVDNNSEKG7KN','vCubD4N3A9CqiT7HsA/oo1uslWwUsUPwaUmLuVzObLk','2025-05-22 12:27:03'),('01JVVZC8Q5ARSYRSEVCX90CXXQ','TFjmrSeT6ebXXm19V1MJHrMwNidtvvjk7s6sNhqh2jo','2025-05-22 12:27:05'),('01JVVZC97AD4YWVPWS5DTSKV5B','2V0GkAGIZTyV2vypt3yTVIgVFn+zlje7Yb9f/AYynqI','2025-05-22 12:27:06'),('01JVVZCFGNCZQ8XJYW2MAGHHBW','Li3xC+xBOkil/Ia9naMyovIRlw2R3fyConzAY9MMFXw','2025-05-22 12:27:12'),('01JVVZCFH699BKP2TB3DJP63MZ','JueGxxsM0FzkpOOhwXTgwPxnx3ugXEw6tTURmC14ibE','2025-05-22 12:27:12'),('01JVVZCFHP7T16AVH2NRJBQJVV','aJt/KXMOnALOLsjKLNNxveH49sFGgMux9QVzMByAUUc','2025-05-22 12:27:12'),('01JVVZCFJCQWYWZF7PT02BGJQF','2UCq/5kd8jsjRjqSQ5FMnn3nU6LrdloUc6m235phXqs','2025-05-22 12:27:12'),('01JVVZDGPZ2NQGA7ZJB7XCDK09','smuteQ+g3b3gSkGsRIJNzYN5XWBRuzilgdXt952bt74','2025-05-22 12:27:59'),('01JVVZE15SAK643DT7N3R8RBSM','LsQQR0jT7FGIDsxbFU7711ZGKLBM980jO4Qr60SlUzE','2025-05-22 12:28:11'),('01JVVZEDKHC0MMYXRSD5J8NY8B','GvpmpX07+O+3pry7t+Y7CmuqDwKZ8br2YBwivwhg2O8','2025-05-22 12:28:16'),('01JVVZEEDWGYNJV655N86YQXS3','pazr63QTZbb05OfJQ/ubANCsC6AsmjkuzDvB+I3Nm9E','2025-05-22 12:28:17'),('01JVVZEFEF2HRCGCXD3Y0XRVBY','sWsoERiPzwhW+nb1e/mQkpTPeTErzfsSaKHt2jhnmz8','2025-05-22 12:28:18'),('01JVVZEGV1R1V31ZT6ZVZBTET5','/C7hRUs1XvLGAZ2aqafOyK0Hk3KKSXBF0aU5dkQGJr8','2025-05-22 12:28:19'),('01JVW42Z5QTKBHK30VGJ05GGAP','ZUveIHnamiM1URWHwI3gIBuDbv/z8zwUYkCtJ2Faw0M','2025-05-22 13:49:33'),('0a0520cd-d12c-42f2-b0db-fd9152bb88e7','IjwBgNAvB02tfGT5bovx16NI93N2Fwj5dV3/fOtfM9U','2025-05-22 12:15:23'),('0bf9f9e5-78ce-48e8-a957-504ebfc449b2','YI9lN9mLyq8pYy+1NxZGfgDlzKYRwtrjq4aKZvh35Q0','2025-05-22 12:17:04'),('0db4ef52-1e0c-45e8-9b45-f93da6dfab9b','InhRZHZhMeEESaxtK5AdhFFCXAn+5azy0bA057L882A','2025-05-22 12:24:34'),('199c2299-9cab-46d1-9b5f-91a7a0250f54','KBa8lAgOk6sbftvTdUg1ErYh1fkrIV1zKjADN5yJphw','2025-05-22 12:17:21'),('1ab87be6-d50f-4c36-b93f-66c14d9dbf54','DWdrFgSB9zJ12YrvhuwlwEWzuDrBbiGLQY68wwcJYg8','2025-05-22 12:16:21'),('21123852-97f6-48e2-be89-7791a5308152','nXNDd/GbtlGPZlv5k1c67NWoVG3F+XYRmYGizir7OaA','2025-05-22 12:14:00'),('2d97f330-9984-4464-b78b-92d5bf796202','9Kepj5lTGQ7Z3xeK54CO3AR56NThIPqe3mFL8zNzOjo','2025-05-22 12:14:15'),('62df22e8-2872-4fe6-90d0-d069fa904890','UbgHeu2tA8gP9bM69dV0PmZ3mHAp6i7SQa0wnApkCac','2025-05-22 12:19:00'),('92a18b7c-37de-46fc-829d-51021ecaefb6','ikJHn4BJ+XiwzNwmafW4uXxnylA/EJZWG4Woz7jAO4E','2025-05-22 12:13:08'),('be69d192-e0d4-4f44-ac8f-f10153423609','AAii9mYuqvSJev1t4oaZQwuJv8x2uCKTNDh8TviKEDU','2025-05-22 12:22:23'),('c71102e5-de0a-4759-b73b-641c5db20a4a','sHM8cfhxJk1FwdUGLfvbgSZRkSL0mgRJ7VDhpChNmSk','2025-05-22 12:12:53'),('cf89af51-97f1-4b0f-9176-4ac3d4d02e34','k4Bn3Po2OV9mjjFTmRJ5JjIKW4uro3itTXwxfBn5wvA','2025-05-22 12:15:08'),('ec3997db-f39c-4bdb-98e7-906485587a45','l3eKDJeXpU0mVAD0vnT+nfQhQhn5ocMF9c2DL5HpiAA','2025-05-22 12:16:11'),('eec8c141-e4ad-49c2-9842-ae5e6dd27bf8','NfDrSOd77/riy/aADEENsulCP3CK7n9SesW11Yb048Q','2025-05-22 12:18:48');
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
INSERT INTO `transferError` VALUES ('01JVVZ0FQYDR1E597MMG006A34',83,3303,'Transfer expired','2025-05-22 12:20:45'),('01JVVZ0SBFX5M7B5M1FQTZ2DSE',87,3100,'Generic validation error - invalid fulfilment','2025-05-22 12:20:50'),('01JVVZ0WRHRVJKS2FJ3Y37CH1Q',91,3303,'Transfer expired','2025-05-22 12:21:00'),('01JVVZ18EYKN9QETM9DJJZZ151',95,5101,'Payee transaction limit reached','2025-05-22 12:21:06'),('01JVVZ1BQCF077ADV07PPYK3HS',99,3303,'Transfer expired','2025-05-22 12:21:15'),('01JVVZ2AES2FXQYK192KDQHME7',115,5101,'Payee transaction limit reached','2025-05-22 12:21:40'),('01JVVZ2BQCZDQTKCEZ5XBFKPFQ',119,5101,'Payee transaction limit reached','2025-05-22 12:21:41'),('01JVVZ2E7NS5FY74A42ZYWZ9D3',121,3100,'Participant testfsp2 is inactive','2025-05-22 12:21:47'),('01JVVZ2R9K46GP3JP4RPBEDXDC',126,3100,'Participant testfsp2 XXX account is inactive','2025-05-22 12:21:54'),('01JVVZ445N2K4GE2DF3MNZVY9R',169,3100,'Generic validation error - invalid fulfilment','2025-05-22 12:22:43'),('01JVVZ72MA0X195WQSYWTCWZHK',175,3100,'Participant payeefspNOTFOUND not found','2025-05-22 12:24:15'),('01JVVZ86M93TDPW5604HXZ8R1P',186,3100,'Generic validation error - fspiop-destination does not match payer fsp on the Fulfil callback response','2025-05-22 12:24:56'),('01JVVZ8QQQJVTB05KA7N0HQJB5',190,3100,'Generic validation error - fspiop-destination does not match payer fsp on the Fulfil callback response','2025-05-22 12:25:17'),('01JVVZ94DKVQD82PPXZ3EHCH0Q',192,3100,'Payer FSP and Payee FSP should be different, unless on-us tranfers are allowed by the Scheme','2025-05-22 12:25:23'),('01JVVZEDKHC0MMYXRSD5J8NY8B',337,3100,'Related FX Transfer is not fulfilled','2025-05-22 12:28:16'),('01JVVZEEDWGYNJV655N86YQXS3',338,3100,'Related FX Transfer is not fulfilled','2025-05-22 12:28:17'),('01JVVZEFEF2HRCGCXD3Y0XRVBY',339,3100,'Related FX Transfer is not fulfilled','2025-05-22 12:28:18'),('01JVVZEGV1R1V31ZT6ZVZBTET5',340,3100,'Related FX Transfer is not fulfilled','2025-05-22 12:28:19');
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
INSERT INTO `transferErrorDuplicateCheck` VALUES ('01JVVZ18EYKN9QETM9DJJZZ151','bsGrGjRBVOGclcXdLH2pEgA3xz+sAp9jsF8wgOOVtJk','2025-05-22 12:21:05'),('01JVVZ2AES2FXQYK192KDQHME7','bsGrGjRBVOGclcXdLH2pEgA3xz+sAp9jsF8wgOOVtJk','2025-05-22 12:21:40'),('01JVVZ2BQCZDQTKCEZ5XBFKPFQ','bsGrGjRBVOGclcXdLH2pEgA3xz+sAp9jsF8wgOOVtJk','2025-05-22 12:21:41');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferExtension`
--

LOCK TABLES `transferExtension` WRITE;
/*!40000 ALTER TABLE `transferExtension` DISABLE KEYS */;
INSERT INTO `transferExtension` VALUES (1,'c71102e5-de0a-4759-b73b-641c5db20a4a','externalReference','string',0,0,'2025-05-22 12:12:53'),(2,'c71102e5-de0a-4759-b73b-641c5db20a4a','string','string',0,0,'2025-05-22 12:12:53'),(3,'92a18b7c-37de-46fc-829d-51021ecaefb6','externalReference','string',0,0,'2025-05-22 12:13:08'),(4,'92a18b7c-37de-46fc-829d-51021ecaefb6','string','string',0,0,'2025-05-22 12:13:08'),(5,'21123852-97f6-48e2-be89-7791a5308152','externalReference','string',0,0,'2025-05-22 12:14:00'),(6,'21123852-97f6-48e2-be89-7791a5308152','string','string',0,0,'2025-05-22 12:14:00'),(7,'2d97f330-9984-4464-b78b-92d5bf796202','externalReference','string',0,0,'2025-05-22 12:14:15'),(8,'2d97f330-9984-4464-b78b-92d5bf796202','string','string',0,0,'2025-05-22 12:14:15'),(9,'cf89af51-97f1-4b0f-9176-4ac3d4d02e34','externalReference','string',0,0,'2025-05-22 12:15:08'),(10,'cf89af51-97f1-4b0f-9176-4ac3d4d02e34','string','string',0,0,'2025-05-22 12:15:08'),(11,'0a0520cd-d12c-42f2-b0db-fd9152bb88e7','externalReference','string',0,0,'2025-05-22 12:15:24'),(12,'0a0520cd-d12c-42f2-b0db-fd9152bb88e7','string','string',0,0,'2025-05-22 12:15:24'),(13,'ec3997db-f39c-4bdb-98e7-906485587a45','externalReference','string',0,0,'2025-05-22 12:16:11'),(14,'ec3997db-f39c-4bdb-98e7-906485587a45','string','string',0,0,'2025-05-22 12:16:11'),(15,'1ab87be6-d50f-4c36-b93f-66c14d9dbf54','externalReference','string',0,0,'2025-05-22 12:16:21'),(16,'1ab87be6-d50f-4c36-b93f-66c14d9dbf54','string','string',0,0,'2025-05-22 12:16:21'),(17,'0bf9f9e5-78ce-48e8-a957-504ebfc449b2','externalReference','string',0,0,'2025-05-22 12:17:05'),(18,'0bf9f9e5-78ce-48e8-a957-504ebfc449b2','string','string',0,0,'2025-05-22 12:17:05'),(19,'199c2299-9cab-46d1-9b5f-91a7a0250f54','externalReference','string',0,0,'2025-05-22 12:17:21'),(20,'199c2299-9cab-46d1-9b5f-91a7a0250f54','string','string',0,0,'2025-05-22 12:17:21'),(21,'eec8c141-e4ad-49c2-9842-ae5e6dd27bf8','externalReference','string',0,0,'2025-05-22 12:18:48'),(22,'eec8c141-e4ad-49c2-9842-ae5e6dd27bf8','string','string',0,0,'2025-05-22 12:18:48'),(23,'62df22e8-2872-4fe6-90d0-d069fa904890','externalReference','string',0,0,'2025-05-22 12:19:00'),(24,'62df22e8-2872-4fe6-90d0-d069fa904890','string','string',0,0,'2025-05-22 12:19:00'),(25,'01JVVYZK0NQNFT3NV7QVS9APYG','externalReference','string',0,0,'2025-05-22 12:20:10'),(26,'01JVVYZK0NQNFT3NV7QVS9APYG','string','string',0,0,'2025-05-22 12:20:10'),(27,'01JVVZ0N64JM0PP084VPM2AKH4','externalReference','string',0,0,'2025-05-22 12:20:45'),(28,'01JVVZ0N64JM0PP084VPM2AKH4','string','string',0,0,'2025-05-22 12:20:45'),(29,'01JVVZ33NPEG3HZ1MDRQ1ARK3K','externalReference','string',0,0,'2025-05-22 12:22:05'),(30,'01JVVZ33NPEG3HZ1MDRQ1ARK3K','string','string',0,0,'2025-05-22 12:22:05'),(31,'01JVVZ36A87NNR50QJ9EX5YPNW','externalReference','string',0,0,'2025-05-22 12:22:08'),(32,'01JVVZ36A87NNR50QJ9EX5YPNW','string','string',0,0,'2025-05-22 12:22:08'),(33,'01JVVZ3DMJ12FT1SJBV4A5EDY8','externalReference','string',0,0,'2025-05-22 12:22:16'),(34,'01JVVZ3DMJ12FT1SJBV4A5EDY8','string','string',0,0,'2025-05-22 12:22:16'),(35,'be69d192-e0d4-4f44-ac8f-f10153423609','externalReference','string',0,0,'2025-05-22 12:22:24'),(36,'be69d192-e0d4-4f44-ac8f-f10153423609','string','string',0,0,'2025-05-22 12:22:24'),(37,'0db4ef52-1e0c-45e8-9b45-f93da6dfab9b','externalReference','string',0,0,'2025-05-22 12:24:34'),(38,'0db4ef52-1e0c-45e8-9b45-f93da6dfab9b','string','string',0,0,'2025-05-22 12:24:34');
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
INSERT INTO `transferFulfilment` VALUES ('01JVVYYNASE5P0RW5XK8TNQYT7','vn14J7XZPiNhLP-lEet6PDIDFA4lLS0_iPhN1dL0eLo','2025-05-22 12:19:53',1,1,'2025-05-22 12:19:54'),('01JVVYZ9M8GJ2E6NDJFRVHZTE5','8CsUm5XwfaBV43Iq-tKetZ85U3Df7ndbZzYeEuhmefI','2025-05-22 12:20:02',1,1,'2025-05-22 12:20:02'),('01JVVYZJSBK68PY2YXHV4Q78V3','QexDSp5-t8mAmts5bZ9BD8xbJQjqpMRlWUc3bXArCtE','2025-05-22 12:20:10',1,1,'2025-05-22 12:20:10'),('01JVVYZK0NQNFT3NV7QVS9APYG','0','2025-05-22 12:20:10',1,NULL,'2025-05-22 12:20:10'),('01JVVYZTDKB6SGRY98ZJPKXZF6','cuDcaUTwqea2sR2PEs1Vg7R9XZdPb0_vZvycYGA5xlY','2025-05-22 12:20:18',1,1,'2025-05-22 12:20:18'),('01JVVZ06893Q0H73NX30HCESHR','RIwblGQkLZNJ4s-mYUFj3OivO9aZ2H00C5nS6AGQ2Ws','2025-05-22 12:20:30',1,1,'2025-05-22 12:20:30'),('01JVVZ0BH7R508BKGCE5WABEBT','kXP3eSqUbFdAory4THYz_7AhZH2ikry_OtzUnsk8-zM','2025-05-22 12:20:39',1,1,'2025-05-22 12:20:39'),('01JVVZ0N64JM0PP084VPM2AKH4','0','2025-05-22 12:20:45',1,NULL,'2025-05-22 12:20:45'),('01JVVZ1R2TH5BCDN98FE0Y6NWB','x8EWzfTSCrvmv5rGhkpbrtydele5vztD75XKNWxnIKM','2025-05-22 12:21:22',1,1,'2025-05-22 12:21:22'),('01JVVZ1TZS9H0RQVFP43PGZ8BB','VFhBCqP17O5VolemGmeVeVn_ZByepYwtqBDe2F675kA','2025-05-22 12:21:24',1,1,'2025-05-22 12:21:24'),('01JVVZ221NER7VFNEF8FM5JTPT','VFhBCqP17O5VolemGmeVeVn_ZByepYwtqBDe2F675kA','2025-05-22 12:21:34',1,1,'2025-05-22 12:21:34'),('01JVVZ2M8ZYZ3C6RNVNWK5GGDR','cMqU0BL6sGbvkyZQJnrT1dpDZVYv7im_hlNonyC9bTs','2025-05-22 12:21:52',1,1,'2025-05-22 12:21:52'),('01JVVZ2V83SQFDK3VW0VYS33EF','uX2L4erlx_5djiO_6pBERrWXOILMmkD-93yT7hJM828','2025-05-22 12:22:01',1,1,'2025-05-22 12:22:01'),('01JVVZ33NPEG3HZ1MDRQ1ARK3K','0','2025-05-22 12:22:05',1,NULL,'2025-05-22 12:22:05'),('01JVVZ36A87NNR50QJ9EX5YPNW','0','2025-05-22 12:22:13',1,NULL,'2025-05-22 12:22:13'),('01JVVZ3DMJ12FT1SJBV4A5EDY8','0','2025-05-22 12:22:18',1,NULL,'2025-05-22 12:22:18'),('01JVVZ3J8WD4XBANQ8DC4FGG8P','6O-ugDfwUiS2GH9U0-PIwXLXuJfkO1Zqnw-II1kpiIc','2025-05-22 12:22:21',1,1,'2025-05-22 12:22:21'),('01JVVZ3VGJNN1BY4NK6NWG1FED','gzGJNL63OVFYkRAj4RCs-jDQIBp57yA6SmWRUNuRxPU','2025-05-22 12:22:31',1,1,'2025-05-22 12:22:31'),('01JVVZ3X9BFSJH1BVHNCZKE14R','nMD1aC2sXKjtOFAhKO_8wx7ZO33H8zXlB3bGyUUmU-k','2025-05-22 12:22:32',1,1,'2025-05-22 12:22:32'),('01JVVZ3Y9BVY4W8GF8WDT0N05R','DgC72R3lTFNG3f59mlO89HdQWjkjzTPRgY2dtuQpuyc','2025-05-22 12:22:35',1,1,'2025-05-22 12:22:35'),('01JVVZ4NX5NNMQ12YF0GBCX80Y','5DMa2aiJrNObdtK_zGczrS33xfCxTkyyTYbCcIBxFCY','2025-05-22 12:22:57',1,1,'2025-05-22 12:22:57'),('01JVVZ80N2SSZ3ETPBJEZDMWWT','aCanBngkaYoIXgonhi3LzMTGxxez6FpVbk-VFgezytk','2025-05-22 12:24:52',1,1,'2025-05-22 12:24:52'),('01JVVZ9TZ733QQ55ZBREVSPXKJ','QWuGjG4m1fUazXs_OELjxgDoWjc-QPK8MRoDN-lyu78','2025-05-22 12:25:46',1,2,'2025-05-22 12:25:46'),('01JVVZ9VKSC0EZXY02EZEES1FX','wMt1Sd2ekl4eH_9nWvxd8cVibcepHFHlWEjX4MOq6uE','2025-05-22 12:25:47',1,2,'2025-05-22 12:25:47'),('01JVVZ9W382KZS35BMGMY29BNB','GQ--HSn60RI_7J82fDjaPp6bIEtU3VkCW46RfXw8Mhw','2025-05-22 12:25:47',1,2,'2025-05-22 12:25:47'),('01JVVZ9WPHY11YZWGE701H8AMV','mz5vbCtZ7HUw9EUky7AdiXSPkmJPEjvRKEpXATdz7wg','2025-05-22 12:25:48',1,2,'2025-05-22 12:25:48'),('01JVVZ9XD7C0YR5E4QZZBN60Z8','Ri1su7_Gy5tCUKu4TjX-nKN9QugyQJSEwuMYzN5k_C4','2025-05-22 12:25:49',1,2,'2025-05-22 12:25:49'),('01JVVZ9Y054WX1STK8G4A61T6G','csFCZ83-Nkab_cgpmFUy0iDELgAMyUo_4Q4ZkUpUK8o','2025-05-22 12:25:49',1,2,'2025-05-22 12:25:49'),('01JVVZA7EESE9FZW4CRPN785AV','0','2025-05-22 12:26:11',1,NULL,'2025-05-22 12:26:11'),('01JVVZA7F78539T8W8BTH80D33','0','2025-05-22 12:26:11',1,NULL,'2025-05-22 12:26:11'),('01JVVZA7FQJ79XDQ8VMH2JCVEK','0','2025-05-22 12:26:11',1,NULL,'2025-05-22 12:26:11'),('01JVVZA7G81WZGW7EJERHXX0SB','0','2025-05-22 12:26:11',1,NULL,'2025-05-22 12:26:11'),('01JVVZAB4TNRZ5KPGZEKSAAJTE','0','2025-05-22 12:26:14',1,NULL,'2025-05-22 12:26:14'),('01JVVZAB5T7EQBP85XG97K7NTC','0','2025-05-22 12:26:14',1,NULL,'2025-05-22 12:26:14'),('01JVVZAB6B6S28K7PARE12T23T','0','2025-05-22 12:26:14',1,NULL,'2025-05-22 12:26:14'),('01JVVZAB7Y0M1FN8N7QXTQ6HXM','0','2025-05-22 12:26:14',1,NULL,'2025-05-22 12:26:14'),('01JVVZB9ZP474ZV0MKFZ6AFCHR','Qm67SR3TaW6sVlXu_giHZca0nB88XHQHzVSGuBhsT6g','2025-05-22 12:26:35',1,3,'2025-05-22 12:26:35'),('01JVVZBB3F6XNXJ64AB6D6H7R4','Ubf-uSrG3s71fvUK9HTJymqLO0Hcjd8RC5fLZqBcN3w','2025-05-22 12:26:35',1,3,'2025-05-22 12:26:35'),('01JVVZBBK9VKY1JV2305X31ED2','QnM-HWpWGogCNMYwYpYSNBnfeaXrh8GCMJXy9uJfPRk','2025-05-22 12:26:36',1,3,'2025-05-22 12:26:36'),('01JVVZBC36V4B7D37BXHJDG06E','E9u-5dfCs2GLwppPeUNhCsqcCBr2oBXtu0yysV3ByqA','2025-05-22 12:26:36',1,3,'2025-05-22 12:26:36'),('01JVVZBCK01QKBN5CTGM2GWKGY','afjk0DNVcTMSMOv8GMPCbkvAGLnQZhWeQeulaMbw_o8','2025-05-22 12:26:37',1,3,'2025-05-22 12:26:37'),('01JVVZBD463527KDKSEDAQCPH3','1_Kuya2AOlM4wItRyOb8LNIGdbWyiRPjiVXhEVs8zjM','2025-05-22 12:26:38',1,3,'2025-05-22 12:26:38'),('01JVVZBKGMWB0DCZ3CS281CEKA','0','2025-05-22 12:26:49',1,NULL,'2025-05-22 12:26:49'),('01JVVZBKH9W4KE5J9EXYB1GR6G','0','2025-05-22 12:26:49',1,NULL,'2025-05-22 12:26:49'),('01JVVZBKHP5FZKVE2150AC5AZR','0','2025-05-22 12:26:49',1,NULL,'2025-05-22 12:26:49'),('01JVVZBKJ3HYF6ESM6MZGYD016','0','2025-05-22 12:26:49',1,NULL,'2025-05-22 12:26:49'),('01JVVZC581V1D996Z1GVPGXXSX','OcPdBo2iPdXyYqjgX6NKWsR4_ZzerCO3hDc7iNDVr4o','2025-05-22 12:27:02',1,4,'2025-05-22 12:27:02'),('01JVVZC5XS9T55E3FEQV8CCJT5','8p0PXXr9OGgRDd0ieLiJnGLP2n_bBBjIJ9eT-CUrWMk','2025-05-22 12:27:03',1,4,'2025-05-22 12:27:03'),('01JVVZC6DVAC3HQHGHWZ2MMVVP','iqKK8glI1YTVYa5PP8tV2njb2eMKdcoNIU5TAUDNYBQ','2025-05-22 12:27:03',1,4,'2025-05-22 12:27:03'),('01JVVZC6YBB244VVDNNSEKG7KN','3A-r4jQWYmJINZKSjscu5S0MiIY3_sG7gQXFLxoGnss','2025-05-22 12:27:04',1,4,'2025-05-22 12:27:04'),('01JVVZC8Q5ARSYRSEVCX90CXXQ','3aNX0JacVdmLLoDVBNmYT5eS0fJOhj35Ys0I6PrrgN4','2025-05-22 12:27:06',1,4,'2025-05-22 12:27:06'),('01JVVZC97AD4YWVPWS5DTSKV5B','fik4A-J46Q94wGBfHz5FEYvqTF6VKiu8EaA8JWzDguM','2025-05-22 12:27:06',1,4,'2025-05-22 12:27:06'),('01JVVZCFGNCZQ8XJYW2MAGHHBW','0','2025-05-22 12:27:19',1,NULL,'2025-05-22 12:27:19'),('01JVVZCFH699BKP2TB3DJP63MZ','0','2025-05-22 12:27:19',1,NULL,'2025-05-22 12:27:19'),('01JVVZCFHP7T16AVH2NRJBQJVV','0','2025-05-22 12:27:19',1,NULL,'2025-05-22 12:27:19'),('01JVVZCFJCQWYWZF7PT02BGJQF','0','2025-05-22 12:27:19',1,NULL,'2025-05-22 12:27:19'),('01JVVZDGPZ2NQGA7ZJB7XCDK09','dLa1Cz4E_CR6owvk1ujkWEpEk2pjvMDDv8UFL35S8TY','2025-05-22 12:28:00',1,5,'2025-05-22 12:28:00'),('01JVVZE15SAK643DT7N3R8RBSM','MS6tLvVVba_mcAiXl7xPbLYg7fk3fYQxMNnZ1sp4asI','2025-05-22 12:28:12',1,5,'2025-05-22 12:28:12'),('01JVW42Z5QTKBHK30VGJ05GGAP','nSURxvXSiJr8--T0WiMhC3y59qdhd12cFOIBs29du5g','2025-05-22 13:49:34',1,5,'2025-05-22 13:49:34'),('0a0520cd-d12c-42f2-b0db-fd9152bb88e7','0','2025-05-22 12:15:24',1,NULL,'2025-05-22 12:15:24'),('0bf9f9e5-78ce-48e8-a957-504ebfc449b2','0','2025-05-22 12:17:05',1,NULL,'2025-05-22 12:17:05'),('0db4ef52-1e0c-45e8-9b45-f93da6dfab9b','0','2025-05-22 12:24:34',1,NULL,'2025-05-22 12:24:34'),('199c2299-9cab-46d1-9b5f-91a7a0250f54','0','2025-05-22 12:17:21',1,NULL,'2025-05-22 12:17:21'),('1ab87be6-d50f-4c36-b93f-66c14d9dbf54','0','2025-05-22 12:16:21',1,NULL,'2025-05-22 12:16:21'),('21123852-97f6-48e2-be89-7791a5308152','0','2025-05-22 12:14:00',1,NULL,'2025-05-22 12:14:00'),('2d97f330-9984-4464-b78b-92d5bf796202','0','2025-05-22 12:14:15',1,NULL,'2025-05-22 12:14:15'),('62df22e8-2872-4fe6-90d0-d069fa904890','0','2025-05-22 12:19:00',1,NULL,'2025-05-22 12:19:00'),('92a18b7c-37de-46fc-829d-51021ecaefb6','0','2025-05-22 12:13:08',1,NULL,'2025-05-22 12:13:08'),('be69d192-e0d4-4f44-ac8f-f10153423609','0','2025-05-22 12:22:24',1,NULL,'2025-05-22 12:22:24'),('c71102e5-de0a-4759-b73b-641c5db20a4a','0','2025-05-22 12:12:53',1,NULL,'2025-05-22 12:12:53'),('cf89af51-97f1-4b0f-9176-4ac3d4d02e34','0','2025-05-22 12:15:08',1,NULL,'2025-05-22 12:15:08'),('ec3997db-f39c-4bdb-98e7-906485587a45','0','2025-05-22 12:16:11',1,NULL,'2025-05-22 12:16:11'),('eec8c141-e4ad-49c2-9842-ae5e6dd27bf8','0','2025-05-22 12:18:48',1,NULL,'2025-05-22 12:18:48');
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
INSERT INTO `transferFulfilmentDuplicateCheck` VALUES ('01JVVYYNASE5P0RW5XK8TNQYT7','quzbmcYCONmP+91U1n5XWrti7VsM4h7XPODUhoDQoZM','2025-05-22 12:19:53'),('01JVVYZ9M8GJ2E6NDJFRVHZTE5','ol9xP5IZ+WdBNpypF6m9/oj+TRVQU8atozwnMC5WLHc','2025-05-22 12:20:02'),('01JVVYZJSBK68PY2YXHV4Q78V3','PpzPf+kMgaoj39YxE37KBZB4NIhUkyzmeyn5xjMFOZ4','2025-05-22 12:20:10'),('01JVVYZK0NQNFT3NV7QVS9APYG',NULL,'2025-05-22 12:20:09'),('01JVVYZTDKB6SGRY98ZJPKXZF6','8vtMtMV65DzVdAu6C0qAw5rAz3puRkcTMDhn0Kcv0j0','2025-05-22 12:20:18'),('01JVVZ06893Q0H73NX30HCESHR','V32CEMJNxe4Q7t0z2gNu3P6BtzG7bXLLnvnnEADFfpg','2025-05-22 12:20:30'),('01JVVZ0BH7R508BKGCE5WABEBT','lDZeICw5FQC58Y9whTVhMDgxxFawtdxxNEZowQEQGmc','2025-05-22 12:20:39'),('01JVVZ0N64JM0PP084VPM2AKH4',NULL,'2025-05-22 12:20:44'),('01JVVZ0SBFX5M7B5M1FQTZ2DSE','a+8s9U++Rm+H/VOy49IcE0L9fJZWAexjuT/4oJvHdoU','2025-05-22 12:20:50'),('01JVVZ18EYKN9QETM9DJJZZ151','i2iNzK9plBatGDrxgoIdglvPuwqIGHNjSVpuuu/d+BI','2025-05-22 12:21:05'),('01JVVZ1R2TH5BCDN98FE0Y6NWB','KXHYlHGRtsxXaeggc9rhqY1xqjqH5dPEr52DZDbcHA4','2025-05-22 12:21:21'),('01JVVZ1TZS9H0RQVFP43PGZ8BB','17VAVE92gkrDZOQ9imaB8XEUnhM1CkXD8D/cefogMzY','2025-05-22 12:21:24'),('01JVVZ221NER7VFNEF8FM5JTPT','zYSPypi6dkExl98TrvSODFIbqLeiQ1FaD2SM2lV6iVA','2025-05-22 12:21:34'),('01JVVZ2M8ZYZ3C6RNVNWK5GGDR','Rc95N1YxPMVaBEAM7tiRGs1JUU2fi8Lb9DycSzzbBkk','2025-05-22 12:21:51'),('01JVVZ2V83SQFDK3VW0VYS33EF','YgxFMl7h1YltcKlT037lfo4aA4QuEiG7kTeTw6APNk0','2025-05-22 12:22:00'),('01JVVZ33NPEG3HZ1MDRQ1ARK3K',NULL,'2025-05-22 12:22:05'),('01JVVZ36A87NNR50QJ9EX5YPNW',NULL,'2025-05-22 12:22:13'),('01JVVZ3DMJ12FT1SJBV4A5EDY8',NULL,'2025-05-22 12:22:17'),('01JVVZ3J8WD4XBANQ8DC4FGG8P','YLNVDmXF3XIFZjIZy56+4IvBQHKHkCUqy58ouB+SMyA','2025-05-22 12:22:21'),('01JVVZ3VGJNN1BY4NK6NWG1FED','AdVwxxZs0shhfLhjRYqj6ca14p3whi09stm7fhTg/wo','2025-05-22 12:22:30'),('01JVVZ3X9BFSJH1BVHNCZKE14R','zjM8+TkMF0c6tJzWEw82oKXk40C1t0r7GgcOAWB+ofg','2025-05-22 12:22:32'),('01JVVZ3Y9BVY4W8GF8WDT0N05R','u/NTXfPK5Uj9CBd7RQdPxcBU7+NZiAVR1J+27CHlJ74','2025-05-22 12:22:35'),('01JVVZ445N2K4GE2DF3MNZVY9R','dq/wnuesXg6XTlScNDuRquamEgOwe+ytJ/YwNiQDWPY','2025-05-22 12:22:43'),('01JVVZ4NX5NNMQ12YF0GBCX80Y','GC/QPNKPT1ASQIK6u1unRG1wZ6s8/dXMtAjIcAdDp1k','2025-05-22 12:22:57'),('01JVVZ80N2SSZ3ETPBJEZDMWWT','7Cm09lOK0/f/66D/zSStWqwvYUhRj4Q4sesLgecya80','2025-05-22 12:24:51'),('01JVVZ9TZ733QQ55ZBREVSPXKJ','mB+A9JydCS2MKx3ZwPUyYCjKfWRsLMVrssR9Geri41E','2025-05-22 12:25:46'),('01JVVZ9VKSC0EZXY02EZEES1FX','m3hZVtgFaLPedvDB55+A/lcx7pVfxfhp2M/WY+IPtGo','2025-05-22 12:25:46'),('01JVVZ9W382KZS35BMGMY29BNB','warvkW8YLHl3pX7PXIzhMjDTRM7CjUwLaUGMt8lPx9k','2025-05-22 12:25:47'),('01JVVZ9WPHY11YZWGE701H8AMV','oeCuFC+XFLkIKwb2iHgo7oK6LNZ04r4gLQwkmBS8Dbc','2025-05-22 12:25:48'),('01JVVZ9XD7C0YR5E4QZZBN60Z8','GFOATGd5KVUTjsADin4IVhSNMEthMIHjtfnx1GDfmcw','2025-05-22 12:25:48'),('01JVVZ9Y054WX1STK8G4A61T6G','SF9jVZOLyWadMPIB6uj8vL4S1u9mH1XSBjKqAi0lViQ','2025-05-22 12:25:49'),('01JVVZA7EESE9FZW4CRPN785AV',NULL,'2025-05-22 12:26:11'),('01JVVZA7F78539T8W8BTH80D33',NULL,'2025-05-22 12:26:11'),('01JVVZA7FQJ79XDQ8VMH2JCVEK',NULL,'2025-05-22 12:26:11'),('01JVVZA7G81WZGW7EJERHXX0SB',NULL,'2025-05-22 12:26:11'),('01JVVZAB4TNRZ5KPGZEKSAAJTE',NULL,'2025-05-22 12:26:14'),('01JVVZAB5T7EQBP85XG97K7NTC',NULL,'2025-05-22 12:26:14'),('01JVVZAB6B6S28K7PARE12T23T',NULL,'2025-05-22 12:26:14'),('01JVVZAB7Y0M1FN8N7QXTQ6HXM',NULL,'2025-05-22 12:26:14'),('01JVVZB9ZP474ZV0MKFZ6AFCHR','IJDxaD5lP/ZkWDoFMqeOz130blrMHHt4aEGBG2USXJA','2025-05-22 12:26:34'),('01JVVZBB3F6XNXJ64AB6D6H7R4','f+CEhKBPiFAcV6oiopFdgzDoZ0hSFAwWf/Ep4td9kzM','2025-05-22 12:26:35'),('01JVVZBBK9VKY1JV2305X31ED2','oMWgvOnJXr+iaIxjbpt67gMgI+WGZ7OufzwWTVo4d2E','2025-05-22 12:26:35'),('01JVVZBC36V4B7D37BXHJDG06E','lY67Dko9BiF0D9U7wEJjwR6y8HiJhdcoziV8lycQqms','2025-05-22 12:26:36'),('01JVVZBCK01QKBN5CTGM2GWKGY','CudwUzEIpzclP+zDuHNZ9J2BSCu5TK3mTMRuW5CMisU','2025-05-22 12:26:36'),('01JVVZBD463527KDKSEDAQCPH3','gUNGIb4ZUo8kRONCwwvPcJDXXjV2GB1O8WpPhV6RMlM','2025-05-22 12:26:37'),('01JVVZBKGMWB0DCZ3CS281CEKA',NULL,'2025-05-22 12:26:49'),('01JVVZBKH9W4KE5J9EXYB1GR6G',NULL,'2025-05-22 12:26:49'),('01JVVZBKHP5FZKVE2150AC5AZR',NULL,'2025-05-22 12:26:49'),('01JVVZBKJ3HYF6ESM6MZGYD016',NULL,'2025-05-22 12:26:49'),('01JVVZC581V1D996Z1GVPGXXSX','ie99GCZUtWYBpG1Yp4dwgfcbyoeWw6UiypAkAUFEWNs','2025-05-22 12:27:02'),('01JVVZC5XS9T55E3FEQV8CCJT5','LPitHmuj2rw70DXNQh3pmGiuGP5PjEe7f/qsn8Wvc3I','2025-05-22 12:27:02'),('01JVVZC6DVAC3HQHGHWZ2MMVVP','hkzcpjBHZrna72rSZ3+DQjPKnBsFiWYjMPaehJPJWRU','2025-05-22 12:27:03'),('01JVVZC6YBB244VVDNNSEKG7KN','cRzsqS6xtXxJUgCkdRIIDDy9Klp75CPpDQkghKyRAxg','2025-05-22 12:27:03'),('01JVVZC8Q5ARSYRSEVCX90CXXQ','GVPiZhsyMbXze5QVeTCpk898s8sF3CbKj16eHRN2jw4','2025-05-22 12:27:05'),('01JVVZC97AD4YWVPWS5DTSKV5B','NqzdT5QE21bxSXi9ELGuokiHxOsds9sw2DL3wAwqiQM','2025-05-22 12:27:06'),('01JVVZCFGNCZQ8XJYW2MAGHHBW',NULL,'2025-05-22 12:27:18'),('01JVVZCFH699BKP2TB3DJP63MZ',NULL,'2025-05-22 12:27:18'),('01JVVZCFHP7T16AVH2NRJBQJVV',NULL,'2025-05-22 12:27:18'),('01JVVZCFJCQWYWZF7PT02BGJQF',NULL,'2025-05-22 12:27:18'),('01JVVZDGPZ2NQGA7ZJB7XCDK09','IX4KK6ctybM8XHB+eWHhHeZ1RIfnlrrViRizb4YBK/I','2025-05-22 12:28:00'),('01JVVZE15SAK643DT7N3R8RBSM','2kUUvOvoyuAV00+mXGNKGtqVjcvba5Z2tCDM9TJEA+U','2025-05-22 12:28:11'),('01JVW42Z5QTKBHK30VGJ05GGAP','4qCf0D31VZoU8sCcy7U/VbhRJqUSuei9A9kZEQ2iq0U','2025-05-22 13:49:34'),('0a0520cd-d12c-42f2-b0db-fd9152bb88e7',NULL,'2025-05-22 12:15:23'),('0bf9f9e5-78ce-48e8-a957-504ebfc449b2',NULL,'2025-05-22 12:17:04'),('0db4ef52-1e0c-45e8-9b45-f93da6dfab9b',NULL,'2025-05-22 12:24:34'),('199c2299-9cab-46d1-9b5f-91a7a0250f54',NULL,'2025-05-22 12:17:21'),('1ab87be6-d50f-4c36-b93f-66c14d9dbf54',NULL,'2025-05-22 12:16:21'),('21123852-97f6-48e2-be89-7791a5308152',NULL,'2025-05-22 12:14:00'),('2d97f330-9984-4464-b78b-92d5bf796202',NULL,'2025-05-22 12:14:15'),('62df22e8-2872-4fe6-90d0-d069fa904890',NULL,'2025-05-22 12:19:00'),('92a18b7c-37de-46fc-829d-51021ecaefb6',NULL,'2025-05-22 12:13:08'),('be69d192-e0d4-4f44-ac8f-f10153423609',NULL,'2025-05-22 12:22:23'),('c71102e5-de0a-4759-b73b-641c5db20a4a',NULL,'2025-05-22 12:12:53'),('cf89af51-97f1-4b0f-9176-4ac3d4d02e34',NULL,'2025-05-22 12:15:08'),('ec3997db-f39c-4bdb-98e7-906485587a45',NULL,'2025-05-22 12:16:11'),('eec8c141-e4ad-49c2-9842-ae5e6dd27bf8',NULL,'2025-05-22 12:18:48');
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferParticipant`
--

LOCK TABLES `transferParticipant` WRITE;
/*!40000 ALTER TABLE `transferParticipant` DISABLE KEYS */;
INSERT INTO `transferParticipant` VALUES (1,'c71102e5-de0a-4759-b73b-641c5db20a4a',2,3,9,5000.0000,'2025-05-22 12:12:53',1,NULL),(2,'c71102e5-de0a-4759-b73b-641c5db20a4a',10,4,9,-5000.0000,'2025-05-22 12:12:53',2,NULL),(3,'92a18b7c-37de-46fc-829d-51021ecaefb6',4,3,9,5000.0000,'2025-05-22 12:13:08',1,NULL),(4,'92a18b7c-37de-46fc-829d-51021ecaefb6',12,4,9,-5000.0000,'2025-05-22 12:13:08',2,NULL),(5,'21123852-97f6-48e2-be89-7791a5308152',2,3,9,5000.0000,'2025-05-22 12:14:00',1,NULL),(6,'21123852-97f6-48e2-be89-7791a5308152',18,4,9,-5000.0000,'2025-05-22 12:14:00',3,NULL),(7,'2d97f330-9984-4464-b78b-92d5bf796202',4,3,9,5000.0000,'2025-05-22 12:14:15',1,NULL),(8,'2d97f330-9984-4464-b78b-92d5bf796202',20,4,9,-5000.0000,'2025-05-22 12:14:15',3,NULL),(9,'cf89af51-97f1-4b0f-9176-4ac3d4d02e34',2,3,9,5000.0000,'2025-05-22 12:15:08',1,NULL),(10,'cf89af51-97f1-4b0f-9176-4ac3d4d02e34',26,4,9,-5000.0000,'2025-05-22 12:15:08',4,NULL),(11,'0a0520cd-d12c-42f2-b0db-fd9152bb88e7',4,3,9,5000.0000,'2025-05-22 12:15:24',1,NULL),(12,'0a0520cd-d12c-42f2-b0db-fd9152bb88e7',28,4,9,-5000.0000,'2025-05-22 12:15:24',4,NULL),(13,'ec3997db-f39c-4bdb-98e7-906485587a45',2,3,9,5000.0000,'2025-05-22 12:16:11',1,NULL),(14,'ec3997db-f39c-4bdb-98e7-906485587a45',34,4,9,-5000.0000,'2025-05-22 12:16:11',5,NULL),(15,'1ab87be6-d50f-4c36-b93f-66c14d9dbf54',4,3,9,5000.0000,'2025-05-22 12:16:21',1,NULL),(16,'1ab87be6-d50f-4c36-b93f-66c14d9dbf54',36,4,9,-5000.0000,'2025-05-22 12:16:21',5,NULL),(17,'0bf9f9e5-78ce-48e8-a957-504ebfc449b2',2,3,9,5000.0000,'2025-05-22 12:17:05',1,NULL),(18,'0bf9f9e5-78ce-48e8-a957-504ebfc449b2',42,4,9,-5000.0000,'2025-05-22 12:17:05',6,NULL),(19,'199c2299-9cab-46d1-9b5f-91a7a0250f54',4,3,9,5000.0000,'2025-05-22 12:17:21',1,NULL),(20,'199c2299-9cab-46d1-9b5f-91a7a0250f54',44,4,9,-5000.0000,'2025-05-22 12:17:21',6,NULL),(21,'eec8c141-e4ad-49c2-9842-ae5e6dd27bf8',2,3,9,5000.0000,'2025-05-22 12:18:48',1,NULL),(22,'eec8c141-e4ad-49c2-9842-ae5e6dd27bf8',50,4,9,-5000.0000,'2025-05-22 12:18:48',7,NULL),(23,'62df22e8-2872-4fe6-90d0-d069fa904890',4,3,9,5000.0000,'2025-05-22 12:19:00',1,NULL),(24,'62df22e8-2872-4fe6-90d0-d069fa904890',52,4,9,-5000.0000,'2025-05-22 12:19:00',7,NULL),(25,'01JVVYYNASE5P0RW5XK8TNQYT7',49,1,1,100.0000,'2025-05-22 12:19:50',7,NULL),(26,'01JVVYYNASE5P0RW5XK8TNQYT7',17,2,1,-100.0000,'2025-05-22 12:19:50',3,NULL),(27,'01JVVYZ9M8GJ2E6NDJFRVHZTE5',49,1,1,100.0000,'2025-05-22 12:20:01',7,NULL),(28,'01JVVYZ9M8GJ2E6NDJFRVHZTE5',17,2,1,-100.0000,'2025-05-22 12:20:01',3,NULL),(29,'01JVVYZK0NQNFT3NV7QVS9APYG',6,3,9,5000.0000,'2025-05-22 12:20:10',1,NULL),(30,'01JVVYZK0NQNFT3NV7QVS9APYG',66,4,9,-5000.0000,'2025-05-22 12:20:10',9,NULL),(31,'01JVVYZJSBK68PY2YXHV4Q78V3',49,1,1,100.0000,'2025-05-22 12:20:10',7,NULL),(32,'01JVVYZJSBK68PY2YXHV4Q78V3',17,2,1,-100.0000,'2025-05-22 12:20:10',3,NULL),(33,'01JVVYZTDKB6SGRY98ZJPKXZF6',49,1,1,100.0000,'2025-05-22 12:20:18',7,NULL),(34,'01JVVYZTDKB6SGRY98ZJPKXZF6',17,2,1,-100.0000,'2025-05-22 12:20:18',3,NULL),(35,'01JVVZ06893Q0H73NX30HCESHR',49,1,1,100.0000,'2025-05-22 12:20:30',7,NULL),(36,'01JVVZ06893Q0H73NX30HCESHR',17,2,1,-100.0000,'2025-05-22 12:20:30',3,NULL),(37,'01JVVZ0BH7R508BKGCE5WABEBT',49,1,1,100.0000,'2025-05-22 12:20:37',7,NULL),(38,'01JVVZ0BH7R508BKGCE5WABEBT',57,2,1,-100.0000,'2025-05-22 12:20:37',8,NULL),(39,'01JVVZ0FQYDR1E597MMG006A34',49,1,1,1.0000,'2025-05-22 12:20:39',7,NULL),(40,'01JVVZ0FQYDR1E597MMG006A34',25,2,1,-1.0000,'2025-05-22 12:20:39',4,NULL),(41,'01JVVZ0N64JM0PP084VPM2AKH4',6,3,9,5000.0000,'2025-05-22 12:20:45',1,NULL),(42,'01JVVZ0N64JM0PP084VPM2AKH4',70,4,9,-5000.0000,'2025-05-22 12:20:45',10,NULL),(43,'01JVVZ0SBFX5M7B5M1FQTZ2DSE',49,1,1,100.0000,'2025-05-22 12:20:49',7,NULL),(44,'01JVVZ0SBFX5M7B5M1FQTZ2DSE',25,2,1,-100.0000,'2025-05-22 12:20:49',4,NULL),(45,'01JVVZ0WRHRVJKS2FJ3Y37CH1Q',49,1,1,100.0000,'2025-05-22 12:20:53',7,NULL),(46,'01JVVZ0WRHRVJKS2FJ3Y37CH1Q',25,2,1,-100.0000,'2025-05-22 12:20:53',4,NULL),(47,'01JVVZ18EYKN9QETM9DJJZZ151',49,1,1,100.0000,'2025-05-22 12:21:04',7,NULL),(48,'01JVVZ18EYKN9QETM9DJJZZ151',25,2,1,-100.0000,'2025-05-22 12:21:04',4,NULL),(49,'01JVVZ1BQCF077ADV07PPYK3HS',49,1,1,105.0000,'2025-05-22 12:21:08',7,NULL),(50,'01JVVZ1BQCF077ADV07PPYK3HS',25,2,1,-105.0000,'2025-05-22 12:21:08',4,NULL),(51,'01JVVZ1R2TH5BCDN98FE0Y6NWB',49,1,1,100.0000,'2025-05-22 12:21:21',7,NULL),(52,'01JVVZ1R2TH5BCDN98FE0Y6NWB',17,2,1,-100.0000,'2025-05-22 12:21:21',3,NULL),(53,'01JVVZ1TZS9H0RQVFP43PGZ8BB',49,1,1,1.0000,'2025-05-22 12:21:24',7,NULL),(54,'01JVVZ1TZS9H0RQVFP43PGZ8BB',25,2,1,-1.0000,'2025-05-22 12:21:24',4,NULL),(55,'01JVVZ221NER7VFNEF8FM5JTPT',49,1,1,1.0000,'2025-05-22 12:21:31',7,NULL),(56,'01JVVZ221NER7VFNEF8FM5JTPT',25,2,1,-1.0000,'2025-05-22 12:21:31',4,NULL),(57,'01JVVZ2AES2FXQYK192KDQHME7',49,1,1,1.0000,'2025-05-22 12:21:40',7,NULL),(58,'01JVVZ2AES2FXQYK192KDQHME7',25,2,1,-1.0000,'2025-05-22 12:21:40',4,NULL),(59,'01JVVZ2BQCZDQTKCEZ5XBFKPFQ',49,1,1,1.0000,'2025-05-22 12:21:41',7,NULL),(60,'01JVVZ2BQCZDQTKCEZ5XBFKPFQ',25,2,1,-1.0000,'2025-05-22 12:21:41',4,NULL),(61,'01JVVZ2E7NS5FY74A42ZYWZ9D3',33,1,1,100.0000,'2025-05-22 12:21:47',5,NULL),(62,'01JVVZ2E7NS5FY74A42ZYWZ9D3',41,2,1,-100.0000,'2025-05-22 12:21:47',6,NULL),(63,'01JVVZ2M8ZYZ3C6RNVNWK5GGDR',33,1,1,100.0000,'2025-05-22 12:21:51',5,NULL),(64,'01JVVZ2M8ZYZ3C6RNVNWK5GGDR',41,2,1,-100.0000,'2025-05-22 12:21:51',6,NULL),(65,'01JVVZ2R9K46GP3JP4RPBEDXDC',33,1,1,100.0000,'2025-05-22 12:21:54',5,NULL),(66,'01JVVZ2R9K46GP3JP4RPBEDXDC',41,2,1,-100.0000,'2025-05-22 12:21:54',6,NULL),(67,'01JVVZ2V83SQFDK3VW0VYS33EF',33,1,1,100.0000,'2025-05-22 12:22:00',5,NULL),(68,'01JVVZ2V83SQFDK3VW0VYS33EF',41,2,1,-100.0000,'2025-05-22 12:22:00',6,NULL),(69,'01JVVZ3066XG1TGDSS1ZKVXJCH',49,1,1,5298.0000,'2025-05-22 12:22:02',7,NULL),(70,'01JVVZ3066XG1TGDSS1ZKVXJCH',17,2,1,-5298.0000,'2025-05-22 12:22:02',3,NULL),(71,'01JVVZ328M7WQJV988ES7C4WVB',49,1,1,3299.0000,'2025-05-22 12:22:04',7,NULL),(72,'01JVVZ328M7WQJV988ES7C4WVB',17,2,1,-3299.0000,'2025-05-22 12:22:04',3,NULL),(73,'01JVVZ33NPEG3HZ1MDRQ1ARK3K',2,3,9,10.0000,'2025-05-22 12:22:05',1,NULL),(74,'01JVVZ33NPEG3HZ1MDRQ1ARK3K',50,4,9,-10.0000,'2025-05-22 12:22:05',7,NULL),(75,'01JVVZ36A87NNR50QJ9EX5YPNW',2,3,10,-10.0000,'2025-05-22 12:22:08',1,NULL),(76,'01JVVZ36A87NNR50QJ9EX5YPNW',50,4,10,10.0000,'2025-05-22 12:22:08',7,NULL),(77,'01JVVZ3DMJ12FT1SJBV4A5EDY8',2,3,10,-10.0000,'2025-05-22 12:22:16',1,NULL),(78,'01JVVZ3DMJ12FT1SJBV4A5EDY8',50,4,10,10.0000,'2025-05-22 12:22:16',7,NULL),(79,'01JVVZ3J8WD4XBANQ8DC4FGG8P',49,1,1,10.0000,'2025-05-22 12:22:21',7,NULL),(80,'01JVVZ3J8WD4XBANQ8DC4FGG8P',17,2,1,-10.0000,'2025-05-22 12:22:21',3,NULL),(81,'be69d192-e0d4-4f44-ac8f-f10153423609',4,3,9,5000.0000,'2025-05-22 12:22:24',1,NULL),(82,'be69d192-e0d4-4f44-ac8f-f10153423609',76,4,9,-5000.0000,'2025-05-22 12:22:24',11,NULL),(83,'01JVVZ3VGJNN1BY4NK6NWG1FED',9,1,1,10.0000,'2025-05-22 12:22:30',2,NULL),(84,'01JVVZ3VGJNN1BY4NK6NWG1FED',17,2,1,-10.0000,'2025-05-22 12:22:30',3,NULL),(85,'01JVVZ3X9BFSJH1BVHNCZKE14R',41,1,1,10.0000,'2025-05-22 12:22:32',6,NULL),(86,'01JVVZ3X9BFSJH1BVHNCZKE14R',33,2,1,-10.0000,'2025-05-22 12:22:32',5,NULL),(87,'01JVVZ3Y9BVY4W8GF8WDT0N05R',49,1,1,101.0000,'2025-05-22 12:22:34',7,NULL),(88,'01JVVZ3Y9BVY4W8GF8WDT0N05R',57,2,1,-101.0000,'2025-05-22 12:22:34',8,NULL),(89,'01JVVZ445N2K4GE2DF3MNZVY9R',49,1,1,103.0000,'2025-05-22 12:22:42',7,NULL),(90,'01JVVZ445N2K4GE2DF3MNZVY9R',57,2,1,-103.0000,'2025-05-22 12:22:42',8,NULL),(91,'01JVVZ4NX5NNMQ12YF0GBCX80Y',49,1,1,100.0000,'2025-05-22 12:22:57',7,NULL),(92,'01JVVZ4NX5NNMQ12YF0GBCX80Y',17,2,1,-100.0000,'2025-05-22 12:22:57',3,NULL),(93,'01JVVZ72MA0X195WQSYWTCWZHK',9,1,1,100.0000,'2025-05-22 12:24:15',2,NULL),(94,'0db4ef52-1e0c-45e8-9b45-f93da6dfab9b',8,3,9,5000.0000,'2025-05-22 12:24:34',1,NULL),(95,'0db4ef52-1e0c-45e8-9b45-f93da6dfab9b',80,4,9,-5000.0000,'2025-05-22 12:24:34',13,NULL),(96,'01JVVZ80N2SSZ3ETPBJEZDMWWT',49,1,1,60.1234,'2025-05-22 12:24:51',7,NULL),(97,'01JVVZ80N2SSZ3ETPBJEZDMWWT',17,2,1,-60.1234,'2025-05-22 12:24:51',3,NULL),(98,'01JVVZ86M93TDPW5604HXZ8R1P',49,1,1,104.0000,'2025-05-22 12:24:55',7,NULL),(99,'01JVVZ86M93TDPW5604HXZ8R1P',57,2,1,-104.0000,'2025-05-22 12:24:55',8,NULL),(100,'01JVVZ8QQQJVTB05KA7N0HQJB5',49,1,1,102.0000,'2025-05-22 12:25:16',7,NULL),(101,'01JVVZ8QQQJVTB05KA7N0HQJB5',57,2,1,-102.0000,'2025-05-22 12:25:16',8,NULL),(102,'01JVVZ94DKVQD82PPXZ3EHCH0Q',17,1,1,5.0000,'2025-05-22 12:25:23',3,NULL),(103,'01JVVZ94DKVQD82PPXZ3EHCH0Q',17,2,1,-5.0000,'2025-05-22 12:25:23',3,NULL),(104,'01JVVZ9TZ733QQ55ZBREVSPXKJ',33,1,1,60.0000,'2025-05-22 12:25:46',5,NULL),(105,'01JVVZ9TZ733QQ55ZBREVSPXKJ',41,2,1,-60.0000,'2025-05-22 12:25:46',6,NULL),(106,'01JVVZ9VKSC0EZXY02EZEES1FX',35,1,1,55.0000,'2025-05-22 12:25:46',5,NULL),(107,'01JVVZ9VKSC0EZXY02EZEES1FX',19,2,1,-55.0000,'2025-05-22 12:25:46',3,NULL),(108,'01JVVZ9W382KZS35BMGMY29BNB',9,1,1,35.0000,'2025-05-22 12:25:47',2,NULL),(109,'01JVVZ9W382KZS35BMGMY29BNB',33,2,1,-35.0000,'2025-05-22 12:25:47',5,NULL),(110,'01JVVZ9WPHY11YZWGE701H8AMV',43,1,1,20.0000,'2025-05-22 12:25:47',6,NULL),(111,'01JVVZ9WPHY11YZWGE701H8AMV',11,2,1,-20.0000,'2025-05-22 12:25:47',2,NULL),(112,'01JVVZ9XD7C0YR5E4QZZBN60Z8',17,1,1,35.0000,'2025-05-22 12:25:48',3,NULL),(113,'01JVVZ9XD7C0YR5E4QZZBN60Z8',41,2,1,-35.0000,'2025-05-22 12:25:48',6,NULL),(114,'01JVVZ9Y054WX1STK8G4A61T6G',19,1,1,25.0000,'2025-05-22 12:25:49',3,NULL),(115,'01JVVZ9Y054WX1STK8G4A61T6G',11,2,1,-25.0000,'2025-05-22 12:25:49',2,NULL),(116,'01JVVZA7EESE9FZW4CRPN785AV',1,3,7,35.0000,'2025-05-22 12:25:58',1,NULL),(117,'01JVVZA7EESE9FZW4CRPN785AV',9,5,7,-35.0000,'2025-05-22 12:25:58',2,NULL),(118,'01JVVZA7F78539T8W8BTH80D33',1,3,7,35.0000,'2025-05-22 12:25:59',1,NULL),(119,'01JVVZA7F78539T8W8BTH80D33',17,5,7,-35.0000,'2025-05-22 12:25:59',3,NULL),(120,'01JVVZA7FQJ79XDQ8VMH2JCVEK',1,3,7,25.0000,'2025-05-22 12:25:59',1,NULL),(121,'01JVVZA7FQJ79XDQ8VMH2JCVEK',33,5,7,-25.0000,'2025-05-22 12:25:59',5,NULL),(122,'01JVVZA7G81WZGW7EJERHXX0SB',1,3,6,-95.0000,'2025-05-22 12:25:59',1,NULL),(123,'01JVVZA7G81WZGW7EJERHXX0SB',41,5,6,95.0000,'2025-05-22 12:25:59',6,NULL),(124,'01JVVZAB4TNRZ5KPGZEKSAAJTE',3,3,6,-45.0000,'2025-05-22 12:26:02',1,NULL),(125,'01JVVZAB4TNRZ5KPGZEKSAAJTE',11,5,6,45.0000,'2025-05-22 12:26:02',2,NULL),(126,'01JVVZAB5T7EQBP85XG97K7NTC',3,3,6,-30.0000,'2025-05-22 12:26:02',1,NULL),(127,'01JVVZAB5T7EQBP85XG97K7NTC',19,5,6,30.0000,'2025-05-22 12:26:02',3,NULL),(128,'01JVVZAB6B6S28K7PARE12T23T',3,3,7,55.0000,'2025-05-22 12:26:02',1,NULL),(129,'01JVVZAB6B6S28K7PARE12T23T',35,5,7,-55.0000,'2025-05-22 12:26:02',5,NULL),(130,'01JVVZAB7Y0M1FN8N7QXTQ6HXM',3,3,7,20.0000,'2025-05-22 12:26:02',1,NULL),(131,'01JVVZAB7Y0M1FN8N7QXTQ6HXM',43,5,7,-20.0000,'2025-05-22 12:26:02',6,NULL),(132,'01JVVZB9ZP474ZV0MKFZ6AFCHR',33,1,1,60.0000,'2025-05-22 12:26:34',5,NULL),(133,'01JVVZB9ZP474ZV0MKFZ6AFCHR',41,2,1,-60.0000,'2025-05-22 12:26:34',6,NULL),(134,'01JVVZBB3F6XNXJ64AB6D6H7R4',33,1,1,55.0000,'2025-05-22 12:26:35',5,NULL),(135,'01JVVZBB3F6XNXJ64AB6D6H7R4',17,2,1,-55.0000,'2025-05-22 12:26:35',3,NULL),(136,'01JVVZBBK9VKY1JV2305X31ED2',9,1,1,35.0000,'2025-05-22 12:26:35',2,NULL),(137,'01JVVZBBK9VKY1JV2305X31ED2',33,2,1,-35.0000,'2025-05-22 12:26:35',5,NULL),(138,'01JVVZBC36V4B7D37BXHJDG06E',41,1,1,20.0000,'2025-05-22 12:26:36',6,NULL),(139,'01JVVZBC36V4B7D37BXHJDG06E',9,2,1,-20.0000,'2025-05-22 12:26:36',2,NULL),(140,'01JVVZBCK01QKBN5CTGM2GWKGY',17,1,1,35.0000,'2025-05-22 12:26:36',3,NULL),(141,'01JVVZBCK01QKBN5CTGM2GWKGY',41,2,1,-35.0000,'2025-05-22 12:26:36',6,NULL),(142,'01JVVZBD463527KDKSEDAQCPH3',17,1,1,25.0000,'2025-05-22 12:26:37',3,NULL),(143,'01JVVZBD463527KDKSEDAQCPH3',9,2,1,-25.0000,'2025-05-22 12:26:37',2,NULL),(144,'01JVVZBKGMWB0DCZ3CS281CEKA',1,3,6,-10.0000,'2025-05-22 12:26:44',1,NULL),(145,'01JVVZBKGMWB0DCZ3CS281CEKA',9,5,6,10.0000,'2025-05-22 12:26:44',2,NULL),(146,'01JVVZBKH9W4KE5J9EXYB1GR6G',1,3,7,5.0000,'2025-05-22 12:26:44',1,NULL),(147,'01JVVZBKH9W4KE5J9EXYB1GR6G',17,5,7,-5.0000,'2025-05-22 12:26:44',3,NULL),(148,'01JVVZBKHP5FZKVE2150AC5AZR',1,3,7,80.0000,'2025-05-22 12:26:44',1,NULL),(149,'01JVVZBKHP5FZKVE2150AC5AZR',33,5,7,-80.0000,'2025-05-22 12:26:44',5,NULL),(150,'01JVVZBKJ3HYF6ESM6MZGYD016',1,3,6,-75.0000,'2025-05-22 12:26:44',1,NULL),(151,'01JVVZBKJ3HYF6ESM6MZGYD016',41,5,6,75.0000,'2025-05-22 12:26:44',6,NULL),(152,'01JVVZC581V1D996Z1GVPGXXSX',35,1,1,60.0000,'2025-05-22 12:27:02',5,NULL),(153,'01JVVZC581V1D996Z1GVPGXXSX',43,2,1,-60.0000,'2025-05-22 12:27:02',6,NULL),(154,'01JVVZC5XS9T55E3FEQV8CCJT5',35,1,1,55.0000,'2025-05-22 12:27:02',5,NULL),(155,'01JVVZC5XS9T55E3FEQV8CCJT5',19,2,1,-55.0000,'2025-05-22 12:27:02',3,NULL),(156,'01JVVZC6DVAC3HQHGHWZ2MMVVP',11,1,1,35.0000,'2025-05-22 12:27:03',2,NULL),(157,'01JVVZC6DVAC3HQHGHWZ2MMVVP',35,2,1,-35.0000,'2025-05-22 12:27:03',5,NULL),(158,'01JVVZC6YBB244VVDNNSEKG7KN',43,1,1,20.0000,'2025-05-22 12:27:03',6,NULL),(159,'01JVVZC6YBB244VVDNNSEKG7KN',11,2,1,-20.0000,'2025-05-22 12:27:03',2,NULL),(160,'01JVVZC8Q5ARSYRSEVCX90CXXQ',19,1,1,35.0000,'2025-05-22 12:27:05',3,NULL),(161,'01JVVZC8Q5ARSYRSEVCX90CXXQ',43,2,1,-35.0000,'2025-05-22 12:27:05',6,NULL),(162,'01JVVZC97AD4YWVPWS5DTSKV5B',19,1,1,25.0000,'2025-05-22 12:27:06',3,NULL),(163,'01JVVZC97AD4YWVPWS5DTSKV5B',11,2,1,-25.0000,'2025-05-22 12:27:06',2,NULL),(164,'01JVVZCFGNCZQ8XJYW2MAGHHBW',3,3,6,-10.0000,'2025-05-22 12:27:12',1,NULL),(165,'01JVVZCFGNCZQ8XJYW2MAGHHBW',11,5,6,10.0000,'2025-05-22 12:27:12',2,NULL),(166,'01JVVZCFH699BKP2TB3DJP63MZ',3,3,7,5.0000,'2025-05-22 12:27:12',1,NULL),(167,'01JVVZCFH699BKP2TB3DJP63MZ',19,5,7,-5.0000,'2025-05-22 12:27:12',3,NULL),(168,'01JVVZCFHP7T16AVH2NRJBQJVV',3,3,7,80.0000,'2025-05-22 12:27:12',1,NULL),(169,'01JVVZCFHP7T16AVH2NRJBQJVV',35,5,7,-80.0000,'2025-05-22 12:27:12',5,NULL),(170,'01JVVZCFJCQWYWZF7PT02BGJQF',3,3,6,-75.0000,'2025-05-22 12:27:12',1,NULL),(171,'01JVVZCFJCQWYWZF7PT02BGJQF',43,5,6,75.0000,'2025-05-22 12:27:12',6,NULL),(172,'01JVVZDGPZ2NQGA7ZJB7XCDK09',NULL,1,1,100.0000,'2025-05-22 12:27:59',13,NULL),(173,'01JVVZDGPZ2NQGA7ZJB7XCDK09',77,2,1,-100.0000,'2025-05-22 12:27:59',12,NULL),(174,'01JVVZE15SAK643DT7N3R8RBSM',NULL,1,1,100.0000,'2025-05-22 12:28:11',13,NULL),(175,'01JVVZE15SAK643DT7N3R8RBSM',77,2,1,-100.0000,'2025-05-22 12:28:11',12,NULL),(176,'01JVVZEDKHC0MMYXRSD5J8NY8B',NULL,1,1,13.0000,'2025-05-22 12:28:16',13,NULL),(177,'01JVVZEDKHC0MMYXRSD5J8NY8B',77,2,1,-13.0000,'2025-05-22 12:28:16',12,NULL),(178,'01JVVZEEDWGYNJV655N86YQXS3',NULL,1,1,15.0000,'2025-05-22 12:28:17',13,NULL),(179,'01JVVZEEDWGYNJV655N86YQXS3',77,2,1,-15.0000,'2025-05-22 12:28:17',12,NULL),(180,'01JVVZEFEF2HRCGCXD3Y0XRVBY',NULL,1,1,15.0000,'2025-05-22 12:28:18',13,NULL),(181,'01JVVZEFEF2HRCGCXD3Y0XRVBY',77,2,1,-15.0000,'2025-05-22 12:28:18',12,NULL),(182,'01JVVZEGV1R1V31ZT6ZVZBTET5',NULL,1,1,16.0000,'2025-05-22 12:28:19',13,NULL),(183,'01JVVZEGV1R1V31ZT6ZVZBTET5',77,2,1,-16.0000,'2025-05-22 12:28:19',12,NULL),(184,'01JVW42Z5QTKBHK30VGJ05GGAP',NULL,1,1,100.0000,'2025-05-22 13:49:33',13,NULL),(185,'01JVW42Z5QTKBHK30VGJ05GGAP',77,2,1,-100.0000,'2025-05-22 13:49:33',12,NULL);
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
INSERT INTO `transferParticipantRoleType` VALUES (1,'PAYER_DFSP','The participant is the Payer DFSP in this transfer and is sending the funds',1,'2025-05-22 12:04:07'),(2,'PAYEE_DFSP','The participant is the Payee DFSP in this transfer and is receiving the funds',1,'2025-05-22 12:04:07'),(3,'HUB','The participant is representing the Hub Operator',1,'2025-05-22 12:04:07'),(4,'DFSP_SETTLEMENT','Indicates the settlement account',1,'2025-05-22 12:04:07'),(5,'DFSP_POSITION','Indicates the position account',1,'2025-05-22 12:04:07'),(6,'INITIATING_FSP','Identifier for the FSP who is requesting a currency conversion',1,'2025-05-22 12:04:07'),(7,'COUNTER_PARTY_FSP','Identifier for the FXP who is performing the currency conversion',1,'2025-05-22 12:04:07');
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
INSERT INTO `transferState` VALUES ('ABORTED_ERROR','ABORTED','The switch has aborted a transfer due to being RECEIVED_ERROR',1,'2025-05-22 12:04:07'),('ABORTED_REJECTED','ABORTED','The switch has aborted a transfer due to being RECEIVED_REJECT.',1,'2025-05-22 12:04:07'),('COMMITTED','COMMITTED','The switch has successfully performed the transfer.',1,'2025-05-22 12:04:07'),('EXPIRED_PREPARED','ABORTED','The switch has aborted the transfer due to being EXPIRED transfer from RECEIVED_PREPARE.',1,'2025-05-22 12:04:07'),('EXPIRED_RESERVED','ABORTED','The switch has aborted the transfer due to being EXPIRED transfer from RESERVED.',1,'2025-05-22 12:04:07'),('FAILED','ABORTED','Aborted the transfer due to failure to perform the transfer.',1,'2025-05-22 12:04:07'),('INVALID','ABORTED','The switch has aborted the transfer due to validation failure.',1,'2025-05-22 12:04:07'),('RECEIVED_ERROR','RESERVED','The switch has received a transfer error callback',1,'2025-05-22 12:04:07'),('RECEIVED_FULFIL','RESERVED','The switch has reserved the transfer, and has been assigned to a settlement window.',1,'2025-05-22 12:04:07'),('RECEIVED_FULFIL_DEPENDENT','RESERVED','The switch has reserved the fxTransfer fulfilment.',1,'2025-05-22 12:04:07'),('RECEIVED_PREPARE','RECEIVED','The switch has received the transfer.',1,'2025-05-22 12:04:07'),('RECEIVED_REJECT','RESERVED','The switch has received a transfer abort from payee fsp.',1,'2025-05-22 12:04:07'),('RESERVED','RESERVED','The switch has reserved the transfer.',1,'2025-05-22 12:04:07'),('RESERVED_FORWARDED','RESERVED','The switch has forwarded the transfer to a proxy participant',1,'2025-05-22 12:04:07'),('RESERVED_TIMEOUT','RESERVED','Expiring the transfer and returning funds to payer fsp.',1,'2025-05-22 12:04:07'),('SETTLED','SETTLED','The switch has settled the transfer.',1,'2025-05-22 12:04:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferStateChange`
--

LOCK TABLES `transferStateChange` WRITE;
/*!40000 ALTER TABLE `transferStateChange` DISABLE KEYS */;
INSERT INTO `transferStateChange` VALUES (1,'c71102e5-de0a-4759-b73b-641c5db20a4a','RECEIVED_PREPARE','string','2025-05-22 12:12:53'),(2,'c71102e5-de0a-4759-b73b-641c5db20a4a','RESERVED','string','2025-05-22 12:12:53'),(3,'c71102e5-de0a-4759-b73b-641c5db20a4a','RECEIVED_FULFIL','string','2025-05-22 12:12:53'),(4,'c71102e5-de0a-4759-b73b-641c5db20a4a','COMMITTED','string','2025-05-22 12:12:53'),(5,'92a18b7c-37de-46fc-829d-51021ecaefb6','RECEIVED_PREPARE','string','2025-05-22 12:13:08'),(6,'92a18b7c-37de-46fc-829d-51021ecaefb6','RESERVED','string','2025-05-22 12:13:08'),(7,'92a18b7c-37de-46fc-829d-51021ecaefb6','RECEIVED_FULFIL','string','2025-05-22 12:13:08'),(8,'92a18b7c-37de-46fc-829d-51021ecaefb6','COMMITTED','string','2025-05-22 12:13:08'),(9,'21123852-97f6-48e2-be89-7791a5308152','RECEIVED_PREPARE','string','2025-05-22 12:14:00'),(10,'21123852-97f6-48e2-be89-7791a5308152','RESERVED','string','2025-05-22 12:14:00'),(11,'21123852-97f6-48e2-be89-7791a5308152','RECEIVED_FULFIL','string','2025-05-22 12:14:00'),(12,'21123852-97f6-48e2-be89-7791a5308152','COMMITTED','string','2025-05-22 12:14:00'),(13,'2d97f330-9984-4464-b78b-92d5bf796202','RECEIVED_PREPARE','string','2025-05-22 12:14:15'),(14,'2d97f330-9984-4464-b78b-92d5bf796202','RESERVED','string','2025-05-22 12:14:15'),(15,'2d97f330-9984-4464-b78b-92d5bf796202','RECEIVED_FULFIL','string','2025-05-22 12:14:15'),(16,'2d97f330-9984-4464-b78b-92d5bf796202','COMMITTED','string','2025-05-22 12:14:15'),(17,'cf89af51-97f1-4b0f-9176-4ac3d4d02e34','RECEIVED_PREPARE','string','2025-05-22 12:15:08'),(18,'cf89af51-97f1-4b0f-9176-4ac3d4d02e34','RESERVED','string','2025-05-22 12:15:08'),(19,'cf89af51-97f1-4b0f-9176-4ac3d4d02e34','RECEIVED_FULFIL','string','2025-05-22 12:15:08'),(20,'cf89af51-97f1-4b0f-9176-4ac3d4d02e34','COMMITTED','string','2025-05-22 12:15:08'),(21,'0a0520cd-d12c-42f2-b0db-fd9152bb88e7','RECEIVED_PREPARE','string','2025-05-22 12:15:24'),(22,'0a0520cd-d12c-42f2-b0db-fd9152bb88e7','RESERVED','string','2025-05-22 12:15:24'),(23,'0a0520cd-d12c-42f2-b0db-fd9152bb88e7','RECEIVED_FULFIL','string','2025-05-22 12:15:24'),(24,'0a0520cd-d12c-42f2-b0db-fd9152bb88e7','COMMITTED','string','2025-05-22 12:15:24'),(25,'ec3997db-f39c-4bdb-98e7-906485587a45','RECEIVED_PREPARE','string','2025-05-22 12:16:11'),(26,'ec3997db-f39c-4bdb-98e7-906485587a45','RESERVED','string','2025-05-22 12:16:11'),(27,'ec3997db-f39c-4bdb-98e7-906485587a45','RECEIVED_FULFIL','string','2025-05-22 12:16:11'),(28,'ec3997db-f39c-4bdb-98e7-906485587a45','COMMITTED','string','2025-05-22 12:16:11'),(29,'1ab87be6-d50f-4c36-b93f-66c14d9dbf54','RECEIVED_PREPARE','string','2025-05-22 12:16:21'),(30,'1ab87be6-d50f-4c36-b93f-66c14d9dbf54','RESERVED','string','2025-05-22 12:16:21'),(31,'1ab87be6-d50f-4c36-b93f-66c14d9dbf54','RECEIVED_FULFIL','string','2025-05-22 12:16:21'),(32,'1ab87be6-d50f-4c36-b93f-66c14d9dbf54','COMMITTED','string','2025-05-22 12:16:21'),(33,'0bf9f9e5-78ce-48e8-a957-504ebfc449b2','RECEIVED_PREPARE','string','2025-05-22 12:17:05'),(34,'0bf9f9e5-78ce-48e8-a957-504ebfc449b2','RESERVED','string','2025-05-22 12:17:05'),(35,'0bf9f9e5-78ce-48e8-a957-504ebfc449b2','RECEIVED_FULFIL','string','2025-05-22 12:17:05'),(36,'0bf9f9e5-78ce-48e8-a957-504ebfc449b2','COMMITTED','string','2025-05-22 12:17:05'),(37,'199c2299-9cab-46d1-9b5f-91a7a0250f54','RECEIVED_PREPARE','string','2025-05-22 12:17:21'),(38,'199c2299-9cab-46d1-9b5f-91a7a0250f54','RESERVED','string','2025-05-22 12:17:21'),(39,'199c2299-9cab-46d1-9b5f-91a7a0250f54','RECEIVED_FULFIL','string','2025-05-22 12:17:21'),(40,'199c2299-9cab-46d1-9b5f-91a7a0250f54','COMMITTED','string','2025-05-22 12:17:21'),(41,'eec8c141-e4ad-49c2-9842-ae5e6dd27bf8','RECEIVED_PREPARE','string','2025-05-22 12:18:48'),(42,'eec8c141-e4ad-49c2-9842-ae5e6dd27bf8','RESERVED','string','2025-05-22 12:18:48'),(43,'eec8c141-e4ad-49c2-9842-ae5e6dd27bf8','RECEIVED_FULFIL','string','2025-05-22 12:18:48'),(44,'eec8c141-e4ad-49c2-9842-ae5e6dd27bf8','COMMITTED','string','2025-05-22 12:18:48'),(45,'62df22e8-2872-4fe6-90d0-d069fa904890','RECEIVED_PREPARE','string','2025-05-22 12:19:00'),(46,'62df22e8-2872-4fe6-90d0-d069fa904890','RESERVED','string','2025-05-22 12:19:00'),(47,'62df22e8-2872-4fe6-90d0-d069fa904890','RECEIVED_FULFIL','string','2025-05-22 12:19:00'),(48,'62df22e8-2872-4fe6-90d0-d069fa904890','COMMITTED','string','2025-05-22 12:19:00'),(49,'01JVVYYNASE5P0RW5XK8TNQYT7','RECEIVED_PREPARE',NULL,'2025-05-22 12:19:51'),(50,'01JVVYYNASE5P0RW5XK8TNQYT7','RESERVED',NULL,'2025-05-22 12:19:52'),(51,'01JVVYYNASE5P0RW5XK8TNQYT7','RECEIVED_FULFIL',NULL,'2025-05-22 12:19:54'),(52,'01JVVYYNASE5P0RW5XK8TNQYT7','COMMITTED',NULL,'2025-05-22 12:19:54'),(53,'01JVVYZ9M8GJ2E6NDJFRVHZTE5','RECEIVED_PREPARE',NULL,'2025-05-22 12:20:02'),(54,'01JVVYZ9M8GJ2E6NDJFRVHZTE5','RESERVED',NULL,'2025-05-22 12:20:02'),(55,'01JVVYZ9M8GJ2E6NDJFRVHZTE5','RECEIVED_FULFIL',NULL,'2025-05-22 12:20:02'),(56,'01JVVYZ9M8GJ2E6NDJFRVHZTE5','COMMITTED',NULL,'2025-05-22 12:20:02'),(57,'01JVVYZK0NQNFT3NV7QVS9APYG','RECEIVED_PREPARE','string','2025-05-22 12:20:10'),(58,'01JVVYZK0NQNFT3NV7QVS9APYG','RESERVED','string','2025-05-22 12:20:10'),(59,'01JVVYZK0NQNFT3NV7QVS9APYG','RECEIVED_FULFIL','string','2025-05-22 12:20:10'),(60,'01JVVYZK0NQNFT3NV7QVS9APYG','COMMITTED','string','2025-05-22 12:20:10'),(61,'01JVVYZJSBK68PY2YXHV4Q78V3','RECEIVED_PREPARE',NULL,'2025-05-22 12:20:10'),(62,'01JVVYZJSBK68PY2YXHV4Q78V3','RESERVED',NULL,'2025-05-22 12:20:10'),(63,'01JVVYZJSBK68PY2YXHV4Q78V3','RECEIVED_FULFIL',NULL,'2025-05-22 12:20:10'),(64,'01JVVYZJSBK68PY2YXHV4Q78V3','COMMITTED',NULL,'2025-05-22 12:20:10'),(65,'01JVVYZTDKB6SGRY98ZJPKXZF6','RECEIVED_PREPARE',NULL,'2025-05-22 12:20:18'),(66,'01JVVYZTDKB6SGRY98ZJPKXZF6','RESERVED',NULL,'2025-05-22 12:20:18'),(67,'01JVVYZTDKB6SGRY98ZJPKXZF6','RECEIVED_FULFIL',NULL,'2025-05-22 12:20:18'),(68,'01JVVYZTDKB6SGRY98ZJPKXZF6','COMMITTED',NULL,'2025-05-22 12:20:18'),(69,'01JVVZ06893Q0H73NX30HCESHR','RECEIVED_PREPARE',NULL,'2025-05-22 12:20:30'),(70,'01JVVZ06893Q0H73NX30HCESHR','RESERVED',NULL,'2025-05-22 12:20:30'),(71,'01JVVZ06893Q0H73NX30HCESHR','RECEIVED_FULFIL',NULL,'2025-05-22 12:20:30'),(72,'01JVVZ06893Q0H73NX30HCESHR','COMMITTED',NULL,'2025-05-22 12:20:30'),(73,'01JVVZ0BH7R508BKGCE5WABEBT','RECEIVED_PREPARE',NULL,'2025-05-22 12:20:38'),(74,'01JVVZ0BH7R508BKGCE5WABEBT','RESERVED',NULL,'2025-05-22 12:20:37'),(75,'01JVVZ0BH7R508BKGCE5WABEBT','RECEIVED_FULFIL',NULL,'2025-05-22 12:20:39'),(76,'01JVVZ0BH7R508BKGCE5WABEBT','COMMITTED',NULL,'2025-05-22 12:20:39'),(77,'01JVVZ0FQYDR1E597MMG006A34','RECEIVED_PREPARE',NULL,'2025-05-22 12:20:40'),(78,'01JVVZ0FQYDR1E597MMG006A34','RESERVED',NULL,'2025-05-22 12:20:39'),(79,'01JVVZ0N64JM0PP084VPM2AKH4','RECEIVED_PREPARE','string','2025-05-22 12:20:45'),(80,'01JVVZ0N64JM0PP084VPM2AKH4','RESERVED','string','2025-05-22 12:20:45'),(81,'01JVVZ0N64JM0PP084VPM2AKH4','RECEIVED_FULFIL','string','2025-05-22 12:20:45'),(82,'01JVVZ0N64JM0PP084VPM2AKH4','COMMITTED','string','2025-05-22 12:20:45'),(83,'01JVVZ0FQYDR1E597MMG006A34','RESERVED_TIMEOUT','Marked for expiration by Timeout Handler','2025-05-22 12:20:45'),(84,'01JVVZ0FQYDR1E597MMG006A34','EXPIRED_RESERVED','Transfer expired','2025-05-22 12:20:46'),(85,'01JVVZ0SBFX5M7B5M1FQTZ2DSE','RECEIVED_PREPARE',NULL,'2025-05-22 12:20:50'),(86,'01JVVZ0SBFX5M7B5M1FQTZ2DSE','RESERVED',NULL,'2025-05-22 12:20:50'),(87,'01JVVZ0SBFX5M7B5M1FQTZ2DSE','RECEIVED_ERROR','Generic validation error - invalid fulfilment','2025-05-22 12:20:50'),(88,'01JVVZ0SBFX5M7B5M1FQTZ2DSE','ABORTED_ERROR',NULL,'2025-05-22 12:20:50'),(89,'01JVVZ0WRHRVJKS2FJ3Y37CH1Q','RECEIVED_PREPARE',NULL,'2025-05-22 12:20:53'),(90,'01JVVZ0WRHRVJKS2FJ3Y37CH1Q','RESERVED',NULL,'2025-05-22 12:20:53'),(91,'01JVVZ0WRHRVJKS2FJ3Y37CH1Q','RESERVED_TIMEOUT','Marked for expiration by Timeout Handler','2025-05-22 12:21:00'),(92,'01JVVZ0WRHRVJKS2FJ3Y37CH1Q','EXPIRED_RESERVED','Transfer expired','2025-05-22 12:21:00'),(93,'01JVVZ18EYKN9QETM9DJJZZ151','RECEIVED_PREPARE',NULL,'2025-05-22 12:21:05'),(94,'01JVVZ18EYKN9QETM9DJJZZ151','RESERVED',NULL,'2025-05-22 12:21:04'),(95,'01JVVZ18EYKN9QETM9DJJZZ151','RECEIVED_ERROR','Payee transaction limit reached','2025-05-22 12:21:06'),(96,'01JVVZ18EYKN9QETM9DJJZZ151','ABORTED_ERROR',NULL,'2025-05-22 12:21:05'),(97,'01JVVZ1BQCF077ADV07PPYK3HS','RECEIVED_PREPARE',NULL,'2025-05-22 12:21:08'),(98,'01JVVZ1BQCF077ADV07PPYK3HS','RESERVED',NULL,'2025-05-22 12:21:08'),(99,'01JVVZ1BQCF077ADV07PPYK3HS','RESERVED_TIMEOUT','Marked for expiration by Timeout Handler','2025-05-22 12:21:15'),(100,'01JVVZ1BQCF077ADV07PPYK3HS','EXPIRED_RESERVED','Transfer expired','2025-05-22 12:21:15'),(101,'01JVVZ1R2TH5BCDN98FE0Y6NWB','RECEIVED_PREPARE',NULL,'2025-05-22 12:21:21'),(102,'01JVVZ1R2TH5BCDN98FE0Y6NWB','RESERVED',NULL,'2025-05-22 12:21:21'),(103,'01JVVZ1R2TH5BCDN98FE0Y6NWB','RECEIVED_FULFIL',NULL,'2025-05-22 12:21:22'),(104,'01JVVZ1R2TH5BCDN98FE0Y6NWB','COMMITTED',NULL,'2025-05-22 12:21:21'),(105,'01JVVZ1TZS9H0RQVFP43PGZ8BB','RECEIVED_PREPARE',NULL,'2025-05-22 12:21:24'),(106,'01JVVZ1TZS9H0RQVFP43PGZ8BB','RESERVED',NULL,'2025-05-22 12:21:24'),(107,'01JVVZ1TZS9H0RQVFP43PGZ8BB','RECEIVED_FULFIL',NULL,'2025-05-22 12:21:24'),(108,'01JVVZ1TZS9H0RQVFP43PGZ8BB','COMMITTED',NULL,'2025-05-22 12:21:24'),(109,'01JVVZ221NER7VFNEF8FM5JTPT','RECEIVED_PREPARE',NULL,'2025-05-22 12:21:31'),(110,'01JVVZ221NER7VFNEF8FM5JTPT','RESERVED',NULL,'2025-05-22 12:21:31'),(111,'01JVVZ221NER7VFNEF8FM5JTPT','RECEIVED_FULFIL',NULL,'2025-05-22 12:21:34'),(112,'01JVVZ221NER7VFNEF8FM5JTPT','COMMITTED',NULL,'2025-05-22 12:21:34'),(113,'01JVVZ2AES2FXQYK192KDQHME7','RECEIVED_PREPARE',NULL,'2025-05-22 12:21:40'),(114,'01JVVZ2AES2FXQYK192KDQHME7','RESERVED',NULL,'2025-05-22 12:21:40'),(115,'01JVVZ2AES2FXQYK192KDQHME7','RECEIVED_ERROR','Payee transaction limit reached','2025-05-22 12:21:40'),(116,'01JVVZ2AES2FXQYK192KDQHME7','ABORTED_ERROR',NULL,'2025-05-22 12:21:40'),(117,'01JVVZ2BQCZDQTKCEZ5XBFKPFQ','RECEIVED_PREPARE',NULL,'2025-05-22 12:21:41'),(118,'01JVVZ2BQCZDQTKCEZ5XBFKPFQ','RESERVED',NULL,'2025-05-22 12:21:41'),(119,'01JVVZ2BQCZDQTKCEZ5XBFKPFQ','RECEIVED_ERROR','Payee transaction limit reached','2025-05-22 12:21:41'),(120,'01JVVZ2BQCZDQTKCEZ5XBFKPFQ','ABORTED_ERROR',NULL,'2025-05-22 12:21:41'),(121,'01JVVZ2E7NS5FY74A42ZYWZ9D3','INVALID','Participant testfsp2 is inactive','2025-05-22 12:21:48'),(122,'01JVVZ2M8ZYZ3C6RNVNWK5GGDR','RECEIVED_PREPARE',NULL,'2025-05-22 12:21:51'),(123,'01JVVZ2M8ZYZ3C6RNVNWK5GGDR','RESERVED',NULL,'2025-05-22 12:21:51'),(124,'01JVVZ2M8ZYZ3C6RNVNWK5GGDR','RECEIVED_FULFIL',NULL,'2025-05-22 12:21:52'),(125,'01JVVZ2M8ZYZ3C6RNVNWK5GGDR','COMMITTED',NULL,'2025-05-22 12:21:51'),(126,'01JVVZ2R9K46GP3JP4RPBEDXDC','INVALID','Participant testfsp2 XXX account is inactive','2025-05-22 12:21:55'),(127,'01JVVZ2V83SQFDK3VW0VYS33EF','RECEIVED_PREPARE',NULL,'2025-05-22 12:22:00'),(128,'01JVVZ2V83SQFDK3VW0VYS33EF','RESERVED',NULL,'2025-05-22 12:22:00'),(129,'01JVVZ2V83SQFDK3VW0VYS33EF','RECEIVED_FULFIL',NULL,'2025-05-22 12:22:01'),(130,'01JVVZ2V83SQFDK3VW0VYS33EF','COMMITTED',NULL,'2025-05-22 12:22:00'),(131,'01JVVZ3066XG1TGDSS1ZKVXJCH','RECEIVED_PREPARE',NULL,'2025-05-22 12:22:03'),(132,'01JVVZ3066XG1TGDSS1ZKVXJCH','ABORTED_REJECTED','Payer FSP insufficient liquidity','2025-05-22 12:22:02'),(133,'01JVVZ328M7WQJV988ES7C4WVB','RECEIVED_PREPARE',NULL,'2025-05-22 12:22:04'),(134,'01JVVZ328M7WQJV988ES7C4WVB','ABORTED_REJECTED','Payer limit error','2025-05-22 12:22:04'),(135,'01JVVZ33NPEG3HZ1MDRQ1ARK3K','RECEIVED_PREPARE','string','2025-05-22 12:22:05'),(136,'01JVVZ33NPEG3HZ1MDRQ1ARK3K','RESERVED','string','2025-05-22 12:22:05'),(137,'01JVVZ33NPEG3HZ1MDRQ1ARK3K','RECEIVED_FULFIL','string','2025-05-22 12:22:05'),(138,'01JVVZ33NPEG3HZ1MDRQ1ARK3K','COMMITTED','string','2025-05-22 12:22:05'),(139,'01JVVZ36A87NNR50QJ9EX5YPNW','RECEIVED_PREPARE','string','2025-05-22 12:22:08'),(140,'01JVVZ36A87NNR50QJ9EX5YPNW','RESERVED','string','2025-05-22 12:22:08'),(141,'01JVVZ36A87NNR50QJ9EX5YPNW','RECEIVED_REJECT','Reason for out flow of funds','2025-05-22 12:22:13'),(142,'01JVVZ36A87NNR50QJ9EX5YPNW','ABORTED_REJECTED','Reason for out flow of funds','2025-05-22 12:22:13'),(143,'01JVVZ3DMJ12FT1SJBV4A5EDY8','RECEIVED_PREPARE','string','2025-05-22 12:22:16'),(144,'01JVVZ3DMJ12FT1SJBV4A5EDY8','RESERVED','string','2025-05-22 12:22:16'),(145,'01JVVZ3DMJ12FT1SJBV4A5EDY8','RECEIVED_FULFIL','Reason for out flow of funds','2025-05-22 12:22:18'),(146,'01JVVZ3DMJ12FT1SJBV4A5EDY8','COMMITTED','Reason for out flow of funds','2025-05-22 12:22:18'),(147,'01JVVZ3J8WD4XBANQ8DC4FGG8P','RECEIVED_PREPARE',NULL,'2025-05-22 12:22:21'),(148,'01JVVZ3J8WD4XBANQ8DC4FGG8P','RESERVED',NULL,'2025-05-22 12:22:21'),(149,'01JVVZ3J8WD4XBANQ8DC4FGG8P','RECEIVED_FULFIL',NULL,'2025-05-22 12:22:21'),(150,'01JVVZ3J8WD4XBANQ8DC4FGG8P','COMMITTED',NULL,'2025-05-22 12:22:21'),(151,'be69d192-e0d4-4f44-ac8f-f10153423609','RECEIVED_PREPARE','string','2025-05-22 12:22:24'),(152,'be69d192-e0d4-4f44-ac8f-f10153423609','RESERVED','string','2025-05-22 12:22:24'),(153,'be69d192-e0d4-4f44-ac8f-f10153423609','RECEIVED_FULFIL','string','2025-05-22 12:22:24'),(154,'be69d192-e0d4-4f44-ac8f-f10153423609','COMMITTED','string','2025-05-22 12:22:24'),(155,'01JVVZ3VGJNN1BY4NK6NWG1FED','RECEIVED_PREPARE',NULL,'2025-05-22 12:22:30'),(156,'01JVVZ3VGJNN1BY4NK6NWG1FED','RESERVED',NULL,'2025-05-22 12:22:30'),(157,'01JVVZ3VGJNN1BY4NK6NWG1FED','RECEIVED_FULFIL',NULL,'2025-05-22 12:22:31'),(158,'01JVVZ3VGJNN1BY4NK6NWG1FED','COMMITTED',NULL,'2025-05-22 12:22:30'),(159,'01JVVZ3X9BFSJH1BVHNCZKE14R','RECEIVED_PREPARE',NULL,'2025-05-22 12:22:32'),(160,'01JVVZ3X9BFSJH1BVHNCZKE14R','RESERVED',NULL,'2025-05-22 12:22:32'),(161,'01JVVZ3X9BFSJH1BVHNCZKE14R','RECEIVED_FULFIL',NULL,'2025-05-22 12:22:32'),(162,'01JVVZ3X9BFSJH1BVHNCZKE14R','COMMITTED',NULL,'2025-05-22 12:22:32'),(163,'01JVVZ3Y9BVY4W8GF8WDT0N05R','RECEIVED_PREPARE',NULL,'2025-05-22 12:22:35'),(164,'01JVVZ3Y9BVY4W8GF8WDT0N05R','RESERVED',NULL,'2025-05-22 12:22:35'),(165,'01JVVZ3Y9BVY4W8GF8WDT0N05R','RECEIVED_FULFIL',NULL,'2025-05-22 12:22:35'),(166,'01JVVZ3Y9BVY4W8GF8WDT0N05R','COMMITTED',NULL,'2025-05-22 12:22:35'),(167,'01JVVZ445N2K4GE2DF3MNZVY9R','RECEIVED_PREPARE',NULL,'2025-05-22 12:22:43'),(168,'01JVVZ445N2K4GE2DF3MNZVY9R','RESERVED',NULL,'2025-05-22 12:22:42'),(169,'01JVVZ445N2K4GE2DF3MNZVY9R','RECEIVED_ERROR','Generic validation error - invalid fulfilment','2025-05-22 12:22:43'),(170,'01JVVZ445N2K4GE2DF3MNZVY9R','ABORTED_ERROR',NULL,'2025-05-22 12:22:43'),(171,'01JVVZ4NX5NNMQ12YF0GBCX80Y','RECEIVED_PREPARE',NULL,'2025-05-22 12:22:57'),(172,'01JVVZ4NX5NNMQ12YF0GBCX80Y','RESERVED',NULL,'2025-05-22 12:22:57'),(173,'01JVVZ4NX5NNMQ12YF0GBCX80Y','RECEIVED_FULFIL',NULL,'2025-05-22 12:22:57'),(174,'01JVVZ4NX5NNMQ12YF0GBCX80Y','COMMITTED',NULL,'2025-05-22 12:22:57'),(175,'01JVVZ72MA0X195WQSYWTCWZHK','INVALID','Participant payeefspNOTFOUND not found','2025-05-22 12:24:16'),(176,'0db4ef52-1e0c-45e8-9b45-f93da6dfab9b','RECEIVED_PREPARE','string','2025-05-22 12:24:34'),(177,'0db4ef52-1e0c-45e8-9b45-f93da6dfab9b','RESERVED','string','2025-05-22 12:24:34'),(178,'0db4ef52-1e0c-45e8-9b45-f93da6dfab9b','RECEIVED_FULFIL','string','2025-05-22 12:24:34'),(179,'0db4ef52-1e0c-45e8-9b45-f93da6dfab9b','COMMITTED','string','2025-05-22 12:24:34'),(180,'01JVVZ80N2SSZ3ETPBJEZDMWWT','RECEIVED_PREPARE',NULL,'2025-05-22 12:24:52'),(181,'01JVVZ80N2SSZ3ETPBJEZDMWWT','RESERVED',NULL,'2025-05-22 12:24:51'),(182,'01JVVZ80N2SSZ3ETPBJEZDMWWT','RECEIVED_FULFIL',NULL,'2025-05-22 12:24:52'),(183,'01JVVZ80N2SSZ3ETPBJEZDMWWT','COMMITTED',NULL,'2025-05-22 12:24:51'),(184,'01JVVZ86M93TDPW5604HXZ8R1P','RECEIVED_PREPARE',NULL,'2025-05-22 12:24:55'),(185,'01JVVZ86M93TDPW5604HXZ8R1P','RESERVED',NULL,'2025-05-22 12:24:55'),(186,'01JVVZ86M93TDPW5604HXZ8R1P','RECEIVED_ERROR','Generic validation error - fspiop-destination does not match payer fsp on the Fulfil callback response','2025-05-22 12:24:56'),(187,'01JVVZ86M93TDPW5604HXZ8R1P','ABORTED_ERROR','Generic validation error - fspiop-destination does not match payer fsp on the Fulfil callback response','2025-05-22 12:25:00'),(188,'01JVVZ8QQQJVTB05KA7N0HQJB5','RECEIVED_PREPARE',NULL,'2025-05-22 12:25:17'),(189,'01JVVZ8QQQJVTB05KA7N0HQJB5','RESERVED',NULL,'2025-05-22 12:25:16'),(190,'01JVVZ8QQQJVTB05KA7N0HQJB5','RECEIVED_ERROR','Generic validation error - fspiop-destination does not match payer fsp on the Fulfil callback response','2025-05-22 12:25:17'),(191,'01JVVZ8QQQJVTB05KA7N0HQJB5','ABORTED_ERROR','Generic validation error - fspiop-destination does not match payer fsp on the Fulfil callback response','2025-05-22 12:25:17'),(192,'01JVVZ94DKVQD82PPXZ3EHCH0Q','INVALID','Payer FSP and Payee FSP should be different, unless on-us tranfers are allowed by the Scheme','2025-05-22 12:25:23'),(193,'01JVVZ9TZ733QQ55ZBREVSPXKJ','RECEIVED_PREPARE',NULL,'2025-05-22 12:25:46'),(194,'01JVVZ9TZ733QQ55ZBREVSPXKJ','RESERVED',NULL,'2025-05-22 12:25:46'),(195,'01JVVZ9TZ733QQ55ZBREVSPXKJ','RECEIVED_FULFIL',NULL,'2025-05-22 12:25:46'),(196,'01JVVZ9TZ733QQ55ZBREVSPXKJ','COMMITTED',NULL,'2025-05-22 12:25:46'),(197,'01JVVZ9VKSC0EZXY02EZEES1FX','RECEIVED_PREPARE',NULL,'2025-05-22 12:25:47'),(198,'01JVVZ9VKSC0EZXY02EZEES1FX','RESERVED',NULL,'2025-05-22 12:25:46'),(199,'01JVVZ9VKSC0EZXY02EZEES1FX','RECEIVED_FULFIL',NULL,'2025-05-22 12:25:47'),(200,'01JVVZ9VKSC0EZXY02EZEES1FX','COMMITTED',NULL,'2025-05-22 12:25:46'),(201,'01JVVZ9W382KZS35BMGMY29BNB','RECEIVED_PREPARE',NULL,'2025-05-22 12:25:47'),(202,'01JVVZ9W382KZS35BMGMY29BNB','RESERVED',NULL,'2025-05-22 12:25:47'),(203,'01JVVZ9W382KZS35BMGMY29BNB','RECEIVED_FULFIL',NULL,'2025-05-22 12:25:47'),(204,'01JVVZ9W382KZS35BMGMY29BNB','COMMITTED',NULL,'2025-05-22 12:25:47'),(205,'01JVVZ9WPHY11YZWGE701H8AMV','RECEIVED_PREPARE',NULL,'2025-05-22 12:25:48'),(206,'01JVVZ9WPHY11YZWGE701H8AMV','RESERVED',NULL,'2025-05-22 12:25:47'),(207,'01JVVZ9WPHY11YZWGE701H8AMV','RECEIVED_FULFIL',NULL,'2025-05-22 12:25:48'),(208,'01JVVZ9WPHY11YZWGE701H8AMV','COMMITTED',NULL,'2025-05-22 12:25:48'),(209,'01JVVZ9XD7C0YR5E4QZZBN60Z8','RECEIVED_PREPARE',NULL,'2025-05-22 12:25:48'),(210,'01JVVZ9XD7C0YR5E4QZZBN60Z8','RESERVED',NULL,'2025-05-22 12:25:48'),(211,'01JVVZ9XD7C0YR5E4QZZBN60Z8','RECEIVED_FULFIL',NULL,'2025-05-22 12:25:49'),(212,'01JVVZ9XD7C0YR5E4QZZBN60Z8','COMMITTED',NULL,'2025-05-22 12:25:48'),(213,'01JVVZ9Y054WX1STK8G4A61T6G','RECEIVED_PREPARE',NULL,'2025-05-22 12:25:49'),(214,'01JVVZ9Y054WX1STK8G4A61T6G','RESERVED',NULL,'2025-05-22 12:25:49'),(215,'01JVVZ9Y054WX1STK8G4A61T6G','RECEIVED_FULFIL',NULL,'2025-05-22 12:25:49'),(216,'01JVVZ9Y054WX1STK8G4A61T6G','COMMITTED',NULL,'2025-05-22 12:25:49'),(217,'01JVVZA7EESE9FZW4CRPN785AV','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:25:58'),(218,'01JVVZA7F78539T8W8BTH80D33','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:25:59'),(219,'01JVVZA7FQJ79XDQ8VMH2JCVEK','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:25:59'),(220,'01JVVZA7G81WZGW7EJERHXX0SB','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:25:59'),(221,'01JVVZAB4TNRZ5KPGZEKSAAJTE','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:26:02'),(222,'01JVVZAB5T7EQBP85XG97K7NTC','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:26:02'),(223,'01JVVZAB6B6S28K7PARE12T23T','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:26:02'),(224,'01JVVZAB7Y0M1FN8N7QXTQ6HXM','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:26:02'),(225,'01JVVZA7EESE9FZW4CRPN785AV','RESERVED','Settlement transfer reserve','2025-05-22 12:26:06'),(226,'01JVVZA7F78539T8W8BTH80D33','RESERVED','Settlement transfer reserve','2025-05-22 12:26:06'),(227,'01JVVZA7FQJ79XDQ8VMH2JCVEK','RESERVED','Settlement transfer reserve','2025-05-22 12:26:06'),(228,'01JVVZA7G81WZGW7EJERHXX0SB','RESERVED','Settlement transfer reserve','2025-05-22 12:26:06'),(229,'01JVVZAB4TNRZ5KPGZEKSAAJTE','RESERVED','Settlement transfer reserve','2025-05-22 12:26:08'),(230,'01JVVZAB5T7EQBP85XG97K7NTC','RESERVED','Settlement transfer reserve','2025-05-22 12:26:08'),(231,'01JVVZAB6B6S28K7PARE12T23T','RESERVED','Settlement transfer reserve','2025-05-22 12:26:09'),(232,'01JVVZAB7Y0M1FN8N7QXTQ6HXM','RESERVED','Settlement transfer reserve','2025-05-22 12:26:09'),(233,'01JVVZA7EESE9FZW4CRPN785AV','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:11'),(234,'01JVVZA7EESE9FZW4CRPN785AV','COMMITTED','Settlement transfer commit','2025-05-22 12:26:11'),(235,'01JVVZA7F78539T8W8BTH80D33','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:11'),(236,'01JVVZA7F78539T8W8BTH80D33','COMMITTED','Settlement transfer commit','2025-05-22 12:26:11'),(237,'01JVVZA7FQJ79XDQ8VMH2JCVEK','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:11'),(238,'01JVVZA7FQJ79XDQ8VMH2JCVEK','COMMITTED','Settlement transfer commit','2025-05-22 12:26:11'),(239,'01JVVZA7G81WZGW7EJERHXX0SB','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:11'),(240,'01JVVZA7G81WZGW7EJERHXX0SB','COMMITTED','Settlement transfer commit','2025-05-22 12:26:11'),(241,'01JVVZAB4TNRZ5KPGZEKSAAJTE','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:14'),(242,'01JVVZAB4TNRZ5KPGZEKSAAJTE','COMMITTED','Settlement transfer commit','2025-05-22 12:26:14'),(243,'01JVVZAB5T7EQBP85XG97K7NTC','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:14'),(244,'01JVVZAB5T7EQBP85XG97K7NTC','COMMITTED','Settlement transfer commit','2025-05-22 12:26:14'),(245,'01JVVZAB6B6S28K7PARE12T23T','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:14'),(246,'01JVVZAB6B6S28K7PARE12T23T','COMMITTED','Settlement transfer commit','2025-05-22 12:26:14'),(247,'01JVVZAB7Y0M1FN8N7QXTQ6HXM','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:14'),(248,'01JVVZAB7Y0M1FN8N7QXTQ6HXM','COMMITTED','Settlement transfer commit','2025-05-22 12:26:14'),(249,'01JVVZB9ZP474ZV0MKFZ6AFCHR','RECEIVED_PREPARE',NULL,'2025-05-22 12:26:35'),(250,'01JVVZB9ZP474ZV0MKFZ6AFCHR','RESERVED',NULL,'2025-05-22 12:26:34'),(251,'01JVVZB9ZP474ZV0MKFZ6AFCHR','RECEIVED_FULFIL',NULL,'2025-05-22 12:26:35'),(252,'01JVVZB9ZP474ZV0MKFZ6AFCHR','COMMITTED',NULL,'2025-05-22 12:26:34'),(253,'01JVVZBB3F6XNXJ64AB6D6H7R4','RECEIVED_PREPARE',NULL,'2025-05-22 12:26:35'),(254,'01JVVZBB3F6XNXJ64AB6D6H7R4','RESERVED',NULL,'2025-05-22 12:26:35'),(255,'01JVVZBB3F6XNXJ64AB6D6H7R4','RECEIVED_FULFIL',NULL,'2025-05-22 12:26:35'),(256,'01JVVZBB3F6XNXJ64AB6D6H7R4','COMMITTED',NULL,'2025-05-22 12:26:35'),(257,'01JVVZBBK9VKY1JV2305X31ED2','RECEIVED_PREPARE',NULL,'2025-05-22 12:26:36'),(258,'01JVVZBBK9VKY1JV2305X31ED2','RESERVED',NULL,'2025-05-22 12:26:35'),(259,'01JVVZBBK9VKY1JV2305X31ED2','RECEIVED_FULFIL',NULL,'2025-05-22 12:26:36'),(260,'01JVVZBBK9VKY1JV2305X31ED2','COMMITTED',NULL,'2025-05-22 12:26:35'),(261,'01JVVZBC36V4B7D37BXHJDG06E','RECEIVED_PREPARE',NULL,'2025-05-22 12:26:36'),(262,'01JVVZBC36V4B7D37BXHJDG06E','RESERVED',NULL,'2025-05-22 12:26:36'),(263,'01JVVZBC36V4B7D37BXHJDG06E','RECEIVED_FULFIL',NULL,'2025-05-22 12:26:36'),(264,'01JVVZBC36V4B7D37BXHJDG06E','COMMITTED',NULL,'2025-05-22 12:26:36'),(265,'01JVVZBCK01QKBN5CTGM2GWKGY','RECEIVED_PREPARE',NULL,'2025-05-22 12:26:37'),(266,'01JVVZBCK01QKBN5CTGM2GWKGY','RESERVED',NULL,'2025-05-22 12:26:36'),(267,'01JVVZBCK01QKBN5CTGM2GWKGY','RECEIVED_FULFIL',NULL,'2025-05-22 12:26:37'),(268,'01JVVZBCK01QKBN5CTGM2GWKGY','COMMITTED',NULL,'2025-05-22 12:26:36'),(269,'01JVVZBD463527KDKSEDAQCPH3','RECEIVED_PREPARE',NULL,'2025-05-22 12:26:37'),(270,'01JVVZBD463527KDKSEDAQCPH3','RESERVED',NULL,'2025-05-22 12:26:37'),(271,'01JVVZBD463527KDKSEDAQCPH3','RECEIVED_FULFIL',NULL,'2025-05-22 12:26:38'),(272,'01JVVZBD463527KDKSEDAQCPH3','COMMITTED',NULL,'2025-05-22 12:26:37'),(273,'01JVVZBKGMWB0DCZ3CS281CEKA','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:26:44'),(274,'01JVVZBKH9W4KE5J9EXYB1GR6G','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:26:44'),(275,'01JVVZBKHP5FZKVE2150AC5AZR','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:26:44'),(276,'01JVVZBKJ3HYF6ESM6MZGYD016','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:26:44'),(277,'01JVVZBKGMWB0DCZ3CS281CEKA','RESERVED','Settlement transfer reserve','2025-05-22 12:26:46'),(278,'01JVVZBKH9W4KE5J9EXYB1GR6G','RESERVED','Settlement transfer reserve','2025-05-22 12:26:46'),(279,'01JVVZBKHP5FZKVE2150AC5AZR','RESERVED','Settlement transfer reserve','2025-05-22 12:26:47'),(280,'01JVVZBKJ3HYF6ESM6MZGYD016','RESERVED','Settlement transfer reserve','2025-05-22 12:26:47'),(281,'01JVVZBKGMWB0DCZ3CS281CEKA','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:49'),(282,'01JVVZBKGMWB0DCZ3CS281CEKA','COMMITTED','Settlement transfer commit','2025-05-22 12:26:49'),(283,'01JVVZBKH9W4KE5J9EXYB1GR6G','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:49'),(284,'01JVVZBKH9W4KE5J9EXYB1GR6G','COMMITTED','Settlement transfer commit','2025-05-22 12:26:49'),(285,'01JVVZBKHP5FZKVE2150AC5AZR','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:49'),(286,'01JVVZBKHP5FZKVE2150AC5AZR','COMMITTED','Settlement transfer commit','2025-05-22 12:26:49'),(287,'01JVVZBKJ3HYF6ESM6MZGYD016','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:26:49'),(288,'01JVVZBKJ3HYF6ESM6MZGYD016','COMMITTED','Settlement transfer commit','2025-05-22 12:26:49'),(289,'01JVVZC581V1D996Z1GVPGXXSX','RECEIVED_PREPARE',NULL,'2025-05-22 12:27:02'),(290,'01JVVZC581V1D996Z1GVPGXXSX','RESERVED',NULL,'2025-05-22 12:27:02'),(291,'01JVVZC581V1D996Z1GVPGXXSX','RECEIVED_FULFIL',NULL,'2025-05-22 12:27:02'),(292,'01JVVZC581V1D996Z1GVPGXXSX','COMMITTED',NULL,'2025-05-22 12:27:02'),(293,'01JVVZC5XS9T55E3FEQV8CCJT5','RECEIVED_PREPARE',NULL,'2025-05-22 12:27:03'),(294,'01JVVZC5XS9T55E3FEQV8CCJT5','RESERVED',NULL,'2025-05-22 12:27:02'),(295,'01JVVZC5XS9T55E3FEQV8CCJT5','RECEIVED_FULFIL',NULL,'2025-05-22 12:27:03'),(296,'01JVVZC5XS9T55E3FEQV8CCJT5','COMMITTED',NULL,'2025-05-22 12:27:02'),(297,'01JVVZC6DVAC3HQHGHWZ2MMVVP','RECEIVED_PREPARE',NULL,'2025-05-22 12:27:03'),(298,'01JVVZC6DVAC3HQHGHWZ2MMVVP','RESERVED',NULL,'2025-05-22 12:27:03'),(299,'01JVVZC6DVAC3HQHGHWZ2MMVVP','RECEIVED_FULFIL',NULL,'2025-05-22 12:27:03'),(300,'01JVVZC6DVAC3HQHGHWZ2MMVVP','COMMITTED',NULL,'2025-05-22 12:27:03'),(301,'01JVVZC6YBB244VVDNNSEKG7KN','RECEIVED_PREPARE',NULL,'2025-05-22 12:27:04'),(302,'01JVVZC6YBB244VVDNNSEKG7KN','RESERVED',NULL,'2025-05-22 12:27:03'),(303,'01JVVZC6YBB244VVDNNSEKG7KN','RECEIVED_FULFIL',NULL,'2025-05-22 12:27:04'),(304,'01JVVZC6YBB244VVDNNSEKG7KN','COMMITTED',NULL,'2025-05-22 12:27:03'),(305,'01JVVZC8Q5ARSYRSEVCX90CXXQ','RECEIVED_PREPARE',NULL,'2025-05-22 12:27:06'),(306,'01JVVZC8Q5ARSYRSEVCX90CXXQ','RESERVED',NULL,'2025-05-22 12:27:05'),(307,'01JVVZC8Q5ARSYRSEVCX90CXXQ','RECEIVED_FULFIL',NULL,'2025-05-22 12:27:06'),(308,'01JVVZC8Q5ARSYRSEVCX90CXXQ','COMMITTED',NULL,'2025-05-22 12:27:05'),(309,'01JVVZC97AD4YWVPWS5DTSKV5B','RECEIVED_PREPARE',NULL,'2025-05-22 12:27:06'),(310,'01JVVZC97AD4YWVPWS5DTSKV5B','RESERVED',NULL,'2025-05-22 12:27:06'),(311,'01JVVZC97AD4YWVPWS5DTSKV5B','RECEIVED_FULFIL',NULL,'2025-05-22 12:27:06'),(312,'01JVVZC97AD4YWVPWS5DTSKV5B','COMMITTED',NULL,'2025-05-22 12:27:06'),(313,'01JVVZCFGNCZQ8XJYW2MAGHHBW','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:27:12'),(314,'01JVVZCFH699BKP2TB3DJP63MZ','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:27:12'),(315,'01JVVZCFHP7T16AVH2NRJBQJVV','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:27:12'),(316,'01JVVZCFJCQWYWZF7PT02BGJQF','RECEIVED_PREPARE','Settlement transfer prepare','2025-05-22 12:27:12'),(317,'01JVVZCFGNCZQ8XJYW2MAGHHBW','RESERVED','Settlement transfer reserve','2025-05-22 12:27:16'),(318,'01JVVZCFH699BKP2TB3DJP63MZ','RESERVED','Settlement transfer reserve','2025-05-22 12:27:16'),(319,'01JVVZCFHP7T16AVH2NRJBQJVV','RESERVED','Settlement transfer reserve','2025-05-22 12:27:16'),(320,'01JVVZCFJCQWYWZF7PT02BGJQF','RESERVED','Settlement transfer reserve','2025-05-22 12:27:16'),(321,'01JVVZCFGNCZQ8XJYW2MAGHHBW','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:27:19'),(322,'01JVVZCFGNCZQ8XJYW2MAGHHBW','COMMITTED','Settlement transfer commit','2025-05-22 12:27:19'),(323,'01JVVZCFH699BKP2TB3DJP63MZ','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:27:19'),(324,'01JVVZCFH699BKP2TB3DJP63MZ','COMMITTED','Settlement transfer commit','2025-05-22 12:27:19'),(325,'01JVVZCFHP7T16AVH2NRJBQJVV','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:27:19'),(326,'01JVVZCFHP7T16AVH2NRJBQJVV','COMMITTED','Settlement transfer commit','2025-05-22 12:27:19'),(327,'01JVVZCFJCQWYWZF7PT02BGJQF','RECEIVED_FULFIL','Settlement transfer commit initiated','2025-05-22 12:27:19'),(328,'01JVVZCFJCQWYWZF7PT02BGJQF','COMMITTED','Settlement transfer commit','2025-05-22 12:27:19'),(329,'01JVVZDGPZ2NQGA7ZJB7XCDK09','RECEIVED_PREPARE',NULL,'2025-05-22 12:28:00'),(330,'01JVVZDGPZ2NQGA7ZJB7XCDK09','RESERVED',NULL,'2025-05-22 12:27:59'),(331,'01JVVZDGPZ2NQGA7ZJB7XCDK09','RECEIVED_FULFIL',NULL,'2025-05-22 12:28:00'),(332,'01JVVZDGPZ2NQGA7ZJB7XCDK09','COMMITTED',NULL,'2025-05-22 12:28:01'),(333,'01JVVZE15SAK643DT7N3R8RBSM','RECEIVED_PREPARE',NULL,'2025-05-22 12:28:11'),(334,'01JVVZE15SAK643DT7N3R8RBSM','RESERVED',NULL,'2025-05-22 12:28:11'),(335,'01JVVZE15SAK643DT7N3R8RBSM','RECEIVED_FULFIL',NULL,'2025-05-22 12:28:12'),(336,'01JVVZE15SAK643DT7N3R8RBSM','COMMITTED',NULL,'2025-05-22 12:28:12'),(337,'01JVVZEDKHC0MMYXRSD5J8NY8B','INVALID','Related FX Transfer is not fulfilled','2025-05-22 12:28:16'),(338,'01JVVZEEDWGYNJV655N86YQXS3','INVALID','Related FX Transfer is not fulfilled','2025-05-22 12:28:17'),(339,'01JVVZEFEF2HRCGCXD3Y0XRVBY','INVALID','Related FX Transfer is not fulfilled','2025-05-22 12:28:18'),(340,'01JVVZEGV1R1V31ZT6ZVZBTET5','INVALID','Related FX Transfer is not fulfilled','2025-05-22 12:28:20'),(341,'01JVW42Z5QTKBHK30VGJ05GGAP','RECEIVED_PREPARE',NULL,'2025-05-22 13:49:33'),(342,'01JVW42Z5QTKBHK30VGJ05GGAP','RESERVED',NULL,'2025-05-22 13:49:33'),(343,'01JVW42Z5QTKBHK30VGJ05GGAP','RECEIVED_FULFIL',NULL,'2025-05-22 13:49:34'),(344,'01JVW42Z5QTKBHK30VGJ05GGAP','COMMITTED',NULL,'2025-05-22 13:49:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
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

-- Dump completed on 2025-05-22 13:53:46
