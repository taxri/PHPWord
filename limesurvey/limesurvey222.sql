# Host: localhost  (Version: 5.5.53)
# Date: 2019-06-26 07:58:50
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "lime_answers"
#

DROP TABLE IF EXISTS `lime_answers`;
CREATE TABLE `lime_answers` (
  `qid` int(11) NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL,
  `assessment_value` int(11) NOT NULL DEFAULT '0',
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `scale_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`,`code`,`language`,`scale_id`),
  KEY `lime_answers_idx2` (`sortorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_answers"
#

/*!40000 ALTER TABLE `lime_answers` DISABLE KEYS */;
INSERT INTO `lime_answers` VALUES (4,'A1','A1: 男',1,0,'zh-Hans',0),(4,'A2','A2:女',2,0,'zh-Hans',0),(6,'A1','A1:正常',1,0,'zh-Hans',0),(6,'A2','A2:异常',2,0,'zh-Hans',0),(9,'A1','A1:反应良好',1,0,'zh-Hans',0),(9,'A2','A2:偶有反应',2,0,'zh-Hans',0),(9,'A3','A3:无反应',3,0,'zh-Hans',0),(9,'A4','A4:选择性反应',4,0,'zh-Hans',0),(10,'A1','A1:正常',1,0,'zh-Hans',0),(10,'A2','A2:异常',2,0,'zh-Hans',0),(11,'A1','A1:个人助听器',1,0,'zh-Hans',0),(11,'A2','A2:调频助听器',2,0,'zh-Hans',0),(11,'A3','A3:人工电子耳',3,0,'zh-Hans',0),(13,'A1','A1:反应良好',1,0,'zh-Hans',0),(13,'A2','A2:偶有反应',2,0,'zh-Hans',0),(13,'A3','A3:无反应',3,0,'zh-Hans',0),(14,'A1','A1:正常',1,0,'zh-Hans',0),(14,'A2','A2:缺乏反应',2,0,'zh-Hans',0),(14,'A3','A3:过度排斥',3,0,'zh-Hans',0),(24,'A1','A1:主动沟通',1,0,'zh-Hans',0),(24,'A2','A2:缺乏主动，有被动响应',2,0,'zh-Hans',0),(24,'A3','A3:缺乏沟通意图',3,0,'zh-Hans',0),(25,'A1','A1:良好',1,0,'zh-Hans',0),(25,'A2','A2:只与特定人互动',2,0,'zh-Hans',0),(25,'A3','A3:偶尔出现互动行为',3,0,'zh-Hans',0),(25,'A4','A4:缺乏互动行为',4,0,'zh-Hans',0),(26,'A1','A1:完全被理解',1,0,'zh-Hans',0),(26,'A2','A2:部分被理解',2,0,'zh-Hans',0),(26,'A3','A3:照顾者理解',3,0,'zh-Hans',0),(26,'A4','A4:无法理解',4,0,'zh-Hans',0),(31,'A1','A1:控制良好',1,0,'zh-Hans',0),(31,'A2','A2:偶尔流口水',2,0,'zh-Hans',0),(31,'A3','A3:有时流口水',3,0,'zh-Hans',0),(31,'A4','A4:经常流口水',4,0,'zh-Hans',0),(32,'A1','A1:无',1,0,'zh-Hans',0),(32,'A2','A2:仅嘴角微渗',2,0,'zh-Hans',0),(32,'A3','A3:流至下巴',3,0,'zh-Hans',0),(32,'A4','A4:流至胸口',4,0,'zh-Hans',0),(33,'A1','A1:可以进食任何食物',1,0,'zh-Hans',0),(33,'A2','A2:爱吃硬食',2,0,'zh-Hans',0),(33,'A3','A3:只吃软食',3,0,'zh-Hans',0),(33,'A4','A4:只吃流质',4,0,'zh-Hans',0),(33,'A5','A5:常哽呛',5,0,'zh-Hans',0),(34,'A1','A1:直立坐椅子',1,0,'zh-Hans',0),(34,'A2','A2:直立坐站特制辅具',2,0,'zh-Hans',0),(34,'A3','A3:后倾斜躺',3,0,'zh-Hans',0),(34,'A4','A4:平躺',4,0,'zh-Hans',0),(109,'A1','学前',1,0,'zh-Hans',0),(109,'A2','小学',2,0,'zh-Hans',0),(109,'A3','初中',3,0,'zh-Hans',0),(109,'A4','□高中职',4,0,'zh-Hans',0),(110,'A1','学前特幼班 ',1,0,'zh-Hans',0),(110,'A2','普通班 ',2,0,'zh-Hans',0),(110,'A3','身心障碍资源班（含听障资源班、资源小组） ',3,0,'zh-Hans',0),(110,'A4','视障巡回辅导       ',4,0,'zh-Hans',0),(110,'A5','特殊学校　  ',5,0,'zh-Hans',0),(110,'A6','在家教育',6,0,'zh-Hans',0),(113,'A1','父亲',1,0,'zh-Hans',0),(113,'A2','母亲',2,0,'zh-Hans',0),(114,'A1','积极且配合',1,0,'zh-Hans',0),(114,'A2','不积极',2,0,'zh-Hans',0),(116,'A1','良好',1,0,'zh-Hans',0),(116,'A2','需安胎',2,0,'zh-Hans',0),(116,'A3','有并发症',3,0,'zh-Hans',0),(118,'A1','自然产',1,0,'zh-Hans',0),(118,'A2','剖腹产',2,0,'zh-Hans',0),(119,'A1','良好',1,0,'zh-Hans',0),(119,'A2','早产',2,0,'zh-Hans',0),(119,'A3','引产',3,0,'zh-Hans',0),(134,'A1','A1:常常自己一个人玩',1,0,'zh-Hans',0),(134,'A2','A2:只和特定的小朋友玩',2,0,'zh-Hans',0),(134,'A3','A3:会和任何小朋友玩',3,0,'zh-Hans',0);
/*!40000 ALTER TABLE `lime_answers` ENABLE KEYS */;

#
# Structure for table "lime_assessments"
#

DROP TABLE IF EXISTS `lime_assessments`;
CREATE TABLE `lime_assessments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL DEFAULT '0',
  `scope` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maximum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`,`language`),
  KEY `lime_assessments_idx2` (`sid`),
  KEY `lime_assessments_idx3` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_assessments"
#

/*!40000 ALTER TABLE `lime_assessments` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_assessments` ENABLE KEYS */;

#
# Structure for table "lime_asset_version"
#

DROP TABLE IF EXISTS `lime_asset_version`;
CREATE TABLE `lime_asset_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_asset_version"
#

/*!40000 ALTER TABLE `lime_asset_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_asset_version` ENABLE KEYS */;

#
# Structure for table "lime_boxes"
#

DROP TABLE IF EXISTS `lime_boxes`;
CREATE TABLE `lime_boxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `usergroup` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_boxes"
#

/*!40000 ALTER TABLE `lime_boxes` DISABLE KEYS */;
INSERT INTO `lime_boxes` VALUES (1,1,'admin/survey/sa/newsurvey','Create survey','icon-add','Create a new survey','welcome',-2),(2,2,'admin/survey/sa/listsurveys','List surveys','icon-list','List available surveys','welcome',-1),(3,3,'admin/globalsettings','Global settings','icon-settings','Edit global settings','welcome',-2),(4,4,'admin/update','ComfortUpdate','icon-shield','Stay safe and up to date','welcome',-2),(5,5,'https://www.limesurvey.org/limestore','LimeStore','fa fa-cart-plus','LimeSurvey extension marketplace','welcome',-2),(6,6,'admin/themeoptions','Themes','icon-templates','Themes','welcome',-2);
/*!40000 ALTER TABLE `lime_boxes` ENABLE KEYS */;

#
# Structure for table "lime_conditions"
#

DROP TABLE IF EXISTS `lime_conditions`;
CREATE TABLE `lime_conditions` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL DEFAULT '0',
  `cqid` int(11) NOT NULL DEFAULT '0',
  `cfieldname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `scenario` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `lime_conditions_idx` (`qid`),
  KEY `lime_conditions_idx3` (`cqid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_conditions"
#

/*!40000 ALTER TABLE `lime_conditions` DISABLE KEYS */;
INSERT INTO `lime_conditions` VALUES (7,34,3,'653391X6X3','==','刘小军',2),(8,34,6,'653391X1X6','==','A2',1),(10,34,8,'653391X1X8','==','Y',2),(18,34,3,'653391X6X3','==','22',1);
/*!40000 ALTER TABLE `lime_conditions` ENABLE KEYS */;

#
# Structure for table "lime_defaultvalues"
#

DROP TABLE IF EXISTS `lime_defaultvalues`;
CREATE TABLE `lime_defaultvalues` (
  `qid` int(11) NOT NULL DEFAULT '0',
  `scale_id` int(11) NOT NULL DEFAULT '0',
  `sqid` int(11) NOT NULL DEFAULT '0',
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialtype` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `defaultvalue` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`qid`,`specialtype`,`language`,`scale_id`,`sqid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_defaultvalues"
#

/*!40000 ALTER TABLE `lime_defaultvalues` DISABLE KEYS */;
INSERT INTO `lime_defaultvalues` VALUES (15,0,0,'zh-Hans','','Y');
/*!40000 ALTER TABLE `lime_defaultvalues` ENABLE KEYS */;

#
# Structure for table "lime_expression_errors"
#

DROP TABLE IF EXISTS `lime_expression_errors`;
CREATE TABLE `lime_expression_errors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `errortime` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `gseq` int(11) DEFAULT NULL,
  `qseq` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eqn` text COLLATE utf8mb4_unicode_ci,
  `prettyprint` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_expression_errors"
#

/*!40000 ALTER TABLE `lime_expression_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_expression_errors` ENABLE KEYS */;

#
# Structure for table "lime_failed_login_attempts"
#

DROP TABLE IF EXISTS `lime_failed_login_attempts`;
CREATE TABLE `lime_failed_login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_attempt` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_attempts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_failed_login_attempts"
#

/*!40000 ALTER TABLE `lime_failed_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_failed_login_attempts` ENABLE KEYS */;

#
# Structure for table "lime_groups"
#

DROP TABLE IF EXISTS `lime_groups`;
CREATE TABLE `lime_groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_order` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `randomization_group` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `grelevance` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`gid`,`language`),
  KEY `lime_idx1_groups` (`sid`),
  KEY `lime_idx2_groups` (`group_name`),
  KEY `lime_idx3_groups` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_groups"
#

/*!40000 ALTER TABLE `lime_groups` DISABLE KEYS */;
INSERT INTO `lime_groups` VALUES (1,653391,'感官知觉',2,'包括视觉、听觉、 触觉三部分','zh-Hans','',''),(2,653391,'语言理解',3,'多选题','zh-Hans','',''),(3,653391,'语言表达',4,'包括口语能力、说话清晰度、说话流畅度、嗓音特质四部分','zh-Hans','',''),(4,653391,'沟通方式与效度',5,'包括 沟通方式、沟通功能、沟通意图、互动能力、沟通效度 五部分','zh-Hans','',''),(5,653391,'口腔动作与功能',6,'包括双唇、下颌、轮替动作、口水控制、进食状况、进食姿势等','zh-Hans','','( ! is_empty(G006Q001.NAOK)) '),(6,653391,'评估对象基本信息',1,'姓名、性别、年龄、评估日期等','zh-Hans','1',''),(11,793721,'组1：学生基本资料',0,'学生综合情况','zh-Hans','',''),(12,793721,'组2：家庭情况',1,'<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">家庭成员等</font></span></span></span></span></p>\r\n','zh-Hans','',''),(13,793721,'组3：发展史',2,'<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">请家长填写</font></span></span></span></span></p>\r\n','zh-Hans','',''),(14,793721,'组4：当前问题和需求',3,'<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">在校</font></span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">或</font></span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">在幼儿园</font></span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">行为表现</font></span></span></span></span></p>\r\n','zh-Hans','','1111111==22224444445566'),(20,811742,'G2',1,'','zh-Hans','',''),(21,811742,'G3',2,'G3 111112222','zh-Hans','',''),(22,811742,'G33',3,'G33','zh-Hans','',''),(23,811742,'阿斯顿飞',4,'阿斯顿发生发','zh-Hans','','');
/*!40000 ALTER TABLE `lime_groups` ENABLE KEYS */;

#
# Structure for table "lime_labels"
#

DROP TABLE IF EXISTS `lime_labels`;
CREATE TABLE `lime_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL DEFAULT '0',
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8mb4_unicode_ci,
  `sortorder` int(11) NOT NULL,
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `assessment_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lime_idx1_labels` (`code`),
  KEY `lime_idx2_labels` (`sortorder`),
  KEY `lime_idx3_labels` (`language`),
  KEY `lime_idx4_labels` (`lid`,`sortorder`,`language`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_labels"
#

/*!40000 ALTER TABLE `lime_labels` DISABLE KEYS */;
INSERT INTO `lime_labels` VALUES (1,1,'A1','A1:正常',0,'zh-Hans',0),(2,1,'A2','A2:异常',1,'zh-Hans',0),(3,2,'A1','A1:反应良好',0,'zh-Hans',0),(4,2,'A2','A2:偶有反应',1,'zh-Hans',0),(5,2,'A3','A3:无反应',2,'zh-Hans',0);
/*!40000 ALTER TABLE `lime_labels` ENABLE KEYS */;

#
# Structure for table "lime_labelsets"
#

DROP TABLE IF EXISTS `lime_labelsets`;
CREATE TABLE `lime_labelsets` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `languages` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_labelsets"
#

/*!40000 ALTER TABLE `lime_labelsets` DISABLE KEYS */;
INSERT INTO `lime_labelsets` VALUES (1,'正常和异常','zh-Hans'),(2,'机警度','zh-Hans');
/*!40000 ALTER TABLE `lime_labelsets` ENABLE KEYS */;

#
# Structure for table "lime_map_tutorial_users"
#

DROP TABLE IF EXISTS `lime_map_tutorial_users`;
CREATE TABLE `lime_map_tutorial_users` (
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `taken` int(11) DEFAULT '1',
  PRIMARY KEY (`uid`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_map_tutorial_users"
#

/*!40000 ALTER TABLE `lime_map_tutorial_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_map_tutorial_users` ENABLE KEYS */;

#
# Structure for table "lime_notifications"
#

DROP TABLE IF EXISTS `lime_notifications`;
CREATE TABLE `lime_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `importance` int(11) NOT NULL DEFAULT '1',
  `display_class` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `hash` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `first_read` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lime_notifications_pk` (`entity`,`entity_id`,`status`),
  KEY `lime_idx1_notifications` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_notifications"
#

/*!40000 ALTER TABLE `lime_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_notifications` ENABLE KEYS */;

#
# Structure for table "lime_old_survey_653391_20190503085116"
#

DROP TABLE IF EXISTS `lime_old_survey_653391_20190503085116`;
CREATE TABLE `lime_old_survey_653391_20190503085116` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int(11) DEFAULT NULL,
  `startlanguage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X6X3` text COLLATE utf8mb4_unicode_ci,
  `653391X6X4` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X6X5` datetime DEFAULT NULL,
  `653391X1X6` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X8` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X9` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X10` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X11` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X12SQ001_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X12SQ002_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X12SQ003_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X12SQ004_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X13` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X14` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ007` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X15` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X16` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X17` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X18` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X19` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X20` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X21SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X21SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X21SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ007` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ008` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ009` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X24` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X25` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X26` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X29SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X29SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X29SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X30` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X31` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X32` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X33` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X34` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_survey_token_653391_49444` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_old_survey_653391_20190503085116"
#

/*!40000 ALTER TABLE `lime_old_survey_653391_20190503085116` DISABLE KEYS */;
INSERT INTO `lime_old_survey_653391_20190503085116` VALUES (1,NULL,'2019-02-05 00:00:00',6,'zh-Hans',NULL,'刘小军','A1','2019-03-25 00:00:00','A1',NULL,'Y','Y','Y',NULL,NULL,'Y','A2','A1','A1','5','5','7','9','A2','A2','Y','Y','Y','Y',NULL,NULL,NULL,'Y','Y','Y','Y','N','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y',NULL,'Y','Y','Y',NULL,'A2','A3','A2','Y','Y','Y',NULL,NULL,'Y','Y',NULL,NULL,NULL,'Y',NULL,NULL,'Y','A1','A2','A1','A2'),(3,NULL,NULL,1,'zh-Hans','1272295030','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,1,'zh-Hans','973571810',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lime_old_survey_653391_20190503085116` ENABLE KEYS */;

#
# Structure for table "lime_old_survey_653391_20190625125055"
#

DROP TABLE IF EXISTS `lime_old_survey_653391_20190625125055`;
CREATE TABLE `lime_old_survey_653391_20190625125055` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int(11) DEFAULT NULL,
  `startlanguage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X6X3` text COLLATE utf8mb4_unicode_ci,
  `653391X6X4` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X6X5` datetime DEFAULT NULL,
  `653391X1X6` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X8` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X9` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X10` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X11` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X12SQ001_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X12SQ002_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X12SQ003_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X12SQ004_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X13` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X14` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ007` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X15` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X16` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X17` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X18` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X19` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X20` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X21SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X21SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X21SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ007` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ008` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ009` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X24` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X25` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X26` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X29SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X29SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X29SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X30` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X31` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X32` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X33` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X34` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_survey_token_653391_22720` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_old_survey_653391_20190625125055"
#

/*!40000 ALTER TABLE `lime_old_survey_653391_20190625125055` DISABLE KEYS */;
INSERT INTO `lime_old_survey_653391_20190625125055` VALUES (5,NULL,'1980-01-01 00:00:00',1,'zh-Hans','1778262983','刘小军','A1','2019-05-04 00:00:00','A1','','Y','Y','','','','Y','A2','A2','A2','6','3','9','10','A2','A2','','Y','','','Y','Y','','Y','Y','Y','Y','Y','Y','Y','Y','','Y','Y','','','Y','Y','','','','Y','Y','Y','','A2','A3','A2','Y','','Y','Y','','','Y','Y','Y','','Y','Y','','Y','A3','A3','A3','A2'),(6,NULL,NULL,1,'zh-Hans','285709408',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lime_old_survey_653391_20190625125055` ENABLE KEYS */;

#
# Structure for table "lime_old_survey_813343_20190414063110"
#

DROP TABLE IF EXISTS `lime_old_survey_813343_20190414063110`;
CREATE TABLE `lime_old_survey_813343_20190414063110` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int(11) DEFAULT NULL,
  `startlanguage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `813343X7X95` text COLLATE utf8mb4_unicode_ci,
  `813343X7X96` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `813343X7X96comment` text COLLATE utf8mb4_unicode_ci,
  `813343X8X97SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `813343X8X97SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_survey_token_813343_41594` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_old_survey_813343_20190414063110"
#

/*!40000 ALTER TABLE `lime_old_survey_813343_20190414063110` DISABLE KEYS */;
INSERT INTO `lime_old_survey_813343_20190414063110` VALUES (1,NULL,'1980-01-01 00:00:00',2,'zh-Hans','2028049191','4242424','A1','正常后添加些评论','Y','Y');
/*!40000 ALTER TABLE `lime_old_survey_813343_20190414063110` ENABLE KEYS */;

#
# Structure for table "lime_old_tokens_653391_20190625125055"
#

DROP TABLE IF EXISTS `lime_old_tokens_653391_20190625125055`;
CREATE TABLE `lime_old_tokens_653391_20190625125055` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `participant_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `emailstatus` text COLLATE utf8mb4_unicode_ci,
  `token` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `language` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blacklisted` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `remindersent` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `remindercount` int(11) DEFAULT '0',
  `completed` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `usesleft` int(11) DEFAULT '1',
  `validfrom` datetime DEFAULT NULL,
  `validuntil` datetime DEFAULT NULL,
  `mpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `idx_token_token_653391_25376` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_old_tokens_653391_20190625125055"
#

/*!40000 ALTER TABLE `lime_old_tokens_653391_20190625125055` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_old_tokens_653391_20190625125055` ENABLE KEYS */;

#
# Structure for table "lime_participant_attribute"
#

DROP TABLE IF EXISTS `lime_participant_attribute`;
CREATE TABLE `lime_participant_attribute` (
  `participant_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`participant_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_participant_attribute"
#

/*!40000 ALTER TABLE `lime_participant_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participant_attribute` ENABLE KEYS */;

#
# Structure for table "lime_participant_attribute_names"
#

DROP TABLE IF EXISTS `lime_participant_attribute_names`;
CREATE TABLE `lime_participant_attribute_names` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_type` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `defaultname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`attribute_id`,`attribute_type`),
  KEY `lime_idx_participant_attribute_names` (`attribute_id`,`attribute_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_participant_attribute_names"
#

/*!40000 ALTER TABLE `lime_participant_attribute_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participant_attribute_names` ENABLE KEYS */;

#
# Structure for table "lime_participant_attribute_names_lang"
#

DROP TABLE IF EXISTS `lime_participant_attribute_names_lang`;
CREATE TABLE `lime_participant_attribute_names_lang` (
  `attribute_id` int(11) NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`attribute_id`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_participant_attribute_names_lang"
#

/*!40000 ALTER TABLE `lime_participant_attribute_names_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participant_attribute_names_lang` ENABLE KEYS */;

#
# Structure for table "lime_participant_attribute_values"
#

DROP TABLE IF EXISTS `lime_participant_attribute_values`;
CREATE TABLE `lime_participant_attribute_values` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_participant_attribute_values"
#

/*!40000 ALTER TABLE `lime_participant_attribute_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participant_attribute_values` ENABLE KEYS */;

#
# Structure for table "lime_participant_shares"
#

DROP TABLE IF EXISTS `lime_participant_shares`;
CREATE TABLE `lime_participant_shares` (
  `participant_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `share_uid` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `can_edit` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`participant_id`,`share_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_participant_shares"
#

/*!40000 ALTER TABLE `lime_participant_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participant_shares` ENABLE KEYS */;

#
# Structure for table "lime_participants"
#

DROP TABLE IF EXISTS `lime_participants`;
CREATE TABLE `lime_participants` (
  `participant_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blacklisted` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_uid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`participant_id`),
  KEY `lime_idx1_participants` (`firstname`),
  KEY `lime_idx2_participants` (`lastname`),
  KEY `lime_idx3_participants` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_participants"
#

/*!40000 ALTER TABLE `lime_participants` DISABLE KEYS */;
INSERT INTO `lime_participants` VALUES ('7fb0ae2b-429f-4fb7-b9fa-4d0a9d29f141','aa','aaa','taxri@163.com','zh-Hans','N',1,1,'2019-06-01 23:02:22',NULL),('e1a9f6ec-9376-493d-bb0a-ff7bd0f86d1c','bb','bb','taxri@163.com','zh-Hans','N',1,1,'2019-06-01 23:02:59',NULL);
/*!40000 ALTER TABLE `lime_participants` ENABLE KEYS */;

#
# Structure for table "lime_permissions"
#

DROP TABLE IF EXISTS `lime_permissions`;
CREATE TABLE `lime_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_p` int(11) NOT NULL DEFAULT '0',
  `read_p` int(11) NOT NULL DEFAULT '0',
  `update_p` int(11) NOT NULL DEFAULT '0',
  `delete_p` int(11) NOT NULL DEFAULT '0',
  `import_p` int(11) NOT NULL DEFAULT '0',
  `export_p` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_idx1_permissions` (`entity_id`,`entity`,`permission`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_permissions"
#

/*!40000 ALTER TABLE `lime_permissions` DISABLE KEYS */;
INSERT INTO `lime_permissions` VALUES (1,'global',0,1,'superadmin',0,1,0,0,0,0),(2,'survey',653391,1,'responses',1,1,1,1,1,1),(3,'survey',653391,1,'translations',0,1,1,0,0,0),(4,'survey',653391,1,'tokens',1,1,1,1,1,1),(5,'survey',653391,1,'statistics',0,1,0,0,0,0),(6,'survey',653391,1,'assessments',1,1,1,1,0,0),(7,'survey',653391,1,'surveycontent',1,1,1,1,1,1),(8,'survey',653391,1,'survey',0,1,0,1,0,0),(9,'survey',653391,1,'surveysecurity',1,1,1,1,0,0),(10,'survey',653391,1,'surveylocale',0,1,1,0,0,0),(11,'survey',653391,1,'surveyactivation',0,0,1,0,0,0),(12,'survey',653391,1,'surveysettings',0,1,1,0,0,0),(13,'survey',653391,1,'quotas',1,1,1,1,0,0),(26,'survey',793721,1,'responses',1,1,1,1,1,1),(27,'survey',793721,1,'translations',0,1,1,0,0,0),(28,'survey',793721,1,'tokens',1,1,1,1,1,1),(29,'survey',793721,1,'statistics',0,1,0,0,0,0),(30,'survey',793721,1,'assessments',1,1,1,1,0,0),(31,'survey',793721,1,'surveycontent',1,1,1,1,1,1),(32,'survey',793721,1,'survey',0,1,0,1,0,0),(33,'survey',793721,1,'surveysecurity',1,1,1,1,0,0),(34,'survey',793721,1,'surveylocale',0,1,1,0,0,0),(35,'survey',793721,1,'surveyactivation',0,0,1,0,0,0),(36,'survey',793721,1,'surveysettings',0,1,1,0,0,0),(37,'survey',793721,1,'quotas',1,1,1,1,0,0),(38,'survey',811742,1,'responses',1,1,1,1,1,1),(39,'survey',811742,1,'translations',0,1,1,0,0,0),(40,'survey',811742,1,'tokens',1,1,1,1,1,1),(41,'survey',811742,1,'statistics',0,1,0,0,0,0),(42,'survey',811742,1,'assessments',1,1,1,1,0,0),(43,'survey',811742,1,'surveycontent',1,1,1,1,1,1),(44,'survey',811742,1,'survey',0,1,0,1,0,0),(45,'survey',811742,1,'surveysecurity',1,1,1,1,0,0),(46,'survey',811742,1,'surveylocale',0,1,1,0,0,0),(47,'survey',811742,1,'surveyactivation',0,0,1,0,0,0),(48,'survey',811742,1,'surveysettings',0,1,1,0,0,0),(49,'survey',811742,1,'quotas',1,1,1,1,0,0),(50,'global',0,2,'auth_db',0,1,0,0,0,0),(51,'template',0,2,'fruity',0,1,0,0,0,0),(52,'global',0,3,'auth_db',0,1,0,0,0,0),(53,'template',0,3,'fruity',0,1,0,0,0,0);
/*!40000 ALTER TABLE `lime_permissions` ENABLE KEYS */;

#
# Structure for table "lime_plugin_settings"
#

DROP TABLE IF EXISTS `lime_plugin_settings`;
CREATE TABLE `lime_plugin_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_id` int(11) NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_plugin_settings"
#

/*!40000 ALTER TABLE `lime_plugin_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_plugin_settings` ENABLE KEYS */;

#
# Structure for table "lime_plugins"
#

DROP TABLE IF EXISTS `lime_plugins`;
CREATE TABLE `lime_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_plugins"
#

/*!40000 ALTER TABLE `lime_plugins` DISABLE KEYS */;
INSERT INTO `lime_plugins` VALUES (1,'Authdb',1,NULL);
/*!40000 ALTER TABLE `lime_plugins` ENABLE KEYS */;

#
# Structure for table "lime_question_attributes"
#

DROP TABLE IF EXISTS `lime_question_attributes`;
CREATE TABLE `lime_question_attributes` (
  `qaid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL DEFAULT '0',
  `attribute` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`qaid`),
  KEY `lime_idx1_question_attributes` (`qid`),
  KEY `lime_idx2_question_attributes` (`attribute`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_question_attributes"
#

/*!40000 ALTER TABLE `lime_question_attributes` DISABLE KEYS */;
INSERT INTO `lime_question_attributes` VALUES (1,3,'display_rows','1',NULL),(2,3,'maximum_chars','20',NULL),(3,3,'input_size','20',NULL),(5,100,'text_input_width','6',NULL),(7,102,'text_input_width','6',NULL),(8,103,'display_type','1',NULL),(10,126,'display_type','1',NULL);
/*!40000 ALTER TABLE `lime_question_attributes` ENABLE KEYS */;

#
# Structure for table "lime_questions"
#

DROP TABLE IF EXISTS `lime_questions`;
CREATE TABLE `lime_questions` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `parent_qid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'T',
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preg` text COLLATE utf8mb4_unicode_ci,
  `help` text COLLATE utf8mb4_unicode_ci,
  `other` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `mandatory` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_order` int(11) NOT NULL,
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `scale_id` int(11) NOT NULL DEFAULT '0',
  `same_default` int(11) NOT NULL DEFAULT '0',
  `relevance` text COLLATE utf8mb4_unicode_ci,
  `modulename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`qid`,`language`),
  KEY `lime_idx1_questions` (`sid`),
  KEY `lime_idx2_questions` (`gid`),
  KEY `lime_idx3_questions` (`type`),
  KEY `lime_idx4_questions` (`title`),
  KEY `lime_idx5_questions` (`parent_qid`)
) ENGINE=MyISAM AUTO_INCREMENT=314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_questions"
#

/*!40000 ALTER TABLE `lime_questions` DISABLE KEYS */;
INSERT INTO `lime_questions` VALUES (1,0,653391,2,'M','G002Q001','语言理解','','','N','N',0,'zh-Hans',0,0,'1',NULL),(3,0,653391,6,'S','G006Q001','学生姓名：','','','N','N',0,'zh-Hans',0,0,'1',NULL),(4,0,653391,6,'L','G006Q002','性别：','','','N','N',1,'zh-Hans',0,0,'1',''),(5,0,653391,6,'D','G006Q003','评估日期：','','','N','N',2,'zh-Hans',0,0,'1',NULL),(6,0,653391,1,'L','G001Q001','<h1>1、感官知觉</h1>\r\n\r\n<h2>视觉</h2>\r\n\r\n<p>视力：</p>\r\n','','','N','N',1,'zh-Hans',0,0,'1',NULL),(7,0,653391,1,'M','G001Q002','异常，为：','','','N','N',2,'zh-Hans',0,0,'1',NULL),(8,0,653391,1,'Y','G001Q003','佩戴眼镜：','','','N','N',3,'zh-Hans',0,0,'1',''),(9,0,653391,1,'L','G001Q004','视觉机警度：','','','N','N',4,'zh-Hans',0,0,'1',NULL),(10,0,653391,1,'L','G001Q005','<h3>听觉</h3>\r\n\r\n<p>听力：</p>\r\n','','','N','N',5,'zh-Hans',0,0,'1',NULL),(11,0,653391,1,'L','G001Q006','佩戴：','','','N','N',6,'zh-Hans',0,0,'1',NULL),(12,0,653391,1,':','G001Q007','目前听力状况：','','','N','N',7,'zh-Hans',0,0,'1',NULL),(13,0,653391,1,'L','G001Q008','听觉机警度：','','','N','N',8,'zh-Hans',0,0,'1',NULL),(14,0,653391,1,'L','G001Q009','<h3>触觉：</h3>\r\n\r\n<p>对触碰反应</p>\r\n','','','N','N',9,'zh-Hans',0,0,'1',NULL),(15,0,653391,3,'Y','G003Q001','<h3>口语能力</h3>\r\n\r\n<p>咿呀学语：</p>\r\n','','','N','N',1,'zh-Hans',0,0,'1',NULL),(16,0,653391,3,'Y','G003Q002','使用拟声语','','','N','N',2,'zh-Hans',0,0,'1',NULL),(17,0,653391,3,'Y','G003Q003','使用词汇','','','N','N',3,'zh-Hans',0,0,'1',NULL),(18,0,653391,3,'Y','G003Q004','使用简单句','','','N','N',4,'zh-Hans',0,0,'1',NULL),(19,0,653391,3,'Y','G003Q005','使用复杂句：','','','N','N',5,'zh-Hans',0,0,'1',NULL),(20,0,653391,3,'Y','G003Q006','使用复合句：','','','N','N',6,'zh-Hans',0,0,'1',NULL),(21,0,653391,3,'M','G003Q007','叙述能力','','','N','N',7,'zh-Hans',0,0,'1',NULL),(22,0,653391,4,'M','G004Q001','<h2>沟通方式与效度：</h2>\r\n\r\n<p>沟通方式：</p>\r\n','','','N','N',1,'zh-Hans',0,0,'1',NULL),(23,0,653391,4,'M','G004Q002','沟通功能：','','','N','N',2,'zh-Hans',0,0,'1',NULL),(24,0,653391,4,'L','G004Q003','沟通意图：','','','N','N',3,'zh-Hans',0,0,'1',''),(25,0,653391,4,'L','G004Q004','沟通能力：','','','N','N',4,'zh-Hans',0,0,'1',''),(26,0,653391,4,'L','G004Q005','沟通效度：','','','N','N',5,'zh-Hans',0,0,'1',''),(27,0,653391,5,'M','G005Q001','<h2>口腔动作与功能：</h2>\r\n\r\n<p>双唇：</p>\r\n','','','N','N',1,'zh-Hans',0,0,'1',NULL),(28,0,653391,5,'M','G005Q002','舌头：','','','N','N',2,'zh-Hans',0,0,'1',NULL),(29,0,653391,5,'M','G005Q003','下颌：','','','N','N',3,'zh-Hans',0,0,'1',NULL),(30,0,653391,5,'Y','G005Q004','<p>轮替动作：能否连续发音【abcd】5次</p>\r\n','','','N','N',4,'zh-Hans',0,0,'1',NULL),(31,0,653391,5,'L','G005Q005','<p>口水控制：</p>\r\n\r\n<p>频率：</p>\r\n','','','N','N',5,'zh-Hans',0,0,'1',NULL),(32,0,653391,5,'L','G005Q006','流量：','','','N','N',6,'zh-Hans',0,0,'1',''),(33,0,653391,5,'L','G005Q007','进食状况','','','N','N',7,'zh-Hans',0,0,'1',NULL),(34,0,653391,5,'L','G005Q008','进食姿势：','','','N','N',8,'zh-Hans',0,0,'(((!is_empty(653391X6X3.NAOK) && (653391X6X3.NAOK == 22))) and (653391X1X6.NAOK == \"A2\")) or ((653391X6X3.NAOK == \"刘小军\") and (653391X1X8.NAOK == \"Y\"))',NULL),(35,1,653391,2,'T','SQ001','A1:对自己的名字有反应',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(36,1,653391,2,'T','SQ002','A2:理解环境中的声音',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(37,1,653391,2,'T','SQ003','A3:对熟悉的音乐有反应',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(38,1,653391,2,'T','SQ004','A4:在手势动作下可以遵守简单指令',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(39,1,653391,2,'T','SQ005','A5:理解常见物品功能',NULL,NULL,'N',NULL,5,'zh-Hans',0,0,'1',NULL),(40,1,653391,2,'T','SQ006','A6:可响应简单疑问句',NULL,NULL,'N',NULL,6,'zh-Hans',0,0,'1',NULL),(41,1,653391,2,'T','SQ007','可遵守2步骤的指令',NULL,NULL,'N',NULL,7,'zh-Hans',0,0,'1',NULL),(43,7,653391,1,'T','SQ001','A1:全盲',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(44,7,653391,1,'T','SQ002','A2:近视',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(45,7,653391,1,'T','SQ003','A3:散光',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(46,7,653391,1,'T','SQ004','A4:弱视',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(47,7,653391,1,'T','SQ005','A5:远视',NULL,NULL,'N',NULL,5,'zh-Hans',0,0,'1',NULL),(48,7,653391,1,'T','SQ006','A6:斜视',NULL,NULL,'N',NULL,6,'zh-Hans',0,0,'1',NULL),(49,12,653391,1,'T','SQ001','裸耳 左耳',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(50,12,653391,1,'T','SQ001','听力',NULL,NULL,'N',NULL,1,'zh-Hans',1,0,'',NULL),(51,12,653391,1,'T','SQ002','裸耳 右耳',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(52,12,653391,1,'T','SQ003','矫正后左耳',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(53,12,653391,1,'T','SQ004','矫正后右耳',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(55,21,653391,3,'T','SQ001','A1:会描述连续的图片内容',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(56,21,653391,3,'T','SQ002','A2:会重述熟悉的故事',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(57,21,653391,3,'T','SQ003','A3:能叙述自己的生活经验',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(64,22,653391,4,'T','SQ001','A1:使用口语',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(65,22,653391,4,'T','SQ002','A2:使用手语',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(66,22,653391,4,'T','SQ003','A3:笔谈',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(67,22,653391,4,'T','SQ004','A4:手势动作',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(68,22,653391,4,'T','SQ005','A5:手拿指图片',NULL,NULL,'N',NULL,5,'zh-Hans',0,0,'1',NULL),(69,22,653391,4,'T','SQ006','A6:沟通板',NULL,NULL,'N',NULL,6,'zh-Hans',0,0,'1',NULL),(70,22,653391,4,'T','SQ007','A7:声音',NULL,NULL,'N',NULL,7,'zh-Hans',0,0,'1',NULL),(71,22,653391,4,'T','SQ008','A8:发脾气哭叫',NULL,NULL,'N',NULL,8,'zh-Hans',0,0,'1',NULL),(72,22,653391,4,'T','SQ009','A9:自己拿去',NULL,NULL,'N',NULL,9,'zh-Hans',0,0,'1',NULL),(75,23,653391,4,'T','SQ001','A1:表达需求',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(76,23,653391,4,'T','SQ002','A2:表达情绪',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(77,23,653391,4,'T','SQ003','A3:社交互动',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(78,23,653391,4,'T','SQ004','A4:传递讯息',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(80,27,653391,5,'T','SQ001','A1:会连续发bp',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(81,27,653391,5,'T','SQ002','A2:会吸管',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(82,27,653391,5,'T','SQ003','A3:会噘嘴动作',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(83,27,653391,5,'T','SQ004','A4:会抿嘴动作',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(84,27,653391,5,'T','SQ005','A5:闭合不好',NULL,NULL,'N',NULL,5,'zh-Hans',0,0,'1',NULL),(86,28,653391,5,'T','SQ001','A1:会灵活转动',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(87,28,653391,5,'T','SQ002','A2:会舔上下唇',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(88,28,653391,5,'T','SQ003','A3:能左右移动',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(89,28,653391,5,'T','SQ004','A4:只能往前伸',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(90,28,653391,5,'T','SQ005','A5:无法移动',NULL,NULL,'N',NULL,5,'zh-Hans',0,0,'1',NULL),(92,29,653391,5,'T','SQ001','A1:动作协调，正确咀嚼',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(93,29,653391,5,'T','SQ002','A2:只能上下动咀嚼',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(94,29,653391,5,'T','SQ003','A3:开闭缓慢',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(100,0,793721,11,'S','G1Q01','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">机构</font></span></span><span style=\"font-size:11.0000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">名称</font></span></span></span></span></p>\r\n','','','N','N',1,'zh-Hans',0,0,'1',NULL),(101,0,793721,11,'D','G1Q02','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">填表日期</font></span></span></span></span></p>\r\n','','','N','N',2,'zh-Hans',0,0,'1',''),(102,0,793721,11,'S','G1Q03','<p><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">学生姓名</font></span></span></span></span></p>\r\n','','','N','N',3,'zh-Hans',0,0,'1',NULL),(103,0,793721,11,'G','G1Q04','性别','','','N','N',4,'zh-Hans',0,0,'1',NULL),(104,0,793721,11,'D','G1Q05','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">出生日期</font></span></span></span></span></p>\r\n','','','N','N',5,'zh-Hans',0,0,'1',''),(105,0,793721,11,'S','G1Q06','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">实足年龄</font></span></span></span></span></p>\r\n','','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><u>   </u><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">岁</font></span></span><u>   </u><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">月</font></span></span></span></span></p>\r\n','N','N',6,'zh-Hans',0,0,'1',NULL),(106,0,793721,11,'S','G1Q07','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">班</font></span></span>    <span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">级</font></span></span></span></span></p>\r\n','','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><u>     </u><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">年级</font></span></span><u>     </u><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">班</font></span></span></span></span></p>\r\n','N','N',7,'zh-Hans',0,0,'1',NULL),(107,0,793721,11,'S','G1Q08','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">班级导师</font></span></span></span></span></p>\r\n','','','N','N',8,'zh-Hans',0,0,'1',NULL),(108,0,793721,11,'S','G1Q09','个案管理教师','','','N','N',9,'zh-Hans',0,0,'1',NULL),(109,0,793721,11,'L','G1Q10','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">教育阶段</font></span></span></span></span></p>\r\n','','','N','N',10,'zh-Hans',0,0,'1',''),(110,0,793721,11,'L','G1Q11','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">现在教育安置情形</font></span></span></span></span></p>\r\n','','','N','N',11,'zh-Hans',0,0,'1',NULL),(111,0,793721,11,'M','G1Q12','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">目前医学诊断结果</font></span></span></span></span></p>\r\n','','','Y','N',12,'zh-Hans',0,0,'1',NULL),(112,0,793721,12,';','G2Q01','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">家庭成员</font></span></span></span></span></p>\r\n','','','N','N',1,'zh-Hans',0,0,'1',NULL),(113,0,793721,12,'L','G2Q02','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">主要照顾者</font></span></span></span></span></p>\r\n','','','Y','N',2,'zh-Hans',0,0,'1',NULL),(114,0,793721,12,'L','G2Q03','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">家庭参与度</font></span></span></span></span></p>\r\n','','','N','N',3,'zh-Hans',0,0,'1',NULL),(115,0,793721,12,'T','G2Q04','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">家庭需求</font></span></span></span></span></p>\r\n','','','N','N',4,'zh-Hans',0,0,'1',NULL),(116,0,793721,13,'L','G3Q01','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">母亲怀孕状况</font></span></span></span></span></p>\r\n','','其他，请填写 怀孕期间并发症情况','Y','N',1,'zh-Hans',0,0,'1',NULL),(117,0,793721,13,'S','G3Q02','<span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">怀孕期间曾服药物</font></span></span></span></span>','','','N','N',2,'zh-Hans',0,0,'1',NULL),(118,0,793721,13,'L','G3Q03','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">母亲生产方式</font></span></span></span></span></p>\r\n','','','N','N',3,'zh-Hans',0,0,'1',NULL),(119,0,793721,13,'L','G3Q04','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">母亲生产状况</font></span></span></span></span></p>\r\n','','','Y','N',4,'zh-Hans',0,0,'1',NULL),(120,0,793721,13,'M','G3Q05','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">新生儿的状况</font></span></span></span></span></p>\r\n','','','Y','N',5,'zh-Hans',0,0,'1',NULL),(121,0,793721,13,'M','G3Q0501','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><font face=\"宋体\"><span style=\"font-size: 14px;\">黄疸治疗情况</span></font></p>\r\n','','','N','N',6,'zh-Hans',0,0,'1',NULL),(122,0,793721,13,'N','G3Q0502','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">住保温箱天数</font></span></span></span></span></p>\r\n','','','N','N',7,'zh-Hans',0,0,'1',NULL),(123,0,793721,13,'S','G3Q06','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">出生时体重（千克）</font></span></span></span></span></p>\r\n','','','N','N',8,'zh-Hans',0,0,'1',NULL),(124,0,793721,13,'S','G3Q061','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">现在的体重（千克）</font></span></span></span></span></p>\r\n','','','N','N',9,'zh-Hans',0,0,'1',NULL),(125,0,793721,13,':','G3Q07','条件反应','','','N','N',10,'zh-Hans',0,0,'1',NULL),(126,0,793721,13,'Y','G3Q08','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">儿童疾病史:曾住院或开刀</font></span></span></span></span></p>\r\n','','','N','N',11,'zh-Hans',0,0,'1',NULL),(127,0,793721,13,'S','G3Q09','<p align=\"justify\" class=\"15\" style=\"text-align:justify\"><span style=\"text-justify:inter-ideograph\"><span style=\"font-family: 宋体;\"><span style=\"color: rgb(0, 0, 0);\"><font face=\"宋体\" style=\"\"><span style=\"font-size: 12pt;\">住院或开刀的原因</span></font></span></span></span></p>\r\n','','','N','N',12,'zh-Hans',0,0,'1',NULL),(128,0,793721,13,'P','G3Q10','目前健康状况','','','N','N',13,'zh-Hans',0,0,'1',NULL),(129,0,793721,13,'M','G3Q11','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">教育史</font></span></span></span></span></p>\r\n','','','Y','N',14,'zh-Hans',0,0,'1',NULL),(130,0,793721,13,'S','G3Q1101','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">曾接受早期疗育之医疗院所、机构的训练或治疗，</font></span></span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">其内容为：</font></span></span></span></span></p>\r\n','','','N','N',15,'zh-Hans',0,0,'1',NULL),(131,0,793721,13,'M','G3Q1102','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">曾接受本县专业服务，类别为</font></span></span></span></span></p>\r\n','','','N','N',16,'zh-Hans',0,0,'1',NULL),(132,0,793721,14,'M','G4Q01','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">在校</font></span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">或</font></span></span><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">在幼儿园行为表现</font></span></span></span></span></p>\r\n\r\n<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">喜欢的活动（可复选）</font></span></span></span></span></p>\r\n','','','N','N',1,'zh-Hans',0,0,'1',NULL),(133,0,793721,14,'M','G4Q02','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">情绪表现：</font></span></span></span></span></p>\r\n','','','Y','N',2,'zh-Hans',0,0,'1',NULL),(134,0,793721,14,'L','G4Q03','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">人际互动</font></span></span></span></span></p>\r\n','','','N','N',3,'zh-Hans',0,0,'1',NULL),(135,0,793721,14,'T','G4Q04','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">影响学习参与或生活适应的主要问题：</font></span></span></span></span></p>\r\n','','','N','N',4,'zh-Hans',0,0,'1',NULL),(136,0,793721,14,'T','G4Q05','<p class=\"15\"><span style=\"font-size:12.0000pt\"><span style=\"font-family:宋体\"><span style=\"color:#000000\"><font face=\"宋体\">家长对专业服务的期望（请提出具体需求）</font></span></span></span></p>\r\n','','','N','N',5,'zh-Hans',0,0,'1',NULL),(137,0,793721,14,'U','G4Q06','<p style=\"margin:0pt 0pt 0.0001pt; text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"font-family:等线\"><span style=\"font-size:10.5000pt\"><span style=\"font-family:宋体\"><font face=\"宋体\">教师对专业服务的期望（请提出具体需求）</font></span></span></span></span></p>\r\n','','','N','N',6,'zh-Hans',0,0,'1',NULL),(139,111,793721,11,'T','SQ001','注意力缺陷及过动症',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(140,111,793721,11,'T','SQ002','唐氏症',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(141,111,793721,11,'T','SQ003','Rett症候群',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(142,111,793721,11,'T','SQ004','脑性麻痹',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(143,111,793721,11,'T','SQ005','水脑',NULL,NULL,'N',NULL,5,'zh-Hans',0,0,'1',NULL),(144,111,793721,11,'T','SQ006','小脑症',NULL,NULL,'N',NULL,6,'zh-Hans',0,0,'1',NULL),(145,111,793721,11,'T','SQ007','眼球运动障碍',NULL,NULL,'N',NULL,7,'zh-Hans',0,0,'1',NULL),(146,111,793721,11,'T','SQ008','眼震',NULL,NULL,'N',NULL,8,'zh-Hans',0,0,'1',NULL),(147,111,793721,11,'T','SQ009','脊柱裂',NULL,NULL,'N',NULL,9,'zh-Hans',0,0,'1',NULL),(148,111,793721,11,'T','SQ010','肌肉病变',NULL,NULL,'N',NULL,10,'zh-Hans',0,0,'1',NULL),(149,111,793721,11,'T','SQ011','关节脱臼',NULL,NULL,'N',NULL,11,'zh-Hans',0,0,'1',NULL),(150,111,793721,11,'T','SQ012','心脏病',NULL,NULL,'N',NULL,12,'zh-Hans',0,0,'1',NULL),(151,111,793721,11,'T','SQ013','肾脏病',NULL,NULL,'N',NULL,13,'zh-Hans',0,0,'1',NULL),(152,111,793721,11,'T','SQ014','癫痫',NULL,NULL,'N',NULL,14,'zh-Hans',0,0,'1',NULL),(153,112,793721,12,'T','SQ001','成员1',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(154,112,793721,12,'T','SQ001','称谓           ',NULL,NULL,'N',NULL,1,'zh-Hans',1,0,'',NULL),(155,112,793721,12,'T','SQ002','成员2',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(156,112,793721,12,'T','SQ003','成员3',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(157,112,793721,12,'T','SQ004','成员4',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(158,112,793721,12,'T','SQ002','年龄',NULL,NULL,'N',NULL,2,'zh-Hans',1,0,'',NULL),(159,112,793721,12,'T','SQ003','教育程度 ',NULL,NULL,'N',NULL,3,'zh-Hans',1,0,'',NULL),(160,112,793721,12,'T','SQ004','是否正常（请填写是/否）',NULL,NULL,'N',NULL,4,'zh-Hans',1,0,'',NULL),(161,112,793721,12,'T','SQ005','特殊情形记录',NULL,NULL,'N',NULL,5,'zh-Hans',1,0,'',NULL),(162,120,793721,13,'T','SQ001','有黄疸',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(163,120,793721,13,'T','SQ002','曾住保温箱',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(164,121,793721,13,'T','SQ001','曾经换血',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(165,121,793721,13,'T','SQ002','曾经照紫外线',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(166,121,793721,13,'T','SQ003','曾经有缺氧',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(167,121,793721,13,'T','SQ004','曾急救',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(168,125,793721,13,'T','SQ001','会对母亲有反应',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(169,125,793721,13,'T','SQ001','几岁',NULL,NULL,'N',NULL,1,'zh-Hans',1,0,'',NULL),(170,125,793721,13,'T','SQ002','会抬头',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(171,125,793721,13,'T','SQ003','会自己站',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(172,125,793721,13,'T','SQ004','会自己走',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(173,125,793721,13,'T','SQ005','会自己用汤匙吃饭',NULL,NULL,'N',NULL,5,'zh-Hans',0,0,'1',NULL),(174,125,793721,13,'T','SQ006','会用杯子喝水',NULL,NULL,'N',NULL,6,'zh-Hans',0,0,'1',NULL),(175,125,793721,13,'T','SQ007','会用筷子吃饭',NULL,NULL,'N',NULL,7,'zh-Hans',0,0,'1',NULL),(176,125,793721,13,'T','SQ008','开始叫爸爸或妈妈',NULL,NULL,'N',NULL,8,'zh-Hans',0,0,'1',NULL),(177,125,793721,13,'T','SQ009','会表示要大小便',NULL,NULL,'N',NULL,9,'zh-Hans',0,0,'1',NULL),(178,125,793721,13,'T','SQ010','会自己去大小便',NULL,NULL,'N',NULL,10,'zh-Hans',0,0,'1',NULL),(179,125,793721,13,'T','SQ002','几个月',NULL,NULL,'N',NULL,2,'zh-Hans',1,0,'',NULL),(180,128,793721,13,'T','SQ001','良好 ',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(181,128,793721,13,'T','SQ002','多病 ',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(182,128,793721,13,'T','SQ003','服药治疗中',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(183,129,793721,13,'T','SQ001','曾就读一般幼儿园等学前教育机构',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(184,129,793721,13,'T','SQ002','曾接受早期疗育之医疗院所、机构的训练或治疗',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(185,129,793721,13,'T','SQ003','曾接受本县专业服务',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(186,131,793721,13,'T','SQ001','物理治疗',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(187,131,793721,13,'T','SQ002','职能治疗',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(188,131,793721,13,'T','SQ003','语言治疗',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(189,131,793721,13,'T','SQ004','心理治疗',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(191,132,793721,14,'T','SQ001','A1:画画或美劳课',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(192,132,793721,14,'T','SQ002','A2:音乐或唱游课',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(193,132,793721,14,'T','SQ003','A3:计算机课',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(194,132,793721,14,'T','SQ004','A4:体育课或户外活动 ',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(195,132,793721,14,'T','SQ005','A5:语文课',NULL,NULL,'N',NULL,5,'zh-Hans',0,0,'1',NULL),(196,132,793721,14,'T','SQ006','A6:数学课',NULL,NULL,'N',NULL,6,'zh-Hans',0,0,'1',NULL),(197,132,793721,14,'T','SQ007','A7:自然课',NULL,NULL,'N',NULL,7,'zh-Hans',0,0,'1',NULL),(198,132,793721,14,'T','SQ008','A8:社会课',NULL,NULL,'N',NULL,8,'zh-Hans',0,0,'1',NULL),(199,132,793721,14,'T','SQ009','A9:说话课/朗读',NULL,NULL,'N',NULL,9,'zh-Hans',0,0,'1',NULL),(285,133,793721,14,'T','13001','安静 ',NULL,NULL,'N',NULL,1,'zh-Hans',0,0,'1',NULL),(286,133,793721,14,'T','13002','好动 ',NULL,NULL,'N',NULL,2,'zh-Hans',0,0,'1',NULL),(287,133,793721,14,'T','13003','爱哭 ',NULL,NULL,'N',NULL,3,'zh-Hans',0,0,'1',NULL),(288,133,793721,14,'T','13004','快乐 ',NULL,NULL,'N',NULL,4,'zh-Hans',0,0,'1',NULL),(289,133,793721,14,'T','13005','容易发脾气',NULL,NULL,'N',NULL,5,'zh-Hans',0,0,'1',NULL),(290,133,793721,14,'T','13006','容易分心',NULL,NULL,'N',NULL,6,'zh-Hans',0,0,'1',NULL),(307,0,811742,22,'M','G1Q2','G1Q2','','','N','N',0,'zh-Hans',0,0,'1',''),(309,0,811742,20,'T','G2Q1','G2Q1','','','N','N',0,'zh-Hans',0,0,'1',NULL),(310,0,811742,21,'T','G3Q1','G3Q1','','','N','N',0,'zh-Hans',0,0,'2',''),(311,0,811742,22,'T','z9999','999999','','','N','N',1,'zh-Hans',0,0,'1',NULL),(313,0,811742,23,'T','Q00211111','Q00211111','','Q00211111','N','N',0,'zh-Hans',0,0,'1',NULL);
/*!40000 ALTER TABLE `lime_questions` ENABLE KEYS */;

#
# Structure for table "lime_quota"
#

DROP TABLE IF EXISTS `lime_quota`;
CREATE TABLE `lime_quota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qlimit` int(11) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `autoload_url` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lime_idx1_quota` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_quota"
#

/*!40000 ALTER TABLE `lime_quota` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_quota` ENABLE KEYS */;

#
# Structure for table "lime_quota_languagesettings"
#

DROP TABLE IF EXISTS `lime_quota_languagesettings`;
CREATE TABLE `lime_quota_languagesettings` (
  `quotals_id` int(11) NOT NULL AUTO_INCREMENT,
  `quotals_quota_id` int(11) NOT NULL DEFAULT '0',
  `quotals_language` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `quotals_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotals_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotals_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotals_urldescrip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`quotals_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_quota_languagesettings"
#

/*!40000 ALTER TABLE `lime_quota_languagesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_quota_languagesettings` ENABLE KEYS */;

#
# Structure for table "lime_quota_members"
#

DROP TABLE IF EXISTS `lime_quota_members`;
CREATE TABLE `lime_quota_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `code` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_idx1_quota_members` (`sid`,`qid`,`quota_id`,`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_quota_members"
#

/*!40000 ALTER TABLE `lime_quota_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_quota_members` ENABLE KEYS */;

#
# Structure for table "lime_saved_control"
#

DROP TABLE IF EXISTS `lime_saved_control`;
CREATE TABLE `lime_saved_control` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL DEFAULT '0',
  `srid` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saved_thisstep` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `saved_date` datetime NOT NULL,
  `refurl` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`scid`),
  KEY `lime_idx1_saved_control` (`sid`),
  KEY `lime_idx2_saved_control` (`srid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_saved_control"
#

/*!40000 ALTER TABLE `lime_saved_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_saved_control` ENABLE KEYS */;

#
# Structure for table "lime_sessions"
#

DROP TABLE IF EXISTS `lime_sessions`;
CREATE TABLE `lime_sessions` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_sessions"
#

/*!40000 ALTER TABLE `lime_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_sessions` ENABLE KEYS */;

#
# Structure for table "lime_settings_global"
#

DROP TABLE IF EXISTS `lime_settings_global`;
CREATE TABLE `lime_settings_global` (
  `stg_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stg_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`stg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_settings_global"
#

/*!40000 ALTER TABLE `lime_settings_global` DISABLE KEYS */;
INSERT INTO `lime_settings_global` VALUES ('admintheme','Sea_Green'),('AssetsVersion','30081'),('bounceaccounthost',''),('bounceaccountpass',''),('bounceaccounttype','off'),('bounceaccountuser',''),('bounceencryption','off'),('bPdfQuestionBold','0'),('bPdfQuestionBorder','1'),('bPdfQuestionFill','1'),('bPdfResponseBorder','1'),('characterset','auto'),('DBVersion','356'),('defaulthtmleditormode','inline'),('defaultlang','zh-Hans'),('defaultquestionselectormode','default'),('defaulttheme','fruity'),('defaultthemeteeditormode','default'),('emailmethod','smtp'),('emailsmtpdebug','0'),('emailsmtphost','smtp.163.com'),('emailsmtppassword','lovetnt1'),('emailsmtpssl',''),('emailsmtpuser','taxri@163.com'),('filterxsshtml','1'),('force_ssl','neither'),('googleanalyticsapikey',''),('googleMapsAPIKey',''),('googletranslateapikey',''),('ipInfoDbAPIKey',''),('iSessionExpirationTime','7200'),('javascriptdebugbcknd','0'),('javascriptdebugfrntnd','0'),('last_question_1','311'),('last_question_1_653391','3'),('last_question_1_653391_gid','6'),('last_question_1_793721','116'),('last_question_1_793721_gid','13'),('last_question_1_811742','311'),('last_question_1_811742_gid','22'),('last_question_gid_1','22'),('last_question_sid_1','811742'),('last_survey_1','811742'),('maxemails','50'),('pdffontsize','9'),('pdfheaderstring',''),('pdfheadertitle',''),('pdflogowidth','50'),('pdfshowheader','N'),('queXMLAllowSplittingMatrixText','1'),('queXMLAllowSplittingSingleChoiceHorizontal','1'),('queXMLAllowSplittingSingleChoiceVertical','1'),('queXMLAllowSplittingVas','0'),('queXMLBackgroundColourQuestion','241'),('queXMLBackgroundColourSection','221'),('queXMLEdgeDetectionFormat','lines'),('queXMLPageFormat','A4'),('queXMLPageOrientation','P'),('queXMLQuestionnaireInfoMargin','5'),('queXMLResponseLabelFontSize','7.5'),('queXMLResponseLabelFontSizeSmall','6.5'),('queXMLResponseTextFontSize','10'),('queXMLSectionHeight','18'),('queXMLSingleResponseAreaHeight','9'),('queXMLSingleResponseHorizontalHeight','10.5'),('repeatheadings','25'),('restrictToLanguages',''),('rpc_publish_api',''),('RPCInterface','off'),('SessionName','I~R\"^tb5ot04P\\lA(kBXH!dL(k<DFt%0\'0*\"GJ0cvLt7;ECrV#o]`~zD`@I)=ZY('),('showgroupinfo','choose'),('shownoanswer','1'),('showqnumcode','choose'),('showxquestions','choose'),('sideMenuBehaviour','adaptive'),('siteadminbounce','taxri@163.com'),('siteadminemail','taxri@163.com'),('siteadminname','root'),('sitename','MyLimeSurvey'),('surveyPreview_require_Auth','1'),('timeadjust','+0 minutes'),('usercontrolSameGroupPolicy','1'),('x_frame_options','allow');
/*!40000 ALTER TABLE `lime_settings_global` ENABLE KEYS */;

#
# Structure for table "lime_settings_user"
#

DROP TABLE IF EXISTS `lime_settings_user`;
CREATE TABLE `lime_settings_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `entity` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stg_name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stg_value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lime_idx1_settings_user` (`uid`),
  KEY `lime_idx2_settings_user` (`entity`),
  KEY `lime_idx3_settings_user` (`entity_id`),
  KEY `lime_idx4_settings_user` (`stg_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_settings_user"
#

/*!40000 ALTER TABLE `lime_settings_user` DISABLE KEYS */;
INSERT INTO `lime_settings_user` VALUES (1,1,NULL,NULL,'quickaction_state','1');
/*!40000 ALTER TABLE `lime_settings_user` ENABLE KEYS */;

#
# Structure for table "lime_strategies"
#

DROP TABLE IF EXISTS `lime_strategies`;
CREATE TABLE `lime_strategies` (
  `strg_id` int(11) NOT NULL AUTO_INCREMENT,
  `strg_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `target` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `strategy_summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `strategy_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `relevance` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`strg_id`,`language`),
  KEY `lime_strategies_idx1` (`sid`),
  KEY `lime_strategies_idx2` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_strategies"
#

/*!40000 ALTER TABLE `lime_strategies` DISABLE KEYS */;
INSERT INTO `lime_strategies` VALUES (1,'strg11111',811742,22,'target','st_summary','st_detail','test1','zh-Hans','1'),(2,'strg2222',811742,21,'ttttt','sssss','dddddd','aaaa','zh-Hans','1'),(3,'strg3333',811742,20,'ttttttt','ssss','ddddd','aaa','zh-Hans','(((!is_empty(811742X20X309.NAOK) && (811742X20X309.NAOK == 44444))))'),(4,'strg44444',811742,20,'______________________________________________________________','ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss','sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss','ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss','zh-Hans','1'),(5,'strf5555',811742,22,'targettargettargettargettargettargettargettargettarget','strategy_summarystrategy_summarystrategy_summarystrategy_summarystrategy_summarystrategy_summarystrategy_summarystrategy_summarystrategy_summarystrategy_summarystrategy_summary','strategy_detailstrategy_detailstrategy_detailstrategy_detailstrategy_detailstrategy_detailstrategy_detailstrategy_detailstrategy_detailstrategy_detailstrategy_detailstrategy_detail','otherotherotherotherotherotherotherotherotherother','zh-Hans','1'),(6,'策略1词汇增强',811742,20,'增加词汇量，从100-200个','增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个','增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个增加词汇量，从100-200个','增加词汇量，从100-200个增加词汇量，从100-200个','zh-Hans','1'),(7,'goodTest',811742,20,'goodTest','goodTest','goodTest','goodTest','zh-Hans','1'),(8,'222',811742,21,'呜呜呜','呜呜呜','呜呜呜','','zh-Hans','1'),(11,'2333',811742,23,'阿斯大时代发','阿斯顿发生大法','阿斯顿发生的','阿斯顿发生大法','zh-Hans','1'),(12,'点对点',811742,23,'的点点滴滴','的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴的点点滴滴','的点点滴滴的点点滴滴','的点点滴滴','zh-Hans','1'),(21,'test',811742,23,'<p>tareget11</p>\r\n\r\n<p>tareget22</p>\r\n','<p>   在数学中，数量积（dot product; scalar product，也称为点积）是接受在实数R上的两个<a data-lemmaid=\"1396519\" href=\"https://baike.baidu.com/item/%E5%90%91%E9%87%8F/1396519\" target=\"_blank\">向量</a>并返回一个实数值<a data-lemmaid=\"1530843\" href=\"https://baike.baidu.com/item/%E6%A0%87%E9%87%8F/1530843\" target=\"_blank\">标量</a>的<a data-lemmaid=\"748189\" href=\"https://baike.baidu.com/item/%E4%BA%8C%E5%85%83%E8%BF%90%E7%AE%97/748189\" target=\"_blank\">二元运算</a>。它是<a data-lemmaid=\"785521\" href=\"https://baike.baidu.com/item/%E6%AC%A7%E5%87%A0%E9%87%8C%E5%BE%97%E7%A9%BA%E9%97%B4/785521\" target=\"_blank\">欧几里得空间</a>的标准<a data-lemmaid=\"422863\" href=\"https://baike.baidu.com/item/%E5%86%85%E7%A7%AF/422863\" target=\"_blank\">内积</a>。<sup class=\"sup--normal\" data-ctrmap=\":1,\" data-sup=\"1\"> [1]</sup><a class=\"sup-anchor\" name=\"ref_[1]_2744555\"> </a></p>\r\n\r\n<div class=\"lemma-summary\" label-module=\"lemmaSummary\">\r\n<div class=\"para\" label-module=\"para\">两个向量a = [a1, a2,…, an]和b = [b1, b2,…, bn]的点积定义为：</div>\r\n\r\n<div class=\"para\" label-module=\"para\">a·b=a1b1+a2b2+……+anbn。</div>\r\n\r\n<div class=\"para\" label-module=\"para\">使用<a data-lemmaid=\"5446029\" href=\"https://baike.baidu.com/item/%E7%9F%A9%E9%98%B5%E4%B9%98%E6%B3%95/5446029\" target=\"_blank\">矩阵乘法</a>并把（纵列）向量当作n×1 <a data-lemmaid=\"18069\" href=\"https://baike.baidu.com/item/%E7%9F%A9%E9%98%B5/18069\" target=\"_blank\">矩阵</a>，点积还可以写为：</div>\r\n\r\n<div class=\"para\" label-module=\"para\">a·b=a^T*b，这里的a^T指示<a data-lemmaid=\"18069\" href=\"https://baike.baidu.com/item/%E7%9F%A9%E9%98%B5/18069\" target=\"_blank\">矩阵</a>a的<a data-lemmaid=\"11034603\" href=\"https://baike.baidu.com/item/%E8%BD%AC%E7%BD%AE/11034603\" target=\"_blank\">转置</a>。</div>\r\n</div>\r\n','<div class=\"para\" label-module=\"para\">平面向量的数量积<b>a</b>·<b>b</b>是一个非常重要的概念，利用它可以很容易地证明平面几何的许多命题，例如勾股定理、菱形的对角线相互垂直、矩形的对角线相等等。如证明：<sup class=\"sup--normal\" data-ctrmap=\":3,\" data-sup=\"3\"> [3]</sup><a class=\"sup-anchor\" name=\"ref_[3]_2744555\"> </a></div>\r\n\r\n<div class=\"para\" label-module=\"para\">（1）勾股定理：　Rt△ABC中，∠C=90°，则\r\n<div class=\"lemma-picture text-pic layout-right\" style=\"width:203px; float: right;\"><a class=\"image-link\" href=\"https://baike.baidu.com/pic/%E7%82%B9%E7%A7%AF/9648528/0/f2deb48f8c5494eeb50775bb2df5e0fe99257e6e?fr=lemma&ct=single\" nslog-type=\"9317\" style=\"width:203px;height:220px;\" target=\"_blank\" title=\"\"><img alt=\"\" src=\"https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=165bb460b2119313c343f8b255390c10/f2deb48f8c5494eeb50775bb2df5e0fe99257e6e.jpg\" style=\"width:203px;height:220px;\" /> </a></div>\r\n|<b>CA|²</b>+|<b>CB</b>|²=|<b>AB</b>|²。</div>\r\n\r\n<div class=\"para\" label-module=\"para\">∵<b>AB </b>= <b>CB</b>-<b>CA</b></div>\r\n\r\n<div class=\"para\" label-module=\"para\"><b>∴</b><b>AB</b>²=(<b>CB</b>-<b>CA</b>)²= <b>CB</b>·<b><b>CB</b></b>-2<b>CA</b>·<b>CB</b>+<b>CA</b>·<b><b>CA</b></b></div>\r\n\r\n<div class=\"para\" label-module=\"para\">又∵ ∠C=90°，有CA⊥CB，于是<b>CA</b>·<b>CB</b>=0</div>\r\n\r\n<div class=\"para\" label-module=\"para\">∴ AB²=AC²+BC²</div>\r\n\r\n<div class=\"para\" label-module=\"para\">（2）菱形对角线相互垂直：菱形ABCD中,点O为对角线AC、BD的交点，求证AC⊥BD。</div>\r\n\r\n<div class=\"para\" label-module=\"para\">设 |<b>AB</b>|=|<b>BC</b>|=|<b>CD</b>|=|<b>DA</b>|=a</div>\r\n\r\n<div class=\"para\" label-module=\"para\">∵<b>AC</b>=(<b>AB</b>+<b>BC</b>)，<b>BD</b>=(<b>BC</b>+<b>CD</b>)</div>\r\n\r\n<div class=\"para\" label-module=\"para\">∴<b>AC</b>·<b>BD<b>=</b></b>(<b><b>AB</b></b>+<b><b>BC</b></b>)·(<b><b>BC</b></b>+<b><b>CD</b></b>)=a²cos(π-α)+a²-a²+a²cosα</div>\r\n\r\n<div class=\"para\" label-module=\"para\">又∵ cosα=-cos(π-α)</div>\r\n\r\n<div class=\"para\" label-module=\"para\">\r\n<div class=\"lemma-picture text-pic layout-right\" style=\"width:190px; float: right;\"><a class=\"image-link\" href=\"https://baike.baidu.com/pic/%E7%82%B9%E7%A7%AF/9648528/0/d000baa1cd11728b3ffbf780c8fcc3cec2fd2cb9?fr=lemma&ct=single\" nslog-type=\"9317\" style=\"width:190px;height:220px;\" target=\"_blank\" title=\"\"><img alt=\"\" src=\"https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=ec05be8d3a292df593c3ab178c305ce2/d000baa1cd11728b3ffbf780c8fcc3cec2fd2cb9.jpg\" style=\"width:190px;height:220px;\" /> </a></div>\r\n∴<b>AC</b>·<b>BD<b>=</b></b>(<b><b>AB</b></b>+<b><b>BC</b></b>)·(<b><b>BC</b></b>+<b><b>CD</b></b>)=0</div>\r\n\r\n<div class=\"para\" label-module=\"para\">∴AC⊥BD</div>\r\n\r\n<div class=\"para\" label-module=\"para\">在生产生活中，点积同样应用广泛。利用点积可判断一个多边形是否面向摄像机还是背向摄像机。向量的点积与它们夹角的余弦成正比，因此在聚光灯的效果计算中，可以根据点积来得到光照效果，如果点积越大，说明夹角越小，则物理离光照的轴线越近，光照越强。物理中，点积可以用来计算合力和功。若b为单位矢量，则点积即为a在方向b的投影，即给出了力在这个方向上的分解。功即是力和位移的点积。计算机图形学常用来进行方向性判断，如两矢量点积大于0，则它们的方向朝向相近；如果小于0，则方向相反。矢量内积是人工智能领域中的神经网络技术的数学基础之一，此方法还被用于动画渲染（Animation-Rendering）。</div>\r\n\r\n<div class=\"para\" label-module=\"para\">线性变换中点积的意义：</div>\r\n\r\n<div class=\"para\" label-module=\"para\">根据点积的代数公式：a·b=a1b1+a2b2+……+anbn，假设a为给定权重向量，b为特征向量，则a·b其实为一种线性组合，函数F（a·b）则可以构建一个基于a·b+c = 0 （c为偏移）的某一超平面的线性分类器，F是个简单函数，会将超过一定阈值的值对应到第一类，其它的值对应到第二类。</div>\r\n','','zh-Hans','1'),(22,'testtesttest',811742,20,'testtesttest','testtesttesttesttesttesttesttesttesttesttesttest','testtesttesttesttesttesttesttesttesttesttesttest','','zh-Hans','1'),(23,'viewviewviewviewviewviewview',811742,20,'viewviewviewviewviewviewview','viewviewviewviewviewviewviewview','viewviewviewviewviewviewviewviewviewview','viewviewviewviewviewviewviewviewview','zh-Hans','1'),(24,'啊啊啊啊',811742,20,'啊啊啊啊啊啊啊啊啊啊啊啊','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','','zh-Hans','1'),(25,'这种这种这种',811742,20,'这种这种这种','这种这种这种这种这种这种这种这种这种这种','这种这种这种这种这种这种这种这种这种这种这种','','zh-Hans','1');
/*!40000 ALTER TABLE `lime_strategies` ENABLE KEYS */;

#
# Structure for table "lime_strg_conditions"
#

DROP TABLE IF EXISTS `lime_strg_conditions`;
CREATE TABLE `lime_strg_conditions` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `strg_id` int(11) NOT NULL DEFAULT '0',
  `cqid` int(11) NOT NULL DEFAULT '0',
  `cfieldname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `scenario` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `lime_strg_conditions_idx` (`strg_id`),
  KEY `lime_strg_conditions_idx3` (`cqid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_strg_conditions"
#

/*!40000 ALTER TABLE `lime_strg_conditions` DISABLE KEYS */;
INSERT INTO `lime_strg_conditions` VALUES (14,3,309,'811742X20X309','==','44444',1);
/*!40000 ALTER TABLE `lime_strg_conditions` ENABLE KEYS */;

#
# Structure for table "lime_survey_653391"
#

DROP TABLE IF EXISTS `lime_survey_653391`;
CREATE TABLE `lime_survey_653391` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int(11) DEFAULT NULL,
  `startlanguage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startdate` datetime NOT NULL,
  `datestamp` datetime NOT NULL,
  `ipaddr` text COLLATE utf8mb4_unicode_ci,
  `refurl` text COLLATE utf8mb4_unicode_ci,
  `653391X6X3` text COLLATE utf8mb4_unicode_ci,
  `653391X6X4` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X6X5` datetime DEFAULT NULL,
  `653391X1X6` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X7SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X8` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X9` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X10` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X11` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X12SQ001_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X12SQ002_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X12SQ003_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X12SQ004_SQ001` text COLLATE utf8mb4_unicode_ci,
  `653391X1X13` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X1X14` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X2X1SQ007` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X15` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X16` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X17` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X18` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X19` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X20` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X21SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X21SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X3X21SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ007` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ008` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X22SQ009` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X23SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X24` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X25` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X4X26` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X27SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X28SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X29SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X29SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X29SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X30` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X31` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X32` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X33` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `653391X5X34` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_survey_653391"
#

/*!40000 ALTER TABLE `lime_survey_653391` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_survey_653391` ENABLE KEYS */;

#
# Structure for table "lime_survey_653391_timings"
#

DROP TABLE IF EXISTS `lime_survey_653391_timings`;
CREATE TABLE `lime_survey_653391_timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interviewtime` float DEFAULT NULL,
  `653391X6time` float DEFAULT NULL,
  `653391X6X3time` float DEFAULT NULL,
  `653391X6X4time` float DEFAULT NULL,
  `653391X6X5time` float DEFAULT NULL,
  `653391X1time` float DEFAULT NULL,
  `653391X1X6time` float DEFAULT NULL,
  `653391X1X7time` float DEFAULT NULL,
  `653391X1X8time` float DEFAULT NULL,
  `653391X1X9time` float DEFAULT NULL,
  `653391X1X10time` float DEFAULT NULL,
  `653391X1X11time` float DEFAULT NULL,
  `653391X1X12time` float DEFAULT NULL,
  `653391X1X13time` float DEFAULT NULL,
  `653391X1X14time` float DEFAULT NULL,
  `653391X2time` float DEFAULT NULL,
  `653391X2X1time` float DEFAULT NULL,
  `653391X3time` float DEFAULT NULL,
  `653391X3X15time` float DEFAULT NULL,
  `653391X3X16time` float DEFAULT NULL,
  `653391X3X17time` float DEFAULT NULL,
  `653391X3X18time` float DEFAULT NULL,
  `653391X3X19time` float DEFAULT NULL,
  `653391X3X20time` float DEFAULT NULL,
  `653391X3X21time` float DEFAULT NULL,
  `653391X4time` float DEFAULT NULL,
  `653391X4X22time` float DEFAULT NULL,
  `653391X4X23time` float DEFAULT NULL,
  `653391X4X24time` float DEFAULT NULL,
  `653391X4X25time` float DEFAULT NULL,
  `653391X4X26time` float DEFAULT NULL,
  `653391X5time` float DEFAULT NULL,
  `653391X5X27time` float DEFAULT NULL,
  `653391X5X28time` float DEFAULT NULL,
  `653391X5X29time` float DEFAULT NULL,
  `653391X5X30time` float DEFAULT NULL,
  `653391X5X31time` float DEFAULT NULL,
  `653391X5X32time` float DEFAULT NULL,
  `653391X5X33time` float DEFAULT NULL,
  `653391X5X34time` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_survey_653391_timings"
#

/*!40000 ALTER TABLE `lime_survey_653391_timings` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_survey_653391_timings` ENABLE KEYS */;

#
# Structure for table "lime_survey_793721"
#

DROP TABLE IF EXISTS `lime_survey_793721`;
CREATE TABLE `lime_survey_793721` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int(11) DEFAULT NULL,
  `startlanguage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X100` text COLLATE utf8mb4_unicode_ci,
  `793721X11X101` datetime DEFAULT NULL,
  `793721X11X102` text COLLATE utf8mb4_unicode_ci,
  `793721X11X103` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X104` datetime DEFAULT NULL,
  `793721X11X105` text COLLATE utf8mb4_unicode_ci,
  `793721X11X106` text COLLATE utf8mb4_unicode_ci,
  `793721X11X107` text COLLATE utf8mb4_unicode_ci,
  `793721X11X108` text COLLATE utf8mb4_unicode_ci,
  `793721X11X109` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X110` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ007` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ008` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ009` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ010` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ011` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ012` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ013` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111SQ014` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X11X111other` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ001_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ001_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ001_SQ003` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ001_SQ004` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ001_SQ005` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ002_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ002_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ002_SQ003` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ002_SQ004` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ002_SQ005` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ003_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ003_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ003_SQ003` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ003_SQ004` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ003_SQ005` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ004_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ004_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ004_SQ003` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ004_SQ004` text COLLATE utf8mb4_unicode_ci,
  `793721X12X112SQ004_SQ005` text COLLATE utf8mb4_unicode_ci,
  `793721X12X113` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X12X113other` text COLLATE utf8mb4_unicode_ci,
  `793721X12X114` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X12X115` text COLLATE utf8mb4_unicode_ci,
  `793721X13X116` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X116other` text COLLATE utf8mb4_unicode_ci,
  `793721X13X117` text COLLATE utf8mb4_unicode_ci,
  `793721X13X118` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X119` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X119other` text COLLATE utf8mb4_unicode_ci,
  `793721X13X120SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X120SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X120other` text COLLATE utf8mb4_unicode_ci,
  `793721X13X121SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X121SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X121SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X121SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X122` decimal(30,10) DEFAULT NULL,
  `793721X13X123` text COLLATE utf8mb4_unicode_ci,
  `793721X13X124` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ001_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ001_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ002_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ002_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ003_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ003_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ004_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ004_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ005_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ005_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ006_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ006_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ007_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ007_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ008_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ008_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ009_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ009_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ010_SQ001` text COLLATE utf8mb4_unicode_ci,
  `793721X13X125SQ010_SQ002` text COLLATE utf8mb4_unicode_ci,
  `793721X13X126` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X127` text COLLATE utf8mb4_unicode_ci,
  `793721X13X128SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X128SQ001comment` text COLLATE utf8mb4_unicode_ci,
  `793721X13X128SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X128SQ002comment` text COLLATE utf8mb4_unicode_ci,
  `793721X13X128SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X128SQ003comment` text COLLATE utf8mb4_unicode_ci,
  `793721X13X129SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X129SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X129SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X129other` text COLLATE utf8mb4_unicode_ci,
  `793721X13X130` text COLLATE utf8mb4_unicode_ci,
  `793721X13X131SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X131SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X131SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X13X131SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X132SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X132SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X132SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X132SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X132SQ005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X132SQ006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X132SQ007` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X132SQ008` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X132SQ009` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X13313001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X13313002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X13313003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X13313004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X13313005` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X13313006` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X133other` text COLLATE utf8mb4_unicode_ci,
  `793721X14X134` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `793721X14X135` text COLLATE utf8mb4_unicode_ci,
  `793721X14X136` text COLLATE utf8mb4_unicode_ci,
  `793721X14X137` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_survey_token_793721_13266` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_survey_793721"
#

/*!40000 ALTER TABLE `lime_survey_793721` DISABLE KEYS */;
INSERT INTO `lime_survey_793721` VALUES (5,NULL,'1980-01-01 00:00:00',1,'zh-Hans','1532658162','南京市雨花社区委员会','2019-04-21 00:00:00','王二小','M','2014-01-01 00:00:00','五岁三个月','一年级1班','辛辣生','怒福斯','A2','A3','','Y','Y','','','','','Y','Y','','','','','','其他脑病1','爸爸','33','大学','是','无','妈妈','31','大学','是','盲人','','','','','','','','','','','-oth-','奶奶','A2','家庭需求，增加孩子自理能力点点滴滴顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶的','-oth-','','没有服药','A2','A2','','','Y','瘦小','','Y','Y','Y',5.0000000000,'3.8','17','1','1','1','1','2','2','2','1','2','2','2','2','2','2','1','4','2','3','2','2','N','无','','','Y','病1；病2','Y','药物1；药物2','','Y','Y','特殊学校1','小细动作训练','Y','Y','Y','','Y','','','Y','Y','Y','','','','Y','Y','Y','','Y','','','A2','影响学习参与或生活适应的主要问题：影响学习参与或生活适应的主要问题：影响学习参与或生活适应的主要问题：影响学习参与或生活适应的主要问题：影响学习参与或生活适应的主要问题：影响学习参与或生活适应的主要问题：影响学习参与或生活适应的主要问题：影响学习参与或生活适应的主要问题：','家长对专业服务的期望（请提出具体需求）家长对专业服务的期望（请提出具体需求）家长对专业服务的期望（请提出具体需求）家长对专业服务的期望（请提出具体需求）家长对专业服务的期望（请提出具体需求）家长对专业服务的期望（请提出具体需求）家长对专业服务的期望（请提出具体需求）家长对专业服务的期望（请提出具体需求）','教师对专业服务的期望（请提出具体需求）教师对专业服务的期望（请提出具体需求）教师对专业服务的期望（请提出具体需求）教师对专业服务的期望（请提出具体需求）教师对专业服务的期望（请提出具体需求）教师对专业服务的期望（请提出具体需求）'),(7,NULL,NULL,NULL,'zh-Hans','1826428512',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lime_survey_793721` ENABLE KEYS */;

#
# Structure for table "lime_survey_links"
#

DROP TABLE IF EXISTS `lime_survey_links`;
CREATE TABLE `lime_survey_links` (
  `participant_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_invited` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  PRIMARY KEY (`participant_id`,`token_id`,`survey_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_survey_links"
#

/*!40000 ALTER TABLE `lime_survey_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_survey_links` ENABLE KEYS */;

#
# Structure for table "lime_survey_url_parameters"
#

DROP TABLE IF EXISTS `lime_survey_url_parameters`;
CREATE TABLE `lime_survey_url_parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `parameter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `targetqid` int(11) DEFAULT NULL,
  `targetsqid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_survey_url_parameters"
#

/*!40000 ALTER TABLE `lime_survey_url_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_survey_url_parameters` ENABLE KEYS */;

#
# Structure for table "lime_surveymenu"
#

DROP TABLE IF EXISTS `lime_surveymenu`;
CREATE TABLE `lime_surveymenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `title` varchar(168) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'side',
  `description` text COLLATE utf8mb4_unicode_ci,
  `showincollapse` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `changed_at` datetime DEFAULT NULL,
  `changed_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_surveymenu_name` (`name`),
  KEY `lime_idx2_surveymenu` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_surveymenu"
#

/*!40000 ALTER TABLE `lime_surveymenu` DISABLE KEYS */;
INSERT INTO `lime_surveymenu` VALUES (1,NULL,NULL,NULL,'settings',1,0,'Survey settings','side','Survey settings',1,1,'2019-03-24 01:29:42',0,'2019-03-24 01:29:42',0),(2,NULL,NULL,NULL,'mainmenu',2,0,'Survey menu','side','Main survey menu',1,1,'2019-03-24 01:29:42',0,'2019-03-24 01:29:42',0),(3,NULL,NULL,NULL,'quickmenu',3,0,'Quick menu','collapsed','Quick menu',0,1,'2019-03-24 01:29:42',0,'2019-03-24 01:29:42',0);
/*!40000 ALTER TABLE `lime_surveymenu` ENABLE KEYS */;

#
# Structure for table "lime_surveymenu_entries"
#

DROP TABLE IF EXISTS `lime_surveymenu_entries`;
CREATE TABLE `lime_surveymenu_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `name` varchar(168) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(168) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_title` varchar(168) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_description` text COLLATE utf8mb4_unicode_ci,
  `menu_icon` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_icon_type` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_class` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_link` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `template` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `partial` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `classes` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permission` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permission_grade` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `getdatamethod` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en-GB',
  `showincollapse` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `changed_at` datetime DEFAULT NULL,
  `changed_by` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_surveymenu_entries_name` (`name`),
  KEY `lime_idx1_surveymenu_entries` (`menu_id`),
  KEY `lime_idx5_surveymenu_entries` (`menu_title`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_surveymenu_entries"
#

/*!40000 ALTER TABLE `lime_surveymenu_entries` DISABLE KEYS */;
INSERT INTO `lime_surveymenu_entries` VALUES (1,1,NULL,1,'overview','Survey overview','Overview','Open the general survey overview','list','fontawesome','','admin/survey/sa/view','','','','','','','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(2,1,NULL,2,'generalsettings','General survey settings','General settings','Open general survey settings','gears','fontawesome','','','updatesurveylocalesettings_generalsettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_generaloptions_panel','','surveysettings','read',NULL,'_generalTabEditSurvey','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(3,1,NULL,3,'surveytexts','Survey text elements','Text elements','Survey text elements','file-text-o','fontawesome','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/tab_edit_view','','surveylocale','read',NULL,'_getTextEditData','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(4,1,NULL,4,'datasecurity','Data policy settings','Data policy settings','Edit data policy settings','shield','fontawesome','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/tab_edit_view_datasecurity','','surveylocale','read',NULL,'_getDataSecurityEditData','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(5,1,NULL,5,'theme_options','Theme options','Theme options','Edit theme options for this survey','paint-brush','fontawesome','','admin/themeoptions/sa/updatesurvey','','','','','surveysettings','update','{\"render\": {\"link\": { \"pjaxed\": true, \"data\": {\"surveyid\": [\"survey\",\"sid\"], \"gsid\":[\"survey\",\"gsid\"]}}}}','','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(6,1,NULL,6,'presentation','Presentation & navigation settings','Presentation','Edit presentation and navigation settings','eye-slash','fontawesome','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_presentation_panel','','surveylocale','read',NULL,'_tabPresentationNavigation','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(7,1,NULL,7,'tokens','Survey participant settings','Participant settings','Set additional options for survey participants','users','fontawesome','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_tokens_panel','','surveylocale','read',NULL,'_tabTokens','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(8,1,NULL,8,'notification','Notification and data management settings','Notifications & data','Edit settings for notification and data management','feed','fontawesome','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_notification_panel','','surveylocale','read',NULL,'_tabNotificationDataManagement','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(9,1,NULL,9,'publication','Publication & access control settings','Publication & access','Edit settings for publication and access control','key','fontawesome','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_publication_panel','','surveylocale','read',NULL,'_tabPublicationAccess','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(10,2,NULL,1,'listQuestions','List questions','List questions','List questions','list','fontawesome','','admin/survey/sa/listquestions','','','','','surveycontent','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(11,2,NULL,2,'listQuestionGroups','List question groups','List question groups','List question groups','th-list','fontawesome','','admin/survey/sa/listquestiongroups','','','','','surveycontent','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(12,2,NULL,4,'reorder','Reorder questions/question groups','Reorder questions/question groups','Reorder questions/question groups','icon-organize','iconclass','','admin/survey/sa/organize/','','','','','surveycontent','update','{\"render\": {\"isActive\": false, \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(13,2,NULL,5,'responses','Responses','Responses','Responses','icon-browse','iconclass','','admin/responses/sa/browse/','','','','','responses','read','{\"render\": {\"isActive\": true, \"link\": {\"data\": {\"surveyid\": [\"survey\", \"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(14,2,NULL,6,'participants','Survey participants','Survey participants','Go to survey participant and token settings','user','fontawesome','','admin/tokens/sa/index/','','','','','surveysettings','update','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(15,2,NULL,7,'statistics','Statistics','Statistics','Statistics','bar-chart','fontawesome','','admin/statistics/sa/index/','','','','','statistics','read','{\"render\": {\"isActive\": true, \"link\": {\"data\": {\"surveyid\": [\"survey\", \"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(16,2,NULL,8,'quotas','Edit quotas','Quotas','Edit quotas for this survey.','tasks','fontawesome','','admin/quotas/sa/index/','','','','','quotas','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(17,2,NULL,9,'assessments','Edit assessments','Assessments','Edit and look at the assessements for this survey.','comment-o','fontawesome','','admin/assessments/sa/index/','','','','','assessments','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(18,2,NULL,10,'surveypermissions','Edit survey permissions','Survey permissions','Edit permissions for this survey','lock','fontawesome','','admin/surveypermission/sa/view/','','','','','surveysecurity','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(19,2,NULL,11,'emailtemplates','Email templates','Email templates','Edit the templates for invitation, reminder and registration emails','envelope-square','fontawesome','','admin/emailtemplates/sa/index/','','','','','surveylocale','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(20,2,NULL,12,'panelintegration','Edit survey panel integration','Panel integration','Define panel integrations for your survey','link','fontawesome','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_integration_panel','','surveylocale','read','{\"render\": {\"link\": { \"pjaxed\": false}}}','_tabPanelIntegration','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(21,2,NULL,13,'resources','Add/edit resources (files/images) for this survey','Resources','Add/edit resources (files/images) for this survey','file','fontawesome','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_resources_panel','','surveylocale','read',NULL,'_tabResourceManagement','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(22,2,NULL,14,'plugins','Simple plugin settings','Simple plugins','Edit simple plugin settings','plug','fontawesome','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_plugins_panel','','surveysettings','read','{\"render\": {\"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','_pluginTabSurvey','en-GB',0,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(23,3,NULL,1,'activateSurvey','Activate survey','Activate survey','Activate survey','play','fontawesome','','admin/survey/sa/activate','','','','','surveyactivation','update','{\"render\": {\"isActive\": false, \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(24,3,NULL,2,'deactivateSurvey','Stop this survey','Stop this survey','Stop this survey','stop','fontawesome','','admin/survey/sa/deactivate','','','','','surveyactivation','update','{\"render\": {\"isActive\": true, \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(25,3,NULL,3,'testSurvey','Go to survey','Go to survey','Go to survey','cog','fontawesome','','survey/index/','','','','','','','{\"render\": {\"link\": {\"external\": true, \"data\": {\"sid\": [\"survey\",\"sid\"], \"newtest\": \"Y\", \"lang\": [\"survey\",\"language\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(26,3,NULL,4,'surveyLogicFile','Survey logic file','Survey logic file','Survey logic file','sitemap','fontawesome','','admin/expressions/sa/survey_logic_file/','','','','','surveycontent','read','{\"render\": { \"link\": {\"data\": {\"sid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(27,3,NULL,5,'cpdb','Central participant database','Central participant database','Central participant database','users','fontawesome','','admin/participants/sa/displayParticipants','','','','','tokens','read','{\"render\": {\"link\": {}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0),(28,2,NULL,3,'listStrategies','List strategies','List strategies','List strategies','list','fontawesome','','admin/survey/sa/liststrategies','','','','','surveycontent','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2019-03-24 01:29:43',0,'2019-03-24 01:29:43',0);
/*!40000 ALTER TABLE `lime_surveymenu_entries` ENABLE KEYS */;

#
# Structure for table "lime_surveys"
#

DROP TABLE IF EXISTS `lime_surveys`;
CREATE TABLE `lime_surveys` (
  `sid` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `gsid` int(11) DEFAULT '1',
  `admin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `expires` datetime DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `adminemail` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anonymized` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `faxto` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `format` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `savetimings` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `language` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_languages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datestamp` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `usecookie` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `allowregister` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `allowsave` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `autonumber_start` int(11) NOT NULL DEFAULT '0',
  `autoredirect` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `allowprev` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `printanswers` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `ipaddr` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `refurl` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `datecreated` datetime DEFAULT NULL,
  `showsurveypolicynotice` int(11) DEFAULT '0',
  `publicstatistics` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `publicgraphs` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `listpublic` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `htmlemail` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `sendconfirmation` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `tokenanswerspersistence` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `assessments` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `usecaptcha` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `usetokens` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `bounce_email` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributedescriptions` text COLLATE utf8mb4_unicode_ci,
  `emailresponseto` text COLLATE utf8mb4_unicode_ci,
  `emailnotificationto` text COLLATE utf8mb4_unicode_ci,
  `tokenlength` int(11) NOT NULL DEFAULT '15',
  `showxquestions` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `showgroupinfo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'B',
  `shownoanswer` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `showqnumcode` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'X',
  `bouncetime` int(11) DEFAULT NULL,
  `bounceprocessing` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `bounceaccounttype` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bounceaccounthost` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bounceaccountpass` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bounceaccountencryption` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bounceaccountuser` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showwelcome` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `showprogress` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `questionindex` int(11) NOT NULL DEFAULT '0',
  `navigationdelay` int(11) NOT NULL DEFAULT '0',
  `nokeyboard` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `alloweditaftercompletion` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `googleanalyticsstyle` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleanalyticsapikey` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `lime_idx1_surveys` (`owner_id`),
  KEY `lime_idx2_surveys` (`gsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_surveys"
#

/*!40000 ALTER TABLE `lime_surveys` DISABLE KEYS */;
INSERT INTO `lime_surveys` VALUES (653391,1,1,'root','Y',NULL,NULL,'taxri@163.com','Y','','A','Y','fruity','zh-Hans','','Y','N','Y','Y',7,'N','N','N','Y','Y','2019-03-24 02:36:37',0,'N','N','N','Y','Y','N','N','N','N','taxri@163.com',NULL,'','',15,'Y','B','N','X',NULL,'N',NULL,NULL,NULL,NULL,NULL,'Y','Y',0,0,'N','N','',''),(793721,1,1,'root','Y','2019-06-29 15:12:00','2019-04-13 15:12:00','taxri@163.com','N','','A','N','fruity','zh-Hans','','N','N','N','Y',0,'Y','N','N','N','N','2019-04-14 07:18:44',0,'N','N','N','Y','Y','N','N','N','N','taxri@163.com',NULL,'','',15,'Y','B','N','X',NULL,'N',NULL,NULL,NULL,NULL,NULL,'N','Y',0,0,'N','N','',''),(811742,1,1,'root','N',NULL,NULL,'taxri@163.com','N','','G','N','fruity','zh-Hans','','N','N','N','Y',0,'N','N','N','N','N','2019-05-12 12:08:53',0,'N','N','N','Y','Y','N','N','N','N','taxri@163.com',NULL,'','',15,'Y','B','N','X',NULL,'N',NULL,NULL,NULL,NULL,NULL,'Y','Y',0,0,'N','N',NULL,NULL);
/*!40000 ALTER TABLE `lime_surveys` ENABLE KEYS */;

#
# Structure for table "lime_surveys_groups"
#

DROP TABLE IF EXISTS `lime_surveys_groups`;
CREATE TABLE `lime_surveys_groups` (
  `gsid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sortorder` int(11) NOT NULL,
  `owner_uid` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`gsid`),
  KEY `lime_idx1_surveys_groups` (`name`),
  KEY `lime_idx2_surveys_groups` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_surveys_groups"
#

/*!40000 ALTER TABLE `lime_surveys_groups` DISABLE KEYS */;
INSERT INTO `lime_surveys_groups` VALUES (1,'default','Default',NULL,'Default survey group',0,1,NULL,'2019-03-24 01:29:43','2019-03-24 01:29:43',1);
/*!40000 ALTER TABLE `lime_surveys_groups` ENABLE KEYS */;

#
# Structure for table "lime_surveys_languagesettings"
#

DROP TABLE IF EXISTS `lime_surveys_languagesettings`;
CREATE TABLE `lime_surveys_languagesettings` (
  `surveyls_survey_id` int(11) NOT NULL,
  `surveyls_language` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `surveyls_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surveyls_description` text COLLATE utf8mb4_unicode_ci,
  `surveyls_welcometext` text COLLATE utf8mb4_unicode_ci,
  `surveyls_endtext` text COLLATE utf8mb4_unicode_ci,
  `surveyls_policy_notice` text COLLATE utf8mb4_unicode_ci,
  `surveyls_policy_error` text COLLATE utf8mb4_unicode_ci,
  `surveyls_policy_notice_label` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_url` text COLLATE utf8mb4_unicode_ci,
  `surveyls_urldescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_template_docx` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `surveyls_template_docx_suffix` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
  `surveyls_email_invite_subj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_email_invite` text COLLATE utf8mb4_unicode_ci,
  `surveyls_email_remind_subj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_email_remind` text COLLATE utf8mb4_unicode_ci,
  `surveyls_email_register_subj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_email_register` text COLLATE utf8mb4_unicode_ci,
  `surveyls_email_confirm_subj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_email_confirm` text COLLATE utf8mb4_unicode_ci,
  `surveyls_dateformat` int(11) NOT NULL DEFAULT '1',
  `surveyls_attributecaptions` text COLLATE utf8mb4_unicode_ci,
  `email_admin_notification_subj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_admin_notification` text COLLATE utf8mb4_unicode_ci,
  `email_admin_responses_subj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_admin_responses` text COLLATE utf8mb4_unicode_ci,
  `surveyls_numberformat` int(11) NOT NULL DEFAULT '0',
  `attachments` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`surveyls_survey_id`,`surveyls_language`),
  KEY `lime_idx1_surveys_languagesettings` (`surveyls_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_surveys_languagesettings"
#

/*!40000 ALTER TABLE `lime_surveys_languagesettings` DISABLE KEYS */;
INSERT INTO `lime_surveys_languagesettings` VALUES (653391,'zh-Hans','特需儿童专业服务评估表','南京师范大学特需儿童专业服务评估表','welcome～','Thank you～',NULL,NULL,NULL,'','','特需儿童专业服务评估表（语言治疗评估表）.docx','学生姓名','参加调查的邀请','您好， {FIRSTNAME},<br />\n<br />\n现邀请您参加一个调查。<br />\n<br />\n该调查的名字为：<br />\n\"{SURVEYNAME}\"<br />\n<br />\n\"{SURVEYDESCRIPTION}\"<br />\n<br />\n确认参加，请点击下面的连接。<br />\n<br />\n{ADMINNAME} ({ADMINEMAIL})<br />\n<br />\n----------------------------------------------<br />\n点击此处做调查：<br />\n{SURVEYURL}<br />\n<br />\n如果您不想参与本调查，并且不再希望接收邀请，请点击下面链接：<br />\n{OPTOUTURL}<br />\n<br />\n如果您被列入了黑名单并想参与本调查、希望能接收到邀请的话，请点击下面链接：<br />\n{OPTOUTURL}','提请参加调查','您好， {FIRSTNAME},<br />\n<br />\n最近我们邀请您参加一项调查。<br />\n<br />\n我们注意到您尚未完成这项调查，如果您想参与的话，该项调查还在进行中。<br />\n<br />\n调查标题：<br />\n\"{SURVEYNAME}\"<br />\n<br />\n\"{SURVEYDESCRIPTION}\"<br />\n<br />\n确认参加，请点击下面的链接。<br />\n<br />\n<br />\n{ADMINNAME} ({ADMINEMAIL})<br />\n<br />\n----------------------------------------------<br />\n点击这里做调查：<br />\n{SURVEYURL}<br />\n<br />\n如果您不想参与本调查，并且不再希望接收邀请，请点击下面链接：<br />\n{OPTOUTURL}','调查注册确认','您好 {FIRSTNAME},<br />\n<br />\n您或者其他人用您的邮件地址注册参与了名为{SURVEYNAME}的在线调查。<br />\n<br />\n要完成这个调查，请点击下面的URL:<br />\n<br />\n{SURVEYURL}<br />\n<br />\n如果您有其他问题，或者您没有注册参与并认为这封邮件有误，请通过{ADMINEMAIL}联系{ADMINNAME}。','确认参加调查','您好 {FIRSTNAME},<br />\n<br />\n这封邮件是为了确认您已经完成了名为{SURVEYNAME}的调查，您的反馈已经被保存。感谢参与。<br />\n<br />\n如果您对这封邮件有任何问题，请 通过{ADMINEMAIL}联系 {ADMINNAME}.<br />\n<br />\n<br />\n{ADMINNAME}',6,NULL,'调查反馈提交{SURVEYNAME}','您好,<br />\n <br />\n 有一份新的反馈已提交至您的问卷调查 \'{SURVEYNAME}\'.<br />\n <br />\n<br />\n <br />\n点击以下链接查看详情:<br />\n {VIEWRESPONSEURL}<br />\n <br />\n<br />\n <br />\n点击以下链接编辑详情回复:<br />\n{EDITRESPONSEURL}<br />\n <br />\n<br />\n查看统计信息以点击此处:<br />\n<br />\n {STATISTICSURL}','带结果的调查反馈提交{SURVEYNAME}','您好，<br />\n<br />\n有一个新反馈已提交至您的问卷调查 \'{SURVEYNAME}\'.<br />\n<br />\n点击下面链接查看回答详情:<br />\n{VIEWRESPONSEURL}<br />\n<br />\n <br />\n点击下面链接编辑回答详情:<br />\n {EDITRESPONSEURL}<br />\n <br />\n<br />\n查看统计信息点击此处:<br />\n {STATISTICSURL}<br />\n <br />\n<br />\n <br />\n 以下回答由参与者提供:<br />\n {ANSWERTABLE}',0,NULL),(793721,'zh-Hans','特需儿童专业服务评估表（语言治疗评估表）','特需儿童专业服务评估表（语言治疗评估表）','','',NULL,NULL,NULL,'','','特需儿童教育服务评估表.docx','学生姓名','参加调查的邀请','您好， {FIRSTNAME},<br />\n<br />\n现邀请您参加一个调查。<br />\n<br />\n该调查的名字为：<br />\n\"{SURVEYNAME}\"<br />\n<br />\n\"{SURVEYDESCRIPTION}\"<br />\n<br />\n确认参加，请点击下面的连接。<br />\n<br />\n{ADMINNAME} ({ADMINEMAIL})<br />\n<br />\n----------------------------------------------<br />\n点击此处做调查：<br />\n{SURVEYURL}<br />\n<br />\n如果您不想参与本调查，并且不再希望接收邀请，请点击下面链接：<br />\n{OPTOUTURL}<br />\n<br />\n如果您被列入了黑名单并想参与本调查、希望能接收到邀请的话，请点击下面链接：<br />\n{OPTOUTURL}','提请参加调查','您好， {FIRSTNAME},<br />\n<br />\n最近我们邀请您参加一项调查。<br />\n<br />\n我们注意到您尚未完成这项调查，如果您想参与的话，该项调查还在进行中。<br />\n<br />\n调查标题：<br />\n\"{SURVEYNAME}\"<br />\n<br />\n\"{SURVEYDESCRIPTION}\"<br />\n<br />\n确认参加，请点击下面的链接。<br />\n<br />\n<br />\n{ADMINNAME} ({ADMINEMAIL})<br />\n<br />\n----------------------------------------------<br />\n点击这里做调查：<br />\n{SURVEYURL}<br />\n<br />\n如果您不想参与本调查，并且不再希望接收邀请，请点击下面链接：<br />\n{OPTOUTURL}','调查注册确认','您好 {FIRSTNAME},<br />\n<br />\n您或者其他人用您的邮件地址注册参与了名为{SURVEYNAME}的在线调查。<br />\n<br />\n要完成这个调查，请点击下面的URL:<br />\n<br />\n{SURVEYURL}<br />\n<br />\n如果您有其他问题，或者您没有注册参与并认为这封邮件有误，请通过{ADMINEMAIL}联系{ADMINNAME}。','确认参加调查','您好 {FIRSTNAME},<br />\n<br />\n这封邮件是为了确认您已经完成了名为{SURVEYNAME}的调查，您的反馈已经被保存。感谢参与。<br />\n<br />\n如果您对这封邮件有任何问题，请 通过{ADMINEMAIL}联系 {ADMINNAME}.<br />\n<br />\n<br />\n{ADMINNAME}',3,NULL,'调查反馈提交{SURVEYNAME}','您好,<br />\n <br />\n 有一份新的反馈已提交至您的问卷调查 \'{SURVEYNAME}\'.<br />\n <br />\n<br />\n <br />\n点击以下链接查看详情:<br />\n {VIEWRESPONSEURL}<br />\n <br />\n<br />\n <br />\n点击以下链接编辑详情回复:<br />\n{EDITRESPONSEURL}<br />\n <br />\n<br />\n查看统计信息以点击此处:<br />\n<br />\n {STATISTICSURL}','带结果的调查反馈提交{SURVEYNAME}','您好，<br />\n<br />\n有一个新反馈已提交至您的问卷调查 \'{SURVEYNAME}\'.<br />\n<br />\n点击下面链接查看回答详情:<br />\n{VIEWRESPONSEURL}<br />\n<br />\n <br />\n点击下面链接编辑回答详情:<br />\n {EDITRESPONSEURL}<br />\n <br />\n<br />\n查看统计信息点击此处:<br />\n {STATISTICSURL}<br />\n <br />\n<br />\n <br />\n 以下回答由参与者提供:<br />\n {ANSWERTABLE}',0,NULL),(811742,'zh-Hans','测试问卷','','','',NULL,NULL,NULL,'','','','','参加调查的邀请','您好， {FIRSTNAME},<br />\n<br />\n现邀请您参加一个调查。<br />\n<br />\n该调查的名字为：<br />\n\"{SURVEYNAME}\"<br />\n<br />\n\"{SURVEYDESCRIPTION}\"<br />\n<br />\n确认参加，请点击下面的连接。<br />\n<br />\n{ADMINNAME} ({ADMINEMAIL})<br />\n<br />\n----------------------------------------------<br />\n点击此处做调查：<br />\n{SURVEYURL}<br />\n<br />\n如果您不想参与本调查，并且不再希望接收邀请，请点击下面链接：<br />\n{OPTOUTURL}<br />\n<br />\n如果您被列入了黑名单并想参与本调查、希望能接收到邀请的话，请点击下面链接：<br />\n{OPTOUTURL}','提请参加调查','您好， {FIRSTNAME},<br />\n<br />\n最近我们邀请您参加一项调查。<br />\n<br />\n我们注意到您尚未完成这项调查，如果您想参与的话，该项调查还在进行中。<br />\n<br />\n调查标题：<br />\n\"{SURVEYNAME}\"<br />\n<br />\n\"{SURVEYDESCRIPTION}\"<br />\n<br />\n确认参加，请点击下面的链接。<br />\n<br />\n<br />\n{ADMINNAME} ({ADMINEMAIL})<br />\n<br />\n----------------------------------------------<br />\n点击这里做调查：<br />\n{SURVEYURL}<br />\n<br />\n如果您不想参与本调查，并且不再希望接收邀请，请点击下面链接：<br />\n{OPTOUTURL}','调查注册确认','您好 {FIRSTNAME},<br />\n<br />\n您或者其他人用您的邮件地址注册参与了名为{SURVEYNAME}的在线调查。<br />\n<br />\n要完成这个调查，请点击下面的URL:<br />\n<br />\n{SURVEYURL}<br />\n<br />\n如果您有其他问题，或者您没有注册参与并认为这封邮件有误，请通过{ADMINEMAIL}联系{ADMINNAME}。','确认参加调查','您好 {FIRSTNAME},<br />\n<br />\n这封邮件是为了确认您已经完成了名为{SURVEYNAME}的调查，您的反馈已经被保存。感谢参与。<br />\n<br />\n如果您对这封邮件有任何问题，请 通过{ADMINEMAIL}联系 {ADMINNAME}.<br />\n<br />\n<br />\n{ADMINNAME}',3,NULL,'调查反馈提交{SURVEYNAME}','您好,<br />\n <br />\n 有一份新的反馈已提交至您的问卷调查 \'{SURVEYNAME}\'.<br />\n <br />\n<br />\n <br />\n点击以下链接查看详情:<br />\n {VIEWRESPONSEURL}<br />\n <br />\n<br />\n <br />\n点击以下链接编辑详情回复:<br />\n{EDITRESPONSEURL}<br />\n <br />\n<br />\n查看统计信息以点击此处:<br />\n<br />\n {STATISTICSURL}','带结果的调查反馈提交{SURVEYNAME}','您好，<br />\n<br />\n有一个新反馈已提交至您的问卷调查 \'{SURVEYNAME}\'.<br />\n<br />\n点击下面链接查看回答详情:<br />\n{VIEWRESPONSEURL}<br />\n<br />\n <br />\n点击下面链接编辑回答详情:<br />\n {EDITRESPONSEURL}<br />\n <br />\n<br />\n查看统计信息点击此处:<br />\n {STATISTICSURL}<br />\n <br />\n<br />\n <br />\n 以下回答由参与者提供:<br />\n {ANSWERTABLE}',0,NULL);
/*!40000 ALTER TABLE `lime_surveys_languagesettings` ENABLE KEYS */;

#
# Structure for table "lime_template_configuration"
#

DROP TABLE IF EXISTS `lime_template_configuration`;
CREATE TABLE `lime_template_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `gsid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `files_css` text COLLATE utf8mb4_unicode_ci,
  `files_js` text COLLATE utf8mb4_unicode_ci,
  `files_print_css` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  `cssframework_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cssframework_css` text COLLATE utf8mb4_unicode_ci,
  `cssframework_js` text COLLATE utf8mb4_unicode_ci,
  `packages_to_load` text COLLATE utf8mb4_unicode_ci,
  `packages_ltr` text COLLATE utf8mb4_unicode_ci,
  `packages_rtl` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lime_idx1_template_configuration` (`template_name`),
  KEY `lime_idx2_template_configuration` (`sid`),
  KEY `lime_idx3_template_configuration` (`gsid`),
  KEY `lime_idx4_template_configuration` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_template_configuration"
#

/*!40000 ALTER TABLE `lime_template_configuration` DISABLE KEYS */;
INSERT INTO `lime_template_configuration` VALUES (1,'vanilla',NULL,NULL,NULL,'{\"add\":[\"css/ajaxify.css\",\"css/theme.css\",\"css/custom.css\"]}','{\"add\":[\"scripts/theme.js\",\"scripts/ajaxify.js\",\"scripts/custom.js\"]}','{\"add\":[\"css/print_theme.css\"]}','{\"ajaxmode\":\"on\",\"brandlogo\":\"on\",\"container\":\"on\", \"hideprivacyinfo\": \"off\", \"brandlogofile\":\"./files/logo.png\",\"font\":\"noto\"}','bootstrap','{}','','{\"add\":[\"pjax\",\"font-noto\",\"moment\"]}',NULL,NULL),(2,'fruity',NULL,NULL,NULL,'{\"add\":[\"css/ajaxify.css\",\"css/animate.css\",\"css/variations/sea_green.css\",\"css/theme.css\",\"css/custom.css\"]}','{\"add\":[\"scripts/theme.js\",\"scripts/ajaxify.js\",\"scripts/custom.js\"]}','{\"add\":[\"css/print_theme.css\"]}','{\"ajaxmode\":\"on\",\"brandlogo\":\"on\",\"brandlogofile\":\"./files/logo.png\",\"container\":\"on\",\"backgroundimage\":\"off\",\"backgroundimagefile\":null,\"animatebody\":\"off\",\"bodyanimation\":\"fadeInRight\",\"bodyanimationduration\":\"500\",\"animatequestion\":\"off\",\"questionanimation\":\"flipInX\",\"questionanimationduration\":\"500\",\"animatealert\":\"off\",\"alertanimation\":\"shake\",\"alertanimationduration\":\"500\",\"font\":\"noto\",\"bodybackgroundcolor\":\"#ffffff\",\"fontcolor\":\"#444444\",\"questionbackgroundcolor\":\"#ffffff\",\"questionborder\":\"on\",\"questioncontainershadow\":\"on\",\"checkicon\":\"f00c\",\"animatecheckbox\":\"on\",\"checkboxanimation\":\"rubberBand\",\"checkboxanimationduration\":\"500\",\"animateradio\":\"on\",\"radioanimation\":\"zoomIn\",\"radioanimationduration\":\"500\",\"zebrastriping\":\"off\",\"stickymatrixheaders\":\"off\",\"greyoutselected\":\"off\",\"hideprivacyinfo\":\"off\",\"crosshover\":\"off\",\"showpopups\":\"1\"}','bootstrap','{}','','{\"add\":[\"pjax\",\"font-noto\",\"moment\"]}',NULL,NULL),(3,'bootswatch',NULL,NULL,NULL,'{\"add\":[\"css/ajaxify.css\",\"css/theme.css\",\"css/custom.css\"]}','{\"add\":[\"scripts/theme.js\",\"scripts/ajaxify.js\",\"scripts/custom.js\"]}','{\"add\":[\"css/print_theme.css\"]}','{\"ajaxmode\":\"on\",\"brandlogo\":\"on\",\"container\":\"on\",\"brandlogofile\":\"./files/logo.png\"}','bootstrap','{\"replace\":[[\"css/bootstrap.css\",\"css/variations/flatly.min.css\"]]}','','{\"add\":[\"pjax\",\"font-noto\",\"moment\"]}',NULL,NULL),(4,'fruity',653391,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(5,'fruity',NULL,1,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(6,'fruity',813343,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(7,'fruity',793721,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(8,'fruity',811742,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL);
/*!40000 ALTER TABLE `lime_template_configuration` ENABLE KEYS */;

#
# Structure for table "lime_templates"
#

DROP TABLE IF EXISTS `lime_templates`;
CREATE TABLE `lime_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `author` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci,
  `license` text COLLATE utf8mb4_unicode_ci,
  `version` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_version` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_folder` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files_folder` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `last_update` datetime DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `extends` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lime_idx1_templates` (`name`),
  KEY `lime_idx2_templates` (`title`),
  KEY `lime_idx3_templates` (`owner_id`),
  KEY `lime_idx4_templates` (`extends`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_templates"
#

/*!40000 ALTER TABLE `lime_templates` DISABLE KEYS */;
INSERT INTO `lime_templates` VALUES (1,'vanilla','vanilla','Vanilla Theme','2019-03-24 01:29:43','Louis Gac','louis.gac@limesurvey.org','https://www.limesurvey.org/','Copyright (C) 2007-2017 The LimeSurvey Project Team\\r\\nAll rights reserved.','License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.','3.0','3.0','views','files','<strong>LimeSurvey Bootstrap Vanilla Survey Theme</strong><br>A clean and simple base that can be used by developers to create their own Bootstrap based theme.',NULL,1,''),(2,'fruity','fruity','Fruity Theme','2019-03-24 01:29:43','Louis Gac','louis.gac@limesurvey.org','https://www.limesurvey.org/','Copyright (C) 2007-2017 The LimeSurvey Project Team\\r\\nAll rights reserved.','License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.','3.0','3.0','views','files','<strong>LimeSurvey Fruity Theme</strong><br>A fruity theme for a flexible use. This theme offers monochromes variations and many options for easy customizations.',NULL,1,'vanilla'),(3,'bootswatch','bootswatch','Bootswatch Theme','2019-03-24 01:29:43','Louis Gac','louis.gac@limesurvey.org','https://www.limesurvey.org/','Copyright (C) 2007-2017 The LimeSurvey Project Team\\r\\nAll rights reserved.','License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.','3.0','3.0','views','files','<strong>LimeSurvey Bootwatch Theme</strong><br>Based on BootsWatch Themes: <a href=\"https://bootswatch.com/3/\"\">Visit BootsWatch page</a> ',NULL,1,'vanilla');
/*!40000 ALTER TABLE `lime_templates` ENABLE KEYS */;

#
# Structure for table "lime_tokens_811742"
#

DROP TABLE IF EXISTS `lime_tokens_811742`;
CREATE TABLE `lime_tokens_811742` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `participant_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `emailstatus` text COLLATE utf8mb4_unicode_ci,
  `token` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `language` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blacklisted` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `remindersent` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `remindercount` int(11) DEFAULT '0',
  `completed` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `usesleft` int(11) DEFAULT '1',
  `validfrom` datetime DEFAULT NULL,
  `validuntil` datetime DEFAULT NULL,
  `mpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `idx_token_token_811742_94` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_tokens_811742"
#

/*!40000 ALTER TABLE `lime_tokens_811742` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_tokens_811742` ENABLE KEYS */;

#
# Structure for table "lime_tutorial_entries"
#

DROP TABLE IF EXISTS `lime_tutorial_entries`;
CREATE TABLE `lime_tutorial_entries` (
  `teid` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `settings` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`teid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_tutorial_entries"
#

/*!40000 ALTER TABLE `lime_tutorial_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_tutorial_entries` ENABLE KEYS */;

#
# Structure for table "lime_tutorial_entry_relation"
#

DROP TABLE IF EXISTS `lime_tutorial_entry_relation`;
CREATE TABLE `lime_tutorial_entry_relation` (
  `teid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`teid`,`tid`),
  KEY `lime_idx1_tutorial_entry_relation` (`uid`),
  KEY `lime_idx2_tutorial_entry_relation` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_tutorial_entry_relation"
#

/*!40000 ALTER TABLE `lime_tutorial_entry_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_tutorial_entry_relation` ENABLE KEYS */;

#
# Structure for table "lime_tutorials"
#

DROP TABLE IF EXISTS `lime_tutorials`;
CREATE TABLE `lime_tutorials` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active` int(11) DEFAULT '0',
  `settings` text COLLATE utf8mb4_unicode_ci,
  `permission` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_grade` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `lime_idx1_tutorials` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_tutorials"
#

/*!40000 ALTER TABLE `lime_tutorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_tutorials` ENABLE KEYS */;

#
# Structure for table "lime_user_groups"
#

DROP TABLE IF EXISTS `lime_user_groups`;
CREATE TABLE `lime_user_groups` (
  `ugid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`ugid`),
  UNIQUE KEY `lime_idx1_user_groups` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_user_groups"
#

/*!40000 ALTER TABLE `lime_user_groups` DISABLE KEYS */;
INSERT INTO `lime_user_groups` VALUES (1,'guest','guest',1),(2,'survey','',1);
/*!40000 ALTER TABLE `lime_user_groups` ENABLE KEYS */;

#
# Structure for table "lime_user_in_groups"
#

DROP TABLE IF EXISTS `lime_user_in_groups`;
CREATE TABLE `lime_user_in_groups` (
  `ugid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`ugid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_user_in_groups"
#

/*!40000 ALTER TABLE `lime_user_in_groups` DISABLE KEYS */;
INSERT INTO `lime_user_in_groups` VALUES (1,1),(1,2),(2,1),(2,3);
/*!40000 ALTER TABLE `lime_user_in_groups` ENABLE KEYS */;

#
# Structure for table "lime_users"
#

DROP TABLE IF EXISTS `lime_users`;
CREATE TABLE `lime_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `users_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `htmleditormode` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `templateeditormode` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `questionselectormode` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `one_time_pw` text COLLATE utf8mb4_unicode_ci,
  `dateformat` int(11) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `lime_idx1_users` (`users_name`),
  KEY `lime_idx2_users` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lime_users"
#

/*!40000 ALTER TABLE `lime_users` DISABLE KEYS */;
INSERT INTO `lime_users` VALUES (1,'root','$2y$10$y1eq./As8D2sV0SiqXf8o.zjbCE5r2fPuaO44Kl82ip05RJUcoWVm','root',0,'zh-Hans','taxri@163.com','default','default','default',NULL,3,'2019-03-24 09:30:31','2019-04-14 14:53:17'),(2,'guest','$2y$10$TKDk6SBABbJ/tdLNW1EhB.6LDDVqq2za5vgzJgtPKvftJ8jZTUHRK','guest.llll',1,'auto','guest@guest.com','default','default','default',NULL,1,'2019-06-01 22:55:39',NULL),(3,'liu.xiaojun','$2y$10$yY2w4LI9dSFCCd61/DT6D.vVCe2jDazzWZo60nw/atO.KCfDO3M1e','xxxxx',1,'auto','taxri@163.com','default','default','default',NULL,1,'2019-06-01 22:57:35',NULL);
/*!40000 ALTER TABLE `lime_users` ENABLE KEYS */;
