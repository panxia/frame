-- MySQL dump 10.13  Distrib 5.6.41, for macos10.13 (x86_64)
--
-- Host: localhost    Database: frame
-- ------------------------------------------------------
-- Server version	5.6.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `commercial_channel_app`
--

DROP TABLE IF EXISTS `commercial_channel_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commercial_channel_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_range` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '期间',
  `card_id` varchar(45) NOT NULL COMMENT '身份证号',
  `name` varchar(45) NOT NULL COMMENT '姓名',
  `company` varchar(45) DEFAULT NULL COMMENT '服务公司',
  `online_rate` decimal(10,2) DEFAULT '0.00' COMMENT '线上渠道推广完成率',
  `offline_rate` decimal(10,2) DEFAULT '0.00' COMMENT '线下渠道推广成功完成率',
  `effective_quantity` decimal(10,2) DEFAULT '0.00' COMMENT '有效转化数量',
  `effective_user` int(11) DEFAULT '0' COMMENT '有效用户数',
  `reward_coefficient` decimal(10,2) unsigned zerofill DEFAULT '00000000.00' COMMENT '奖励系数',
  `final_income` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '项目最终所得',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商业聚到搭建及应用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_channel_app`
--



--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (2,'收款人','taxde1',1,NULL),(3,'银行账号','taxde2',1,NULL),(4,'开户行','taxde3',1,NULL),(5,'开户地','taxde4',1,NULL),(6,'劳务人员','taxde5',1,NULL),(7,'劳务人员身份证','taxde6',1,NULL),(8,'劳务人员联系电话','taxde7',1,NULL),(9,'服务项目','taxde8',1,NULL),(10,'服务时间','taxde9',1,NULL),(11,'税前金额','taxde10',1,NULL),(12,'税金','taxde11',1,NULL),(13,'实付金额','taxde12',1,NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,'admin','修改用户','com.ffcs.controller.SysUserController.update()','{\"createTime\":1478833871000,\"email\":\"root@ffcs.cn\",\"mobile\":\"13612345678\",\"roleIdList\":[],\"status\":1,\"userId\":1,\"username\":\"admin\"}','0:0:0:0:0:0:0:1','2017-04-09 17:17:19'),(2,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"业务数据统计\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1}','0:0:0:0:0:0:0:1','2018-09-15 19:30:15'),(3,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"业务数据统计\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:30:29'),(4,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"商业渠道搭建及应用\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1}','0:0:0:0:0:0:0:1','2018-09-15 19:31:34'),(5,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"商业渠道搭建及应用\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:31:49'),(6,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"商业渠道搭建及应用\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:31:52'),(7,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":30,\"name\":\"业务数据统计\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:32:24'),(8,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"税务申报\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":1}','0:0:0:0:0:0:0:1','2018-09-15 19:34:46'),(9,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"税务申报\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}','0:0:0:0:0:0:0:1','2018-09-15 19:35:18'),(10,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":31,\"name\":\"税务申报\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}','0:0:0:0:0:0:0:1','2018-09-15 19:37:11'),(11,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"收入统计\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}','0:0:0:0:0:0:0:1','2018-09-15 19:37:32'),(12,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"人员培训\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}','0:0:0:0:0:0:0:1','2018-09-15 19:38:17'),(13,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"配置\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"type\":0}','0:0:0:0:0:0:0:1','2018-09-15 19:38:32'),(14,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"商业渠道搭建及应用\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1}','0:0:0:0:0:0:0:1','2018-09-15 19:40:01'),(15,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"商业渠道搭建及应用\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:40:18'),(16,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"市场推广服务\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:41:08'),(17,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"信息系统服务\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:42:09'),(18,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"文化教育项目策划及落地执行服务\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:43:25'),(19,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"当期纳税申报\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"税务申报\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:44:50'),(20,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"历史查询\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"税务申报\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:45:37'),(21,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"商业渠道搭建及应用\"}','0:0:0:0:0:0:0:1','2018-09-15 19:48:04'),(22,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"商业渠道搭建及应用\",\"value\":\"12\"}','0:0:0:0:0:0:0:1','2018-09-15 19:48:09'),(23,'admin','删除配置','com.ffcs.controller.SysConfigController.delete()','[1]','0:0:0:0:0:0:0:1','2018-09-15 19:48:28'),(24,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"商业渠道搭建及应用\",\"orderNum\":0,\"parentId\":32,\"parentName\":\"收入统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:51:11'),(25,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"市场推广服务\",\"orderNum\":0,\"parentId\":32,\"parentName\":\"收入统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:51:41'),(26,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"信息系统服务\",\"orderNum\":0,\"parentId\":32,\"parentName\":\"收入统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:52:10'),(27,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"文化教育策划及落地执行服务\",\"orderNum\":0,\"parentId\":32,\"parentName\":\"收入统计\",\"type\":1,\"url\":\"www.baidu.com\"}','0:0:0:0:0:0:0:1','2018-09-15 19:53:07'),(28,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"收款人\",\"value\":\"taxde1\"}','0:0:0:0:0:0:0:1','2018-09-15 19:56:55'),(29,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"银行账号\",\"value\":\"taxde2\"}','0:0:0:0:0:0:0:1','2018-09-15 19:57:44'),(30,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"开户行\",\"value\":\"taxde3\"}','0:0:0:0:0:0:0:1','2018-09-15 19:58:25'),(31,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"开户地\",\"value\":\"taxde4\"}','0:0:0:0:0:0:0:1','2018-09-15 19:58:54'),(32,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"劳务人员\",\"value\":\"taxde5\"}','0:0:0:0:0:0:0:1','2018-09-15 19:59:27'),(33,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"劳务人员身份证\",\"value\":\"taxde6\"}','0:0:0:0:0:0:0:1','2018-09-15 19:59:53'),(34,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"劳务人员联系电话\",\"value\":\"taxde7\"}','0:0:0:0:0:0:0:1','2018-09-15 20:00:25'),(35,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"服务项目\",\"value\":\"taxde8\"}','0:0:0:0:0:0:0:1','2018-09-15 20:00:46'),(36,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"服务时间\",\"value\":\"tax9\"}','0:0:0:0:0:0:0:1','2018-09-15 20:01:13'),(37,'admin','修改配置','com.ffcs.controller.SysConfigController.update()','{\"id\":10,\"key\":\"服务时间\",\"value\":\"taxde9\"}','0:0:0:0:0:0:0:1','2018-09-15 20:01:23'),(38,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"税前金额\",\"value\":\"taxde10\"}','0:0:0:0:0:0:0:1','2018-09-15 20:01:55'),(39,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"税金\",\"value\":\"taxde11\"}','0:0:0:0:0:0:0:1','2018-09-15 20:02:20'),(40,'admin','保存配置','com.ffcs.controller.SysConfigController.save()','{\"key\":\"实付金额\",\"value\":\"taxde12\"}','0:0:0:0:0:0:0:1','2018-09-15 20:02:37'),(41,'admin','修改配置','com.ffcs.controller.SysConfigController.update()','{\"id\":13,\"key\":\"实付金额\",\"value\":\"taxde12\"}','0:0:0:0:0:0:0:1','2018-09-15 20:03:25'),(42,'admin','保存用户','com.ffcs.controller.SysUserController.save()','{\"email\":\"\",\"roleIdList\":[],\"status\":1,\"username\":\"wangsi\"}','0:0:0:0:0:0:0:1','2018-09-15 20:05:38'),(43,'admin','保存用户','com.ffcs.controller.SysUserController.save()','{\"email\":\"wangsi@sogou-inc.com\",\"roleIdList\":[],\"status\":1,\"username\":\"wangsi\"}','0:0:0:0:0:0:0:1','2018-09-15 20:05:51'),(44,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":39,\"name\":\"当期纳税申报\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"税务申报\",\"type\":1,\"url\":\"/tax/taxdeclaration.html\"}','0:0:0:0:0:0:0:1','2018-10-04 16:44:15'),(45,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":39,\"name\":\"当期纳税申报\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"税务申报\",\"type\":1,\"url\":\"tax/taxdeclaration.html\"}','0:0:0:0:0:0:0:1','2018-10-04 16:45:38'),(46,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":39,\"name\":\"当期纳税申报\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"税务申报\",\"type\":1,\"url\":\"sys/taxdeclaration.html\"}','0:0:0:0:0:0:0:1','2018-10-04 16:50:50'),(47,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"新增\",\"orderNum\":0,\"parentId\":39,\"parentName\":\"当期纳税申报\",\"perms\":\"taxdeclaration:save\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-16 17:09:00'),(48,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"修改\",\"orderNum\":0,\"parentId\":39,\"parentName\":\"当期纳税申报\",\"perms\":\"taxdeclaration:update\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-16 17:09:38'),(49,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"删除\",\"orderNum\":0,\"parentId\":39,\"parentName\":\"当期纳税申报\",\"perms\":\"taxdeclaration:delete\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-16 17:10:17'),(50,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"查看\",\"orderNum\":0,\"parentId\":39,\"parentName\":\"当期纳税申报\",\"perms\":\"taxdeclaration:list;taxdeclaration:info\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-16 18:00:46'),(51,'admin','保存角色','com.ffcs.controller.SysRoleController.save()','{\"menuIdList\":[1,2,15,16,17,18,3,19,20,21,22,4,23,24,25,26,5,27,29,28,30,35,36,37,38,31,39,45,46,47,48,40,32,41,42,43,44,33,34],\"remark\":\"admin\",\"roleName\":\"admin\"}','0:0:0:0:0:0:0:1','2018-10-16 18:06:01'),(52,'admin','修改用户','com.ffcs.controller.SysUserController.update()','{\"createTime\":1478833871000,\"email\":\"root@ffcs.cn\",\"mobile\":\"13612345678\",\"roleIdList\":[1],\"status\":1,\"userId\":1,\"username\":\"admin\"}','0:0:0:0:0:0:0:1','2018-10-16 18:06:17'),(53,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":48,\"name\":\"查看\",\"orderNum\":0,\"parentId\":39,\"parentName\":\"当期纳税申报\",\"perms\":\"taxdeclaration:list,taxdeclaration:info\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-16 18:07:19'),(54,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"导入\",\"orderNum\":0,\"parentId\":39,\"parentName\":\"当期纳税申报\",\"perms\":\"taxdeclaration:import\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-18 15:33:39'),(55,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":39,\"name\":\"当期纳税申报\",\"orderNum\":0,\"parentId\":31,\"parentName\":\"税务申报\",\"type\":1,\"url\":\"chunxin/taxdeclaration.html\"}','0:0:0:0:0:0:0:1','2018-10-18 20:17:52'),(56,'admin','修改税务申报','com.chunxin.controller.TaxDeclarationController.update()','{\"actualPayment\":130,\"afterTax\":130,\"bankAccount\":\"1.1111141E7\",\"id\":125,\"labourCardid\":\"1.111111141E9\",\"labourPerson\":\"王思\",\"labourPhone\":\"1.11111141E8\",\"openBank\":\"1111141.0\",\"openPlace\":\"合肥\",\"payee\":\"潘霞\",\"preTax\":130,\"serviceItem\":\"累死人不要钱项目\",\"serviceTime\":\"永久2129\"}','0:0:0:0:0:0:0:1','2018-10-18 20:32:58'),(57,'admin','导入税务申报','com.chunxin.controller.TaxDeclarationController.importExcel()',NULL,'0:0:0:0:0:0:0:1','2018-10-18 20:38:54'),(58,'admin','删除税务申报','com.chunxin.controller.TaxDeclarationController.delete()','[156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,135,134,133,132,131,130,129,128,127,126,125,124,123,122,121,120,119,118,117,116,115,114,113,112,111,110,109,108,107]','0:0:0:0:0:0:0:1','2018-10-18 20:40:00'),(59,'admin','删除税务申报','com.chunxin.controller.TaxDeclarationController.delete()','[106,105,104,103,102,101,100,99,98,97,96,95]','0:0:0:0:0:0:0:1','2018-10-18 20:40:05'),(60,'admin','导入税务申报','com.chunxin.controller.TaxDeclarationController.importExcel()',NULL,'0:0:0:0:0:0:0:1','2018-10-18 20:40:09'),(61,'admin','导入税务申报','com.chunxin.controller.TaxDeclarationController.importExcel()',NULL,'0:0:0:0:0:0:0:1','2018-10-18 20:41:27'),(62,'admin','删除税务申报','com.chunxin.controller.TaxDeclarationController.delete()','[218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,191,190,189,188,187,186,185,184,183,182,181,180,179,178,177,176,175,174,173,172,171,170,169]','0:0:0:0:0:0:0:1','2018-10-18 20:41:44'),(63,'admin','删除税务申报','com.chunxin.controller.TaxDeclarationController.delete()','[168,167,166,165,164,163,162,161,160,159,158,157]','0:0:0:0:0:0:0:1','2018-10-18 20:41:49'),(64,'admin','导入税务申报','com.chunxin.controller.TaxDeclarationController.importExcel()',NULL,'0:0:0:0:0:0:0:1','2018-10-18 20:42:01'),(65,'admin','导入税务申报','com.chunxin.controller.TaxDeclarationController.importExcel()',NULL,'0:0:0:0:0:0:0:1','2018-10-18 20:44:21'),(66,'admin','导入税务申报','com.chunxin.controller.TaxDeclarationController.importExcel()',NULL,'0:0:0:0:0:0:0:1','2018-10-18 20:46:44'),(67,'admin','导入税务申报','com.chunxin.controller.TaxDeclarationController.importExcel()',NULL,'0:0:0:0:0:0:0:1','2018-10-18 20:47:37'),(68,'admin','导入税务申报','com.chunxin.controller.TaxDeclarationController.importExcel()',NULL,'0:0:0:0:0:0:0:1','2018-10-18 20:49:33'),(69,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":35,\"name\":\"商业渠道搭建及应用\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1,\"url\":\"shunxin/commercialchannelapp.html\"}','0:0:0:0:0:0:0:1','2018-10-19 17:32:11'),(70,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":35,\"name\":\"商业渠道搭建及应用\",\"orderNum\":0,\"parentId\":30,\"parentName\":\"业务数据统计\",\"type\":1,\"url\":\"chunxin/commercialchannelapp.html\"}','0:0:0:0:0:0:0:1','2018-10-19 17:35:25'),(71,'admin','删除税务申报','com.chunxin.controller.TaxDeclarationController.delete()','[373,372,371,370,369,368,367,366,365,364]','0:0:0:0:0:0:0:1','2018-10-21 21:09:57'),(72,'admin','删除税务申报','com.chunxin.controller.TaxDeclarationController.delete()','[363,362,361,360,359,358,357,356,355,354,353,352,351,350,349,348,347,346,345,344,343,342,341,340,339,338,337,336,335,334,333,332,331,330,329,328,327,326,325,324,323,322,321,320,319,318,317,316,315,314]','0:0:0:0:0:0:0:1','2018-10-21 21:10:19'),(73,'admin','删除税务申报','com.chunxin.controller.TaxDeclarationController.delete()','[313,312,311,310,309,308,307,306,305,304,303,302,301,300,299,298,297,296,295,294,293,292,291,290,289,288,287,286,285,284,283,282,281,280,279,278,277,276,275,274,273,272,271,270,269,268,267,266,265,264]','0:0:0:0:0:0:0:1','2018-10-21 21:10:27'),(74,'admin','删除税务申报','com.chunxin.controller.TaxDeclarationController.delete()','[263,262,261,260,259,258,257,256,255,254,253,252,251,250,249,248,247,246,245,244,243,242,241,240,239,238,237,236,235,234,233,232,231,230,229,228,227,226,225,224,223,222,221,220,219]','0:0:0:0:0:0:0:1','2018-10-21 21:10:34'),(75,'admin','导入税务申报','com.chunxin.controller.TaxDeclarationController.importExcel()',NULL,'0:0:0:0:0:0:0:1','2018-10-21 21:10:44'),(76,'admin','修改税务申报','com.chunxin.controller.TaxDeclarationController.update()','{\"actualPayment\":130,\"afterTax\":130,\"bankAccount\":\"1.1111141E7\",\"id\":404,\"labourCardid\":\"1.111111141E9\",\"labourPerson\":\"王思\",\"labourPhone\":\"1.11111141E8\",\"openBank\":\"1111141.0\",\"openPlace\":\"合肥\",\"payee\":\"潘霞\",\"preTax\":130,\"serviceItem\":\"不要钱项目\",\"serviceTime\":\"永久2129\"}','0:0:0:0:0:0:0:1','2018-10-21 21:11:16'),(77,'admin','修改税务申报','com.chunxin.controller.TaxDeclarationController.update()','{\"actualPayment\":130,\"afterTax\":130,\"bankAccount\":\"1.1111141E7\",\"id\":404,\"labourCardid\":\"1.111111141E9\",\"labourPerson\":\"王思\",\"labourPhone\":\"1.11111141E8\",\"openBank\":\"1111141.0\",\"openPlace\":\"合肥\",\"payee\":\"潘霞\",\"preTax\":130,\"serviceItem\":\"淳信项目\",\"serviceTime\":\"永久2129\"}','0:0:0:0:0:0:0:1','2018-10-21 21:11:51'),(78,'admin','保存角色','com.ffcs.controller.SysRoleController.save()','{\"menuIdList\":[31,39,48],\"roleName\":\"普通角色\"}','0:0:0:0:0:0:0:1','2018-10-21 21:13:11'),(79,'admin','修改用户','com.ffcs.controller.SysUserController.update()','{\"createTime\":1537013151000,\"createUserId\":1,\"email\":\"wangsi@sogou-inc.com\",\"roleIdList\":[2],\"status\":1,\"userId\":2,\"username\":\"wangsi\"}','0:0:0:0:0:0:0:1','2018-10-21 21:13:24'),(80,'admin','修改用户','com.ffcs.controller.SysUserController.update()','{\"createTime\":1537013151000,\"createUserId\":1,\"email\":\"wangsi@sogou-inc.com\",\"roleIdList\":[2],\"status\":1,\"userId\":2,\"username\":\"wangsi\"}','0:0:0:0:0:0:0:1','2018-10-21 21:13:44'),(81,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"新增\",\"orderNum\":0,\"parentId\":35,\"parentName\":\"商业渠道搭建及应用\",\"perms\":\"commercialchannelapp:save\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:06:42'),(82,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"修改\",\"orderNum\":0,\"parentId\":35,\"parentName\":\"商业渠道搭建及应用\",\"perms\":\"commercialchannelapp:update\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:07:15'),(83,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"修改\",\"orderNum\":0,\"parentId\":35,\"parentName\":\"商业渠道搭建及应用\",\"perms\":\"commercialchannelapp:update\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:11:00'),(84,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"删除\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"perms\":\"commercialchannelapp:delete\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:11:24'),(85,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"查看\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"perms\":\"commercialchannelapp:info;commercialchannelapp:list\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:12:39'),(86,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"查看\",\"orderNum\":0,\"parentId\":35,\"parentName\":\"商业渠道搭建及应用\",\"perms\":\"commercialchannelapp:info;commercialchannelapp:list\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:12:49'),(87,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":53,\"name\":\"查看\",\"orderNum\":0,\"parentId\":35,\"parentName\":\"商业渠道搭建及应用\",\"perms\":\"commercialchannelapp:info,commercialchannelapp:list\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:13:11'),(88,'admin','删除菜单','com.ffcs.controller.SysMenuController.delete()','[52]','0:0:0:0:0:0:0:1','2018-10-22 11:15:55'),(89,'admin','修改菜单','com.ffcs.controller.SysMenuController.update()','{\"menuId\":53,\"name\":\"查看\",\"orderNum\":0,\"parentId\":35,\"parentName\":\"商业渠道搭建及应用\",\"perms\":\"commercialchannelapp:info,commercialchannelapp:list\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:16:13'),(90,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"删除\",\"orderNum\":0,\"parentId\":35,\"parentName\":\"商业渠道搭建及应用\",\"perms\":\"commercialchannelapp:delete\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:21:00'),(91,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"导入\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"perms\":\"commercialchannelapp:import\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:21:26'),(92,'admin','保存菜单','com.ffcs.controller.SysMenuController.save()','{\"name\":\"导入\",\"orderNum\":0,\"parentId\":35,\"parentName\":\"商业渠道搭建及应用\",\"perms\":\"commercialchannelapp:import\",\"type\":2}','0:0:0:0:0:0:0:1','2018-10-22 11:21:33');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'系统管理',NULL,NULL,0,'fa fa-cog',0),(2,1,'用户列表','sys/user.html',NULL,1,'fa fa-user',1),(3,1,'角色管理','sys/role.html',NULL,1,'fa fa-user-secret',2),(4,1,'菜单管理','sys/menu.html',NULL,1,'fa fa-th-list',3),(5,1,'SQL监控','druid/sql.html',NULL,1,'fa fa-bug',4),(15,2,'查看',NULL,'sys:user:list,sys:user:info',2,NULL,0),(16,2,'新增',NULL,'sys:user:save,sys:role:select',2,NULL,0),(17,2,'修改',NULL,'sys:user:update,sys:role:select',2,NULL,0),(18,2,'删除',NULL,'sys:user:delete',2,NULL,0),(19,3,'查看',NULL,'sys:role:list,sys:role:info',2,NULL,0),(20,3,'新增',NULL,'sys:role:save,sys:menu:perms',2,NULL,0),(21,3,'修改',NULL,'sys:role:update,sys:menu:perms',2,NULL,0),(22,3,'删除',NULL,'sys:role:delete',2,NULL,0),(23,4,'查看',NULL,'sys:menu:list,sys:menu:info',2,NULL,0),(24,4,'新增',NULL,'sys:menu:save,sys:menu:select',2,NULL,0),(25,4,'修改',NULL,'sys:menu:update,sys:menu:select',2,NULL,0),(26,4,'删除',NULL,'sys:menu:delete',2,NULL,0),(27,1,'参数管理','sys/config.html','sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete',1,'fa fa-sun-o',6),(28,1,'代码生成器','sys/generator.html','sys:generator:list,sys:generator:code',1,'fa fa-rocket',8),(29,1,'系统日志','sys/log.html','sys:log:list',1,'fa fa-file-text-o',7),(30,0,'业务数据统计','www.baidu.com',NULL,0,NULL,0),(31,0,'税务申报',NULL,NULL,0,NULL,0),(32,0,'收入统计',NULL,NULL,0,NULL,0),(33,0,'人员培训',NULL,NULL,0,NULL,0),(34,0,'配置',NULL,NULL,0,NULL,0),(35,30,'商业渠道搭建及应用','chunxin/commercialchannelapp.html',NULL,1,NULL,0),(36,30,'市场推广服务','www.baidu.com',NULL,1,NULL,0),(37,30,'信息系统服务','www.baidu.com',NULL,1,NULL,0),(38,30,'文化教育项目策划及落地执行服务','www.baidu.com',NULL,1,NULL,0),(39,31,'当期纳税申报','chunxin/taxdeclaration.html',NULL,1,NULL,0),(40,31,'历史查询','www.baidu.com',NULL,1,NULL,0),(41,32,'商业渠道搭建及应用','www.baidu.com',NULL,1,NULL,0),(42,32,'市场推广服务','www.baidu.com',NULL,1,NULL,0),(43,32,'信息系统服务','www.baidu.com',NULL,1,NULL,0),(44,32,'文化教育策划及落地执行服务','www.baidu.com',NULL,1,NULL,0),(45,39,'新增',NULL,'taxdeclaration:save',2,NULL,0),(46,39,'修改',NULL,'taxdeclaration:update',2,NULL,0),(47,39,'删除',NULL,'taxdeclaration:delete',2,NULL,0),(48,39,'查看',NULL,'taxdeclaration:list,taxdeclaration:info',2,NULL,0),(49,39,'导入',NULL,'taxdeclaration:import',2,NULL,0),(50,35,'新增',NULL,'commercialchannelapp:save',2,NULL,0),(51,35,'修改',NULL,'commercialchannelapp:update',2,NULL,0),(53,35,'查看',NULL,'commercialchannelapp:info,commercialchannelapp:list',2,NULL,0),(54,35,'删除',NULL,'commercialchannelapp:delete',2,NULL,0),(55,35,'导入',NULL,'commercialchannelapp:import',2,NULL,0);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'admin','admin',1,'2018-10-16 18:06:01'),(2,'普通角色',NULL,1,'2018-10-21 21:13:11');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,1,1),(2,1,2),(3,1,15),(4,1,16),(5,1,17),(6,1,18),(7,1,3),(8,1,19),(9,1,20),(10,1,21),(11,1,22),(12,1,4),(13,1,23),(14,1,24),(15,1,25),(16,1,26),(17,1,5),(18,1,27),(19,1,29),(20,1,28),(21,1,30),(22,1,35),(23,1,36),(24,1,37),(25,1,38),(26,1,31),(27,1,39),(28,1,45),(29,1,46),(30,1,47),(31,1,48),(32,1,40),(33,1,32),(34,1,41),(35,1,42),(36,1,43),(37,1,44),(38,1,33),(39,1,34),(40,2,31),(41,2,39),(42,2,48);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','root@ffcs.cn','13612345678',1,NULL,'2016-11-11 11:11:11'),(2,'wangsi','7b7e2d643e09a7508e96c35292a78529b023006787b3d64a8635a5bde7a7f26f','wangsi@sogou-inc.com',NULL,1,1,'2018-09-15 20:05:51');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1,1),(3,2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_declaration`
--

DROP TABLE IF EXISTS `tax_declaration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_declaration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payee` varchar(10) NOT NULL COMMENT '收款人',
  `bank_account` varchar(20) NOT NULL COMMENT '银行账号',
  `open_bank` varchar(50) NOT NULL COMMENT '开户行',
  `open_place` varchar(50) NOT NULL COMMENT '开户地',
  `labour_person` varchar(45) NOT NULL COMMENT '劳务人员',
  `labour_cardid` varchar(45) NOT NULL COMMENT '劳务人员身份证号',
  `labour_phone` varchar(45) NOT NULL COMMENT '劳务人员手机号码',
  `service_item` varchar(45) NOT NULL COMMENT '服务项目',
  `service_time` varchar(45) NOT NULL COMMENT '服务时间',
  `pre_tax` decimal(5,2) NOT NULL COMMENT '税前',
  `after_tax` decimal(5,2) NOT NULL COMMENT '税后',
  `actual_payment` decimal(5,2) NOT NULL COMMENT '实际付款',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8 COMMENT='税务申报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_declaration`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-23 18:16:22
