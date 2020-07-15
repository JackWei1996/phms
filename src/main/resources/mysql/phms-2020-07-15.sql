/*
 Navicat Premium Data Transfer

 Source Server         : 139.155.39.185
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 139.155.39.185:3306
 Source Schema         : phms

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 15/07/2020 15:46:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pet_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `doctor_id` bigint(20) DEFAULT NULL,
  `app_time` datetime(0) DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES (1, 1, 1, 1, '2020-04-23 20:33:08', '555', '2020-04-23 20:33:11', 4, NULL, NULL);
INSERT INTO `appointment` VALUES (2, 1, 1, 1, '2020-04-25 00:00:00', 'hhh', '2020-04-25 20:20:25', 4, '1776222', '555');
INSERT INTO `appointment` VALUES (3, 2, 1, 5, '2020-04-25 21:23:56', '6666', '2020-04-25 21:23:59', 4, '17788885555', '5555');
INSERT INTO `appointment` VALUES (4, 3, 6, 5, '2020-04-03 00:00:00', '555', '2020-04-25 22:51:43', 2, '17768583634', '8888');
INSERT INTO `appointment` VALUES (6, 3, 6, 9, '2020-04-25 00:00:00', '11', '2020-04-25 22:58:15', 4, '18899998888', '1111');
INSERT INTO `appointment` VALUES (7, 3, 6, 9, '2020-04-25 00:00:00', '111', '2020-04-25 23:03:26', 4, '11', '11');
INSERT INTO `appointment` VALUES (10, 6, 13, 5, '2020-04-28 00:00:00', '就医', '2020-04-26 08:17:33', 4, '18860887816', '江苏宜兴');
INSERT INTO `appointment` VALUES (11, 6, 13, 5, '2020-04-26 08:30:40', '宠物异常', '2020-04-26 08:30:43', 2, '18860887816', '江苏宜兴');
INSERT INTO `appointment` VALUES (12, 7, 13, 5, '2020-04-26 08:40:30', '就医', '2020-04-26 08:40:33', 2, '18860887816', '东北');
INSERT INTO `appointment` VALUES (13, 5, 11, 5, '2020-04-26 08:50:38', '发烧', '2020-04-26 08:50:40', 4, '18860777777', '天津');
INSERT INTO `appointment` VALUES (14, 8, 17, 5, '2020-04-26 14:05:52', '热热热', '2020-04-26 14:05:57', 4, '18860887816', '江苏宜兴');
INSERT INTO `appointment` VALUES (15, 9, 18, 5, '2020-04-26 16:46:36', '发烧', '2020-04-26 16:46:39', 2, '18860887711', '江苏');
INSERT INTO `appointment` VALUES (17, 11, 18, 26, '2020-04-26 17:20:55', '人人', '2020-04-26 17:20:58', 3, '18860887816', '人人');
INSERT INTO `appointment` VALUES (18, 12, 20, 21, '2020-04-26 17:34:04', 'qq', '2020-04-26 17:34:06', 4, '18860887816', '江苏宜兴');
INSERT INTO `appointment` VALUES (19, 12, 20, 26, '2020-04-26 17:34:04', 'qq', '2020-04-26 17:34:07', 3, '18860887816', '江苏宜兴');
INSERT INTO `appointment` VALUES (20, 14, 23, 21, '2020-04-26 19:12:33', '发烧', '2020-04-26 19:12:36', 4, '18860887711', '江苏');
INSERT INTO `appointment` VALUES (21, 16, 24, 21, '2020-04-26 19:42:43', '发烧', '2020-04-26 19:42:46', 4, '18860887711', '江苏');
INSERT INTO `appointment` VALUES (22, 17, 24, 26, '2020-04-26 21:35:13', '66666', '2020-04-26 21:35:16', 3, '18899998888', '555');
INSERT INTO `appointment` VALUES (23, 19, 25, 26, '2020-04-29 11:17:27', '感冒', '2020-04-29 11:17:29', 4, '18860887711', '江苏');
INSERT INTO `appointment` VALUES (24, 20, 1, 26, '2020-04-29 20:39:14', '生病', '2020-04-29 20:39:17', 3, '18888889998', '南京');
INSERT INTO `appointment` VALUES (25, 20, 1, 1, '2020-04-23 20:22:34', 'dd', '2020-05-01 13:34:48', 4, '1889999999', 'dd');
INSERT INTO `appointment` VALUES (26, 21, 1, 1, '2020-05-01 00:00:00', 'ddd', '2020-05-01 13:35:19', 4, '18899998888', '8888');
INSERT INTO `appointment` VALUES (27, 24, 25, 26, '2020-05-10 22:12:35', '1', '2020-05-10 22:12:38', 4, '18860882222', '江苏');
INSERT INTO `appointment` VALUES (28, 24, 25, 26, '2020-05-15 14:30:00', '发烧', '2020-05-15 20:57:16', 4, '18860883333', '江苏');
INSERT INTO `appointment` VALUES (29, 27, 25, 26, '2020-05-21 16:41:39', '发烧', '2020-05-21 16:41:42', 4, '18860884444', '江苏');
INSERT INTO `appointment` VALUES (30, 27, 25, 26, '2020-05-21 17:07:01', '感冒', '2020-05-21 17:07:04', 4, '18860882222', '江苏');
INSERT INTO `appointment` VALUES (31, 28, 25, 26, '2020-05-21 19:11:30', '感冒', '2020-05-21 19:11:32', 4, '18860881111', '江苏');
INSERT INTO `appointment` VALUES (32, 28, 25, NULL, '2020-04-26 00:00:00', '发烧', '2020-05-26 13:56:06', 1, '18860882222', '江苏');
INSERT INTO `appointment` VALUES (33, 28, 25, 26, '2020-05-03 00:00:00', '1', '2020-05-28 10:23:55', 3, '18860882222', '1');
INSERT INTO `appointment` VALUES (34, 28, 25, 26, '2020-05-03 00:00:00', '1', '2020-05-28 10:24:36', 3, '18860882222', '江苏');
INSERT INTO `appointment` VALUES (35, 28, 25, NULL, '2020-04-26 00:00:00', '1', '2020-05-28 10:29:33', 1, '18860882222', '江苏');
INSERT INTO `appointment` VALUES (36, 28, 25, 26, '2020-05-29 23:05:43', '感冒', '2020-05-29 23:05:45', 2, '18860882222', '江苏');
INSERT INTO `appointment` VALUES (37, 30, 25, 26, '2020-05-30 10:33:29', '感冒', '2020-05-30 10:33:33', 4, '18860882222', '江苏');
INSERT INTO `appointment` VALUES (38, 31, 38, NULL, '2020-07-02 00:00:00', '111', '2020-07-02 19:13:10', 1, '123', '111');

-- ----------------------------
-- Table structure for diagnosis
-- ----------------------------
DROP TABLE IF EXISTS `diagnosis`;
CREATE TABLE `diagnosis`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pet_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `doctor_id` bigint(20) DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(5) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diagnosis
-- ----------------------------
INSERT INTO `diagnosis` VALUES (15, 19, 25, 26, '注射疫苗', 2, 1, '2020-04-29 11:27:19');
INSERT INTO `diagnosis` VALUES (17, 20, 1, 1, 'ddd', 1, 1, '2020-05-01 13:37:02');
INSERT INTO `diagnosis` VALUES (18, 27, 25, 26, '就诊', 3, 1, '2020-05-21 17:07:43');
INSERT INTO `diagnosis` VALUES (19, 28, 25, 26, '感冒', 2, 1, '2020-05-21 19:12:05');
INSERT INTO `diagnosis` VALUES (20, 30, 25, 26, '治疗', 1, 1, '2020-05-30 10:35:01');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `view_count` bigint(20) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (2, '<p>狗狗大些才能打狂犬疫苗，每年打一次。而且必须在狗狗熟悉了新环境，身体健康的情况下才能打，疫苗期间不能洗澡。狗狗还要定期驱虫，吃驱虫药就行。驱虫和疫苗不要同时进行，间隔一两个礼拜比较好。驱虫幼犬隔3个月一次，成年犬隔半年一次。</p>\n\n<p>如果确定要给狗狗打疫苗，那每年注射是必要的，而且一般来说次年的疫苗应该比上一年的注射时间提早半个月到一个月，避免在疫苗快要失效的时候发生意外。</p>', 3, '2020-04-25 22:10:52', '宠物预防针多久打一次');
INSERT INTO `notice` VALUES (3, '<p>请填写文字内容</p>\n\n<p>如果你的小狗已经出现了一定情况的问题，那么请先从自己／现有环境的身上找原因&mdash;&mdash;毕竟养狗行为课程，其实最重要的不是小狗，而是小狗的主人。</p>\n\n<p>我们对待小狗的方式，就是我们对待小孩，或者说是童年的自己的方式。是选择恐吓训斥，让他们永远失去好奇心，对周围充满恐惧？还是选择给小孩以积极尊重，探索周边，予以互动？培养小狗的自信心和成就感，也是重要的课程内容。</p>\n\n<p>&nbsp;</p>', 5, '2020-04-26 11:35:09', '养犬最重要的是什么？');
INSERT INTO `notice` VALUES (4, '<p>宠物........</p>', 2, '2020-04-26 19:15:57', '养犬');
INSERT INTO `notice` VALUES (5, '<p>怎么养宠物....</p>', 1, '2020-04-26 19:46:22', '养犬重要的是什么？');
INSERT INTO `notice` VALUES (6, '<p>怎么养宠物....</p>', 12, '2020-04-26 19:46:28', '养犬重要的是什么？');
INSERT INTO `notice` VALUES (8, '<p>宠物</p>', 1, '2020-05-30 10:37:36', '宠物');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `page_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `parent_id` int(11) DEFAULT NULL COMMENT '父页面id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '页面名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '页面地址',
  `level_type` int(11) DEFAULT NULL COMMENT '页面层级',
  `level_index` int(11) DEFAULT NULL COMMENT '页面索引',
  `delete_flag` int(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '是否删除',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`page_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES (1, 0, '系统设置', NULL, 0, 10, 0, 'manager');
INSERT INTO `page` VALUES (2, 1, '用户管理', '/admin/userPage', 1, 22, 0, 'manager');
INSERT INTO `page` VALUES (3, 1, '页面管理', '/admin/page', 1, 23, 0, 'manager');
INSERT INTO `page` VALUES (4, 1, '角色管理', '/admin/role', 1, 24, 0, 'manager');
INSERT INTO `page` VALUES (6, 0, '宠物管理', '', 0, 1, 0, 'left_menu_shop');
INSERT INTO `page` VALUES (7, 6, '宠物列表', '/user/pet/petList', 1, 1, 0, '');
INSERT INTO `page` VALUES (8, 6, '宠物健康史', '/user/diagnosis/diagnosisList', 1, 2, 0, '');
INSERT INTO `page` VALUES (9, 0, '预约管理', '', 0, 2, 0, 'left_menu_data');
INSERT INTO `page` VALUES (10, 9, '预约列表', '/user/apply/applyList', 1, 1, 0, '');
INSERT INTO `page` VALUES (12, 0, '日常健康', '', 0, 3, 0, 'user');
INSERT INTO `page` VALUES (13, 12, '健康指南', '/user/notice/list', 1, 1, 0, '');
INSERT INTO `page` VALUES (14, 12, '健康监测', '/health/assess', 1, 2, 0, '');
INSERT INTO `page` VALUES (19, 0, '宠物档案', '', 0, 4, 0, 'left_menu_house');
INSERT INTO `page` VALUES (20, 19, '预约统计', '/health/tjApply', 1, 1, 0, '');
INSERT INTO `page` VALUES (21, 0, '医院管理', '', 0, 5, 0, 'page');
INSERT INTO `page` VALUES (23, 21, '预约统计', '/health/tjApplyDoctor', 1, 2, 0, '');
INSERT INTO `page` VALUES (24, 21, '发布指南', '/user/notice/publish', 1, 3, 0, '');
INSERT INTO `page` VALUES (27, 19, '宠物日志', '/user/petDaily/petDailyList', 1, 2, 0, '');
INSERT INTO `page` VALUES (28, 19, '预约统计', '/health/tjApply', 1, 3, 0, NULL);
INSERT INTO `page` VALUES (30, 6, '宠物健康史', '/user/diagnosis/diagnosisListDoctor', 1, 3, 0, '');
INSERT INTO `page` VALUES (31, 9, '预约列表-', '/user/apply/applyListDoctor', 1, 3, 0, NULL);
INSERT INTO `page` VALUES (32, 21, '标准制定', '/user/standard/standardListDoctor', 1, 4, 0, NULL);
INSERT INTO `page` VALUES (33, 12, '健康标准', '/user/standard/standardList', 1, 3, 0, NULL);
INSERT INTO `page` VALUES (34, 19, '宠物日志-', '/user/petDaily/petDailyListDoctor', 1, 4, 0, NULL);
INSERT INTO `page` VALUES (35, 19, '日志图表', '/health/tjDaily', 1, 5, 0, NULL);
INSERT INTO `page` VALUES (36, 21, '宠物日志', '/health/tjDailyDoctor', 1, 5, 0, NULL);
INSERT INTO `page` VALUES (37, 9, '医生时间', '/health/freeTime', 1, 4, 0, NULL);
INSERT INTO `page` VALUES (38, 21, '指南列表', '/user/notice/listDoctor', 1, 6, 0, '');

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `weight` double(10, 2) DEFAULT NULL,
  `height` double(10, 2) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthday` datetime(0) DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES (3, 6, 'user宠物', 11.00, 12.00, '1', '2020-04-25 00:00:00', NULL, '2020-04-25 22:51:21');
INSERT INTO `pet` VALUES (4, 6, '小黄', 20.00, 30.00, '2', '2020-04-30 00:00:00', NULL, '2020-04-25 23:05:12');
INSERT INTO `pet` VALUES (5, 11, '小白', 20.00, 40.00, '2', '2020-04-30 00:00:00', NULL, '2020-04-26 06:58:26');
INSERT INTO `pet` VALUES (7, 13, '小路', 20.00, 30.00, '2', '2019-12-31 00:00:00', NULL, '2020-04-26 08:38:53');
INSERT INTO `pet` VALUES (8, 17, '小红', 20.00, 40.00, '2', '2019-05-26 13:56:18', NULL, '2020-04-26 13:56:32');
INSERT INTO `pet` VALUES (9, 18, '小黄', 20.00, 10.00, '2', '2020-03-18 00:00:00', NULL, '2020-04-26 16:46:11');
INSERT INTO `pet` VALUES (10, 18, '小紫', 20.00, 10.00, '1', '2020-02-04 00:00:00', NULL, '2020-04-26 17:16:27');
INSERT INTO `pet` VALUES (11, 18, '小紫', 20.00, 10.00, '1', '2020-02-04 00:00:00', NULL, '2020-04-26 17:16:28');
INSERT INTO `pet` VALUES (12, 20, '小红', 10.00, 20.00, '2', '2019-12-26 00:00:00', NULL, '2020-04-26 17:33:36');
INSERT INTO `pet` VALUES (14, 23, '小白', 30.00, 20.00, '1', '2020-01-29 00:00:00', NULL, '2020-04-26 19:11:53');
INSERT INTO `pet` VALUES (16, 24, '小白', 20.00, 10.00, '2', '2019-03-26 00:00:00', NULL, '2020-04-26 19:42:12');
INSERT INTO `pet` VALUES (17, 24, '小黑', 11.00, 12.00, '1', '2020-04-26 00:00:00', NULL, '2020-04-26 21:34:53');
INSERT INTO `pet` VALUES (18, 25, '小红', 40.00, 20.00, '1', '2019-03-29 11:14:36', NULL, '2020-04-29 11:14:47');
INSERT INTO `pet` VALUES (19, 25, '小黑', 50.00, 40.00, '2', '2018-05-29 00:00:00', NULL, '2020-04-29 11:15:52');
INSERT INTO `pet` VALUES (20, 1, 'admin宠物', 12.00, 21.00, '1', '2020-05-08 00:00:00', NULL, '2020-04-29 20:38:43');
INSERT INTO `pet` VALUES (21, 1, '222', 11.00, 11.00, '2', '2020-05-01 13:35:05', NULL, '2020-05-01 13:35:07');
INSERT INTO `pet` VALUES (30, 25, '小白', 30.00, 20.00, '2', '2018-04-30 00:00:00', NULL, '2020-05-30 10:33:06');
INSERT INTO `pet` VALUES (31, 38, '雷明', 50.00, 150.00, '2', NULL, NULL, '2020-07-02 19:11:35');

-- ----------------------------
-- Table structure for pet_daily
-- ----------------------------
DROP TABLE IF EXISTS `pet_daily`;
CREATE TABLE `pet_daily`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pet_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `temperature` double(10, 2) DEFAULT NULL,
  `weight` double(10, 2) DEFAULT NULL,
  `height` double(10, 2) DEFAULT NULL,
  `appetite` double(10, 2) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet_daily
-- ----------------------------
INSERT INTO `pet_daily` VALUES (2, 3, 11, 12.00, 40.00, 30.00, 11.00, 1, '2020-04-26 07:03:16');
INSERT INTO `pet_daily` VALUES (3, 4, 6, 12.00, 20.00, 15.00, 11.00, 1, '2020-04-26 07:10:35');
INSERT INTO `pet_daily` VALUES (4, 4, 6, 12.00, 10.00, 10.00, 11.00, 1, '2020-04-26 07:17:13');
INSERT INTO `pet_daily` VALUES (5, 4, 1, 12.00, 10.00, 10.00, 11.00, 1, '2020-04-26 07:36:22');
INSERT INTO `pet_daily` VALUES (6, 4, 13, 12.00, 6.00, 6.00, 11.00, 1, '2020-04-26 08:33:13');
INSERT INTO `pet_daily` VALUES (7, 5, 11, 20.00, 10.00, 30.00, 40.00, 2, '2020-04-26 13:51:51');
INSERT INTO `pet_daily` VALUES (8, 8, 17, 10.00, 40.00, 10.00, 10.00, 2, '2020-04-26 14:08:13');
INSERT INTO `pet_daily` VALUES (9, 9, 18, 10.00, 20.00, 10.00, 10.00, 2, '2020-04-26 16:48:51');
INSERT INTO `pet_daily` VALUES (10, 14, 23, 10.00, 10.00, 40.00, 10.00, 2, '2020-04-26 19:17:14');
INSERT INTO `pet_daily` VALUES (12, 16, 24, 10.00, 40.00, 20.00, 6.00, 3, '2020-04-26 19:48:07');
INSERT INTO `pet_daily` VALUES (13, 17, 24, 11.00, 12.00, 13.00, 15.00, 1, '2020-04-26 21:35:59');
INSERT INTO `pet_daily` VALUES (14, 21, 1, 11.00, 11.00, 11.00, 11.00, 1, '2020-05-01 13:37:46');
INSERT INTO `pet_daily` VALUES (15, 21, 1, 22.00, 22.00, 22.30, 22.00, 1, '2020-05-01 13:37:55');
INSERT INTO `pet_daily` VALUES (16, 20, 1, 11.00, 2.00, 22.00, 1.00, 1, '2020-05-01 13:38:08');
INSERT INTO `pet_daily` VALUES (22, 24, 22, 33.00, 34.00, 44.00, 22.00, 2, '2020-05-03 19:49:05');
INSERT INTO `pet_daily` VALUES (23, 19, 25, 37.00, 20.00, 20.00, 10.00, 1, '2020-05-15 15:16:19');
INSERT INTO `pet_daily` VALUES (24, 19, 25, 50.00, 30.00, 30.00, 20.00, 1, '2020-05-15 15:17:15');
INSERT INTO `pet_daily` VALUES (25, 19, 25, 60.00, 60.00, 60.00, 60.00, 2, '2020-05-15 15:26:15');
INSERT INTO `pet_daily` VALUES (26, 28, 25, 10.00, 40.00, 20.00, 30.00, 1, '2020-05-28 22:05:29');
INSERT INTO `pet_daily` VALUES (27, 30, 25, 30.00, 20.00, 10.00, 10.00, 1, '2020-05-30 10:39:16');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型名称',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '超级管理员');
INSERT INTO `role` VALUES (2, '普通用户', '普通用户');
INSERT INTO `role` VALUES (3, '医生', '医生');

-- ----------------------------
-- Table structure for role_page
-- ----------------------------
DROP TABLE IF EXISTS `role_page`;
CREATE TABLE `role_page`  (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `page_id` int(11) DEFAULT NULL COMMENT '页面id',
  PRIMARY KEY (`rp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 889 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_page
-- ----------------------------
INSERT INTO `role_page` VALUES (1, 1, 1);
INSERT INTO `role_page` VALUES (2, 1, 2);
INSERT INTO `role_page` VALUES (3, 1, 3);
INSERT INTO `role_page` VALUES (4, 1, 4);
INSERT INTO `role_page` VALUES (803, 2, 6);
INSERT INTO `role_page` VALUES (804, 2, 7);
INSERT INTO `role_page` VALUES (805, 2, 8);
INSERT INTO `role_page` VALUES (806, 2, 9);
INSERT INTO `role_page` VALUES (807, 2, 10);
INSERT INTO `role_page` VALUES (808, 2, 37);
INSERT INTO `role_page` VALUES (809, 2, 12);
INSERT INTO `role_page` VALUES (810, 2, 13);
INSERT INTO `role_page` VALUES (811, 2, 14);
INSERT INTO `role_page` VALUES (812, 2, 33);
INSERT INTO `role_page` VALUES (813, 2, 19);
INSERT INTO `role_page` VALUES (814, 2, 27);
INSERT INTO `role_page` VALUES (815, 2, 28);
INSERT INTO `role_page` VALUES (816, 2, 35);
INSERT INTO `role_page` VALUES (852, 3, 6);
INSERT INTO `role_page` VALUES (853, 3, 30);
INSERT INTO `role_page` VALUES (854, 3, 9);
INSERT INTO `role_page` VALUES (855, 3, 31);
INSERT INTO `role_page` VALUES (856, 3, 37);
INSERT INTO `role_page` VALUES (857, 3, 19);
INSERT INTO `role_page` VALUES (858, 3, 34);
INSERT INTO `role_page` VALUES (859, 3, 21);
INSERT INTO `role_page` VALUES (860, 3, 23);
INSERT INTO `role_page` VALUES (861, 3, 24);
INSERT INTO `role_page` VALUES (862, 3, 32);
INSERT INTO `role_page` VALUES (863, 3, 36);
INSERT INTO `role_page` VALUES (864, 3, 38);
INSERT INTO `role_page` VALUES (865, 1, 6);
INSERT INTO `role_page` VALUES (866, 1, 7);
INSERT INTO `role_page` VALUES (867, 1, 8);
INSERT INTO `role_page` VALUES (868, 1, 30);
INSERT INTO `role_page` VALUES (869, 1, 9);
INSERT INTO `role_page` VALUES (870, 1, 10);
INSERT INTO `role_page` VALUES (871, 1, 31);
INSERT INTO `role_page` VALUES (872, 1, 37);
INSERT INTO `role_page` VALUES (873, 1, 12);
INSERT INTO `role_page` VALUES (874, 1, 13);
INSERT INTO `role_page` VALUES (875, 1, 14);
INSERT INTO `role_page` VALUES (876, 1, 33);
INSERT INTO `role_page` VALUES (877, 1, 19);
INSERT INTO `role_page` VALUES (878, 1, 20);
INSERT INTO `role_page` VALUES (879, 1, 27);
INSERT INTO `role_page` VALUES (880, 1, 28);
INSERT INTO `role_page` VALUES (881, 1, 34);
INSERT INTO `role_page` VALUES (882, 1, 35);
INSERT INTO `role_page` VALUES (883, 1, 21);
INSERT INTO `role_page` VALUES (884, 1, 23);
INSERT INTO `role_page` VALUES (885, 1, 24);
INSERT INTO `role_page` VALUES (886, 1, 32);
INSERT INTO `role_page` VALUES (887, 1, 36);
INSERT INTO `role_page` VALUES (888, 1, 38);

-- ----------------------------
-- Table structure for standard
-- ----------------------------
DROP TABLE IF EXISTS `standard`;
CREATE TABLE `standard`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `age_min` int(10) DEFAULT NULL,
  `age_max` int(10) DEFAULT NULL,
  `temp_min` double(10, 2) DEFAULT NULL,
  `temp_max` double(10, 2) DEFAULT NULL,
  `weight_min` double(10, 2) DEFAULT NULL,
  `weight_max` double(10, 2) DEFAULT NULL,
  `height_min` double(10, 2) DEFAULT NULL,
  `height_max` double(10, 2) DEFAULT NULL,
  `appetite_min` double(10, 2) DEFAULT NULL,
  `appetite_max` double(10, 2) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of standard
-- ----------------------------
INSERT INTO `standard` VALUES (2, 1, 10, 30.00, 50.00, 10.00, 50.00, 5.00, 70.00, 10.00, 40.00, '1', 1);
INSERT INTO `standard` VALUES (3, 5, 20, 15.00, 40.00, 10.00, 50.00, 12.00, 70.00, 10.00, 30.00, '2', 1);
INSERT INTO `standard` VALUES (4, 1, 10, 10.00, 10.00, 20.00, 30.00, 40.00, 50.00, 10.00, 10.00, '2', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `qualification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hospital_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hospital_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '555@qq.com', '222222222222222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18888889998', '222', NULL);
INSERT INTO `user` VALUES (25, NULL, 'user', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18860881111', '江苏', '2020-04-29 11:13:18');
INSERT INTO `user` VALUES (26, NULL, '医生1', 'e10adc3949ba59abbe56e057f20f883e', '', '1234', NULL, NULL, '人民医院', '江苏', '医师', NULL, NULL, '18860882222', NULL, '2020-04-29 11:21:43');
INSERT INTO `user` VALUES (30, NULL, '医生2', 'e10adc3949ba59abbe56e057f20f883e', '', '2234', NULL, NULL, '人民医院', '苏州', '医师', NULL, NULL, '18860883333', NULL, '2020-04-29 11:26:06');
INSERT INTO `user` VALUES (31, NULL, '医生3', 'e10adc3949ba59abbe56e057f20f883e', '', '135489654123698741', NULL, NULL, '人民医院', '江苏', '医师', NULL, NULL, '18860883333', NULL, '2020-05-01 14:33:17');
INSERT INTO `user` VALUES (37, NULL, '1', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18860881223', '1', '2020-05-06 20:55:29');
INSERT INTO `user` VALUES (38, NULL, 'li', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', '123456', '2020-07-02 18:46:34');
INSERT INTO `user` VALUES (39, NULL, 'lei', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '111111', '陕西', '2020-07-02 22:04:26');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `ur_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`ur_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, '1', 1);
INSERT INTO `user_role` VALUES (170, '25', 2);
INSERT INTO `user_role` VALUES (171, '26', 3);
INSERT INTO `user_role` VALUES (172, '30', 3);
INSERT INTO `user_role` VALUES (173, '31', 3);
INSERT INTO `user_role` VALUES (179, '37', 2);
INSERT INTO `user_role` VALUES (180, '38', 2);
INSERT INTO `user_role` VALUES (181, '39', 2);

SET FOREIGN_KEY_CHECKS = 1;
