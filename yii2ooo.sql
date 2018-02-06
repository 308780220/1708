/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : yii2ooo

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-09-20 23:15:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('博客管理', '1', '1505524463');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1505528149', '1505528149');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/blog/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/blog/create', '2', null, null, null, '1505524708', '1505524708');
INSERT INTO `auth_item` VALUES ('/blog/delete', '2', null, null, null, '1505524708', '1505524708');
INSERT INTO `auth_item` VALUES ('/blog/index', '2', '博客列表', null, null, '1505524463', '1505524463');
INSERT INTO `auth_item` VALUES ('/blog/update', '2', null, null, null, '1505524708', '1505524708');
INSERT INTO `auth_item` VALUES ('/blog/view', '2', null, null, null, '1505524708', '1505524708');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/debug/user/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/debug/user/reset-identity', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/debug/user/set-identity', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/magazine/*', '2', null, null, null, '1505892076', '1505892076');
INSERT INTO `auth_item` VALUES ('/magazine/create', '2', null, null, null, '1505892076', '1505892076');
INSERT INTO `auth_item` VALUES ('/magazine/delete', '2', null, null, null, '1505892076', '1505892076');
INSERT INTO `auth_item` VALUES ('/magazine/index', '2', null, null, null, '1505892076', '1505892076');
INSERT INTO `auth_item` VALUES ('/magazine/update', '2', null, null, null, '1505892076', '1505892076');
INSERT INTO `auth_item` VALUES ('/magazine/view', '2', null, null, null, '1505892076', '1505892076');
INSERT INTO `auth_item` VALUES ('/rbac/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/rbac/init', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/rbac/init2', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/user-backend/*', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/user-backend/create', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/user-backend/delete', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/user-backend/index', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/user-backend/signup', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/user-backend/update', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('/user-backend/view', '2', null, null, null, '1505528150', '1505528150');
INSERT INTO `auth_item` VALUES ('博客管理', '1', null, null, null, '1505524463', '1505524463');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('博客管理', '/*');
INSERT INTO `auth_item_child` VALUES ('博客管理', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('博客管理', '/blog/create');
INSERT INTO `auth_item_child` VALUES ('博客管理', '/blog/delete');
INSERT INTO `auth_item_child` VALUES ('博客管理', '/blog/index');
INSERT INTO `auth_item_child` VALUES ('博客管理', '/blog/update');
INSERT INTO `auth_item_child` VALUES ('博客管理', '/blog/view');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `is_delete` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否删除 1未删除 2已删除',
  `created_at` datetime NOT NULL COMMENT '添加时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------

-- ----------------------------
-- Table structure for magazine
-- ----------------------------
DROP TABLE IF EXISTS `magazine`;
CREATE TABLE `magazine` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `ctime` datetime NOT NULL,
  `author` varchar(20) CHARACTER SET utf8 NOT NULL,
  `user_backend_id` int(11) NOT NULL,
  `category_id` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of magazine
-- ----------------------------
INSERT INTO `magazine` VALUES ('1', 'asdfasdfasdf', 'asdfasdfasdfasdf', '2017-09-19 00:00:00', 'admin', '1', '1');
INSERT INTO `magazine` VALUES ('2', 'asdfasdfasdf', 'asdfasdfasdfasdf', '2017-09-19 00:00:00', 'admin', '1', '1');
INSERT INTO `magazine` VALUES ('3', 'asdfasdfasdf', 'asldkjf asdlkfjasldjgqpepwripwqe  ljfsdh fks fh hwq erjkhq we asdf sdf l;askdjf lsdjf qwue rjd f;lla fjsdal fjasd;lk fjafh qwej qwekewjr ;lqejkr qw;erjkl;qwej rqwl;er jerkj qlhfaks djfkasdfh kasdf k', '2017-09-19 00:00:00', 'admin', '1', '1');
INSERT INTO `magazine` VALUES ('4', 'asdfasdfasdf', 'asdfasdfasdfasdf', '2017-09-19 00:00:00', 'admin', '1', '1');
INSERT INTO `magazine` VALUES ('5', 'asdfasdfasdf', 'dfasdfasdfasdf', '2017-09-19 00:00:00', 'admin', '1', '1');
INSERT INTO `magazine` VALUES ('6', 'asdfasdfasdf', 'asdfasdfasdfasdf', '2017-09-19 00:00:00', 'admin', '1', '1');

-- ----------------------------
-- Table structure for magazine_category
-- ----------------------------
DROP TABLE IF EXISTS `magazine_category`;
CREATE TABLE `magazine_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of magazine_category
-- ----------------------------
INSERT INTO `magazine_category` VALUES ('1', '分类一');
INSERT INTO `magazine_category` VALUES ('2', '分类二');
INSERT INTO `magazine_category` VALUES ('3', '分类三');

-- ----------------------------
-- Table structure for magazine_reply
-- ----------------------------
DROP TABLE IF EXISTS `magazine_reply`;
CREATE TABLE `magazine_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `magazine_id` smallint(5) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `ctime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `magazine_id` (`magazine_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of magazine_reply
-- ----------------------------
INSERT INTO `magazine_reply` VALUES ('1', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('2', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('3', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('4', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('5', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('6', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('7', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('8', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('9', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('10', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('11', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('12', '3', '1', 'asdfasd', '308780220@qq.com', 'asdlfjasldkfjasld asldkjflsag alsdkj flasjdf ladsj flsasd ldskf jalsdjf aslkdfj alsdkjff asldjf asldj', '2017-09-20 19:24:05');
INSERT INTO `magazine_reply` VALUES ('13', '4', '1', 'asdfasdf', 'asdfasdf', 'asdfasdfas', '2017-09-20 20:27:59');
INSERT INTO `magazine_reply` VALUES ('14', '4', '1', 'asdfasdf444', 'asdfasdf', 'asdfasdfas44', '2017-09-20 20:28:31');
INSERT INTO `magazine_reply` VALUES ('15', '5', '1', 'asdfasdf', 'asgasgas', 'dfasdfasdfasdfasdfasdfas as dfasd fasdf asd fasd asdf asdf asdf sdfas dfasd f', '2017-09-20 20:29:20');
INSERT INTO `magazine_reply` VALUES ('16', '5', '1', 'asdfasdf', 'asgasgas', 'dfasdfasdfasdfasdfasdfas as dfasd fasdf asd fasd asdf asdf asdf sdfas dfasd f', '2017-09-20 20:30:26');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '菜单管理', null, '/admin/menu/index', '1', null);
INSERT INTO `menu` VALUES ('2', '创建菜单', '1', '/admin/menu/create', '10', null);
INSERT INTO `menu` VALUES ('3', '菜单列表', '1', '/admin/menu/index', '11', null);
INSERT INTO `menu` VALUES ('4', 'RBAC管理', null, null, '1', null);
INSERT INTO `menu` VALUES ('5', '权限管理', '4', '/admin/permission/index', '20', null);
INSERT INTO `menu` VALUES ('6', '角色管理', '4', '/admin/role/index', '21', null);
INSERT INTO `menu` VALUES ('7', '规则管理', '4', '/admin/rule/index', '25', null);
INSERT INTO `menu` VALUES ('8', '路由管理', '4', '/admin/route/index', '19', null);
INSERT INTO `menu` VALUES ('9', '权限分配', '4', '/admin/assignment/index', '23', null);
INSERT INTO `menu` VALUES ('10', '用户管理', '4', '/user-backend/index', '18', null);
INSERT INTO `menu` VALUES ('11', '杂志管理', null, '/magazine/index', '3', null);
INSERT INTO `menu` VALUES ('12', '添加杂志', '11', '/magazine/create', '31', null);
INSERT INTO `menu` VALUES ('13', '杂志列表', '11', '/magazine/index', '30', null);

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1505520461');
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', '1505524185');
INSERT INTO `migration` VALUES ('m140602_111327_create_menu_table', '1505716982');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhanglu', 'EUFIggLZYcYNHFTBbgUileJemQcF8QGJ', '$2y$13$r4XbsU3NEU3Yu0cvYLRW0e/w5RDILjbKRu6akmTIEUOC8jIaT7kCa', null, '308780220@qq.com', '10', '10', '1505889549', '1505889549');

-- ----------------------------
-- Table structure for user_backend
-- ----------------------------
DROP TABLE IF EXISTS `user_backend`;
CREATE TABLE `user_backend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_backend
-- ----------------------------
INSERT INTO `user_backend` VALUES ('1', 'admin', '5OoWvv5oK8TGpRJZfZ5XoPAmGdcZBiYe', '$2y$13$OHcekHikZip0s5uOHXTIsOT6q6DGP1Z62//q7WhD2Yo.Ld.GA1IgC', '308780220@qq.com', '2017-09-16 00:34:46', '2017-09-16 00:34:46');
INSERT INTO `user_backend` VALUES ('2', 'zhanglu', 'NdvxRpavi0dIds4cbWscKho05HKZEqeu', '$2y$13$oazingWxlt4gA6JhmBdZSux/qrRhMJ.ghu0mTcnhvlUUGAt99LWn2', '30@qq.com', '2017-09-16 01:15:06', '2017-09-16 01:15:06');
