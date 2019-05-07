/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : 99blog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-30 17:32:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注信息',
  `sort` int(10) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT '0' COMMENT '创建人',
  `update_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('1', 'ManageName', 'basic', 'string', '广东得翼网络科技有限公司', '后台名称', '0', '2018-07-17 17:27:27', '0', '2018-07-17 22:10:33', null, '1');
INSERT INTO `system_config` VALUES ('2', 'Beian', 'basic', 'string', '粤ICP备17015772号', '备案号', '0', '2018-07-17 17:27:27', '0', '2018-07-17 22:10:39', null, '1');
INSERT INTO `system_config` VALUES ('18', 'FooterName', 'basic', 'string', 'Copyright © 2018-2019 广东得翼网络科技有限公司', '底部网站标识', '5', '2018-07-17 17:27:27', '0', '2018-07-17 18:40:16', null, '1');
INSERT INTO `system_config` VALUES ('19', 'BeianUrl', 'basic', 'string', 'http://www.miitbeian.gov.cn', '备案查询链接', '2', '2018-07-17 17:30:39', '0', '2018-07-17 17:31:22', null, '0');
INSERT INTO `system_config` VALUES ('20', 'HomeUrl', 'basic', 'string', 'https://www.99php.cn', '网站首页', '0', '2018-07-17 18:45:59', '0', '2018-07-17 18:46:12', null, '0');
INSERT INTO `system_config` VALUES ('21', 'VercodeType', 'basic', 'tinyint', '1', '验证码登录开关（0：不开启，1：开启）', '3', '2018-07-17 21:52:00', '0', '2018-07-18 02:38:10', null, '0');
INSERT INTO `system_config` VALUES ('32', 'Describe', 'basic', 'string', '广州得翼有限公司', '后台顶部的名字', '0', '2018-07-30 23:01:34', '0', null, null, '1');
INSERT INTO `system_config` VALUES ('33', 'Author', 'basic', 'string', '卓经理：18620075349', '联系人一', '1', '2018-07-30 23:02:41', '0', null, null, '1');
INSERT INTO `system_config` VALUES ('34', 'Email', 'basic', 'string', '联系邮箱：1486111354@qq.com / 1486111354@qq.com', '联系邮箱', '8', '2018-07-30 23:03:15', '0', null, null, '1');
INSERT INTO `system_config` VALUES ('35', 'BlogFooterName', 'basic', 'string', 'Copyright © 2018-2019 广东得翼网络科技有限公司', '网站底部', '0', '2018-08-13 00:32:50', '0', null, null, '1');
INSERT INTO `system_config` VALUES ('36', 'description', 'basic', 'string', '广州得翼有限公司', '网站描述', '0', '2018-08-31 15:39:04', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('37', 'MailUsername', 'mail', 'string', '', '发送方的QQ邮箱用户名', '7', '2018-08-31 15:39:43', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('38', 'MailPassword', 'mail', 'string', '', '第三方授权登录码', '7', '2018-08-31 15:39:53', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('39', 'MailNickname', 'mail', 'string', '广东得翼网络科技有限公司', '设置发件人昵称', '7', '2018-08-31 15:40:44', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('40', 'MailReplyTo', 'mail', 'string', 'www99php@163.com', '回复邮件地址', '7', '2018-08-31 15:41:03', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('41', 'AccessKeyId', 'sms', 'string', '', '阿里大于公钥', '7', '2018-08-31 23:58:34', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('42', 'AccessKeySecret', 'sms', 'string', '', '阿里大鱼私钥', '7', '2018-08-31 23:58:45', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('43', 'SignName', 'sms', 'string', '广东得翼网络科技有限公司', '短信注册模板', '7', '2018-09-01 00:08:55', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('44', 'CodeTime', 'code', 'int', '60', '验证码发送间隔时间', '5', '2018-09-04 18:03:52', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('45', 'CodeDieTime', 'code', 'int', '300', '验证码有效期', '5', '2018-09-04 18:17:26', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('46', 'FileType', 'file', 'int', '1', '文件保存方法（1：本地，2：七牛云）', '2', '2018-09-17 11:44:12', '0', null, null, '1');
INSERT INTO `system_config` VALUES ('47', 'FileKey', 'file', 'string', '690c7175d2b4439646b437b8b48f92fb147eccf0', '文件路径加密秘钥（www.99php.cn）', '2', '2018-09-17 16:51:29', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('48', 'LoginDuration', 'basic', 'int', '7200', '后台登录有效时间', '1', '2018-09-30 01:02:53', '0', null, null, '1');
INSERT INTO `system_config` VALUES ('49', 'AdminModuleName', 'basic', 'int', 'console', '后台登录模块名', '1', '2018-10-01 01:22:05', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('50', 'CleanCachePassword', 'basic', 'string', 'chung951222', '刷新缓存的密码', '3', '2018-10-01 01:42:16', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('51', 'Keyword', 'basic', 'string', '广州得翼有限公司', '关键字', '0', '2018-11-19 10:46:26', '0', null, null, '0');
INSERT INTO `system_config` VALUES ('52', 'qq', 'basic', 'string', '1486111354', 'QQ', '0', '2018-11-19 10:46:36', '0', null, null, '1');
INSERT INTO `system_config` VALUES ('53', 'address', 'basic', 'string', '地址：广东省广州市白云区永泰商务中心B219', '地址', '0', '2018-11-19 10:46:46', '0', null, null, '1');
INSERT INTO `system_config` VALUES ('54', 'Author2', 'basic', 'string', '黄经理 : 15814868715', '联系人二', '0', '2019-04-18 18:26:46', '0', null, null, '1');
INSERT INTO `system_config` VALUES ('55', 'qq2', 'basic', 'string', '1491665985', 'QQ2', '0', '2019-04-30 15:25:19', '0', null, null, '1');
