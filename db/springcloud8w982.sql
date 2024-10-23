-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springcloud8w982
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springcloud8w982`
--

/*!40000 DROP DATABASE IF EXISTS `springcloud8w982`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springcloud8w982` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springcloud8w982`;

--
-- Table structure for table `bianlidian`
--

DROP TABLE IF EXISTS `bianlidian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bianlidian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shengchandi` varchar(200) DEFAULT NULL COMMENT '生产地',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `danjia` int(11) NOT NULL COMMENT '单价',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='便利店';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bianlidian`
--

LOCK TABLES `bianlidian` WRITE;
/*!40000 ALTER TABLE `bianlidian` DISABLE KEYS */;
INSERT INTO `bianlidian` VALUES (81,'2022-03-02 09:48:48','1111111111','商品名称1','生产地1',1,1,'商品分类1','upload/bianlidian_shangpintupian1.jpg','商品详情1'),(82,'2022-03-02 09:48:48','2222222222','商品名称2','生产地2',2,2,'商品分类2','upload/bianlidian_shangpintupian2.jpg','商品详情2'),(83,'2022-03-02 09:48:48','3333333333','商品名称3','生产地3',21,3,'商品分类3','upload/bianlidian_shangpintupian3.jpg','商品详情3'),(84,'2022-03-02 09:48:48','4444444444','商品名称4','生产地4',4,4,'商品分类4','upload/bianlidian_shangpintupian4.jpg','商品详情4'),(85,'2022-03-02 09:48:48','5555555555','商品名称5','生产地5',5,5,'商品分类5','upload/bianlidian_shangpintupian5.jpg','商品详情5'),(86,'2022-03-02 09:48:48','6666666666','商品名称6','生产地6',6,6,'商品分类6','upload/bianlidian_shangpintupian6.jpg','商品详情6');
/*!40000 ALTER TABLE `bianlidian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslaogong`
--

DROP TABLE IF EXISTS `discusslaogong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslaogong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='劳工评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslaogong`
--

LOCK TABLES `discusslaogong` WRITE;
/*!40000 ALTER TABLE `discusslaogong` DISABLE KEYS */;
INSERT INTO `discusslaogong` VALUES (191,'2022-03-02 09:48:48',1,1,'用户名1','评论内容1','回复内容1'),(192,'2022-03-02 09:48:48',2,2,'用户名2','评论内容2','回复内容2'),(193,'2022-03-02 09:48:48',3,3,'用户名3','评论内容3','回复内容3'),(194,'2022-03-02 09:48:48',4,4,'用户名4','评论内容4','回复内容4'),(195,'2022-03-02 09:48:48',5,5,'用户名5','评论内容5','回复内容5'),(196,'2022-03-02 09:48:48',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusslaogong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwugoumai`
--

DROP TABLE IF EXISTS `fuwugoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwugoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiadanbianhao` varchar(200) DEFAULT NULL COMMENT '下单编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `xiangmujiage` varchar(200) DEFAULT NULL COMMENT '项目价格',
  `laogongxingming` varchar(200) DEFAULT NULL COMMENT '劳工姓名',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenshouji` varchar(200) DEFAULT NULL COMMENT '老人手机',
  `laorenzhuzhi` varchar(200) DEFAULT NULL COMMENT '老人住址',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiadanbianhao` (`xiadanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214785996 DEFAULT CHARSET=utf8 COMMENT='服务购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwugoumai`
--

LOCK TABLES `fuwugoumai` WRITE;
/*!40000 ALTER TABLE `fuwugoumai` DISABLE KEYS */;
INSERT INTO `fuwugoumai` VALUES (141,'2022-03-02 09:48:48','1111111111','项目名称1','服务类型1','项目价格1','劳工姓名1','老人账号1','老人姓名1','老人手机1','老人住址1','2022-03-02 17:48:48','2022-03-02 17:48:48','备注1','是','','未支付'),(142,'2022-03-02 09:48:48','2222222222','项目名称2','服务类型2','项目价格2','劳工姓名2','老人账号2','老人姓名2','老人手机2','老人住址2','2022-03-02 17:48:48','2022-03-02 17:48:48','备注2','是','','未支付'),(143,'2022-03-02 09:48:48','3333333333','项目名称3','服务类型3','项目价格3','劳工姓名3','老人账号3','老人姓名3','老人手机3','老人住址3','2022-03-02 17:48:48','2022-03-02 17:48:48','备注3','是','','未支付'),(144,'2022-03-02 09:48:48','4444444444','项目名称4','服务类型4','项目价格4','劳工姓名4','老人账号4','老人姓名4','老人手机4','老人住址4','2022-03-02 17:48:48','2022-03-02 17:48:48','备注4','是','','未支付'),(145,'2022-03-02 09:48:48','5555555555','项目名称5','服务类型5','项目价格5','劳工姓名5','老人账号5','老人姓名5','老人手机5','老人住址5','2022-03-02 17:48:48','2022-03-02 17:48:48','备注5','是','','未支付'),(146,'2022-03-02 09:48:48','6666666666','项目名称6','服务类型6','项目价格6','劳工姓名6','老人账号6','老人姓名6','老人手机6','老人住址6','2022-03-02 17:48:48','2022-03-02 17:48:48','备注6','是','','未支付'),(1646214785995,'2022-03-02 09:53:05','20223217535672316613','项目名称3','服务类型3','3','劳工姓名3','001','xxx老人','12345678911','xxx地址','2022-03-10 00:00:00','2022-03-02 17:53:56','无','是','预约成功','已支付');
/*!40000 ALTER TABLE `fuwugoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuleixing`
--

DROP TABLE IF EXISTS `fuwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='服务类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuleixing`
--

LOCK TABLES `fuwuleixing` WRITE;
/*!40000 ALTER TABLE `fuwuleixing` DISABLE KEYS */;
INSERT INTO `fuwuleixing` VALUES (121,'2022-03-02 09:48:48','服务类型1'),(122,'2022-03-02 09:48:48','服务类型2'),(123,'2022-03-02 09:48:48','服务类型3'),(124,'2022-03-02 09:48:48','服务类型4'),(125,'2022-03-02 09:48:48','服务类型5'),(126,'2022-03-02 09:48:48','服务类型6');
/*!40000 ALTER TABLE `fuwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuxiangmu`
--

DROP TABLE IF EXISTS `fuwuxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `fuwuleixing` varchar(200) NOT NULL COMMENT '服务类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangmujiage` int(11) NOT NULL COMMENT '项目价格',
  `laogongxingming` varchar(200) DEFAULT NULL COMMENT '劳工姓名',
  `xiangmuxiangqing` longtext COMMENT '项目详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='服务项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuxiangmu`
--

LOCK TABLES `fuwuxiangmu` WRITE;
/*!40000 ALTER TABLE `fuwuxiangmu` DISABLE KEYS */;
INSERT INTO `fuwuxiangmu` VALUES (131,'2022-03-02 09:48:48','项目名称1','服务类型1','upload/fuwuxiangmu_tupian1.jpg',1,'劳工姓名1','项目详情1'),(132,'2022-03-02 09:48:48','项目名称2','服务类型2','upload/fuwuxiangmu_tupian2.jpg',2,'劳工姓名2','项目详情2'),(133,'2022-03-02 09:48:48','项目名称3','服务类型3','upload/fuwuxiangmu_tupian3.jpg',3,'劳工姓名3','项目详情3'),(134,'2022-03-02 09:48:48','项目名称4','服务类型4','upload/fuwuxiangmu_tupian4.jpg',4,'劳工姓名4','项目详情4'),(135,'2022-03-02 09:48:48','项目名称5','服务类型5','upload/fuwuxiangmu_tupian5.jpg',5,'劳工姓名5','项目详情5'),(136,'2022-03-02 09:48:48','项目名称6','服务类型6','upload/fuwuxiangmu_tupian6.jpg',6,'劳工姓名6','项目详情6');
/*!40000 ALTER TABLE `fuwuxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongfenlei`
--

DROP TABLE IF EXISTS `huodongfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongfenlei` varchar(200) DEFAULT NULL COMMENT '活动分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214960126 DEFAULT CHARSET=utf8 COMMENT='活动分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongfenlei`
--

LOCK TABLES `huodongfenlei` WRITE;
/*!40000 ALTER TABLE `huodongfenlei` DISABLE KEYS */;
INSERT INTO `huodongfenlei` VALUES (51,'2022-03-02 09:48:48','活动分类1'),(52,'2022-03-02 09:48:48','活动分类2'),(53,'2022-03-02 09:48:48','活动分类3'),(54,'2022-03-02 09:48:48','活动分类4'),(55,'2022-03-02 09:48:48','活动分类5'),(56,'2022-03-02 09:48:48','活动分类6'),(1646214960125,'2022-03-02 09:55:59','A分类');
/*!40000 ALTER TABLE `huodongfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `huodongfenlei` varchar(200) DEFAULT NULL COMMENT '活动分类',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongneirong` longtext COMMENT '活动内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (61,'2022-03-02 09:48:48','活动标题1','upload/huodongxinxi_fengmian1.jpg','活动分类1','2022-03-02','2022-03-02','活动地点1','活动内容1'),(62,'2022-03-02 09:48:48','活动标题2','upload/huodongxinxi_fengmian2.jpg','活动分类2','2022-03-02','2022-03-02','活动地点2','活动内容2'),(63,'2022-03-02 09:48:48','活动标题3','upload/huodongxinxi_fengmian3.jpg','活动分类3','2022-03-02','2022-03-02','活动地点3','活动内容3'),(64,'2022-03-02 09:48:48','活动标题4','upload/huodongxinxi_fengmian4.jpg','活动分类4','2022-03-02','2022-03-02','活动地点4','活动内容4'),(65,'2022-03-02 09:48:48','活动标题5','upload/huodongxinxi_fengmian5.jpg','活动分类5','2022-03-02','2022-03-02','活动地点5','活动内容5'),(66,'2022-03-02 09:48:48','活动标题6','upload/huodongxinxi_fengmian6.jpg','活动分类6','2022-03-02','2022-03-02','活动地点6','<h1>活动内容6</h1>');
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifenzengjia`
--

DROP TABLE IF EXISTS `jifenzengjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifenzengjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `jifen` int(11) NOT NULL COMMENT '积分',
  `zengjiashijian` datetime DEFAULT NULL COMMENT '增加时间',
  `zengjiashiyou` longtext COMMENT '增加事由',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214890009 DEFAULT CHARSET=utf8 COMMENT='积分增加';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifenzengjia`
--

LOCK TABLES `jifenzengjia` WRITE;
/*!40000 ALTER TABLE `jifenzengjia` DISABLE KEYS */;
INSERT INTO `jifenzengjia` VALUES (171,'2022-03-02 09:48:48','老人账号1','老人姓名1',1,'2022-03-02 17:48:48','增加事由1'),(172,'2022-03-02 09:48:48','老人账号2','老人姓名2',2,'2022-03-02 17:48:48','增加事由2'),(173,'2022-03-02 09:48:48','老人账号3','老人姓名3',3,'2022-03-02 17:48:48','增加事由3'),(174,'2022-03-02 09:48:48','老人账号4','老人姓名4',4,'2022-03-02 17:48:48','增加事由4'),(175,'2022-03-02 09:48:48','老人账号5','老人姓名5',5,'2022-03-02 17:48:48','增加事由5'),(176,'2022-03-02 09:48:48','老人账号6','老人姓名6',6,'2022-03-02 17:48:48','增加事由6'),(1646214890008,'2022-03-02 09:54:49','001','xxx老人',100,'2022-03-02 17:55:34','增加积分');
/*!40000 ALTER TABLE `jifenzengjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jinjiqiuzhu`
--

DROP TABLE IF EXISTS `jinjiqiuzhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jinjiqiuzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenshouji` varchar(200) DEFAULT NULL COMMENT '老人手机',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `qiuzhushijian` datetime DEFAULT NULL COMMENT '求助时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214856537 DEFAULT CHARSET=utf8 COMMENT='紧急求助';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jinjiqiuzhu`
--

LOCK TABLES `jinjiqiuzhu` WRITE;
/*!40000 ALTER TABLE `jinjiqiuzhu` DISABLE KEYS */;
INSERT INTO `jinjiqiuzhu` VALUES (151,'2022-03-02 09:48:48','老人账号1','老人姓名1','老人手机1','位置1','2022-03-02 17:48:48','是',''),(152,'2022-03-02 09:48:48','老人账号2','老人姓名2','老人手机2','位置2','2022-03-02 17:48:48','是',''),(153,'2022-03-02 09:48:48','老人账号3','老人姓名3','老人手机3','位置3','2022-03-02 17:48:48','是',''),(154,'2022-03-02 09:48:48','老人账号4','老人姓名4','老人手机4','位置4','2022-03-02 17:48:48','是',''),(155,'2022-03-02 09:48:48','老人账号5','老人姓名5','老人手机5','位置5','2022-03-02 17:48:48','是',''),(156,'2022-03-02 09:48:48','老人账号6','老人姓名6','老人手机6','位置6','2022-03-02 17:48:48','是',''),(1646214856536,'2022-03-02 09:54:15','001','xxx老人','12345678911','xxxxx地点','2022-03-02 17:55:08','否',NULL);
/*!40000 ALTER TABLE `jinjiqiuzhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiwangbingshi`
--

DROP TABLE IF EXISTS `jiwangbingshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiwangbingshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `guominshi` longtext COMMENT '过敏史',
  `yichuanshi` longtext COMMENT '遗传史',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214946812 DEFAULT CHARSET=utf8 COMMENT='既往病史';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiwangbingshi`
--

LOCK TABLES `jiwangbingshi` WRITE;
/*!40000 ALTER TABLE `jiwangbingshi` DISABLE KEYS */;
INSERT INTO `jiwangbingshi` VALUES (41,'2022-03-02 09:48:48','老人账号1','老人姓名1','性别1','年龄1','过敏史1','遗传史1','2022-03-02'),(42,'2022-03-02 09:48:48','老人账号2','老人姓名2','性别2','年龄2','过敏史2','遗传史2','2022-03-02'),(43,'2022-03-02 09:48:48','老人账号3','老人姓名3','性别3','年龄3','过敏史3','遗传史3','2022-03-02'),(44,'2022-03-02 09:48:48','老人账号4','老人姓名4','性别4','年龄4','过敏史4','遗传史4','2022-03-02'),(45,'2022-03-02 09:48:48','老人账号5','老人姓名5','性别5','年龄5','过敏史5','遗传史5','2022-03-02'),(46,'2022-03-02 09:48:48','老人账号6','老人姓名6','性别6','年龄6','过敏史6','遗传史6','2022-03-02'),(1646214946811,'2022-03-02 09:55:46','001','xxx老人','女','55','aaaa','bbb','2022-03-02');
/*!40000 ALTER TABLE `jiwangbingshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laogong`
--

DROP TABLE IF EXISTS `laogong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laogong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laogongxingming` varchar(200) DEFAULT NULL COMMENT '劳工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gongzuonianling` varchar(200) DEFAULT NULL COMMENT '工作年龄',
  `zhuanzhang` varchar(200) DEFAULT NULL COMMENT '专长',
  `laogongjieshao` longtext COMMENT '劳工介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='劳工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laogong`
--

LOCK TABLES `laogong` WRITE;
/*!40000 ALTER TABLE `laogong` DISABLE KEYS */;
INSERT INTO `laogong` VALUES (111,'2022-03-02 09:48:48','劳工姓名1','男','年龄1','upload/laogong_tupian1.jpg','工作年龄1','专长1','劳工介绍1'),(112,'2022-03-02 09:48:48','劳工姓名2','男','年龄2','upload/laogong_tupian2.jpg','工作年龄2','专长2','劳工介绍2'),(113,'2022-03-02 09:48:48','劳工姓名3','男','年龄3','upload/laogong_tupian3.jpg','工作年龄3','专长3','劳工介绍3'),(114,'2022-03-02 09:48:48','劳工姓名4','男','年龄4','upload/laogong_tupian4.jpg','工作年龄4','专长4','劳工介绍4'),(115,'2022-03-02 09:48:48','劳工姓名5','男','年龄5','upload/laogong_tupian5.jpg','工作年龄5','专长5','劳工介绍5'),(116,'2022-03-02 09:48:48','劳工姓名6','男','年龄6','upload/laogong_tupian6.jpg','工作年龄6','专长6','劳工介绍6');
/*!40000 ALTER TABLE `laogong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoren`
--

DROP TABLE IF EXISTS `laoren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) NOT NULL COMMENT '老人账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `laorenshouji` varchar(200) DEFAULT NULL COMMENT '老人手机',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `laorenzhuzhi` varchar(200) DEFAULT NULL COMMENT '老人住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laorenzhanghao` (`laorenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214726100 DEFAULT CHARSET=utf8 COMMENT='老人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoren`
--

LOCK TABLES `laoren` WRITE;
/*!40000 ALTER TABLE `laoren` DISABLE KEYS */;
INSERT INTO `laoren` VALUES (11,'2022-03-02 09:48:48','老人账号1','123456','老人姓名1','男','年龄1','upload/laoren_zhaopian1.jpg','13823888881',1,'老人住址1'),(12,'2022-03-02 09:48:48','老人账号2','123456','老人姓名2','男','年龄2','upload/laoren_zhaopian2.jpg','13823888882',2,'老人住址2'),(13,'2022-03-02 09:48:48','老人账号3','123456','老人姓名3','男','年龄3','upload/laoren_zhaopian3.jpg','13823888883',3,'老人住址3'),(14,'2022-03-02 09:48:48','老人账号4','123456','老人姓名4','男','年龄4','upload/laoren_zhaopian4.jpg','13823888884',4,'老人住址4'),(15,'2022-03-02 09:48:48','老人账号5','123456','老人姓名5','男','年龄5','upload/laoren_zhaopian5.jpg','13823888885',5,'老人住址5'),(16,'2022-03-02 09:48:48','老人账号6','123456','老人姓名6','男','年龄6','upload/laoren_zhaopian6.jpg','13823888886',6,'老人住址6'),(1646214726099,'2022-03-02 09:52:06','001','001','xxx老人','女','55','upload/1646214741735.jpg','12345678911',90,'xxx地址');
/*!40000 ALTER TABLE `laoren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lipinfafang`
--

DROP TABLE IF EXISTS `lipinfafang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lipinfafang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenshouji` varchar(200) DEFAULT NULL COMMENT '老人手机',
  `jifen` varchar(200) NOT NULL COMMENT '积分',
  `lipin` varchar(200) DEFAULT NULL COMMENT '礼品',
  `lipintupian` varchar(200) DEFAULT NULL COMMENT '礼品图片',
  `fafangshijian` datetime DEFAULT NULL COMMENT '发放时间',
  `fafangren` varchar(200) DEFAULT NULL COMMENT '发放人',
  `fafangshiyou` longtext COMMENT '发放事由',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214911746 DEFAULT CHARSET=utf8 COMMENT='礼品发放';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lipinfafang`
--

LOCK TABLES `lipinfafang` WRITE;
/*!40000 ALTER TABLE `lipinfafang` DISABLE KEYS */;
INSERT INTO `lipinfafang` VALUES (161,'2022-03-02 09:48:48','老人账号1','老人姓名1','老人手机1','积分1','礼品1','upload/lipinfafang_lipintupian1.jpg','2022-03-02 17:48:48','发放人1','发放事由1'),(162,'2022-03-02 09:48:48','老人账号2','老人姓名2','老人手机2','积分2','礼品2','upload/lipinfafang_lipintupian2.jpg','2022-03-02 17:48:48','发放人2','发放事由2'),(163,'2022-03-02 09:48:48','老人账号3','老人姓名3','老人手机3','积分3','礼品3','upload/lipinfafang_lipintupian3.jpg','2022-03-02 17:48:48','发放人3','发放事由3'),(164,'2022-03-02 09:48:48','老人账号4','老人姓名4','老人手机4','积分4','礼品4','upload/lipinfafang_lipintupian4.jpg','2022-03-02 17:48:48','发放人4','发放事由4'),(165,'2022-03-02 09:48:48','老人账号5','老人姓名5','老人手机5','积分5','礼品5','upload/lipinfafang_lipintupian5.jpg','2022-03-02 17:48:48','发放人5','发放事由5'),(166,'2022-03-02 09:48:48','老人账号6','老人姓名6','老人手机6','积分6','礼品6','upload/lipinfafang_lipintupian6.jpg','2022-03-02 17:48:48','发放人6','发放事由6'),(1646214911745,'2022-03-02 09:55:11','001','xxx老人','12345678911','20','A礼品','upload/1646214903278.jpg','2022-03-02 17:55:49','管理员','发放礼品');
/*!40000 ALTER TABLE `lipinfafang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meirijiankang`
--

DROP TABLE IF EXISTS `meirijiankang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meirijiankang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `xueya` varchar(200) DEFAULT NULL COMMENT '血压',
  `xintiao` varchar(200) DEFAULT NULL COMMENT '心跳',
  `jiankangbaogao` varchar(200) DEFAULT NULL COMMENT '健康报告',
  `jianyi` longtext COMMENT '建议',
  `tianjiashijian` date DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214937319 DEFAULT CHARSET=utf8 COMMENT='每日健康';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meirijiankang`
--

LOCK TABLES `meirijiankang` WRITE;
/*!40000 ALTER TABLE `meirijiankang` DISABLE KEYS */;
INSERT INTO `meirijiankang` VALUES (31,'2022-03-02 09:48:48','老人账号1','老人姓名1','性别1','年龄1','体温1','血压1','心跳1','','建议1','2022-03-02'),(32,'2022-03-02 09:48:48','老人账号2','老人姓名2','性别2','年龄2','体温2','血压2','心跳2','','建议2','2022-03-02'),(33,'2022-03-02 09:48:48','老人账号3','老人姓名3','性别3','年龄3','体温3','血压3','心跳3','','建议3','2022-03-02'),(34,'2022-03-02 09:48:48','老人账号4','老人姓名4','性别4','年龄4','体温4','血压4','心跳4','','建议4','2022-03-02'),(35,'2022-03-02 09:48:48','老人账号5','老人姓名5','性别5','年龄5','体温5','血压5','心跳5','','建议5','2022-03-02'),(36,'2022-03-02 09:48:48','老人账号6','老人姓名6','性别6','年龄6','体温6','血压6','心跳6','','建议6','2022-03-02'),(1646214937318,'2022-03-02 09:55:36','001','xxx老人','女','55','37','200','200','upload/1646214931899.docx','建议建议建议建议建议','2022-03-02');
/*!40000 ALTER TABLE `meirijiankang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qinshu`
--

DROP TABLE IF EXISTS `qinshu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qinshu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `qinshuxingming` varchar(200) DEFAULT NULL COMMENT '亲属姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yulaorenguanxi` varchar(200) DEFAULT NULL COMMENT '与老人关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214826453 DEFAULT CHARSET=utf8 COMMENT='亲属';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qinshu`
--

LOCK TABLES `qinshu` WRITE;
/*!40000 ALTER TABLE `qinshu` DISABLE KEYS */;
INSERT INTO `qinshu` VALUES (21,'2022-03-02 09:48:48','老人账号1','亲属姓名1','男','联系方式1','与老人关系1'),(22,'2022-03-02 09:48:48','老人账号2','亲属姓名2','男','联系方式2','与老人关系2'),(23,'2022-03-02 09:48:48','老人账号3','亲属姓名3','男','联系方式3','与老人关系3'),(24,'2022-03-02 09:48:48','老人账号4','亲属姓名4','男','联系方式4','与老人关系4'),(25,'2022-03-02 09:48:48','老人账号5','亲属姓名5','男','联系方式5','与老人关系5'),(26,'2022-03-02 09:48:48','老人账号6','亲属姓名6','男','联系方式6','与老人关系6'),(1646214826452,'2022-03-02 09:53:46','001','A亲属','男','12345678911','父子');
/*!40000 ALTER TABLE `qinshu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpingoumai`
--

DROP TABLE IF EXISTS `shangpingoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpingoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `danjia` int(11) DEFAULT NULL COMMENT '单价',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `laorenzhanghao` varchar(200) DEFAULT NULL COMMENT '老人账号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenshouji` varchar(200) DEFAULT NULL COMMENT '老人手机',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214770266 DEFAULT CHARSET=utf8 COMMENT='商品购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpingoumai`
--

LOCK TABLES `shangpingoumai` WRITE;
/*!40000 ALTER TABLE `shangpingoumai` DISABLE KEYS */;
INSERT INTO `shangpingoumai` VALUES (101,'2022-03-02 09:48:48','1111111111','商品名称1','商品分类1',1,1,'总价1','老人账号1','老人姓名1','老人手机1','2022-03-02 17:48:48','备注1','是','','未支付'),(102,'2022-03-02 09:48:48','2222222222','商品名称2','商品分类2',2,2,'总价2','老人账号2','老人姓名2','老人手机2','2022-03-02 17:48:48','备注2','是','','未支付'),(103,'2022-03-02 09:48:48','3333333333','商品名称3','商品分类3',3,3,'总价3','老人账号3','老人姓名3','老人手机3','2022-03-02 17:48:48','备注3','是','','未支付'),(104,'2022-03-02 09:48:48','4444444444','商品名称4','商品分类4',4,4,'总价4','老人账号4','老人姓名4','老人手机4','2022-03-02 17:48:48','备注4','是','','未支付'),(105,'2022-03-02 09:48:48','5555555555','商品名称5','商品分类5',5,5,'总价5','老人账号5','老人姓名5','老人手机5','2022-03-02 17:48:48','备注5','是','','未支付'),(106,'2022-03-02 09:48:48','6666666666','商品名称6','商品分类6',6,6,'总价6','老人账号6','老人姓名6','老人手机6','2022-03-02 17:48:48','备注6','是','','未支付'),(1646214770265,'2022-03-02 09:52:49','2022321753379014073','商品名称3','商品分类3',2,3,'6','001','xxx老人','12345678911','2022-03-02 17:53:37','无','是','111','已支付');
/*!40000 ALTER TABLE `shangpingoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinjinhuo`
--

DROP TABLE IF EXISTS `shangpinjinhuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinjinhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinhuobianhao` varchar(200) DEFAULT NULL COMMENT '进货编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jinhuodanjia` int(11) NOT NULL COMMENT '进货单价',
  `jinhuozongjia` varchar(200) DEFAULT NULL COMMENT '进货总价',
  `jinhuoshijian` datetime DEFAULT NULL COMMENT '进货时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jinhuobianhao` (`jinhuobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214994334 DEFAULT CHARSET=utf8 COMMENT='商品进货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinjinhuo`
--

LOCK TABLES `shangpinjinhuo` WRITE;
/*!40000 ALTER TABLE `shangpinjinhuo` DISABLE KEYS */;
INSERT INTO `shangpinjinhuo` VALUES (91,'2022-03-02 09:48:48','1111111111','商品名称1',1,1,'进货总价1','2022-03-02 17:48:48','备注1'),(92,'2022-03-02 09:48:48','2222222222','商品名称2',2,2,'进货总价2','2022-03-02 17:48:48','备注2'),(93,'2022-03-02 09:48:48','3333333333','商品名称3',3,3,'进货总价3','2022-03-02 17:48:48','备注3'),(94,'2022-03-02 09:48:48','4444444444','商品名称4',4,4,'进货总价4','2022-03-02 17:48:48','备注4'),(95,'2022-03-02 09:48:48','5555555555','商品名称5',5,5,'进货总价5','2022-03-02 17:48:48','备注5'),(96,'2022-03-02 09:48:48','6666666666','商品名称6',6,6,'进货总价6','2022-03-02 17:48:48','备注6'),(1646214994333,'2022-03-02 09:56:34','1646215043738','商品名称3',20,20,'400','2022-03-02 17:57:23','无');
/*!40000 ALTER TABLE `shangpinjinhuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (71,'2022-03-02 09:48:48','商品类型1'),(72,'2022-03-02 09:48:48','商品类型2'),(73,'2022-03-02 09:48:48','商品类型3'),(74,'2022-03-02 09:48:48','商品类型4'),(75,'2022-03-02 09:48:48','商品类型5'),(76,'2022-03-02 09:48:48','商品类型6');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646214757815 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1646214757814,'2022-03-02 09:52:37',1646214726099,83,'bianlidian','商品名称3','upload/bianlidian_shangpintupian3.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1646214726099,'001','laoren','老人','etv0nyf516lotw9h17v9szrtjgp803vy','2022-03-02 09:52:11','2022-03-02 10:57:46'),(2,1,'abo','users','管理员','r08uey367lu70h8vb3ilk9d63cxisze9','2022-03-02 09:54:25','2022-03-02 10:54:25');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-02 09:48:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-10 21:54:37
