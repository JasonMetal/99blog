/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : 99blog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-30 17:32:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `spread` tinyint(1) DEFAULT '0',
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `href` varchar(400) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` float(11,2) DEFAULT '0.00' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` timestamp NULL DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '0', '后台首页', '0', '', '&#xe68e;', 'admin/index/welcome', '', '_self', '0.00', '1', '', '0', '2018-07-21 13:28:32', null, null);
INSERT INTO `system_menu` VALUES ('142', '0', '系统设置', '0', '', '&#xe620;', '#', '', '_self', '3.00', '1', null, '0', '2018-07-17 03:09:41', null, null);
INSERT INTO `system_menu` VALUES ('163', '167', '管理员列表', '0', '', 'fa-group', 'admin/user/index', '', '_self', '1.00', '1', '', '0', '2018-07-18 01:15:16', null, null);
INSERT INTO `system_menu` VALUES ('164', '167', '菜单配置', '0', '', '&#xe620;', 'admin/menu/index', '', '_self', '1.00', '1', '', '0', '2018-07-19 02:05:48', null, null);
INSERT INTO `system_menu` VALUES ('165', '169', '刷新缓存', '0', '', '&#xe9aa;', 'admin/system/refresh', '', '_self', '5.00', '1', '', '0', '2018-07-19 10:11:27', null, null);
INSERT INTO `system_menu` VALUES ('166', '168', '系统节点', '0', '', '&#xe631;', 'admin/node/index', '', '_self', '5.00', '1', '', '0', '2018-07-23 00:44:49', null, null);
INSERT INTO `system_menu` VALUES ('167', '142', '系统管理', '0', '', '&#xe716;', '#', '', '_self', '0.00', '1', '', '0', '2018-07-23 01:23:11', null, null);
INSERT INTO `system_menu` VALUES ('168', '142', '权限管理', '0', '', '&#xe857;', '#', '', '_self', '2.00', '1', '', '0', '2018-07-23 01:23:27', null, null);
INSERT INTO `system_menu` VALUES ('169', '142', '系统刷新', '0', '', '&#xe639;', '#', '', '_self', '3.00', '1', '', '0', '2018-07-23 01:26:30', null, null);
INSERT INTO `system_menu` VALUES ('171', '168', '角色权限', '0', '', '&#xe606;', 'admin/auth/index', '', '_self', '0.00', '1', '', '0', '2018-07-23 15:37:53', null, null);
INSERT INTO `system_menu` VALUES ('172', '169', '刷新节点', '0', '', '&#xe666;', 'admin/system/refresh_node', '', '_self', '1.00', '1', '', '0', '2018-07-25 22:06:45', null, null);
INSERT INTO `system_menu` VALUES ('173', '169', '清除节点', '0', '', '&#xe639;', 'admin/system/clear_node', '', '_self', '0.00', '1', '', '0', '2018-07-26 15:27:24', null, null);
INSERT INTO `system_menu` VALUES ('175', '167', '系统配置', '0', '', '&#xe663;', 'admin/config/index', '', '_self', '5.00', '1', '', '0', '2018-07-31 00:11:14', '2018-08-01 11:28:42', null);
INSERT INTO `system_menu` VALUES ('178', '0', '官网管理', '0', '', '&#xe60a;', '#', '', '_self', '2.00', '1', '', '0', '2018-09-20 02:00:30', null, null);
INSERT INTO `system_menu` VALUES ('179', '178', '文章管理', '0', '', '&#xe62a;', '#', '', '_self', '4.00', '1', '', '0', '2018-09-20 02:01:44', null, null);
INSERT INTO `system_menu` VALUES ('180', '179', '文章列表', '0', '', '&#xe637;', 'admin/blog.article/index', '', '_self', '0.00', '1', '', '0', '2018-09-20 02:03:17', null, null);
INSERT INTO `system_menu` VALUES ('185', '178', '会员管理', '0', '', '&#xe66f;', '#', '', '_self', '3.00', '0', '', '0', '2018-09-21 01:12:26', null, null);
INSERT INTO `system_menu` VALUES ('186', '185', '会员列表', '0', '', '&#xe770;', 'admin/blog.member/index', '', '_self', '0.00', '1', '', '0', '2018-09-21 01:13:19', null, null);
INSERT INTO `system_menu` VALUES ('187', '179', '标签管理', '0', '', '&#xe6b2;', 'admin/blog.tag/index', '', '_self', '0.00', '0', '', '0', '2018-09-21 01:14:43', null, null);
INSERT INTO `system_menu` VALUES ('189', '178', '广告管理', '0', '', '&#xe857;', '#', '', '_self', '5.00', '1', '', '0', '2018-09-21 01:17:25', null, null);
INSERT INTO `system_menu` VALUES ('190', '189', '轮播图配置', '0', '', '&#xe64a;', 'admin/blog.slider/index', '', '_self', '2.00', '1', '', '0', '2018-09-21 01:17:44', null, null);
INSERT INTO `system_menu` VALUES ('210', '185', '登录记录', '0', '', '&#xe665;', 'admin/blog.login_record/index', '', '_self', '2.00', '1', '', '0', '2018-09-26 17:33:29', null, null);
INSERT INTO `system_menu` VALUES ('211', '179', '文章分类', '0', '', '&#xe664;', 'admin/blog.category/index', '', '_self', '0.00', '1', '', '0', '2018-09-27 01:34:06', null, null);
INSERT INTO `system_menu` VALUES ('212', '179', '文章评论', '0', '', '&#xe66a;', 'admin/blog.comment/index', '', '_self', '0.00', '0', '', '0', '2018-10-11 21:04:53', null, null);
INSERT INTO `system_menu` VALUES ('213', '178', '常用工具', '0', '', '&#xe665;', '#', '', '_self', '0.00', '1', '', '0', '2018-10-11 22:18:28', null, null);
INSERT INTO `system_menu` VALUES ('214', '213', '前台公共配置管理', '0', '', '&#xe716;', 'admin/blog.config/index', '', '_self', '0.00', '1', '', '0', '2018-10-11 22:19:02', null, null);
INSERT INTO `system_menu` VALUES ('215', '213', '友情链接', '0', '', '&#xe64d;', 'admin/blog.website_link/index', '', '_self', '0.00', '0', '', '0', '2018-10-11 22:19:32', null, null);
INSERT INTO `system_menu` VALUES ('216', '213', '公告管理', '0', '', '&#xe667;', 'admin/blog.notice/index', '', '_self', '0.00', '0', '', '0', '2018-10-11 22:21:02', null, null);
INSERT INTO `system_menu` VALUES ('217', '178', '搜索管理', '0', '', '&#xe615;', '#', '', '_self', '0.00', '0', '', '0', '2018-10-11 22:23:04', null, null);
INSERT INTO `system_menu` VALUES ('218', '217', '搜索排行', '0', '', '&#xe649;', 'admin/blog.search_record/index', '', '_self', '0.00', '1', '', '0', '2018-10-11 22:23:32', null, null);
INSERT INTO `system_menu` VALUES ('219', '217', '搜索记录', '0', '', '&#xe66e;', 'admin/blog.search/index', '', '_self', '0.00', '1', '', '0', '2018-10-11 22:23:54', null, null);
INSERT INTO `system_menu` VALUES ('224', '142', '系统工具', '0', '', 'fa-server', '#', '', '_self', '6.00', '1', '', '0', '2018-10-13 21:41:40', null, null);
INSERT INTO `system_menu` VALUES ('225', '224', '图标管理-layui', '0', '', 'fa-circle-o-notch', 'admin/tool.icon/index', '', '_self', '0.00', '1', '', '0', '2018-10-13 21:42:25', null, null);
INSERT INTO `system_menu` VALUES ('226', '224', '图标管理-fa', '0', '', 'fa-crosshairs', 'admin/tool.icon/fa', '', '_self', '0.00', '1', '', '0', '2018-10-13 21:43:02', null, null);
INSERT INTO `system_menu` VALUES ('228', '227', '标签管理', '0', '', '&#xe6b2;', 'admin/blog.protag/index', '', '_self', '0.00', '1', '', '0', '2019-03-27 09:47:00', null, null);
INSERT INTO `system_menu` VALUES ('229', '227', '产品列表', '0', '', '&#xe637;', 'admin/blog.product/index', '', '_self', '0.00', '1', '', '0', '2019-03-27 09:48:07', null, null);
INSERT INTO `system_menu` VALUES ('230', '227', '产品分类', '0', '', '&#xe664;', 'admin/blog.proCategory/index', '', '_self', '0.00', '1', '', '0', '2019-03-27 09:48:48', null, null);
INSERT INTO `system_menu` VALUES ('231', '178', '产品管理', '0', '', 'fa-apple', '#', '', '_self', '6.00', '1', '', '0', '2019-04-18 11:33:32', null, null);
INSERT INTO `system_menu` VALUES ('232', '231', '产品列表', '0', '', 'fa-align-left', 'admin/blog.product/index', '', '_self', '0.00', '1', '', '0', '2019-04-18 11:34:36', null, null);
INSERT INTO `system_menu` VALUES ('233', '231', '产品分类', '0', '', 'fa-book', 'admin/blog.pro_category/index', '', '_self', '0.00', '1', '', '0', '2019-04-18 11:35:28', null, null);
INSERT INTO `system_menu` VALUES ('234', '231', '产品标签', '0', '', 'fa-code', 'admin/blog.protag/index', '', '_self', '0.00', '0', '', '0', '2019-04-18 11:36:14', null, null);
INSERT INTO `system_menu` VALUES ('235', '178', '案例管理', '0', '', 'fa-css3', '#', '', '_self', '4.00', '1', '', '0', '2019-04-19 10:07:35', null, null);
INSERT INTO `system_menu` VALUES ('236', '235', '案例分类', '0', '', 'fa-tasks', 'admin/blog.caseCategory/index', '', '_self', '0.00', '1', '', '0', '2019-04-19 10:09:02', null, null);
INSERT INTO `system_menu` VALUES ('237', '235', '案例标签', '0', '', 'fa-comment', 'admin/blog.casetag/index', '', '_self', '0.00', '0', '', '0', '2019-04-19 10:11:17', null, null);
INSERT INTO `system_menu` VALUES ('238', '235', '案例列表', '0', '', 'fa-align-center', 'admin/blog.casement/index', '', '_self', '0.00', '1', '', '0', '2019-04-19 10:12:26', null, null);
INSERT INTO `system_menu` VALUES ('239', '178', '关键字和描述管理', '0', '', 'fa-cog', '#', '', '_self', '0.00', '1', '', '0', '2019-04-26 17:46:22', null, null);
INSERT INTO `system_menu` VALUES ('240', '239', '关键字和描述列表', '0', '', 'fa-sort-amount-desc', 'admin/keyword/index', '', '_self', '0.00', '1', '', '0', '2019-04-26 17:48:58', null, null);
