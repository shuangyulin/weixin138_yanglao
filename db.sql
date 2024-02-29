/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmmggaw
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmmggaw` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmmggaw`;

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='社区客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (101,'2021-04-22 00:35:00',1,1,'提问1','回复1',1),(102,'2021-04-22 00:35:00',2,2,'提问2','回复2',2),(103,'2021-04-22 00:35:00',3,3,'提问3','回复3',3),(104,'2021-04-22 00:35:00',4,4,'提问4','回复4',4),(105,'2021-04-22 00:35:00',5,5,'提问5','回复5',5),(106,'2021-04-22 00:35:00',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmmggaw/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmmggaw/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmmggaw/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanfukuan` */

DROP TABLE IF EXISTS `dingdanfukuan`;

CREATE TABLE `dingdanfukuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwudanhao` varchar(200) DEFAULT NULL COMMENT '服务单号',
  `fuwubiaoti` varchar(200) DEFAULT NULL COMMENT '服务标题',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `fuwutupian` varchar(200) DEFAULT NULL COMMENT '服务图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `zhiyuanhao` varchar(200) DEFAULT NULL COMMENT '志愿号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='订单付款';

/*Data for the table `dingdanfukuan` */

insert  into `dingdanfukuan`(`id`,`addtime`,`fuwudanhao`,`fuwubiaoti`,`fuwuleixing`,`fuwutupian`,`zhanghao`,`zhiyuanhao`,`xingming`,`ispay`,`userid`) values (61,'2021-04-22 00:35:00','服务单号1','服务标题1','服务类型1','http://localhost:8080/ssmmggaw/upload/dingdanfukuan_fuwutupian1.jpg','账号1','志愿号1','姓名1','未支付',1),(62,'2021-04-22 00:35:00','服务单号2','服务标题2','服务类型2','http://localhost:8080/ssmmggaw/upload/dingdanfukuan_fuwutupian2.jpg','账号2','志愿号2','姓名2','未支付',2),(63,'2021-04-22 00:35:00','服务单号3','服务标题3','服务类型3','http://localhost:8080/ssmmggaw/upload/dingdanfukuan_fuwutupian3.jpg','账号3','志愿号3','姓名3','未支付',3),(64,'2021-04-22 00:35:00','服务单号4','服务标题4','服务类型4','http://localhost:8080/ssmmggaw/upload/dingdanfukuan_fuwutupian4.jpg','账号4','志愿号4','姓名4','未支付',4),(65,'2021-04-22 00:35:00','服务单号5','服务标题5','服务类型5','http://localhost:8080/ssmmggaw/upload/dingdanfukuan_fuwutupian5.jpg','账号5','志愿号5','姓名5','未支付',5),(66,'2021-04-22 00:35:00','服务单号6','服务标题6','服务类型6','http://localhost:8080/ssmmggaw/upload/dingdanfukuan_fuwutupian6.jpg','账号6','志愿号6','姓名6','未支付',6);

/*Table structure for table `discussfuwuliebiao` */

DROP TABLE IF EXISTS `discussfuwuliebiao`;

CREATE TABLE `discussfuwuliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='服务列表评论表';

/*Data for the table `discussfuwuliebiao` */

insert  into `discussfuwuliebiao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-04-22 00:35:00',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-04-22 00:35:00',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-04-22 00:35:00',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-04-22 00:35:00',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-04-22 00:35:00',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-04-22 00:35:00',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussyanglaozhengce` */

DROP TABLE IF EXISTS `discussyanglaozhengce`;

CREATE TABLE `discussyanglaozhengce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='养老政策评论表';

/*Data for the table `discussyanglaozhengce` */

insert  into `discussyanglaozhengce`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (161,'2021-04-22 00:35:00',1,1,'用户名1','评论内容1','回复内容1'),(162,'2021-04-22 00:35:00',2,2,'用户名2','评论内容2','回复内容2'),(163,'2021-04-22 00:35:00',3,3,'用户名3','评论内容3','回复内容3'),(164,'2021-04-22 00:35:00',4,4,'用户名4','评论内容4','回复内容4'),(165,'2021-04-22 00:35:00',5,5,'用户名5','评论内容5','回复内容5'),(166,'2021-04-22 00:35:00',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='社区论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (111,'2021-04-22 00:35:00','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(112,'2021-04-22 00:35:00','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(113,'2021-04-22 00:35:00','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(114,'2021-04-22 00:35:00','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(115,'2021-04-22 00:35:00','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(116,'2021-04-22 00:35:00','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `fuwudingdan` */

DROP TABLE IF EXISTS `fuwudingdan`;

CREATE TABLE `fuwudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwudanhao` varchar(200) DEFAULT NULL COMMENT '服务单号',
  `fuwubiaoti` varchar(200) DEFAULT NULL COMMENT '服务标题',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `fuwuxiangqing` varchar(200) DEFAULT NULL COMMENT '服务详情',
  `fuwujine` varchar(200) DEFAULT NULL COMMENT '服务金额',
  `fuwutupian` varchar(200) DEFAULT NULL COMMENT '服务图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `zhiyuanhao` varchar(200) DEFAULT NULL COMMENT '志愿号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='服务订单';

/*Data for the table `fuwudingdan` */

insert  into `fuwudingdan`(`id`,`addtime`,`fuwudanhao`,`fuwubiaoti`,`fuwuleixing`,`fuwuxiangqing`,`fuwujine`,`fuwutupian`,`zhanghao`,`zhiyuanhao`,`xingming`,`userid`) values (51,'2021-04-22 00:35:00','服务单号1','服务标题1','服务类型1','服务详情1','服务金额1','http://localhost:8080/ssmmggaw/upload/fuwudingdan_fuwutupian1.jpg','账号1','志愿号1','姓名1',1),(52,'2021-04-22 00:35:00','服务单号2','服务标题2','服务类型2','服务详情2','服务金额2','http://localhost:8080/ssmmggaw/upload/fuwudingdan_fuwutupian2.jpg','账号2','志愿号2','姓名2',2),(53,'2021-04-22 00:35:00','服务单号3','服务标题3','服务类型3','服务详情3','服务金额3','http://localhost:8080/ssmmggaw/upload/fuwudingdan_fuwutupian3.jpg','账号3','志愿号3','姓名3',3),(54,'2021-04-22 00:35:00','服务单号4','服务标题4','服务类型4','服务详情4','服务金额4','http://localhost:8080/ssmmggaw/upload/fuwudingdan_fuwutupian4.jpg','账号4','志愿号4','姓名4',4),(55,'2021-04-22 00:35:00','服务单号5','服务标题5','服务类型5','服务详情5','服务金额5','http://localhost:8080/ssmmggaw/upload/fuwudingdan_fuwutupian5.jpg','账号5','志愿号5','姓名5',5),(56,'2021-04-22 00:35:00','服务单号6','服务标题6','服务类型6','服务详情6','服务金额6','http://localhost:8080/ssmmggaw/upload/fuwudingdan_fuwutupian6.jpg','账号6','志愿号6','姓名6',6);

/*Table structure for table `fuwuleixing` */

DROP TABLE IF EXISTS `fuwuleixing`;

CREATE TABLE `fuwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='服务类型';

/*Data for the table `fuwuleixing` */

insert  into `fuwuleixing`(`id`,`addtime`,`fuwuleixing`) values (31,'2021-04-22 00:35:00','服务类型1'),(32,'2021-04-22 00:35:00','服务类型2'),(33,'2021-04-22 00:35:00','服务类型3'),(34,'2021-04-22 00:35:00','服务类型4'),(35,'2021-04-22 00:35:00','服务类型5'),(36,'2021-04-22 00:35:00','服务类型6');

/*Table structure for table `fuwuliebiao` */

DROP TABLE IF EXISTS `fuwuliebiao`;

CREATE TABLE `fuwuliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwudanhao` varchar(200) DEFAULT NULL COMMENT '服务单号',
  `fuwubiaoti` varchar(200) DEFAULT NULL COMMENT '服务标题',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `fuwuneirong` longtext COMMENT '服务内容',
  `fuwuxiangqing` longtext COMMENT '服务详情',
  `fuwudizhi` varchar(200) DEFAULT NULL COMMENT '服务地址',
  `fuwutupian` varchar(200) DEFAULT NULL COMMENT '服务图片',
  `fuwujine` int(11) DEFAULT NULL COMMENT '服务金额',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fuwudanhao` (`fuwudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='服务列表';

/*Data for the table `fuwuliebiao` */

insert  into `fuwuliebiao`(`id`,`addtime`,`fuwudanhao`,`fuwubiaoti`,`fuwuleixing`,`fuwuneirong`,`fuwuxiangqing`,`fuwudizhi`,`fuwutupian`,`fuwujine`,`zhanghao`,`clicktime`,`clicknum`) values (41,'2021-04-22 00:35:00','服务单号1','服务标题1','服务类型1','服务内容1','服务详情1','服务地址1','http://localhost:8080/ssmmggaw/upload/fuwuliebiao_fuwutupian1.jpg',1,'账号1','2021-04-22 00:35:00',1),(42,'2021-04-22 00:35:00','服务单号2','服务标题2','服务类型2','服务内容2','服务详情2','服务地址2','http://localhost:8080/ssmmggaw/upload/fuwuliebiao_fuwutupian2.jpg',2,'账号2','2021-04-22 00:35:00',2),(43,'2021-04-22 00:35:00','服务单号3','服务标题3','服务类型3','服务内容3','服务详情3','服务地址3','http://localhost:8080/ssmmggaw/upload/fuwuliebiao_fuwutupian3.jpg',3,'账号3','2021-04-22 00:35:00',3),(44,'2021-04-22 00:35:00','服务单号4','服务标题4','服务类型4','服务内容4','服务详情4','服务地址4','http://localhost:8080/ssmmggaw/upload/fuwuliebiao_fuwutupian4.jpg',4,'账号4','2021-04-22 00:35:00',4),(45,'2021-04-22 00:35:00','服务单号5','服务标题5','服务类型5','服务内容5','服务详情5','服务地址5','http://localhost:8080/ssmmggaw/upload/fuwuliebiao_fuwutupian5.jpg',5,'账号5','2021-04-22 00:35:00',5),(46,'2021-04-22 00:35:00','服务单号6','服务标题6','服务类型6','服务内容6','服务详情6','服务地址6','http://localhost:8080/ssmmggaw/upload/fuwuliebiao_fuwutupian6.jpg',6,'账号6','2021-04-22 00:35:00',6);

/*Table structure for table `jifenpaixing` */

DROP TABLE IF EXISTS `jifenpaixing`;

CREATE TABLE `jifenpaixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `paixingbiao` longtext COMMENT '排行表',
  `paixingtu` varchar(200) DEFAULT NULL COMMENT '排行图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='积分排行';

/*Data for the table `jifenpaixing` */

insert  into `jifenpaixing`(`id`,`addtime`,`yuefen`,`paixingbiao`,`paixingtu`) values (81,'2021-04-22 00:35:00','一月','排行表1','http://localhost:8080/ssmmggaw/upload/jifenpaixing_paixingtu1.jpg'),(82,'2021-04-22 00:35:00','一月','排行表2','http://localhost:8080/ssmmggaw/upload/jifenpaixing_paixingtu2.jpg'),(83,'2021-04-22 00:35:00','一月','排行表3','http://localhost:8080/ssmmggaw/upload/jifenpaixing_paixingtu3.jpg'),(84,'2021-04-22 00:35:00','一月','排行表4','http://localhost:8080/ssmmggaw/upload/jifenpaixing_paixingtu4.jpg'),(85,'2021-04-22 00:35:00','一月','排行表5','http://localhost:8080/ssmmggaw/upload/jifenpaixing_paixingtu5.jpg'),(86,'2021-04-22 00:35:00','一月','排行表6','http://localhost:8080/ssmmggaw/upload/jifenpaixing_paixingtu6.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (141,'2021-04-22 00:35:00',1,'用户名1','留言内容1','回复内容1'),(142,'2021-04-22 00:35:00',2,'用户名2','留言内容2','回复内容2'),(143,'2021-04-22 00:35:00',3,'用户名3','留言内容3','回复内容3'),(144,'2021-04-22 00:35:00',4,'用户名4','留言内容4','回复内容4'),(145,'2021-04-22 00:35:00',5,'用户名5','留言内容5','回复内容5'),(146,'2021-04-22 00:35:00',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='健康贴士';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (131,'2021-04-22 00:35:00','标题1','简介1','http://localhost:8080/ssmmggaw/upload/news_picture1.jpg','内容1'),(132,'2021-04-22 00:35:00','标题2','简介2','http://localhost:8080/ssmmggaw/upload/news_picture2.jpg','内容2'),(133,'2021-04-22 00:35:00','标题3','简介3','http://localhost:8080/ssmmggaw/upload/news_picture3.jpg','内容3'),(134,'2021-04-22 00:35:00','标题4','简介4','http://localhost:8080/ssmmggaw/upload/news_picture4.jpg','内容4'),(135,'2021-04-22 00:35:00','标题5','简介5','http://localhost:8080/ssmmggaw/upload/news_picture5.jpg','内容5'),(136,'2021-04-22 00:35:00','标题6','简介6','http://localhost:8080/ssmmggaw/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-22 00:35:00');

/*Table structure for table `yanglaozhengce` */

DROP TABLE IF EXISTS `yanglaozhengce`;

CREATE TABLE `yanglaozhengce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='养老政策';

/*Data for the table `yanglaozhengce` */

insert  into `yanglaozhengce`(`id`,`addtime`,`biaoti`,`neirong`,`fabushijian`,`fengmiantu`,`clicktime`,`clicknum`) values (71,'2021-04-22 00:35:00','标题1','内容1','2021-04-22 00:35:00','http://localhost:8080/ssmmggaw/upload/yanglaozhengce_fengmiantu1.jpg','2021-04-22 00:35:00',1),(72,'2021-04-22 00:35:00','标题2','内容2','2021-04-22 00:35:00','http://localhost:8080/ssmmggaw/upload/yanglaozhengce_fengmiantu2.jpg','2021-04-22 00:35:00',2),(73,'2021-04-22 00:35:00','标题3','内容3','2021-04-22 00:35:00','http://localhost:8080/ssmmggaw/upload/yanglaozhengce_fengmiantu3.jpg','2021-04-22 00:35:00',3),(74,'2021-04-22 00:35:00','标题4','内容4','2021-04-22 00:35:00','http://localhost:8080/ssmmggaw/upload/yanglaozhengce_fengmiantu4.jpg','2021-04-22 00:35:00',4),(75,'2021-04-22 00:35:00','标题5','内容5','2021-04-22 00:35:00','http://localhost:8080/ssmmggaw/upload/yanglaozhengce_fengmiantu5.jpg','2021-04-22 00:35:00',5),(76,'2021-04-22 00:35:00','标题6','内容6','2021-04-22 00:35:00','http://localhost:8080/ssmmggaw/upload/yanglaozhengce_fengmiantu6.jpg','2021-04-22 00:35:00',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (11,'2021-04-22 00:35:00','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmmggaw/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-22 00:35:00','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmmggaw/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-22 00:35:00','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmmggaw/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-22 00:35:00','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmmggaw/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-22 00:35:00','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmmggaw/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-22 00:35:00','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmmggaw/upload/yonghu_zhaopian6.jpg');

/*Table structure for table `zhiyuanzhe` */

DROP TABLE IF EXISTS `zhiyuanzhe`;

CREATE TABLE `zhiyuanzhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiyuanhao` varchar(200) NOT NULL COMMENT '志愿号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhiyuanhao` (`zhiyuanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='志愿者';

/*Data for the table `zhiyuanzhe` */

insert  into `zhiyuanzhe`(`id`,`addtime`,`zhiyuanhao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (21,'2021-04-22 00:35:00','志愿者1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmmggaw/upload/zhiyuanzhe_zhaopian1.jpg'),(22,'2021-04-22 00:35:00','志愿者2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmmggaw/upload/zhiyuanzhe_zhaopian2.jpg'),(23,'2021-04-22 00:35:00','志愿者3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmmggaw/upload/zhiyuanzhe_zhaopian3.jpg'),(24,'2021-04-22 00:35:00','志愿者4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmmggaw/upload/zhiyuanzhe_zhaopian4.jpg'),(25,'2021-04-22 00:35:00','志愿者5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmmggaw/upload/zhiyuanzhe_zhaopian5.jpg'),(26,'2021-04-22 00:35:00','志愿者6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmmggaw/upload/zhiyuanzhe_zhaopian6.jpg');

/*Table structure for table `zhiyuanzhejifen` */

DROP TABLE IF EXISTS `zhiyuanzhejifen`;

CREATE TABLE `zhiyuanzhejifen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiyuanzhejifen` varchar(200) DEFAULT NULL COMMENT '志愿者积分',
  `zhiyuanhao` varchar(200) DEFAULT NULL COMMENT '志愿号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jifentu` varchar(200) DEFAULT NULL COMMENT '积分图',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='志愿者积分';

/*Data for the table `zhiyuanzhejifen` */

insert  into `zhiyuanzhejifen`(`id`,`addtime`,`zhiyuanzhejifen`,`zhiyuanhao`,`xingming`,`jifentu`,`userid`) values (91,'2021-04-22 00:35:00','志愿者积分1','志愿号1','姓名1','http://localhost:8080/ssmmggaw/upload/zhiyuanzhejifen_jifentu1.jpg',1),(92,'2021-04-22 00:35:00','志愿者积分2','志愿号2','姓名2','http://localhost:8080/ssmmggaw/upload/zhiyuanzhejifen_jifentu2.jpg',2),(93,'2021-04-22 00:35:00','志愿者积分3','志愿号3','姓名3','http://localhost:8080/ssmmggaw/upload/zhiyuanzhejifen_jifentu3.jpg',3),(94,'2021-04-22 00:35:00','志愿者积分4','志愿号4','姓名4','http://localhost:8080/ssmmggaw/upload/zhiyuanzhejifen_jifentu4.jpg',4),(95,'2021-04-22 00:35:00','志愿者积分5','志愿号5','姓名5','http://localhost:8080/ssmmggaw/upload/zhiyuanzhejifen_jifentu5.jpg',5),(96,'2021-04-22 00:35:00','志愿者积分6','志愿号6','姓名6','http://localhost:8080/ssmmggaw/upload/zhiyuanzhejifen_jifentu6.jpg',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
