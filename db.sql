/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm4rlu0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm4rlu0` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm4rlu0`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616596927385 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-24 19:51:43',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-24 19:51:43',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-24 19:51:43',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-24 19:51:43',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-24 19:51:43',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-24 19:51:43',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616596927384,'2021-03-24 22:42:06',1616596773376,'广东恩华集团','11','11111111111','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'techanxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616596869278 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616597020702 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (81,'2021-03-24 19:51:43',1,1,'提问1','回复1',1),(82,'2021-03-24 19:51:43',2,2,'提问2','回复2',2),(83,'2021-03-24 19:51:43',3,3,'提问3','回复3',3),(84,'2021-03-24 19:51:43',4,4,'提问4','回复4',4),(85,'2021-03-24 19:51:43',5,5,'提问5','回复5',5),(86,'2021-03-24 19:51:43',6,6,'提问6','回复6',6),(1616596907006,'2021-03-24 22:41:46',1616596773376,NULL,'士大夫身份删掉',NULL,0),(1616597020701,'2021-03-24 22:43:39',1616596773376,1,NULL,'地方',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm4rlu0/upload/1616588927085.png'),(2,'picture2','http://localhost:8080/ssm4rlu0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm4rlu0/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussjingdiangonglve` */

DROP TABLE IF EXISTS `discussjingdiangonglve`;

CREATE TABLE `discussjingdiangonglve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='景点攻略评论表';

/*Data for the table `discussjingdiangonglve` */

insert  into `discussjingdiangonglve`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (171,'2021-03-24 19:51:43',1,1,'用户名1','评论内容1','回复内容1'),(172,'2021-03-24 19:51:43',2,2,'用户名2','评论内容2','回复内容2'),(173,'2021-03-24 19:51:43',3,3,'用户名3','评论内容3','回复内容3'),(174,'2021-03-24 19:51:43',4,4,'用户名4','评论内容4','回复内容4'),(175,'2021-03-24 19:51:43',5,5,'用户名5','评论内容5','回复内容5'),(176,'2021-03-24 19:51:43',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussjingdianmeishi` */

DROP TABLE IF EXISTS `discussjingdianmeishi`;

CREATE TABLE `discussjingdianmeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='景点美食评论表';

/*Data for the table `discussjingdianmeishi` */

insert  into `discussjingdianmeishi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (161,'2021-03-24 19:51:43',1,1,'用户名1','评论内容1','回复内容1'),(162,'2021-03-24 19:51:43',2,2,'用户名2','评论内容2','回复内容2'),(163,'2021-03-24 19:51:43',3,3,'用户名3','评论内容3','回复内容3'),(164,'2021-03-24 19:51:43',4,4,'用户名4','评论内容4','回复内容4'),(165,'2021-03-24 19:51:43',5,5,'用户名5','评论内容5','回复内容5'),(166,'2021-03-24 19:51:43',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussjingdianxinxi` */

DROP TABLE IF EXISTS `discussjingdianxinxi`;

CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616596837779 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';

/*Data for the table `discussjingdianxinxi` */

insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-03-24 19:51:43',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-24 19:51:43',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-24 19:51:43',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-24 19:51:43',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-24 19:51:43',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-24 19:51:43',6,6,'用户名6','评论内容6','回复内容6'),(1616596837778,'2021-03-24 22:40:37',26,1616596773376,'11','地方佛挡杀佛','');

/*Table structure for table `discusstechanxinxi` */

DROP TABLE IF EXISTS `discusstechanxinxi`;

CREATE TABLE `discusstechanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='特产信息评论表';

/*Data for the table `discusstechanxinxi` */

insert  into `discusstechanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (181,'2021-03-24 19:51:43',1,1,'用户名1','评论内容1','回复内容1'),(182,'2021-03-24 19:51:43',2,2,'用户名2','评论内容2','回复内容2'),(183,'2021-03-24 19:51:43',3,3,'用户名3','评论内容3','回复内容3'),(184,'2021-03-24 19:51:43',4,4,'用户名4','评论内容4','回复内容4'),(185,'2021-03-24 19:51:43',5,5,'用户名5','评论内容5','回复内容5'),(186,'2021-03-24 19:51:43',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jingdiangonglve` */

DROP TABLE IF EXISTS `jingdiangonglve`;

CREATE TABLE `jingdiangonglve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonglvebiaoti` varchar(200) DEFAULT NULL COMMENT '攻略标题',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `chufachengshi` varchar(200) DEFAULT NULL COMMENT '出发城市',
  `xingchengtianshu` int(11) DEFAULT NULL COMMENT '行程天数',
  `xingchengjuli` int(11) DEFAULT NULL COMMENT '行程距离',
  `jiaotonggongju` varchar(200) DEFAULT NULL COMMENT '交通工具',
  `xingchengluxian` longtext COMMENT '行程路线',
  `jingdianfengmian` varchar(200) DEFAULT NULL COMMENT '景点封面',
  `gonglvexiangqing` longtext COMMENT '攻略详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616588883144 DEFAULT CHARSET=utf8 COMMENT='景点攻略';

/*Data for the table `jingdiangonglve` */

insert  into `jingdiangonglve`(`id`,`addtime`,`gonglvebiaoti`,`jingdianmingcheng`,`chufachengshi`,`xingchengtianshu`,`xingchengjuli`,`jiaotonggongju`,`xingchengluxian`,`jingdianfengmian`,`gonglvexiangqing`,`thumbsupnum`,`crazilynum`) values (51,'2021-03-24 19:51:43','攻略标题1','景点名称1','出发城市1',1,1,'汽车','行程路线1','http://localhost:8080/ssm4rlu0/upload/jingdiangonglve_jingdianfengmian1.jpg','攻略详情1',1,1),(52,'2021-03-24 19:51:43','攻略标题2','景点名称2','出发城市2',2,2,'汽车','行程路线2','http://localhost:8080/ssm4rlu0/upload/jingdiangonglve_jingdianfengmian2.jpg','攻略详情2',2,2),(53,'2021-03-24 19:51:43','攻略标题3','景点名称3','出发城市3',3,3,'汽车','行程路线3','http://localhost:8080/ssm4rlu0/upload/jingdiangonglve_jingdianfengmian3.jpg','攻略详情3',3,3),(54,'2021-03-24 19:51:43','攻略标题4','景点名称4','出发城市4',4,4,'汽车','行程路线4','http://localhost:8080/ssm4rlu0/upload/jingdiangonglve_jingdianfengmian4.jpg','攻略详情4',4,4),(55,'2021-03-24 19:51:43','攻略标题5','景点名称5','出发城市5',5,5,'汽车','行程路线5','http://localhost:8080/ssm4rlu0/upload/jingdiangonglve_jingdianfengmian5.jpg','攻略详情5',5,5),(56,'2021-03-24 19:51:43','攻略标题6','景点名称6','出发城市6',6,6,'汽车','行程路线6','http://localhost:8080/ssm4rlu0/upload/jingdiangonglve_jingdianfengmian6.jpg','攻略详情6',6,6),(1616588883143,'2021-03-24 20:28:02','水电费水电费','电风扇','水电费删掉',5,1000,'汽车','胜多负少发送到','http://localhost:8080/ssm4rlu0/upload/1616588874858.jpg','<p>水电费删掉水电费删掉删掉f<img style=\"width:100%;\" src=\"http://localhost:8080/ssm4rlu0/upload/1616588881289.jpg\"></p>',0,1);

/*Table structure for table `jingdianmeishi` */

DROP TABLE IF EXISTS `jingdianmeishi`;

CREATE TABLE `jingdianmeishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishileixing` varchar(200) DEFAULT NULL COMMENT '美食类型',
  `meishitupian` varchar(200) DEFAULT NULL COMMENT '美食图片',
  `meishijieshao` longtext COMMENT '美食介绍',
  `meishixiangqing` longtext COMMENT '美食详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616588855072 DEFAULT CHARSET=utf8 COMMENT='景点美食';

/*Data for the table `jingdianmeishi` */

insert  into `jingdianmeishi`(`id`,`addtime`,`meishimingcheng`,`meishileixing`,`meishitupian`,`meishijieshao`,`meishixiangqing`,`thumbsupnum`,`crazilynum`,`price`) values (31,'2021-03-24 19:51:43','美食名称1','美食类型1','http://localhost:8080/ssm4rlu0/upload/jingdianmeishi_meishitupian1.jpg','美食介绍1','美食详情1',1,1,99.9),(32,'2021-03-24 19:51:43','美食名称2','美食类型2','http://localhost:8080/ssm4rlu0/upload/jingdianmeishi_meishitupian2.jpg','美食介绍2','美食详情2',2,2,99.9),(33,'2021-03-24 19:51:43','美食名称3','美食类型3','http://localhost:8080/ssm4rlu0/upload/jingdianmeishi_meishitupian3.jpg','美食介绍3','美食详情3',3,3,99.9),(34,'2021-03-24 19:51:43','美食名称4','美食类型4','http://localhost:8080/ssm4rlu0/upload/jingdianmeishi_meishitupian4.jpg','美食介绍4','美食详情4',4,4,99.9),(35,'2021-03-24 19:51:43','美食名称5','美食类型5','http://localhost:8080/ssm4rlu0/upload/jingdianmeishi_meishitupian5.jpg','美食介绍5','美食详情5',5,5,99.9),(36,'2021-03-24 19:51:43','美食名称6','美食类型6','http://localhost:8080/ssm4rlu0/upload/jingdianmeishi_meishitupian6.jpg','美食介绍6','美食详情6',6,6,99.9),(1616588855071,'2021-03-24 20:27:34','水电费水电费','川菜','http://localhost:8080/ssm4rlu0/upload/1616588844438.png','对方水电费','<p>水电费删掉水电费水电费打算<img style=\"width:100%;\" src=\"http://localhost:8080/ssm4rlu0/upload/1616588853314.jpeg\"></p>',1,0,15);

/*Table structure for table `jingdianxinxi` */

DROP TABLE IF EXISTS `jingdianxinxi`;

CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdianxingji` varchar(200) DEFAULT NULL COMMENT '景点星级',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `yingyeshijian` varchar(200) DEFAULT NULL COMMENT '营业时间',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianmingcheng` (`jingdianmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=1616588823470 DEFAULT CHARSET=utf8 COMMENT='景点信息';

/*Data for the table `jingdianxinxi` */

insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiantupian`,`jingdianxingji`,`jingdiandizhi`,`yingyeshijian`,`zhuyishixiang`,`jingdianjieshao`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (21,'2021-03-24 19:51:43','景点名称1','景点类型1','http://localhost:8080/ssm4rlu0/upload/jingdianxinxi_jingdiantupian1.jpg','A','景点地址1','营业时间1','注意事项1','景点介绍1',1,1,'2021-03-24 19:51:43',1,99.9),(22,'2021-03-24 19:51:43','景点名称2','景点类型2','http://localhost:8080/ssm4rlu0/upload/jingdianxinxi_jingdiantupian2.jpg','A','景点地址2','营业时间2','注意事项2','景点介绍2',2,2,'2021-03-24 22:40:40',3,99.9),(23,'2021-03-24 19:51:43','景点名称3','景点类型3','http://localhost:8080/ssm4rlu0/upload/jingdianxinxi_jingdiantupian3.jpg','A','景点地址3','营业时间3','注意事项3','景点介绍3',3,3,'2021-03-24 19:51:43',3,99.9),(24,'2021-03-24 19:51:43','景点名称4','景点类型4','http://localhost:8080/ssm4rlu0/upload/jingdianxinxi_jingdiantupian4.jpg','A','景点地址4','营业时间4','注意事项4','景点介绍4',4,4,'2021-03-24 19:51:43',4,99.9),(25,'2021-03-24 19:51:43','景点名称5','景点类型5','http://localhost:8080/ssm4rlu0/upload/jingdianxinxi_jingdiantupian5.jpg','A','景点地址5','营业时间5','注意事项5','景点介绍5',5,5,'2021-03-24 19:51:43',5,99.9),(26,'2021-03-24 19:51:43','景点名称6','景点类型6','http://localhost:8080/ssm4rlu0/upload/jingdianxinxi_jingdiantupian6.jpg','A','景点地址6','营业时间6','注意事项6','景点介绍6',6,7,'2021-03-24 22:40:42',10,99.9),(1616588823469,'2021-03-24 20:27:03','电风扇','第三方','http://localhost:8080/ssm4rlu0/upload/1616588806448.png','AAA','第三方士大夫','水电费水电费水电费是地方','第三方是非得失水电费','<p>水电费打算水电费<img src=\"http://localhost:8080/ssm4rlu0/upload/1616588817842.png\"><img src=\"http://localhost:8080/ssm4rlu0/upload/1616588821812.jpg\"></p>',0,0,'2021-03-24 22:40:26',1,15);

/*Table structure for table `meishileixing` */

DROP TABLE IF EXISTS `meishileixing`;

CREATE TABLE `meishileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616588833919 DEFAULT CHARSET=utf8 COMMENT='美食类型';

/*Data for the table `meishileixing` */

insert  into `meishileixing`(`id`,`addtime`,`leixing`) values (41,'2021-03-24 19:51:43','类型1'),(42,'2021-03-24 19:51:43','类型2'),(43,'2021-03-24 19:51:43','类型3'),(44,'2021-03-24 19:51:43','类型4'),(45,'2021-03-24 19:51:43','类型5'),(46,'2021-03-24 19:51:43','类型6'),(1616588833918,'2021-03-24 20:27:13','川菜');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616596972785 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (141,'2021-03-24 19:51:43',1,'用户名1','留言内容1','回复内容1'),(142,'2021-03-24 19:51:43',2,'用户名2','留言内容2','回复内容2'),(143,'2021-03-24 19:51:43',3,'用户名3','留言内容3','回复内容3水电费水电费删掉'),(144,'2021-03-24 19:51:43',4,'用户名4','留言内容4','回复内容4'),(145,'2021-03-24 19:51:43',5,'用户名5','留言内容5','回复内容5'),(146,'2021-03-24 19:51:43',6,'用户名6','留言内容6','回复内容6'),(1616596972784,'2021-03-24 22:42:52',1616596773376,'11','水电费水电费','水电费');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616588952270 DEFAULT CHARSET=utf8 COMMENT='景点资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (131,'2021-03-24 19:51:43','标题1','简介1','http://localhost:8080/ssm4rlu0/upload/news_picture1.jpg','内容1'),(132,'2021-03-24 19:51:43','标题2','简介2','http://localhost:8080/ssm4rlu0/upload/news_picture2.jpg','内容2'),(133,'2021-03-24 19:51:43','标题3','简介3','http://localhost:8080/ssm4rlu0/upload/news_picture3.jpg','内容3'),(134,'2021-03-24 19:51:43','标题4','简介4','http://localhost:8080/ssm4rlu0/upload/news_picture4.jpg','内容4'),(135,'2021-03-24 19:51:43','标题5','简介5','http://localhost:8080/ssm4rlu0/upload/news_picture5.jpg','内容5'),(136,'2021-03-24 19:51:43','标题6','简介6','http://localhost:8080/ssm4rlu0/upload/news_picture6.jpg','内容6'),(1616588952269,'2021-03-24 20:29:11','水电费','水电费水电费','http://localhost:8080/ssm4rlu0/upload/1616588944639.png','<p>第三方水电费发送到<img src=\"http://localhost:8080/ssm4rlu0/upload/1616588949795.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'techanxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616596951399 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616596951263,'2021-03-24 22:42:30','20213242242221763105','jingdianmeishi',1616596773376,1616588855071,'水电费水电费','http://localhost:8080/ssm4rlu0/upload/1616588844438.png',1,15,15,15,15,1,'已完成','广东恩华集团'),(1616596951377,'2021-03-24 22:42:31','20213242242226111270','jingdianxinxi',1616596773376,1616588823469,'电风扇','http://localhost:8080/ssm4rlu0/upload/1616588806448.png',2,15,15,30,30,1,'已发货','广东恩华集团'),(1616596951398,'2021-03-24 22:42:31','20213242242230017241','techanxinxi',1616596773376,1616588907536,'水电费删掉','http://localhost:8080/ssm4rlu0/upload/1616588898464.png',2,15,15,30,30,1,'已支付','广东恩华集团');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616596850842 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616596850841,'2021-03-24 22:40:50',1616596773376,33,'jingdianmeishi','美食名称3','http://localhost:8080/ssm4rlu0/upload/jingdianmeishi_meishitupian3.jpg');

/*Table structure for table `techanleixing` */

DROP TABLE IF EXISTS `techanleixing`;

CREATE TABLE `techanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `techanleixing` varchar(200) DEFAULT NULL COMMENT '特产类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616588888424 DEFAULT CHARSET=utf8 COMMENT='特产类型';

/*Data for the table `techanleixing` */

insert  into `techanleixing`(`id`,`addtime`,`techanleixing`) values (71,'2021-03-24 19:51:43','特产类型1'),(72,'2021-03-24 19:51:43','特产类型2'),(73,'2021-03-24 19:51:43','特产类型3'),(74,'2021-03-24 19:51:43','特产类型4'),(75,'2021-03-24 19:51:43','特产类型5'),(76,'2021-03-24 19:51:43','特产类型6'),(1616588888423,'2021-03-24 20:28:07','水电费水电费');

/*Table structure for table `techanxinxi` */

DROP TABLE IF EXISTS `techanxinxi`;

CREATE TABLE `techanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `techanmingcheng` varchar(200) NOT NULL COMMENT '特产名称',
  `techanleixing` varchar(200) NOT NULL COMMENT '特产类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `techanxiangqing` longtext COMMENT '特产详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616588907537 DEFAULT CHARSET=utf8 COMMENT='特产信息';

/*Data for the table `techanxinxi` */

insert  into `techanxinxi`(`id`,`addtime`,`techanmingcheng`,`techanleixing`,`tupian`,`shengchanriqi`,`baozhiqi`,`techanxiangqing`,`thumbsupnum`,`crazilynum`,`price`) values (61,'2021-03-24 19:51:43','特产名称1','特产类型1','http://localhost:8080/ssm4rlu0/upload/techanxinxi_tupian1.jpg','2021-03-24','保质期1','特产详情1',1,1,99.9),(62,'2021-03-24 19:51:43','特产名称2','特产类型2','http://localhost:8080/ssm4rlu0/upload/techanxinxi_tupian2.jpg','2021-03-24','保质期2','特产详情2',2,2,99.9),(63,'2021-03-24 19:51:43','特产名称3','特产类型3','http://localhost:8080/ssm4rlu0/upload/techanxinxi_tupian3.jpg','2021-03-24','保质期3','特产详情3',3,3,99.9),(64,'2021-03-24 19:51:43','特产名称4','特产类型4','http://localhost:8080/ssm4rlu0/upload/techanxinxi_tupian4.jpg','2021-03-24','保质期4','特产详情4',4,4,99.9),(65,'2021-03-24 19:51:43','特产名称5','特产类型5','http://localhost:8080/ssm4rlu0/upload/techanxinxi_tupian5.jpg','2021-03-24','保质期5','特产详情5',5,5,99.9),(66,'2021-03-24 19:51:43','特产名称6','特产类型6','http://localhost:8080/ssm4rlu0/upload/techanxinxi_tupian6.jpg','2021-03-24','保质期6','特产详情6',6,6,99.9),(1616588907536,'2021-03-24 20:28:26','水电费删掉','水电费水电费','http://localhost:8080/ssm4rlu0/upload/1616588898464.png','2021-03-24','18','<p>水电费删掉水电费删掉</p>',0,0,15);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','x2r4vbup34y3rf56drtfwjfj79ctihef','2021-03-24 20:26:23','2021-03-24 23:43:21'),(2,1616596773376,'11','youke','游客','yvdncr1bwukw4gq0bk90cpfwqzrwzh6f','2021-03-24 22:39:41','2021-03-24 23:44:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-24 19:51:43');

/*Table structure for table `youke` */

DROP TABLE IF EXISTS `youke`;

CREATE TABLE `youke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616596773377 DEFAULT CHARSET=utf8 COMMENT='游客';

/*Data for the table `youke` */

insert  into `youke`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`money`) values (11,'2021-03-24 19:51:43','游客1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm4rlu0/upload/youke_zhaopian1.jpg',100),(12,'2021-03-24 19:51:43','游客2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm4rlu0/upload/youke_zhaopian2.jpg',100),(13,'2021-03-24 19:51:43','游客3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm4rlu0/upload/youke_zhaopian3.jpg',100),(14,'2021-03-24 19:51:43','游客4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm4rlu0/upload/youke_zhaopian4.jpg',100),(15,'2021-03-24 19:51:43','游客5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm4rlu0/upload/youke_zhaopian5.jpg',100),(16,'2021-03-24 19:51:43','游客6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm4rlu0/upload/youke_zhaopian6.jpg',100),(1616596773376,'2021-03-24 22:39:33','11','11','删掉','11','男','11112222111','11@qq.com','http://localhost:8080/ssm4rlu0/upload/1616596886219.jpg',4925);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
