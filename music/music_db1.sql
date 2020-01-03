/*
Navicat MySQL Data Transfer

Source Server         : bd
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : music_db1

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-01-03 21:35:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 歌曲分类', '6', 'add_label');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 歌曲分类', '6', 'change_label');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 歌曲分类', '6', 'delete_label');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 歌曲分类', '6', 'view_label');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 歌曲信息', '7', 'add_song');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 歌曲信息', '7', 'change_song');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 歌曲信息', '7', 'delete_song');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 歌曲信息', '7', 'view_song');
INSERT INTO `auth_permission` VALUES ('29', 'Can add dynamic', '8', 'add_dynamic');
INSERT INTO `auth_permission` VALUES ('30', 'Can change dynamic', '8', 'change_dynamic');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete dynamic', '8', 'delete_dynamic');
INSERT INTO `auth_permission` VALUES ('32', 'Can view dynamic', '8', 'view_dynamic');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 歌曲评论', '9', 'add_comment');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 歌曲评论', '9', 'change_comment');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 歌曲评论', '9', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 歌曲评论', '9', 'view_comment');
INSERT INTO `auth_permission` VALUES ('37', 'Can add user', '10', 'add_myuser');
INSERT INTO `auth_permission` VALUES ('38', 'Can change user', '10', 'change_myuser');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete user', '10', 'delete_myuser');
INSERT INTO `auth_permission` VALUES ('40', 'Can view user', '10', 'view_myuser');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2020-01-01 14:00:13.986901', '2', 'admin', '2', '[{\"changed\": {\"fields\": [\"mobile\", \"qq\", \"weChat\", \"last_login\"]}}]', '10', '2');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'index', 'label');
INSERT INTO `django_content_type` VALUES ('7', 'index', 'song');
INSERT INTO `django_content_type` VALUES ('8', 'index', 'dynamic');
INSERT INTO `django_content_type` VALUES ('9', 'index', 'comment');
INSERT INTO `django_content_type` VALUES ('10', 'user', 'myuser');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-01-01 11:54:34.040641');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-01-01 11:54:34.091644');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-01-01 11:54:34.242652');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-01-01 11:54:34.402662');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-01-01 11:54:34.439664');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-01-01 11:54:34.455665');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-01-01 11:54:34.473666');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-01-01 11:54:34.476666');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2020-01-01 11:54:34.493667');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2020-01-01 11:54:34.511668');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2020-01-01 11:54:34.527669');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2020-01-01 11:54:34.556670');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2020-01-01 11:54:34.572671');
INSERT INTO `django_migrations` VALUES ('14', 'user', '0001_initial', '2020-01-01 11:54:34.654676');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2020-01-01 11:54:34.904690');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2020-01-01 11:54:35.007696');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2020-01-01 11:54:35.032698');
INSERT INTO `django_migrations` VALUES ('18', 'index', '0001_initial', '2020-01-01 11:54:35.146704');
INSERT INTO `django_migrations` VALUES ('19', 'sessions', '0001_initial', '2020-01-01 11:54:35.311714');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('mdgjrwyau2vq8ymeadduo6336qkeq7xv', 'ZTI2ODU2OTA5OTVlYWVlNmIwMTRjY2YyN2I2MWFkNjFiNGJmZDAxNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNzgxN2I4OWQxZDNjOGQ4Nzg2MmRiNjI3YmFjZmZjYTY4ZDU5NGY3IiwicGxheV9saXN0IjpbeyJzb25nX2lkIjoyLCJzb25nX3NpbmdlciI6Ilx1NGU4ZVx1NjU4N1x1NjU4NyIsInNvbmdfbmFtZSI6Ilx1NGY1M1x1OTc2MiIsInNvbmdfdGltZSI6IjA0OjQyIn0seyJzb25nX2lkIjoxMCwic29uZ19zaW5nZXIiOiJcdTRmYTdcdTc1MzAiLCJzb25nX25hbWUiOiJWb2xhciIsInNvbmdfdGltZSI6IjAzOjUyIn0seyJzb25nX2lkIjo3LCJzb25nX3NpbmdlciI6Ilx1OTFkMVx1NmM5OSIsInNvbmdfbmFtZSI6Ilx1NzIzMVx1NzY4NFx1OWI1NFx1NmNkNSIsInNvbmdfdGltZSI6IjAzOjExIn1dfQ==', '2020-01-15 14:27:32.515620');
INSERT INTO `django_session` VALUES ('8c7fr597qqedzekdnn94924y7i2nd03z', 'OTllNmE4YzU4MmZlNTg1NmM3MzAyNmUyMTQxN2Q3NDgwMDJlNjBkNTp7InBsYXlfbGlzdCI6W3sic29uZ19pZCI6Niwic29uZ19zaW5nZXIiOiJcdTU0MzRcdTgyZTVcdTVlMGMiLCJzb25nX25hbWUiOiJcdTUyMmJcdTU3MjhcdThiYjBcdThkNzciLCJzb25nX3RpbWUiOiIwNDowNCJ9XX0=', '2020-01-15 14:53:54.813122');

-- ----------------------------
-- Table structure for index_comment
-- ----------------------------
DROP TABLE IF EXISTS `index_comment`;
CREATE TABLE `index_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(500) NOT NULL,
  `comment_user` varchar(20) NOT NULL,
  `comment_date` varchar(50) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `index_comment_song_id_e60ecaa2` (`song_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_comment
-- ----------------------------
INSERT INTO `index_comment` VALUES ('1', '别在记起，这首歌我第一次听', '匿名用户', '2020-01-01', '6');

-- ----------------------------
-- Table structure for index_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `index_dynamic`;
CREATE TABLE `index_dynamic` (
  `dynamic_id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_plays` int(11) NOT NULL,
  `dynamic_search` int(11) NOT NULL,
  `dynamic_down` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`dynamic_id`),
  KEY `index_dynamic_song_id_21bb9711` (`song_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_dynamic
-- ----------------------------
INSERT INTO `index_dynamic` VALUES ('1', '34', '45', '22', '1');
INSERT INTO `index_dynamic` VALUES ('2', '49', '17', '21', '2');
INSERT INTO `index_dynamic` VALUES ('3', '38', '34', '14', '3');
INSERT INTO `index_dynamic` VALUES ('4', '4', '6', '2', '4');
INSERT INTO `index_dynamic` VALUES ('5', '28', '7', '5', '5');
INSERT INTO `index_dynamic` VALUES ('6', '187', '65', '50', '6');
INSERT INTO `index_dynamic` VALUES ('7', '125', '53', '20', '7');
INSERT INTO `index_dynamic` VALUES ('8', '13', '16', '33', '8');
INSERT INTO `index_dynamic` VALUES ('9', '6', '12', '18', '9');
INSERT INTO `index_dynamic` VALUES ('10', '69', '65', '35', '10');
INSERT INTO `index_dynamic` VALUES ('11', '95', '70', '51', '11');
INSERT INTO `index_dynamic` VALUES ('12', '50', '32', '45', '12');
INSERT INTO `index_dynamic` VALUES ('13', '99', '54', '12', '13');

-- ----------------------------
-- Table structure for index_label
-- ----------------------------
DROP TABLE IF EXISTS `index_label`;
CREATE TABLE `index_label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(10) NOT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_label
-- ----------------------------
INSERT INTO `index_label` VALUES ('1', '情感天地');
INSERT INTO `index_label` VALUES ('2', '摇滚金属');
INSERT INTO `index_label` VALUES ('3', '经典流行');
INSERT INTO `index_label` VALUES ('4', '环境心情');
INSERT INTO `index_label` VALUES ('5', '午后场景');
INSERT INTO `index_label` VALUES ('6', '岁月流金');
INSERT INTO `index_label` VALUES ('7', '青春校园');

-- ----------------------------
-- Table structure for index_song
-- ----------------------------
DROP TABLE IF EXISTS `index_song`;
CREATE TABLE `index_song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(50) NOT NULL,
  `song_singer` varchar(50) NOT NULL,
  `song_time` varchar(10) NOT NULL,
  `song_album` varchar(50) NOT NULL,
  `song_languages` varchar(20) NOT NULL,
  `song_type` varchar(20) NOT NULL,
  `song_release` varchar(20) NOT NULL,
  `song_img` varchar(20) NOT NULL,
  `song_lyrics` varchar(50) NOT NULL,
  `song_file` varchar(50) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `index_song_label_id_9b9b68ed` (`label_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index_song
-- ----------------------------
INSERT INTO `index_song` VALUES ('1', '爱都是对的', '胡夏', '04:20', '胡 爱夏', '国语', '流行', '2010-12-08', '1.jpg', '暂无歌词', '1.m4a', '3');
INSERT INTO `index_song` VALUES ('2', '体面', '于文文', '04:42', '前任3', '国语', '伤感', '2017-12-25', '2.jpg', '暂无歌词', '2.m4a', '4');
INSERT INTO `index_song` VALUES ('3', '三国恋', 'Tank', '04:06', 'Fighting', '国语', '摇滚', '2006-04-15', '3.jpg', '暂无歌词', '3.m4a', '2');
INSERT INTO `index_song` VALUES ('4', '会长大的幸福', 'Tank', '04:32', '第三回合', '国语', '励志', '2009-05-29', '4.jpg', '暂无歌词', '4.m4a', '4');
INSERT INTO `index_song` VALUES ('5', '满满', '梁文音/王铮亮', '04:44', '爱，一直存在', '国语', '甜蜜', '2009-11-20', '5.jpg', '暂无歌词', '5.m4a', '1');
INSERT INTO `index_song` VALUES ('6', '别在记起', '吴若希', '04:04', '别再记起', '粤语', '场景', '2017-12-07', '6.jpg', '暂无歌词', '6.m4a', '4');
INSERT INTO `index_song` VALUES ('7', '爱的魔法', '金沙', '03:11', '他不爱我', '国语', '甜蜜', '2012-03-19', '7.jpg', '暂无歌词', '7.m4a', '1');
INSERT INTO `index_song` VALUES ('8', '演员', '薛之谦', '04:11', '演员', '国语', '流行', '2015-06-05', '8.jpg', '暂无歌词', '8.m4a', '3');
INSERT INTO `index_song` VALUES ('9', '放爱情一个假', '许慧欣', '03:24', '谜', '国语', '安静', '2006-10-01', '9.jpg', '暂无歌词', '9.m4a', '4');
INSERT INTO `index_song` VALUES ('10', 'Volar', '侧田', '03:52', 'No Protection', '粤语', '摇滚', '2006-07-05', '10.jpg', '暂无歌词', '10.m4a', '2');
INSERT INTO `index_song` VALUES ('11', '好心分手', '王力宏/卢巧音', '03:00', '至情至爱', '国语', '伤感', '2015-07-24', '11.jpg', '暂无歌词', '11.m4a', '1');
INSERT INTO `index_song` VALUES ('12', '就是这样', '林采欣', '05:13', '单曲', '国语', '流行', '2016-10-10', '12.jpg', '暂无歌词', '12.m4a', '3');
INSERT INTO `index_song` VALUES ('13', '爱过了又怎样', '张惠春', '04:09', '单曲', '国语', '流行', '2016-09-07', '13.jpg', '暂无歌词', '13.m4a', '3');

-- ----------------------------
-- Table structure for user_myuser
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser`;
CREATE TABLE `user_myuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `weChat` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_myuser
-- ----------------------------
INSERT INTO `user_myuser` VALUES ('1', 'pbkdf2_sha256$150000$l4S6icqwhtPw$8yw/eGvZ1VyYDIOoCCGvymEmI3G8LbjhfFYPjGOmFQU=', '2020-01-01 13:08:20.248806', '0', 'xiaoxiao', '', '', '', '0', '1', '2020-01-01 13:08:04.825923', '', '', '18813967628');
INSERT INTO `user_myuser` VALUES ('2', 'pbkdf2_sha256$150000$sTEIxUwEAabn$wAM8Z8q8+4EoeKHMCzVtjhixnZkBmcS88r2NIVylUZ0=', '2020-01-01 13:46:00.000000', '1', 'admin', '', '', '1748616485@qq.com', '1', '1', '2020-01-01 13:46:00.000000', '1748616485', 'abc1748616485', '18813967621');

-- ----------------------------
-- Table structure for user_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_groups`;
CREATE TABLE `user_myuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_myuser_groups_myuser_id_group_id_680fbae2_uniq` (`myuser_id`,`group_id`),
  KEY `user_myuser_groups_myuser_id_dfd02c0f` (`myuser_id`),
  KEY `user_myuser_groups_group_id_e21a6dfd` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_myuser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_user_permissions`;
CREATE TABLE `user_myuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_myuser_user_permiss_myuser_id_permission_id_ae8df385_uniq` (`myuser_id`,`permission_id`),
  KEY `user_myuser_user_permissions_myuser_id_5d2dcfb0` (`myuser_id`),
  KEY `user_myuser_user_permissions_permission_id_d16c386c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_myuser_user_permissions
-- ----------------------------
