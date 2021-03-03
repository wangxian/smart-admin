/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : smart-admin-dev

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 28/02/2021 23:46:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门主键id',
  `name` varchar(50) NOT NULL COMMENT '部门名称',
  `short_name` varchar(50) DEFAULT NULL COMMENT '部门简称',
  `manager_id` int(10) unsigned DEFAULT NULL COMMENT '部门负责人id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT '部门的父级id',
  `sort` int(10) NOT NULL COMMENT '部门排序',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of t_department
-- ----------------------------
BEGIN;
INSERT INTO `t_department` VALUES (1, '1024创新实验室', 'ZWGWL', 16, 0, 1, '2019-04-03 10:41:25', '2019-04-03 10:41:25');
INSERT INTO `t_department` VALUES (2, '二级部门-2', NULL, 15, 1, 17, '2019-04-15 16:45:10', '2019-04-15 16:45:10');
INSERT INTO `t_department` VALUES (4, '二级部门-1', '管理', 14, 1, 20, '2019-04-17 16:14:55', '2019-04-17 16:14:55');
INSERT INTO `t_department` VALUES (8, '三级部门-1', NULL, NULL, 4, 8, '2019-04-25 12:25:52', '2019-04-25 12:25:52');
INSERT INTO `t_department` VALUES (9, '四级部门-1', NULL, NULL, 8, 9, '2019-04-25 12:26:36', '2019-04-25 12:26:36');
INSERT INTO `t_department` VALUES (10, '五级部门-1', NULL, NULL, 9, 10, '2019-04-25 12:26:49', '2019-04-25 12:26:49');
INSERT INTO `t_department` VALUES (11, '六级部门-1', NULL, NULL, 10, 11, '2019-04-25 12:26:59', '2019-04-25 12:26:59');
INSERT INTO `t_department` VALUES (12, '七级部门-1', NULL, NULL, 11, 12, '2019-04-25 12:27:18', '2019-04-25 12:27:18');
INSERT INTO `t_department` VALUES (13, '八级部门-1', NULL, NULL, 12, 13, '2019-04-25 12:27:34', '2019-04-25 12:27:34');
INSERT INTO `t_department` VALUES (14, '九级部门-1', NULL, NULL, 13, 14, '2019-04-25 12:27:47', '2019-04-25 12:27:47');
INSERT INTO `t_department` VALUES (15, '十级部门-1', NULL, NULL, 14, 15, '2019-04-25 12:28:16', '2019-04-25 12:28:16');
INSERT INTO `t_department` VALUES (16, '十一级部门部门部部门门嘻嘻哈哈-1', NULL, 13, 15, 16, '2019-04-25 14:56:40', '2019-04-25 14:56:40');
INSERT INTO `t_department` VALUES (17, '信息中心', NULL, 16, 1, 4, '2019-04-26 11:53:50', '2019-04-26 11:53:50');
INSERT INTO `t_department` VALUES (18, '测试部门', NULL, 16, 17, 18, '2019-04-26 11:54:06', '2019-04-26 11:54:06');
INSERT INTO `t_department` VALUES (19, '张娇测试', NULL, NULL, 2, 22, '2019-04-26 14:36:18', '2019-04-26 14:36:18');
INSERT INTO `t_department` VALUES (20, '子部门', NULL, NULL, 2, 23, '2019-04-26 14:36:28', '2019-04-26 14:36:28');
INSERT INTO `t_department` VALUES (22, '张静如', NULL, 16, 1, 2, '2019-04-28 14:21:44', '2019-04-28 14:21:44');
INSERT INTO `t_department` VALUES (23, '张静如2', NULL, 22, 4, 19, '2019-04-28 14:22:48', '2019-04-28 14:22:48');
INSERT INTO `t_department` VALUES (24, '测试', NULL, 18, 23, 24, '2019-04-29 10:12:42', '2019-04-29 10:12:42');
INSERT INTO `t_department` VALUES (25, '测试', NULL, 18, 23, 25, '2019-04-29 10:12:42', '2019-04-29 10:12:42');
COMMIT;

-- ----------------------------
-- Table structure for t_email
-- ----------------------------
DROP TABLE IF EXISTS `t_email`;
CREATE TABLE `t_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `to_emails` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收件人',
  `send_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发送状态 0未发送 1已发送',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮件内容',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_email
-- ----------------------------
BEGIN;
INSERT INTO `t_email` VALUES (21, 'b', 'asdf@33.com', 1, '<p>c</p>', '2019-09-06 14:25:33', '2019-09-06 14:25:33');
INSERT INTO `t_email` VALUES (26, 'string', 'string', 0, 'string', '2019-09-06 07:01:32', '2019-09-06 07:01:32');
INSERT INTO `t_email` VALUES (27, 'string', 'string', 0, 'string', '2019-09-06 07:01:32', '2019-09-06 07:01:32');
INSERT INTO `t_email` VALUES (37, 'ewqwe', '适者生存@22.cc', 1, '<p>qweqwe</p>', '2019-11-09 10:00:46', '2019-11-09 10:00:46');
INSERT INTO `t_email` VALUES (38, 'ewqwe', '适者生存@22.cc', 1, '<p>qweqwe</p>', '2019-11-09 10:00:49', '2019-11-09 10:00:49');
INSERT INTO `t_email` VALUES (40, 'dsfds', 'dsfsd@qq.ccc', 1, '<p>fsdfs</p>', '2019-11-09 10:04:57', '2019-11-09 10:04:57');
INSERT INTO `t_email` VALUES (41, 'dsfds', 'dsfsd@qq.ccc', 1, '<p>fsdfs</p>', '2019-11-09 10:04:57', '2019-11-09 10:04:57');
INSERT INTO `t_email` VALUES (42, 'dsfds', 'dsfsd@qq.ccc', 1, '<p>fsdfs</p>', '2019-11-09 10:04:58', '2019-11-09 10:04:58');
INSERT INTO `t_email` VALUES (43, 'dsfds', 'dsfsd@qq.ccc', 1, '<p>fsdfs</p>', '2019-11-09 10:04:59', '2019-11-09 10:04:59');
INSERT INTO `t_email` VALUES (44, 'dsfds', 'dsfsd@qq.ccc', 1, '<p>fsdfs</p>', '2019-11-09 10:04:59', '2019-11-09 10:04:59');
INSERT INTO `t_email` VALUES (45, 'dsfds', 'dsfsd@qq.ccc', 1, '<p>fsdfs</p>', '2019-11-09 10:05:16', '2019-11-09 10:05:16');
INSERT INTO `t_email` VALUES (46, 'dsfds', 'dsfsd@qq.ccc', 1, '<p>fsdfs</p>', '2019-11-09 10:06:29', '2019-11-09 10:06:29');
INSERT INTO `t_email` VALUES (47, 'dsfds', 'dsfsd@qq.ccc', 1, '<p>fsdfs</p>', '2019-11-09 10:07:02', '2019-11-09 10:07:02');
INSERT INTO `t_email` VALUES (48, 'dsfds', 'dsfsd@qq.ccc', 1, '<p>fsdfs</p>', '2019-11-09 10:07:16', '2019-11-09 10:07:16');
INSERT INTO `t_email` VALUES (49, '2342', '11@ss.cc', 1, '<p>234234</p>', '2019-11-09 10:08:13', '2019-11-09 10:08:13');
INSERT INTO `t_email` VALUES (50, '2342', '11@ss.cc', 1, '<p>234234</p>', '2019-11-09 10:08:30', '2019-11-09 10:08:30');
INSERT INTO `t_email` VALUES (51, '2342', '11@ss.cc', 1, '<p>234234</p>', '2019-11-09 10:08:50', '2019-11-09 10:08:50');
INSERT INTO `t_email` VALUES (52, '2342', '11@ss.cc', 1, '<p>234234</p>', '2019-11-09 10:09:09', '2019-11-09 10:09:09');
INSERT INTO `t_email` VALUES (53, '2342', '11@ss.cc', 1, '<p>234234</p>', '2019-11-09 10:09:31', '2019-11-09 10:09:31');
INSERT INTO `t_email` VALUES (54, '2342', '11@ss.cc', 1, '<p>234234</p>', '2019-11-09 10:12:24', '2019-11-09 10:12:24');
INSERT INTO `t_email` VALUES (55, '2342', '11@ss.cc', 1, '<p>234234</p>', '2019-11-09 10:13:13', '2019-11-09 10:13:13');
INSERT INTO `t_email` VALUES (56, 'asdasd', '3423@aqq.cc', 0, '<p>asdasd</p>', '2019-11-09 10:20:42', '2019-11-09 10:20:42');
INSERT INTO `t_email` VALUES (57, 'asdasd', '3423@aqq.cc', 0, '<p>asdasd</p>', '2019-11-09 10:20:52', '2019-11-09 10:20:52');
INSERT INTO `t_email` VALUES (58, 'asdasd', '3423@aqq.cc', 0, '<p>asdasd</p>', '2019-11-09 10:21:16', '2019-11-09 10:21:16');
INSERT INTO `t_email` VALUES (59, 'asdasd', '3423@aqq.cc', 0, '<p>asdasd</p>', '2019-11-09 10:21:24', '2019-11-09 10:21:24');
INSERT INTO `t_email` VALUES (60, 'asdasd', '3423@aqq.cc', 0, '<p>asdasd</p>', '2019-11-09 10:21:30', '2019-11-09 10:21:30');
INSERT INTO `t_email` VALUES (61, 'asdasd', '3423@aqq.cc', 0, '<p>asdasd</p>', '2019-11-09 10:21:53', '2019-11-09 10:21:53');
INSERT INTO `t_email` VALUES (62, 'a21312', '23423@qq.cc', 0, '<p>asdasdas</p>', '2019-11-09 10:23:40', '2019-11-09 10:23:40');
INSERT INTO `t_email` VALUES (63, '11', '1234@qq.com', 0, '<p>23</p>', '2019-11-15 15:35:12', '2019-11-15 15:35:12');
INSERT INTO `t_email` VALUES (64, '11', '1234@qq.com', 0, '<p>23</p>', '2019-11-15 15:35:15', '2019-11-15 15:35:15');
INSERT INTO `t_email` VALUES (65, '11', '1234@qq.com', 0, '<p>23</p>', '2019-11-15 15:35:16', '2019-11-15 15:35:16');
INSERT INTO `t_email` VALUES (66, 'eeee', '1234@qq.com', 0, '<p>&nbsp; &nbsp; eee2233<br></p>', '2019-11-15 17:00:00', '2019-11-15 17:00:00');
INSERT INTO `t_email` VALUES (67, 'eeee', '1234@qq.com', 0, '<p>&nbsp; &nbsp; eee2233<br></p>', '2019-11-15 17:00:03', '2019-11-15 17:00:03');
INSERT INTO `t_email` VALUES (68, 'eeee', '1234@qq.com', 0, '<p>&nbsp; &nbsp; eee2233<br></p>', '2019-11-15 17:00:04', '2019-11-15 17:00:04');
INSERT INTO `t_email` VALUES (69, '22223', '1017146812@qq.com', 0, '<p>&nbsp; &nbsp; e34233<br></p>', '2019-11-15 17:00:33', '2019-11-15 17:00:33');
INSERT INTO `t_email` VALUES (70, '22223', '1017146812@qq.com', 0, '<p>&nbsp; &nbsp; e34233<br></p>', '2019-11-15 17:00:34', '2019-11-15 17:00:34');
INSERT INTO `t_email` VALUES (71, '22223', '1017146812@qq.com', 0, '<p>&nbsp; &nbsp; e34233<br></p>', '2019-11-15 17:00:34', '2019-11-15 17:00:34');
INSERT INTO `t_email` VALUES (72, '22223', '12232', 0, '<p>&nbsp; &nbsp; e34233<br></p>', '2019-11-15 17:00:49', '2019-11-15 17:00:49');
INSERT INTO `t_email` VALUES (73, '22223', '12232@qq.com', 0, '<p>&nbsp; &nbsp; e34233<br></p>', '2019-11-15 17:00:56', '2019-11-15 17:00:56');
INSERT INTO `t_email` VALUES (74, 'dsasdasd', 'asdas@qq.com', 0, '<p>asdasd</p>', '2019-11-16 08:51:44', '2019-11-16 08:51:44');
INSERT INTO `t_email` VALUES (75, 'dsasdasd', 'asdas@qq.com', 0, '<p>asdasd</p>', '2019-11-16 09:05:10', '2019-11-16 09:05:10');
INSERT INTO `t_email` VALUES (76, 'dsasdasd', 'asdas@qq.com', 0, '<p>asdasd</p>', '2019-11-16 09:05:14', '2019-11-16 09:05:14');
INSERT INTO `t_email` VALUES (77, 'dsasdasd', 'asdas@qq.com', 0, '<p>asdasd</p>', '2019-11-16 09:06:34', '2019-11-16 09:06:34');
INSERT INTO `t_email` VALUES (78, 'dsasdasd', 'asdas@qq.com', 0, '<p>asdasd</p>', '2019-11-16 09:07:09', '2019-11-16 09:07:09');
INSERT INTO `t_email` VALUES (79, 'dsasdasd', 'asdas@qq.com', 0, '<p>asdasd</p>', '2019-11-16 09:07:30', '2019-11-16 09:07:30');
INSERT INTO `t_email` VALUES (80, 'dsasdasd', 'asdas@qq.com', 0, '<p>asdasd</p>', '2019-11-16 09:07:32', '2019-11-16 09:07:32');
INSERT INTO `t_email` VALUES (81, 'dsasdasd', 'asdas@qq.com', 0, '<p>asdasd</p>', '2019-11-16 09:08:29', '2019-11-16 09:08:29');
INSERT INTO `t_email` VALUES (82, 'sdfs', 'ss@ss.cc', 0, '<p>dsdsf</p>', '2019-11-16 09:08:46', '2019-11-16 09:08:46');
INSERT INTO `t_email` VALUES (83, 'asdasd', 'asd@qq.vv', 0, '<p>asdas</p>', '2019-11-16 09:09:18', '2019-11-16 09:09:18');
INSERT INTO `t_email` VALUES (84, 'asdasd', 'asd@qq.vv', 0, '<p>asdas</p>', '2019-11-16 09:09:42', '2019-11-16 09:09:42');
INSERT INTO `t_email` VALUES (85, 'asdasd', 'asd@qq.vv', 0, '<p>asdas</p>', '2019-11-16 09:09:46', '2019-11-16 09:09:46');
INSERT INTO `t_email` VALUES (86, 'dasdad', 'dasda@ss.cc', 1, '<p>dasasdas</p>', '2019-11-16 09:10:05', '2019-11-16 09:10:05');
COMMIT;

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `login_name` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '登录帐号',
  `login_pwd` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '登录密码',
  `actual_name` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '员工名称',
  `nick_name` varchar(30) DEFAULT '' COMMENT '别名',
  `phone` varchar(15) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号码',
  `id_card` varchar(18) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份证',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `department_id` int(10) unsigned NOT NULL COMMENT '部门id',
  `is_leave` int(10) NOT NULL DEFAULT '0' COMMENT '是否离职1是',
  `is_disabled` int(10) NOT NULL DEFAULT '0' COMMENT '是否被禁用 0否1是',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_user` int(10) unsigned NOT NULL COMMENT '创建者id',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_delete` int(10) NOT NULL DEFAULT '0' COMMENT '是否删除0否 1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COMMENT='员工表';

-- ----------------------------
-- Records of t_employee
-- ----------------------------
BEGIN;
INSERT INTO `t_employee` VALUES (1, 'admin', '10d668ac640707883656c08918b3d925', '管理员', '15515515515', '13112312131', '410306199202020020', '1992-02-02', NULL, 1, 0, 0, NULL, 0, '2021-02-28 23:42:00', '2018-05-11 09:38:54', 0);
INSERT INTO `t_employee` VALUES (11, 'role1', 'c655798e4648c540812a1b8f48759af7', '角色测试1', '', '18123245230', '', '1970-01-01', '', 4, 0, 0, NULL, 1, '2019-04-27 09:56:17', '2019-04-25 12:30:22', 0);
INSERT INTO `t_employee` VALUES (12, 'role2', 'c655798e4648c540812a1b8f48759af7', '角色测试2', '', '18121451241', '', NULL, '', 4, 0, 0, NULL, 1, '2019-08-01 10:04:38', '2019-04-25 12:31:11', 0);
INSERT INTO `t_employee` VALUES (13, 'lihaifan', 'c655798e4648c540812a1b8f48759af7', 'lihaifan', '', '18399485774', '', NULL, '', 1, 0, 0, NULL, 1, '2019-04-27 09:56:17', '2019-04-25 13:50:44', 0);
INSERT INTO `t_employee` VALUES (14, 'lipeng', 'c655798e4648c540812a1b8f48759af7', '李鹏1', '', '13937988294', '', NULL, '', 2, 0, 0, NULL, 1, '2019-04-27 09:56:17', '2019-04-25 14:34:47', 0);
INSERT INTO `t_employee` VALUES (15, 'huangwenli', 'c655798e4648c540812a1b8f48759af7', '黄文丽', '', '15515515515', '', NULL, '', 16, 0, 0, NULL, 1, '2019-04-27 09:56:17', '2019-04-26 10:05:05', 0);
INSERT INTO `t_employee` VALUES (16, 'huangwenli1', 'c655798e4648c540812a1b8f48759af7', '黄文丽', '', '15515515515', '', NULL, '', 15, 0, 0, NULL, 1, '2019-04-27 14:04:19', '2019-04-26 10:25:04', 0);
INSERT INTO `t_employee` VALUES (17, 'zhangjiao', 'c655798e4648c540812a1b8f48759af7', '张娇', '阿娇', '15670390391', '410305199102020020', '1991-02-02', '86484@qq.com', 19, 0, 0, NULL, 1, '2019-08-05 16:33:57', '2019-04-26 14:37:23', 0);
INSERT INTO `t_employee` VALUES (18, 'zhangjiao1', 'c655798e4648c540812a1b8f48759af7', '张娇1', '', '15670390391', '', '2019-04-18', '6666@qq.com', 20, 0, 0, NULL, 1, '2019-08-05 16:33:57', '2019-04-26 14:45:55', 0);
INSERT INTO `t_employee` VALUES (19, 'zhenxiaocang', 'c655798e4648c540812a1b8f48759af7', '珍小藏', '', '15670390391', '', NULL, '', 19, 0, 1, NULL, 1, '2019-09-09 08:34:35', '2019-04-26 14:46:57', 0);
INSERT INTO `t_employee` VALUES (32, 'ceshi123', 'c655798e4648c540812a1b8f48759af7', '测试', '测试', '15670702651', '', NULL, '', 17, 0, 0, NULL, 1, '2019-09-04 09:05:48', '2019-09-03 11:48:04', 0);
INSERT INTO `t_employee` VALUES (33, 'ceshi321', 'c655798e4648c540812a1b8f48759af7', '测试', '测试', '15670702651', '', NULL, '', 17, 0, 1, NULL, 1, '2019-09-03 15:51:16', '2019-09-03 11:49:17', 0);
INSERT INTO `t_employee` VALUES (34, 'ceshi123321', 'c655798e4648c540812a1b8f48759af7', '123', '', '15600000000', '', NULL, '', 22, 0, 1, NULL, 1, '2019-09-06 08:58:37', '2019-09-04 09:13:54', 0);
INSERT INTO `t_employee` VALUES (35, 'guoqingfeng', 'c655798e4648c540812a1b8f48759af7', '郭青枫', '', '15670702651', '', NULL, '', 18, 0, 0, NULL, 1, '2019-09-04 15:09:00', '2019-09-04 15:09:00', 0);
INSERT INTO `t_employee` VALUES (36, 'li327263458', 'c655798e4648c540812a1b8f48759af7', 'lipeng', '', '13937988294', '', NULL, '', 17, 0, 0, NULL, 1, '2019-09-09 17:01:39', '2019-09-09 17:01:39', 0);
INSERT INTO `t_employee` VALUES (37, 'test123', 'c655798e4648c540812a1b8f48759af7', 'test', '', '13211110201', '', NULL, '', 18, 0, 1, NULL, 1, '2019-11-14 16:08:08', '2019-11-08 09:32:39', 0);
INSERT INTO `t_employee` VALUES (38, 'tiantian', 'c655798e4648c540812a1b8f48759af7', '天天管理员', '', '13574502368', '', NULL, '', 17, 0, 0, NULL, 1, '2019-11-14 02:08:08', '2019-11-08 11:09:46', 0);
INSERT INTO `t_employee` VALUES (39, 'wang13211111', 'c655798e4648c540812a1b8f48759af7', 'ceshi111', 'dddd', '13244553212', '', NULL, '', 25, 0, 0, NULL, 38, '2019-11-15 17:14:34', '2019-11-15 17:03:04', 0);
COMMIT;

-- ----------------------------
-- Table structure for t_file
-- ----------------------------
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE `t_file` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `module_id` varchar(50) NOT NULL COMMENT '相关业务id',
  `module_type` varchar(50) NOT NULL COMMENT '相关业务类型',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `file_size` varchar(255) DEFAULT NULL COMMENT '文件大小',
  `file_type` varchar(50) DEFAULT NULL COMMENT '文件类型，程序中枚举控制，文件类型：如身份证正面，三证合一等等',
  `file_path` varchar(255) NOT NULL COMMENT '文件key，用于文件下载',
  `file_location_type` int(10) NOT NULL COMMENT '文件位置类型',
  `creater_user` int(10) NOT NULL COMMENT '创建人，即上传人',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '上次更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `module_id_module_type` (`module_id`,`module_type`) USING BTREE,
  KEY `module_type` (`module_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_file
-- ----------------------------
BEGIN;
INSERT INTO `t_file` VALUES (1, '1', '1', '阿里云1.jpg', NULL, NULL, 'backUser/config/d1788b717be24f14ba526f25397b936f', 2, 1, NULL, '2019-07-05 10:38:15');
INSERT INTO `t_file` VALUES (2, '2', '1', '1.jpg', NULL, NULL, 'backUser/config/8895ec770c4e4e558c6d9b54eb00dffc', 2, 1, '2019-07-18 09:20:59', '2019-07-18 09:20:25');
INSERT INTO `t_file` VALUES (3, '3', '1', '随笔.txt', NULL, NULL, 'backUser/config/f5cbc4c9a56f4fa7ad0ba58b0aa5d169', 2, 1, NULL, '2019-07-18 09:22:47');
INSERT INTO `t_file` VALUES (4, '3', '1', '1.jpg', NULL, NULL, 'backUser/config/2019071809245603e0a4e449a4bf3aa28ee731c309040.jpg', 1, 1, NULL, '2019-07-18 09:24:51');
INSERT INTO `t_file` VALUES (6, '4', '1', '1.jpg', NULL, NULL, 'backUser/config/ddcb8214ba274dec9bb2c33e0e246391', 3, 1, NULL, '2019-07-19 16:19:43');
INSERT INTO `t_file` VALUES (7, '5', '1', 'sql.txt', NULL, NULL, 'backUser/config/cfbdf9562c894405b5b6f64f71fa812a', 3, 1, NULL, '2019-07-19 17:41:55');
INSERT INTO `t_file` VALUES (9, '1', '1', '20190912023241a6132f5713b54e1fb490f4ea88115747.md', NULL, NULL, 'backUser/config/20190912023241a6132f5713b54e1fb490f4ea88115747.md', 1, 1, '2019-09-12 15:25:35', '2019-09-12 14:32:42');
INSERT INTO `t_file` VALUES (10, '1', '1', '201909120232499804998573f643ff8e58189d23485629.mjs', NULL, NULL, 'backUser/config/201909120232499804998573f643ff8e58189d23485629.mjs', 1, 1, '2019-09-12 15:25:19', '2019-09-12 14:32:50');
INSERT INTO `t_file` VALUES (11, '1', '1', '201909120326564cdc8df7b8cc49cfb273926877f047f5.json', NULL, NULL, 'backUser/config/201909120326564cdc8df7b8cc49cfb273926877f047f5.json', 1, 1, NULL, '2019-09-12 15:26:56');
INSERT INTO `t_file` VALUES (12, '1', '1', '201909120343357104b7f1cc684f5797ada35c06aba770.json', NULL, NULL, 'backUser/config/201909120343357104b7f1cc684f5797ada35c06aba770.json', 1, 1, NULL, '2019-09-12 15:43:36');
INSERT INTO `t_file` VALUES (13, '1', '1', '201909120343427e408141a0ea467ea2e012f7086a6265.json', NULL, NULL, 'backUser/config/201909120343427e408141a0ea467ea2e012f7086a6265.json', 1, 1, NULL, '2019-09-12 15:43:42');
INSERT INTO `t_file` VALUES (14, '1', '1', '20190912034543b4d3a061fb2e416c899fe2ff6b9327e0.ts', NULL, NULL, 'backUser/config/20190912034543b4d3a061fb2e416c899fe2ff6b9327e0.ts', 1, 1, NULL, '2019-09-12 15:45:43');
INSERT INTO `t_file` VALUES (15, '1', '1', '20190912034550a5dc04ce79b14a1cb2bb76545c909aa8.md', NULL, NULL, 'backUser/config/20190912034550a5dc04ce79b14a1cb2bb76545c909aa8.md', 1, 1, NULL, '2019-09-12 15:45:51');
INSERT INTO `t_file` VALUES (16, '1', '1', 'LICENCE', NULL, NULL, 'backUser/config/cc02b99c0ec548f1a2231b70b7d569b8', 2, 1, NULL, '2019-09-12 15:47:22');
INSERT INTO `t_file` VALUES (17, '1', '1', 'bignumber.min.js', NULL, NULL, 'backUser/config/bda49e8ad6d242fe8735b2023dfbf125', 2, 1, NULL, '2019-09-12 15:47:29');
INSERT INTO `t_file` VALUES (18, '1', '1', '20190912034880a881fa8fbc841bfb7194ff312bd1058.json', NULL, NULL, 'backUser/config/20190912034880a881fa8fbc841bfb7194ff312bd1058.json', 1, 1, NULL, '2019-09-12 15:48:08');
INSERT INTO `t_file` VALUES (19, '1', '1', '20190912034816ece14084acf345a79396a0f4347c4e44.md', NULL, NULL, 'backUser/config/20190912034816ece14084acf345a79396a0f4347c4e44.md', 1, 1, NULL, '2019-09-12 15:48:16');
INSERT INTO `t_file` VALUES (20, '1', '1', '20191024054412fac4b4e04c574c6eab71f91e13a8a0b6.jpg', NULL, NULL, 'backUser/config/20191024054412fac4b4e04c574c6eab71f91e13a8a0b6.jpg', 1, 1, NULL, '2019-10-24 17:44:13');
INSERT INTO `t_file` VALUES (21, '1', '1', '20191106042073f7ef01bde3046bd8e01928f397230bd.jpg', NULL, NULL, 'backUser/config/20191106042073f7ef01bde3046bd8e01928f397230bd.jpg', 1, 1, NULL, '2019-11-06 02:20:13');
INSERT INTO `t_file` VALUES (22, '1', '1', '201911130802024b8a2ebf80543a98241bb464682650d.jpg', NULL, NULL, 'backUser/config/201911130802024b8a2ebf80543a98241bb464682650d.jpg', 1, 1, NULL, '2019-11-13 06:02:01');
INSERT INTO `t_file` VALUES (23, '1', '1', '20191113080210d1d98eea46364d268b2a03fa03f7a446.jpg', NULL, NULL, 'backUser/config/20191113080210d1d98eea46364d268b2a03fa03f7a446.jpg', 1, 1, NULL, '2019-11-13 06:02:14');
INSERT INTO `t_file` VALUES (24, '1', '1', '20191115043844e92b25e70fb140a1885614b978469ca9.jpg', NULL, NULL, 'backUser/config/20191115043844e92b25e70fb140a1885614b978469ca9.jpg', 1, 38, NULL, '2019-11-15 02:38:45');
INSERT INTO `t_file` VALUES (25, '1', '1', '20191116060546d3a2c703cb5546b3851612907cc3786f.png', NULL, NULL, 'backUser/config/20191116060546d3a2c703cb5546b3851612907cc3786f.png', 1, 1, NULL, '2019-11-16 10:05:47');
COMMIT;

-- ----------------------------
-- Table structure for t_heart_beat_record
-- ----------------------------
DROP TABLE IF EXISTS `t_heart_beat_record`;
CREATE TABLE `t_heart_beat_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `project_path` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `server_ip` varchar(200) DEFAULT NULL COMMENT '服务器ip',
  `process_no` int(10) DEFAULT NULL COMMENT '进程号',
  `process_start_time` datetime DEFAULT NULL COMMENT '进程开启时间',
  `heart_beat_time` datetime DEFAULT NULL COMMENT '心跳时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_heart_beat_record
-- ----------------------------
BEGIN;
INSERT INTO `t_heart_beat_record` VALUES (1, '/home/server/smart-admin/dev', '192.168.122.1;172.16.0.145', 14843, '2019-11-16 03:11:50', '2019-11-16 03:58:01');
INSERT INTO `t_heart_beat_record` VALUES (2, 'F:\\codespace\\idea\\gangquan360\\foundation', '172.16.1.188;192.168.56.1', 227992, '2019-11-16 10:02:39', '2019-11-16 10:06:50');
INSERT INTO `t_heart_beat_record` VALUES (3, '/Users/wangxian/java/smart-admin/smart-admin-service', '192.168.1.232', 9674, '2021-02-13 08:34:41', '2021-02-13 08:35:47');
INSERT INTO `t_heart_beat_record` VALUES (4, '/Users/wangxian/java/smart-admin/smart-admin-service', '192.168.1.232', 9770, '2021-02-13 08:42:05', '2021-02-13 08:49:12');
INSERT INTO `t_heart_beat_record` VALUES (5, '/Users/wangxian/java/smart-admin/smart-admin-service', '192.168.1.232', 9886, '2021-02-13 08:51:43', '2021-02-13 09:10:49');
INSERT INTO `t_heart_beat_record` VALUES (6, '/Users/wangxian/java/smart-admin/smart-admin-service', '192.168.1.232', 10134, '2021-02-13 11:53:28', '2021-02-14 14:59:35');
INSERT INTO `t_heart_beat_record` VALUES (7, '/Users/wangxian/java/smart-admin/smart-admin-service', '192.168.1.232', 1280, '2021-02-24 14:37:15', '2021-02-24 16:16:02');
INSERT INTO `t_heart_beat_record` VALUES (8, '/Users/wangxian/java/smart-admin/admin-backend', '192.168.1.232', 9732, '2021-02-27 17:58:59', '2021-02-27 18:00:05');
INSERT INTO `t_heart_beat_record` VALUES (9, '/Users/wangxian/java/smart-admin/admin-backend', '192.168.1.232', 10902, '2021-02-28 03:22:40', '2021-02-28 03:23:46');
INSERT INTO `t_heart_beat_record` VALUES (10, '/Users/wangxian/java/smart-admin/admin-backend', '192.168.1.232', 11175, '2021-02-28 03:25:58', '2021-02-28 03:30:04');
INSERT INTO `t_heart_beat_record` VALUES (11, '/Users/wangxian/java/smart-admin/admin-backend', '192.168.1.232', 14483, '2021-02-28 13:54:11', '2021-02-28 13:55:16');
INSERT INTO `t_heart_beat_record` VALUES (12, '/Users/wangxian/java/smart-admin/admin-backend', '192.168.1.232', 14510, '2021-02-28 13:56:06', '2021-02-28 15:44:07');
COMMIT;

-- ----------------------------
-- Table structure for t_id_generator
-- ----------------------------
DROP TABLE IF EXISTS `t_id_generator`;
CREATE TABLE `t_id_generator` (
  `id` int(11) DEFAULT NULL,
  `key_name` varchar(50) NOT NULL COMMENT '英文key',
  `rule_format` varchar(500) NOT NULL COMMENT '规则格式。no_cycle没有周期, year_cycle 年周期, month_cycle月周期, day_cycle 日周期',
  `rule_type` varchar(50) NOT NULL COMMENT '格式[yyyy]表示年,[mm]标识月,[dd]表示日,[nnn]表示三位数字',
  `init_number` int(11) NOT NULL DEFAULT '1' COMMENT '初始值',
  `last_number` int(11) DEFAULT NULL COMMENT '上次产生的id, 默认为空',
  `remark` varchar(1000) NOT NULL COMMENT '备注',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  UNIQUE KEY `key_name` (`key_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='id生成器定义表';

-- ----------------------------
-- Records of t_id_generator
-- ----------------------------
BEGIN;
INSERT INTO `t_id_generator` VALUES (2, 'goods_num', '[nnnnnnn]', 'NO_CYCLE', 1, NULL, '商品编号', '2019-04-09 09:48:04', '2019-03-29 14:14:12');
INSERT INTO `t_id_generator` VALUES (1, 'order', '[yyyy][mm][dd][nnnnn]', 'DAY_CYCLE', 1, 1, '订单编号', '2019-03-30 11:25:42', '2019-03-29 14:14:12');
COMMIT;

-- ----------------------------
-- Table structure for t_id_generator_record
-- ----------------------------
DROP TABLE IF EXISTS `t_id_generator_record`;
CREATE TABLE `t_id_generator_record` (
  `generator_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `last_number` int(11) NOT NULL,
  PRIMARY KEY (`generator_id`,`year`,`month`,`day`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='id_generator记录表';

-- ----------------------------
-- Records of t_id_generator_record
-- ----------------------------
BEGIN;
INSERT INTO `t_id_generator_record` VALUES (1, 2019, 3, 30, 1);
INSERT INTO `t_id_generator_record` VALUES (2, 2019, 3, 30, 1);
INSERT INTO `t_id_generator_record` VALUES (2, 2019, 4, 3, 2);
INSERT INTO `t_id_generator_record` VALUES (2, 2019, 4, 8, 2);
INSERT INTO `t_id_generator_record` VALUES (2, 2019, 4, 9, 1);
COMMIT;

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息标题',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息内容',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态：0未删除 0删除 ',
  `send_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '发送状态 0未发送 1发送',
  `create_user` bigint(20) NOT NULL COMMENT '消息创建人',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
BEGIN;
INSERT INTO `t_notice` VALUES (93, '大扫把', '晓冬吃大便', 1, 1, 1, '2019-07-13 17:54:13', '2019-07-13 17:54:21');
INSERT INTO `t_notice` VALUES (95, '4444444', '444444444444', 1, 1, 1, '2019-07-13 17:54:53', '2019-09-04 09:42:02');
INSERT INTO `t_notice` VALUES (96, '3434', '444444', 1, 1, 1, '2019-07-13 17:58:42', '2019-11-08 09:05:24');
INSERT INTO `t_notice` VALUES (97, '44444', '555555555555', 1, 1, 1, '2019-07-13 17:58:54', '2019-09-03 16:19:50');
INSERT INTO `t_notice` VALUES (98, '《青花瓷》', '素胚勾勒出青花笔锋浓转淡\n瓶身描绘的牡丹一如你初妆\n冉冉檀香透过窗心事我了然\n周杰伦 青花瓷\n周杰伦 青花瓷\n宣纸上走笔至此搁一半\n釉色渲染仕女图韵味被私藏\n而你嫣然的一笑如含苞待放\n你的美一缕飘散\n去到我去不了的地方\n天青色等烟雨 而我在等你\n炊烟袅袅升起 隔江千万里\n在瓶底书刻隶仿前朝的飘逸\n就当我为遇见你伏笔\n天青色等烟雨 而我在等你\n月色被打捞起 晕开了结局\n如传世的青花瓷自顾自美丽\n你眼带笑意\n色白花青的锦鲤跃然于碗底\n临摹宋体落款时却惦记着你\n你隐藏在窑烧里千年的秘密\n极细腻犹如绣花针落地\n篱外芭蕉惹骤雨门环惹铜绿\n而我路过那江南小镇惹了你\n在泼墨山水画里\n你从墨色深处被隐去\n天青色等烟雨 而我在等你\n炊烟袅袅升起 隔江千万里\n在瓶底书刻隶仿前朝的飘逸\n就当我为遇见你伏笔\n天青色等烟雨 而我在等你\n月色被打捞起 晕开了结局\n如传世的青花瓷自顾自美丽\n你眼带笑意\n天青色等烟雨 而我在等你\n炊烟袅袅升起 隔江千万里\n在瓶底书刻隶仿前朝的飘逸\n就当我为遇见你伏笔\n天青色等烟雨 而我在等你\n月色被打捞起 晕开了结局\n如传世的青花瓷自顾自美丽\n你眼带笑意 ', 1, 1, 1, '2019-08-05 16:36:44', '2019-09-02 17:53:12');
INSERT INTO `t_notice` VALUES (99, '1', '2', 1, 1, 30, '2019-08-08 14:53:58', '2019-08-08 14:54:07');
INSERT INTO `t_notice` VALUES (100, '呵呵', '呵呵', 1, 1, 1, '2019-08-20 16:52:53', '2019-09-02 17:46:59');
INSERT INTO `t_notice` VALUES (101, 'aa', 'bbcc', 1, 1, 30, '2019-08-23 09:51:01', '2019-08-23 09:51:28');
INSERT INTO `t_notice` VALUES (102, '1', '2', 0, 1, 1, '2019-09-05 14:28:10', '2019-09-05 14:28:10');
INSERT INTO `t_notice` VALUES (103, '12', '22', 0, 1, 1, '2019-09-05 14:29:30', '2019-09-05 14:29:30');
INSERT INTO `t_notice` VALUES (104, 'a', 'b', 1, 1, 30, '2019-09-06 14:21:18', '2019-09-06 14:24:07');
INSERT INTO `t_notice` VALUES (105, '22222222222', '1111', 0, 1, 1, '2019-11-07 19:05:56', '2019-11-07 19:05:56');
INSERT INTO `t_notice` VALUES (106, '423', '234', 0, 0, 37, '2019-11-08 21:48:19', '2019-11-08 21:48:19');
INSERT INTO `t_notice` VALUES (107, 'AAS', 's\'da\'ssdas', 1, 1, 1, '2019-11-13 19:06:55', '2019-11-14 09:07:06');
COMMIT;

-- ----------------------------
-- Table structure for t_notice_receive_record
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_receive_record`;
CREATE TABLE `t_notice_receive_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notice_id` bigint(20) NOT NULL COMMENT '消息id',
  `employee_id` bigint(20) NOT NULL COMMENT '用户id',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_notice_receive_record
-- ----------------------------
BEGIN;
INSERT INTO `t_notice_receive_record` VALUES (114, 93, 1, '2019-07-13 17:54:16', '2019-07-13 17:54:16');
INSERT INTO `t_notice_receive_record` VALUES (115, 95, 1, '2019-07-13 17:54:55', '2019-07-13 17:54:55');
INSERT INTO `t_notice_receive_record` VALUES (116, 95, 22, '2019-07-13 17:58:03', '2019-07-13 17:58:03');
INSERT INTO `t_notice_receive_record` VALUES (117, 93, 22, '2019-07-13 17:58:05', '2019-07-13 17:58:05');
INSERT INTO `t_notice_receive_record` VALUES (118, 96, 1, '2019-07-13 17:58:44', '2019-07-13 17:58:44');
INSERT INTO `t_notice_receive_record` VALUES (119, 97, 1, '2019-07-13 17:58:58', '2019-07-13 17:58:58');
INSERT INTO `t_notice_receive_record` VALUES (120, 98, 1, '2019-08-05 16:37:01', '2019-08-05 16:37:01');
INSERT INTO `t_notice_receive_record` VALUES (121, 99, 30, '2019-08-08 14:54:05', '2019-08-08 14:54:05');
INSERT INTO `t_notice_receive_record` VALUES (122, 99, 1, '2019-08-08 15:15:44', '2019-08-08 15:15:44');
INSERT INTO `t_notice_receive_record` VALUES (123, 100, 1, '2019-08-20 16:53:29', '2019-08-20 16:53:29');
INSERT INTO `t_notice_receive_record` VALUES (124, 101, 30, '2019-08-23 09:51:11', '2019-08-23 09:51:11');
INSERT INTO `t_notice_receive_record` VALUES (125, 101, 1, '2019-08-23 12:46:27', '2019-08-23 12:46:27');
INSERT INTO `t_notice_receive_record` VALUES (126, 102, 1, '2019-09-05 14:28:32', '2019-09-05 14:28:32');
INSERT INTO `t_notice_receive_record` VALUES (127, 104, 30, '2019-09-06 14:23:58', '2019-09-06 14:23:58');
INSERT INTO `t_notice_receive_record` VALUES (128, 104, 1, '2019-09-06 15:25:13', '2019-09-06 15:25:13');
INSERT INTO `t_notice_receive_record` VALUES (129, 101, 14, '2019-11-02 21:46:13', '2019-11-02 21:46:13');
INSERT INTO `t_notice_receive_record` VALUES (130, 102, 14, '2019-11-02 21:46:14', '2019-11-02 21:46:14');
INSERT INTO `t_notice_receive_record` VALUES (131, 104, 14, '2019-11-02 21:46:15', '2019-11-02 21:46:15');
INSERT INTO `t_notice_receive_record` VALUES (132, 98, 14, '2019-11-02 21:46:18', '2019-11-02 21:46:18');
INSERT INTO `t_notice_receive_record` VALUES (133, 103, 37, '2019-11-07 19:58:06', '2019-11-07 19:58:06');
INSERT INTO `t_notice_receive_record` VALUES (134, 103, 1, '2019-11-07 20:03:54', '2019-11-07 20:03:54');
INSERT INTO `t_notice_receive_record` VALUES (135, 107, 1, '2019-11-13 19:07:02', '2019-11-13 19:07:02');
INSERT INTO `t_notice_receive_record` VALUES (136, 107, 38, '2019-11-15 02:11:04', '2019-11-15 02:11:04');
INSERT INTO `t_notice_receive_record` VALUES (137, 104, 38, '2019-11-15 02:11:17', '2019-11-15 02:11:17');
INSERT INTO `t_notice_receive_record` VALUES (138, 101, 38, '2019-11-15 02:26:33', '2019-11-15 02:26:33');
INSERT INTO `t_notice_receive_record` VALUES (139, 98, 38, '2019-11-15 02:29:32', '2019-11-15 02:29:32');
INSERT INTO `t_notice_receive_record` VALUES (140, 100, 38, '2019-11-15 03:19:18', '2019-11-15 03:19:18');
INSERT INTO `t_notice_receive_record` VALUES (141, 105, 1, '2021-02-28 15:30:10', '2021-02-28 15:30:10');
COMMIT;

-- ----------------------------
-- Table structure for t_order_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `t_order_operate_log`;
CREATE TABLE `t_order_operate_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '各种单据的id',
  `order_type` int(11) NOT NULL COMMENT '单据类型',
  `operate_type` int(11) NOT NULL COMMENT '操作类型',
  `operate_content` text NOT NULL COMMENT '操作类型 对应的中文',
  `operate_remark` text COMMENT '操作备注',
  `employee_id` int(11) NOT NULL COMMENT '员工id',
  `employee_name` varchar(1000) NOT NULL COMMENT '员工名称',
  `ext_data` text COMMENT '额外信息',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id_order_type` (`order_id`,`order_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='各种单据操作记录\r\n';

-- ----------------------------
-- Records of t_order_operate_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_peony
-- ----------------------------
DROP TABLE IF EXISTS `t_peony`;
CREATE TABLE `t_peony` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `kind` varchar(500) DEFAULT NULL COMMENT '品种',
  `name` varchar(500) DEFAULT NULL COMMENT '名字',
  `color` varchar(500) DEFAULT NULL COMMENT '颜色',
  `image_url` text COMMENT '图片链接',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='牡丹花';

-- ----------------------------
-- Records of t_peony
-- ----------------------------
BEGIN;
INSERT INTO `t_peony` VALUES (5, '复色类', '什样锦', '红色', 'https://bkimg.cdn.bcebos.com/pic/3c6d55fbb2fb43160ee185da2aa4462308f7d390?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2UxNTA=,xp_5,yp_5', '2020-04-06 22:02:32', '2020-04-06 22:03:30');
INSERT INTO `t_peony` VALUES (6, '绿色', '绿香球', '绿色', '11', '2020-04-06 22:14:35', '2020-04-06 22:17:51');
INSERT INTO `t_peony` VALUES (7, '墨紫色类', '冠世墨玉', '紫色', '34534534534', '2020-04-06 22:15:19', '2020-04-06 22:18:21');
COMMIT;

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '岗位名称',
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '岗位描述',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗位表';

-- ----------------------------
-- Records of t_position
-- ----------------------------
BEGIN;
INSERT INTO `t_position` VALUES (1, 'java develop', 'java develop is good job', '2019-07-03 15:18:45', '2019-07-03 15:18:45');
INSERT INTO `t_position` VALUES (2, 'android develop', 'android develop is good job', '2019-07-04 16:11:11', '2019-07-04 16:11:00');
INSERT INTO `t_position` VALUES (3, '测试岗位1', '这是内容11', '2019-09-02 16:39:33', '2019-07-10 14:03:50');
INSERT INTO `t_position` VALUES (8, '测试岗位2', '测试岗位2.。', '2019-09-04 10:19:40', '2019-09-04 10:19:32');
INSERT INTO `t_position` VALUES (9, '测试岗位3', '测试岗位3', '2019-09-05 14:39:43', '2019-09-05 14:39:43');
INSERT INTO `t_position` VALUES (10, '测试岗位4', '测试岗位4', '2019-09-05 14:39:48', '2019-09-05 14:39:48');
INSERT INTO `t_position` VALUES (11, '测试岗位5', '测试岗位5', '2019-09-05 14:39:53', '2019-09-05 14:39:53');
INSERT INTO `t_position` VALUES (12, '测试岗位6', '测试岗位6', '2019-09-05 14:39:58', '2019-09-05 14:39:58');
INSERT INTO `t_position` VALUES (13, '测试岗位7', '测试岗位7', '2019-09-05 14:40:03', '2019-09-05 14:40:03');
INSERT INTO `t_position` VALUES (14, '测试岗位8', '测试岗位8', '2019-09-05 14:40:09', '2019-09-05 14:40:09');
INSERT INTO `t_position` VALUES (15, '测试岗位9', '测试岗位9', '2019-09-05 14:40:19', '2019-09-05 14:40:19');
INSERT INTO `t_position` VALUES (16, 'aaa22222', 'ddddddddddd', '2019-11-15 17:04:29', '2019-11-06 15:58:37');
INSERT INTO `t_position` VALUES (17, 'ddd', 'fsdef', '2019-11-15 17:04:40', '2019-11-15 17:04:40');
COMMIT;

-- ----------------------------
-- Table structure for t_position_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_position_relation`;
CREATE TABLE `t_position_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` int(10) DEFAULT NULL COMMENT '岗位ID',
  `employee_id` int(10) DEFAULT NULL COMMENT '员工ID',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `job_id` (`position_id`) USING BTREE,
  KEY `employee_id` (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗位关联表';

-- ----------------------------
-- Records of t_position_relation
-- ----------------------------
BEGIN;
INSERT INTO `t_position_relation` VALUES (14, 1, 28, '2019-07-10 16:40:14', '2019-07-10 16:40:14');
INSERT INTO `t_position_relation` VALUES (18, 1, 29, '2019-07-11 10:18:22', '2019-07-11 10:18:22');
INSERT INTO `t_position_relation` VALUES (19, 3, 29, '2019-07-11 10:18:22', '2019-07-11 10:18:22');
INSERT INTO `t_position_relation` VALUES (20, 2, 29, '2019-07-11 10:18:22', '2019-07-11 10:18:22');
INSERT INTO `t_position_relation` VALUES (21, 1, 30, '2019-08-08 14:35:51', '2019-08-08 14:35:51');
INSERT INTO `t_position_relation` VALUES (22, 2, 30, '2019-08-08 14:35:51', '2019-08-08 14:35:51');
INSERT INTO `t_position_relation` VALUES (23, 3, 30, '2019-08-08 14:35:51', '2019-08-08 14:35:51');
INSERT INTO `t_position_relation` VALUES (26, 2, 31, '2019-08-23 09:26:44', '2019-08-23 09:26:44');
INSERT INTO `t_position_relation` VALUES (27, 3, 31, '2019-08-23 09:26:44', '2019-08-23 09:26:44');
INSERT INTO `t_position_relation` VALUES (28, 3, 32, '2019-09-04 09:05:47', '2019-09-04 09:05:47');
INSERT INTO `t_position_relation` VALUES (29, 2, 32, '2019-09-04 09:05:47', '2019-09-04 09:05:47');
INSERT INTO `t_position_relation` VALUES (30, 3, 22, '2019-09-04 09:06:46', '2019-09-04 09:06:46');
INSERT INTO `t_position_relation` VALUES (31, 2, 22, '2019-09-04 09:06:46', '2019-09-04 09:06:46');
INSERT INTO `t_position_relation` VALUES (35, 8, 35, '2019-09-04 15:09:00', '2019-09-04 15:09:00');
INSERT INTO `t_position_relation` VALUES (36, 3, 35, '2019-09-04 15:09:00', '2019-09-04 15:09:00');
INSERT INTO `t_position_relation` VALUES (37, 15, 23, '2019-09-05 16:13:02', '2019-09-05 16:13:02');
INSERT INTO `t_position_relation` VALUES (38, 14, 23, '2019-09-05 16:13:02', '2019-09-05 16:13:02');
INSERT INTO `t_position_relation` VALUES (39, 13, 23, '2019-09-05 16:13:02', '2019-09-05 16:13:02');
INSERT INTO `t_position_relation` VALUES (40, 3, 34, '2019-09-06 08:55:18', '2019-09-06 08:55:18');
INSERT INTO `t_position_relation` VALUES (41, 2, 34, '2019-09-06 08:55:18', '2019-09-06 08:55:18');
INSERT INTO `t_position_relation` VALUES (42, 1, 34, '2019-09-06 08:55:18', '2019-09-06 08:55:18');
INSERT INTO `t_position_relation` VALUES (43, 14, 36, '2019-09-09 17:01:39', '2019-09-09 17:01:39');
INSERT INTO `t_position_relation` VALUES (44, 3, 37, '2019-11-08 09:32:39', '2019-11-08 09:32:39');
INSERT INTO `t_position_relation` VALUES (46, 8, 38, '2019-11-14 16:08:05', '2019-11-14 16:08:05');
INSERT INTO `t_position_relation` VALUES (50, 16, 39, '2019-11-15 17:07:04', '2019-11-15 17:07:04');
INSERT INTO `t_position_relation` VALUES (51, 13, 39, '2019-11-15 17:07:04', '2019-11-15 17:07:04');
INSERT INTO `t_position_relation` VALUES (52, 14, 39, '2019-11-15 17:07:04', '2019-11-15 17:07:04');
COMMIT;

-- ----------------------------
-- Table structure for t_privilege
-- ----------------------------
DROP TABLE IF EXISTS `t_privilege`;
CREATE TABLE `t_privilege` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '功能权限表主键id',
  `type` tinyint(11) NOT NULL COMMENT '1.菜单 2.功能点',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `key` varchar(1000) NOT NULL COMMENT '路由name 英文关键字',
  `url` text COMMENT '路由path/type=3为API接口',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `parent_key` varchar(1000) DEFAULT NULL COMMENT '父级key',
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `parent_key` (`parent_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='权限功能表';

-- ----------------------------
-- Records of t_privilege
-- ----------------------------
BEGIN;
INSERT INTO `t_privilege` VALUES (1, 1, '人员管理', 'Employee', '/employee', 20, 'System', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (2, 1, '角色管理', 'RoleManage', '/employee/role', 21, 'Employee', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (3, 1, '岗位管理', 'PositionList', '/employee/position', 22, 'Employee', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (4, 1, '员工管理', 'RoleEmployeeManage', '/employee/role-employee-manage', 23, 'Employee', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (5, 1, '系统设置', 'SystemSetting', '/system-setting', 29, 'System', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (6, 1, '系统参数', 'SystemConfig', '/system-setting/system-config', 30, 'SystemSetting', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (8, 1, '菜单权限', 'SystemPrivilege', '/system-setting/system-privilege', 31, 'SystemSetting', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (9, 1, '消息管理', 'Notice', '/notice', 10, 'Business', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (10, 1, '通知管理', 'NoticeList', '/notice/notice-list', 11, 'Notice', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (11, 1, '个人消息', 'PersonNotice', '/notice/person-notice', 12, 'Notice', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (12, 1, '邮件管理', 'Email', '/email', 4, 'Business', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (13, 1, '邮件管理', 'EmailList', '/email/email-list', 5, 'Email', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (14, 1, '发送邮件', 'SendMail', '/email/send-mail', 6, 'Email', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (15, 1, '用户日志', 'UserLog', '/user-log', 26, 'System', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (16, 1, '用户操作日志', 'UserOperateLog', '/user-log/user-operate-log', 27, 'UserLog', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (17, 1, '用户登录日志', 'UserLoginLog', '/user-log/user-login-log', 28, 'UserLog', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (18, 1, '系统监控', 'Monitor', '/monitor', 37, 'Support', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (19, 1, '在线人数', 'OnlineUser', '/monitor/online-user', 38, 'Monitor', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (20, 1, 'SQL监控', 'Sql', '/monitor/sql', 39, 'Monitor', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (21, 1, '定时任务', 'Task', '/task', 42, 'Support', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (22, 1, '任务管理', 'TaskList', '/system-setting/task-list', 43, 'Task', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (23, 1, '动态加载', 'Reload', '/reload', 40, 'Support', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (24, 1, 'SmartReload', 'SmartReloadList', '/reload/smart-reload-list', 41, 'Reload', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (25, 1, '接口文档', 'ApiDoc', '/api-doc', 33, 'Support', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (26, 1, 'Swagger接口文档', 'Swagger', '/api-doc/swagger', 34, 'ApiDoc', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (27, 1, '三级路由', 'ThreeRouter', '/three-router', 14, 'Business', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (28, 1, '三级菜单', 'LevelTwo', '/three-router/level-two', 15, 'ThreeRouter', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (29, 1, '三级A', 'RoleOneTwo', '/three-router/level-two/level-three1', 16, 'LevelTwo', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (30, 1, '三级B', 'RoleTwoTwo', '/three-router/level-two/level-three2', 17, 'LevelTwo', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (31, 1, '二级菜单', 'RoleOneOne', '/three-router/level-two2', 18, 'ThreeRouter', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (32, 1, 'KeepAlive', 'KeepAlive', '/keep-alive', 7, 'Business', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (33, 1, 'KeepAlive列表', 'KeepAliveContentList', '/keep-alive/content-list', 8, 'KeepAlive', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (34, 1, 'KeepAlive表单', 'KeepAliveAddContent', '/keep-alive/add-content', 9, 'KeepAlive', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (35, 1, '心跳服务', 'HeartBeat', '/heart-beat', 35, 'Support', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (36, 1, '心跳服务', 'HeartBeatList', '/heart-beat/heart-beat-list', 36, 'HeartBeat', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (37, 1, '文件服务', 'File', '/file', 24, 'System', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (38, 1, '文件列表', 'FileList', '/file/file-list', 25, 'File', '2021-02-28 23:22:38', '2019-11-01 11:28:07');
INSERT INTO `t_privilege` VALUES (39, 2, '添加角色', 'add-role', 'roleController.addRole', 0, 'RoleManage', '2019-11-01 11:47:29', '2019-11-01 11:47:29');
INSERT INTO `t_privilege` VALUES (40, 2, '删除角色', 'delete-role', 'roleController.deleteRole', 1, 'RoleManage', '2019-11-01 11:47:43', '2019-11-01 11:47:43');
INSERT INTO `t_privilege` VALUES (41, 2, '编辑角色', 'update-role', 'roleController.updateRole', 2, 'RoleManage', '2019-11-01 11:47:55', '2019-11-01 11:47:55');
INSERT INTO `t_privilege` VALUES (42, 2, '修改角色权限', 'update-role-privilege', 'rolePrivilegeController.updateRolePrivilege', 3, 'RoleManage', '2019-11-01 11:48:09', '2019-11-01 11:48:09');
INSERT INTO `t_privilege` VALUES (43, 2, '添加成员', 'add-employee-role', 'roleEmployeeController.addEmployeeList', 4, 'RoleManage', '2019-11-05 10:38:11', '2019-11-05 10:38:11');
INSERT INTO `t_privilege` VALUES (44, 2, '查询成员', 'search-employee-list', 'roleEmployeeController.listAllEmployeeRoleId,roleEmployeeController.listEmployeeByName,roleController.getAllRole,rolePrivilegeController.listPrivilegeByRoleId', 7, 'RoleManage', '2019-11-05 10:39:04', '2019-11-05 10:39:04');
INSERT INTO `t_privilege` VALUES (45, 2, '移除成员', 'delete-employee-role', 'roleEmployeeController.removeEmployee', 5, 'RoleManage', '2019-11-05 10:40:09', '2019-11-05 10:40:09');
INSERT INTO `t_privilege` VALUES (46, 2, '批量移除', 'delete-employee-role-batch', 'roleEmployeeController.removeEmployeeList', 6, 'RoleManage', '2019-11-05 10:40:27', '2019-11-05 10:40:27');
INSERT INTO `t_privilege` VALUES (47, 2, '查询数据范围', 'query-data-scope', 'dataScopeController.dataScopeList,dataScopeController.dataScopeListByRole,rolePrivilegeController.listPrivilegeByRoleId,privilegeController.queryAll,privilegeController.getAllUrl', 8, 'RoleManage', '2019-11-05 10:40:57', '2019-11-05 10:40:57');
INSERT INTO `t_privilege` VALUES (48, 2, '更新数据范围', 'update-data-scope', 'dataScopeController.dataScopeBatchSet', 9, 'RoleManage', '2019-11-05 10:41:03', '2019-11-05 10:41:03');
INSERT INTO `t_privilege` VALUES (49, 2, '查询', 'search-position', 'positionController.queryJobById,positionController.getJobPage', 0, 'PositionList', '2019-11-05 10:41:30', '2019-11-05 10:41:30');
INSERT INTO `t_privilege` VALUES (50, 2, '添加', 'add-position', 'positionController.addJob', 1, 'PositionList', '2019-11-05 10:41:40', '2019-11-05 10:41:40');
INSERT INTO `t_privilege` VALUES (51, 2, '修改', 'update-position', 'positionController.updateJob', 2, 'PositionList', '2019-11-05 10:41:49', '2019-11-05 10:41:49');
INSERT INTO `t_privilege` VALUES (52, 2, '删除', 'delete-position', 'positionController.removeJob', 3, 'PositionList', '2019-11-05 10:41:57', '2019-11-05 10:41:57');
INSERT INTO `t_privilege` VALUES (53, 2, '添加部门', 'add-department', 'departmentController.addDepartment', 0, 'RoleEmployeeManage', '2019-11-05 11:11:18', '2019-11-05 11:11:18');
INSERT INTO `t_privilege` VALUES (54, 2, '编辑部门', 'update-department', 'departmentController.updateDepartment', 1, 'RoleEmployeeManage', '2019-11-05 11:11:29', '2019-11-05 11:11:29');
INSERT INTO `t_privilege` VALUES (55, 2, '删除部门', 'delete-department', 'departmentController.delDepartment', 2, 'RoleEmployeeManage', '2019-11-05 11:11:48', '2019-11-05 11:11:48');
INSERT INTO `t_privilege` VALUES (56, 2, '查询', 'search-department', 'departmentController.listAll,departmentController.getDepartment,departmentController.listDepartmentEmployee,departmentController.listDepartment,employeeController.query', 3, 'RoleEmployeeManage', '2019-11-05 11:12:09', '2019-11-05 11:12:09');
INSERT INTO `t_privilege` VALUES (57, 2, '添加成员', 'add-employee', 'employeeController.addEmployee', 4, 'RoleEmployeeManage', '2019-11-05 17:06:23', '2019-11-05 17:06:23');
INSERT INTO `t_privilege` VALUES (58, 2, '编辑成员', 'update-employee', 'employeeController.updateEmployee', 5, 'RoleEmployeeManage', '2019-11-05 17:06:57', '2019-11-05 17:06:57');
INSERT INTO `t_privilege` VALUES (59, 2, '禁用', 'disabled-employee', 'employeeController.updateStatus', 6, 'RoleEmployeeManage', '2019-11-05 17:14:35', '2019-11-05 17:14:35');
INSERT INTO `t_privilege` VALUES (60, 2, '批量操作', 'disabled-employee-batch', 'employeeController.batchUpdateStatus', 7, 'RoleEmployeeManage', '2019-11-05 17:19:23', '2019-11-05 17:19:23');
INSERT INTO `t_privilege` VALUES (61, 2, '员工角色编辑', 'update-employee-role', 'employeeController.updateRoles', 8, 'RoleEmployeeManage', '2019-11-05 17:21:15', '2019-11-05 17:21:15');
INSERT INTO `t_privilege` VALUES (62, 2, '重置密码', 'reset-employee-password', 'employeeController.resetPasswd', 10, 'RoleEmployeeManage', '2019-11-05 17:22:13', '2019-11-05 17:22:13');
INSERT INTO `t_privilege` VALUES (63, 2, '删除员工', 'delete-employee', 'employeeController.deleteEmployeeById', 9, 'RoleEmployeeManage', '2019-11-05 17:22:27', '2019-11-05 17:22:27');
INSERT INTO `t_privilege` VALUES (64, 2, '查询系统参数', 'system-params-search', 'systemConfigController.selectByKey,systemConfigController.getListByGroup,systemConfigController.getSystemConfigPage', 0, 'SystemConfig', '2019-11-05 17:23:41', '2019-11-05 17:23:41');
INSERT INTO `t_privilege` VALUES (65, 2, '添加系统参数', 'system-params-add', 'systemConfigController.addSystemConfig', 1, 'SystemConfig', '2019-11-05 17:26:00', '2019-11-05 17:26:00');
INSERT INTO `t_privilege` VALUES (66, 2, '修改系统参数', 'system-config-update', 'systemConfigController.updateSystemConfig', 2, 'SystemConfig', '2019-11-05 17:26:07', '2019-11-05 17:26:07');
INSERT INTO `t_privilege` VALUES (67, 2, '搜索系统参数', 'system-config-search', 'systemConfigController.selectByKey,systemConfigController.getListByGroup,systemConfigController.getSystemConfigPage', 3, 'SystemConfig', '2019-11-05 17:26:44', '2019-11-05 17:26:44');
INSERT INTO `t_privilege` VALUES (69, 2, '编辑', 'privilege-main-update', 'privilegeController.menuBatchSave,privilegeController.functionSaveOrUpdate', 0, 'SystemPrivilege', '2019-11-05 17:27:28', '2019-11-05 17:27:28');
INSERT INTO `t_privilege` VALUES (70, 2, '查询', 'privilege-main-search', 'privilegeController.queryAll,privilegeController.getAllUrl,privilegeController.functionQuery', 1, 'SystemPrivilege', '2019-11-05 17:28:45', '2019-11-05 17:28:45');
INSERT INTO `t_privilege` VALUES (71, 2, '查询', 'notice-query', 'noticeController.queryReceiveByPage,noticeController.queryUnreadByPage,noticeController.queryByPage,noticeController.detail', 0, 'NoticeList', '2019-11-05 17:30:16', '2019-11-05 17:30:16');
INSERT INTO `t_privilege` VALUES (72, 2, '添加', 'notice-add', 'noticeController.add', 1, 'NoticeList', '2019-11-05 17:30:28', '2019-11-05 17:30:28');
INSERT INTO `t_privilege` VALUES (73, 2, '修改', 'notice-edit', 'noticeController.update', 2, 'NoticeList', '2019-11-05 17:31:24', '2019-11-05 17:31:24');
INSERT INTO `t_privilege` VALUES (74, 2, '删除', 'notice-delete', 'noticeController.delete', 3, 'NoticeList', '2019-11-06 11:12:32', '2019-11-06 11:12:32');
INSERT INTO `t_privilege` VALUES (75, 2, '详情', 'notice-detail', 'noticeController.detail', 4, 'NoticeList', '2019-11-06 11:12:44', '2019-11-06 11:12:44');
INSERT INTO `t_privilege` VALUES (76, 2, '发送', 'notice-send', 'noticeController.send', 5, 'NoticeList', '2019-11-06 11:12:51', '2019-11-06 11:12:51');
INSERT INTO `t_privilege` VALUES (77, 2, '查询', 'person-notice-query', 'noticeController.queryReceiveByPage,noticeController.queryUnreadByPage,noticeController.queryByPage', 0, 'PersonNotice', '2019-11-06 11:13:27', '2019-11-06 11:13:27');
INSERT INTO `t_privilege` VALUES (78, 2, '详情', 'person-notice-detail', 'noticeController.detail', 1, 'PersonNotice', '2019-11-06 11:13:35', '2019-11-06 11:13:35');
INSERT INTO `t_privilege` VALUES (79, 2, '查询', 'email-query', 'emailController.queryByPage,emailController.detail', 0, 'EmailList', '2019-11-06 11:13:49', '2019-11-06 11:13:49');
INSERT INTO `t_privilege` VALUES (80, 2, '新增', 'email-add', 'emailController.add', 1, 'EmailList', '2019-11-06 11:14:02', '2019-11-06 11:14:02');
INSERT INTO `t_privilege` VALUES (81, 2, '编辑', 'email-update', 'emailController.update', 2, 'EmailList', '2019-11-06 11:14:08', '2019-11-06 11:14:08');
INSERT INTO `t_privilege` VALUES (82, 2, '删除', 'email-delete', 'emailController.delete', 3, 'EmailList', '2019-11-06 11:14:16', '2019-11-06 11:14:16');
INSERT INTO `t_privilege` VALUES (83, 2, '发送', 'email-send', 'emailController.send', 0, 'SendMail', '2019-11-06 11:14:40', '2019-11-06 11:14:40');
INSERT INTO `t_privilege` VALUES (84, 2, '查询', 'user-operate-log-search', 'userOperateLogController.queryByPage', 0, 'UserOperateLog', '2019-11-06 11:15:04', '2019-11-06 11:15:04');
INSERT INTO `t_privilege` VALUES (85, 2, '详情', 'user-operate-log-detail', 'userOperateLogController.detail', 1, 'UserOperateLog', '2019-11-06 11:15:16', '2019-11-06 11:15:16');
INSERT INTO `t_privilege` VALUES (86, 2, '删除', 'user-operate-log-delete', 'userOperateLogController.delete', 2, 'UserOperateLog', '2019-11-06 11:15:25', '2019-11-06 11:15:25');
INSERT INTO `t_privilege` VALUES (87, 2, '查询', 'user-login-log-search', 'userLoginLogController.queryByPage', 0, 'UserLoginLog', '2019-11-06 11:15:43', '2019-11-06 11:15:43');
INSERT INTO `t_privilege` VALUES (88, 2, '删除', 'user-login-log-delete', 'userLoginLogController.delete', 1, 'UserLoginLog', '2019-11-06 11:15:49', '2019-11-06 11:15:49');
INSERT INTO `t_privilege` VALUES (89, 2, '查询', 'online-user-search', 'userLoginLogController.queryUserOnLine', 0, 'OnlineUser', '2019-11-06 11:16:05', '2019-11-06 11:16:05');
INSERT INTO `t_privilege` VALUES (90, 2, '查询任务', 'task-search', 'quartzController.query', 0, 'TaskList', '2019-11-06 11:16:24', '2019-11-06 11:16:24');
INSERT INTO `t_privilege` VALUES (91, 2, '刷新任务', 'task-refresh', 'quartzController.query', 1, 'TaskList', '2019-11-06 11:16:50', '2019-11-06 11:16:50');
INSERT INTO `t_privilege` VALUES (92, 2, '添加任务', 'task-add', 'quartzController.saveOrUpdateTask', 2, 'TaskList', '2019-11-06 11:17:04', '2019-11-06 11:17:04');
INSERT INTO `t_privilege` VALUES (93, 2, '编辑任务', 'task-update', 'quartzController.saveOrUpdateTask', 3, 'TaskList', '2019-11-06 11:17:17', '2019-11-06 11:17:17');
INSERT INTO `t_privilege` VALUES (94, 2, '暂停任务', 'task-pause', 'quartzController.pauseTask', 4, 'TaskList', '2019-11-06 11:17:25', '2019-11-06 11:17:25');
INSERT INTO `t_privilege` VALUES (95, 2, '恢复任务', 'task-resume', 'quartzController.resumeTask', 5, 'TaskList', '2019-11-06 11:17:31', '2019-11-06 11:17:31');
INSERT INTO `t_privilege` VALUES (96, 2, '立即运行任务', 'task-run', 'quartzController.runTask', 6, 'TaskList', '2019-11-06 11:17:38', '2019-11-06 11:17:38');
INSERT INTO `t_privilege` VALUES (97, 2, '查看任务日志', 'task-query-log', 'quartzController.queryLog', 7, 'TaskList', '2019-11-06 11:17:47', '2019-11-06 11:17:47');
INSERT INTO `t_privilege` VALUES (98, 2, '删除任务', 'task-delete', 'quartzController.deleteTask', 8, 'TaskList', '2019-11-06 11:17:53', '2019-11-06 11:17:53');
INSERT INTO `t_privilege` VALUES (99, 2, '查询', 'smart-reload-search', 'smartReloadController.listAllReloadItem', 0, 'SmartReloadList', '2019-11-06 11:18:06', '2019-11-06 11:18:06');
INSERT INTO `t_privilege` VALUES (100, 2, '执行reload', 'smart-reload-update', 'smartReloadController.updateByTag', 1, 'SmartReloadList', '2019-11-06 11:18:14', '2019-11-06 11:18:14');
INSERT INTO `t_privilege` VALUES (101, 2, '查看执行结果', 'smart-reload-result', 'smartReloadController.queryReloadResult', 2, 'SmartReloadList', '2019-11-06 11:18:19', '2019-11-06 11:18:19');
INSERT INTO `t_privilege` VALUES (102, 2, '查询任务', 'heart-beat-query', 'heartBeatController.query', 0, 'HeartBeatList', '2019-11-06 11:18:38', '2019-11-06 11:18:38');
INSERT INTO `t_privilege` VALUES (103, 2, '查询', 'file-filePage-query', 'fileController.queryListByPage,fileController.localGetFile,fileController.downLoadById', 0, 'FileList', '2019-11-06 11:19:06', '2019-11-06 11:19:06');
INSERT INTO `t_privilege` VALUES (104, 2, '上传', 'file-filePage-upload', 'fileController.qiNiuUpload,fileController.localUpload,fileController.aliYunUpload,fileController.saveFile', 1, 'FileList', '2019-11-06 11:19:36', '2019-11-06 11:19:36');
INSERT INTO `t_privilege` VALUES (105, 2, '下载', 'file-filePage-download', 'fileController.downLoadById', 2, 'FileList', '2019-11-16 10:05:02', '2019-11-16 10:05:02');
INSERT INTO `t_privilege` VALUES (106, 1, '业务功能', 'Business', '/business', 0, NULL, '2021-02-28 23:22:38', '2021-02-28 23:22:38');
INSERT INTO `t_privilege` VALUES (107, 1, '牡丹管理', 'Peony', '/peony', 1, 'Business', '2021-02-28 23:22:38', '2021-02-28 23:22:38');
INSERT INTO `t_privilege` VALUES (108, 1, '牡丹花列表', 'PeonyList', '/peony/peony-list', 2, 'Peony', '2021-02-28 23:22:38', '2021-02-28 23:22:38');
INSERT INTO `t_privilege` VALUES (109, 1, '牡丹花列表1', 'PeonyList1', '/peony/peony-list1', 3, 'Peony', '2021-02-28 23:22:38', '2021-02-28 23:22:38');
INSERT INTO `t_privilege` VALUES (110, 1, '消息详情', 'NoticeDetail', '/notice/notice-detail', 13, 'Notice', '2021-02-28 23:22:38', '2021-02-28 23:22:38');
INSERT INTO `t_privilege` VALUES (111, 1, '系统设置', 'System', '/system', 19, NULL, '2021-02-28 23:22:38', '2021-02-28 23:22:38');
INSERT INTO `t_privilege` VALUES (112, 1, '开发专用', 'Support', '/support', 32, NULL, '2021-02-28 23:22:38', '2021-02-28 23:22:38');
COMMIT;

-- ----------------------------
-- Table structure for t_quartz_task
-- ----------------------------
DROP TABLE IF EXISTS `t_quartz_task`;
CREATE TABLE `t_quartz_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务名称',
  `task_bean` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'spring bean名称',
  `task_params` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务参数',
  `task_cron` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '运行cron表达式',
  `task_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '任务状态0:正常，1:暂停',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_quartz_task
-- ----------------------------
BEGIN;
INSERT INTO `t_quartz_task` VALUES (9, '2312332', 'exampleTask', '21314', '*/5 * * * * ?', 1, NULL, '2019-09-06 14:41:55', '2019-04-19 15:24:26');
INSERT INTO `t_quartz_task` VALUES (13, '567', 'exampleTask', 'ads', '*/5 * * * * ?', 1, NULL, '2019-09-04 16:37:25', '2019-04-23 15:32:17');
INSERT INTO `t_quartz_task` VALUES (21, '11', 'exampleTask', '11', '*/5 * * * * ?', 1, NULL, '2019-09-04 16:37:30', '2019-04-26 17:29:21');
INSERT INTO `t_quartz_task` VALUES (22, '33', 'exampleTask', '333', '*/5 * * * * ?', 1, NULL, '2019-04-26 17:29:36', '2019-04-26 17:29:36');
INSERT INTO `t_quartz_task` VALUES (23, '1', 'exampleTask', '3', '*/5 * * * * ?', 0, NULL, '2019-09-05 17:21:12', '2019-04-26 17:29:50');
COMMIT;

-- ----------------------------
-- Table structure for t_quartz_task_log
-- ----------------------------
DROP TABLE IF EXISTS `t_quartz_task_log`;
CREATE TABLE `t_quartz_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL COMMENT '任务id',
  `task_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务名称',
  `task_params` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务参数',
  `process_status` tinyint(4) NOT NULL COMMENT '任务处理状态0:成功，1:失败',
  `process_duration` bigint(11) NOT NULL DEFAULT '0' COMMENT '运行时长',
  `process_log` text COLLATE utf8mb4_unicode_ci COMMENT '日志',
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运行主机ip',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=732881 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_quartz_task_log
-- ----------------------------
BEGIN;
INSERT INTO `t_quartz_task_log` VALUES (732870, 9, '231233', '2131', 0, 5, NULL, '127.0.0.1', '2019-05-05 15:28:01', '2019-05-05 15:28:01');
INSERT INTO `t_quartz_task_log` VALUES (732871, 9, '231233', '2131', 0, 32, NULL, '172.16.0.145', '2019-05-05 15:54:40', '2019-05-05 15:54:40');
INSERT INTO `t_quartz_task_log` VALUES (732872, 22, '33', '333', 0, 31, NULL, '172.16.0.145', '2019-05-07 16:20:31', '2019-05-07 16:20:31');
INSERT INTO `t_quartz_task_log` VALUES (732873, 9, '231233', '2131', 0, 304, NULL, '172.16.0.145', '2019-08-02 09:29:36', '2019-08-02 09:29:36');
INSERT INTO `t_quartz_task_log` VALUES (732874, 9, '231233', '2131', 0, 24, NULL, '172.16.0.145', '2019-08-08 16:48:49', '2019-08-08 16:48:49');
INSERT INTO `t_quartz_task_log` VALUES (732875, 9, '231233', '2131', 0, 147, NULL, '172.16.0.145', '2019-08-23 09:41:08', '2019-08-23 09:41:08');
INSERT INTO `t_quartz_task_log` VALUES (732876, 9, '231233', '2131', 0, 610, NULL, '172.16.0.145', '2019-08-26 16:16:34', '2019-08-26 16:16:34');
INSERT INTO `t_quartz_task_log` VALUES (732877, 9, '2312332', '2131', 0, 27, NULL, '172.16.0.145', '2019-09-05 14:34:51', '2019-09-05 14:34:51');
INSERT INTO `t_quartz_task_log` VALUES (732878, 9, '2312332', '2131', 0, 5, NULL, '172.16.0.145', '2019-09-05 17:18:17', '2019-09-05 17:18:17');
INSERT INTO `t_quartz_task_log` VALUES (732879, 9, '2312332', '2131', 0, 1, NULL, '172.16.0.145', '2019-09-05 17:20:15', '2019-09-05 17:20:15');
INSERT INTO `t_quartz_task_log` VALUES (732880, 9, '2312332', '2131', 0, 5, NULL, '172.16.0.145', '2019-09-06 14:42:04', '2019-09-06 14:42:04');
COMMIT;

-- ----------------------------
-- Table structure for t_reload_item
-- ----------------------------
DROP TABLE IF EXISTS `t_reload_item`;
CREATE TABLE `t_reload_item` (
  `tag` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '项名称',
  `args` varchar(255) DEFAULT NULL COMMENT '参数 可选',
  `identification` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '运行标识',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_reload_item
-- ----------------------------
BEGIN;
INSERT INTO `t_reload_item` VALUES ('system_config', '', 'xxxx', '2021-02-13 08:54:17', '2019-04-18 11:48:27');
COMMIT;

-- ----------------------------
-- Table structure for t_reload_result
-- ----------------------------
DROP TABLE IF EXISTS `t_reload_result`;
CREATE TABLE `t_reload_result` (
  `tag` varchar(255) NOT NULL,
  `identification` varchar(255) NOT NULL COMMENT '运行标识',
  `args` varchar(255) DEFAULT NULL,
  `result` tinyint(3) unsigned NOT NULL COMMENT '是否成功 ',
  `exception` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_reload_result
-- ----------------------------
BEGIN;
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-07 17:26:04');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-07 17:28:16');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-07 17:35:39');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-07 17:42:58');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-09 08:30:13');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 10:38:19');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 10:42:46');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 10:49:27');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 11:09:10');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 11:10:06');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 11:18:17');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 11:41:18');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 11:45:41');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 11:46:37');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 11:50:35');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 14:55:00');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 15:26:19');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 15:35:51');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 15:36:19');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 15:36:53');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 15:37:58');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-11 15:41:37');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-16 10:12:29');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:14:08');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:18:24');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:23:07');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:24:17');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:30:17');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:31:40');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:32:34');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:52:31');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:55:10');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:55:47');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-20 17:58:49');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-21 10:53:47');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-22 18:24:21');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-09-24 09:04:42');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-15 11:06:12');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-15 11:22:10');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-15 16:42:16');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-19 15:18:54');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-19 16:50:10');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-21 15:52:25');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-23 10:24:38');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-23 10:28:45');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-23 16:35:45');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-23 16:38:48');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-25 08:52:22');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-28 16:04:30');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-30 19:59:24');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-31 14:29:26');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-31 14:35:38');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-31 15:58:39');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-10-31 17:34:48');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-01 11:23:26');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-01 14:55:34');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 08:49:44');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 09:40:52');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 09:42:48');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 09:47:38');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 09:50:57');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 09:51:32');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 09:51:48');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 15:48:21');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 20:48:44');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-02 21:27:50');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-03 22:10:32');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-03 22:10:32');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '', 1, NULL, '2019-11-04 09:10:24');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-05 10:24:51');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 11:22:42');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 11:25:54');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 11:27:04');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 11:28:00');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 11:34:06');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 11:34:43');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 11:53:11');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 11:56:05');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 13:52:39');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 15:29:29');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 16:05:36');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 16:06:13');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 16:13:22');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 16:19:38');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 16:21:37');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-06 16:22:23');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-08 08:50:08');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-08 13:37:34');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 08:35:08');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 08:54:38');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 09:00:32');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 09:01:24');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 09:24:16');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 09:26:46');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 09:43:13');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 09:44:48');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 10:28:30');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-09 11:24:19');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-11 09:40:42');
INSERT INTO `t_reload_result` VALUES ('system_config', '23', '4234234', 1, NULL, '2019-11-13 17:25:42');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '2423', 1, NULL, '2019-11-13 20:29:19');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '2423', 1, NULL, '2019-11-13 20:29:23');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 11:43:57');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 11:50:18');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 11:51:13');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 11:52:03');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 11:53:02');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 13:49:11');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 13:51:05');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 13:53:53');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 13:55:57');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 16:15:44');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343', '234', 1, NULL, '2019-11-14 16:39:36');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343234234', '234', 1, NULL, '2019-11-14 16:41:05');
INSERT INTO `t_reload_result` VALUES ('system_config', '23343234234', '234', 1, NULL, '2019-11-14 16:41:05');
INSERT INTO `t_reload_result` VALUES ('system_config', 'aaaa', '234', 1, NULL, '2019-11-14 16:41:20');
INSERT INTO `t_reload_result` VALUES ('system_config', 'aaaa', '234', 1, NULL, '2019-11-14 16:41:25');
INSERT INTO `t_reload_result` VALUES ('system_config', '111', '234', 1, NULL, '2019-11-14 16:43:20');
INSERT INTO `t_reload_result` VALUES ('system_config', '111', '234', 1, NULL, '2019-11-14 16:44:13');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2019-11-14 16:46:26');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2019-11-14 16:46:39');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2019-11-14 16:48:47');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2019-11-15 14:39:55');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2019-11-16 08:47:43');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2019-11-16 17:12:10');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2019-11-16 18:02:57');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2021-02-13 16:34:56');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2021-02-13 16:42:21');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '234', 1, NULL, '2021-02-13 16:51:58');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '', 1, NULL, '2021-02-13 19:53:43');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '', 1, NULL, '2021-02-24 22:37:31');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '', 1, NULL, '2021-02-28 01:41:52');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '', 1, NULL, '2021-02-28 01:58:06');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '', 1, NULL, '2021-02-28 01:59:14');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '', 1, NULL, '2021-02-28 11:22:55');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '', 1, NULL, '2021-02-28 11:26:13');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '', 1, NULL, '2021-02-28 21:54:25');
INSERT INTO `t_reload_result` VALUES ('system_config', 'xxxx', '', 1, NULL, '2021-02-28 21:56:23');
COMMIT;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(20) NOT NULL COMMENT '角色名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
BEGIN;
INSERT INTO `t_role` VALUES (1, '管理员', '', '2019-06-21 12:09:34', '2019-06-21 12:09:34');
INSERT INTO `t_role` VALUES (34, '销售', '', '2019-08-30 09:30:50', '2019-08-30 09:30:50');
INSERT INTO `t_role` VALUES (35, '总经理', '', '2019-08-30 09:31:05', '2019-08-30 09:31:05');
INSERT INTO `t_role` VALUES (36, '董事长', '', '2019-08-30 09:31:11', '2019-08-30 09:31:11');
INSERT INTO `t_role` VALUES (37, '财务', '', '2019-08-30 09:31:16', '2019-08-30 09:31:16');
INSERT INTO `t_role` VALUES (38, '运营', '', '2019-08-30 09:31:22', '2019-08-30 09:31:22');
INSERT INTO `t_role` VALUES (40, '测试角色1', '测试角色1', '2019-09-05 15:05:38', '2019-09-05 15:05:38');
INSERT INTO `t_role` VALUES (41, '测试角色2', '测试角色2', '2019-09-05 15:05:43', '2019-09-05 15:05:43');
INSERT INTO `t_role` VALUES (42, '测试角色3', '测试角色3', '2019-09-05 15:05:49', '2019-09-05 15:05:49');
INSERT INTO `t_role` VALUES (43, '测试角色4', '测试角色4', '2019-09-05 15:05:56', '2019-09-05 15:05:56');
INSERT INTO `t_role` VALUES (45, '测试角色6', '测试角色6', '2019-09-05 15:06:06', '2019-09-05 15:06:06');
INSERT INTO `t_role` VALUES (46, '测试角色7', '测试角色7', '2019-09-05 15:06:18', '2019-09-05 15:06:18');
INSERT INTO `t_role` VALUES (47, '测试角色8', '测试角色8', '2019-09-05 15:06:25', '2019-09-05 15:06:25');
INSERT INTO `t_role` VALUES (48, '测试角色9', '测试角色9', '2019-11-15 17:06:11', '2019-09-05 15:06:30');
COMMIT;

-- ----------------------------
-- Table structure for t_role_data_scope
-- ----------------------------
DROP TABLE IF EXISTS `t_role_data_scope`;
CREATE TABLE `t_role_data_scope` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_scope_type` int(11) NOT NULL COMMENT '数据范围id',
  `view_type` int(11) NOT NULL COMMENT '数据范围类型',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_role_data_scope
-- ----------------------------
BEGIN;
INSERT INTO `t_role_data_scope` VALUES (5, 0, 2, 9, '2019-04-29 15:01:04', '2019-04-29 15:01:04');
INSERT INTO `t_role_data_scope` VALUES (14, 0, 2, 40, '2019-09-05 15:25:37', '2019-09-05 15:25:37');
INSERT INTO `t_role_data_scope` VALUES (16, 0, 3, 34, '2019-11-06 16:08:02', '2019-11-06 16:08:02');
INSERT INTO `t_role_data_scope` VALUES (17, 0, 1, 1, '2021-02-28 23:26:12', '2021-02-28 23:26:12');
COMMIT;

-- ----------------------------
-- Table structure for t_role_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_role_employee`;
CREATE TABLE `t_role_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `employee_id` int(11) NOT NULL COMMENT '员工id',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COMMENT='角色员工功能表';

-- ----------------------------
-- Records of t_role_employee
-- ----------------------------
BEGIN;
INSERT INTO `t_role_employee` VALUES (121, 38, 22, '2019-09-04 09:23:09', '2019-09-04 09:23:09');
INSERT INTO `t_role_employee` VALUES (130, 1, 30, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (131, 1, 17, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (132, 1, 26, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (135, 1, 12, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (136, 1, 11, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (137, 1, 16, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (138, 1, 18, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (139, 1, 19, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (140, 1, 20, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (141, 1, 23, '2019-09-05 15:32:40', '2019-09-05 15:32:40');
INSERT INTO `t_role_employee` VALUES (147, 1, 35, '2019-09-06 09:00:27', '2019-09-06 09:00:27');
INSERT INTO `t_role_employee` VALUES (148, 40, 35, '2019-09-06 09:00:27', '2019-09-06 09:00:27');
INSERT INTO `t_role_employee` VALUES (165, 40, 32, '2019-11-08 10:39:35', '2019-11-08 10:39:35');
INSERT INTO `t_role_employee` VALUES (166, 34, 32, '2019-11-08 10:39:35', '2019-11-08 10:39:35');
INSERT INTO `t_role_employee` VALUES (167, 38, 32, '2019-11-08 10:39:35', '2019-11-08 10:39:35');
INSERT INTO `t_role_employee` VALUES (168, 38, 36, '2019-11-08 10:40:16', '2019-11-08 10:40:16');
INSERT INTO `t_role_employee` VALUES (169, 40, 36, '2019-11-08 10:40:16', '2019-11-08 10:40:16');
INSERT INTO `t_role_employee` VALUES (170, 37, 36, '2019-11-08 10:40:16', '2019-11-08 10:40:16');
INSERT INTO `t_role_employee` VALUES (174, 38, 37, '2019-11-08 11:05:39', '2019-11-08 11:05:39');
INSERT INTO `t_role_employee` VALUES (175, 42, 37, '2019-11-08 11:05:39', '2019-11-08 11:05:39');
INSERT INTO `t_role_employee` VALUES (188, 1, 1, '2019-11-15 16:05:33', '2019-11-15 16:05:33');
INSERT INTO `t_role_employee` VALUES (211, 40, 38, '2019-11-15 16:54:54', '2019-11-15 16:54:54');
INSERT INTO `t_role_employee` VALUES (212, 34, 29, '2019-11-16 18:04:04', '2019-11-16 18:04:04');
INSERT INTO `t_role_employee` VALUES (213, 45, 29, '2019-11-16 18:04:04', '2019-11-16 18:04:04');
COMMIT;

-- ----------------------------
-- Table structure for t_role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `t_role_privilege`;
CREATE TABLE `t_role_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `privilege_key` varchar(1000) NOT NULL COMMENT '权限key',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10944 DEFAULT CHARSET=utf8mb4 COMMENT='角色权限功能表';

-- ----------------------------
-- Records of t_role_privilege
-- ----------------------------
BEGIN;
INSERT INTO `t_role_privilege` VALUES (3506, 48, 'search-position', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3507, 48, 'add-position', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3508, 48, 'update-position', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3509, 48, 'delete-position', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3510, 48, 'add-role', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3511, 48, 'delete-role', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3512, 48, 'update-role', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3513, 48, 'update-role-privilege', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3514, 48, 'add-employee-role', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3515, 48, 'delete-employee-role', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3516, 48, 'delete-employee-role-batch', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3517, 48, 'search-employee-list', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3518, 48, 'query-data-scope', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3519, 48, 'update-data-scope', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3520, 48, 'add-department', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3521, 48, 'update-department', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3522, 48, 'delete-department', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3523, 48, 'search-department', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3524, 48, 'add-employee', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3525, 48, 'update-employee', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3526, 48, 'delete-employee', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3527, 48, 'disabled-employee', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3528, 48, 'reset-employee-password', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3529, 48, 'set-employee-role', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3530, 48, 'disabled-employee-batch', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3531, 48, 'update-employee-role', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3533, 48, 'system-params-search', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3534, 48, 'system-params-add', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3535, 48, 'system-config-update', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3536, 48, 'system-config-search', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3537, 48, 'privilegeMainSearch', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3538, 48, 'privilegeMainUpdate', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3539, 48, 'task-search', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3540, 48, 'task-refresh', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3541, 48, 'task-add', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3542, 48, 'task-update', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3543, 48, 'task-pause', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3544, 48, 'task-resume', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3545, 48, 'task-run', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3546, 48, 'task-query-log', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3547, 48, 'task-delete', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3548, 48, 'systemCodeVersionsQuery', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3552, 48, 'roleOneTwo-add', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3555, 48, 'apiDocument', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3557, 48, 'reload', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3559, 48, 'smart-reload-search', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3560, 48, 'smart-reload-update', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3561, 48, 'smart-reload-result', '2019-09-06 15:28:07', '2019-09-06 15:28:07');
INSERT INTO `t_role_privilege` VALUES (3575, 45, 'task-search', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3576, 45, 'task-refresh', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3577, 45, 'task-add', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3578, 45, 'task-update', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3579, 45, 'task-pause', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3580, 45, 'task-resume', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3581, 45, 'task-run', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3582, 45, 'task-query-log', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3583, 45, 'task-delete', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3586, 45, 'add-role', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3587, 45, 'delete-role', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3588, 45, 'update-role', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3589, 45, 'update-role-privilege', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3590, 45, 'add-employee-role', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3591, 45, 'delete-employee-role', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3592, 45, 'delete-employee-role-batch', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3593, 45, 'search-employee-list', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3594, 45, 'query-data-scope', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3595, 45, 'update-data-scope', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3597, 45, 'search-position', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3598, 45, 'add-position', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3599, 45, 'update-position', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3600, 45, 'delete-position', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3602, 45, 'add-department', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3603, 45, 'set-employee-role', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3604, 45, 'update-department', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3605, 45, 'delete-department', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3606, 45, 'search-department', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3607, 45, 'add-employee', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3608, 45, 'update-employee', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3609, 45, 'disabled-employee', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3610, 45, 'disabled-employee-batch', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3611, 45, 'update-employee-role', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3612, 45, 'delete-employee', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (3613, 45, 'reset-employee-password', '2019-09-06 15:28:17', '2019-09-06 15:28:17');
INSERT INTO `t_role_privilege` VALUES (8112, 41, 'SystemSetting', '2019-11-08 11:21:22', '2019-11-08 11:21:22');
INSERT INTO `t_role_privilege` VALUES (8113, 41, 'SystemPrivilege', '2019-11-08 11:21:22', '2019-11-08 11:21:22');
INSERT INTO `t_role_privilege` VALUES (8114, 41, 'privilege-main-update', '2019-11-08 11:21:22', '2019-11-08 11:21:22');
INSERT INTO `t_role_privilege` VALUES (8115, 41, 'privilege-main-search', '2019-11-08 11:21:22', '2019-11-08 11:21:22');
INSERT INTO `t_role_privilege` VALUES (8549, 35, 'SystemSetting', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8550, 35, 'SystemConfig', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8551, 35, 'SystemPrivilege', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8552, 35, 'Notice', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8553, 35, 'NoticeList', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8554, 35, 'PersonNotice', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8555, 35, 'Email', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8556, 35, 'EmailList', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8557, 35, 'UserLog', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8558, 35, 'UserOperateLog', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8559, 35, 'UserLoginLog', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8560, 35, 'system-config-search', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8561, 35, 'privilege-main-update', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8562, 35, 'privilege-main-search', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8563, 35, 'notice-query', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8564, 35, 'notice-add', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8565, 35, 'notice-edit', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8566, 35, 'notice-delete', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8567, 35, 'person-notice-query', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8568, 35, 'person-notice-detail', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8569, 35, 'email-query', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8570, 35, 'email-add', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8571, 35, 'email-update', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8572, 35, 'user-operate-log-search', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8573, 35, 'user-login-log-search', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (8574, 35, 'system-config-update', '2019-11-15 15:47:52', '2019-11-15 15:47:52');
INSERT INTO `t_role_privilege` VALUES (9005, 37, 'SystemSetting', '2019-11-15 16:33:09', '2019-11-15 16:33:09');
INSERT INTO `t_role_privilege` VALUES (9006, 37, 'SystemConfig', '2019-11-15 16:33:09', '2019-11-15 16:33:09');
INSERT INTO `t_role_privilege` VALUES (9007, 37, 'system-params-search', '2019-11-15 16:33:09', '2019-11-15 16:33:09');
INSERT INTO `t_role_privilege` VALUES (9008, 37, 'system-params-add', '2019-11-15 16:33:09', '2019-11-15 16:33:09');
INSERT INTO `t_role_privilege` VALUES (9009, 37, 'system-config-update', '2019-11-15 16:33:09', '2019-11-15 16:33:09');
INSERT INTO `t_role_privilege` VALUES (9368, 34, 'SystemSetting', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9369, 34, 'SystemConfig', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9370, 34, 'SystemPrivilege', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9371, 34, 'system-params-search', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9372, 34, 'system-params-add', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9373, 34, 'privilege-main-search', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9374, 34, 'Task', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9375, 34, 'TaskList', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9376, 34, 'task-search', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9377, 34, 'task-refresh', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9378, 34, 'task-add', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9379, 34, 'task-update', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9380, 34, 'task-pause', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9381, 34, 'task-resume', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9382, 34, 'task-run', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9383, 34, 'task-query-log', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9384, 34, 'task-delete', '2019-11-15 16:45:39', '2019-11-15 16:45:39');
INSERT INTO `t_role_privilege` VALUES (9536, 42, 'Task', '2019-11-15 16:50:40', '2019-11-15 16:50:40');
INSERT INTO `t_role_privilege` VALUES (9537, 42, 'TaskList', '2019-11-15 16:50:40', '2019-11-15 16:50:40');
INSERT INTO `t_role_privilege` VALUES (9538, 42, 'task-search', '2019-11-15 16:50:40', '2019-11-15 16:50:40');
INSERT INTO `t_role_privilege` VALUES (9539, 42, 'task-add', '2019-11-15 16:50:40', '2019-11-15 16:50:40');
INSERT INTO `t_role_privilege` VALUES (9540, 42, 'task-update', '2019-11-15 16:50:40', '2019-11-15 16:50:40');
INSERT INTO `t_role_privilege` VALUES (9541, 42, 'task-query-log', '2019-11-15 16:50:40', '2019-11-15 16:50:40');
INSERT INTO `t_role_privilege` VALUES (9674, 38, 'Employee', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9675, 38, 'PositionList', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9676, 38, 'SystemSetting', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9677, 38, 'SystemConfig', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9678, 38, 'Notice', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9679, 38, 'PersonNotice', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9680, 38, 'Email', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9681, 38, 'EmailList', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9682, 38, 'SendMail', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9683, 38, 'Monitor', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9684, 38, 'OnlineUser', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9685, 38, 'Task', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9686, 38, 'TaskList', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9687, 38, 'KeepAlive', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9688, 38, 'KeepAliveContentList', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9689, 38, 'HeartBeat', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9690, 38, 'HeartBeatList', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9691, 38, 'File', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9692, 38, 'FileList', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9693, 38, 'search-position', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9694, 38, 'system-params-search', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9695, 38, 'system-config-update', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9696, 38, 'system-config-search', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9697, 38, 'person-notice-query', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9698, 38, 'person-notice-detail', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9699, 38, 'email-query', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9700, 38, 'email-send', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9701, 38, 'online-user-search', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9702, 38, 'task-search', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9703, 38, 'heart-beat-query', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9704, 38, 'file-filePage-query', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9705, 38, 'file-filePage-upload', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (9706, 38, 'task-refresh', '2019-11-15 16:53:47', '2019-11-15 16:53:47');
INSERT INTO `t_role_privilege` VALUES (10585, 40, 'Employee', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10586, 40, 'RoleManage', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10587, 40, 'PositionList', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10588, 40, 'RoleEmployeeManage', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10589, 40, 'SystemSetting', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10590, 40, 'SystemConfig', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10591, 40, 'SystemPrivilege', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10592, 40, 'Notice', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10593, 40, 'NoticeList', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10594, 40, 'PersonNotice', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10595, 40, 'Email', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10596, 40, 'SendMail', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10597, 40, 'Task', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10598, 40, 'TaskList', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10599, 40, 'add-role', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10600, 40, 'delete-role', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10601, 40, 'update-role', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10602, 40, 'update-role-privilege', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10603, 40, 'add-employee-role', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10604, 40, 'search-employee-list', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10605, 40, 'delete-employee-role', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10606, 40, 'delete-employee-role-batch', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10607, 40, 'query-data-scope', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10608, 40, 'update-data-scope', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10609, 40, 'search-position', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10610, 40, 'add-position', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10611, 40, 'update-position', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10612, 40, 'search-department', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10613, 40, 'system-params-add', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10614, 40, 'system-config-search', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10615, 40, 'privilege-main-search', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10616, 40, 'notice-query', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10617, 40, 'notice-add', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10618, 40, 'notice-edit', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10619, 40, 'notice-delete', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10620, 40, 'notice-detail', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10621, 40, 'notice-send', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10622, 40, 'person-notice-query', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10623, 40, 'email-send', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10624, 40, 'task-search', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10625, 40, 'task-refresh', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10626, 40, 'task-add', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10627, 40, 'task-update', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10628, 40, 'task-query-log', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10629, 40, 'task-delete', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10630, 40, 'delete-department', '2019-11-15 17:19:42', '2019-11-15 17:19:42');
INSERT INTO `t_role_privilege` VALUES (10835, 1, 'Employee', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10836, 1, 'RoleManage', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10837, 1, 'PositionList', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10838, 1, 'RoleEmployeeManage', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10839, 1, 'SystemSetting', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10840, 1, 'SystemConfig', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10841, 1, 'SystemPrivilege', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10842, 1, 'Notice', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10843, 1, 'NoticeList', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10844, 1, 'PersonNotice', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10845, 1, 'Email', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10846, 1, 'EmailList', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10847, 1, 'SendMail', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10848, 1, 'UserLog', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10849, 1, 'UserOperateLog', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10850, 1, 'UserLoginLog', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10851, 1, 'Monitor', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10852, 1, 'OnlineUser', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10853, 1, 'Sql', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10854, 1, 'Task', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10855, 1, 'TaskList', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10856, 1, 'Reload', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10857, 1, 'SmartReloadList', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10858, 1, 'ApiDoc', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10859, 1, 'Swagger', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10860, 1, 'ThreeRouter', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10861, 1, 'LevelTwo', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10862, 1, 'RoleOneTwo', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10863, 1, 'RoleTwoTwo', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10864, 1, 'RoleOneOne', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10865, 1, 'KeepAlive', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10866, 1, 'KeepAliveContentList', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10867, 1, 'KeepAliveAddContent', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10868, 1, 'HeartBeat', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10869, 1, 'HeartBeatList', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10870, 1, 'File', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10871, 1, 'FileList', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10872, 1, 'add-role', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10873, 1, 'delete-role', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10874, 1, 'update-role', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10875, 1, 'update-role-privilege', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10876, 1, 'add-employee-role', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10877, 1, 'search-employee-list', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10878, 1, 'delete-employee-role', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10879, 1, 'delete-employee-role-batch', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10880, 1, 'query-data-scope', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10881, 1, 'update-data-scope', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10882, 1, 'search-position', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10883, 1, 'add-position', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10884, 1, 'update-position', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10885, 1, 'delete-position', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10886, 1, 'add-department', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10887, 1, 'update-department', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10888, 1, 'delete-department', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10889, 1, 'search-department', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10890, 1, 'add-employee', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10891, 1, 'update-employee', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10892, 1, 'disabled-employee', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10893, 1, 'disabled-employee-batch', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10894, 1, 'update-employee-role', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10895, 1, 'reset-employee-password', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10896, 1, 'delete-employee', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10897, 1, 'system-params-search', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10898, 1, 'system-params-add', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10899, 1, 'system-config-update', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10900, 1, 'system-config-search', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10901, 1, 'privilege-main-update', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10902, 1, 'privilege-main-search', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10903, 1, 'notice-query', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10904, 1, 'notice-add', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10905, 1, 'notice-edit', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10906, 1, 'notice-delete', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10907, 1, 'notice-detail', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10908, 1, 'notice-send', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10909, 1, 'person-notice-query', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10910, 1, 'person-notice-detail', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10911, 1, 'email-query', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10912, 1, 'email-add', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10913, 1, 'email-update', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10914, 1, 'email-delete', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10915, 1, 'email-send', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10916, 1, 'user-operate-log-search', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10917, 1, 'user-operate-log-detail', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10918, 1, 'user-operate-log-delete', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10919, 1, 'user-login-log-search', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10920, 1, 'user-login-log-delete', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10921, 1, 'online-user-search', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10922, 1, 'task-search', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10923, 1, 'task-refresh', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10924, 1, 'task-add', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10925, 1, 'task-update', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10926, 1, 'task-pause', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10927, 1, 'task-resume', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10928, 1, 'task-run', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10929, 1, 'task-query-log', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10930, 1, 'task-delete', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10931, 1, 'smart-reload-search', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10932, 1, 'smart-reload-update', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10933, 1, 'smart-reload-result', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10934, 1, 'heart-beat-query', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10935, 1, 'file-filePage-query', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10936, 1, 'file-filePage-upload', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10937, 1, 'Peony', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10938, 1, 'PeonyList', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10939, 1, 'PeonyList1', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10940, 1, 'Business', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10941, 1, 'System', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10942, 1, 'file-filePage-download', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_role_privilege` VALUES (10943, 1, 'Support', '2021-02-28 23:25:12', '2021-02-28 23:25:12');
COMMIT;

-- ----------------------------
-- Table structure for t_system_config
-- ----------------------------
DROP TABLE IF EXISTS `t_system_config`;
CREATE TABLE `t_system_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `config_name` varchar(255) NOT NULL COMMENT '参数名字',
  `config_key` varchar(255) NOT NULL COMMENT '参数key',
  `config_value` text NOT NULL,
  `config_group` varchar(255) NOT NULL COMMENT '参数类别',
  `is_using` int(10) NOT NULL COMMENT '是否使用0 否 1 是',
  `remark` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次修改时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_system_config
-- ----------------------------
BEGIN;
INSERT INTO `t_system_config` VALUES (1, '超级管理员', 'employee_superman', '12,13,1', 'employee', 1, '', '2021-02-28 23:24:27', '2018-08-18 16:28:03');
INSERT INTO `t_system_config` VALUES (13, '本地上传URL前缀', 'local_upload_url_prefix', 'http://172.16.0.145/smartAdmin/file/', 'upload', 1, '', '2019-09-04 16:23:49', '2019-04-26 17:06:53');
INSERT INTO `t_system_config` VALUES (14, '阿里云上传配置', 'ali_oss', '{\"accessKeyId\":\"\",\"accessKeySecret\":\"\",\"bucketName\":\"sit\",\"endpoint\":\"http://oss-cn-beijing.aliyuncs.com\"}', 'upload', 1, 'eefwfwfds', '2019-11-16 18:04:30', '2019-05-11 18:00:06');
INSERT INTO `t_system_config` VALUES (15, '邮件发配置', 'email_config', '{\"password\":\"smartadmin\",\"smtpHost\":\"smtp.163.com\",\"username\":\"smartadmin1024@163.com\"}', 'email', 1, NULL, '2019-09-04 16:42:17', '2019-05-13 16:57:48');
INSERT INTO `t_system_config` VALUES (16, '七牛云上传配置', 'qi_niu_oss', '{\"accessKeyId\":\"rX7HgY1ZLpUD25JrA-uwMM_jj-\",\"accessKeySecret\":\"\",\"bucketName\":\"sun-smart-admin\",\"endpoint\":\"http://puvpyay08.bkt.clouddn.com\"}', 'upload', 1, NULL, '2019-11-16 18:04:42', '2019-07-19 16:05:56');
INSERT INTO `t_system_config` VALUES (17, 'test', 'ww_1', 'ewr', '3', 1, 'testoo', '2019-11-08 09:43:36', '2019-11-08 09:27:19');
INSERT INTO `t_system_config` VALUES (18, '4234', '42342', '423423', '23423', 1, '123', '2021-02-28 23:24:44', '2019-11-14 11:22:49');
INSERT INTO `t_system_config` VALUES (19, 'test323@', 'test', '123456', '11_', 1, 'gggggg', '2019-11-15 16:24:52', '2019-11-15 16:24:52');
COMMIT;

-- ----------------------------
-- Table structure for t_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_login_log`;
CREATE TABLE `t_user_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '员工id',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `remote_ip` varchar(50) DEFAULT NULL COMMENT '用户ip',
  `remote_port` int(11) DEFAULT NULL COMMENT '用户端口',
  `remote_browser` varchar(100) DEFAULT NULL COMMENT '浏览器',
  `remote_os` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `login_status` tinyint(4) NOT NULL COMMENT '登录状态 0 失败  1成功',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`user_id`) USING BTREE,
  KEY `auditor_id` (`remote_browser`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1751 DEFAULT CHARSET=utf8mb4 COMMENT='用户登录日志';

-- ----------------------------
-- Records of t_user_login_log
-- ----------------------------
BEGIN;
INSERT INTO `t_user_login_log` VALUES (1501, 30, '耿为刚', '172.16.1.234', 61406, 'Chrome', 'Windows 10', 1, '2019-09-06 14:19:47', '2019-09-06 14:19:47');
INSERT INTO `t_user_login_log` VALUES (1502, 30, '耿为刚', '172.16.1.234', 61405, 'Chrome', 'Windows 10', 1, '2019-09-06 14:20:46', '2019-09-06 14:20:46');
INSERT INTO `t_user_login_log` VALUES (1503, 30, '耿为刚', '172.16.1.234', 62213, 'Chrome', 'Windows 10', 1, '2019-09-06 14:28:50', '2019-09-06 14:28:50');
INSERT INTO `t_user_login_log` VALUES (1505, 30, '耿为刚', '172.16.1.234', 62478, 'Chrome', 'Windows 10', 1, '2019-09-06 14:32:57', '2019-09-06 14:32:57');
INSERT INTO `t_user_login_log` VALUES (1506, 1, '管理员', '127.0.0.1', 55613, 'Chrome', 'Windows 10', 1, '2019-09-06 14:35:48', '2019-09-06 14:35:48');
INSERT INTO `t_user_login_log` VALUES (1507, 1, '管理员', '172.16.1.234', 63132, 'Chrome', 'Windows 10', 1, '2019-09-06 14:38:43', '2019-09-06 14:38:43');
INSERT INTO `t_user_login_log` VALUES (1508, 30, '耿为刚', '172.16.1.234', 63132, 'Chrome', 'Windows 10', 1, '2019-09-06 14:41:36', '2019-09-06 14:41:36');
INSERT INTO `t_user_login_log` VALUES (1509, 1, '管理员', '172.16.1.234', 63332, 'Chrome', 'Windows 10', 1, '2019-09-06 14:42:37', '2019-09-06 14:42:37');
INSERT INTO `t_user_login_log` VALUES (1511, 1, '管理员', '172.16.1.166', 29923, 'Chrome', 'Windows 10', 1, '2019-09-06 15:09:22', '2019-09-06 15:09:22');
INSERT INTO `t_user_login_log` VALUES (1512, 1, '管理员', '172.16.1.113', 58150, 'Chrome', 'Windows 7', 1, '2019-09-06 15:23:31', '2019-09-06 15:23:31');
INSERT INTO `t_user_login_log` VALUES (1513, 1, '管理员', '172.16.1.166', 31226, 'Chrome', 'Windows 10', 1, '2019-09-06 15:24:51', '2019-09-06 15:24:51');
INSERT INTO `t_user_login_log` VALUES (1514, 1, '管理员', '172.16.1.113', 58300, 'Chrome', 'Windows 7', 1, '2019-09-06 15:25:04', '2019-09-06 15:25:04');
INSERT INTO `t_user_login_log` VALUES (1515, 1, '管理员', '172.16.1.113', 58300, 'Chrome', 'Windows 7', 1, '2019-09-06 15:25:26', '2019-09-06 15:25:26');
INSERT INTO `t_user_login_log` VALUES (1516, 1, '管理员', '172.16.1.166', 31243, 'Chrome', 'Windows 10', 1, '2019-09-06 15:25:29', '2019-09-06 15:25:29');
INSERT INTO `t_user_login_log` VALUES (1517, 1, '管理员', '172.16.1.221', 61458, 'Chrome', 'Windows 10', 1, '2019-09-06 15:27:07', '2019-09-06 15:27:07');
INSERT INTO `t_user_login_log` VALUES (1518, 1, '管理员', '172.16.1.166', 31243, 'Chrome', 'Windows 10', 1, '2019-09-06 15:27:09', '2019-09-06 15:27:09');
INSERT INTO `t_user_login_log` VALUES (1519, 1, '管理员', '172.16.1.113', 58300, 'Chrome', 'Windows 7', 1, '2019-09-06 15:27:10', '2019-09-06 15:27:10');
INSERT INTO `t_user_login_log` VALUES (1520, 1, '管理员', '172.16.1.166', 31551, 'Chrome', 'Windows 10', 1, '2019-09-06 15:30:01', '2019-09-06 15:30:01');
INSERT INTO `t_user_login_log` VALUES (1521, 1, '管理员', '172.16.4.160', 50527, 'Chrome', 'Windows 10', 1, '2019-09-06 15:50:20', '2019-09-06 15:50:20');
INSERT INTO `t_user_login_log` VALUES (1522, 1, '管理员', '172.16.1.166', 36381, 'Chrome', 'Windows 10', 1, '2019-09-06 16:20:46', '2019-09-06 16:20:46');
INSERT INTO `t_user_login_log` VALUES (1523, 1, '管理员', '172.16.1.166', 40039, 'Chrome', 'Windows 10', 1, '2019-09-06 17:02:33', '2019-09-06 17:02:33');
INSERT INTO `t_user_login_log` VALUES (1524, 1, '管理员', '172.16.1.166', 41014, 'Chrome', 'Windows 10', 1, '2019-09-06 17:16:09', '2019-09-06 17:16:09');
INSERT INTO `t_user_login_log` VALUES (1525, 1, '管理员', '172.16.1.188', 56577, 'Chrome', 'Windows 7', 1, '2019-09-07 08:36:31', '2019-09-07 08:36:31');
INSERT INTO `t_user_login_log` VALUES (1526, 1, '管理员', '172.16.1.48', 60852, 'Chrome', 'Windows 10', 1, '2019-09-07 08:45:02', '2019-09-07 08:45:02');
INSERT INTO `t_user_login_log` VALUES (1527, 1, '管理员', '172.16.4.85', 4818, 'Chrome', 'Windows 10', 1, '2019-09-07 09:04:44', '2019-09-07 09:04:44');
INSERT INTO `t_user_login_log` VALUES (1528, 1, '管理员', '172.16.4.85', 5230, 'Chrome', 'Windows 10', 1, '2019-09-07 09:25:41', '2019-09-07 09:25:41');
INSERT INTO `t_user_login_log` VALUES (1529, 1, '管理员', '172.16.1.166', 10251, 'Chrome', 'Windows 10', 1, '2019-09-07 10:15:20', '2019-09-07 10:15:20');
INSERT INTO `t_user_login_log` VALUES (1530, 1, '管理员', '172.16.1.48', 63877, 'Chrome', 'Windows 10', 1, '2019-09-07 11:26:19', '2019-09-07 11:26:19');
INSERT INTO `t_user_login_log` VALUES (1531, 1, '管理员', '172.16.1.166', 26667, 'Chrome', 'Windows 10', 1, '2019-09-07 14:08:15', '2019-09-07 14:08:15');
INSERT INTO `t_user_login_log` VALUES (1532, 1, '管理员', '172.16.4.85', 10604, 'Chrome', 'Windows 10', 1, '2019-09-07 14:08:33', '2019-09-07 14:08:33');
INSERT INTO `t_user_login_log` VALUES (1533, 1, '管理员', '172.16.4.85', 10604, 'Chrome', 'Windows 10', 1, '2019-09-07 14:08:50', '2019-09-07 14:08:50');
INSERT INTO `t_user_login_log` VALUES (1534, 1, '管理员', '172.16.1.166', 26812, 'Chrome', 'Windows 10', 1, '2019-09-07 14:14:09', '2019-09-07 14:14:09');
INSERT INTO `t_user_login_log` VALUES (1535, 1, '管理员', '172.16.1.188', 52924, 'Chrome', 'Windows 7', 1, '2019-09-07 14:37:16', '2019-09-07 14:37:16');
INSERT INTO `t_user_login_log` VALUES (1536, 1, '管理员', '172.16.1.188', 56721, 'Chrome', 'Windows 7', 1, '2019-09-07 14:49:37', '2019-09-07 14:49:37');
INSERT INTO `t_user_login_log` VALUES (1537, 1, '管理员', '172.16.1.188', 52839, 'Chrome', 'Windows 7', 1, '2019-09-07 15:33:04', '2019-09-07 15:33:04');
INSERT INTO `t_user_login_log` VALUES (1538, 1, '管理员', '172.16.1.166', 32489, 'Chrome', 'Windows 10', 1, '2019-09-07 15:48:02', '2019-09-07 15:48:02');
INSERT INTO `t_user_login_log` VALUES (1539, 1, '管理员', '172.16.1.166', 32847, 'Chrome', 'Windows 10', 1, '2019-09-07 15:52:25', '2019-09-07 15:52:25');
INSERT INTO `t_user_login_log` VALUES (1540, 1, '管理员', '172.16.1.166', 33456, 'Chrome', 'Windows 10', 1, '2019-09-07 16:00:01', '2019-09-07 16:00:01');
INSERT INTO `t_user_login_log` VALUES (1541, 1, '管理员', '172.16.1.188', 61015, 'Chrome', 'Windows 7', 1, '2019-09-07 17:05:49', '2019-09-07 17:05:49');
INSERT INTO `t_user_login_log` VALUES (1542, 1, '管理员', '127.0.0.1', 51566, 'Chrome', 'Windows 7', 1, '2019-09-07 17:31:20', '2019-09-07 17:31:20');
INSERT INTO `t_user_login_log` VALUES (1543, 1, '管理员', '127.0.0.1', 54228, 'Chrome', 'Windows 7', 1, '2019-09-07 17:41:12', '2019-09-07 17:41:12');
INSERT INTO `t_user_login_log` VALUES (1544, 1, '管理员', '127.0.0.1', 54957, 'Chrome', 'Windows 7', 1, '2019-09-07 17:43:21', '2019-09-07 17:43:21');
INSERT INTO `t_user_login_log` VALUES (1545, 1, '管理员', '172.16.4.85', 2336, 'Chrome', 'Windows 10', 1, '2019-09-07 18:25:51', '2019-09-07 18:25:51');
INSERT INTO `t_user_login_log` VALUES (1546, 1, '管理员', '127.0.0.1', 52161, 'Chrome', 'Windows 7', 1, '2019-09-09 08:30:47', '2019-09-09 08:30:47');
INSERT INTO `t_user_login_log` VALUES (1547, 1, '管理员', '172.16.4.85', 5903, 'Chrome', 'Windows 10', 1, '2019-09-09 08:47:47', '2019-09-09 08:47:47');
INSERT INTO `t_user_login_log` VALUES (1548, 1, '管理员', '172.16.1.243', 55673, 'Chrome', 'Windows 10', 1, '2019-09-09 11:25:02', '2019-09-09 11:25:02');
INSERT INTO `t_user_login_log` VALUES (1549, 1, '管理员', '172.16.4.85', 4672, 'Chrome', 'Windows 10', 1, '2019-09-09 11:25:34', '2019-09-09 11:25:34');
INSERT INTO `t_user_login_log` VALUES (1550, 1, '管理员', '172.16.1.188', 61186, 'Chrome', 'Windows 7', 1, '2019-09-09 11:39:24', '2019-09-09 11:39:24');
INSERT INTO `t_user_login_log` VALUES (1551, 1, '管理员', '172.16.4.85', 3032, 'Chrome', 'Windows 10', 1, '2019-09-09 14:17:53', '2019-09-09 14:17:53');
INSERT INTO `t_user_login_log` VALUES (1552, 1, '管理员', '172.16.4.85', 5829, 'Chrome', 'Windows 10', 1, '2019-09-09 14:54:27', '2019-09-09 14:54:27');
INSERT INTO `t_user_login_log` VALUES (1553, 1, '管理员', '172.16.1.166', 23398, 'Chrome', 'Windows 10', 1, '2019-09-09 15:06:50', '2019-09-09 15:06:50');
INSERT INTO `t_user_login_log` VALUES (1554, 1, '管理员', '172.16.5.60', 61094, 'Chrome', 'Windows 10', 1, '2019-09-09 15:20:50', '2019-09-09 15:20:50');
INSERT INTO `t_user_login_log` VALUES (1555, 1, '管理员', '172.16.4.85', 10566, 'Chrome', 'Windows 10', 1, '2019-09-09 15:51:22', '2019-09-09 15:51:22');
INSERT INTO `t_user_login_log` VALUES (1556, 1, '管理员', '172.16.1.166', 32190, 'Chrome', 'Windows 10', 1, '2019-09-09 17:00:59', '2019-09-09 17:00:59');
INSERT INTO `t_user_login_log` VALUES (1557, 1, '管理员', '172.16.5.60', 54502, 'Chrome', 'Windows 10', 1, '2019-09-10 09:10:48', '2019-09-10 09:10:48');
INSERT INTO `t_user_login_log` VALUES (1558, 1, '管理员', '172.16.4.85', 10659, 'Chrome', 'Windows 10', 1, '2019-09-10 09:21:48', '2019-09-10 09:21:48');
INSERT INTO `t_user_login_log` VALUES (1559, 1, '管理员', '172.16.4.85', 3363, 'Chrome', 'Windows 10', 1, '2019-09-10 10:56:23', '2019-09-10 10:56:23');
INSERT INTO `t_user_login_log` VALUES (1560, 1, '管理员', '172.16.4.85', 4460, 'Chrome', 'Windows 10', 1, '2019-09-10 14:23:44', '2019-09-10 14:23:44');
INSERT INTO `t_user_login_log` VALUES (1561, 1, '管理员', '172.16.4.85', 7344, 'Chrome', 'Windows 10', 1, '2019-09-10 14:59:52', '2019-09-10 14:59:52');
INSERT INTO `t_user_login_log` VALUES (1562, 1, '管理员', '172.16.5.89', 49996, 'Chrome', 'Windows 10', 1, '2019-09-10 18:08:04', '2019-09-10 18:08:04');
INSERT INTO `t_user_login_log` VALUES (1563, 1, '管理员', '172.16.1.38', 50152, 'Chrome', 'Windows 10', 1, '2019-09-11 10:19:27', '2019-09-11 10:19:27');
INSERT INTO `t_user_login_log` VALUES (1564, 1, '管理员', '172.16.1.38', 50173, 'Chrome', 'Windows 10', 1, '2019-09-11 10:20:38', '2019-09-11 10:20:38');
INSERT INTO `t_user_login_log` VALUES (1565, 1, '管理员', '172.16.4.141', 60881, 'Chrome', 'Windows 10', 1, '2019-09-11 14:52:02', '2019-09-11 14:52:02');
INSERT INTO `t_user_login_log` VALUES (1566, 1, '管理员', '172.16.4.93', 52688, 'Chrome', 'Windows 10', 1, '2019-09-11 15:15:14', '2019-09-11 15:15:14');
INSERT INTO `t_user_login_log` VALUES (1567, 1, '管理员', '172.16.5.127', 54993, 'Chrome', 'Windows 10', 1, '2019-09-12 14:29:58', '2019-09-12 14:29:58');
INSERT INTO `t_user_login_log` VALUES (1568, 1, '管理员', '172.16.5.127', 57424, 'Chrome', 'Windows 10', 1, '2019-09-12 15:26:46', '2019-09-12 15:26:46');
INSERT INTO `t_user_login_log` VALUES (1569, 1, '管理员', '172.16.5.127', 58073, 'Chrome', 'Windows 10', 1, '2019-09-12 15:41:54', '2019-09-12 15:41:54');
INSERT INTO `t_user_login_log` VALUES (1570, 1, '管理员', '172.16.5.146', 63230, 'Chrome', 'Windows 10', 1, '2019-09-16 10:17:15', '2019-09-16 10:17:15');
INSERT INTO `t_user_login_log` VALUES (1571, 1, '管理员', '172.16.5.146', 52857, 'Chrome', 'Windows 10', 1, '2019-09-16 11:17:18', '2019-09-16 11:17:18');
INSERT INTO `t_user_login_log` VALUES (1572, 1, '管理员', '172.16.1.190', 64527, 'Chrome', 'Windows 10', 1, '2019-09-19 14:06:45', '2019-09-19 14:06:45');
INSERT INTO `t_user_login_log` VALUES (1573, 1, '管理员', '127.0.0.1', 53267, 'Chrome', 'Windows 7', 1, '2019-09-20 17:24:33', '2019-09-20 17:24:33');
INSERT INTO `t_user_login_log` VALUES (1574, 1, '管理员', '127.0.0.1', 53267, 'Chrome', 'Windows 7', 1, '2019-09-20 17:24:43', '2019-09-20 17:24:43');
INSERT INTO `t_user_login_log` VALUES (1575, 1, '管理员', '127.0.0.1', 53267, 'Chrome', 'Windows 7', 1, '2019-09-20 17:24:59', '2019-09-20 17:24:59');
INSERT INTO `t_user_login_log` VALUES (1576, 1, '管理员', '127.0.0.1', 53267, 'Chrome', 'Windows 7', 1, '2019-09-20 17:26:05', '2019-09-20 17:26:05');
INSERT INTO `t_user_login_log` VALUES (1577, 1, '管理员', '127.0.0.1', 60612, 'Chrome', 'Windows 7', 1, '2019-09-20 17:56:06', '2019-09-20 17:56:06');
INSERT INTO `t_user_login_log` VALUES (1578, 1, '管理员', '172.16.1.202', 58066, 'Chrome', 'Windows 7', 1, '2019-09-22 18:25:03', '2019-09-22 18:25:03');
INSERT INTO `t_user_login_log` VALUES (1579, 1, '管理员', '172.16.1.48', 52290, 'Chrome', 'Windows 10', 1, '2019-09-23 16:01:16', '2019-09-23 16:01:16');
INSERT INTO `t_user_login_log` VALUES (1580, 1, '管理员', '172.16.4.141', 60997, 'Chrome', 'Windows 10', 1, '2019-09-23 17:16:55', '2019-09-23 17:16:55');
INSERT INTO `t_user_login_log` VALUES (1581, 1, '管理员', '172.16.5.146', 53246, 'Chrome', 'Windows 10', 1, '2019-09-23 17:54:14', '2019-09-23 17:54:14');
INSERT INTO `t_user_login_log` VALUES (1582, 1, '管理员', '127.0.0.1', 51987, 'Chrome', 'Windows 7', 1, '2019-09-24 09:16:37', '2019-09-24 09:16:37');
INSERT INTO `t_user_login_log` VALUES (1583, 1, '管理员', '172.16.1.202', 55724, 'Chrome', 'Windows 7', 1, '2019-09-24 12:57:39', '2019-09-24 12:57:39');
INSERT INTO `t_user_login_log` VALUES (1584, 1, '管理员', '172.16.1.166', 51876, 'Chrome', 'Windows 10', 1, '2019-09-24 16:24:37', '2019-09-24 16:24:37');
INSERT INTO `t_user_login_log` VALUES (1585, 1, '管理员', '172.16.1.202', 51648, 'Chrome', 'Windows 7', 1, '2019-09-24 19:26:39', '2019-09-24 19:26:39');
INSERT INTO `t_user_login_log` VALUES (1586, 1, '管理员', '172.16.1.234', 60984, 'Chrome', 'Windows 10', 1, '2019-09-26 10:52:07', '2019-09-26 10:52:07');
INSERT INTO `t_user_login_log` VALUES (1587, 1, '管理员', '172.16.1.234', 63440, 'Chrome', 'Windows 10', 1, '2019-09-26 11:30:54', '2019-09-26 11:30:54');
INSERT INTO `t_user_login_log` VALUES (1588, 1, '管理员', '172.16.1.202', 51956, 'Chrome', 'Windows 7', 1, '2019-09-27 20:55:08', '2019-09-27 20:55:08');
INSERT INTO `t_user_login_log` VALUES (1589, 1, '管理员', '172.16.1.48', 56166, 'Chrome', 'Windows 10', 1, '2019-09-30 08:59:13', '2019-09-30 08:59:13');
INSERT INTO `t_user_login_log` VALUES (1590, 1, '管理员', '172.16.1.202', 51448, 'Chrome', 'Windows 7', 1, '2019-09-30 09:00:13', '2019-09-30 09:00:13');
INSERT INTO `t_user_login_log` VALUES (1591, 1, '管理员', '172.16.1.188', 62679, 'Chrome', 'Windows 7', 1, '2019-10-15 11:25:26', '2019-10-15 11:25:26');
INSERT INTO `t_user_login_log` VALUES (1592, 1, '管理员', '172.16.1.234', 54034, 'Chrome', 'Windows 10', 1, '2019-10-18 10:47:14', '2019-10-18 10:47:14');
INSERT INTO `t_user_login_log` VALUES (1593, 1, '管理员', '172.16.1.234', 64515, 'Chrome', 'Windows 10', 1, '2019-10-18 13:32:10', '2019-10-18 13:32:10');
INSERT INTO `t_user_login_log` VALUES (1594, 1, '管理员', '172.16.1.234', 50211, 'Chrome', 'Windows 10', 1, '2019-10-18 13:56:19', '2019-10-18 13:56:19');
INSERT INTO `t_user_login_log` VALUES (1595, 1, '管理员', '172.16.1.234', 55469, 'Chrome', 'Windows 10', 1, '2019-10-18 14:56:24', '2019-10-18 14:56:24');
INSERT INTO `t_user_login_log` VALUES (1596, 1, '管理员', '172.16.1.234', 56392, 'Chrome', 'Windows 10', 1, '2019-10-18 15:08:25', '2019-10-18 15:08:25');
INSERT INTO `t_user_login_log` VALUES (1597, 1, '管理员', '172.16.1.234', 60896, 'Chrome', 'Windows 10', 1, '2019-10-18 16:14:15', '2019-10-18 16:14:15');
INSERT INTO `t_user_login_log` VALUES (1598, 1, '管理员', '172.16.1.234', 50590, 'Chrome', 'Windows 10', 1, '2019-10-19 08:38:54', '2019-10-19 08:38:54');
INSERT INTO `t_user_login_log` VALUES (1599, 1, '管理员', '172.16.1.166', 4879, 'Chrome', 'Windows 10', 1, '2019-10-19 09:19:08', '2019-10-19 09:19:08');
INSERT INTO `t_user_login_log` VALUES (1600, 1, '管理员', '172.16.1.188', 62895, 'Chrome', 'Windows 7', 1, '2019-10-19 13:49:29', '2019-10-19 13:49:29');
INSERT INTO `t_user_login_log` VALUES (1601, 1, '管理员', '172.16.1.234', 58144, 'Chrome', 'Windows 10', 1, '2019-10-19 14:55:50', '2019-10-19 14:55:50');
INSERT INTO `t_user_login_log` VALUES (1602, 1, '管理员', '127.0.0.1', 61033, 'Chrome', 'Windows 7', 1, '2019-10-19 15:19:38', '2019-10-19 15:19:38');
INSERT INTO `t_user_login_log` VALUES (1603, 1, '管理员', '172.16.1.188', 58944, 'Chrome', 'Windows 7', 1, '2019-10-19 16:48:49', '2019-10-19 16:48:49');
INSERT INTO `t_user_login_log` VALUES (1604, 1, '管理员', '172.16.1.188', 63950, 'Chrome', 'Windows 7', 1, '2019-10-21 08:10:38', '2019-10-21 08:10:38');
INSERT INTO `t_user_login_log` VALUES (1605, 1, '管理员', '172.16.1.188', 64899, 'Chrome', 'Windows 7', 1, '2019-10-21 08:17:40', '2019-10-21 08:17:40');
INSERT INTO `t_user_login_log` VALUES (1606, 1, '管理员', '172.16.1.221', 53180, 'Chrome', 'Windows 10', 1, '2019-10-21 15:52:36', '2019-10-21 15:52:36');
INSERT INTO `t_user_login_log` VALUES (1607, 1, '管理员', '172.16.1.221', 56067, 'Chrome', 'Windows 10', 1, '2019-10-23 10:19:39', '2019-10-23 10:19:39');
INSERT INTO `t_user_login_log` VALUES (1608, 1, '管理员', '172.16.1.221', 57692, 'Chrome', 'Windows 10', 1, '2019-10-23 16:36:39', '2019-10-23 16:36:39');
INSERT INTO `t_user_login_log` VALUES (1609, 1, '管理员', '172.16.1.188', 57180, 'Chrome', 'Windows 7', 1, '2019-10-24 08:26:21', '2019-10-24 08:26:21');
INSERT INTO `t_user_login_log` VALUES (1610, 1, '管理员', '172.16.0.196', 61409, 'Chrome', 'Windows 10', 1, '2019-10-24 08:26:55', '2019-10-24 08:26:55');
INSERT INTO `t_user_login_log` VALUES (1611, 1, '管理员', '172.16.1.234', 51906, 'Chrome', 'Windows 10', 1, '2019-10-24 15:56:50', '2019-10-24 15:56:50');
INSERT INTO `t_user_login_log` VALUES (1612, 1, '管理员', '172.16.1.234', 56793, 'Chrome', 'Windows 10', 1, '2019-10-24 17:04:54', '2019-10-24 17:04:54');
INSERT INTO `t_user_login_log` VALUES (1613, 30, '耿为刚', '172.16.1.234', 60368, 'Chrome', 'Windows 10', 1, '2019-10-24 17:51:13', '2019-10-24 17:51:13');
INSERT INTO `t_user_login_log` VALUES (1614, 1, '管理员', '172.16.1.234', 60368, 'Chrome', 'Windows 10', 1, '2019-10-24 17:51:56', '2019-10-24 17:51:56');
INSERT INTO `t_user_login_log` VALUES (1615, 30, '耿为刚', '172.16.1.234', 60589, 'Chrome 65', 'Windows 10', 1, '2019-10-24 17:52:52', '2019-10-24 17:52:52');
INSERT INTO `t_user_login_log` VALUES (1616, 1, '管理员', '172.16.1.234', 52998, 'Chrome', 'Windows 10', 1, '2019-10-25 09:28:13', '2019-10-25 09:28:13');
INSERT INTO `t_user_login_log` VALUES (1617, 1, '管理员', '172.16.1.234', 54948, 'Chrome', 'Windows 10', 1, '2019-10-25 10:01:34', '2019-10-25 10:01:34');
INSERT INTO `t_user_login_log` VALUES (1618, 1, '管理员', '172.16.1.234', 56800, 'Chrome', 'Windows 10', 1, '2019-10-25 10:32:53', '2019-10-25 10:32:53');
INSERT INTO `t_user_login_log` VALUES (1619, 1, '管理员', '127.0.0.1', 59071, 'Chrome', 'Windows 7', 1, '2019-10-28 16:05:21', '2019-10-28 16:05:21');
INSERT INTO `t_user_login_log` VALUES (1620, 1, '管理员', '127.0.0.1', 60106, 'Chrome', 'Windows 7', 1, '2019-10-28 16:11:29', '2019-10-28 16:11:29');
INSERT INTO `t_user_login_log` VALUES (1621, 1, '管理员', '127.0.0.1', 63479, 'Chrome', 'Windows 7', 1, '2019-10-28 16:28:59', '2019-10-28 16:28:59');
INSERT INTO `t_user_login_log` VALUES (1622, 1, '管理员', '127.0.0.1', 63479, 'Chrome', 'Windows 7', 1, '2019-10-28 16:29:55', '2019-10-28 16:29:55');
INSERT INTO `t_user_login_log` VALUES (1623, 1, '管理员', '127.0.0.1', 57588, 'Chrome', 'Windows 7', 1, '2019-10-29 15:37:03', '2019-10-29 15:37:03');
INSERT INTO `t_user_login_log` VALUES (1741, 1, '管理员', '127.0.0.1', 54621, 'Chrome', 'Windows 7', 1, '2019-11-16 18:03:45', '2019-11-16 18:03:45');
INSERT INTO `t_user_login_log` VALUES (1742, 1, '管理员', '127.0.0.1', 62655, 'Firefox 8', 'Mac OS X', 1, '2021-02-13 16:52:18', '2021-02-13 16:52:18');
INSERT INTO `t_user_login_log` VALUES (1743, 1, '管理员', '192.168.1.232', 63523, 'Chrome 8', 'Mac OS X', 1, '2021-02-13 19:55:30', '2021-02-13 19:55:30');
INSERT INTO `t_user_login_log` VALUES (1744, 1, '管理员', '192.168.1.232', 53600, 'Firefox 8', 'Mac OS X', 1, '2021-02-13 20:22:20', '2021-02-13 20:22:20');
INSERT INTO `t_user_login_log` VALUES (1745, 1, '管理员', '192.168.1.5', 49192, 'Chrome Mobile', 'Android 1.x', 1, '2021-02-13 20:27:08', '2021-02-13 20:27:08');
INSERT INTO `t_user_login_log` VALUES (1746, 1, '管理员', '192.168.1.232', 50077, 'Firefox 8', 'Mac OS X', 1, '2021-02-24 22:37:41', '2021-02-24 22:37:41');
INSERT INTO `t_user_login_log` VALUES (1747, 1, '管理员', '192.168.1.232', 50791, 'Chrome 8', 'Mac OS X', 1, '2021-02-24 23:10:20', '2021-02-24 23:10:20');
INSERT INTO `t_user_login_log` VALUES (1748, 1, '管理员', '127.0.0.1', 59795, 'Firefox 8', 'Mac OS X', 1, '2021-02-28 01:41:58', '2021-02-28 01:41:58');
INSERT INTO `t_user_login_log` VALUES (1749, 1, '管理员', '127.0.0.1', 65535, 'Firefox 8', 'Mac OS X', 1, '2021-02-28 22:28:05', '2021-02-28 22:28:05');
INSERT INTO `t_user_login_log` VALUES (1750, 1, '管理员', '127.0.0.1', 49700, 'Firefox 8', 'Mac OS X', 1, '2021-02-28 23:44:25', '2021-02-28 23:44:25');
COMMIT;

-- ----------------------------
-- Table structure for t_user_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_operate_log`;
CREATE TABLE `t_user_operate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名称',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作模块',
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作内容',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求路径',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求方法',
  `param` text COLLATE utf8mb4_unicode_ci COMMENT '请求参数',
  `result` tinyint(4) DEFAULT NULL COMMENT '请求结果 0失败 1成功',
  `fail_reason` longtext COLLATE utf8mb4_unicode_ci COMMENT '失败原因',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_user_operate_log
-- ----------------------------
BEGIN;
INSERT INTO `t_user_operate_log` VALUES (1, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/smart-admin-api/privilege/listPrivilegeByRoleId/0', 'com.gangquan360.smartadmin.module.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[0]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (2, 1, '管理员', '管理端-角色', '获取所有角色', '/smart-admin-api/role/getAll', 'com.gangquan360.smartadmin.module.role.basic.RoleController.getAllRole', '', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (3, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/smart-admin-api/privilege/listPrivilegeByRoleId/1', 'com.gangquan360.smartadmin.module.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[1]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (4, 1, '管理员', '管理端-岗位', '分页查询所有岗位', '/smart-admin-api/position/getListPage', 'com.gangquan360.smartadmin.module.position.PositionController.getJobPage', 'PositionQueryDTO[{\"pageNum\":1,\"pageSize\":10,\"positionName\":\"\",\"searchCount\":true,\"sort\":false}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (5, 1, '管理员', '管理端-角色', '获取所有角色', '/smart-admin-api/role/getAll', 'com.gangquan360.smartadmin.module.role.basic.RoleController.getAllRole', '', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (6, 1, '管理员', '管理端-部门', '根据部门名称查询部门及员工列表', '/smart-admin-api/department/listEmployeeByDepartmentName', 'com.gangquan360.smartadmin.module.department.DepartmentController.listDepartmentEmployee', 'String[\"\"]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (7, 1, '管理员', '管理端-部门', '查询部门及员工列表', '/smart-admin-api/department/listEmployee', 'com.gangquan360.smartadmin.module.department.DepartmentController.listDepartmentEmployee', '', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (8, 1, '管理员', '管理端-用户', '员工管理查询', '/smart-admin-api/employee/query', 'com.gangquan360.smartadmin.module.employee.EmployeeController.query', 'EmployeeQueryDTO[{\"isDelete\":0,\"isDisabled\":0,\"keyword\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (9, 1, '管理员', '管理端-用户', '员工重置密码', '/smart-admin-api/employee/resetPasswd/29', 'com.gangquan360.smartadmin.module.employee.EmployeeController.resetPasswd', 'Integer[29]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (10, 1, '管理员', '管理端-用户', '员工管理查询', '/smart-admin-api/employee/query', 'com.gangquan360.smartadmin.module.employee.EmployeeController.query', 'EmployeeQueryDTO[{\"isDelete\":0,\"isDisabled\":0,\"keyword\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (11, 1, '管理员', '管理端-角色用户', '通过员工id获取所有角色以及员工具有的角色', '/smart-admin-api/role/getRoles/29', 'com.gangquan360.smartadmin.module.role.roleemployee.RoleEmployeeController.getRoleByEmployeeId', 'Long[29]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (12, 1, '管理员', '管理端-用户', '单个员工角色授权', '/smart-admin-api/employee/updateRoles', 'com.gangquan360.smartadmin.module.employee.EmployeeController.updateRoles', 'EmployeeUpdateRolesDTO[{\"employeeId\":29,\"roleIds\":[34,45]}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (13, 1, '管理员', '管理端-用户', '员工管理查询', '/smart-admin-api/employee/query', 'com.gangquan360.smartadmin.module.employee.EmployeeController.query', 'EmployeeQueryDTO[{\"isDelete\":0,\"isDisabled\":0,\"keyword\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (14, 1, '管理员', '管理端-角色权限', '更新角色权限', '/smart-admin-api/privilege/updateRolePrivilege', 'com.gangquan360.smartadmin.module.role.roleprivilege.RolePrivilegeController.updateRolePrivilege', 'RolePrivilegeDTO[{\"privilegeKeyList\":[\"Employee\",\"RoleManage\",\"PositionList\",\"RoleEmployeeManage\",\"SystemSetting\",\"SystemConfig\",\"SystemPrivilege\",\"Notice\",\"NoticeList\",\"PersonNotice\",\"Email\",\"EmailList\",\"SendMail\",\"UserLog\",\"UserOperateLog\",\"UserLoginLog\",\"Monitor\",\"OnlineUser\",\"Sql\",\"Task\",\"TaskList\",\"Reload\",\"SmartReloadList\",\"ApiDoc\",\"Swagger\",\"ThreeRouter\",\"LevelTwo\",\"RoleOneTwo\",\"RoleTwoTwo\",\"RoleOneOne\",\"KeepAlive\",\"KeepAliveContentList\",\"KeepAliveAddContent\",\"HeartBeat\",\"HeartBeatList\",\"File\",\"FileList\",\"add-role\",\"delete-role\",\"update-role\",\"update-role-privilege\",\"add-employee-role\",\"search-employee-list\",\"delete-employee-role\",\"delete-employee-role-batch\",\"query-data-scope\",\"update-data-scope\",\"search-position\",\"add-position\",\"update-position\",\"delete-position\",\"add-department\",\"update-department\",\"delete-department\",\"search-department\",\"add-employee\",\"update-employee\",\"disabled-employee\",\"disabled-employee-batch\",\"update-employee-role\",\"reset-employee-password\",\"delete-employee\",\"system-params-search\",\"system-params-add\",\"system-config-update\",\"system-config-search\",\"privilege-main-update\",\"privilege-main-search\",\"notice-query\",\"notice-add\",\"notice-edit\",\"notice-delete\",\"notice-detail\",\"notice-send\",\"person-notice-query\",\"person-notice-detail\",\"email-query\",\"email-add\",\"email-update\",\"email-delete\",\"email-send\",\"user-operate-log-search\",\"user-operate-log-detail\",\"user-operate-log-delete\",\"user-login-log-search\",\"user-login-log-delete\",\"online-user-search\",\"task-search\",\"task-refresh\",\"task-add\",\"task-update\",\"task-pause\",\"task-resume\",\"task-run\",\"task-query-log\",\"task-delete\",\"smart-reload-search\",\"smart-reload-update\",\"smart-reload-result\",\"heart-beat-query\",\"file-filePage-query\",\"file-filePage-upload\"],\"roleId\":1}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (15, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/smart-admin-api/privilege/listPrivilegeByRoleId/1', 'com.gangquan360.smartadmin.module.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[1]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (16, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/smart-admin-api/systemConfig/getListPage', 'com.gangquan360.smartadmin.module.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (17, 1, '管理员', '管理端-系统配置', '修改配置参数', '/smart-admin-api/systemConfig/update', 'com.gangquan360.smartadmin.module.systemconfig.SystemConfigController.updateSystemConfig', 'SystemConfigUpdateDTO[{\"configGroup\":\"upload\",\"configKey\":\"ali_oss\",\"configName\":\"阿里云上传配置\",\"configValue\":\"{\\\"accessKeyId\\\":\\\"\\\",\\\"accessKeySecret\\\":\\\"\\\",\\\"bucketName\\\":\\\"sit\\\",\\\"endpoint\\\":\\\"http://oss-cn-beijing.aliyuncs.com\\\"}\",\"id\":14,\"remark\":\"eefwfwfds\"}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (18, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/smart-admin-api/systemConfig/getListPage', 'com.gangquan360.smartadmin.module.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (19, 1, '管理员', '管理端-系统配置', '修改配置参数', '/smart-admin-api/systemConfig/update', 'com.gangquan360.smartadmin.module.systemconfig.SystemConfigController.updateSystemConfig', 'SystemConfigUpdateDTO[{\"configGroup\":\"upload\",\"configKey\":\"qi_niu_oss\",\"configName\":\"七牛云上传配置\",\"configValue\":\"{\\\"accessKeyId\\\":\\\"rX7HgY1ZLpUD25JrA-uwMM_jj-\\\",\\\"accessKeySecret\\\":\\\"\\\",\\\"bucketName\\\":\\\"sun-smart-admin\\\",\\\"endpoint\\\":\\\"http://puvpyay08.bkt.clouddn.com\\\"}\",\"id\":16}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (20, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/smart-admin-api/systemConfig/getListPage', 'com.gangquan360.smartadmin.module.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (21, 1, '管理员', '通用-权限', '获取所有请求路径', '/smart-admin-api/privilege/getAllUrl', 'com.gangquan360.smartadmin.module.privilege.controller.PrivilegeController.getAllUrl', '', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (22, 1, '管理员', '通用-权限', '查询所有菜单项', '/smart-admin-api/privilege/menu/queryAll', 'com.gangquan360.smartadmin.module.privilege.controller.PrivilegeController.queryAll', '', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (23, 1, '管理员', '通用-权限', '查询菜单功能点', '/smart-admin-api/privilege/function/query/FileList', 'com.gangquan360.smartadmin.module.privilege.controller.PrivilegeController.functionQuery', 'String[\"FileList\"]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (24, 1, '管理员', '通用-权限', '保存更新功能点', '/smart-admin-api/privilege/function/saveOrUpdate', 'com.gangquan360.smartadmin.module.privilege.controller.PrivilegeController.functionSaveOrUpdate', 'PrivilegeFunctionDTO[{\"functionKey\":\"file-filePage-download\",\"functionName\":\"下载\",\"menuKey\":\"FileList\",\"sort\":2,\"url\":\"fileController.downLoadById\"}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (25, 1, '管理员', '通用-权限', '查询菜单功能点', '/smart-admin-api/privilege/function/query/FileList', 'com.gangquan360.smartadmin.module.privilege.controller.PrivilegeController.functionQuery', 'String[\"FileList\"]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (26, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'com.gangquan360.smartadmin.module.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (27, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'com.gangquan360.smartadmin.module.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"sort\":false,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (28, 1, '管理员', '管理端-用户登录日志', '分页查询用户登录日志', '/smart-admin-api/userLoginLog/page/query', 'com.gangquan360.smartadmin.module.log.userloginlog.UserLoginLogController.queryByPage', 'UserLoginLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"sort\":false,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (29, 1, '管理员', '管理端-用户登录日志', '查询员工在线状态', '/smart-admin-api/userOnLine/query', 'com.gangquan360.smartadmin.module.log.userloginlog.UserLoginLogController.queryUserOnLine', 'EmployeeQueryDTO[{\"actualName\":\"\",\"employeeIds\":[1],\"isDelete\":0,\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (30, 1, '管理员', '管理端-任务调度', '查询任务', '/smart-admin-api/quartz/task/query', 'com.gangquan360.smartadmin.module.quartz.controller.QuartzController.query', 'QuartzQueryDTO[{\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (31, 1, '管理员', '管理端-smart reload', '获取全部Smart-reload项', '/smart-admin-api/smartReload/all', 'com.gangquan360.smartadmin.module.smartreload.SmartReloadController.listAllReloadItem', '', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (32, 1, '管理员', '通用-心跳服务', '查询心跳记录 @author zhuoda', '/smart-admin-api/heartBeat/query', 'com.gangquan360.smartadmin.module.heartbeat.HeartBeatController.query', 'PageParamDTO[{\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2019-11-01 00:00:00', '2019-11-01 00:00:00');
INSERT INTO `t_user_operate_log` VALUES (33, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-13 16:52:43', '2021-02-13 16:52:43');
INSERT INTO `t_user_operate_log` VALUES (34, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 16:52:58', '2021-02-13 16:52:58');
INSERT INTO `t_user_operate_log` VALUES (35, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-13 16:53:06', '2021-02-13 16:53:06');
INSERT INTO `t_user_operate_log` VALUES (36, 1, '管理员', '通用-心跳服务', '查询心跳记录 @author zhuoda', '/smart-admin-api/heartBeat/query', 'net.lab1024.smartadmin.module.support.heartbeat.HeartBeatController.query', 'PageParamDTO[{\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 16:53:34', '2021-02-13 16:53:34');
INSERT INTO `t_user_operate_log` VALUES (37, 1, '管理员', '管理端-用户登录日志', '查询员工在线状态', '/smart-admin-api/userOnLine/query', 'net.lab1024.smartadmin.module.business.log.userloginlog.UserLoginLogController.queryUserOnLine', 'EmployeeQueryDTO[{\"actualName\":\"\",\"employeeIds\":[1],\"isDelete\":0,\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 16:53:44', '2021-02-13 16:53:44');
INSERT INTO `t_user_operate_log` VALUES (38, 1, '管理员', '管理端-smart reload', '获取全部Smart-reload项', '/smart-admin-api/smartReload/all', 'net.lab1024.smartadmin.module.support.smartreload.SmartReloadController.listAllReloadItem', '', 1, NULL, '2021-02-13 16:53:53', '2021-02-13 16:53:53');
INSERT INTO `t_user_operate_log` VALUES (39, 1, '管理员', '管理端-smart reload', '通过tag更新标识', '/smart-admin-api/smartReload/update', 'net.lab1024.smartadmin.module.support.smartreload.SmartReloadController.updateByTag', 'ReloadItemUpdateDTO[{\"args\":\"\",\"identification\":\"xxxx\",\"tag\":\"system_config\"}]', 1, NULL, '2021-02-13 16:54:17', '2021-02-13 16:54:17');
INSERT INTO `t_user_operate_log` VALUES (40, 1, '管理员', '管理端-smart reload', '获取全部Smart-reload项', '/smart-admin-api/smartReload/all', 'net.lab1024.smartadmin.module.support.smartreload.SmartReloadController.listAllReloadItem', '', 1, NULL, '2021-02-13 16:54:17', '2021-02-13 16:54:17');
INSERT INTO `t_user_operate_log` VALUES (41, 1, '管理员', '管理端-smart reload', '获取reload result', '/smart-admin-api/smartReload/result/system_config', 'net.lab1024.smartadmin.module.support.smartreload.SmartReloadController.queryReloadResult', 'String[\"system_config\"]', 1, NULL, '2021-02-13 16:54:18', '2021-02-13 16:54:18');
INSERT INTO `t_user_operate_log` VALUES (42, 1, '管理员', '管理端-任务调度', '查询任务', '/smart-admin-api/quartz/task/query', 'net.lab1024.smartadmin.module.support.quartz.controller.QuartzController.query', 'QuartzQueryDTO[{\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 16:54:27', '2021-02-13 16:54:27');
INSERT INTO `t_user_operate_log` VALUES (43, 1, '管理员', '管理端-角色', '获取所有角色', '/smart-admin-api/role/getAll', 'net.lab1024.smartadmin.module.system.role.basic.RoleController.getAllRole', '', 1, NULL, '2021-02-13 16:54:34', '2021-02-13 16:54:34');
INSERT INTO `t_user_operate_log` VALUES (44, 1, '管理员', '管理端-岗位', '分页查询所有岗位', '/smart-admin-api/position/getListPage', 'net.lab1024.smartadmin.module.system.position.PositionController.getJobPage', 'PositionQueryDTO[{\"pageNum\":1,\"pageSize\":10,\"positionName\":\"\",\"searchCount\":true}]', 1, NULL, '2021-02-13 16:54:39', '2021-02-13 16:54:39');
INSERT INTO `t_user_operate_log` VALUES (45, 1, '管理员', '管理端-角色', '获取所有角色', '/smart-admin-api/role/getAll', 'net.lab1024.smartadmin.module.system.role.basic.RoleController.getAllRole', '', 1, NULL, '2021-02-13 16:54:41', '2021-02-13 16:54:41');
INSERT INTO `t_user_operate_log` VALUES (46, 1, '管理员', '管理端-部门', '查询部门及员工列表', '/smart-admin-api/department/listEmployee', 'net.lab1024.smartadmin.module.system.department.DepartmentController.listDepartmentEmployee', '', 1, NULL, '2021-02-13 16:54:42', '2021-02-13 16:54:42');
INSERT INTO `t_user_operate_log` VALUES (47, 1, '管理员', '管理端-用户', '员工管理查询', '/smart-admin-api/employee/query', 'net.lab1024.smartadmin.module.system.employee.EmployeeController.query', 'EmployeeQueryDTO[{\"isDelete\":0,\"isDisabled\":0,\"keyword\":\"\",\"pageNum\":1,\"pageSize\":20}]', 1, NULL, '2021-02-13 16:54:42', '2021-02-13 16:54:42');
INSERT INTO `t_user_operate_log` VALUES (48, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'net.lab1024.smartadmin.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-13 16:54:45', '2021-02-13 16:54:45');
INSERT INTO `t_user_operate_log` VALUES (49, 1, '管理员', '管理端-用户登录日志', '分页查询用户登录日志', '/smart-admin-api/userLoginLog/page/query', 'net.lab1024.smartadmin.module.business.log.userloginlog.UserLoginLogController.queryByPage', 'UserLoginLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-13 16:54:47', '2021-02-13 16:54:47');
INSERT INTO `t_user_operate_log` VALUES (50, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/smart-admin-api/systemConfig/getListPage', 'net.lab1024.smartadmin.module.system.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 16:54:49', '2021-02-13 16:54:49');
INSERT INTO `t_user_operate_log` VALUES (51, 1, '管理员', '通用-权限', '获取所有请求路径', '/smart-admin-api/privilege/getAllUrl', 'net.lab1024.smartadmin.module.system.privilege.controller.PrivilegeController.getAllUrl', '', 1, NULL, '2021-02-13 16:54:51', '2021-02-13 16:54:51');
INSERT INTO `t_user_operate_log` VALUES (52, 1, '管理员', '通用-权限', '查询所有菜单项', '/smart-admin-api/privilege/menu/queryAll', 'net.lab1024.smartadmin.module.system.privilege.controller.PrivilegeController.queryAll', '', 1, NULL, '2021-02-13 16:54:51', '2021-02-13 16:54:51');
INSERT INTO `t_user_operate_log` VALUES (53, 1, '管理员', '管理端-任务调度', '查询任务', '/smart-admin-api/quartz/task/query', 'net.lab1024.smartadmin.module.support.quartz.controller.QuartzController.query', 'QuartzQueryDTO[{\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 17:10:03', '2021-02-13 17:10:03');
INSERT INTO `t_user_operate_log` VALUES (54, 1, '管理员', '管理端-任务调度', '查询任务', '/smart-admin-api/quartz/task/query', 'net.lab1024.smartadmin.module.support.quartz.controller.QuartzController.query', 'QuartzQueryDTO[{\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 17:10:31', '2021-02-13 17:10:31');
INSERT INTO `t_user_operate_log` VALUES (55, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-13 17:10:41', '2021-02-13 17:10:41');
INSERT INTO `t_user_operate_log` VALUES (56, 1, '管理员', '通用-心跳服务', '查询心跳记录 @author zhuoda', '/smart-admin-api/heartBeat/query', 'net.lab1024.smartadmin.module.support.heartbeat.HeartBeatController.query', 'PageParamDTO[{\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 17:10:56', '2021-02-13 17:10:56');
INSERT INTO `t_user_operate_log` VALUES (57, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 17:11:12', '2021-02-13 17:11:12');
INSERT INTO `t_user_operate_log` VALUES (58, 1, '管理员', '通用-心跳服务', '查询心跳记录 @author zhuoda', '/smart-admin-api/heartBeat/query', 'net.lab1024.smartadmin.module.support.heartbeat.HeartBeatController.query', 'PageParamDTO[{\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 17:11:17', '2021-02-13 17:11:17');
INSERT INTO `t_user_operate_log` VALUES (59, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-13 17:11:21', '2021-02-13 17:11:21');
INSERT INTO `t_user_operate_log` VALUES (60, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 17:11:48', '2021-02-13 17:11:48');
INSERT INTO `t_user_operate_log` VALUES (61, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-13 17:11:48', '2021-02-13 17:11:48');
INSERT INTO `t_user_operate_log` VALUES (62, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-13 17:12:18', '2021-02-13 17:12:18');
INSERT INTO `t_user_operate_log` VALUES (63, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 19:54:44', '2021-02-13 19:54:44');
INSERT INTO `t_user_operate_log` VALUES (64, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 19:56:09', '2021-02-13 19:56:09');
INSERT INTO `t_user_operate_log` VALUES (65, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 19:56:38', '2021-02-13 19:56:38');
INSERT INTO `t_user_operate_log` VALUES (66, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-13 19:57:59', '2021-02-13 19:57:59');
INSERT INTO `t_user_operate_log` VALUES (67, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 20:01:57', '2021-02-13 20:01:57');
INSERT INTO `t_user_operate_log` VALUES (68, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 20:03:56', '2021-02-13 20:03:56');
INSERT INTO `t_user_operate_log` VALUES (69, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 20:10:46', '2021-02-13 20:10:46');
INSERT INTO `t_user_operate_log` VALUES (70, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 20:12:02', '2021-02-13 20:12:02');
INSERT INTO `t_user_operate_log` VALUES (71, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 20:12:08', '2021-02-13 20:12:08');
INSERT INTO `t_user_operate_log` VALUES (72, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 20:24:29', '2021-02-13 20:24:29');
INSERT INTO `t_user_operate_log` VALUES (73, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-13 20:24:35', '2021-02-13 20:24:35');
INSERT INTO `t_user_operate_log` VALUES (74, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 20:24:47', '2021-02-13 20:24:47');
INSERT INTO `t_user_operate_log` VALUES (75, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-13 20:24:47', '2021-02-13 20:24:47');
INSERT INTO `t_user_operate_log` VALUES (76, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-13 20:25:03', '2021-02-13 20:25:03');
INSERT INTO `t_user_operate_log` VALUES (77, 1, '管理员', '管理端-角色', '获取所有角色', '/smart-admin-api/role/getAll', 'net.lab1024.smartadmin.module.system.role.basic.RoleController.getAllRole', '', 1, NULL, '2021-02-13 20:27:27', '2021-02-13 20:27:27');
INSERT INTO `t_user_operate_log` VALUES (78, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'net.lab1024.smartadmin.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-13 20:27:33', '2021-02-13 20:27:33');
INSERT INTO `t_user_operate_log` VALUES (79, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'net.lab1024.smartadmin.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":2,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-13 20:27:38', '2021-02-13 20:27:38');
INSERT INTO `t_user_operate_log` VALUES (80, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'net.lab1024.smartadmin.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":3,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-13 20:27:39', '2021-02-13 20:27:39');
INSERT INTO `t_user_operate_log` VALUES (81, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'net.lab1024.smartadmin.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":4,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-13 20:27:39', '2021-02-13 20:27:39');
INSERT INTO `t_user_operate_log` VALUES (82, 1, '管理员', '管理端-用户登录日志', '分页查询用户登录日志', '/smart-admin-api/userLoginLog/page/query', 'net.lab1024.smartadmin.module.business.log.userloginlog.UserLoginLogController.queryByPage', 'UserLoginLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-13 20:27:47', '2021-02-13 20:27:47');
INSERT INTO `t_user_operate_log` VALUES (83, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/smart-admin-api/systemConfig/getListPage', 'net.lab1024.smartadmin.module.system.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 20:27:52', '2021-02-13 20:27:52');
INSERT INTO `t_user_operate_log` VALUES (84, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/smart-admin-api/systemConfig/getListPage', 'net.lab1024.smartadmin.module.system.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-13 20:29:22', '2021-02-13 20:29:22');
INSERT INTO `t_user_operate_log` VALUES (85, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 22:37:46', '2021-02-24 22:37:46');
INSERT INTO `t_user_operate_log` VALUES (86, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 22:42:33', '2021-02-24 22:42:33');
INSERT INTO `t_user_operate_log` VALUES (87, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 22:42:36', '2021-02-24 22:42:36');
INSERT INTO `t_user_operate_log` VALUES (88, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 22:51:09', '2021-02-24 22:51:09');
INSERT INTO `t_user_operate_log` VALUES (89, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 22:51:37', '2021-02-24 22:51:37');
INSERT INTO `t_user_operate_log` VALUES (90, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 22:51:40', '2021-02-24 22:51:40');
INSERT INTO `t_user_operate_log` VALUES (91, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:06:44', '2021-02-24 23:06:44');
INSERT INTO `t_user_operate_log` VALUES (92, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:06:47', '2021-02-24 23:06:47');
INSERT INTO `t_user_operate_log` VALUES (93, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:06:52', '2021-02-24 23:06:52');
INSERT INTO `t_user_operate_log` VALUES (94, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:07:01', '2021-02-24 23:07:01');
INSERT INTO `t_user_operate_log` VALUES (95, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:08:28', '2021-02-24 23:08:28');
INSERT INTO `t_user_operate_log` VALUES (96, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:08:35', '2021-02-24 23:08:35');
INSERT INTO `t_user_operate_log` VALUES (97, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-24 23:10:27', '2021-02-24 23:10:27');
INSERT INTO `t_user_operate_log` VALUES (98, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:48:41', '2021-02-24 23:48:41');
INSERT INTO `t_user_operate_log` VALUES (99, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:52:31', '2021-02-24 23:52:31');
INSERT INTO `t_user_operate_log` VALUES (100, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:58:26', '2021-02-24 23:58:26');
INSERT INTO `t_user_operate_log` VALUES (101, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-24 23:58:34', '2021-02-24 23:58:34');
INSERT INTO `t_user_operate_log` VALUES (102, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-24 23:58:52', '2021-02-24 23:58:52');
INSERT INTO `t_user_operate_log` VALUES (103, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"2021-02-23T16:00:00.000Z\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"2021-02-23T16:00:00.000Z\"}]', 1, NULL, '2021-02-24 23:59:58', '2021-02-24 23:59:58');
INSERT INTO `t_user_operate_log` VALUES (104, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'net.lab1024.smartadmin.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-25 00:00:08', '2021-02-25 00:00:08');
INSERT INTO `t_user_operate_log` VALUES (105, 1, '管理员', '管理端-用户登录日志', '分页查询用户登录日志', '/smart-admin-api/userLoginLog/page/query', 'net.lab1024.smartadmin.module.business.log.userloginlog.UserLoginLogController.queryByPage', 'UserLoginLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-25 00:00:09', '2021-02-25 00:00:09');
INSERT INTO `t_user_operate_log` VALUES (106, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:04:54', '2021-02-25 00:04:54');
INSERT INTO `t_user_operate_log` VALUES (107, 1, '管理员', '通用-邮件发送', '分页查询', '/smart-admin-api/email/page/query', 'net.lab1024.smartadmin.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-25 00:04:57', '2021-02-25 00:04:57');
INSERT INTO `t_user_operate_log` VALUES (108, 1, '管理员', '管理端-用户登录日志', '分页查询用户登录日志', '/smart-admin-api/userLoginLog/page/query', 'net.lab1024.smartadmin.module.business.log.userloginlog.UserLoginLogController.queryByPage', 'UserLoginLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-25 00:05:08', '2021-02-25 00:05:08');
INSERT INTO `t_user_operate_log` VALUES (109, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'net.lab1024.smartadmin.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-25 00:05:09', '2021-02-25 00:05:09');
INSERT INTO `t_user_operate_log` VALUES (110, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:05:15', '2021-02-25 00:05:15');
INSERT INTO `t_user_operate_log` VALUES (111, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:06:44', '2021-02-25 00:06:44');
INSERT INTO `t_user_operate_log` VALUES (112, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:11:01', '2021-02-25 00:11:01');
INSERT INTO `t_user_operate_log` VALUES (113, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:11:03', '2021-02-25 00:11:03');
INSERT INTO `t_user_operate_log` VALUES (114, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:11:09', '2021-02-25 00:11:09');
INSERT INTO `t_user_operate_log` VALUES (115, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'net.lab1024.smartadmin.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-25 00:11:09', '2021-02-25 00:11:09');
INSERT INTO `t_user_operate_log` VALUES (116, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:11:34', '2021-02-25 00:11:34');
INSERT INTO `t_user_operate_log` VALUES (117, 1, '管理员', '管理端-用户操作日志', '分页查询', '/smart-admin-api/userOperateLog/page/query', 'net.lab1024.smartadmin.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-25 00:11:34', '2021-02-25 00:11:34');
INSERT INTO `t_user_operate_log` VALUES (118, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:11:38', '2021-02-25 00:11:38');
INSERT INTO `t_user_operate_log` VALUES (119, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:12:32', '2021-02-25 00:12:32');
INSERT INTO `t_user_operate_log` VALUES (120, 1, '管理员', '管理端-用户登录', '获取session', '/smart-admin-api/session/get', 'net.lab1024.smartadmin.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-25 00:13:00', '2021-02-25 00:13:00');
INSERT INTO `t_user_operate_log` VALUES (121, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 01:42:02', '2021-02-28 01:42:02');
INSERT INTO `t_user_operate_log` VALUES (122, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 01:42:04', '2021-02-28 01:42:04');
INSERT INTO `t_user_operate_log` VALUES (123, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 11:23:34', '2021-02-28 11:23:34');
INSERT INTO `t_user_operate_log` VALUES (124, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 11:26:20', '2021-02-28 11:26:20');
INSERT INTO `t_user_operate_log` VALUES (125, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 11:26:23', '2021-02-28 11:26:23');
INSERT INTO `t_user_operate_log` VALUES (126, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 21:54:33', '2021-02-28 21:54:33');
INSERT INTO `t_user_operate_log` VALUES (127, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 21:54:57', '2021-02-28 21:54:57');
INSERT INTO `t_user_operate_log` VALUES (128, 1, '管理员', '通用-邮件发送', '删除', '/email/delete/23', 'io.webapp.module.business.email.EmailController.delete', 'Long[23]', 1, NULL, '2021-02-28 21:55:04', '2021-02-28 21:55:04');
INSERT INTO `t_user_operate_log` VALUES (129, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 21:55:04', '2021-02-28 21:55:04');
INSERT INTO `t_user_operate_log` VALUES (130, 1, '管理员', '通用-邮件发送', '删除', '/email/delete/24', 'io.webapp.module.business.email.EmailController.delete', 'Long[24]', 1, NULL, '2021-02-28 21:55:07', '2021-02-28 21:55:07');
INSERT INTO `t_user_operate_log` VALUES (131, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 21:55:07', '2021-02-28 21:55:07');
INSERT INTO `t_user_operate_log` VALUES (132, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 21:55:29', '2021-02-28 21:55:29');
INSERT INTO `t_user_operate_log` VALUES (133, 1, '管理员', '管理端-角色', '获取所有角色', '/role/getAll', 'io.webapp.module.system.role.basic.RoleController.getAllRole', '', 1, NULL, '2021-02-28 21:55:41', '2021-02-28 21:55:41');
INSERT INTO `t_user_operate_log` VALUES (134, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/0', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[0]', 1, NULL, '2021-02-28 21:55:41', '2021-02-28 21:55:41');
INSERT INTO `t_user_operate_log` VALUES (135, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/1', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[1]', 1, NULL, '2021-02-28 21:55:41', '2021-02-28 21:55:41');
INSERT INTO `t_user_operate_log` VALUES (136, 1, '管理员', '管理端-岗位', '分页查询所有岗位', '/position/getListPage', 'io.webapp.module.system.position.PositionController.getJobPage', 'PositionQueryDTO[{\"pageNum\":1,\"pageSize\":10,\"positionName\":\"\",\"searchCount\":true}]', 1, NULL, '2021-02-28 21:55:43', '2021-02-28 21:55:43');
INSERT INTO `t_user_operate_log` VALUES (137, 1, '管理员', '管理端-角色', '获取所有角色', '/role/getAll', 'io.webapp.module.system.role.basic.RoleController.getAllRole', '', 1, NULL, '2021-02-28 21:55:44', '2021-02-28 21:55:44');
INSERT INTO `t_user_operate_log` VALUES (138, 1, '管理员', '管理端-部门', '查询部门及员工列表', '/department/listEmployee', 'io.webapp.module.system.department.DepartmentController.listDepartmentEmployee', '', 1, NULL, '2021-02-28 21:55:44', '2021-02-28 21:55:44');
INSERT INTO `t_user_operate_log` VALUES (139, 1, '管理员', '管理端-用户', '员工管理查询', '/employee/query', 'io.webapp.module.system.employee.EmployeeController.query', 'EmployeeQueryDTO[{\"isDelete\":0,\"isDisabled\":0,\"keyword\":\"\",\"pageNum\":1,\"pageSize\":20}]', 1, NULL, '2021-02-28 21:55:44', '2021-02-28 21:55:44');
INSERT INTO `t_user_operate_log` VALUES (140, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 21:56:32', '2021-02-28 21:56:32');
INSERT INTO `t_user_operate_log` VALUES (141, 1, '管理员', '管理端-角色', '获取所有角色', '/role/getAll', 'io.webapp.module.system.role.basic.RoleController.getAllRole', '', 1, NULL, '2021-02-28 21:56:35', '2021-02-28 21:56:35');
INSERT INTO `t_user_operate_log` VALUES (142, 1, '管理员', '管理端-部门', '查询部门及员工列表', '/department/listEmployee', 'io.webapp.module.system.department.DepartmentController.listDepartmentEmployee', '', 1, NULL, '2021-02-28 21:56:35', '2021-02-28 21:56:35');
INSERT INTO `t_user_operate_log` VALUES (143, 1, '管理员', '管理端-用户', '员工管理查询', '/employee/query', 'io.webapp.module.system.employee.EmployeeController.query', 'EmployeeQueryDTO[{\"isDelete\":0,\"isDisabled\":0,\"keyword\":\"\",\"pageNum\":1,\"pageSize\":20}]', 1, NULL, '2021-02-28 21:56:35', '2021-02-28 21:56:35');
INSERT INTO `t_user_operate_log` VALUES (144, 1, '管理员', '管理端-岗位', '分页查询所有岗位', '/position/getListPage', 'io.webapp.module.system.position.PositionController.getJobPage', 'PositionQueryDTO[{\"pageNum\":1,\"pageSize\":10,\"positionName\":\"\",\"searchCount\":true}]', 1, NULL, '2021-02-28 21:57:15', '2021-02-28 21:57:15');
INSERT INTO `t_user_operate_log` VALUES (145, 1, '管理员', '管理端-角色', '获取所有角色', '/role/getAll', 'io.webapp.module.system.role.basic.RoleController.getAllRole', '', 1, NULL, '2021-02-28 21:57:17', '2021-02-28 21:57:17');
INSERT INTO `t_user_operate_log` VALUES (146, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/0', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[0]', 1, NULL, '2021-02-28 21:57:17', '2021-02-28 21:57:17');
INSERT INTO `t_user_operate_log` VALUES (147, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/1', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[1]', 1, NULL, '2021-02-28 21:57:17', '2021-02-28 21:57:17');
INSERT INTO `t_user_operate_log` VALUES (148, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 21:57:31', '2021-02-28 21:57:31');
INSERT INTO `t_user_operate_log` VALUES (149, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 21:58:06', '2021-02-28 21:58:06');
INSERT INTO `t_user_operate_log` VALUES (150, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:12:07', '2021-02-28 22:12:07');
INSERT INTO `t_user_operate_log` VALUES (151, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:12:15', '2021-02-28 22:12:15');
INSERT INTO `t_user_operate_log` VALUES (152, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:12:23', '2021-02-28 22:12:23');
INSERT INTO `t_user_operate_log` VALUES (153, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:12:28', '2021-02-28 22:12:28');
INSERT INTO `t_user_operate_log` VALUES (154, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:16:22', '2021-02-28 22:16:22');
INSERT INTO `t_user_operate_log` VALUES (155, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 22:16:32', '2021-02-28 22:16:32');
INSERT INTO `t_user_operate_log` VALUES (156, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:17:30', '2021-02-28 22:17:30');
INSERT INTO `t_user_operate_log` VALUES (157, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:17:32', '2021-02-28 22:17:32');
INSERT INTO `t_user_operate_log` VALUES (158, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:17:34', '2021-02-28 22:17:34');
INSERT INTO `t_user_operate_log` VALUES (159, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:18:48', '2021-02-28 22:18:48');
INSERT INTO `t_user_operate_log` VALUES (160, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:19:20', '2021-02-28 22:19:20');
INSERT INTO `t_user_operate_log` VALUES (161, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:21:23', '2021-02-28 22:21:23');
INSERT INTO `t_user_operate_log` VALUES (162, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 22:22:05', '2021-02-28 22:22:05');
INSERT INTO `t_user_operate_log` VALUES (163, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/systemConfig/getListPage', 'io.webapp.module.system.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-28 22:22:16', '2021-02-28 22:22:16');
INSERT INTO `t_user_operate_log` VALUES (164, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:25:03', '2021-02-28 22:25:03');
INSERT INTO `t_user_operate_log` VALUES (165, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:26:21', '2021-02-28 22:26:21');
INSERT INTO `t_user_operate_log` VALUES (166, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:26:31', '2021-02-28 22:26:31');
INSERT INTO `t_user_operate_log` VALUES (167, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:26:49', '2021-02-28 22:26:49');
INSERT INTO `t_user_operate_log` VALUES (168, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:27:21', '2021-02-28 22:27:21');
INSERT INTO `t_user_operate_log` VALUES (169, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:27:27', '2021-02-28 22:27:27');
INSERT INTO `t_user_operate_log` VALUES (170, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:27:34', '2021-02-28 22:27:34');
INSERT INTO `t_user_operate_log` VALUES (171, 1, '管理员', '管理端-用户登录', '退出登陆', '/session/logOut', 'io.webapp.module.business.login.LoginController.logOut', '', 1, NULL, '2021-02-28 22:27:58', '2021-02-28 22:27:58');
INSERT INTO `t_user_operate_log` VALUES (172, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:28:11', '2021-02-28 22:28:11');
INSERT INTO `t_user_operate_log` VALUES (173, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:29:19', '2021-02-28 22:29:19');
INSERT INTO `t_user_operate_log` VALUES (174, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:33:13', '2021-02-28 22:33:13');
INSERT INTO `t_user_operate_log` VALUES (175, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 22:33:44', '2021-02-28 22:33:44');
INSERT INTO `t_user_operate_log` VALUES (176, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 23:19:48', '2021-02-28 23:19:48');
INSERT INTO `t_user_operate_log` VALUES (177, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 23:20:22', '2021-02-28 23:20:22');
INSERT INTO `t_user_operate_log` VALUES (178, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 23:20:29', '2021-02-28 23:20:29');
INSERT INTO `t_user_operate_log` VALUES (179, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 23:20:58', '2021-02-28 23:20:58');
INSERT INTO `t_user_operate_log` VALUES (180, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/systemConfig/getListPage', 'io.webapp.module.system.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-28 23:22:22', '2021-02-28 23:22:22');
INSERT INTO `t_user_operate_log` VALUES (181, 1, '管理员', '通用-权限', '获取所有请求路径', '/privilege/getAllUrl', 'io.webapp.module.system.privilege.controller.PrivilegeController.getAllUrl', '', 1, NULL, '2021-02-28 23:22:30', '2021-02-28 23:22:30');
INSERT INTO `t_user_operate_log` VALUES (182, 1, '管理员', '通用-权限', '查询所有菜单项', '/privilege/menu/queryAll', 'io.webapp.module.system.privilege.controller.PrivilegeController.queryAll', '', 1, NULL, '2021-02-28 23:22:30', '2021-02-28 23:22:30');
INSERT INTO `t_user_operate_log` VALUES (183, 1, '管理员', '通用-权限', '菜单批量保存', '/privilege/menu/batchSaveMenu', 'io.webapp.module.system.privilege.controller.PrivilegeController.menuBatchSave', 'ValidateList[[{\"menuKey\":\"Business\",\"menuName\":\"业务功能\",\"sort\":0,\"type\":1,\"url\":\"/business\"},{\"menuKey\":\"Peony\",\"menuName\":\"牡丹管理\",\"parentKey\":\"Business\",\"sort\":1,\"type\":1,\"url\":\"/peony\"},{\"menuKey\":\"PeonyList\",\"menuName\":\"牡丹花列表\",\"parentKey\":\"Peony\",\"sort\":2,\"type\":1,\"url\":\"/peony/peony-list\"},{\"menuKey\":\"PeonyList1\",\"menuName\":\"牡丹花列表1\",\"parentKey\":\"Peony\",\"sort\":3,\"type\":1,\"url\":\"/peony/peony-list1\"},{\"menuKey\":\"Email\",\"menuName\":\"邮件管理\",\"parentKey\":\"Business\",\"sort\":4,\"type\":1,\"url\":\"/email\"},{\"menuKey\":\"EmailList\",\"menuName\":\"邮件管理\",\"parentKey\":\"Email\",\"sort\":5,\"type\":1,\"url\":\"/email/email-list\"},{\"menuKey\":\"SendMail\",\"menuName\":\"发送邮件\",\"parentKey\":\"Email\",\"sort\":6,\"type\":1,\"url\":\"/email/send-mail\"},{\"menuKey\":\"KeepAlive\",\"menuName\":\"KeepAlive\",\"parentKey\":\"Business\",\"sort\":7,\"type\":1,\"url\":\"/keep-alive\"},{\"menuKey\":\"KeepAliveContentList\",\"menuName\":\"KeepAlive列表\",\"parentKey\":\"KeepAlive\",\"sort\":8,\"type\":1,\"url\":\"/keep-alive/content-list\"},{\"menuKey\":\"KeepAliveAddContent\",\"menuName\":\"KeepAlive表单\",\"parentKey\":\"KeepAlive\",\"sort\":9,\"type\":1,\"url\":\"/keep-alive/add-content\"},{\"menuKey\":\"Notice\",\"menuName\":\"消息管理\",\"parentKey\":\"Business\",\"sort\":10,\"type\":1,\"url\":\"/notice\"},{\"menuKey\":\"NoticeList\",\"menuName\":\"通知管理\",\"parentKey\":\"Notice\",\"sort\":11,\"type\":1,\"url\":\"/notice/notice-list\"},{\"menuKey\":\"PersonNotice\",\"menuName\":\"个人消息\",\"parentKey\":\"Notice\",\"sort\":12,\"type\":1,\"url\":\"/notice/person-notice\"},{\"menuKey\":\"NoticeDetail\",\"menuName\":\"消息详情\",\"parentKey\":\"Notice\",\"sort\":13,\"type\":1,\"url\":\"/notice/notice-detail\"},{\"menuKey\":\"ThreeRouter\",\"menuName\":\"三级路由\",\"parentKey\":\"Business\",\"sort\":14,\"type\":1,\"url\":\"/three-router\"},{\"menuKey\":\"LevelTwo\",\"menuName\":\"三级菜单\",\"parentKey\":\"ThreeRouter\",\"sort\":15,\"type\":1,\"url\":\"/three-router/level-two\"},{\"menuKey\":\"RoleOneTwo\",\"menuName\":\"三级A\",\"parentKey\":\"LevelTwo\",\"sort\":16,\"type\":1,\"url\":\"/three-router/level-two/level-three1\"},{\"menuKey\":\"RoleTwoTwo\",\"menuName\":\"三级B\",\"parentKey\":\"LevelTwo\",\"sort\":17,\"type\":1,\"url\":\"/three-router/level-two/level-three2\"},{\"menuKey\":\"RoleOneOne\",\"menuName\":\"二级菜单\",\"parentKey\":\"ThreeRouter\",\"sort\":18,\"type\":1,\"url\":\"/three-router/level-two2\"},{\"menuKey\":\"System\",\"menuName\":\"系统设置\",\"sort\":19,\"type\":1,\"url\":\"/system\"},{\"menuKey\":\"Employee\",\"menuName\":\"人员管理\",\"parentKey\":\"System\",\"sort\":20,\"type\":1,\"url\":\"/employee\"},{\"menuKey\":\"RoleManage\",\"menuName\":\"角色管理\",\"parentKey\":\"Employee\",\"sort\":21,\"type\":1,\"url\":\"/employee/role\"},{\"menuKey\":\"PositionList\",\"menuName\":\"岗位管理\",\"parentKey\":\"Employee\",\"sort\":22,\"type\":1,\"url\":\"/employee/position\"},{\"menuKey\":\"RoleEmployeeManage\",\"menuName\":\"员工管理\",\"parentKey\":\"Employee\",\"sort\":23,\"type\":1,\"url\":\"/employee/role-employee-manage\"},{\"menuKey\":\"File\",\"menuName\":\"文件服务\",\"parentKey\":\"System\",\"sort\":24,\"type\":1,\"url\":\"/file\"},{\"menuKey\":\"FileList\",\"menuName\":\"文件列表\",\"parentKey\":\"File\",\"sort\":25,\"type\":1,\"url\":\"/file/file-list\"},{\"menuKey\":\"UserLog\",\"menuName\":\"用户日志\",\"parentKey\":\"System\",\"sort\":26,\"type\":1,\"url\":\"/user-log\"},{\"menuKey\":\"UserOperateLog\",\"menuName\":\"用户操作日志\",\"parentKey\":\"UserLog\",\"sort\":27,\"type\":1,\"url\":\"/user-log/user-operate-log\"},{\"menuKey\":\"UserLoginLog\",\"menuName\":\"用户登录日志\",\"parentKey\":\"UserLog\",\"sort\":28,\"type\":1,\"url\":\"/user-log/user-login-log\"},{\"menuKey\":\"SystemSetting\",\"menuName\":\"系统设置\",\"parentKey\":\"System\",\"sort\":29,\"type\":1,\"url\":\"/system-setting\"},{\"menuKey\":\"SystemConfig\",\"menuName\":\"系统参数\",\"parentKey\":\"SystemSetting\",\"sort\":30,\"type\":1,\"url\":\"/system-setting/system-config\"},{\"menuKey\":\"SystemPrivilege\",\"menuName\":\"菜单权限\",\"parentKey\":\"SystemSetting\",\"sort\":31,\"type\":1,\"url\":\"/system-setting/system-privilege\"},{\"menuKey\":\"Support\",\"menuName\":\"开发专用\",\"sort\":32,\"type\":1,\"url\":\"/support\"},{\"menuKey\":\"ApiDoc\",\"menuName\":\"接口文档\",\"parentKey\":\"Support\",\"sort\":33,\"type\":1,\"url\":\"/api-doc\"},{\"menuKey\":\"Swagger\",\"menuName\":\"Swagger接口文档\",\"parentKey\":\"ApiDoc\",\"sort\":34,\"type\":1,\"url\":\"/api-doc/swagger\"},{\"menuKey\":\"HeartBeat\",\"menuName\":\"心跳服务\",\"parentKey\":\"Support\",\"sort\":35,\"type\":1,\"url\":\"/heart-beat\"},{\"menuKey\":\"HeartBeatList\",\"menuName\":\"心跳服务\",\"parentKey\":\"HeartBeat\",\"sort\":36,\"type\":1,\"url\":\"/heart-beat/heart-beat-list\"},{\"menuKey\":\"Monitor\",\"menuName\":\"系统监控\",\"parentKey\":\"Support\",\"sort\":37,\"type\":1,\"url\":\"/monitor\"},{\"menuKey\":\"OnlineUser\",\"menuName\":\"在线人数\",\"parentKey\":\"Monitor\",\"sort\":38,\"type\":1,\"url\":\"/monitor/online-user\"},{\"menuKey\":\"Sql\",\"menuName\":\"SQL监控\",\"parentKey\":\"Monitor\",\"sort\":39,\"type\":1,\"url\":\"/monitor/sql\"},{\"menuKey\":\"Reload\",\"menuName\":\"动态加载\",\"parentKey\":\"Support\",\"sort\":40,\"type\":1,\"url\":\"/reload\"},{\"menuKey\":\"SmartReloadList\",\"menuName\":\"SmartReload\",\"parentKey\":\"Reload\",\"sort\":41,\"type\":1,\"url\":\"/reload/smart-reload-list\"},{\"menuKey\":\"Task\",\"menuName\":\"定时任务\",\"parentKey\":\"Support\",\"sort\":42,\"type\":1,\"url\":\"/task\"},{\"menuKey\":\"TaskList\",\"menuName\":\"任务管理\",\"parentKey\":\"Task\",\"sort\":43,\"type\":1,\"url\":\"/system-setting/task-list\"}]]', 1, NULL, '2021-02-28 23:22:38', '2021-02-28 23:22:38');
INSERT INTO `t_user_operate_log` VALUES (184, 1, '管理员', '通用-权限', '查询所有菜单项', '/privilege/menu/queryAll', 'io.webapp.module.system.privilege.controller.PrivilegeController.queryAll', '', 1, NULL, '2021-02-28 23:22:38', '2021-02-28 23:22:38');
INSERT INTO `t_user_operate_log` VALUES (185, 1, '管理员', '管理端-系统配置', '修改配置参数', '/systemConfig/update', 'io.webapp.module.system.systemconfig.SystemConfigController.updateSystemConfig', 'SystemConfigUpdateDTO[{\"configGroup\":\"employee\",\"configKey\":\"employee_superman\",\"configName\":\"超级管理员\",\"configValue\":\"12,13,1\",\"id\":1,\"remark\":\"\"}]', 1, NULL, '2021-02-28 23:24:27', '2021-02-28 23:24:27');
INSERT INTO `t_user_operate_log` VALUES (186, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/systemConfig/getListPage', 'io.webapp.module.system.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-28 23:24:27', '2021-02-28 23:24:27');
INSERT INTO `t_user_operate_log` VALUES (187, 1, '管理员', '管理端-系统配置', '修改配置参数', '/systemConfig/update', 'io.webapp.module.system.systemconfig.SystemConfigController.updateSystemConfig', 'SystemConfigUpdateDTO[{\"configGroup\":\"23423\",\"configKey\":\"42342\",\"configName\":\"4234\",\"configValue\":\"423423\",\"id\":18,\"remark\":\"123\"}]', 1, NULL, '2021-02-28 23:24:44', '2021-02-28 23:24:44');
INSERT INTO `t_user_operate_log` VALUES (188, 1, '管理员', '管理端-系统配置', '分页查询所有系统配置', '/systemConfig/getListPage', 'io.webapp.module.system.systemconfig.SystemConfigController.getSystemConfigPage', 'SystemConfigQueryDTO[{\"key\":\"\",\"pageNum\":1,\"pageSize\":10}]', 1, NULL, '2021-02-28 23:24:44', '2021-02-28 23:24:44');
INSERT INTO `t_user_operate_log` VALUES (189, 1, '管理员', '管理端-用户操作日志', '分页查询', '/userOperateLog/page/query', 'io.webapp.module.business.log.useroperatelog.UserOperateLogController.queryByPage', 'UserOperateLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-28 23:24:48', '2021-02-28 23:24:48');
INSERT INTO `t_user_operate_log` VALUES (190, 1, '管理员', '管理端-用户登录日志', '分页查询用户登录日志', '/userLoginLog/page/query', 'io.webapp.module.business.log.userloginlog.UserLoginLogController.queryByPage', 'UserLoginLogQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\",\"userName\":\"\"}]', 1, NULL, '2021-02-28 23:24:51', '2021-02-28 23:24:51');
INSERT INTO `t_user_operate_log` VALUES (191, 1, '管理员', '管理端-角色', '获取所有角色', '/role/getAll', 'io.webapp.module.system.role.basic.RoleController.getAllRole', '', 1, NULL, '2021-02-28 23:24:55', '2021-02-28 23:24:55');
INSERT INTO `t_user_operate_log` VALUES (192, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/0', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[0]', 1, NULL, '2021-02-28 23:24:55', '2021-02-28 23:24:55');
INSERT INTO `t_user_operate_log` VALUES (193, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/1', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[1]', 1, NULL, '2021-02-28 23:24:55', '2021-02-28 23:24:55');
INSERT INTO `t_user_operate_log` VALUES (194, 1, '管理员', '管理端-角色权限', '更新角色权限', '/privilege/updateRolePrivilege', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.updateRolePrivilege', 'RolePrivilegeDTO[{\"privilegeKeyList\":[\"Employee\",\"RoleManage\",\"PositionList\",\"RoleEmployeeManage\",\"SystemSetting\",\"SystemConfig\",\"SystemPrivilege\",\"Notice\",\"NoticeList\",\"PersonNotice\",\"Email\",\"EmailList\",\"SendMail\",\"UserLog\",\"UserOperateLog\",\"UserLoginLog\",\"Monitor\",\"OnlineUser\",\"Sql\",\"Task\",\"TaskList\",\"Reload\",\"SmartReloadList\",\"ApiDoc\",\"Swagger\",\"ThreeRouter\",\"LevelTwo\",\"RoleOneTwo\",\"RoleTwoTwo\",\"RoleOneOne\",\"KeepAlive\",\"KeepAliveContentList\",\"KeepAliveAddContent\",\"HeartBeat\",\"HeartBeatList\",\"File\",\"FileList\",\"add-role\",\"delete-role\",\"update-role\",\"update-role-privilege\",\"add-employee-role\",\"search-employee-list\",\"delete-employee-role\",\"delete-employee-role-batch\",\"query-data-scope\",\"update-data-scope\",\"search-position\",\"add-position\",\"update-position\",\"delete-position\",\"add-department\",\"update-department\",\"delete-department\",\"search-department\",\"add-employee\",\"update-employee\",\"disabled-employee\",\"disabled-employee-batch\",\"update-employee-role\",\"reset-employee-password\",\"delete-employee\",\"system-params-search\",\"system-params-add\",\"system-config-update\",\"system-config-search\",\"privilege-main-update\",\"privilege-main-search\",\"notice-query\",\"notice-add\",\"notice-edit\",\"notice-delete\",\"notice-detail\",\"notice-send\",\"person-notice-query\",\"person-notice-detail\",\"email-query\",\"email-add\",\"email-update\",\"email-delete\",\"email-send\",\"user-operate-log-search\",\"user-operate-log-detail\",\"user-operate-log-delete\",\"user-login-log-search\",\"user-login-log-delete\",\"online-user-search\",\"task-search\",\"task-refresh\",\"task-add\",\"task-update\",\"task-pause\",\"task-resume\",\"task-run\",\"task-query-log\",\"task-delete\",\"smart-reload-search\",\"smart-reload-update\",\"smart-reload-result\",\"heart-beat-query\",\"file-filePage-query\",\"file-filePage-upload\",\"Peony\",\"PeonyList\",\"PeonyList1\",\"Business\",\"System\",\"file-filePage-download\",\"Support\"],\"roleId\":1}]', 1, NULL, '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_user_operate_log` VALUES (195, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/1', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[1]', 1, NULL, '2021-02-28 23:25:12', '2021-02-28 23:25:12');
INSERT INTO `t_user_operate_log` VALUES (196, 1, '管理员', '管理端-数据范围', '获取当前系统所配置的所有数据范围', '/dataScope/list', 'io.webapp.module.system.datascope.DataScopeController.dataScopeList', '', 1, NULL, '2021-02-28 23:25:14', '2021-02-28 23:25:14');
INSERT INTO `t_user_operate_log` VALUES (197, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/1', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[1]', 1, NULL, '2021-02-28 23:25:18', '2021-02-28 23:25:18');
INSERT INTO `t_user_operate_log` VALUES (198, 1, '管理员', '管理端-数据范围', '获取当前系统所配置的所有数据范围', '/dataScope/list', 'io.webapp.module.system.datascope.DataScopeController.dataScopeList', '', 1, NULL, '2021-02-28 23:25:22', '2021-02-28 23:25:22');
INSERT INTO `t_user_operate_log` VALUES (199, 1, '管理员', '管理端-部门', '查询部门及员工列表', '/department/listEmployee', 'io.webapp.module.system.department.DepartmentController.listDepartmentEmployee', '', 1, NULL, '2021-02-28 23:25:24', '2021-02-28 23:25:24');
INSERT INTO `t_user_operate_log` VALUES (200, 1, '管理员', '管理端-角色用户', '获取角色成员-员工列表', '/role/listEmployee', 'io.webapp.module.system.role.roleemployee.RoleEmployeeController.listEmployeeByName', 'RoleQueryDTO[{\"pageNum\":1,\"pageSize\":10,\"roleId\":\"1\"}]', 1, NULL, '2021-02-28 23:25:24', '2021-02-28 23:25:24');
INSERT INTO `t_user_operate_log` VALUES (201, 1, '管理员', '管理端-数据范围', '获取当前系统所配置的所有数据范围', '/dataScope/list', 'io.webapp.module.system.datascope.DataScopeController.dataScopeList', '', 1, NULL, '2021-02-28 23:25:26', '2021-02-28 23:25:26');
INSERT INTO `t_user_operate_log` VALUES (202, 1, '管理员', '管理端-部门', '查询部门及员工列表', '/department/listEmployee', 'io.webapp.module.system.department.DepartmentController.listDepartmentEmployee', '', 1, NULL, '2021-02-28 23:25:27', '2021-02-28 23:25:27');
INSERT INTO `t_user_operate_log` VALUES (203, 1, '管理员', '管理端-角色用户', '获取角色成员-员工列表', '/role/listEmployee', 'io.webapp.module.system.role.roleemployee.RoleEmployeeController.listEmployeeByName', 'RoleQueryDTO[{\"pageNum\":1,\"pageSize\":10,\"roleId\":\"1\"}]', 1, NULL, '2021-02-28 23:25:27', '2021-02-28 23:25:27');
INSERT INTO `t_user_operate_log` VALUES (204, 1, '管理员', '管理端-数据范围', '获取当前系统所配置的所有数据范围', '/dataScope/list', 'io.webapp.module.system.datascope.DataScopeController.dataScopeList', '', 1, NULL, '2021-02-28 23:25:30', '2021-02-28 23:25:30');
INSERT INTO `t_user_operate_log` VALUES (205, 1, '管理员', '管理端-部门', '查询部门及员工列表', '/department/listEmployee', 'io.webapp.module.system.department.DepartmentController.listDepartmentEmployee', '', 1, NULL, '2021-02-28 23:25:31', '2021-02-28 23:25:31');
INSERT INTO `t_user_operate_log` VALUES (206, 1, '管理员', '管理端-角色用户', '获取角色成员-员工列表', '/role/listEmployee', 'io.webapp.module.system.role.roleemployee.RoleEmployeeController.listEmployeeByName', 'RoleQueryDTO[{\"pageNum\":1,\"pageSize\":10,\"roleId\":\"1\"}]', 1, NULL, '2021-02-28 23:25:31', '2021-02-28 23:25:31');
INSERT INTO `t_user_operate_log` VALUES (207, 1, '管理员', '管理端-数据范围', '获取当前系统所配置的所有数据范围', '/dataScope/list', 'io.webapp.module.system.datascope.DataScopeController.dataScopeList', '', 1, NULL, '2021-02-28 23:25:32', '2021-02-28 23:25:32');
INSERT INTO `t_user_operate_log` VALUES (208, 1, '管理员', '管理端-数据范围', '获取当前系统所配置的所有数据范围', '/dataScope/list', 'io.webapp.module.system.datascope.DataScopeController.dataScopeList', '', 1, NULL, '2021-02-28 23:26:09', '2021-02-28 23:26:09');
INSERT INTO `t_user_operate_log` VALUES (209, 1, '管理员', '管理端-数据范围', '批量设置某角色数据范围', '/dataScope/batchSet', 'io.webapp.module.system.datascope.DataScopeController.dataScopeBatchSet', 'DataScopeBatchSetRoleDTO[{\"batchSetList\":[{\"dataScopeType\":0,\"viewType\":1}],\"roleId\":1}]', 1, NULL, '2021-02-28 23:26:12', '2021-02-28 23:26:12');
INSERT INTO `t_user_operate_log` VALUES (210, 1, '管理员', '管理端-数据范围', '获取当前系统所配置的所有数据范围', '/dataScope/list', 'io.webapp.module.system.datascope.DataScopeController.dataScopeList', '', 1, NULL, '2021-02-28 23:26:12', '2021-02-28 23:26:12');
INSERT INTO `t_user_operate_log` VALUES (211, 1, '管理员', '管理端-部门', '查询部门及员工列表', '/department/listEmployee', 'io.webapp.module.system.department.DepartmentController.listDepartmentEmployee', '', 1, NULL, '2021-02-28 23:26:14', '2021-02-28 23:26:14');
INSERT INTO `t_user_operate_log` VALUES (212, 1, '管理员', '管理端-角色用户', '获取角色成员-员工列表', '/role/listEmployee', 'io.webapp.module.system.role.roleemployee.RoleEmployeeController.listEmployeeByName', 'RoleQueryDTO[{\"pageNum\":1,\"pageSize\":10,\"roleId\":\"1\"}]', 1, NULL, '2021-02-28 23:26:14', '2021-02-28 23:26:14');
INSERT INTO `t_user_operate_log` VALUES (213, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/1', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[1]', 1, NULL, '2021-02-28 23:26:16', '2021-02-28 23:26:16');
INSERT INTO `t_user_operate_log` VALUES (214, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 23:26:18', '2021-02-28 23:26:18');
INSERT INTO `t_user_operate_log` VALUES (215, 1, '管理员', '管理端-角色', '获取所有角色', '/role/getAll', 'io.webapp.module.system.role.basic.RoleController.getAllRole', '', 1, NULL, '2021-02-28 23:26:18', '2021-02-28 23:26:18');
INSERT INTO `t_user_operate_log` VALUES (216, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/0', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[0]', 1, NULL, '2021-02-28 23:26:18', '2021-02-28 23:26:18');
INSERT INTO `t_user_operate_log` VALUES (217, 1, '管理员', '管理端-角色权限', '获取角色可选的功能权限', '/privilege/listPrivilegeByRoleId/1', 'io.webapp.module.system.role.roleprivilege.RolePrivilegeController.listPrivilegeByRoleId', 'Long[1]', 1, NULL, '2021-02-28 23:26:18', '2021-02-28 23:26:18');
INSERT INTO `t_user_operate_log` VALUES (218, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 23:26:40', '2021-02-28 23:26:40');
INSERT INTO `t_user_operate_log` VALUES (219, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 23:29:34', '2021-02-28 23:29:34');
INSERT INTO `t_user_operate_log` VALUES (220, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 23:29:46', '2021-02-28 23:29:46');
INSERT INTO `t_user_operate_log` VALUES (221, 1, '管理员', '管理端-用户', '修改密码', '/employee/updatePwd', 'io.webapp.module.system.employee.EmployeeController.updatePwd', 'EmployeeUpdatePwdDTO[{\"oldPwd\":\"123456\",\"pwd\":\"s6321\"}]', 1, NULL, '2021-02-28 23:43:18', '2021-02-28 23:43:18');
INSERT INTO `t_user_operate_log` VALUES (222, 1, '管理员', '管理端-用户登录', '退出登陆', '/session/logOut', 'io.webapp.module.business.login.LoginController.logOut', '', 1, NULL, '2021-02-28 23:43:19', '2021-02-28 23:43:19');
INSERT INTO `t_user_operate_log` VALUES (223, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 23:44:33', '2021-02-28 23:44:33');
INSERT INTO `t_user_operate_log` VALUES (224, 1, '管理员', '通用-邮件发送', '删除', '/email/delete/20', 'io.webapp.module.business.email.EmailController.delete', 'Long[20]', 1, NULL, '2021-02-28 23:44:37', '2021-02-28 23:44:37');
INSERT INTO `t_user_operate_log` VALUES (225, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 23:44:37', '2021-02-28 23:44:37');
INSERT INTO `t_user_operate_log` VALUES (226, 1, '管理员', '通用-邮件发送', '删除', '/email/delete/39', 'io.webapp.module.business.email.EmailController.delete', 'Long[39]', 1, NULL, '2021-02-28 23:44:40', '2021-02-28 23:44:40');
INSERT INTO `t_user_operate_log` VALUES (227, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 23:44:40', '2021-02-28 23:44:40');
INSERT INTO `t_user_operate_log` VALUES (228, 1, '管理员', '管理端-用户登录', '获取session', '/session/get', 'io.webapp.module.business.login.LoginController.getSession', '', 1, NULL, '2021-02-28 23:46:21', '2021-02-28 23:46:21');
INSERT INTO `t_user_operate_log` VALUES (229, 1, '管理员', '通用-邮件发送', '分页查询', '/email/page/query', 'io.webapp.module.business.email.EmailController.queryByPage', 'EmailQueryDTO[{\"endDate\":\"\",\"pageNum\":1,\"pageSize\":10,\"searchCount\":true,\"startDate\":\"\"}]', 1, NULL, '2021-02-28 23:46:21', '2021-02-28 23:46:21');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
