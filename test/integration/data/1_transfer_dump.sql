-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: central_ledger
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amountType`
--

LOCK TABLES `amountType` WRITE;
/*!40000 ALTER TABLE `amountType` DISABLE KEYS */;
INSERT INTO `amountType` VALUES (1,'SEND','Amount the Payer would like to send; that is, the amount that should be withdrawn from the Payer account including any fees','2025-05-16 06:17:58'),(2,'RECEIVE','Amount the Payer would like the Payee to receive; that is, the amount that should be sent to the receiver exclusive fees','2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='See https://www.imf.org/external/np/sta/bopcode/guide.htm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balanceOfPayments`
--

LOCK TABLES `balanceOfPayments` WRITE;
/*!40000 ALTER TABLE `balanceOfPayments` DISABLE KEYS */;
INSERT INTO `balanceOfPayments` VALUES (100,'100','A. Goods','2025-05-16 06:17:58'),(110,'110','1. General merchandise','2025-05-16 06:17:58'),(150,'150','2. Goods for processing','2025-05-16 06:17:58'),(151,'151','2.1 Processing abroad','2025-05-16 06:17:58'),(152,'152','2.2 Processing in the compiling economy','2025-05-16 06:17:58'),(160,'160','3. Repairs on goods','2025-05-16 06:17:58'),(170,'170','4. Goods procured in ports by carriers','2025-05-16 06:17:58'),(171,'171','4.1 In seaports','2025-05-16 06:17:58'),(172,'172','4.2 In airports','2025-05-16 06:17:58'),(173,'173','4.3 In other ports','2025-05-16 06:17:58'),(180,'180','5. Nonmonetary gold','2025-05-16 06:17:58'),(181,'181','5.1 Held as a store of value','2025-05-16 06:17:58'),(182,'182','5.2 Other','2025-05-16 06:17:58'),(200,'200','B. Services','2025-05-16 06:17:58'),(205,'205','1. Transportation','2025-05-16 06:17:58'),(206,'206','1.1 Sea transport','2025-05-16 06:17:58'),(207,'207','1.1.1 Passenger','2025-05-16 06:17:58'),(208,'208','1.1.2 Freight','2025-05-16 06:17:58'),(209,'209','1.1.3 Other','2025-05-16 06:17:58'),(210,'210','1.2 Air transport','2025-05-16 06:17:58'),(211,'211','1.2.1 Passenger','2025-05-16 06:17:58'),(212,'212','1.2.2 Freight','2025-05-16 06:17:58'),(213,'213','1.2.3 Other','2025-05-16 06:17:58'),(214,'214','1.3 Other transport','2025-05-16 06:17:58'),(215,'215','1.3.1 Passenger','2025-05-16 06:17:58'),(216,'216','1.3.2 Freight','2025-05-16 06:17:58'),(217,'217','1.3.3 Other','2025-05-16 06:17:58'),(218,'218','1.4 Space transport','2025-05-16 06:17:58'),(219,'219','1.5 Rail transport','2025-05-16 06:17:58'),(220,'220','1.5.1 Passenger','2025-05-16 06:17:58'),(221,'221','1.5.2 Freight','2025-05-16 06:17:58'),(222,'222','1.5.3 Other','2025-05-16 06:17:58'),(223,'223','1.6 Road transport','2025-05-16 06:17:58'),(224,'224','1.6.1 Passenger','2025-05-16 06:17:58'),(225,'225','1.6.2 Freight','2025-05-16 06:17:58'),(226,'226','1.6.3 Other','2025-05-16 06:17:58'),(227,'227','1.7 Inland waterway transport','2025-05-16 06:17:58'),(228,'228','1.7.1 Passenger','2025-05-16 06:17:58'),(229,'229','1.7.2 Freight','2025-05-16 06:17:58'),(230,'230','1.7.3 Other','2025-05-16 06:17:58'),(231,'231','1.8 Pipeline transport and electricity transmission','2025-05-16 06:17:58'),(232,'232','1.9 Other supporting and auxiliary transport services','2025-05-16 06:17:58'),(236,'236','2. Travel','2025-05-16 06:17:58'),(237,'237','2.1 Business travel','2025-05-16 06:17:58'),(238,'238','2.1.1 Expenditure by seasonal and border workers','2025-05-16 06:17:58'),(239,'239','2.1.2 Other','2025-05-16 06:17:58'),(240,'240','2.2 Personal travel','2025-05-16 06:17:58'),(241,'241','2.2.1 Health-related expenditure','2025-05-16 06:17:58'),(242,'242','2.2.2 Education-related expenditure','2025-05-16 06:17:58'),(243,'243','2.2.3 Other','2025-05-16 06:17:58'),(245,'245','3. Communications services','2025-05-16 06:17:58'),(246,'246','3.1 Postal and courier services','2025-05-16 06:17:58'),(247,'247','3.2 Telecommunications Services','2025-05-16 06:17:58'),(249,'249','4. Construction services','2025-05-16 06:17:58'),(250,'250','4.1 Construction abroad','2025-05-16 06:17:58'),(251,'251','4.2 Construction in the compiling economy','2025-05-16 06:17:58'),(253,'253','5. Insurance services','2025-05-16 06:17:58'),(254,'254','5.1 Life insurance and pension funding','2025-05-16 06:17:58'),(255,'255','5.2 Freight insurance','2025-05-16 06:17:58'),(256,'256','5.3 Other direct insurance','2025-05-16 06:17:58'),(257,'257','5.4 Reinsurance','2025-05-16 06:17:58'),(258,'258','5.5 Auxiliary services','2025-05-16 06:17:58'),(260,'260','6. Financial services','2025-05-16 06:17:58'),(262,'262','7. Computer and information services','2025-05-16 06:17:58'),(263,'263','7.1 Computer services','2025-05-16 06:17:58'),(264,'264','7.2 Information services','2025-05-16 06:17:58'),(266,'266','8. Royalties and license fees','2025-05-16 06:17:58'),(268,'268','9. Other business services','2025-05-16 06:17:58'),(269,'269','9.1 Merchanting and other trade-related services','2025-05-16 06:17:58'),(270,'270','9.1.1 Merchanting','2025-05-16 06:17:58'),(271,'271','9.1.2 Other trade-related services','2025-05-16 06:17:58'),(272,'272','9.2 Operational leasing services','2025-05-16 06:17:58'),(273,'273','9.3 Miscellaneous business, professional, and technical services','2025-05-16 06:17:58'),(274,'274','9.3.1 Legal, accounting, management consulting, and public relations','2025-05-16 06:17:58'),(275,'275','9.3.1.1 Legal services','2025-05-16 06:17:58'),(276,'276','9.3.1.2 Accounting, auditing, bookkeeping, and tax consulting services','2025-05-16 06:17:58'),(277,'277','9.3.1.3 Business and management consulting and public relations services','2025-05-16 06:17:58'),(278,'278','9.3.2 Advertising, market research, and public opinion polling','2025-05-16 06:17:58'),(279,'279','9.3.3 Research and development','2025-05-16 06:17:58'),(280,'280','9.3.4 Architectural, engineering, and other technical services','2025-05-16 06:17:58'),(281,'281','9.3.5 Agricultural, mining, and on-site processing services','2025-05-16 06:17:58'),(282,'282','9.3.5.1 Waste treatment and depollution','2025-05-16 06:17:58'),(283,'283','9.3.5.2 Agricultural, mining, and other on-site processing services','2025-05-16 06:17:58'),(284,'284','9.3.6 Other business services','2025-05-16 06:17:58'),(285,'285','9.3.7 Services between related enterprises, n.i.e.','2025-05-16 06:17:58'),(287,'287','10. Personal, cultural, and recreational services','2025-05-16 06:17:58'),(288,'288','10.1 Audiovisual and related services','2025-05-16 06:17:58'),(289,'289','10.2 Other personal, cultural, and recreational services','2025-05-16 06:17:58'),(291,'291','11. Government services, n.i.e.','2025-05-16 06:17:58'),(292,'292','11.1 Embassies and consulates','2025-05-16 06:17:58'),(293,'293','11.2 Military units and agencies','2025-05-16 06:17:58'),(294,'294','11.3 Other government services','2025-05-16 06:17:58'),(300,'300','C. Income','2025-05-16 06:17:58'),(310,'310','1. Compensation of employees including border, seasonal, and other workers','2025-05-16 06:17:58'),(320,'320','2. Investment income','2025-05-16 06:17:58'),(330,'330','2.1 Direct investment','2025-05-16 06:17:58'),(331,'331','2.1.1 Income on equity','2025-05-16 06:17:58'),(332,'332','2.1.1.1 Dividends and distributed branch profits','2025-05-16 06:17:58'),(333,'333','2.1.1.2 Reinvested earnings and undistributed branch profits','2025-05-16 06:17:58'),(334,'334','2.1.2 Income on debt (interest)','2025-05-16 06:17:58'),(339,'339','2.2 Portfolio investment','2025-05-16 06:17:58'),(340,'340','2.2.1 Income on equity (dividends)','2025-05-16 06:17:58'),(341,'341','2.2.1.1 Monetary authorities','2025-05-16 06:17:58'),(342,'342','2.2.1.2 General government','2025-05-16 06:17:58'),(343,'343','2.2.1.3 Banks','2025-05-16 06:17:58'),(344,'344','2.2.1.4 Other sectors','2025-05-16 06:17:58'),(349,'349','2.2.2 Income on debt (interest)','2025-05-16 06:17:58'),(350,'350','2.2.2.1 Bonds and notes','2025-05-16 06:17:58'),(351,'351','2.2.2.1.1 Monetary authorities','2025-05-16 06:17:58'),(352,'352','2.2.2.1.2 General government','2025-05-16 06:17:58'),(353,'353','2.2.2.1.3 Banks','2025-05-16 06:17:58'),(354,'354','2.2.2.1.4 Other sectors','2025-05-16 06:17:58'),(360,'360','2.2.2.2 Money-market instruments','2025-05-16 06:17:58'),(361,'361','2.2.2.2.1 Monetary authorities','2025-05-16 06:17:58'),(362,'362','2.2.2.2.2 General government','2025-05-16 06:17:58'),(363,'363','2.2.2.2.3 Banks','2025-05-16 06:17:58'),(364,'364','2.2.2.2.4 Other sectors','2025-05-16 06:17:58'),(370,'370','2.3 Other investment','2025-05-16 06:17:58'),(371,'371','2.3.1 Monetary authorities','2025-05-16 06:17:58'),(372,'372','2.3.2 General government','2025-05-16 06:17:58'),(373,'373','2.3.3 Banks','2025-05-16 06:17:58'),(374,'374','2.3.4 Other sectors','2025-05-16 06:17:58'),(379,'379','D. Current transfers','2025-05-16 06:17:58'),(380,'380','1. General government','2025-05-16 06:17:58'),(390,'390','2. Other sectors','2025-05-16 06:17:58'),(391,'391','2.1 Workers\' remittances','2025-05-16 06:17:58'),(392,'392','2.2 Other transfers','2025-05-16 06:17:58'),(400,'400','1. Capital transfers','2025-05-16 06:17:58'),(401,'401','1.1 General government','2025-05-16 06:17:58'),(402,'402','1.1.1 Debt forgiveness','2025-05-16 06:17:58'),(410,'410','1.1.2 Other','2025-05-16 06:17:58'),(430,'430','1.2 Other sectors','2025-05-16 06:17:58'),(431,'431','1.2.1 Migrants\' transfers','2025-05-16 06:17:58'),(432,'432','1.2.2 Debt forgiveness','2025-05-16 06:17:58'),(440,'440','1.2.3 Other','2025-05-16 06:17:58'),(480,'480','2. Acquisitions/disposal of non-produced nonfinancial assets','2025-05-16 06:17:58'),(500,'500','1. Direct investment','2025-05-16 06:17:58'),(505,'505','1.1 Abroad','2025-05-16 06:17:58'),(510,'510','1.1.1 Equity capital','2025-05-16 06:17:58'),(515,'515','1.1.1.1 Claims on affiliated enterprises','2025-05-16 06:17:58'),(520,'520','1.1.1.2 Liabilities to affiliated enterprises','2025-05-16 06:17:58'),(525,'525','1.1.2 Reinvested earnings','2025-05-16 06:17:58'),(526,'526','1.1.2.1 Claims','2025-05-16 06:17:58'),(527,'527','1.1.2.2 Liabilities','2025-05-16 06:17:58'),(530,'530','1.1.3 Other capital','2025-05-16 06:17:58'),(535,'535','1.1.3.1 Claims on affiliated enterprises','2025-05-16 06:17:58'),(540,'540','1.1.3.2 Liabilities to affiliated enterprises','2025-05-16 06:17:58'),(555,'555','1.2 In reporting economy','2025-05-16 06:17:58'),(560,'560','1.2.1 Equity capital','2025-05-16 06:17:58'),(565,'565','1.2.1.1 Claims on direct investors','2025-05-16 06:17:58'),(570,'570','1.2.1.2 Liabilities to direct investors','2025-05-16 06:17:58'),(575,'575','1.2.2 Reinvested earnings','2025-05-16 06:17:58'),(576,'576','1.2.2.1 Claims','2025-05-16 06:17:58'),(577,'577','1.2.2.2 Liabilities','2025-05-16 06:17:58'),(580,'580','1.2.3 Other capital','2025-05-16 06:17:58'),(585,'585','1.2.3.1 Claims on direct investors','2025-05-16 06:17:58'),(590,'590','1.2.3.2 Liabilities to direct investors','2025-05-16 06:17:58'),(600,'600','2. Portfolio investment','2025-05-16 06:17:58'),(602,'602','2.1 Assets','2025-05-16 06:17:58'),(610,'610','2.1.1 Equity securities','2025-05-16 06:17:58'),(611,'611','2.1.1.1 Monetary authorities','2025-05-16 06:17:58'),(612,'612','2.1.1.2 General government','2025-05-16 06:17:58'),(613,'613','2.1.1.3 Banks','2025-05-16 06:17:58'),(614,'614','2.1.1.4 Other sectors','2025-05-16 06:17:58'),(619,'619','2.1.2 Debt securities','2025-05-16 06:17:58'),(620,'620','2.1.2.1 Bonds and notes','2025-05-16 06:17:58'),(621,'621','2.1.2.1.1 Monetary authorities','2025-05-16 06:17:58'),(622,'622','2.1.2.1.2 General government','2025-05-16 06:17:58'),(623,'623','2.1.2.1.3 Banks','2025-05-16 06:17:58'),(624,'624','2.1.2.1.4 Other sectors','2025-05-16 06:17:58'),(630,'630','2.1.2.2 Money market instruments','2025-05-16 06:17:58'),(631,'631','2.1.2.2.1 Monetary authorities','2025-05-16 06:17:58'),(632,'632','2.1.2.2.2 General government','2025-05-16 06:17:58'),(633,'633','2.1.2.2.3 Banks','2025-05-16 06:17:58'),(634,'634','2.1.2.2.4 Other sectors','2025-05-16 06:17:58'),(652,'652','2.2 Liabilities','2025-05-16 06:17:58'),(660,'660','2.2.1 Equity securities','2025-05-16 06:17:58'),(663,'663','2.2.1.1 Banks','2025-05-16 06:17:58'),(664,'664','2.2.1.2 Other sectors','2025-05-16 06:17:58'),(669,'669','2.2.2 Debt securities','2025-05-16 06:17:58'),(670,'670','2.2.2.1 Bonds and notes','2025-05-16 06:17:58'),(671,'671','2.2.2.1.1 Monetary authorities','2025-05-16 06:17:58'),(672,'672','2.2.2.1.2 General government','2025-05-16 06:17:58'),(673,'673','2.2.2.1.3 Banks','2025-05-16 06:17:58'),(674,'674','2.2.2.1.4 Other sectors','2025-05-16 06:17:58'),(680,'680','2.2.2.2 Money market instruments','2025-05-16 06:17:58'),(681,'681','2.2.2.2.1 Monetary authorities','2025-05-16 06:17:58'),(682,'682','2.2.2.2.2 General government','2025-05-16 06:17:58'),(683,'683','2.2.2.2.3 Banks','2025-05-16 06:17:58'),(684,'684','2.2.2.2.4 Other sectors','2025-05-16 06:17:58'),(700,'700','4. Other investment','2025-05-16 06:17:58'),(703,'703','4.1 Assets','2025-05-16 06:17:58'),(706,'706','4.1.1 Trade credits','2025-05-16 06:17:58'),(707,'707','4.1.1.1 General government','2025-05-16 06:17:58'),(708,'708','4.1.1.1.1 Long-term','2025-05-16 06:17:58'),(709,'709','4.1.1.1.2 Short-term','2025-05-16 06:17:58'),(710,'710','4.1.1.2 Other sectors','2025-05-16 06:17:58'),(711,'711','4.1.1.2.1 Long-term','2025-05-16 06:17:58'),(712,'712','4.1.1.2.2 Short-term','2025-05-16 06:17:58'),(714,'714','4.1.2 Loans','2025-05-16 06:17:58'),(715,'715','4.1.2.1 Monetary authorities','2025-05-16 06:17:58'),(717,'717','4.1.2.1.1 Long-term','2025-05-16 06:17:58'),(718,'718','4.1.2.1.2 Short-term','2025-05-16 06:17:58'),(719,'719','4.1.2.2 General government','2025-05-16 06:17:58'),(720,'720','4.1.2.2.1 Long-term','2025-05-16 06:17:58'),(721,'721','4.1.2.2.2 Short-term','2025-05-16 06:17:58'),(722,'722','4.1.2.3 Banks','2025-05-16 06:17:58'),(723,'723','4.1.2.3.1 Long-term','2025-05-16 06:17:58'),(724,'724','4.1.2.3.2 Short-term','2025-05-16 06:17:58'),(725,'725','4.1.2.4 Other sectors','2025-05-16 06:17:58'),(726,'726','4.1.2.4.1 Long-term','2025-05-16 06:17:58'),(727,'727','4.1.2.4.2 Short-term','2025-05-16 06:17:58'),(730,'730','4.1.3 Currency and deposits','2025-05-16 06:17:58'),(731,'731','4.1.3.1 Monetary authorities','2025-05-16 06:17:58'),(732,'732','4.1.3.2 General government','2025-05-16 06:17:58'),(733,'733','4.1.3.3 Banks','2025-05-16 06:17:58'),(734,'734','4.1.3.4 Other sectors','2025-05-16 06:17:58'),(736,'736','4.1.4 Other assets','2025-05-16 06:17:58'),(737,'737','4.1.4.1 Monetary authorities','2025-05-16 06:17:58'),(738,'738','4.1.4.1.1 Long-term','2025-05-16 06:17:58'),(739,'739','4.1.4.1.2 Short-term','2025-05-16 06:17:58'),(740,'740','4.1.4.2 General government','2025-05-16 06:17:58'),(741,'741','4.1.4.2.1 Long-term','2025-05-16 06:17:58'),(742,'742','4.1.4.2.2 Short-term','2025-05-16 06:17:58'),(743,'743','4.1.4.3 Banks','2025-05-16 06:17:58'),(744,'744','4.1.4.3.1 Long-term','2025-05-16 06:17:58'),(745,'745','4.1.4.3.2 Short-term','2025-05-16 06:17:58'),(746,'746','4.1.4.4 Other sectors','2025-05-16 06:17:58'),(747,'747','4.1.4.4.1 Long-term','2025-05-16 06:17:58'),(748,'748','3.1.4.4.2 Short-term','2025-05-16 06:17:58'),(753,'753','4.2 Liabilities','2025-05-16 06:17:58'),(756,'756','4.2.1 Trade credits','2025-05-16 06:17:58'),(757,'757','4.2.1.1 General government','2025-05-16 06:17:58'),(758,'758','4.2.1.1.1 Long-term','2025-05-16 06:17:58'),(759,'759','4.2.1.1.2 Short-term','2025-05-16 06:17:58'),(760,'760','4.2.1.2 Other sectors','2025-05-16 06:17:58'),(761,'761','4.2.1.2.1 Long-term','2025-05-16 06:17:58'),(762,'762','4.2.1.2.2 Short-term','2025-05-16 06:17:58'),(764,'764','4.2.2 Loans','2025-05-16 06:17:58'),(765,'765','4.2.2.1 Monetary authorities','2025-05-16 06:17:58'),(766,'766','4.2.2.1.1 Use of Fund credit and loans from the Fund','2025-05-16 06:17:58'),(767,'767','4.2.2.1.2 Other long-term','2025-05-16 06:17:58'),(768,'768','4.2.2.1.3 Short-term','2025-05-16 06:17:58'),(769,'769','4.2.2.2 General government','2025-05-16 06:17:58'),(770,'770','4.2.2.2.1 Long-term','2025-05-16 06:17:58'),(771,'771','4.2.2.2.2 Short-term','2025-05-16 06:17:58'),(772,'772','4.2.2.3 Banks','2025-05-16 06:17:58'),(773,'773','4.2.2.3.1 Long-term','2025-05-16 06:17:58'),(774,'774','4.2.2.3.2 Short-term','2025-05-16 06:17:58'),(775,'775','4.2.2.4 Other sectors','2025-05-16 06:17:58'),(776,'776','4.2.2.4.1 Long-term','2025-05-16 06:17:58'),(777,'777','4.2.2.4.2 Short-term','2025-05-16 06:17:58'),(780,'780','4.2.3 Currency and deposits','2025-05-16 06:17:58'),(781,'781','4.2.3.1 Monetary authorities','2025-05-16 06:17:58'),(782,'782','4.2.3.2 General government','2025-05-16 06:17:58'),(783,'783','4.2.3.3 Banks','2025-05-16 06:17:58'),(784,'784','4.2.3.4 Other sectors','2025-05-16 06:17:58'),(786,'786','4.2.4 Other liabilities','2025-05-16 06:17:58'),(787,'787','4.2.4.1 Monetary authorities','2025-05-16 06:17:58'),(788,'788','4.2.4.1.1 Long-term','2025-05-16 06:17:58'),(789,'789','4.2.4.1.2 Short-term','2025-05-16 06:17:58'),(790,'790','4.2.4.2 General government','2025-05-16 06:17:58'),(791,'791','4.2.4.2.1 Long-term','2025-05-16 06:17:58'),(792,'792','4.2.4.2.2 Short-term','2025-05-16 06:17:58'),(793,'793','4.2.4.3 Banks','2025-05-16 06:17:58'),(794,'794','4.2.4.3.1 Long-term','2025-05-16 06:17:58'),(795,'795','4.2.4.3.2 Short-term','2025-05-16 06:17:58'),(796,'796','4.2.4.4 Other sectors','2025-05-16 06:17:58'),(797,'797','4.2.4.4.1 Long-term','2025-05-16 06:17:58'),(798,'798','4.2.4.4.2 Short-term','2025-05-16 06:17:58'),(802,'802','5. Official reserve assets','2025-05-16 06:17:58'),(803,'803','5.4 Foreign exchange','2025-05-16 06:17:58'),(806,'806','5.4.2 Securities','2025-05-16 06:17:58'),(808,'808','5.4.1 Currency and deposits','2025-05-16 06:17:58'),(810,'810','5.3 Reserve position in the Fund','2025-05-16 06:17:58'),(811,'811','5.2 SDRs','2025-05-16 06:17:58'),(812,'812','5.1 Monetary gold (including gold deposits and, if appropriate, gold swapped)','2025-05-16 06:17:58'),(813,'813','5.6 Other claims','2025-05-16 06:17:58'),(850,'850','Total passenger','2025-05-16 06:17:58'),(851,'851','Total freight','2025-05-16 06:17:58'),(852,'852','Total other services','2025-05-16 06:17:58'),(858,'858','1.3 Other freight','2025-05-16 06:17:58'),(862,'862','1.4 Space freight','2025-05-16 06:17:58'),(863,'863','1.5 Rail freight','2025-05-16 06:17:58'),(865,'865','1.7 Inland waterway freight','2025-05-16 06:17:58'),(868,'868','1.8 Pipeline freight','2025-05-16 06:17:58'),(871,'871','2.3 All other travel expenditure','2025-05-16 06:17:58'),(887,'887','5. Financial intermediation services indirectly measured (FISIM)','2025-05-16 06:17:58'),(888,'888','6. Financial services including FISIM','2025-05-16 06:17:58'),(889,'889','7.2.1 News agency services','2025-05-16 06:17:58'),(890,'890','7.2.2 Other information provision services','2025-05-16 06:17:58'),(891,'891','8.1 Franchises and similar rights','2025-05-16 06:17:58'),(892,'892','8.2 Other royalties and license fees','2025-05-16 06:17:58'),(894,'894','8. Audiovisual transactions','2025-05-16 06:17:58'),(895,'895','10.2.1 Education services','2025-05-16 06:17:58'),(896,'896','10.2.2 Health services','2025-05-16 06:17:58'),(897,'897','10.2.3 Other','2025-05-16 06:17:58'),(900,'900','3.1 Financial derivatives assets','2025-05-16 06:17:58'),(901,'901','3.1.1 Monetary authorities','2025-05-16 06:17:58'),(902,'902','3.1.2 General government','2025-05-16 06:17:58'),(903,'903','3.1.3 Banks','2025-05-16 06:17:58'),(904,'904','3.1.4 Other sectors','2025-05-16 06:17:58'),(905,'905','3.2 Financial derivatives liabilities','2025-05-16 06:17:58'),(906,'906','3.2.1 Monetary authorities','2025-05-16 06:17:58'),(907,'907','3.2.2 General government','2025-05-16 06:17:58'),(908,'908','3.2.3 Banks','2025-05-16 06:17:58'),(909,'909','3.2.4 Other sectors','2025-05-16 06:17:58'),(910,'910','3. Financial derivatives (net)','2025-05-16 06:17:58'),(911,'911','3.0.1 Monetary authorities','2025-05-16 06:17:58'),(912,'912','3.0.2 General government','2025-05-16 06:17:58'),(913,'913','3.0.3 Banks','2025-05-16 06:17:58'),(914,'914','3.0.4 Other sectors','2025-05-16 06:17:58'),(920,'920','Exceptional financing transactions (Total)','2025-05-16 06:17:58'),(950,'950','1. Freight transportation on merchandise, valued on a transaction basis','2025-05-16 06:17:58'),(951,'951','1.1 Sea freight','2025-05-16 06:17:58'),(952,'952','1.2 Air freight','2025-05-16 06:17:58'),(953,'953','1.6 Road freight','2025-05-16 06:17:58'),(956,'956','2.1 Expenditure on goods','2025-05-16 06:17:58'),(957,'957','2.2 Expenditure on accommodation and food and beverage serving services','2025-05-16 06:17:58'),(960,'960','3. Gross insurance premiums','2025-05-16 06:17:58'),(961,'961','4. Gross insurance claims','2025-05-16 06:17:58'),(962,'962','7. Merchanting gross flows','2025-05-16 06:17:58'),(972,'972','3.1 Gross premiums-life insurance','2025-05-16 06:17:58'),(973,'973','4.1 Gross claims-life insurance','2025-05-16 06:17:58'),(974,'974','3.2 Gross premiums-freight insurance','2025-05-16 06:17:58'),(975,'975','4.2 Gross claims-freight insurance','2025-05-16 06:17:58'),(976,'976','3.3 Gross premiums-other direct insurance','2025-05-16 06:17:58'),(977,'977','4.3 Gross claims-other direct insurance','2025-05-16 06:17:58'),(982,'982','Current and capital transfers','2025-05-16 06:17:58'),(983,'983','Current + capital + financial accounts','2025-05-16 06:17:58'),(984,'984','Current + capital + financial accounts + net errors and omissions','2025-05-16 06:17:58'),(991,'991','Goods and services','2025-05-16 06:17:58'),(992,'992','Goods, services, and income','2025-05-16 06:17:58'),(993,'993','1. Current account','2025-05-16 06:17:58'),(994,'994','E. Capital Account','2025-05-16 06:17:58'),(995,'995','F. Financial Account','2025-05-16 06:17:58'),(996,'996','Capital and Financial Account','2025-05-16 06:17:58'),(998,'998','Net errors and omissions','2025-05-16 06:17:58'),(11010,'110 B','1.1 Export/import of goods in trade statistics','2025-05-16 06:17:58'),(11020,'110 C','1.2 Adjustments to trade statistics','2025-05-16 06:17:58'),(11030,'110 CA','1.3 For coverage','2025-05-16 06:17:58'),(11040,'110 CB','1.4 For classification','2025-05-16 06:17:58'),(11050,'110 CC','1.5 For valuation','2025-05-16 06:17:58'),(11060,'110 CD','1.6 For timing','2025-05-16 06:17:58'),(38010,'380 EC','Exc. Fin. - Intergovernmental grants','2025-05-16 06:17:58'),(38020,'380 ED','Exc. Fin. - Grants received from Fund subsidy accounts','2025-05-16 06:17:58'),(38030,'380 Z','Other','2025-05-16 06:17:58'),(40210,'402 EB','Exceptional Financing','2025-05-16 06:17:58'),(40220,'402 Z','Other','2025-05-16 06:17:58'),(57010,'570 EF','Exc. Fin. - Investment associated with debt reduction','2025-05-16 06:17:58'),(57020,'570 EG','Exc. Fin. - Other','2025-05-16 06:17:58'),(57030,'570 Z','1.2.1.3 Other','2025-05-16 06:17:58'),(67110,'671 EH','Exc. Fin. - Issues','2025-05-16 06:17:58'),(67120,'671 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(67130,'671 Z','Other','2025-05-16 06:17:58'),(67210,'672 EH','Exc. Fin. - Issues','2025-05-16 06:17:58'),(67220,'672 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(67230,'672 Z','Other','2025-05-16 06:17:58'),(67310,'673 EH','Exc. Fin. - Issues','2025-05-16 06:17:58'),(67320,'673 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(67330,'673 Z','Other','2025-05-16 06:17:58'),(67410,'674 EH','Exc. Fin. - Issues','2025-05-16 06:17:58'),(67420,'674 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(67430,'674 Z','Other','2025-05-16 06:17:58'),(68110,'681 EH','Exc. Fin. - Issues','2025-05-16 06:17:58'),(68120,'681 Z','Other','2025-05-16 06:17:58'),(68210,'682 EH','Exc. Fin. - Issues','2025-05-16 06:17:58'),(68220,'682 Z','Other','2025-05-16 06:17:58'),(68310,'683 EH','Exc. Fin. - Issues','2025-05-16 06:17:58'),(68320,'683 Z','Other','2025-05-16 06:17:58'),(68410,'684 EH','Exc. Fin. - Issues','2025-05-16 06:17:58'),(68420,'684 Z','Other','2025-05-16 06:17:58'),(76710,'767 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors onauthorities\' behalf','2025-05-16 06:17:58'),(76720,'767 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-16 06:17:58'),(76730,'767 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(76740,'767 Z','Other','2025-05-16 06:17:58'),(76810,'768 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-16 06:17:58'),(76820,'768 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-16 06:17:58'),(76830,'768 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(76840,'768 Z','Other','2025-05-16 06:17:58'),(77010,'770 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-16 06:17:58'),(77020,'770 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-16 06:17:58'),(77030,'770 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(77040,'770 Z','Other','2025-05-16 06:17:58'),(77110,'771 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-16 06:17:58'),(77120,'771 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-16 06:17:58'),(77130,'771 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(77140,'771 Z','Other','2025-05-16 06:17:58'),(77310,'773 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-16 06:17:58'),(77320,'773 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-16 06:17:58'),(77330,'773 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(77340,'773 Z','Other','2025-05-16 06:17:58'),(77410,'774 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-16 06:17:58'),(77420,'774 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-16 06:17:58'),(77430,'774 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(77440,'774 Z','Other','2025-05-16 06:17:58'),(77610,'776 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-16 06:17:58'),(77620,'776 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-16 06:17:58'),(77630,'776 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(77640,'776 Z','Other','2025-05-16 06:17:58'),(77710,'777 EJ','Exc. Fin. - Drawings on new loans by authorities or other sectors on authorities\' behalf','2025-05-16 06:17:58'),(77720,'777 EK','Exc. Fin. - Rescheduling of existing debt','2025-05-16 06:17:58'),(77730,'777 EM','Exc. Fin. - Advance repayments','2025-05-16 06:17:58'),(77740,'777 Z','Other','2025-05-16 06:17:58'),(78905,'789 F','Exc. Fin. - Total arrears','2025-05-16 06:17:58'),(78910,'789 FA','Exc. Fin. - Accumulation of arrears','2025-05-16 06:17:58'),(78915,'789 FB','Exc. Fin. - Principal on short-term debt','2025-05-16 06:17:58'),(78920,'789 FC','Exc. Fin. - Principal on long-term debt','2025-05-16 06:17:58'),(78925,'789 FD','Exc. Fin. - Original interest','2025-05-16 06:17:58'),(78930,'789 FE','Exc. Fin. - Penalty interest','2025-05-16 06:17:58'),(78935,'789 FF','Exc. Fin. - Repayments of arrears','2025-05-16 06:17:58'),(78940,'789 FG','Exc. Fin. - Principal','2025-05-16 06:17:58'),(78945,'789 FH','Exc. Fin. - Interest','2025-05-16 06:17:58'),(78950,'789 FI','Exc. Fin. - Rescheduling of arrears','2025-05-16 06:17:58'),(78955,'789 FJ','Exc. Fin. - Principal','2025-05-16 06:17:58'),(78960,'789 FK','Exc. Fin. - Interest','2025-05-16 06:17:58'),(78965,'789 FM','Exc. Fin. - Cancellation of arrears','2025-05-16 06:17:58'),(78970,'789 FN','Exc. Fin. - Principal','2025-05-16 06:17:58'),(78975,'789 FO','Exc. Fin. - Interest','2025-05-16 06:17:58'),(78980,'789 Z','Other','2025-05-16 06:17:58'),(79205,'792 F','Exc. Fin. - Total arrears','2025-05-16 06:17:58'),(79210,'792 FA','Exc. Fin. - Accumulation of arrears','2025-05-16 06:17:58'),(79215,'792 FB','Exc. Fin. - Principal on short-term debt','2025-05-16 06:17:58'),(79220,'792 FC','Exc. Fin. - Principal on long-term debt','2025-05-16 06:17:58'),(79225,'792 FD','Exc. Fin. - Original interest','2025-05-16 06:17:58'),(79230,'792 FE','Exc. Fin. - Penalty interest','2025-05-16 06:17:58'),(79235,'792 FF','Exc. Fin. - Repayments of arrears','2025-05-16 06:17:58'),(79240,'792 FG','Exc. Fin. - Principal','2025-05-16 06:17:58'),(79245,'792 FH','Exc. Fin. - Interest','2025-05-16 06:17:58'),(79250,'792 FI','Exc. Fin. - Rescheduling of arrears','2025-05-16 06:17:58'),(79255,'792 FJ','Exc. Fin. - Principal','2025-05-16 06:17:58'),(79260,'792 FK','Exc. Fin. - Interest','2025-05-16 06:17:58'),(79265,'792 FM','Exc. Fin. - Cancellation of arrears','2025-05-16 06:17:58'),(79270,'792 FN','Exc. Fin. - Principal','2025-05-16 06:17:58'),(79275,'792 FO','Exc. Fin. - Interest','2025-05-16 06:17:58'),(79280,'792 Z','Other','2025-05-16 06:17:58'),(79505,'795 F','Exc. Fin. - Total arrears','2025-05-16 06:17:58'),(79510,'795 FA','Exc. Fin. - Accumulation of arrears','2025-05-16 06:17:58'),(79515,'795 FB','Exc. Fin. - Principal on short-term debt','2025-05-16 06:17:58'),(79520,'795 FC','Exc. Fin. - Principal on long-term debt','2025-05-16 06:17:58'),(79525,'795 FD','Exc. Fin. - Original interest','2025-05-16 06:17:58'),(79530,'795 FE','Exc. Fin. - Penalty interest','2025-05-16 06:17:58'),(79535,'795 FF','Exc. Fin. - Repayments of arrears','2025-05-16 06:17:58'),(79540,'795 FG','Exc. Fin. - Principal','2025-05-16 06:17:58'),(79545,'795 FH','Exc. Fin. - Interest','2025-05-16 06:17:58'),(79550,'795 FI','Exc. Fin. - Rescheduling of arrears','2025-05-16 06:17:58'),(79555,'795 FJ','Exc. Fin. - Principal','2025-05-16 06:17:58'),(79560,'795 FK','Exc. Fin. - Interest','2025-05-16 06:17:58'),(79565,'795 FM','Exc. Fin. - Cancellation of arrears','2025-05-16 06:17:58'),(79570,'795 FN','Exc. Fin. - Principal','2025-05-16 06:17:58'),(79575,'795 FO','Exc. Fin. - Interest','2025-05-16 06:17:58'),(79580,'795 Z','Other','2025-05-16 06:17:58'),(79805,'798 F','Exc. Fin. - Total arrears','2025-05-16 06:17:58'),(79810,'798 FA','Exc. Fin. - Accumulation of arrears','2025-05-16 06:17:58'),(79815,'798 FB','Exc. Fin. - Principal on short-term debt','2025-05-16 06:17:58'),(79820,'798 FC','Exc. Fin. - Principal on long-term debt','2025-05-16 06:17:58'),(79825,'798 FD','Exc. Fin. - Original interest','2025-05-16 06:17:58'),(79830,'798 FE','Exc. Fin. - Penalty interest','2025-05-16 06:17:58'),(79835,'798 FF','Exc. Fin. - Repayments of arrears','2025-05-16 06:17:58'),(79840,'798 FG','Exc. Fin. - Principal','2025-05-16 06:17:58'),(79845,'798 FH','Exc. Fin. - Interest','2025-05-16 06:17:58'),(79850,'798 FI','Exc. Fin. - Rescheduling of arrears','2025-05-16 06:17:58'),(79855,'798 FJ','Exc. Fin. - Principal','2025-05-16 06:17:58'),(79860,'798 FK','Exc. Fin. - Interest','2025-05-16 06:17:58'),(79865,'798 FM','Exc. Fin. - Cancellation of arrears','2025-05-16 06:17:58'),(79870,'798 FN','Exc. Fin. - Principal','2025-05-16 06:17:58'),(79875,'798 FO','Exc. Fin. - Interest','2025-05-16 06:17:58'),(79880,'798 Z','Other','2025-05-16 06:17:58'),(80610,'806 S','5.4.2.1 Equities','2025-05-16 06:17:58'),(80620,'806 T','5.4.2.2 Bonds and notes','2025-05-16 06:17:58'),(80630,'806 U','5.4.2.3 Money market instruments','2025-05-16 06:17:58'),(80810,'808 A','5.4.1.1 With monetary authorities','2025-05-16 06:17:58'),(80820,'808 B','5.4.1.2 With banks','2025-05-16 06:17:58'),(81440,'814 A','5.5 Financial derivatives, net','2025-05-16 06:17:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkProcessingState`
--

LOCK TABLES `bulkProcessingState` WRITE;
/*!40000 ALTER TABLE `bulkProcessingState` DISABLE KEYS */;
INSERT INTO `bulkProcessingState` VALUES (1,'RECEIVED','The switch has received the individual transfer ids part of the bulk transfer',1,'2025-05-16 06:17:58'),(2,'RECEIVED_DUPLICATE','The switch has matched individual transfer as duplicate',1,'2025-05-16 06:17:58'),(3,'RECEIVED_INVALID','The switch has matched individual transfer as invalid within Prepare or Position Handler',1,'2025-05-16 06:17:58'),(4,'ACCEPTED','The switch has reserved the funds for the transfers in the bulk',1,'2025-05-16 06:17:58'),(5,'PROCESSING','Fulfilment request has been received for the individual transfer',1,'2025-05-16 06:17:58'),(6,'FULFIL_DUPLICATE','The switch has matched individual transfer fulfil as duplicate',1,'2025-05-16 06:17:58'),(7,'FULFIL_INVALID','The switch has matched individual transfer fulfilment as invalid within Fulfil or Position Handler',1,'2025-05-16 06:17:58'),(8,'COMPLETED','The switch has marked the individual transfer as committed',1,'2025-05-16 06:17:58'),(9,'REJECTED','The switch has marked the individual transfer as rejected',1,'2025-05-16 06:17:58'),(10,'EXPIRED','The switch has marked the individual transfer as timed out',1,'2025-05-16 06:17:58'),(11,'ABORTING','The switch has marked the individual transfer as aborting due to failed validation',1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkTransferState`
--

LOCK TABLES `bulkTransferState` WRITE;
/*!40000 ALTER TABLE `bulkTransferState` DISABLE KEYS */;
INSERT INTO `bulkTransferState` VALUES ('ABORTING','PROCESSING','The switch is attempting to abort all individual transfers',1,'2025-05-16 06:17:58'),('ACCEPTED','ACCEPTED','The switch has reserved the funds for the transfers in the bulk',1,'2025-05-16 06:17:58'),('COMPLETED','COMPLETED','Final state when transfers in the bulk are committed',1,'2025-05-16 06:17:58'),('EXPIRED','COMPLETED','Final state when transfers in the bulk have expired',1,'2025-05-16 06:17:58'),('EXPIRING','PROCESSING','One or more individual transfers from have expired',1,'2025-05-16 06:17:58'),('INVALID','REJECTED','Final state when the switch has completed processing of pending invalid bulk transfer',1,'2025-05-16 06:17:58'),('PENDING_FULFIL','PROCESSING','Fulfilment request has been received by the switch',1,'2025-05-16 06:17:58'),('PENDING_INVALID','PENDING','Validation of received bulk transfer is not successful',1,'2025-05-16 06:17:58'),('PENDING_PREPARE','PENDING','Validation of received bulk transfer is successful',1,'2025-05-16 06:17:58'),('PROCESSING','PROCESSING','Fulfilment request has been received by the switch',1,'2025-05-16 06:17:58'),('RECEIVED','RECEIVED','The switch has received the bulk transfer',1,'2025-05-16 06:17:58'),('REJECTED','REJECTED','Final state when the switch has completed rejection request by the payee',1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES ('AED','UAE dirham',1,'2025-05-16 06:17:58',2),('AFA','Afghanistan afghani (obsolete)',1,'2025-05-16 06:17:58',4),('AFN','Afghanistan afghani',1,'2025-05-16 06:17:58',2),('ALL','Albanian lek',1,'2025-05-16 06:17:58',2),('AMD','Armenian dram',1,'2025-05-16 06:17:58',2),('ANG','Netherlands Antillian guilder',1,'2025-05-16 06:17:58',2),('AOA','Angolan kwanza',1,'2025-05-16 06:17:58',2),('AOR','Angolan kwanza reajustado',1,'2025-05-16 06:17:58',4),('ARS','Argentine peso',1,'2025-05-16 06:17:58',2),('AUD','Australian dollar',1,'2025-05-16 06:17:58',2),('AWG','Aruban guilder',1,'2025-05-16 06:17:58',2),('AZN','Azerbaijanian new manat',1,'2025-05-16 06:17:58',2),('BAM','Bosnia-Herzegovina convertible mark',1,'2025-05-16 06:17:58',2),('BBD','Barbados dollar',1,'2025-05-16 06:17:58',2),('BDT','Bangladeshi taka',1,'2025-05-16 06:17:58',2),('BGN','Bulgarian lev',1,'2025-05-16 06:17:58',2),('BHD','Bahraini dinar',1,'2025-05-16 06:17:58',3),('BIF','Burundi franc',1,'2025-05-16 06:17:58',0),('BMD','Bermudian dollar',1,'2025-05-16 06:17:58',2),('BND','Brunei dollar',1,'2025-05-16 06:17:58',2),('BOB','Bolivian boliviano',1,'2025-05-16 06:17:58',2),('BOV','Bolivia Mvdol',1,'2025-05-16 06:17:58',2),('BRL','Brazilian real',1,'2025-05-16 06:17:58',2),('BSD','Bahamian dollar',1,'2025-05-16 06:17:58',2),('BTN','Bhutan ngultrum',1,'2025-05-16 06:17:58',2),('BWP','Botswana pula',1,'2025-05-16 06:17:58',2),('BYN','Belarusian ruble',1,'2025-05-16 06:17:58',4),('BYR','Belarussian Ruble',1,'2025-05-16 06:17:58',0),('BZD','Belize dollar',1,'2025-05-16 06:17:58',2),('CAD','Canadian dollar',1,'2025-05-16 06:17:58',2),('CDF','Congolese franc',1,'2025-05-16 06:17:58',2),('CHE','Switzerland WIR Euro',1,'2025-05-16 06:17:58',2),('CHF','Swiss franc',1,'2025-05-16 06:17:58',2),('CHW','Switzerland WIR Franc',1,'2025-05-16 06:17:58',2),('CLF','Unidad de Fomento',1,'2025-05-16 06:17:58',4),('CLP','Chilean peso',1,'2025-05-16 06:17:58',0),('CNY','Chinese yuan renminbi',1,'2025-05-16 06:17:58',2),('COP','Colombian peso',1,'2025-05-16 06:17:58',2),('COU','Unidad de Valor Real',1,'2025-05-16 06:17:58',2),('CRC','Costa Rican colon',1,'2025-05-16 06:17:58',2),('CUC','Cuban convertible peso',1,'2025-05-16 06:17:58',2),('CUP','Cuban peso',1,'2025-05-16 06:17:58',2),('CVE','Cape Verde escudo',1,'2025-05-16 06:17:58',2),('CZK','Czech koruna',1,'2025-05-16 06:17:58',2),('DJF','Djibouti franc',1,'2025-05-16 06:17:58',0),('DKK','Danish krone',1,'2025-05-16 06:17:58',2),('DOP','Dominican peso',1,'2025-05-16 06:17:58',2),('DZD','Algerian dinar',1,'2025-05-16 06:17:58',2),('EEK','Estonian kroon',1,'2025-05-16 06:17:58',4),('EGP','Egyptian pound',1,'2025-05-16 06:17:58',2),('ERN','Eritrean nakfa',1,'2025-05-16 06:17:58',2),('ETB','Ethiopian birr',1,'2025-05-16 06:17:58',2),('EUR','EU euro',1,'2025-05-16 06:17:58',2),('FJD','Fiji dollar',1,'2025-05-16 06:17:58',2),('FKP','Falkland Islands pound',1,'2025-05-16 06:17:58',2),('GBP','British pound',1,'2025-05-16 06:17:58',2),('GEL','Georgian lari',1,'2025-05-16 06:17:58',2),('GGP','Guernsey pound',1,'2025-05-16 06:17:58',4),('GHS','Ghanaian new cedi',1,'2025-05-16 06:17:58',2),('GIP','Gibraltar pound',1,'2025-05-16 06:17:58',2),('GMD','Gambian dalasi',1,'2025-05-16 06:17:58',2),('GNF','Guinean franc',1,'2025-05-16 06:17:58',0),('GTQ','Guatemalan quetzal',1,'2025-05-16 06:17:58',2),('GYD','Guyana dollar',1,'2025-05-16 06:17:58',2),('HKD','Hong Kong SAR dollar',1,'2025-05-16 06:17:58',2),('HNL','Honduran lempira',1,'2025-05-16 06:17:58',2),('HRK','Croatian kuna',1,'2025-05-16 06:17:58',2),('HTG','Haitian gourde',1,'2025-05-16 06:17:58',2),('HUF','Hungarian forint',1,'2025-05-16 06:17:58',2),('IDR','Indonesian rupiah',1,'2025-05-16 06:17:58',2),('ILS','Israeli new shekel',1,'2025-05-16 06:17:58',2),('IMP','Isle of Man pound',1,'2025-05-16 06:17:58',4),('INR','Indian rupee',1,'2025-05-16 06:17:58',2),('IQD','Iraqi dinar',1,'2025-05-16 06:17:58',3),('IRR','Iranian rial',1,'2025-05-16 06:17:58',2),('ISK','Icelandic krona',1,'2025-05-16 06:17:58',0),('JEP','Jersey pound',1,'2025-05-16 06:17:58',4),('JMD','Jamaican dollar',1,'2025-05-16 06:17:58',2),('JOD','Jordanian dinar',1,'2025-05-16 06:17:58',3),('JPY','Japanese yen',1,'2025-05-16 06:17:58',0),('KES','Kenyan shilling',1,'2025-05-16 06:17:58',2),('KGS','Kyrgyz som',1,'2025-05-16 06:17:58',2),('KHR','Cambodian riel',1,'2025-05-16 06:17:58',2),('KMF','Comoros franc',1,'2025-05-16 06:17:58',0),('KPW','North Korean won',1,'2025-05-16 06:17:58',2),('KRW','South Korean won',1,'2025-05-16 06:17:58',0),('KWD','Kuwaiti dinar',1,'2025-05-16 06:17:58',3),('KYD','Cayman Islands dollar',1,'2025-05-16 06:17:58',2),('KZT','Kazakh tenge',1,'2025-05-16 06:17:58',2),('LAK','Lao kip',1,'2025-05-16 06:17:58',2),('LBP','Lebanese pound',1,'2025-05-16 06:17:58',2),('LKR','Sri Lanka rupee',1,'2025-05-16 06:17:58',2),('LRD','Liberian dollar',1,'2025-05-16 06:17:58',2),('LSL','Lesotho loti',1,'2025-05-16 06:17:58',2),('LTL','Lithuanian litas',1,'2025-05-16 06:17:58',4),('LVL','Latvian lats',1,'2025-05-16 06:17:58',4),('LYD','Libyan dinar',1,'2025-05-16 06:17:58',3),('MAD','Moroccan dirham',1,'2025-05-16 06:17:58',2),('MDL','Moldovan leu',1,'2025-05-16 06:17:58',2),('MGA','Malagasy ariary',1,'2025-05-16 06:17:58',2),('MKD','Macedonian denar',1,'2025-05-16 06:17:58',2),('MMK','Myanmar kyat',1,'2025-05-16 06:17:58',2),('MNT','Mongolian tugrik',1,'2025-05-16 06:17:58',2),('MOP','Macao SAR pataca',1,'2025-05-16 06:17:58',2),('MRO','Mauritanian ouguiya',1,'2025-05-16 06:17:58',2),('MUR','Mauritius rupee',1,'2025-05-16 06:17:58',2),('MVR','Maldivian rufiyaa',1,'2025-05-16 06:17:58',2),('MWK','Malawi kwacha',1,'2025-05-16 06:17:58',2),('MXN','Mexican peso',1,'2025-05-16 06:17:58',2),('MXV','Mexican Unidad de Inversion (UDI)',1,'2025-05-16 06:17:58',2),('MYR','Malaysian ringgit',1,'2025-05-16 06:17:58',2),('MZN','Mozambique new metical',1,'2025-05-16 06:17:58',2),('NAD','Namibian dollar',1,'2025-05-16 06:17:58',2),('NGN','Nigerian naira',1,'2025-05-16 06:17:58',2),('NIO','Nicaraguan cordoba oro',1,'2025-05-16 06:17:58',2),('NOK','Norwegian krone',1,'2025-05-16 06:17:58',2),('NPR','Nepalese rupee',1,'2025-05-16 06:17:58',2),('NZD','New Zealand dollar',1,'2025-05-16 06:17:58',2),('OMR','Omani rial',1,'2025-05-16 06:17:58',3),('PAB','Panamanian balboa',1,'2025-05-16 06:17:58',2),('PEN','Peruvian nuevo sol',1,'2025-05-16 06:17:58',2),('PGK','Papua New Guinea kina',1,'2025-05-16 06:17:58',2),('PHP','Philippine peso',1,'2025-05-16 06:17:58',2),('PKR','Pakistani rupee',1,'2025-05-16 06:17:58',2),('PLN','Polish zloty',1,'2025-05-16 06:17:58',2),('PYG','Paraguayan guarani',1,'2025-05-16 06:17:58',0),('QAR','Qatari rial',1,'2025-05-16 06:17:58',2),('RON','Romanian new leu',1,'2025-05-16 06:17:58',2),('RSD','Serbian dinar',1,'2025-05-16 06:17:58',2),('RUB','Russian ruble',1,'2025-05-16 06:17:58',2),('RWF','Rwandan franc',1,'2025-05-16 06:17:58',0),('SAR','Saudi riyal',1,'2025-05-16 06:17:58',2),('SBD','Solomon Islands dollar',1,'2025-05-16 06:17:58',2),('SCR','Seychelles rupee',1,'2025-05-16 06:17:58',2),('SDG','Sudanese pound',1,'2025-05-16 06:17:58',2),('SEK','Swedish krona',1,'2025-05-16 06:17:58',2),('SGD','Singapore dollar',1,'2025-05-16 06:17:58',2),('SHP','Saint Helena pound',1,'2025-05-16 06:17:58',2),('SLL','Sierra Leone leone',1,'2025-05-16 06:17:58',2),('SOS','Somali shilling',1,'2025-05-16 06:17:58',2),('SPL','Seborgan luigino',1,'2025-05-16 06:17:58',4),('SRD','Suriname dollar',1,'2025-05-16 06:17:58',2),('SSP','South Sudanese Pound',1,'2025-05-16 06:17:58',2),('STD','Sao Tome and Principe dobra',1,'2025-05-16 06:17:58',2),('SVC','El Salvador colon',1,'2025-05-16 06:17:58',2),('SYP','Syrian pound',1,'2025-05-16 06:17:58',2),('SZL','Swaziland lilangeni',1,'2025-05-16 06:17:58',2),('THB','Thai baht',1,'2025-05-16 06:17:58',2),('TJS','Tajik somoni',1,'2025-05-16 06:17:58',2),('TMT','Turkmen new manat',1,'2025-05-16 06:17:58',2),('TND','Tunisian dinar',1,'2025-05-16 06:17:58',3),('TOP','Tongan pa\'anga',1,'2025-05-16 06:17:58',2),('TRY','Turkish lira',1,'2025-05-16 06:17:58',2),('TTD','Trinidad and Tobago dollar',1,'2025-05-16 06:17:58',2),('TVD','Tuvaluan dollar',1,'2025-05-16 06:17:58',4),('TWD','Taiwan New dollar',1,'2025-05-16 06:17:58',2),('TZS','Tanzanian shilling',1,'2025-05-16 06:17:58',2),('UAH','Ukrainian hryvnia',1,'2025-05-16 06:17:58',2),('UGX','Uganda new shilling',1,'2025-05-16 06:17:58',0),('USD','US dollar',1,'2025-05-16 06:17:58',2),('USN','US Dollar (Next day)',1,'2025-05-16 06:17:58',2),('UYI','Uruguay Peso en Unidades Indexadas (URUIURUI)',1,'2025-05-16 06:17:58',0),('UYU','Uruguayan peso uruguayo',1,'2025-05-16 06:17:58',2),('UZS','Uzbekistani sum',1,'2025-05-16 06:17:58',2),('VEF','Venezuelan bolivar fuerte',1,'2025-05-16 06:17:58',2),('VND','Vietnamese dong',1,'2025-05-16 06:17:58',0),('VUV','Vanuatu vatu',1,'2025-05-16 06:17:58',0),('WST','Samoan tala',1,'2025-05-16 06:17:58',2),('XAF','CFA franc BEAC',1,'2025-05-16 06:17:58',0),('XAG','Silver (ounce)',1,'2025-05-16 06:17:58',4),('XAU','Gold (ounce)',1,'2025-05-16 06:17:58',4),('XCD','East Caribbean dollar',1,'2025-05-16 06:17:58',2),('XDR','IMF special drawing right',1,'2025-05-16 06:17:58',4),('XFO','Gold franc',1,'2025-05-16 06:17:58',4),('XFU','UIC franc',1,'2025-05-16 06:17:58',4),('XOF','CFA franc BCEAO',1,'2025-05-16 06:17:58',0),('XPD','Palladium (ounce)',1,'2025-05-16 06:17:58',4),('XPF','CFP franc',1,'2025-05-16 06:17:58',0),('XPT','Platinum (ounce)',1,'2025-05-16 06:17:58',4),('XSU','Sucre',1,'2025-05-16 06:17:58',4),('XTS','Reserved for testing purposes',1,'2025-05-16 06:17:58',4),('XUA','African Development Bank (ADB) Unit of Account',1,'2025-05-16 06:17:58',4),('XXX','Assigned for transactions where no currency is involved',1,'2025-05-16 06:17:58',4),('YER','Yemeni rial',1,'2025-05-16 06:17:58',2),('ZAR','South African rand',1,'2025-05-16 06:17:58',2),('ZMK','Zambian kwacha (obsolete)',1,'2025-05-16 06:17:58',4),('ZMW','Zambian kwacha',1,'2025-05-16 06:17:58',2),('ZWD','Zimbabwe dollar (initial)',1,'2025-05-16 06:17:58',4),('ZWL','Zimbabwe dollar (3rd denomination)',1,'2025-05-16 06:17:58',2),('ZWN','Zimbabwe dollar (1st denomination)',1,'2025-05-16 06:17:58',4),('ZWR','Zimbabwe dollar (2nd denomination)',1,'2025-05-16 06:17:58',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endpointType`
--

LOCK TABLES `endpointType` WRITE;
/*!40000 ALTER TABLE `endpointType` DISABLE KEYS */;
INSERT INTO `endpointType` VALUES (1,'ALARM_NOTIFICATION_URL','Participant callback URL to which alarm notifications can be sent',1,'2025-05-16 06:17:58'),(2,'ALARM_NOTIFICATION_TOPIC','Kafka topic used to publish alarm notifications',1,'2025-05-16 06:17:58'),(3,'FSPIOP_CALLBACK_URL_TRANSFER_POST','Participant callback URL to which transfer post can be sent',1,'2025-05-16 06:17:58'),(4,'FSPIOP_CALLBACK_URL_TRANSFER_PUT','Participant callback URL to which transfer put can be sent',1,'2025-05-16 06:17:58'),(5,'FSPIOP_CALLBACK_URL_TRANSFER_ERROR','Participant callback URL to which transfer error notifications can be sent',1,'2025-05-16 06:17:58'),(6,'FSPIOP_CALLBACK_URL_FX_QUOTES','Participant callback URL to which FX quote requests can be sent',1,'2025-05-16 06:17:58'),(7,'FSPIOP_CALLBACK_URL_FX_TRANSFER_POST','Participant callback URL to which FX transfer post can be sent',1,'2025-05-16 06:17:58'),(8,'FSPIOP_CALLBACK_URL_FX_TRANSFER_PUT','Participant callback URL to which FX transfer put can be sent',1,'2025-05-16 06:17:58'),(9,'FSPIOP_CALLBACK_URL_FX_TRANSFER_ERROR','Participant callback URL to which FX transfer error notifications can be sent',1,'2025-05-16 06:17:58'),(10,'NET_DEBIT_CAP_THRESHOLD_BREACH_EMAIL','Participant/Hub operator email address to which the net debit cap breach e-mail notification can be sent',1,'2025-05-16 06:17:58'),(11,'NET_DEBIT_CAP_ADJUSTMENT_EMAIL','Participant/Hub operator email address to which the net debit cap adjustment e-mail notification can be sent',1,'2025-05-16 06:17:58'),(12,'SETTLEMENT_TRANSFER_POSITION_CHANGE_EMAIL','Participant/Hub operator email address to which the position change due to settlement transfer e-mail notification can be sent',1,'2025-05-16 06:17:58'),(13,'FSPIOP_CALLBACK_URL_PARTICIPANT_PUT','Participant callback URL to which put participant information can be sent',1,'2025-05-16 06:17:58'),(14,'FSPIOP_CALLBACK_URL_PARTICIPANT_SUB_ID_PUT','Participant callback URL to which put participant information can be sent, when subId is specified',1,'2025-05-16 06:17:58'),(15,'FSPIOP_CALLBACK_URL_PARTICIPANT_PUT_ERROR','Participant callback URL to which put participant error information can be sent',1,'2025-05-16 06:17:58'),(16,'FSPIOP_CALLBACK_URL_PARTICIPANT_SUB_ID_PUT_ERROR','Participant callback URL to which put participant error information can be sent, when subId is specified',1,'2025-05-16 06:17:58'),(17,'FSPIOP_CALLBACK_URL_PARTICIPANT_DELETE','Participant callback URL to which delete participant information can be sent',1,'2025-05-16 06:17:58'),(18,'FSPIOP_CALLBACK_URL_PARTICIPANT_SUB_ID_DELETE','Participant callback URL to which delete participant information can be sent, when subId is specified',1,'2025-05-16 06:17:58'),(19,'FSPIOP_CALLBACK_URL_PARTICIPANT_BATCH_PUT','Participant callback URL to which put batch participant information can be sent',1,'2025-05-16 06:17:58'),(20,'FSPIOP_CALLBACK_URL_PARTICIPANT_BATCH_PUT_ERROR','Participant callback URL to which put batch participant error information can be sent',1,'2025-05-16 06:17:58'),(21,'FSPIOP_CALLBACK_URL_PARTIES_GET','Parties callback URL to which get parties information can be requested',1,'2025-05-16 06:17:58'),(22,'FSPIOP_CALLBACK_URL_PARTIES_SUB_ID_GET','Parties callback URL to which get parties information can be requested',1,'2025-05-16 06:17:58'),(23,'FSPIOP_CALLBACK_URL_PARTIES_PUT','Parties callback URL to which put parties information can be sent',1,'2025-05-16 06:17:58'),(24,'FSPIOP_CALLBACK_URL_PARTIES_SUB_ID_PUT','Parties callback URL to which put parties information can be sent when SubId is specified',1,'2025-05-16 06:17:58'),(25,'FSPIOP_CALLBACK_URL_PARTIES_PUT_ERROR','Parties callback URL to which put participant error information can be sent',1,'2025-05-16 06:17:58'),(26,'FSPIOP_CALLBACK_URL_PARTIES_SUB_ID_PUT_ERROR','Parties callback URL to which put parties error information can be sent when SubId is specified',1,'2025-05-16 06:17:58'),(27,'FSPIOP_CALLBACK_URL_QUOTES','Quotes callback URL to which put quotes requests can be sent',1,'2025-05-16 06:17:58'),(28,'FSPIOP_CALLBACK_URL_BULK_TRANSFER_POST','Participant callback URL to which bulk transfer post can be sent',1,'2025-05-16 06:17:58'),(29,'FSPIOP_CALLBACK_URL_BULK_TRANSFER_PUT','Participant callback URL to which bulk transfer put can be sent',1,'2025-05-16 06:17:58'),(30,'FSPIOP_CALLBACK_URL_BULK_TRANSFER_ERROR','Participant callback URL to which bulk transfer error notifications can be sent',1,'2025-05-16 06:17:58'),(31,'FSPIOP_CALLBACK_URL_AUTHORIZATIONS','Participant callback URL to which authorization requests can be sent',1,'2025-05-16 06:17:58'),(32,'FSPIOP_CALLBACK_URL_TRX_REQ_SERVICE','Participant callback URL to which transaction requests can be sent',1,'2025-05-16 06:17:58'),(33,'FSPIOP_CALLBACK_URL_BULK_QUOTES','Bulk Quotes callback URL to which put bulkQuotes requests can be sent',1,'2025-05-16 06:17:58'),(34,'TP_CB_URL_TRANSACTION_REQUEST_GET','Participant callback URL where GET /thirdpartyRequests/transactions/{ID} can be sent',1,'2025-05-16 06:17:58'),(35,'TP_CB_URL_TRANSACTION_REQUEST_POST','Participant callback URL where POST /thirdpartyRequests/transactions can be sent',1,'2025-05-16 06:17:58'),(36,'TP_CB_URL_TRANSACTION_REQUEST_PUT','Participant callback URL where PUT /thirdpartyRequests/transactions/{ID} can be sent',1,'2025-05-16 06:17:58'),(37,'TP_CB_URL_TRANSACTION_REQUEST_PUT_ERROR','Participant callback URL to which PUT /thirdpartyRequests/transactions/{ID}/error error information can be sent',1,'2025-05-16 06:17:58'),(38,'TP_CB_URL_TRANSACTION_REQUEST_PATCH','Participant callback URL where PATCH /thirdpartyRequests/transactions/{ID} can be sent',1,'2025-05-16 06:17:58'),(39,'TP_CB_URL_TRANSACTION_REQUEST_AUTH_POST','Participant callback URL where POST /thirdpartyRequests/transactions/{ID}/authorizations can be sent',1,'2025-05-16 06:17:58'),(40,'TP_CB_URL_TRANSACTION_REQUEST_AUTH_PUT','Participant callback URL where PUT /thirdpartyRequests/transactions/{ID}/authorizations can be sent',1,'2025-05-16 06:17:58'),(41,'TP_CB_URL_TRANSACTION_REQUEST_AUTH_PUT_ERROR','Participant callback URL where PUT /thirdpartyRequests/transactions/{ID}/authorizations/error error information can be sent',1,'2025-05-16 06:17:58'),(42,'TP_CB_URL_TRANSACTION_REQUEST_VERIFY_POST','Participant callback URL where POST /thirdpartyRequests/verifications can be sent',1,'2025-05-16 06:17:58'),(43,'TP_CB_URL_TRANSACTION_REQUEST_VERIFY_PUT','Participant callback URL where PUT /thirdpartyRequests/verifications/{ID} can be sent',1,'2025-05-16 06:17:58'),(44,'TP_CB_URL_TRANSACTION_REQUEST_VERIFY_PUT_ERROR','Participant callback URL where PUT /thirdpartyRequests/verifications/{ID}/error can be sent',1,'2025-05-16 06:17:58'),(45,'TP_CB_URL_CONSENT_REQUEST_POST','Participant callback URL where POST /consentRequests can be sent',1,'2025-05-16 06:17:58'),(46,'TP_CB_URL_CONSENT_REQUEST_PUT','Participant callback URL where PUT /consentRequests/{ID} can be sent',1,'2025-05-16 06:17:58'),(47,'TP_CB_URL_CONSENT_REQUEST_PUT_ERROR','Participant callback URL where PUT /consentRequests/{ID}/error error information can be sent',1,'2025-05-16 06:17:58'),(48,'TP_CB_URL_CONSENT_REQUEST_PATCH','Participant callback URL where PATCH /consentRequests/{ID} can be sent',1,'2025-05-16 06:17:58'),(49,'TP_CB_URL_CREATE_CREDENTIAL_POST','Participant callback URL where POST /consentRequests/{ID}/createCredential can be sent',1,'2025-05-16 06:17:58'),(50,'TP_CB_URL_CONSENT_POST','Participant callback URL where POST /consents/ can be sent',1,'2025-05-16 06:17:58'),(51,'TP_CB_URL_CONSENT_GET','Participant callback URL where GET /consents/{ID} can be sent',1,'2025-05-16 06:17:58'),(52,'TP_CB_URL_CONSENT_PUT','Participant callback URL where PUT /consents/{ID} can be sent',1,'2025-05-16 06:17:58'),(53,'TP_CB_URL_CONSENT_PATCH','Participant callback URL where PATCH /consents/{ID} can be sent',1,'2025-05-16 06:17:58'),(54,'TP_CB_URL_CONSENT_PUT_ERROR','Participant callback URL where PUT /consents/{ID}/error error information can be sent',1,'2025-05-16 06:17:58'),(55,'TP_CB_URL_CONSENT_GENERATE_CHALLENGE_POST','Participant callback URL where POST /consents/{ID}/generateChallenge can be sent',1,'2025-05-16 06:17:58'),(56,'TP_CB_URL_CONSENT_GENERATE_CHALLENGE_PUT_ERROR','Participant callback URL where PUT /consents/{ID}/generateChallenge/error error information can be sent',1,'2025-05-16 06:17:58'),(57,'TP_CB_URL_ACCOUNTS_GET','Accounts callback URL where GET /accounts/{ID} can be sent',1,'2025-05-16 06:17:58'),(58,'TP_CB_URL_ACCOUNTS_PUT','Accounts callback URL where PUT /accounts/{ID} can be sent',1,'2025-05-16 06:17:58'),(59,'TP_CB_URL_ACCOUNTS_PUT_ERROR','Accounts callback URL where PUT /accounts/{ID}/error error information can be sent',1,'2025-05-16 06:17:58'),(60,'TP_CB_URL_SERVICES_GET','Participant callback URL where GET /services/{ServiceType} can be sent',1,'2025-05-16 06:17:58'),(61,'TP_CB_URL_SERVICES_PUT','Participant callback URL where PUT /services/{ServiceType} can be sent',1,'2025-05-16 06:17:58'),(62,'TP_CB_URL_SERVICES_PUT_ERROR','Participant callback URL where PUT /services/{ServiceType}/error can be sent',1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxParticipantCurrencyType`
--

LOCK TABLES `fxParticipantCurrencyType` WRITE;
/*!40000 ALTER TABLE `fxParticipantCurrencyType` DISABLE KEYS */;
INSERT INTO `fxParticipantCurrencyType` VALUES (1,'SOURCE','The participant currency is the source of the currency conversion','2025-05-16 06:17:58'),(2,'TARGET','The participant currency is the target of the currency conversion','2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuote`
--

LOCK TABLES `fxQuote` WRITE;
/*!40000 ALTER TABLE `fxQuote` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteConversionTerms`
--

LOCK TABLES `fxQuoteConversionTerms` WRITE;
/*!40000 ALTER TABLE `fxQuoteConversionTerms` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteDuplicateCheck`
--

LOCK TABLES `fxQuoteDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxQuoteDuplicateCheck` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxQuoteError`
--

LOCK TABLES `fxQuoteError` WRITE;
/*!40000 ALTER TABLE `fxQuoteError` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  CONSTRAINT `fxtransfer_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransferDuplicateCheck` (`commitRequestId`),
  CONSTRAINT `fxtransfer_sourcecurrency_foreign` FOREIGN KEY (`sourceCurrency`) REFERENCES `currency` (`currencyId`),
  CONSTRAINT `fxtransfer_targetcurrency_foreign` FOREIGN KEY (`targetCurrency`) REFERENCES `currency` (`currencyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransfer`
--

LOCK TABLES `fxTransfer` WRITE;
/*!40000 ALTER TABLE `fxTransfer` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferDuplicateCheck`
--

LOCK TABLES `fxTransferDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxTransferDuplicateCheck` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferErrorDuplicateCheck`
--

LOCK TABLES `fxTransferErrorDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxTransferErrorDuplicateCheck` DISABLE KEYS */;
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
  KEY `fxtransferextension_commitrequestid_foreign` (`commitRequestId`),
  CONSTRAINT `fxtransferextension_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransfer` (`commitRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferFulfilment`
--

LOCK TABLES `fxTransferFulfilment` WRITE;
/*!40000 ALTER TABLE `fxTransferFulfilment` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferFulfilmentDuplicateCheck`
--

LOCK TABLES `fxTransferFulfilmentDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `fxTransferFulfilmentDuplicateCheck` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferParticipant`
--

LOCK TABLES `fxTransferParticipant` WRITE;
/*!40000 ALTER TABLE `fxTransferParticipant` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferStateChange`
--

LOCK TABLES `fxTransferStateChange` WRITE;
/*!40000 ALTER TABLE `fxTransferStateChange` DISABLE KEYS */;
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
  CONSTRAINT `fxtransfertimeout_commitrequestid_foreign` FOREIGN KEY (`commitRequestId`) REFERENCES `fxTransfer` (`commitRequestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxTransferType`
--

LOCK TABLES `fxTransferType` WRITE;
/*!40000 ALTER TABLE `fxTransferType` DISABLE KEYS */;
INSERT INTO `fxTransferType` VALUES (1,'PAYER_CONVERSION','Payer side currency conversion','2025-05-16 06:17:58'),(2,'PAYEE_CONVERSION','Payee side currency conversion','2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fxWatchList`
--

LOCK TABLES `fxWatchList` WRITE;
/*!40000 ALTER TABLE `fxWatchList` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geoCode`
--

LOCK TABLES `geoCode` WRITE;
/*!40000 ALTER TABLE `geoCode` DISABLE KEYS */;
INSERT INTO `geoCode` VALUES (1,2,'-90','30.553','2025-05-16 06:20:27'),(2,4,'90','180','2025-05-16 06:20:28');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilpPacket`
--

LOCK TABLES `ilpPacket` WRITE;
/*!40000 ALTER TABLE `ilpPacket` DISABLE KEYS */;
INSERT INTO `ilpPacket` VALUES ('ab1c283a-760e-4bdd-b2c0-6d84a409f339','AYIDHAAAAAAAAHViIWcuZ3JlZW5iYW5rZnNwLm1zaXNkbi4yNzcxMzgwMzkxMoIC7mV5SjBjbUZ1YzJGamRHbHZia2xrSWpvaVlXSXhZekk0TTJFdE56WXdaUzAwWW1Sa0xXSXlZekF0Tm1RNE5HRTBNRGxtTXpNNUlpd2ljWFZ2ZEdWSlpDSTZJalZpWlRFMVlqTmpMV1ZoTlRrdE5HTTJaUzA0TkRjd0xUYzBZV016TkdaalptSXdZeUlzSW5CaGVXVmxJanA3SW5CaGNuUjVTV1JKYm1adklqcDdJbkJoY25SNVNXUlVlWEJsSWpvaVRWTkpVMFJPSWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaU1qYzNNVE00TURNNU1USWlMQ0ptYzNCSlpDSTZJbWR5WldWdVltRnVhMlp6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUpOVTBsVFJFNGlMQ0p3WVhKMGVVbGtaVzUwYVdacFpYSWlPaUkwTkRFeU16UTFOamM0T1NJc0ltWnpjRWxrSWpvaWNHbHVhMkpoYm10bWMzQWlmU3dpY0dWeWMyOXVZV3hKYm1adklqcDdJbU52YlhCc1pYaE9ZVzFsSWpwN0ltWnBjbk4wVG1GdFpTSTZJa1pwY25OMGJtRnRaUzFVWlhOMElpd2liR0Z6ZEU1aGJXVWlPaUpNWVhOMGJtRnRaUzFVWlhOMEluMHNJbVJoZEdWUFprSnBjblJvSWpvaU1UazROQzB3TVMwd01TSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVFsZFFJaXdpWVcxdmRXNTBJam9pTXpBd0xqVWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanA3SW5OalpXNWhjbWx2SWpvaVZGSkJUbE5HUlZJaUxDSnBibWwwYVdGMGIzSWlPaUpRUVZsRlVpSXNJbWx1YVhScFlYUnZjbFI1Y0dVaU9pSkRUMDVUVlUxRlVpSjlmUQA','2025-05-16 06:20:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledgerAccountType`
--

LOCK TABLES `ledgerAccountType` WRITE;
/*!40000 ALTER TABLE `ledgerAccountType` DISABLE KEYS */;
INSERT INTO `ledgerAccountType` VALUES (1,'POSITION','Typical accounts from which a DFSP provisions transfers',1,'2025-05-16 06:17:58',1),(2,'SETTLEMENT','Reflects the individual DFSP Settlement Accounts as held at the Settlement Bank',1,'2025-05-16 06:17:58',0),(3,'HUB_RECONCILIATION','A single account for each currency with which the hub operates. The account is \"held\" by the Participant representing the hub in the switch',1,'2025-05-16 06:17:58',0),(4,'HUB_MULTILATERAL_SETTLEMENT','A single account for each currency with which the hub operates. The account is \"held\" by the Participant representing the hub in the switch',1,'2025-05-16 06:17:58',0),(5,'INTERCHANGE_FEE',NULL,1,'2025-05-16 06:17:58',1),(6,'INTERCHANGE_FEE_SETTLEMENT',NULL,1,'2025-05-16 06:17:58',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledgerEntryType`
--

LOCK TABLES `ledgerEntryType` WRITE;
/*!40000 ALTER TABLE `ledgerEntryType` DISABLE KEYS */;
INSERT INTO `ledgerEntryType` VALUES (1,'PRINCIPLE_VALUE','The principle amount to be settled between parties, derived on quotes between DFSPs',1,'2025-05-16 06:17:58',1),(2,'INTERCHANGE_FEE','Fees to be paid between DFSP',1,'2025-05-16 06:17:58',5),(3,'HUB_FEE','Fees to be paid from the DFSPs to the Hub Operator',1,'2025-05-16 06:17:58',NULL),(4,'POSITION_DEPOSIT','Used when increasing Net Debit Cap',1,'2025-05-16 06:17:58',NULL),(5,'POSITION_WITHDRAWAL','Used when decreasing Net Debit Cap',1,'2025-05-16 06:17:58',NULL),(6,'SETTLEMENT_NET_RECIPIENT','Participant is settlement net recipient',1,'2025-05-16 06:17:58',NULL),(7,'SETTLEMENT_NET_SENDER','Participant is settlement net sender',1,'2025-05-16 06:17:58',NULL),(8,'SETTLEMENT_NET_ZERO','Participant is settlement net sender',1,'2025-05-16 06:17:58',NULL),(9,'RECORD_FUNDS_IN','Settlement account funds in',1,'2025-05-16 06:17:58',NULL),(10,'RECORD_FUNDS_OUT','Settlement account funds out',1,'2025-05-16 06:17:58',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES (1,'100100_event.js',1,'2025-05-16 06:17:45'),(2,'110100_contactType.js',1,'2025-05-16 06:17:45'),(3,'110101_contactType-indexes.js',1,'2025-05-16 06:17:45'),(4,'110200_currency.js',1,'2025-05-16 06:17:45'),(5,'110201_currency-scale.js',1,'2025-05-16 06:17:45'),(6,'110300_endpointType.js',1,'2025-05-16 06:17:45'),(7,'110301_endpointType-indexes.js',1,'2025-05-16 06:17:45'),(8,'110400_ledgerEntryType.js',1,'2025-05-16 06:17:45'),(9,'110401_ledgerEntryType-indexes.js',1,'2025-05-16 06:17:45'),(10,'110450_ledgerAccountType.js',1,'2025-05-16 06:17:45'),(11,'110451_ledgerAccountType-indexes.js',1,'2025-05-16 06:17:45'),(12,'110500_participantLimitType.js',1,'2025-05-16 06:17:45'),(13,'110501_participantLimitType-indexes.js',1,'2025-05-16 06:17:45'),(14,'110600_transferParticipantRoleType.js',1,'2025-05-16 06:17:45'),(15,'110601_transferParticipantRoleType-indexes.js',1,'2025-05-16 06:17:45'),(16,'110700_transferState.js',1,'2025-05-16 06:17:45'),(17,'110800_settlementWindowState.js',1,'2025-05-16 06:17:45'),(18,'110900_settlementState.js',1,'2025-05-16 06:17:45'),(19,'111000_amountType.js',1,'2025-05-16 06:17:46'),(20,'111001_amountType-indexes.js',1,'2025-05-16 06:17:46'),(21,'111100_balanceOfPayments.js',1,'2025-05-16 06:17:46'),(22,'111101_balanceOfPayments-indexes.js',1,'2025-05-16 06:17:46'),(23,'111200_partyIdentifierType.js',1,'2025-05-16 06:17:46'),(24,'111201_partyIdentifierType-indexes.js',1,'2025-05-16 06:17:46'),(25,'111300_partyType.js',1,'2025-05-16 06:17:46'),(26,'111301_partyType-indexes.js',1,'2025-05-16 06:17:46'),(27,'111400_quoteDuplicateCheck.js',1,'2025-05-16 06:17:46'),(28,'111500_transactionInitiator.js',1,'2025-05-16 06:17:46'),(29,'111501_transactionInitiator-indexes.js',1,'2025-05-16 06:17:46'),(30,'111600_transactionInitiatorType.js',1,'2025-05-16 06:17:46'),(31,'111601_transactionInitiatorType-indexes.js',1,'2025-05-16 06:17:46'),(32,'111700_settlementDelay.js',1,'2025-05-16 06:17:46'),(33,'111701_settlementDelay-indexes.js',1,'2025-05-16 06:17:46'),(34,'111800_settlementInterchange.js',1,'2025-05-16 06:17:46'),(35,'111801_settlementInterchange-indexes.js',1,'2025-05-16 06:17:46'),(36,'111900_settlementGranularity.js',1,'2025-05-16 06:17:46'),(37,'111901_settlementGranularity-indexes.js',1,'2025-05-16 06:17:46'),(38,'112000_bulkTransferState.js',1,'2025-05-16 06:17:46'),(39,'112100_bulkProcessingState.js',1,'2025-05-16 06:17:46'),(40,'112101_bulkProcessingState-indexes.js',1,'2025-05-16 06:17:46'),(41,'200100_participant.js',1,'2025-05-16 06:17:46'),(42,'200101_participant-indexes.js',1,'2025-05-16 06:17:46'),(43,'200200_participantContact.js',1,'2025-05-16 06:17:46'),(44,'200201_participantContact-indexes.js',1,'2025-05-16 06:17:46'),(45,'200300_participantEndpoint.js',1,'2025-05-16 06:17:47'),(46,'200301_participantEndpoint-indexes.js',1,'2025-05-16 06:17:47'),(47,'200400_participantParty.js',1,'2025-05-16 06:17:47'),(48,'200401_participantParty-indexes.js',1,'2025-05-16 06:17:47'),(49,'200600_token.js',1,'2025-05-16 06:17:47'),(50,'200601_token-indexes.js',1,'2025-05-16 06:17:47'),(51,'300100_transferDuplicateCheck.js',1,'2025-05-16 06:17:47'),(52,'300150_bulkTransferDuplicateCheck.js',1,'2025-05-16 06:17:47'),(53,'300200_transfer.js',1,'2025-05-16 06:17:47'),(54,'300201_transfer-indexes.js',1,'2025-05-16 06:17:47'),(55,'300202_transfer-decimal184.js',1,'2025-05-16 06:17:47'),(56,'300250_bulkTransfer.js',1,'2025-05-16 06:17:47'),(57,'300251_bulkTransfer-indexes.js',1,'2025-05-16 06:17:47'),(58,'300275_bulkTransferAssociation.js',1,'2025-05-16 06:17:47'),(59,'300276_bulkTransferAssociation-indexes.js',1,'2025-05-16 06:17:47'),(60,'300300_ilpPacket.js',1,'2025-05-16 06:17:47'),(61,'300400_transferStateChange.js',1,'2025-05-16 06:17:47'),(62,'300401_transferStateChange-indexes.js',1,'2025-05-16 06:17:47'),(63,'300450_bulkTransferStateChange.js',1,'2025-05-16 06:17:47'),(64,'300451_bulkTransferStateChange-indexes.js',1,'2025-05-16 06:17:47'),(65,'300500_segment.js',1,'2025-05-16 06:17:48'),(66,'300501_segment-indexes.js',1,'2025-05-16 06:17:48'),(67,'310100_participantCurrency.js',1,'2025-05-16 06:17:48'),(68,'310101_participantCurrency-indexes.js',1,'2025-05-16 06:17:48'),(69,'310200_transferParticipant.js',1,'2025-05-16 06:17:48'),(70,'310201_transferParticipant-indexes.js',1,'2025-05-16 06:17:48'),(71,'310202_transferParticipant-decimal184.js',1,'2025-05-16 06:17:48'),(72,'310203_transferParticipant-indexes.js',1,'2025-05-16 06:17:48'),(73,'310204_transferParticipant-participantId.js',1,'2025-05-16 06:17:48'),(74,'310300_participantPosition.js',1,'2025-05-16 06:17:48'),(75,'310301_participantPosition-indexes.js',1,'2025-05-16 06:17:48'),(76,'310302_participantPosition-decimal184.js',1,'2025-05-16 06:17:48'),(77,'310400_participantPositionChange.js',1,'2025-05-16 06:17:48'),(78,'310401_participantPositionChange-indexes.js',1,'2025-05-16 06:17:48'),(79,'310402_participantPositionChange-decimal184.js',1,'2025-05-16 06:17:48'),(80,'310403_participantPositionChange-participantCurrencyId.js',1,'2025-05-16 06:17:49'),(81,'310404_participantPositionChange-change.js',1,'2025-05-16 06:17:49'),(82,'310500_participantLimit.js',1,'2025-05-16 06:17:49'),(83,'310501_participantLimit-indexes.js',1,'2025-05-16 06:17:49'),(84,'310502_participantLimit-decimal184.js',1,'2025-05-16 06:17:49'),(85,'310503_participantLimit-indexes-composite.js',1,'2025-05-16 06:17:49'),(86,'400100_settlementWindow.js',1,'2025-05-16 06:17:49'),(87,'400200_settlement.js',1,'2025-05-16 06:17:49'),(88,'400300_settlementSettlementWindow.js',1,'2025-05-16 06:17:49'),(89,'400301_settlementSettlementWindow-indexes.js',1,'2025-05-16 06:17:49'),(90,'400400_settlementWindowStateChange.js',1,'2025-05-16 06:17:49'),(91,'400401_settlmentWindowStateChange-indexes.js',1,'2025-05-16 06:17:49'),(92,'400500_settlementTransferParticipant.js',1,'2025-05-16 06:17:50'),(93,'400501_settlementTransferParticipant-indexes.js',1,'2025-05-16 06:17:50'),(94,'400502_settlementTransferParticipant-decimal184.js',1,'2025-05-16 06:17:50'),(95,'400600_settlementParticipantCurrency.js',1,'2025-05-16 06:17:50'),(96,'400601_settlementParticipantCurrency-indexes.js',1,'2025-05-16 06:17:50'),(97,'400602_settlementParticipantCurrency-decimal184.js',1,'2025-05-16 06:17:50'),(98,'400700_settlementParticipantCurrencyStateChange.js',1,'2025-05-16 06:17:50'),(99,'400701_settlementParticipantCurrencyStateChange-indexes.js',1,'2025-05-16 06:17:50'),(100,'400800_settlementStateChange.js',1,'2025-05-16 06:17:50'),(101,'400801_settlementStateChange-indexes.js',1,'2025-05-16 06:17:50'),(102,'400900_settlementWindowContent.js',1,'2025-05-16 06:17:50'),(103,'401000_settlementWindowContentStateChange.js',1,'2025-05-16 06:17:51'),(104,'401001_settlementWindowContentStateChange-indexes.js',1,'2025-05-16 06:17:51'),(105,'401002_settlementWindowContent-indexes.js',1,'2025-05-16 06:17:51'),(106,'401200_settlementContentAggregation.js',1,'2025-05-16 06:17:51'),(107,'401201_settlementContentAggregation-indexes.js',1,'2025-05-16 06:17:51'),(108,'401300_settlementModel.js',1,'2025-05-16 06:17:51'),(109,'401301_settlementModel-indexes.js',1,'2025-05-16 06:17:52'),(110,'410100_transferFulfilmentDuplicateCheck.js',1,'2025-05-16 06:17:52'),(111,'410101_transferFulfilmentDuplicateCheck-indexes.js',1,'2025-05-16 06:17:52'),(112,'410102_transferFulfilmentDuplicateCheck-dropForeignTransferId.js',1,'2025-05-16 06:17:52'),(113,'410103_transferFulfilmentDuplicateCheck-hashNullable.js',1,'2025-05-16 06:17:52'),(114,'410200_transferFulfilment.js',1,'2025-05-16 06:17:52'),(115,'410201_transferFulfilment-indexes.js',1,'2025-05-16 06:17:52'),(116,'410202_transferFulfilment-ilpFulfilment.js',1,'2025-05-16 06:17:52'),(117,'410203_transferFulfilment-foreignTransferFulfilmentId.js',1,'2025-05-16 06:17:52'),(118,'410240_bulkTransferFulfilmentDuplicateCheck.js',1,'2025-05-16 06:17:52'),(119,'410250_bulkTransferFulfilment.js',1,'2025-05-16 06:17:52'),(120,'410300_transferExtension.js',1,'2025-05-16 06:17:52'),(121,'410301_transferExtension-indexes.js',1,'2025-05-16 06:17:52'),(122,'410302_transferExtension-transferErrorId.js',1,'2025-05-16 06:17:52'),(123,'410350_bulkTransferExtension.js',1,'2025-05-16 06:17:52'),(124,'410351_bulkTransferExtension-indexes.js',1,'2025-05-16 06:17:52'),(125,'410400_transferTimeout.js',1,'2025-05-16 06:17:52'),(126,'410401_transferTimeout-indexes.js',1,'2025-05-16 06:17:52'),(127,'410450_transferErrorDuplicateCheck.js',1,'2025-05-16 06:17:52'),(128,'410500_transferError.js',1,'2025-05-16 06:17:52'),(129,'410501_transferError-indexes.js',1,'2025-05-16 06:17:52'),(130,'410502_transferError-foreignTransferErrorDuplicateCheckId.js',1,'2025-05-16 06:17:53'),(131,'410550_bulkTransferError.js',1,'2025-05-16 06:17:53'),(132,'410551_bulkTransferError-indexes.js',1,'2025-05-16 06:17:53'),(133,'410600_expiringTransfer.js',1,'2025-05-16 06:17:53'),(134,'410601_expiringTransfer-indexes.js',1,'2025-05-16 06:17:53'),(135,'500100_transactionReference.js',1,'2025-05-16 06:17:53'),(136,'500101_transactionReference-indexes.js',1,'2025-05-16 06:17:53'),(137,'500200_transactionScenario.js',1,'2025-05-16 06:17:53'),(138,'500201_transactionScenario-indexes.js',1,'2025-05-16 06:17:53'),(139,'500300_transactionSubScenario.js',1,'2025-05-16 06:17:53'),(140,'500400_quote.js',1,'2025-05-16 06:17:53'),(141,'500401_quote-hotfix-2719.js',1,'2025-05-16 06:17:53'),(142,'500500_quoteParty.js',1,'2025-05-16 06:17:54'),(143,'500501_feature-fixSubIdRef.js',1,'2025-05-16 06:17:54'),(144,'500600_party.js',1,'2025-05-16 06:17:54'),(145,'500601_party-2480.js',1,'2025-05-16 06:17:54'),(146,'500700_quoteResponse.js',1,'2025-05-16 06:17:54'),(147,'500800_quoteResponseIlpPacket.js',1,'2025-05-16 06:17:54'),(148,'500900_geoCode.js',1,'2025-05-16 06:17:54'),(149,'501000_quoteExtension.js',1,'2025-05-16 06:17:54'),(150,'501001_quoteExtension-quote-service-174.js',1,'2025-05-16 06:17:54'),(151,'501002_quoteExtension-2522.js',1,'2025-05-16 06:17:54'),(152,'501100_quoteResponseDuplicateCheck.js',1,'2025-05-16 06:17:55'),(153,'501200_quoteError.js',1,'2025-05-16 06:17:55'),(154,'501300_transferRules.js',1,'2025-05-16 06:17:55'),(155,'600010_fxTransferType.js',1,'2025-05-16 06:17:55'),(156,'600011_fxTransferType-indexes.js',1,'2025-05-16 06:17:55'),(157,'600012_fxParticipantCurrencyType.js',1,'2025-05-16 06:17:55'),(158,'600013_fxParticipantCurrencyType-indexes.js',1,'2025-05-16 06:17:55'),(159,'600100_fxTransferDuplicateCheck.js',1,'2025-05-16 06:17:55'),(160,'600110_fxTransferErrorDuplicateCheck.js.js',1,'2025-05-16 06:17:55'),(161,'600200_fxTransfer.js',1,'2025-05-16 06:17:55'),(162,'600201_fxTransfer-indexes.js',1,'2025-05-16 06:17:55'),(163,'600400_fxTransferStateChange.js',1,'2025-05-16 06:17:55'),(164,'600401_fxTransferStateChange-indexes.js',1,'2025-05-16 06:17:55'),(165,'600501_fxWatchList.js',1,'2025-05-16 06:17:55'),(166,'600502_fxWatchList-indexes.js',1,'2025-05-16 06:17:55'),(167,'600600_fxTransferFulfilmentDuplicateCheck.js',1,'2025-05-16 06:17:55'),(168,'600601_fxTransferFulfilmentDuplicateCheck-indexes.js',1,'2025-05-16 06:17:55'),(169,'600700_fxTransferFulfilment.js',1,'2025-05-16 06:17:55'),(170,'600701_fxTransferFulfilment-indexes.js',1,'2025-05-16 06:17:55'),(171,'600800_fxTransferExtension.js',1,'2025-05-16 06:17:55'),(172,'601400_fxTransferTimeout.js',1,'2025-05-16 06:17:55'),(173,'601401_fxTransferTimeout-indexes.js',1,'2025-05-16 06:17:56'),(174,'601500_fxTransferError.js',1,'2025-05-16 06:17:56'),(175,'601501_fxTransferError-indexes.js',1,'2025-05-16 06:17:56'),(176,'610200_fxTransferParticipant.js',1,'2025-05-16 06:17:56'),(177,'610201_fxTransferParticipant-indexes.js',1,'2025-05-16 06:17:56'),(178,'610202_fxTransferParticipant-participantId.js',1,'2025-05-16 06:17:56'),(179,'610403_participantPositionChange-fxTransfer.js',1,'2025-05-16 06:17:56'),(180,'800100_quotePartyView.js',1,'2025-05-16 06:17:56'),(181,'800101_feature-fixSubIdRef.js',1,'2025-05-16 06:17:56'),(182,'800200_quoteView.js',1,'2025-05-16 06:17:56'),(183,'800300_quoteResponseView.js',1,'2025-05-16 06:17:56'),(184,'900100_foreign-keys.js',1,'2025-05-16 06:17:56'),(185,'900101_foreign-keys.js',1,'2025-05-16 06:17:56'),(186,'910100_feature904DDL.js',1,'2025-05-16 06:17:57'),(187,'910101_feature904DataMigration.js',1,'2025-05-16 06:17:57'),(188,'910102_feature949DataMigration.js',1,'2025-05-16 06:17:57'),(189,'910102_hotfix954.js',1,'2025-05-16 06:17:57'),(190,'910103_feature1093SettlementByCurrency.js',1,'2025-05-16 06:17:57'),(191,'940100_quotePartyIdInfoExtension.js',1,'2025-05-16 06:17:57'),(192,'940101_quotePartyIdInfoExtension-2522.js',1,'2025-05-16 06:17:57'),(193,'950100_settlementContentAggregation-decimal184.js',1,'2025-05-16 06:17:57'),(194,'950101_transferParticipantStateChange.js',1,'2025-05-16 06:17:57'),(195,'950102_settlementModel-adjustPosition.js',1,'2025-05-16 06:17:57'),(196,'950103_dropTransferParticipantStateChange.js',1,'2025-05-16 06:17:57'),(197,'950104_settlementModel-settlementAccountTypeId.js',1,'2025-05-16 06:17:57'),(198,'950106_unique_settlement_model_ledger_account_currency.js',1,'2025-05-16 06:17:57'),(199,'950107_settlementWindowContent_foreign_settlementModel.js',1,'2025-05-16 06:17:57'),(200,'950108_participantProxy.js',1,'2025-05-16 06:17:57'),(201,'950109_fxQuote.js',1,'2025-05-16 06:17:57'),(202,'950110_fxQuoteResponse.js',1,'2025-05-16 06:17:57'),(203,'950111_fxQuoteError.js',1,'2025-05-16 06:17:57'),(204,'950113_fxQuoteDuplicateCheck.js',1,'2025-05-16 06:17:57'),(205,'950114_fxQuoteResponseDuplicateCheck.js',1,'2025-05-16 06:17:57'),(206,'950115_fxQuoteConversionTerms.js',1,'2025-05-16 06:17:58'),(207,'950116_fxQuoteConversionTermsExtension.js',1,'2025-05-16 06:17:58'),(208,'950117_fxQuoteResponseConversionTerms.js',1,'2025-05-16 06:17:58'),(209,'950118_fxQuoteResponseConversionTermsExtension.js',1,'2025-05-16 06:17:58'),(210,'950119_fxCharge.js',1,'2025-05-16 06:17:58'),(211,'960100_create_externalParticipant.js',1,'2025-05-16 06:17:58'),(212,'960110_alter_transferParticipant__addFiled_externalParticipantId.js',1,'2025-05-16 06:17:58'),(213,'960111_alter_fxTransferParticipant__addFiled_externalParticipantId.js',1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (1,'Hub','Hub Operator',1,'2025-05-16 06:17:58','seeds',0),(2,'greenbankfsp',NULL,1,'2025-05-16 06:18:35','unknown',0),(3,'pinkbankfsp',NULL,1,'2025-05-16 06:18:44','unknown',0),(4,'testfxp1',NULL,1,'2025-05-16 06:18:56','unknown',0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantCurrency`
--

LOCK TABLES `participantCurrency` WRITE;
/*!40000 ALTER TABLE `participantCurrency` DISABLE KEYS */;
INSERT INTO `participantCurrency` VALUES (1,1,'BWP',4,1,'2025-05-16 06:18:30','unknown'),(2,1,'BWP',3,1,'2025-05-16 06:18:30','unknown'),(3,1,'TZS',4,1,'2025-05-16 06:18:31','unknown'),(4,1,'TZS',3,1,'2025-05-16 06:18:32','unknown'),(5,1,'INR',4,1,'2025-05-16 06:18:32','unknown'),(6,1,'INR',3,1,'2025-05-16 06:18:32','unknown'),(7,2,'BWP',1,1,'2025-05-16 06:18:35','unknown'),(8,2,'BWP',2,1,'2025-05-16 06:18:35','unknown'),(9,2,'TZS',1,1,'2025-05-16 06:18:42','unknown'),(10,2,'TZS',2,1,'2025-05-16 06:18:42','unknown'),(11,2,'INR',1,1,'2025-05-16 06:18:42','unknown'),(12,2,'INR',2,1,'2025-05-16 06:18:42','unknown'),(13,2,'INR',5,1,'2025-05-16 06:18:42','unknown'),(14,2,'INR',6,1,'2025-05-16 06:18:42','unknown'),(15,3,'BWP',1,1,'2025-05-16 06:18:44','unknown'),(16,3,'BWP',2,1,'2025-05-16 06:18:44','unknown'),(17,3,'TZS',1,1,'2025-05-16 06:18:51','unknown'),(18,3,'TZS',2,1,'2025-05-16 06:18:51','unknown'),(19,3,'INR',1,1,'2025-05-16 06:18:52','unknown'),(20,3,'INR',2,1,'2025-05-16 06:18:52','unknown'),(21,3,'INR',5,1,'2025-05-16 06:18:52','unknown'),(22,3,'INR',6,1,'2025-05-16 06:18:52','unknown'),(23,4,'BWP',2,1,'2025-05-16 06:18:56','unknown'),(24,4,'BWP',1,1,'2025-05-16 06:18:56','unknown'),(25,4,'TZS',1,1,'2025-05-16 06:19:03','unknown'),(26,4,'TZS',2,1,'2025-05-16 06:19:03','unknown'),(27,4,'INR',1,1,'2025-05-16 06:19:03','unknown'),(28,4,'INR',2,1,'2025-05-16 06:19:03','unknown'),(29,4,'INR',5,1,'2025-05-16 06:19:03','unknown'),(30,4,'INR',6,1,'2025-05-16 06:19:03','unknown');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantEndpoint`
--

LOCK TABLES `participantEndpoint` WRITE;
/*!40000 ALTER TABLE `participantEndpoint` DISABLE KEYS */;
INSERT INTO `participantEndpoint` VALUES (1,1,12,'some.email@gmail.com',1,'2025-05-16 06:18:30','unknown'),(2,1,11,'some.email@gmail.com',1,'2025-05-16 06:18:30','unknown'),(3,1,10,'some.email@gmail.com',1,'2025-05-16 06:18:30','unknown'),(4,2,13,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-16 06:18:36','unknown'),(5,2,15,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-16 06:18:36','unknown'),(6,2,21,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-16 06:18:36','unknown'),(7,2,23,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-16 06:18:36','unknown'),(8,2,6,'http://mojaloop-testing-toolkit:4040',1,'2025-05-16 06:18:37','unknown'),(9,2,3,'http://mojaloop-testing-toolkit:4040/transfers',1,'2025-05-16 06:18:37','unknown'),(10,2,4,'http://mojaloop-testing-toolkit:4040/transfers/{{transferId}}',1,'2025-05-16 06:18:37','unknown'),(11,2,5,'http://mojaloop-testing-toolkit:4040/transfers/{{transferId}}/error',1,'2025-05-16 06:18:38','unknown'),(12,2,14,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:38','unknown'),(13,2,16,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-16 06:18:38','unknown'),(14,2,18,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:38','unknown'),(15,2,22,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:39','unknown'),(16,2,24,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:39','unknown'),(17,2,26,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-16 06:18:39','unknown'),(18,2,32,'http://mojaloop-testing-toolkit:4040',1,'2025-05-16 06:18:39','unknown'),(19,2,11,'{$inputs.email}',1,'2025-05-16 06:18:39','unknown'),(20,2,12,'{$inputs.email}',1,'2025-05-16 06:18:40','unknown'),(21,2,10,'{$inputs.email}',1,'2025-05-16 06:18:40','unknown'),(22,2,28,'http://mojaloop-testing-toolkit:4040/bulkTransfers',1,'2025-05-16 06:18:40','unknown'),(23,2,29,'http://mojaloop-testing-toolkit:4040/bulkTransfers/{{id}}',1,'2025-05-16 06:18:40','unknown'),(24,2,30,'http://mojaloop-testing-toolkit:4040/bulkTransfers/{{id}}/error',1,'2025-05-16 06:18:41','unknown'),(25,2,19,'http://mojaloop-testing-toolkit:4040/participants/{{requestId}}',1,'2025-05-16 06:18:41','unknown'),(26,2,20,'http://mojaloop-testing-toolkit:4040/participants/{{requestId}}/error',1,'2025-05-16 06:18:41','unknown'),(27,2,25,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-16 06:18:41','unknown'),(28,2,27,'http://mojaloop-testing-toolkit:4040',1,'2025-05-16 06:18:43','unknown'),(29,2,7,'http://mojaloop-testing-toolkit:4040/fxTransfers',1,'2025-05-16 06:18:43','unknown'),(30,2,8,'http://mojaloop-testing-toolkit:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-16 06:18:43','unknown'),(31,2,9,'http://mojaloop-testing-toolkit:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-16 06:18:44','unknown'),(32,3,13,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-16 06:18:44','unknown'),(33,3,15,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-16 06:18:45','unknown'),(34,3,21,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-16 06:18:45','unknown'),(35,3,23,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-16 06:18:45','unknown'),(36,3,27,'http://mojaloop-testing-toolkit:4040',1,'2025-05-16 06:18:46','unknown'),(37,3,3,'http://mojaloop-testing-toolkit:4040/transfers',1,'2025-05-16 06:18:46','unknown'),(38,3,4,'http://mojaloop-testing-toolkit:4040/transfers/{{transferId}}',1,'2025-05-16 06:18:46','unknown'),(39,3,5,'http://mojaloop-testing-toolkit:4040/transfers/{{transferId}}/error',1,'2025-05-16 06:18:46','unknown'),(40,3,14,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:47','unknown'),(41,3,16,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-16 06:18:47','unknown'),(42,3,18,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:47','unknown'),(43,3,22,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:47','unknown'),(44,3,24,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:48','unknown'),(45,3,26,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-16 06:18:48','unknown'),(46,3,32,'http://mojaloop-testing-toolkit:4040',1,'2025-05-16 06:18:48','unknown'),(47,3,11,'{$inputs.email}',1,'2025-05-16 06:18:49','unknown'),(48,3,12,'{$inputs.email}',1,'2025-05-16 06:18:49','unknown'),(49,3,10,'{$inputs.email}',1,'2025-05-16 06:18:49','unknown'),(50,3,28,'http://mojaloop-testing-toolkit:4040/bulkTransfers',1,'2025-05-16 06:18:49','unknown'),(51,3,29,'http://mojaloop-testing-toolkit:4040/bulkTransfers/{{id}}',1,'2025-05-16 06:18:50','unknown'),(52,3,30,'http://mojaloop-testing-toolkit:4040/bulkTransfers/{{id}}/error',1,'2025-05-16 06:18:50','unknown'),(53,3,19,'http://mojaloop-testing-toolkit:4040/participants/{{requestId}}',1,'2025-05-16 06:18:50','unknown'),(54,3,20,'http://mojaloop-testing-toolkit:4040/participants/{{requestId}}/error',1,'2025-05-16 06:18:50','unknown'),(55,3,25,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-16 06:18:51','unknown'),(56,3,6,'http://mojaloop-testing-toolkit:4040',1,'2025-05-16 06:18:52','unknown'),(57,3,7,'http://mojaloop-testing-toolkit:4040/fxTransfers',1,'2025-05-16 06:18:52','unknown'),(58,3,8,'http://mojaloop-testing-toolkit:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-16 06:18:53','unknown'),(59,3,9,'http://mojaloop-testing-toolkit:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-16 06:18:53','unknown'),(60,4,13,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-16 06:18:57','unknown'),(61,4,15,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-16 06:18:57','unknown'),(62,4,21,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-16 06:18:57','unknown'),(63,4,23,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}',1,'2025-05-16 06:18:57','unknown'),(64,4,27,'http://mojaloop-testing-toolkit:4040',0,'2025-05-16 06:18:58','unknown'),(65,4,3,'http://mojaloop-testing-toolkit:4040/transfers',1,'2025-05-16 06:18:58','unknown'),(66,4,4,'http://mojaloop-testing-toolkit:4040/transfers/{{transferId}}',1,'2025-05-16 06:18:58','unknown'),(67,4,5,'http://mojaloop-testing-toolkit:4040/transfers/{{transferId}}/error',1,'2025-05-16 06:18:58','unknown'),(68,4,14,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:59','unknown'),(69,4,16,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-16 06:18:59','unknown'),(70,4,18,'http://mojaloop-testing-toolkit:4040/participants/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:59','unknown'),(71,4,22,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:18:59','unknown'),(72,4,24,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}',1,'2025-05-16 06:19:00','unknown'),(73,4,26,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/{{partySubIdOrType}}/error',1,'2025-05-16 06:19:00','unknown'),(74,4,32,'http://mojaloop-testing-toolkit:4040',1,'2025-05-16 06:19:00','unknown'),(75,4,11,'{$inputs.email}',1,'2025-05-16 06:19:00','unknown'),(76,4,12,'{$inputs.email}',1,'2025-05-16 06:19:01','unknown'),(77,4,10,'{$inputs.email}',1,'2025-05-16 06:19:01','unknown'),(78,4,28,'http://mojaloop-testing-toolkit:4040/bulkTransfers',1,'2025-05-16 06:19:01','unknown'),(79,4,29,'http://mojaloop-testing-toolkit:4040/bulkTransfers/{{id}}',1,'2025-05-16 06:19:01','unknown'),(80,4,30,'http://mojaloop-testing-toolkit:4040/bulkTransfers/{{id}}/error',1,'2025-05-16 06:19:02','unknown'),(81,4,19,'http://mojaloop-testing-toolkit:4040/participants/{{requestId}}',1,'2025-05-16 06:19:02','unknown'),(82,4,20,'http://mojaloop-testing-toolkit:4040/participants/{{requestId}}/error',1,'2025-05-16 06:19:02','unknown'),(83,4,25,'http://mojaloop-testing-toolkit:4040/parties/{{partyIdType}}/{{partyIdentifier}}/error',1,'2025-05-16 06:19:03','unknown'),(84,4,27,'http://mojaloop-testing-toolkit:4040',1,'2025-05-16 06:19:04','unknown'),(85,4,7,'http://mojaloop-testing-toolkit:4040/fxTransfers',1,'2025-05-16 06:19:05','unknown'),(86,4,8,'http://mojaloop-testing-toolkit:4040/fxTransfers/{{commitRequestId}}',1,'2025-05-16 06:19:05','unknown'),(87,4,9,'http://mojaloop-testing-toolkit:4040/fxTransfers/{{commitRequestId}}/error',1,'2025-05-16 06:19:05','unknown'),(88,4,6,'http://mojaloop-testing-toolkit:4040',1,'2025-05-16 06:19:05','unknown');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantLimit`
--

LOCK TABLES `participantLimit` WRITE;
/*!40000 ALTER TABLE `participantLimit` DISABLE KEYS */;
INSERT INTO `participantLimit` VALUES (1,7,1,1000000.0000,10.00,NULL,1,'2025-05-16 06:18:35','unknown'),(2,9,1,1000000.0000,10.00,NULL,1,'2025-05-16 06:18:42','unknown'),(3,11,1,1000000.0000,10.00,NULL,1,'2025-05-16 06:18:43','unknown'),(4,15,1,1000000.0000,10.00,NULL,1,'2025-05-16 06:18:44','unknown'),(5,17,1,1000000.0000,10.00,NULL,1,'2025-05-16 06:18:51','unknown'),(6,19,1,1000000.0000,10.00,NULL,1,'2025-05-16 06:18:52','unknown'),(7,24,1,1000000.0000,10.00,NULL,1,'2025-05-16 06:18:56','unknown'),(8,25,1,1000000.0000,10.00,NULL,1,'2025-05-16 06:19:03','unknown'),(9,27,1,1000000.0000,10.00,NULL,1,'2025-05-16 06:19:04','unknown');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantLimitType`
--

LOCK TABLES `participantLimitType` WRITE;
/*!40000 ALTER TABLE `participantLimitType` DISABLE KEYS */;
INSERT INTO `participantLimitType` VALUES (1,'NET_DEBIT_CAP',NULL,1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantPosition`
--

LOCK TABLES `participantPosition` WRITE;
/*!40000 ALTER TABLE `participantPosition` DISABLE KEYS */;
INSERT INTO `participantPosition` VALUES (1,1,0.0000,0.0000,'2025-05-16 06:18:29'),(2,2,10000000.0000,0.0000,'2025-05-16 06:19:06'),(3,3,0.0000,0.0000,'2025-05-16 06:18:31'),(4,4,10000000.0000,0.0000,'2025-05-16 06:19:08'),(5,5,0.0000,0.0000,'2025-05-16 06:18:31'),(6,6,0.0000,0.0000,'2025-05-16 06:18:32'),(7,7,-300.5000,0.0000,'2025-05-16 06:20:33'),(8,8,0.0000,0.0000,'2025-05-16 06:18:35'),(9,9,0.0000,0.0000,'2025-05-16 06:18:42'),(10,10,0.0000,0.0000,'2025-05-16 06:18:42'),(11,11,0.0000,0.0000,'2025-05-16 06:18:43'),(12,12,0.0000,0.0000,'2025-05-16 06:18:43'),(13,13,0.0000,0.0000,'2025-05-16 06:18:43'),(14,14,0.0000,0.0000,'2025-05-16 06:18:43'),(15,15,300.5000,0.0000,'2025-05-16 06:20:32'),(16,16,-5000000.0000,0.0000,'2025-05-16 06:18:55'),(17,17,0.0000,0.0000,'2025-05-16 06:18:51'),(18,18,-5000000.0000,0.0000,'2025-05-16 06:18:56'),(19,19,0.0000,0.0000,'2025-05-16 06:18:52'),(20,20,0.0000,0.0000,'2025-05-16 06:18:52'),(21,21,0.0000,0.0000,'2025-05-16 06:18:52'),(22,22,0.0000,0.0000,'2025-05-16 06:18:52'),(23,24,0.0000,0.0000,'2025-05-16 06:18:56'),(24,23,-5000000.0000,0.0000,'2025-05-16 06:19:06'),(25,25,0.0000,0.0000,'2025-05-16 06:19:03'),(26,26,-5000000.0000,0.0000,'2025-05-16 06:19:08'),(27,27,0.0000,0.0000,'2025-05-16 06:19:04'),(28,28,0.0000,0.0000,'2025-05-16 06:19:04'),(29,29,0.0000,0.0000,'2025-05-16 06:19:04'),(30,30,0.0000,0.0000,'2025-05-16 06:19:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantPositionChange`
--

LOCK TABLES `participantPositionChange` WRITE;
/*!40000 ALTER TABLE `participantPositionChange` DISABLE KEYS */;
INSERT INTO `participantPositionChange` VALUES (1,2,2,5000000.0000,0.0000,'2025-05-16 06:18:55',2,5000000.00,NULL),(2,16,4,-5000000.0000,0.0000,'2025-05-16 06:18:55',16,-5000000.00,NULL),(3,4,6,5000000.0000,0.0000,'2025-05-16 06:18:56',4,5000000.00,NULL),(4,18,8,-5000000.0000,0.0000,'2025-05-16 06:18:56',18,-5000000.00,NULL),(5,2,10,10000000.0000,0.0000,'2025-05-16 06:19:06',2,5000000.00,NULL),(6,24,12,-5000000.0000,0.0000,'2025-05-16 06:19:06',23,-5000000.00,NULL),(7,4,14,10000000.0000,0.0000,'2025-05-16 06:19:08',4,5000000.00,NULL),(8,26,16,-5000000.0000,0.0000,'2025-05-16 06:19:08',26,-5000000.00,NULL),(9,15,18,300.5000,0.0000,'2025-05-16 06:20:31',15,300.50,NULL),(10,7,20,-300.5000,0.0000,'2025-05-16 06:20:33',7,-300.50,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Optional pers. data provided during Quote Request & Response';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` VALUES (1,1,'Firstname-Test',NULL,'Lastname-Test','1984-01-01 00:00:00'),(2,3,'Firstname-Test',NULL,'Lastname-Test','1984-01-01 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote`
--

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
INSERT INTO `quote` VALUES ('5be15b3c-ea59-4c6e-8470-74ac34fcfb0c','ab1c283a-760e-4bdd-b2c0-6d84a409f339','95e92ddd-6dea-4088-bf87-da1988619cfa','test',NULL,1,1,1,NULL,NULL,2,300.0000,'BWP','2025-05-16 06:20:27'),('a8a94955-50cb-451b-831c-b9b3c7381ad0','1f960be3-e986-4500-8971-bd899570dae3','e729a1f6-a17c-4380-ad7e-a775eea7cf0b','test',NULL,1,1,1,NULL,NULL,2,300.0000,'BWP','2025-05-16 06:20:16');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteDuplicateCheck`
--

LOCK TABLES `quoteDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `quoteDuplicateCheck` DISABLE KEYS */;
INSERT INTO `quoteDuplicateCheck` VALUES ('5be15b3c-ea59-4c6e-8470-74ac34fcfb0c','bba40e9f1f54479d4e33026c4f4e0332c707f3d5de384f2ed47eae244de83766','2025-05-16 06:20:27'),('a8a94955-50cb-451b-831c-b9b3c7381ad0','5d96242fd5fff522d5d79878ebb6ca155a1b77f4ce7391b9ef453e0dc650216b','2025-05-16 06:20:16');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteParty`
--

LOCK TABLES `quoteParty` WRITE;
/*!40000 ALTER TABLE `quoteParty` DISABLE KEYS */;
INSERT INTO `quoteParty` VALUES (1,'a8a94955-50cb-451b-831c-b9b3c7381ad0',1,1,'44123456789',NULL,'pinkbankfsp',3,NULL,NULL,1,1,300.0000,'BWP','2025-05-16 06:20:16'),(2,'a8a94955-50cb-451b-831c-b9b3c7381ad0',2,1,'27713803912',NULL,'greenbankfsp',2,NULL,NULL,2,1,-300.0000,'BWP','2025-05-16 06:20:16'),(3,'5be15b3c-ea59-4c6e-8470-74ac34fcfb0c',1,1,'44123456789',NULL,'pinkbankfsp',3,NULL,NULL,1,1,300.0000,'BWP','2025-05-16 06:20:27'),(4,'5be15b3c-ea59-4c6e-8470-74ac34fcfb0c',2,1,'27713803912',NULL,'greenbankfsp',2,NULL,NULL,2,1,-300.0000,'BWP','2025-05-16 06:20:27');
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
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This table is the primary store for quote responses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteResponse`
--

LOCK TABLES `quoteResponse` WRITE;
/*!40000 ALTER TABLE `quoteResponse` DISABLE KEYS */;
INSERT INTO `quoteResponse` VALUES (1,'a8a94955-50cb-451b-831c-b9b3c7381ad0','BWP',300.5000,'BWP',300.0000,'BWP',0.2000,'BWP',0.3000,'GlYhE1hSDp1K8_PWQIT17e6Rig7FtYsDNIK-Qf4W3HQ','2025-05-17 06:20:26',1,'2025-05-16 06:20:27'),(2,'5be15b3c-ea59-4c6e-8470-74ac34fcfb0c','BWP',300.5000,'BWP',300.0000,'BWP',0.2000,'BWP',0.3000,'5VJC7qGcdINsw8ByG1F481Vsln6jSSKc_58RzQlznjY','2025-05-17 06:20:28',1,'2025-05-16 06:20:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteResponseDuplicateCheck`
--

LOCK TABLES `quoteResponseDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `quoteResponseDuplicateCheck` DISABLE KEYS */;
INSERT INTO `quoteResponseDuplicateCheck` VALUES (1,'a8a94955-50cb-451b-831c-b9b3c7381ad0','ba84f42f6730d2fe5cd212bd6093ea2dddce855cc732427a80e54ce26bda82e2','2025-05-16 06:20:27'),(2,'5be15b3c-ea59-4c6e-8470-74ac34fcfb0c','b379f4714f69579b02e0897af0628428da687a9ae19a6abccb94a7bda8aba425','2025-05-16 06:20:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quoteResponseIlpPacket`
--

LOCK TABLES `quoteResponseIlpPacket` WRITE;
/*!40000 ALTER TABLE `quoteResponseIlpPacket` DISABLE KEYS */;
INSERT INTO `quoteResponseIlpPacket` VALUES (1,'AYIDHAAAAAAAAHViIWcuZ3JlZW5iYW5rZnNwLm1zaXNkbi4yNzcxMzgwMzkxMoIC7mV5SjBjbUZ1YzJGamRHbHZia2xrSWpvaU1XWTVOakJpWlRNdFpUazROaTAwTlRBd0xUZzVOekV0WW1RNE9UazFOekJrWVdVeklpd2ljWFZ2ZEdWSlpDSTZJbUU0WVRrME9UVTFMVFV3WTJJdE5EVXhZaTA0TXpGakxXSTVZak5qTnpNNE1XRmtNQ0lzSW5CaGVXVmxJanA3SW5CaGNuUjVTV1JKYm1adklqcDdJbkJoY25SNVNXUlVlWEJsSWpvaVRWTkpVMFJPSWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaU1qYzNNVE00TURNNU1USWlMQ0ptYzNCSlpDSTZJbWR5WldWdVltRnVhMlp6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUpOVTBsVFJFNGlMQ0p3WVhKMGVVbGtaVzUwYVdacFpYSWlPaUkwTkRFeU16UTFOamM0T1NJc0ltWnpjRWxrSWpvaWNHbHVhMkpoYm10bWMzQWlmU3dpY0dWeWMyOXVZV3hKYm1adklqcDdJbU52YlhCc1pYaE9ZVzFsSWpwN0ltWnBjbk4wVG1GdFpTSTZJa1pwY25OMGJtRnRaUzFVWlhOMElpd2liR0Z6ZEU1aGJXVWlPaUpNWVhOMGJtRnRaUzFVWlhOMEluMHNJbVJoZEdWUFprSnBjblJvSWpvaU1UazROQzB3TVMwd01TSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVFsZFFJaXdpWVcxdmRXNTBJam9pTXpBd0xqVWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanA3SW5OalpXNWhjbWx2SWpvaVZGSkJUbE5HUlZJaUxDSnBibWwwYVdGMGIzSWlPaUpRUVZsRlVpSXNJbWx1YVhScFlYUnZjbFI1Y0dVaU9pSkRUMDVUVlUxRlVpSjlmUQA'),(2,'AYIDHAAAAAAAAHViIWcuZ3JlZW5iYW5rZnNwLm1zaXNkbi4yNzcxMzgwMzkxMoIC7mV5SjBjbUZ1YzJGamRHbHZia2xrSWpvaVlXSXhZekk0TTJFdE56WXdaUzAwWW1Sa0xXSXlZekF0Tm1RNE5HRTBNRGxtTXpNNUlpd2ljWFZ2ZEdWSlpDSTZJalZpWlRFMVlqTmpMV1ZoTlRrdE5HTTJaUzA0TkRjd0xUYzBZV016TkdaalptSXdZeUlzSW5CaGVXVmxJanA3SW5CaGNuUjVTV1JKYm1adklqcDdJbkJoY25SNVNXUlVlWEJsSWpvaVRWTkpVMFJPSWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaU1qYzNNVE00TURNNU1USWlMQ0ptYzNCSlpDSTZJbWR5WldWdVltRnVhMlp6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUpOVTBsVFJFNGlMQ0p3WVhKMGVVbGtaVzUwYVdacFpYSWlPaUkwTkRFeU16UTFOamM0T1NJc0ltWnpjRWxrSWpvaWNHbHVhMkpoYm10bWMzQWlmU3dpY0dWeWMyOXVZV3hKYm1adklqcDdJbU52YlhCc1pYaE9ZVzFsSWpwN0ltWnBjbk4wVG1GdFpTSTZJa1pwY25OMGJtRnRaUzFVWlhOMElpd2liR0Z6ZEU1aGJXVWlPaUpNWVhOMGJtRnRaUzFVWlhOMEluMHNJbVJoZEdWUFprSnBjblJvSWpvaU1UazROQzB3TVMwd01TSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVFsZFFJaXdpWVcxdmRXNTBJam9pTXpBd0xqVWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanA3SW5OalpXNWhjbWx2SWpvaVZGSkJUbE5HUlZJaUxDSnBibWwwYVdGMGIzSWlPaUpRUVZsRlVpSXNJbWx1YVhScFlYUnZjbFI1Y0dVaU9pSkRUMDVUVlUxRlVpSjlmUQA');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segment`
--

LOCK TABLES `segment` WRITE;
/*!40000 ALTER TABLE `segment` DISABLE KEYS */;
INSERT INTO `segment` VALUES (1,'timeout',0,'transferStateChange',20,'2025-05-16 06:18:00'),(2,'timeout',0,'fxTransferStateChange',0,'2025-05-16 06:18:00');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementDelay`
--

LOCK TABLES `settlementDelay` WRITE;
/*!40000 ALTER TABLE `settlementDelay` DISABLE KEYS */;
INSERT INTO `settlementDelay` VALUES (1,'IMMEDIATE',NULL,1,'2025-05-16 06:17:58'),(2,'DEFERRED',NULL,1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementGranularity`
--

LOCK TABLES `settlementGranularity` WRITE;
/*!40000 ALTER TABLE `settlementGranularity` DISABLE KEYS */;
INSERT INTO `settlementGranularity` VALUES (1,'GROSS',NULL,1,'2025-05-16 06:17:58'),(2,'NET',NULL,1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementInterchange`
--

LOCK TABLES `settlementInterchange` WRITE;
/*!40000 ALTER TABLE `settlementInterchange` DISABLE KEYS */;
INSERT INTO `settlementInterchange` VALUES (1,'BILATERAL',NULL,1,'2025-05-16 06:17:58'),(2,'MULTILATERAL',NULL,1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementModel`
--

LOCK TABLES `settlementModel` WRITE;
/*!40000 ALTER TABLE `settlementModel` DISABLE KEYS */;
INSERT INTO `settlementModel` VALUES (1,'DEFERREDNETBWP',1,2,2,2,'BWP',1,1,1,0,2),(2,'DEFAULTDEFERREDNET',1,2,2,2,NULL,1,1,1,0,2),(3,'CGS',1,1,1,1,'INR',1,1,0,0,2),(4,'INTERCHANGEFEE',1,2,2,2,'INR',0,5,1,0,6);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementState`
--

LOCK TABLES `settlementState` WRITE;
/*!40000 ALTER TABLE `settlementState` DISABLE KEYS */;
INSERT INTO `settlementState` VALUES ('ABORTED','ABORTED','Final state when the settlement is not possible.',1,'2025-05-16 06:17:58'),('PENDING_SETTLEMENT','PENDING_SETTLEMENT','The net settlement report for this window has been taken, with the parameter set to indicate that settlement is to be processed.',1,'2025-05-16 06:17:58'),('PS_TRANSFERS_COMMITTED','PS_TRANSFERS_COMMITTED','All the credit entries for the MLNS transfers are committed. An identifier might be received and recorded from the Settlement bank to allow reconciliation.',1,'2025-05-16 06:17:58'),('PS_TRANSFERS_RECORDED','PS_TRANSFERS_RECORDED','Record transfer entries against the Position Account and the Multi-lateral Net Settlement Account, these are the \"multi-lateral net  settlement transfers\" (MLNS transfers). An identifier might be provided to be past to the reference bank.',1,'2025-05-16 06:17:58'),('PS_TRANSFERS_RESERVED','PS_TRANSFERS_RESERVED','All the debit entries for the MLNS transfers are reserved.',1,'2025-05-16 06:17:58'),('SETTLED','SETTLED','When all outstanding accounts are SETTLED, the entire Settlement is moved to SETTLED.',1,'2025-05-16 06:17:58'),('SETTLING','SETTLING','If all accounts are not yet SETTLED, the Status of the settlement is moved to SETTLING. Note: applies only on settlement level.',1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindow`
--

LOCK TABLES `settlementWindow` WRITE;
/*!40000 ALTER TABLE `settlementWindow` DISABLE KEYS */;
INSERT INTO `settlementWindow` VALUES (1,'initial window','2025-05-16 06:17:58',1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindowState`
--

LOCK TABLES `settlementWindowState` WRITE;
/*!40000 ALTER TABLE `settlementWindowState` DISABLE KEYS */;
INSERT INTO `settlementWindowState` VALUES ('ABORTED','ABORTED','Window returned to this state when the settlement was not possible. This window may now be included in a future settlement.',1,'2025-05-16 06:17:58'),('CLOSED','CLOSED','Settlement Window is not accepting any additional transfers. All new transfers are being allocated to the OPEN Settlement Window.',1,'2025-05-16 06:17:58'),('FAILED','FAILED','Used when close window processing failed and all retries have been exhausted.',1,'2025-05-16 06:17:58'),('OPEN','OPEN','Current window into which Fulfilled transfers are being allocated. Only one window should be open at a time.',1,'2025-05-16 06:17:58'),('PENDING_SETTLEMENT','PENDING_SETTLEMENT','The net settlement report for this window has been taken, with the parameter set to indicate that settlement is to be processed.',1,'2025-05-16 06:17:58'),('PROCESSING','PROCESSING','Intermediate state when closing a window.',1,'2025-05-16 06:17:58'),('SETTLED','SETTLED','The Hub Operator/Settlement Bank has confirmed that all the participants that engaged in the settlement window have now settled their payments in accordance with the net settlement report.',1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlementWindowStateChange`
--

LOCK TABLES `settlementWindowStateChange` WRITE;
/*!40000 ALTER TABLE `settlementWindowStateChange` DISABLE KEYS */;
INSERT INTO `settlementWindowStateChange` VALUES (1,1,'OPEN','initial window','2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionInitiator`
--

LOCK TABLES `transactionInitiator` WRITE;
/*!40000 ALTER TABLE `transactionInitiator` DISABLE KEYS */;
INSERT INTO `transactionInitiator` VALUES (1,'PAYER','Sender of funds is initiating the transaction. The account to send from is either owned by the Payer or is connected to the Payer in some way','2025-05-16 06:17:58'),(2,'PAYEE','Recipient of the funds is initiating the transaction by sending a transaction request. The Payer must approve the transaction, either automatically by a pre-generated OTP or by pre-approval of the Payee, or manually by approving on their own Device','2025-05-16 06:17:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionInitiatorType`
--

LOCK TABLES `transactionInitiatorType` WRITE;
/*!40000 ALTER TABLE `transactionInitiatorType` DISABLE KEYS */;
INSERT INTO `transactionInitiatorType` VALUES (1,'CONSUMER','Consumer is the initiator of the transaction','2025-05-16 06:17:58'),(2,'AGENT','Agent is the initiator of the transaction','2025-05-16 06:17:58'),(3,'BUSINESS','Business is the initiator of the transaction','2025-05-16 06:17:58'),(4,'DEVICE','Device is the initiator of the transaction','2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionReference`
--

LOCK TABLES `transactionReference` WRITE;
/*!40000 ALTER TABLE `transactionReference` DISABLE KEYS */;
INSERT INTO `transactionReference` VALUES ('1f960be3-e986-4500-8971-bd899570dae3','a8a94955-50cb-451b-831c-b9b3c7381ad0','2025-05-16 06:20:16'),('ab1c283a-760e-4bdd-b2c0-6d84a409f339','5be15b3c-ea59-4c6e-8470-74ac34fcfb0c','2025-05-16 06:20:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionScenario`
--

LOCK TABLES `transactionScenario` WRITE;
/*!40000 ALTER TABLE `transactionScenario` DISABLE KEYS */;
INSERT INTO `transactionScenario` VALUES (1,'TRANSFER','Used for performing a P2P (Peer to Peer, or Consumer to Consumer) transaction','2025-05-16 06:17:58'),(2,'DEPOSIT','Used for performing a Cash-In (deposit) transaction. In a normal scenario, electronic funds are transferred from a Business account to a Consumer account, and physical cash is given from the Consumer to the Business User','2025-05-16 06:17:58'),(3,'WITHDRAWAL','Used for performing a Cash-Out (withdrawal) transaction. In a normal scenario, electronic funds are transferred from a Consumer’s account to a Business account, and physical cash is given from the Business User to the Consumer','2025-05-16 06:17:58'),(4,'PAYMENT','Usually used for performing a transaction from a Consumer to a Merchant or Organization, but could also be for a B2B (Business to Business) payment. The transaction could be online for a purchase in an Internet store, in a physical store where both the Consumer and Business User are present, a bill payment, a donation, and so on','2025-05-16 06:17:58'),(5,'REFUND','Used for performing a refund of transaction','2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` VALUES ('114d2054-fc8e-4d56-9013-a28791a5a9b9',5000000.0000,'BWP','0','2025-05-21 06:19:06','2025-05-16 06:19:06'),('5c941097-eb24-41b3-9898-6e90df801e52',5000000.0000,'TZS','0','2025-05-21 06:18:56','2025-05-16 06:18:56'),('7d2b0290-917d-4df7-838e-faf4cc03b177',5000000.0000,'BWP','0','2025-05-21 06:18:55','2025-05-16 06:18:55'),('ab1c283a-760e-4bdd-b2c0-6d84a409f339',300.5000,'BWP','5VJC7qGcdINsw8ByG1F481Vsln6jSSKc_58RzQlznjY','2025-05-17 06:20:28','2025-05-16 06:20:29'),('cf95b8f1-d24e-4345-8b08-d3e0e85df27c',5000000.0000,'TZS','0','2025-05-21 06:19:08','2025-05-16 06:19:08');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferDuplicateCheck`
--

LOCK TABLES `transferDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `transferDuplicateCheck` DISABLE KEYS */;
INSERT INTO `transferDuplicateCheck` VALUES ('114d2054-fc8e-4d56-9013-a28791a5a9b9','TGOfBM2MxNU8rteU6J9WO/ewtrigPVeSq2Qn545CJ7Q','2025-05-16 06:19:06'),('5c941097-eb24-41b3-9898-6e90df801e52','aZVKNwHEEyNAJFFsB1OrmT2b6iEjBVmbX7iSxdT3j44','2025-05-16 06:18:56'),('7d2b0290-917d-4df7-838e-faf4cc03b177','c0g26CJnP9cucHtSbVPDuNcAJ2TUSr0+03reNoRD0to','2025-05-16 06:18:55'),('ab1c283a-760e-4bdd-b2c0-6d84a409f339','uxHOl2/QUKYlBJVT6647a9WtpSZGP+GPYPbPiMNrXm0','2025-05-16 06:20:29'),('cf95b8f1-d24e-4345-8b08-d3e0e85df27c','EH+mpGpBdz8tUj0uw17zkjiu97+ZAXZXiXNOXCbVWq8','2025-05-16 06:19:07');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferError`
--

LOCK TABLES `transferError` WRITE;
/*!40000 ALTER TABLE `transferError` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferErrorDuplicateCheck`
--

LOCK TABLES `transferErrorDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `transferErrorDuplicateCheck` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferExtension`
--

LOCK TABLES `transferExtension` WRITE;
/*!40000 ALTER TABLE `transferExtension` DISABLE KEYS */;
INSERT INTO `transferExtension` VALUES (1,'7d2b0290-917d-4df7-838e-faf4cc03b177','externalReference','string',0,0,'2025-05-16 06:18:55'),(2,'7d2b0290-917d-4df7-838e-faf4cc03b177','string','string',0,0,'2025-05-16 06:18:55'),(3,'5c941097-eb24-41b3-9898-6e90df801e52','externalReference','string',0,0,'2025-05-16 06:18:56'),(4,'5c941097-eb24-41b3-9898-6e90df801e52','string','string',0,0,'2025-05-16 06:18:56'),(5,'114d2054-fc8e-4d56-9013-a28791a5a9b9','externalReference','string',0,0,'2025-05-16 06:19:06'),(6,'114d2054-fc8e-4d56-9013-a28791a5a9b9','string','string',0,0,'2025-05-16 06:19:06'),(7,'cf95b8f1-d24e-4345-8b08-d3e0e85df27c','externalReference','string',0,0,'2025-05-16 06:19:08'),(8,'cf95b8f1-d24e-4345-8b08-d3e0e85df27c','string','string',0,0,'2025-05-16 06:19:08');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferFulfilment`
--

LOCK TABLES `transferFulfilment` WRITE;
/*!40000 ALTER TABLE `transferFulfilment` DISABLE KEYS */;
INSERT INTO `transferFulfilment` VALUES ('114d2054-fc8e-4d56-9013-a28791a5a9b9','0','2025-05-16 06:19:06',1,NULL,'2025-05-16 06:19:06'),('5c941097-eb24-41b3-9898-6e90df801e52','0','2025-05-16 06:18:56',1,NULL,'2025-05-16 06:18:56'),('7d2b0290-917d-4df7-838e-faf4cc03b177','0','2025-05-16 06:18:55',1,NULL,'2025-05-16 06:18:55'),('ab1c283a-760e-4bdd-b2c0-6d84a409f339','Bf7btZP7xvTOxPKyO5ucwobd9vPfH5uX1jYZn3dCjz0','2025-05-16 06:20:33',1,1,'2025-05-16 06:20:33'),('cf95b8f1-d24e-4345-8b08-d3e0e85df27c','0','2025-05-16 06:19:08',1,NULL,'2025-05-16 06:19:08');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferFulfilmentDuplicateCheck`
--

LOCK TABLES `transferFulfilmentDuplicateCheck` WRITE;
/*!40000 ALTER TABLE `transferFulfilmentDuplicateCheck` DISABLE KEYS */;
INSERT INTO `transferFulfilmentDuplicateCheck` VALUES ('114d2054-fc8e-4d56-9013-a28791a5a9b9',NULL,'2025-05-16 06:19:06'),('5c941097-eb24-41b3-9898-6e90df801e52',NULL,'2025-05-16 06:18:56'),('7d2b0290-917d-4df7-838e-faf4cc03b177',NULL,'2025-05-16 06:18:55'),('ab1c283a-760e-4bdd-b2c0-6d84a409f339','HwfF9tbVecQk61r06abNhcyp6yp31/o3J4LQn4zKajo','2025-05-16 06:20:33'),('cf95b8f1-d24e-4345-8b08-d3e0e85df27c',NULL,'2025-05-16 06:19:07');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferParticipant`
--

LOCK TABLES `transferParticipant` WRITE;
/*!40000 ALTER TABLE `transferParticipant` DISABLE KEYS */;
INSERT INTO `transferParticipant` VALUES (1,'7d2b0290-917d-4df7-838e-faf4cc03b177',2,3,9,5000000.0000,'2025-05-16 06:18:55',1,NULL),(2,'7d2b0290-917d-4df7-838e-faf4cc03b177',16,4,9,-5000000.0000,'2025-05-16 06:18:55',3,NULL),(3,'5c941097-eb24-41b3-9898-6e90df801e52',4,3,9,5000000.0000,'2025-05-16 06:18:56',1,NULL),(4,'5c941097-eb24-41b3-9898-6e90df801e52',18,4,9,-5000000.0000,'2025-05-16 06:18:56',3,NULL),(5,'114d2054-fc8e-4d56-9013-a28791a5a9b9',2,3,9,5000000.0000,'2025-05-16 06:19:06',1,NULL),(6,'114d2054-fc8e-4d56-9013-a28791a5a9b9',23,4,9,-5000000.0000,'2025-05-16 06:19:06',4,NULL),(7,'cf95b8f1-d24e-4345-8b08-d3e0e85df27c',4,3,9,5000000.0000,'2025-05-16 06:19:08',1,NULL),(8,'cf95b8f1-d24e-4345-8b08-d3e0e85df27c',26,4,9,-5000000.0000,'2025-05-16 06:19:08',4,NULL),(9,'ab1c283a-760e-4bdd-b2c0-6d84a409f339',15,1,1,300.5000,'2025-05-16 06:20:29',3,NULL),(10,'ab1c283a-760e-4bdd-b2c0-6d84a409f339',NULL,2,1,-300.5000,'2025-05-16 06:20:29',2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferParticipantRoleType`
--

LOCK TABLES `transferParticipantRoleType` WRITE;
/*!40000 ALTER TABLE `transferParticipantRoleType` DISABLE KEYS */;
INSERT INTO `transferParticipantRoleType` VALUES (1,'PAYER_DFSP','The participant is the Payer DFSP in this transfer and is sending the funds',1,'2025-05-16 06:17:58'),(2,'PAYEE_DFSP','The participant is the Payee DFSP in this transfer and is receiving the funds',1,'2025-05-16 06:17:58'),(3,'HUB','The participant is representing the Hub Operator',1,'2025-05-16 06:17:58'),(4,'DFSP_SETTLEMENT','Indicates the settlement account',1,'2025-05-16 06:17:58'),(5,'DFSP_POSITION','Indicates the position account',1,'2025-05-16 06:17:58'),(6,'INITIATING_FSP','Identifier for the FSP who is requesting a currency conversion',1,'2025-05-16 06:17:58'),(7,'COUNTER_PARTY_FSP','Identifier for the FXP who is performing the currency conversion',1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferState`
--

LOCK TABLES `transferState` WRITE;
/*!40000 ALTER TABLE `transferState` DISABLE KEYS */;
INSERT INTO `transferState` VALUES ('ABORTED_ERROR','ABORTED','The switch has aborted a transfer due to being RECEIVED_ERROR',1,'2025-05-16 06:17:58'),('ABORTED_REJECTED','ABORTED','The switch has aborted a transfer due to being RECEIVED_REJECT.',1,'2025-05-16 06:17:58'),('COMMITTED','COMMITTED','The switch has successfully performed the transfer.',1,'2025-05-16 06:17:58'),('EXPIRED_PREPARED','ABORTED','The switch has aborted the transfer due to being EXPIRED transfer from RECEIVED_PREPARE.',1,'2025-05-16 06:17:58'),('EXPIRED_RESERVED','ABORTED','The switch has aborted the transfer due to being EXPIRED transfer from RESERVED.',1,'2025-05-16 06:17:58'),('FAILED','ABORTED','Aborted the transfer due to failure to perform the transfer.',1,'2025-05-16 06:17:58'),('INVALID','ABORTED','The switch has aborted the transfer due to validation failure.',1,'2025-05-16 06:17:58'),('RECEIVED_ERROR','RESERVED','The switch has received a transfer error callback',1,'2025-05-16 06:17:58'),('RECEIVED_FULFIL','RESERVED','The switch has reserved the transfer, and has been assigned to a settlement window.',1,'2025-05-16 06:17:58'),('RECEIVED_FULFIL_DEPENDENT','RESERVED','The switch has reserved the fxTransfer fulfilment.',1,'2025-05-16 06:17:58'),('RECEIVED_PREPARE','RECEIVED','The switch has received the transfer.',1,'2025-05-16 06:17:58'),('RECEIVED_REJECT','RESERVED','The switch has received a transfer abort from payee fsp.',1,'2025-05-16 06:17:58'),('RESERVED','RESERVED','The switch has reserved the transfer.',1,'2025-05-16 06:17:58'),('RESERVED_FORWARDED','RESERVED','The switch has forwarded the transfer to a proxy participant',1,'2025-05-16 06:17:58'),('RESERVED_TIMEOUT','RESERVED','Expiring the transfer and returning funds to payer fsp.',1,'2025-05-16 06:17:58'),('SETTLED','SETTLED','The switch has settled the transfer.',1,'2025-05-16 06:17:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferStateChange`
--

LOCK TABLES `transferStateChange` WRITE;
/*!40000 ALTER TABLE `transferStateChange` DISABLE KEYS */;
INSERT INTO `transferStateChange` VALUES (1,'7d2b0290-917d-4df7-838e-faf4cc03b177','RECEIVED_PREPARE','string','2025-05-16 06:18:55'),(2,'7d2b0290-917d-4df7-838e-faf4cc03b177','RESERVED','string','2025-05-16 06:18:55'),(3,'7d2b0290-917d-4df7-838e-faf4cc03b177','RECEIVED_FULFIL','string','2025-05-16 06:18:55'),(4,'7d2b0290-917d-4df7-838e-faf4cc03b177','COMMITTED','string','2025-05-16 06:18:55'),(5,'5c941097-eb24-41b3-9898-6e90df801e52','RECEIVED_PREPARE','string','2025-05-16 06:18:56'),(6,'5c941097-eb24-41b3-9898-6e90df801e52','RESERVED','string','2025-05-16 06:18:56'),(7,'5c941097-eb24-41b3-9898-6e90df801e52','RECEIVED_FULFIL','string','2025-05-16 06:18:56'),(8,'5c941097-eb24-41b3-9898-6e90df801e52','COMMITTED','string','2025-05-16 06:18:56'),(9,'114d2054-fc8e-4d56-9013-a28791a5a9b9','RECEIVED_PREPARE','string','2025-05-16 06:19:06'),(10,'114d2054-fc8e-4d56-9013-a28791a5a9b9','RESERVED','string','2025-05-16 06:19:06'),(11,'114d2054-fc8e-4d56-9013-a28791a5a9b9','RECEIVED_FULFIL','string','2025-05-16 06:19:06'),(12,'114d2054-fc8e-4d56-9013-a28791a5a9b9','COMMITTED','string','2025-05-16 06:19:06'),(13,'cf95b8f1-d24e-4345-8b08-d3e0e85df27c','RECEIVED_PREPARE','string','2025-05-16 06:19:08'),(14,'cf95b8f1-d24e-4345-8b08-d3e0e85df27c','RESERVED','string','2025-05-16 06:19:08'),(15,'cf95b8f1-d24e-4345-8b08-d3e0e85df27c','RECEIVED_FULFIL','string','2025-05-16 06:19:08'),(16,'cf95b8f1-d24e-4345-8b08-d3e0e85df27c','COMMITTED','string','2025-05-16 06:19:08'),(17,'ab1c283a-760e-4bdd-b2c0-6d84a409f339','RECEIVED_PREPARE',NULL,'2025-05-16 06:20:30'),(18,'ab1c283a-760e-4bdd-b2c0-6d84a409f339','RESERVED',NULL,'2025-05-16 06:20:31'),(19,'ab1c283a-760e-4bdd-b2c0-6d84a409f339','RECEIVED_FULFIL',NULL,'2025-05-16 06:20:33'),(20,'ab1c283a-760e-4bdd-b2c0-6d84a409f339','COMMITTED',NULL,'2025-05-16 06:20:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2025-05-16  6:21:52
