/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : 99blog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-30 17:33:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_config
-- ----------------------------
DROP TABLE IF EXISTS `blog_config`;
CREATE TABLE `blog_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `type` varchar(30) NOT NULL DEFAULT 'string' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注信息',
  `sort` int(10) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT '0' COMMENT '创建人',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `group` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='博客配置';

-- ----------------------------
-- Records of blog_config
-- ----------------------------
INSERT INTO `blog_config` VALUES ('1', 'LoginDuration', 'blog', 'time', '3600', '博客登录有效时长', '0', '2018-07-17 17:27:27', '0', '2018-07-17 22:10:33', null);
INSERT INTO `blog_config` VALUES ('36', 'ScanFollow', 'blog', 'string', '/static/uploads/20190430/273a7b0e41f5113609a6959dff60f58a.jpg', '微信二维码一', '0', '2018-08-29 12:58:10', '0', null, null);
INSERT INTO `blog_config` VALUES ('40', 'qq', 'blog', 'string', '180-5428-5450', 'QQ', '0', '2019-01-02 17:38:39', '0', null, null);
INSERT INTO `blog_config` VALUES ('41', 'phone', 'blog', 'string', '180-5428-5450', '手机号码', '0', '2019-01-02 17:38:49', '0', null, null);
INSERT INTO `blog_config` VALUES ('42', 'wechat', 'blog', 'string', '180-5428-5450', '微信', '0', '2019-01-02 17:39:00', '0', null, null);
INSERT INTO `blog_config` VALUES ('43', 'SiteLocation', 'blog', 'string', '广东省广州市白云区永泰商务中心B219', '工作地址', '0', '2019-01-02 17:39:20', '0', null, null);
INSERT INTO `blog_config` VALUES ('44', 'company_name', 'blog', 'string', '广州得翼网络有限公司', '公司名称', '0', '2019-04-24 16:34:49', '0', null, null);
INSERT INTO `blog_config` VALUES ('46', 'ScanFollow2', 'blog', 'string', '/static/uploads/20190430/0f3e4ad9fc5c001da76d01b774904e3a.jpg', '微信二维码二', '0', '2019-04-30 11:55:55', '0', null, null);
INSERT INTO `blog_config` VALUES ('47', 'wecode', 'blog', 'string', '卓经理', '微信二维码名称', '0', '2019-04-30 14:33:54', '0', null, null);
INSERT INTO `blog_config` VALUES ('48', 'wecode2', 'blog', 'string', '黄经理', '微信二维码名称', '0', '2019-04-30 14:33:58', '0', null, null);
