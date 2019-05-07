/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : 99blog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-30 17:32:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for keyword
-- ----------------------------
DROP TABLE IF EXISTS `keyword`;
CREATE TABLE `keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `describe` text NOT NULL,
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注信息',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of keyword
-- ----------------------------
INSERT INTO `keyword` VALUES ('1', 'index', 'basic', 'string', '首页', '微商控价系统、微商管理系统、微商云仓系统、微商新零售商城,详情咨询黄经理 ：180-5428-5450', '首页', '2019-04-26 17:55:55', '1');
INSERT INTO `keyword` VALUES ('2', 'product', 'basic', 'string', '产品中心', '微商控价系统、微商管理系统、微商云仓系统、微商新零售商城,详情咨询黄经理 ：180-5428-5450', '产品中心', '2019-04-26 17:58:03', '1');
INSERT INTO `keyword` VALUES ('3', 'casement', 'basic', 'string', '品牌案例', '微商控价系统、微商管理系统、微商云仓系统、微商新零售商城,详情咨询黄经理 ：180-5428-5450', '品牌案例', '2019-04-26 17:58:44', '1');
INSERT INTO `keyword` VALUES ('4', 'article', 'basic', 'string', '得翼新闻', '微商控价系统、微商管理系统、微商云仓系统、微商新零售商城,详情咨询黄经理 ：180-5428-5450', '得翼新闻', '2019-04-26 17:59:13', '1');
INSERT INTO `keyword` VALUES ('5', 'about', 'basic', 'string', '关于我们', '微商控价系统、微商管理系统、微商云仓系统、微商新零售商城,详情咨询黄经理 ：180-5428-5450', '关于我们', '2019-04-26 17:59:26', '1');
INSERT INTO `keyword` VALUES ('6', 'contact', 'basic', 'string', '联系得翼', '微商控价系统、微商管理系统、微商云仓系统、微商新零售商城,详情咨询黄经理 ：180-5428-5450', '联系得翼', '2019-04-26 17:59:49', '1');
