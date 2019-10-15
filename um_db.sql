/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50561
 Source Host           : localhost:3306
 Source Schema         : um_db

 Target Server Type    : MySQL
 Target Server Version : 50561
 File Encoding         : 65001

 Date: 15/10/2019 20:44:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (13);
INSERT INTO `hibernate_sequence` VALUES (13);
INSERT INTO `hibernate_sequence` VALUES (13);

-- ----------------------------
-- Table structure for um__user_role
-- ----------------------------
DROP TABLE IF EXISTS `um__user_role`;
CREATE TABLE `um__user_role`  (
  `role_id` bigint(20) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`, `user_id`) USING BTREE,
  INDEX `FK2ibs4r4h4c9efy8sv7rbaexub`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of um__user_role
-- ----------------------------
INSERT INTO `um__user_role` VALUES (1, 'admin');
INSERT INTO `um__user_role` VALUES (2, 'zen');

-- ----------------------------
-- Table structure for um_dept
-- ----------------------------
DROP TABLE IF EXISTS `um_dept`;
CREATE TABLE `um_dept`  (
  `id` bigint(20) NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `modify_date` datetime NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_DEPT_CREATER`(`creater`) USING BTREE,
  INDEX `FK_DEPT_MODIFIER`(`modifier`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of um_dept
-- ----------------------------
INSERT INTO `um_dept` VALUES (1, '2019-10-14 09:33:24', '2019-10-14 09:33:24', '技术部', NULL, 'admin', 'admin');
INSERT INTO `um_dept` VALUES (2, '2019-10-14 09:33:24', '2019-10-14 09:33:24', '运营部', NULL, 'admin', 'admin');
INSERT INTO `um_dept` VALUES (3, '2019-10-14 09:33:24', '2019-10-14 09:33:24', '财务部', NULL, 'admin', 'admin');
INSERT INTO `um_dept` VALUES (4, '2019-10-14 09:33:24', '2019-10-14 09:33:24', '人事部', NULL, 'admin', 'admin');
INSERT INTO `um_dept` VALUES (5, '2019-10-14 09:33:24', '2019-10-14 09:33:24', '总公办', NULL, 'admin', 'admin');

-- ----------------------------
-- Table structure for um_job
-- ----------------------------
DROP TABLE IF EXISTS `um_job`;
CREATE TABLE `um_job`  (
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of um_job
-- ----------------------------
INSERT INTO `um_job` VALUES ('0001', '底层工人', NULL);
INSERT INTO `um_job` VALUES ('0002', '软件工程师', NULL);
INSERT INTO `um_job` VALUES ('0003', '硬件工程师', NULL);
INSERT INTO `um_job` VALUES ('0004', '助理', NULL);
INSERT INTO `um_job` VALUES ('0005', '系统管理员', NULL);
INSERT INTO `um_job` VALUES ('0006', '架构师', NULL);
INSERT INTO `um_job` VALUES ('0007', '主管', NULL);
INSERT INTO `um_job` VALUES ('0008', '老板', NULL);
INSERT INTO `um_job` VALUES ('0009', '总裁', NULL);

-- ----------------------------
-- Table structure for um_module
-- ----------------------------
DROP TABLE IF EXISTS `um_module`;
CREATE TABLE `um_module`  (
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `modify_date` datetime NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  INDEX `FK_MODULE_CREATER`(`creater`) USING BTREE,
  INDEX `FK_MODULE_MODIFIER`(`modifier`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of um_module
-- ----------------------------
INSERT INTO `um_module` VALUES ('0001', '2019-10-14 09:33:24', '2019-10-14 09:33:24', '系统管理', '系统管理', '#', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('00010001', '2019-10-14 09:33:24', '2019-10-14 09:33:24', '用户管理', '用户', '/identity/user/selectUser', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100010001', '2019-10-14 09:33:24', '2019-10-14 09:33:24', '--------查询操作', '查询操作', '/identity/user/selectUser', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100010002', '2019-10-14 09:33:24', '2019-10-14 16:41:29', '--------增加操作', '', '/identity/user/addUser', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100010003', '2019-10-14 09:33:24', '2019-10-14 16:41:43', '--------修改操作', '', '/identity/user/updateUser', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100010004', '2019-10-14 09:33:24', '2019-10-14 09:10:06', '--------删除操作', '', '/identity/user/deleteUser', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100010005', '2019-10-14 09:33:24', '2019-10-14 09:09:16', '--------预览用户', '审核操作', '/identity/user/preUser', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100010006', '2019-10-14 16:06:58', '2019-10-14 09:09:48', '激活用户', '测试一下', '/identity/user/activeUser', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('00010002', '2019-10-14 16:39:47', '2019-10-14 09:08:00', '菜单管理', '', '/identity/module/mgrModule', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100020001', '2019-10-14 16:41:09', '2019-10-14 09:10:52', '管理菜单', '', '/identity/module/mgrModule', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100020002', '2019-10-14 09:12:41', NULL, '查询子模块', '查询子菜单', '/identity/module/getModulesByParent', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000100020003', '2019-10-14 09:14:53', NULL, '添加模块', '', '/identity/module/addModule', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000100020004', '2019-10-14 09:15:14', '2019-10-14 14:00:12', '删除模块', '', '/identity/module/deleteModule', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100020005', '2019-10-14 09:15:50', NULL, '修改模块', '', '/identity/module/updateModule', 'admin', NULL);
INSERT INTO `um_module` VALUES ('00010003', '2019-10-14 16:40:06', '2019-10-14 11:05:16', '角色管理', '', '/identity/role/selectRole', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100030001', '2019-10-14 09:17:42', '2019-10-14 09:21:06', '查询角色', '', '/identity/role/selectRole', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100030002', '2019-10-14 09:18:19', '2019-10-14 11:26:10', '添加角色', '', '/identity/role/addRole', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100030003', '2019-10-14 09:18:48', '2019-10-14 11:26:14', '删除角色', '', '/identity/role/deleteRole', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100030004', '2019-10-14 09:19:19', '2019-10-14 11:26:17', '修改角色', '', '/identity/role/updateRole', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100030005', '2019-10-14 09:19:49', NULL, '查询角色用户', '', '/identity/role/selectRoleUser', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000100030006', '2019-10-14 09:23:02', NULL, '绑定用户', '', '/identity/role/bindUser', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000100030007', '2019-10-14 09:23:18', NULL, '解绑用户', '', '/identity/role/unBindUser', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000100030008', '2019-10-14 09:24:17', '2019-10-14 09:24:48', '管理权限', '', '/identity/popedom/mgrPopedom', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100030009', '2019-10-14 09:24:36', '2019-10-14 15:37:52', '角色模块操作权限', '', '/identity/popedom/getOperasByParent', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000100030010', '2019-10-14 09:27:40', '2019-10-14 09:27:55', '绑定模块操作', '', '/identity/popedom/bindPopedom', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000200010001', '2019-10-14 09:30:36', '2019-10-14 11:19:49', '--------查询操作', '查询操作', '/admin/leave/selectLeaveType', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000200010002', '2019-10-14 09:30:36', '2019-10-14 09:30:36', '--------增加操作', '增加操作', '/admin/leave/addLeaveType', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000200010003', '2019-10-14 09:30:36', '2019-10-14 11:19:53', '--------修改操作', '修改操作', '/admin/leave/updateLeaveType', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000200010004', '2019-10-14 09:30:36', '2019-10-14 11:19:56', '--------删除操作', '删除操作', '/admin/leave/deleteLeaveType', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000200010005', '2019-10-14 09:30:36', '2019-10-14 09:30:36', '--------管理操作', '管理操作', '/admin/leave/mgrLeaveType', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000200020001', '2019-10-14 09:30:36', NULL, '--------管理操作', '管理操作', '/admin/leave/mgrLeaveItem', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000200020002', '2019-10-14 09:30:36', NULL, '--------查询操作', '查询操作', '/admin/leave/selectLeaveItem', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000200020006', '2019-10-14 09:30:36', NULL, '--------审核操作', '审核操作', '/admin/leave/checkLeaveItem', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000200030001', '2019-10-14 09:30:36', NULL, '--------查询操作', '查询操作', '/admin/leave/selectUserLeave', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000200030002', '2019-10-14 09:30:36', NULL, '--------增加操作', '增加操作', '/admin/leave/addUserLeave', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000200030003', '2019-10-14 09:30:36', NULL, '--------修改操作', '修改操作', '/admin/leave/updateUserLeave', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000200030004', '2019-10-14 09:30:36', NULL, '--------删除操作', '删除操作', '/admin/leave/deleteUserLeave', 'admin', NULL);
INSERT INTO `um_module` VALUES ('0002', '2019-10-14 13:45:51', '2019-10-14 11:25:53', '权限管理', '权限管理', '#', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('00020001', '2019-10-14 09:30:36', '2019-10-14 11:26:24', '权限类型', '权限类型管理', '/admin/leave/mgrLeaveType', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('00020002', '2019-10-14 09:30:36', '2019-10-14 11:26:35', '权限明细', '权限明细', '/admin/leave/mgrLeaveItem', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('00020004', '2019-10-14 09:30:36', '2019-10-14 11:27:20', '权限审批', '权限审批', '/admin/leave/selectAuditLeave', 'admin', 'admin');
INSERT INTO `um_module` VALUES ('000200040001', '2019-10-14 09:30:36', NULL, '--------查看审批操作', '查看审批操作', '/admin/leave/selectAuditLeave', 'admin', NULL);
INSERT INTO `um_module` VALUES ('000200040002', '2019-10-14 09:30:36', NULL, '--------审批请假操作', '审批请假操作', '/admin/leave/auditLeaveSheet', 'admin', NULL);
INSERT INTO `um_module` VALUES ('00020003', '2019-10-14 09:30:36', '2019-10-14 11:27:05', '用户权限', '用户权限', '/admin/leave/selectUserLeave', 'admin', 'admin');

-- ----------------------------
-- Table structure for um_popedom
-- ----------------------------
DROP TABLE IF EXISTS `um_popedom`;
CREATE TABLE `um_popedom`  (
  `id` bigint(20) NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opera_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_POPEDOM_CREATER`(`creater`) USING BTREE,
  INDEX `FK_POPEDOM_MODULE`(`module_code`) USING BTREE,
  INDEX `FK_POPEDOM_OPERA`(`opera_code`) USING BTREE,
  INDEX `FK_POPEDOM_ROLE`(`role_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of um_popedom
-- ----------------------------
INSERT INTO `um_popedom` VALUES (133, '2019-10-20 11:03:28', 'admin', '00010003', '000100030001', 1);
INSERT INTO `um_popedom` VALUES (134, '2019-10-20 11:03:28', 'admin', '00010003', '000100030002', 1);
INSERT INTO `um_popedom` VALUES (135, '2019-10-20 11:03:28', 'admin', '00010003', '000100030003', 1);
INSERT INTO `um_popedom` VALUES (136, '2019-10-20 11:03:28', 'admin', '00010003', '000100030004', 1);
INSERT INTO `um_popedom` VALUES (137, '2019-10-20 11:03:28', 'admin', '00010003', '000100030005', 1);
INSERT INTO `um_popedom` VALUES (138, '2019-10-20 11:03:28', 'admin', '00010003', '000100030006', 1);
INSERT INTO `um_popedom` VALUES (139, '2019-10-20 11:03:28', 'admin', '00010003', '000100030007', 1);
INSERT INTO `um_popedom` VALUES (140, '2019-10-20 11:03:28', 'admin', '00010003', '000100030008', 1);
INSERT INTO `um_popedom` VALUES (141, '2019-10-20 11:03:28', 'admin', '00010003', '000100030009', 1);
INSERT INTO `um_popedom` VALUES (142, '2019-10-20 11:03:28', 'admin', '00010003', '000100030010', 1);
INSERT INTO `um_popedom` VALUES (156, '2019-10-20 11:16:07', 'admin', '00010003', '000100030001', 2);
INSERT INTO `um_popedom` VALUES (157, '2019-10-20 11:16:07', 'admin', '00010003', '000100030002', 2);
INSERT INTO `um_popedom` VALUES (158, '2019-10-20 11:16:07', 'admin', '00010003', '000100030003', 2);
INSERT INTO `um_popedom` VALUES (159, '2019-10-20 11:16:07', 'admin', '00010003', '000100030004', 2);
INSERT INTO `um_popedom` VALUES (160, '2019-10-20 11:16:07', 'admin', '00010003', '000100030005', 2);
INSERT INTO `um_popedom` VALUES (161, '2019-10-20 11:16:07', 'admin', '00010003', '000100030006', 2);
INSERT INTO `um_popedom` VALUES (162, '2019-10-20 11:16:07', 'admin', '00010003', '000100030007', 2);
INSERT INTO `um_popedom` VALUES (163, '2019-10-20 11:16:07', 'admin', '00010003', '000100030008', 2);
INSERT INTO `um_popedom` VALUES (164, '2019-10-20 11:16:07', 'admin', '00010003', '000100030009', 2);
INSERT INTO `um_popedom` VALUES (165, '2019-10-20 11:16:07', 'admin', '00010003', '000100030010', 2);
INSERT INTO `um_popedom` VALUES (166, '2019-10-20 11:16:59', 'admin', '00010002', '000100020001', 1);
INSERT INTO `um_popedom` VALUES (167, '2019-10-20 11:16:59', 'admin', '00010002', '000100020002', 1);
INSERT INTO `um_popedom` VALUES (168, '2019-10-20 11:16:59', 'admin', '00010002', '000100020003', 1);
INSERT INTO `um_popedom` VALUES (169, '2019-10-20 11:16:59', 'admin', '00010002', '000100020004', 1);
INSERT INTO `um_popedom` VALUES (170, '2019-10-20 11:16:59', 'admin', '00010002', '000100020005', 1);
INSERT INTO `um_popedom` VALUES (171, '2019-10-20 11:23:23', 'admin', '00020003', '000200030001', 2);
INSERT INTO `um_popedom` VALUES (172, '2019-10-20 11:23:23', 'admin', '00020003', '000200030002', 2);
INSERT INTO `um_popedom` VALUES (173, '2019-10-20 11:23:23', 'admin', '00020003', '000200030003', 2);
INSERT INTO `um_popedom` VALUES (174, '2019-10-20 11:23:23', 'admin', '00020003', '000200030004', 2);
INSERT INTO `um_popedom` VALUES (175, '2019-10-20 11:47:10', 'admin', '00010001', '000100010001', 2);
INSERT INTO `um_popedom` VALUES (176, '2019-10-20 11:47:10', 'admin', '00010001', '000100010002', 2);
INSERT INTO `um_popedom` VALUES (177, '2019-10-20 11:47:10', 'admin', '00010001', '000100010003', 2);
INSERT INTO `um_popedom` VALUES (178, '2019-10-20 11:47:10', 'admin', '00010001', '000100010004', 2);
INSERT INTO `um_popedom` VALUES (179, '2019-10-20 11:47:10', 'admin', '00010001', '000100010005', 2);
INSERT INTO `um_popedom` VALUES (180, '2019-10-20 11:47:10', 'admin', '00010001', '000100010006', 2);
INSERT INTO `um_popedom` VALUES (181, '2019-10-20 11:47:13', 'admin', '00010002', '000100020001', 2);
INSERT INTO `um_popedom` VALUES (182, '2019-10-20 11:47:13', 'admin', '00010002', '000100020002', 2);
INSERT INTO `um_popedom` VALUES (183, '2019-10-20 11:47:13', 'admin', '00010002', '000100020003', 2);
INSERT INTO `um_popedom` VALUES (184, '2019-10-20 11:47:13', 'admin', '00010002', '000100020004', 2);
INSERT INTO `um_popedom` VALUES (185, '2019-10-20 11:47:13', 'admin', '00010002', '000100020005', 2);
INSERT INTO `um_popedom` VALUES (198, '2019-10-20 14:01:44', 'admin', '00020001', '000200010001', 1);
INSERT INTO `um_popedom` VALUES (199, '2019-10-20 14:01:44', 'admin', '00020001', '000200010002', 1);
INSERT INTO `um_popedom` VALUES (200, '2019-10-20 14:01:44', 'admin', '00020001', '000200010003', 1);
INSERT INTO `um_popedom` VALUES (201, '2019-10-20 14:01:44', 'admin', '00020001', '000200010004', 1);
INSERT INTO `um_popedom` VALUES (202, '2019-10-20 14:01:44', 'admin', '00020001', '000200010005', 1);
INSERT INTO `um_popedom` VALUES (203, '2019-10-20 14:01:54', 'admin', '00020002', '000200020001', 1);
INSERT INTO `um_popedom` VALUES (204, '2019-10-20 14:01:54', 'admin', '00020002', '000200020002', 1);
INSERT INTO `um_popedom` VALUES (205, '2019-10-20 14:01:54', 'admin', '00020002', '000200020006', 1);
INSERT INTO `um_popedom` VALUES (206, '2019-10-20 14:01:56', 'admin', '00020003', '000200030001', 1);
INSERT INTO `um_popedom` VALUES (207, '2019-10-20 14:01:56', 'admin', '00020003', '000200030002', 1);
INSERT INTO `um_popedom` VALUES (208, '2019-10-20 14:01:56', 'admin', '00020003', '000200030003', 1);
INSERT INTO `um_popedom` VALUES (209, '2019-10-20 14:01:56', 'admin', '00020003', '000200030004', 1);
INSERT INTO `um_popedom` VALUES (228, '2019-10-20 16:03:57', 'admin', '00010001', '000100010001', 3);
INSERT INTO `um_popedom` VALUES (229, '2019-10-20 16:03:57', 'admin', '00010001', '000100010002', 3);
INSERT INTO `um_popedom` VALUES (230, '2019-10-20 16:13:05', 'admin', '00020004', '000200040001', 1);
INSERT INTO `um_popedom` VALUES (231, '2019-10-20 16:13:05', 'admin', '00020004', '000200040002', 1);
INSERT INTO `um_popedom` VALUES (12, '2019-10-14 03:05:59', 'admin', '00010001', '000100010006', 1);
INSERT INTO `um_popedom` VALUES (11, '2019-10-14 03:05:59', 'admin', '00010001', '000100010005', 1);
INSERT INTO `um_popedom` VALUES (10, '2019-10-14 03:05:59', 'admin', '00010001', '000100010004', 1);
INSERT INTO `um_popedom` VALUES (9, '2019-10-14 03:05:59', 'admin', '00010001', '000100010003', 1);
INSERT INTO `um_popedom` VALUES (8, '2019-10-14 03:05:59', 'admin', '00010001', '000100010002', 1);
INSERT INTO `um_popedom` VALUES (7, '2019-10-14 03:05:59', 'admin', '00010001', '000100010001', 1);

-- ----------------------------
-- Table structure for um_role
-- ----------------------------
DROP TABLE IF EXISTS `um_role`;
CREATE TABLE `um_role`  (
  `id` bigint(20) NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `modify_date` datetime NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_ROLE_CREATER`(`creater`) USING BTREE,
  INDEX `FK_ROLE_MODIFIER`(`modifier`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of um_role
-- ----------------------------
INSERT INTO `um_role` VALUES (1, '2019-10-14 09:33:23', '2019-10-14 02:50:02', '超级管理员', '系统', 'admin', 'admin');
INSERT INTO `um_role` VALUES (2, '2019-10-14 09:33:24', '2019-10-20 11:19:09', '职员', '职员', 'admin', 'admin');
INSERT INTO `um_role` VALUES (3, '2019-10-20 11:18:39', '2019-10-20 11:19:23', '超级讲师', '超级讲师', 'admin', 'admin');
INSERT INTO `um_role` VALUES (4, '2019-10-20 11:18:50', '2019-10-20 11:19:26', '低级讲师', '低级讲师', 'admin', 'admin');

-- ----------------------------
-- Table structure for um_user
-- ----------------------------
DROP TABLE IF EXISTS `um_user`;
CREATE TABLE `um_user`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `check_date` datetime NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modify_date` datetime NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass_word` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq_num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question` smallint(6) NULL DEFAULT NULL,
  `sex` smallint(6) NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `checker` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_id` bigint(20) NULL DEFAULT NULL,
  `job_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `IDX_USER_NAME`(`name`) USING BTREE,
  INDEX `FK_USER_CHECKER`(`checker`) USING BTREE,
  INDEX `FK_USER_CREATER`(`creater`) USING BTREE,
  INDEX `FK_USER_DEPT`(`dept_id`) USING BTREE,
  INDEX `FK_USER_JOB`(`job_code`) USING BTREE,
  INDEX `FK_USER_MODIFIER`(`modifier`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of um_user
-- ----------------------------
INSERT INTO `um_user` VALUES ('admin', '110', '2019-10-20 16:47:31', '2019-01-14 09:33:23', 'zhang@163.com', '2019-10-15 11:50:05', '公子轻羽', '123456', '18888888520', '10000', 1, 1, 1, '020-8888888', 'admin', 'admin', 5, '0001', 'admin');
INSERT INTO `um_user` VALUES ('zen', '222222', '2019-10-20 16:45:00', '2019-01-20 09:33:35', '9999999@qq.com', '2019-10-14 17:05:37', '曾先生', '123456', '13999999999', '888882', 1, 2, 0, '020-8888888', 'admin', 'admin', 3, '0003', 'admin');
INSERT INTO `um_user` VALUES ('qinyu', '110', NULL, '2019-10-14 11:15:28', 'qinyu@qq.com', NULL, '公子轻羽', '123456', '13999999999', '88888', 1, 1, 0, '020-8888888', NULL, 'admin', 1, '0004', NULL);
INSERT INTO `um_user` VALUES ('liucl', '帅就完事了', NULL, '2019-10-14 15:31:36', '199999999@qq.com', '2019-10-15 11:50:25', '刘先生', '123456', '13555555555', '666668888', 1, 1, 0, '020-55555555', NULL, 'admin', 1, '0001', 'admin');
INSERT INTO `um_user` VALUES ('wuyunyi', '中国', NULL, '2019-10-14 15:34:30', '696696996@qq.com', '2019-10-15 11:50:49', '吴小姐', '123456', '15699998888', '88888888', 2, 2, 0, '020-8888888', NULL, 'admin', 1, '0008', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
