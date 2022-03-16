/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : yangjian_metric

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 18/11/2021 13:49:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for source_group
-- ----------------------------
DROP TABLE IF EXISTS `source_group`;
CREATE TABLE `source_group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '监控分组名称，如DBA资源监控、机器资源监控、nginx监控、应用日志监控、探针监控、拨测监控',
  `remark` varchar(255) DEFAULT NULL COMMENT '监控分组描述',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_``name``` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='监控数据源分类';

-- ----------------------------
-- Records of source_group
-- ----------------------------
BEGIN;
INSERT INTO `source_group` VALUES (1, 'JVM监控', 'JVM监控', '2020-11-16 17:07:44', '2020-11-16 17:07:47');
INSERT INTO `source_group` VALUES (2, '应用日志监控', '应用日志监控', '2020-11-19 19:16:41', '2020-11-19 19:16:43');
INSERT INTO `source_group` VALUES (3, '服务启动关闭监控', '服务启动关闭监控', '2020-11-23 13:49:10', '2020-11-23 13:49:13');
INSERT INTO `source_group` VALUES (4, 'kafka监控', 'kafka监控', '2020-12-15 11:10:20', '2020-12-15 11:10:22');
INSERT INTO `source_group` VALUES (5, '容器云资源监控', '容器云资源监控', '2021-03-26 16:17:12', '2021-03-26 16:17:14');
INSERT INTO `source_group` VALUES (353491396244513536, '监控类型', 'remarks', '2020-12-01 10:48:36', '2020-12-01 10:48:36');
INSERT INTO `source_group` VALUES (353543917012818944, '字符类型', '字符', '2020-12-01 14:17:18', '2020-12-01 14:17:18');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
