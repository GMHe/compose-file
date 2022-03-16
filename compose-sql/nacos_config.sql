/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.32.2
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 192.168.32.2:3306
 Source Schema         : nacos_config

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 16/11/2021 16:25:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `c_use` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `effect` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `c_schema` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfo_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info';

-- ----------------------------
-- Records of config_info
-- ----------------------------
BEGIN;
INSERT INTO `config_info` VALUES (12, 'transport.type', 'SEATA_GROUP', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2021-11-11 21:57:02', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (13, 'transport.server', 'SEATA_GROUP', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2021-11-11 21:57:02', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (14, 'transport.heartbeat', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-11 21:57:02', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (15, 'transport.enableClientBatchSendRequest', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-11 21:57:02', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (16, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2021-11-11 21:57:02', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (17, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2021-11-11 21:57:02', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (18, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (19, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (20, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (21, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (22, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (23, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (24, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (25, 'transport.shutdown.wait', 'SEATA_GROUP', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (26, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (27, 'service.default.grouplist', 'SEATA_GROUP', '192.168.32.2:8091', 'fe1ec3fbde84a789069f534b9f2dd74d', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (28, 'service.enableDegrade', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (29, 'service.disableGlobalTransaction', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (30, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (31, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (32, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (33, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (34, 'client.rm.reportRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (35, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (36, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (37, 'client.rm.sqlParserType', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (38, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (39, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (40, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (41, 'client.tm.commitRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (42, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (43, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (44, 'client.tm.degradeCheck', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (45, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2021-11-11 21:57:03', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (46, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (47, 'client.tm.interceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (48, 'store.mode', 'SEATA_GROUP', 'db', 'd77d5e503ad1439f585ac494268b351b', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (49, 'store.lock.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (50, 'store.session.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (51, 'store.file.dir', 'SEATA_GROUP', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (52, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (53, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (54, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (55, 'store.file.flushDiskMode', 'SEATA_GROUP', 'async', '0df93e34273b367bb63bad28c94c78d5', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (56, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (57, 'store.db.datasource', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (58, 'store.db.dbType', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (59, 'store.db.driverClassName', 'SEATA_GROUP', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (60, 'store.db.url', 'SEATA_GROUP', 'jdbc:mysql://192.168.32.2:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '5aec93504f91f5a7a52f5d7f56595ccf', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (61, 'store.db.user', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (62, 'store.db.password', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (63, 'store.db.minConn', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (64, 'store.db.maxConn', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (65, 'store.db.globalTable', 'SEATA_GROUP', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (66, 'store.db.branchTable', 'SEATA_GROUP', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (67, 'store.db.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (68, 'store.db.lockTable', 'SEATA_GROUP', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (69, 'store.db.maxWait', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (70, 'store.redis.mode', 'SEATA_GROUP', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (71, 'store.redis.single.host', 'SEATA_GROUP', '192.168.32.2', '0b8a4cdeac6b163a84720c879379b20b', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (72, 'store.redis.single.port', 'SEATA_GROUP', '6391', 'f73a9f957962cd73fce51078b5b9614f', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (73, 'store.redis.maxConn', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (74, 'store.redis.minConn', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (75, 'store.redis.maxTotal', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (76, 'store.redis.database', 'SEATA_GROUP', '0', 'cfcd208495d565ef66e7dff9f98764da', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (77, 'store.redis.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (78, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-11-11 21:57:04', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (79, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (80, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (81, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (82, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (83, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (84, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (85, 'server.distributedLockExpireTime', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (86, 'client.undo.dataValidation', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (87, 'client.undo.logSerialization', 'SEATA_GROUP', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (88, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (89, 'server.undo.logSaveDays', 'SEATA_GROUP', '7', '8f14e45fceea167a5a36dedd4bea2543', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (90, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (91, 'client.undo.logTable', 'SEATA_GROUP', 'undo_log', '2842d229c24afe9e61437135e8306614', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (92, 'client.undo.compress.enable', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (93, 'client.undo.compress.type', 'SEATA_GROUP', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (94, 'client.undo.compress.threshold', 'SEATA_GROUP', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (95, 'log.exceptionRate', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (96, 'transport.serialization', 'SEATA_GROUP', 'seata', 'b943081c423b9a5416a706524ee05d40', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (97, 'transport.compressor', 'SEATA_GROUP', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (98, 'metrics.enabled', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (99, 'metrics.registryType', 'SEATA_GROUP', 'compact', '7cf74ca49c304df8150205fc915cd465', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (100, 'metrics.exporterList', 'SEATA_GROUP', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (101, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2021-11-11 21:57:05', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', '', '', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (109, 'transport.type', 'SEATA_GROUP', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2021-11-15 01:03:35', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (110, 'transport.server', 'SEATA_GROUP', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2021-11-15 01:03:35', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (111, 'transport.heartbeat', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-15 01:03:35', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (112, 'transport.enableClientBatchSendRequest', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-15 01:03:35', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (113, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2021-11-15 01:03:35', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (114, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2021-11-15 01:03:35', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (115, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (116, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (117, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (118, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (119, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (120, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (121, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (122, 'transport.shutdown.wait', 'SEATA_GROUP', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (124, 'service.default.grouplist', 'SEATA_GROUP', '192.168.32.2:8091', 'fe1ec3fbde84a789069f534b9f2dd74d', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (125, 'service.enableDegrade', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (126, 'service.disableGlobalTransaction', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (127, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (128, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (129, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (130, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (131, 'client.rm.reportRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (132, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (133, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (134, 'client.rm.sqlParserType', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (135, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-15 01:03:36', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (136, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (137, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (138, 'client.tm.commitRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (139, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (140, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (141, 'client.tm.degradeCheck', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (142, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (143, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (144, 'client.tm.interceptorOrder', 'SEATA_GROUP', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (145, 'store.mode', 'SEATA_GROUP', 'db', 'd77d5e503ad1439f585ac494268b351b', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (146, 'store.lock.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (147, 'store.session.mode', 'SEATA_GROUP', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (148, 'store.file.dir', 'SEATA_GROUP', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (149, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (150, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (151, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '16384', 'c76fe1d8e08462434d800487585be217', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (152, 'store.file.flushDiskMode', 'SEATA_GROUP', 'async', '0df93e34273b367bb63bad28c94c78d5', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (153, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (154, 'store.db.datasource', 'SEATA_GROUP', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (155, 'store.db.dbType', 'SEATA_GROUP', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (156, 'store.db.driverClassName', 'SEATA_GROUP', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2021-11-15 01:03:37', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (157, 'store.db.url', 'SEATA_GROUP', 'jdbc:mysql://192.168.32.2:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '5aec93504f91f5a7a52f5d7f56595ccf', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (158, 'store.db.user', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (159, 'store.db.password', 'SEATA_GROUP', 'root', '63a9f0ea7bb98050796b649e85481845', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (160, 'store.db.minConn', 'SEATA_GROUP', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (161, 'store.db.maxConn', 'SEATA_GROUP', '30', '34173cb38f07f89ddbebc2ac9128303f', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (162, 'store.db.globalTable', 'SEATA_GROUP', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (163, 'store.db.branchTable', 'SEATA_GROUP', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (164, 'store.db.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (165, 'store.db.lockTable', 'SEATA_GROUP', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (166, 'store.db.maxWait', 'SEATA_GROUP', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (167, 'store.redis.mode', 'SEATA_GROUP', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (168, 'store.redis.single.host', 'SEATA_GROUP', '192.168.32.2', '0b8a4cdeac6b163a84720c879379b20b', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (169, 'store.redis.single.port', 'SEATA_GROUP', '6391', 'f73a9f957962cd73fce51078b5b9614f', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (170, 'store.redis.maxConn', 'SEATA_GROUP', '10', 'd3d9446802a44259755d38e6d163e820', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (171, 'store.redis.minConn', 'SEATA_GROUP', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (172, 'store.redis.maxTotal', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (173, 'store.redis.database', 'SEATA_GROUP', '0', 'cfcd208495d565ef66e7dff9f98764da', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (174, 'store.redis.queryLimit', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (175, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (176, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (177, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (178, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (179, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (180, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (181, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (182, 'server.distributedLockExpireTime', 'SEATA_GROUP', '10000', 'b7a782741f667201b54880c925faec4b', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (183, 'client.undo.dataValidation', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (184, 'client.undo.logSerialization', 'SEATA_GROUP', 'kryo', 'd78f017576c8b3ad5beec73e6c39a59e', '2021-11-15 01:03:38', '2021-11-15 05:15:14', 'nacos', '192.168.32.1', '', 'seata', '', '', '', 'text', '');
INSERT INTO `config_info` VALUES (185, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (186, 'server.undo.logSaveDays', 'SEATA_GROUP', '7', '8f14e45fceea167a5a36dedd4bea2543', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (187, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2021-11-15 01:03:38', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (188, 'client.undo.logTable', 'SEATA_GROUP', 'undo_log', '2842d229c24afe9e61437135e8306614', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (189, 'client.undo.compress.enable', 'SEATA_GROUP', 'true', 'b326b5062b2f0e69046810717534cb09', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (190, 'client.undo.compress.type', 'SEATA_GROUP', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (191, 'client.undo.compress.threshold', 'SEATA_GROUP', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (192, 'log.exceptionRate', 'SEATA_GROUP', '100', 'f899139df5e1059396431415e770c6dd', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (193, 'transport.serialization', 'SEATA_GROUP', 'seata', 'b943081c423b9a5416a706524ee05d40', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (194, 'transport.compressor', 'SEATA_GROUP', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (195, 'metrics.enabled', 'SEATA_GROUP', 'false', '68934a3e9455fa72420237eb05902327', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (196, 'metrics.registryType', 'SEATA_GROUP', 'compact', '7cf74ca49c304df8150205fc915cd465', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (197, 'metrics.exporterList', 'SEATA_GROUP', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (198, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2021-11-15 01:03:39', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (199, 'service.vgroupMapping.compose-sync-tx-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-15 01:39:26', '2021-11-15 01:39:26', NULL, '192.168.32.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (200, 'service.vgroupMapping.compose-admin-tx-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-15 01:57:41', '2021-11-15 01:57:41', NULL, '192.168.32.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (201, 'service.vgroupMapping.compose-alert-tx-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-15 02:20:37', '2021-11-15 02:20:37', NULL, '192.168.32.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (206, 'compose-admin', 'DEFAULT_GROUP', 'server:\n  port: 8681\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin', 'c9ff007d3eb213f7f034826cb477c29c', '2021-11-16 01:48:31', '2021-11-16 01:48:31', NULL, '192.168.32.1', '', '3905fecd-7a2b-49cb-9c45-11485301d0dd', NULL, NULL, NULL, 'yaml', NULL);
INSERT INTO `config_info` VALUES (207, 'service.vgroupMapping.compose-gateway-tx-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-16 02:37:12', '2021-11-16 02:37:44', 'nacos', '192.168.32.1', '', 'seata', '', '', '', 'text', '');
INSERT INTO `config_info` VALUES (209, 'service.vgroupMapping.compose-collect-tx-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-16 02:38:44', '2021-11-16 02:38:44', NULL, '192.168.32.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (210, 'service.vgroupMapping.compose-metric-tx-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-16 02:39:54', '2021-11-16 02:39:54', NULL, '192.168.32.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
INSERT INTO `config_info` VALUES (211, 'service.vgroupMapping.compose-open-tx-group', 'SEATA_GROUP', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2021-11-16 02:40:29', '2021-11-16 02:40:29', NULL, '192.168.32.1', '', 'seata', NULL, NULL, NULL, 'text', NULL);
COMMIT;

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS `config_info_aggr`;
CREATE TABLE `config_info_aggr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfoaggr_datagrouptenantdatum` (`data_id`,`group_id`,`tenant_id`,`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='增加租户字段';

-- ----------------------------
-- Records of config_info_aggr
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfobeta_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_beta';

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfotag_datagrouptenanttag` (`data_id`,`group_id`,`tenant_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_tag';

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `tag_name` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `uk_configtagrelation_configidtag` (`id`,`tag_name`,`tag_type`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_tag_relation';

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='集群、各Group容量信息表';

-- ----------------------------
-- Records of group_capacity
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info` (
  `id` bigint(64) unsigned NOT NULL,
  `nid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
  `src_user` text COLLATE utf8_bin,
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `op_type` char(10) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`nid`),
  KEY `idx_gmt_create` (`gmt_create`),
  KEY `idx_gmt_modified` (`gmt_modified`),
  KEY `idx_did` (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='多租户改造';

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
BEGIN;
INSERT INTO `his_config_info` VALUES (0, 1, 'config', 'seata', '', '#tx_group：自定义名字，很重要，与项目配置文件的tx-service-group一一对应\nservice.vgroupMapping.tx_group=compose\n#seata的ip+端口\nservice.default.grouplist=192.168.32.2:8091\n\n# 修改存储模式为数据库存储\nstore.mode=db\n# 指定数据库为mysql，其他数据库类型根据自身情况修改\nstore.db.dbType=mysql\n# 指定引擎，mysql8以下为com.mysql.jdbc.Driver，mysql8为com.mysql.cj.jdbc.Driver\nstore.db.driverClassName=com.mysql.cj.jdbc.Driver\nstore.db.url=jdbc:mysql://{ip}:3306/seata?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\nstore.db.user=root\nstore.db.password=root', 'c35572216e328a0cb81cf9affb0bf091', '2010-05-05 00:00:00', '2021-11-11 21:20:59', NULL, '192.168.32.1', 'I', '');
INSERT INTO `his_config_info` VALUES (1, 2, 'config', 'seata', '', '#tx_group：自定义名字，很重要，与项目配置文件的tx-service-group一一对应\nservice.vgroupMapping.tx_group=compose\n#seata的ip+端口\nservice.default.grouplist=192.168.32.2:8091\n\n# 修改存储模式为数据库存储\nstore.mode=db\n# 指定数据库为mysql，其他数据库类型根据自身情况修改\nstore.db.dbType=mysql\n# 指定引擎，mysql8以下为com.mysql.jdbc.Driver，mysql8为com.mysql.cj.jdbc.Driver\nstore.db.driverClassName=com.mysql.cj.jdbc.Driver\nstore.db.url=jdbc:mysql://{ip}:3306/seata?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\nstore.db.user=root\nstore.db.password=root', 'c35572216e328a0cb81cf9affb0bf091', '2010-05-05 00:00:00', '2021-11-11 21:32:31', 'nacos', '192.168.32.1', 'U', '');
INSERT INTO `his_config_info` VALUES (1, 3, 'config', 'seata', '', '#tx_group：自定义名字，很重要，与项目配置文件的tx-service-group一一对应\nservice.vgroupMapping.tx_group=compose\n#seata的ip+端口\nservice.default.grouplist=192.168.32.2:8091\n\n# 修改存储模式为数据库存储\nstore.mode=db\n# 指定数据库为mysql，其他数据库类型根据自身情况修改\nstore.db.dbType=mysql\n# 指定引擎，mysql8以下为com.mysql.jdbc.Driver，mysql8为com.mysql.cj.jdbc.Driver\nstore.db.name=seata\nstore.db.driverClassName=com.mysql.cj.jdbc.Driver\nstore.db.url=jdbc:mysql://{ip}:3306/seata?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\nstore.db.user=root\nstore.db.password=root', '20b64ca175df7df8a12d8951df644353', '2010-05-05 00:00:00', '2021-11-11 21:34:45', 'nacos', '192.168.32.1', 'U', '');
INSERT INTO `his_config_info` VALUES (0, 4, 'service.vgroupMapping.tx_group', 'SEATA_GROUP', '', 'compose', '13b3f3e76ed018a105bdeac77aa8967e', '2010-05-05 00:00:00', '2021-11-11 21:43:55', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 5, 'service.default.grouplist', 'SEATA_GROUP', '', '192.168.32.2:8091', 'fe1ec3fbde84a789069f534b9f2dd74d', '2010-05-05 00:00:00', '2021-11-11 21:43:55', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 6, 'store.mode', 'SEATA_GROUP', '', 'db', 'd77d5e503ad1439f585ac494268b351b', '2010-05-05 00:00:00', '2021-11-11 21:43:55', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 7, 'store.db.dbType', 'SEATA_GROUP', '', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2010-05-05 00:00:00', '2021-11-11 21:43:56', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 8, 'store.db.driverClassName', 'SEATA_GROUP', '', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2010-05-05 00:00:00', '2021-11-11 21:43:56', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 9, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://192.168.32.2:3306/seata?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai', '5db02dd0212225a3328830fd027e85f5', '2010-05-05 00:00:00', '2021-11-11 21:43:56', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 10, 'store.db.user', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2021-11-11 21:43:56', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 11, 'store.db.password', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2021-11-11 21:43:56', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (1, 12, 'config', 'seata', '', '#tx_group：自定义名字，很重要，与项目配置文件的tx-service-group一一对应\nservice.vgroupMapping.tx_group=compose\n#seata的ip+端口\nservice.default.grouplist=192.168.32.2:8091\n\n# 修改存储模式为数据库存储\nstore.mode=db\n# 指定数据库为mysql，其他数据库类型根据自身情况修改\nstore.db.dbType=mysql\n# 指定引擎，mysql8以下为com.mysql.jdbc.Driver，mysql8为com.mysql.cj.jdbc.Driver\nstore.db.driverClassName=com.mysql.cj.jdbc.Driver\nstore.db.url=jdbc:mysql://{ip}:3306/seata?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\nstore.db.user=root\nstore.db.password=root', 'c35572216e328a0cb81cf9affb0bf091', '2010-05-05 00:00:00', '2021-11-11 21:44:42', NULL, '192.168.32.1', 'D', '');
INSERT INTO `his_config_info` VALUES (4, 13, 'service.vgroupMapping.tx_group', 'SEATA_GROUP', '', 'compose', '13b3f3e76ed018a105bdeac77aa8967e', '2010-05-05 00:00:00', '2021-11-11 21:51:57', NULL, '192.168.32.1', 'D', '');
INSERT INTO `his_config_info` VALUES (5, 14, 'service.default.grouplist', 'SEATA_GROUP', '', '192.168.32.2:8091', 'fe1ec3fbde84a789069f534b9f2dd74d', '2010-05-05 00:00:00', '2021-11-11 21:52:01', NULL, '192.168.32.1', 'D', '');
INSERT INTO `his_config_info` VALUES (6, 15, 'store.mode', 'SEATA_GROUP', '', 'db', 'd77d5e503ad1439f585ac494268b351b', '2010-05-05 00:00:00', '2021-11-11 21:52:04', NULL, '192.168.32.1', 'D', '');
INSERT INTO `his_config_info` VALUES (7, 16, 'store.db.dbType', 'SEATA_GROUP', '', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2010-05-05 00:00:00', '2021-11-11 21:52:07', NULL, '192.168.32.1', 'D', '');
INSERT INTO `his_config_info` VALUES (8, 17, 'store.db.driverClassName', 'SEATA_GROUP', '', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2010-05-05 00:00:00', '2021-11-11 21:52:10', NULL, '192.168.32.1', 'D', '');
INSERT INTO `his_config_info` VALUES (9, 18, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://192.168.32.2:3306/seata?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai', '5db02dd0212225a3328830fd027e85f5', '2010-05-05 00:00:00', '2021-11-11 21:52:13', NULL, '192.168.32.1', 'D', '');
INSERT INTO `his_config_info` VALUES (10, 19, 'store.db.user', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2021-11-11 21:52:16', NULL, '192.168.32.1', 'D', '');
INSERT INTO `his_config_info` VALUES (11, 20, 'store.db.password', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2021-11-11 21:52:20', NULL, '192.168.32.1', 'D', '');
INSERT INTO `his_config_info` VALUES (0, 21, 'transport.type', 'SEATA_GROUP', '', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2010-05-05 00:00:00', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 22, 'transport.server', 'SEATA_GROUP', '', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2010-05-05 00:00:00', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 23, 'transport.heartbeat', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 24, 'transport.enableClientBatchSendRequest', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 25, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', '', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2010-05-05 00:00:00', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 26, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', '', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2010-05-05 00:00:00', '2021-11-11 21:57:02', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 27, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', '', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 28, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 29, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', '', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 30, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 31, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', '', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 32, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 33, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 34, 'transport.shutdown.wait', 'SEATA_GROUP', '', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 35, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 36, 'service.default.grouplist', 'SEATA_GROUP', '', '192.168.32.2:8091', 'fe1ec3fbde84a789069f534b9f2dd74d', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 37, 'service.enableDegrade', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 38, 'service.disableGlobalTransaction', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 39, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 40, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 41, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 42, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 43, 'client.rm.reportRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 44, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 45, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 46, 'client.rm.sqlParserType', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 47, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 48, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 49, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 50, 'client.tm.commitRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 51, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 52, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 53, 'client.tm.degradeCheck', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 54, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2021-11-11 21:57:03', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 55, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 56, 'client.tm.interceptorOrder', 'SEATA_GROUP', '', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 57, 'store.mode', 'SEATA_GROUP', '', 'db', 'd77d5e503ad1439f585ac494268b351b', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 58, 'store.lock.mode', 'SEATA_GROUP', '', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 59, 'store.session.mode', 'SEATA_GROUP', '', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 60, 'store.file.dir', 'SEATA_GROUP', '', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 61, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 62, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 63, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 64, 'store.file.flushDiskMode', 'SEATA_GROUP', '', 'async', '0df93e34273b367bb63bad28c94c78d5', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 65, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 66, 'store.db.datasource', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 67, 'store.db.dbType', 'SEATA_GROUP', '', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 68, 'store.db.driverClassName', 'SEATA_GROUP', '', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 69, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://192.168.32.2:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '5aec93504f91f5a7a52f5d7f56595ccf', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 70, 'store.db.user', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 71, 'store.db.password', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 72, 'store.db.minConn', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 73, 'store.db.maxConn', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 74, 'store.db.globalTable', 'SEATA_GROUP', '', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 75, 'store.db.branchTable', 'SEATA_GROUP', '', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 76, 'store.db.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 77, 'store.db.lockTable', 'SEATA_GROUP', '', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 78, 'store.db.maxWait', 'SEATA_GROUP', '', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 79, 'store.redis.mode', 'SEATA_GROUP', '', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 80, 'store.redis.single.host', 'SEATA_GROUP', '', '192.168.32.2', '0b8a4cdeac6b163a84720c879379b20b', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 81, 'store.redis.single.port', 'SEATA_GROUP', '', '6391', 'f73a9f957962cd73fce51078b5b9614f', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 82, 'store.redis.maxConn', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 83, 'store.redis.minConn', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 84, 'store.redis.maxTotal', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 85, 'store.redis.database', 'SEATA_GROUP', '', '0', 'cfcd208495d565ef66e7dff9f98764da', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 86, 'store.redis.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 87, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2021-11-11 21:57:04', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 88, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 89, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 90, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 91, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 92, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 93, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 94, 'server.distributedLockExpireTime', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 95, 'client.undo.dataValidation', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 96, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 97, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 98, 'server.undo.logSaveDays', 'SEATA_GROUP', '', '7', '8f14e45fceea167a5a36dedd4bea2543', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 99, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 100, 'client.undo.logTable', 'SEATA_GROUP', '', 'undo_log', '2842d229c24afe9e61437135e8306614', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 101, 'client.undo.compress.enable', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 102, 'client.undo.compress.type', 'SEATA_GROUP', '', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 103, 'client.undo.compress.threshold', 'SEATA_GROUP', '', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 104, 'log.exceptionRate', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 105, 'transport.serialization', 'SEATA_GROUP', '', 'seata', 'b943081c423b9a5416a706524ee05d40', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 106, 'transport.compressor', 'SEATA_GROUP', '', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 107, 'metrics.enabled', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 108, 'metrics.registryType', 'SEATA_GROUP', '', 'compact', '7cf74ca49c304df8150205fc915cd465', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 109, 'metrics.exporterList', 'SEATA_GROUP', '', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 110, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2010-05-05 00:00:00', '2021-11-11 21:57:05', 'nacos', '192.168.32.2', 'I', '');
INSERT INTO `his_config_info` VALUES (0, 111, 'compose-admin-dev', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '3809b0b4abb019b2d35a8f7fbddbe15b', '2010-05-05 00:00:00', '2021-11-12 00:50:06', NULL, '192.168.32.1', 'I', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (0, 112, 'compose-admin', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '3809b0b4abb019b2d35a8f7fbddbe15b', '2010-05-05 00:00:00', '2021-11-12 03:26:48', NULL, '192.168.32.1', 'I', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (103, 113, 'compose-admin', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '3809b0b4abb019b2d35a8f7fbddbe15b', '2010-05-05 00:00:00', '2021-11-12 03:30:09', 'nacos', '192.168.32.1', 'U', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (103, 114, 'compose-admin', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.3:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '88754b79ca59098baa291f7b9aee479f', '2010-05-05 00:00:00', '2021-11-12 03:31:12', 'nacos', '192.168.32.1', 'U', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (0, 115, 'compose-admin.yml', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '3809b0b4abb019b2d35a8f7fbddbe15b', '2010-05-05 00:00:00', '2021-11-12 03:32:50', NULL, '192.168.32.1', 'I', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (106, 116, 'compose-admin.yml', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '3809b0b4abb019b2d35a8f7fbddbe15b', '2010-05-05 00:00:00', '2021-11-12 03:33:13', 'nacos', '192.168.32.1', 'U', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (106, 117, 'compose-admin.yml', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.3:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '88754b79ca59098baa291f7b9aee479f', '2010-05-05 00:00:00', '2021-11-12 03:37:34', 'nacos', '192.168.32.1', 'U', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (0, 118, 'transport.type', 'SEATA_GROUP', '', 'TCP', 'b136ef5f6a01d816991fe3cf7a6ac763', '2010-05-05 00:00:00', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 119, 'transport.server', 'SEATA_GROUP', '', 'NIO', 'b6d9dfc0fb54277321cebc0fff55df2f', '2010-05-05 00:00:00', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 120, 'transport.heartbeat', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 121, 'transport.enableClientBatchSendRequest', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 122, 'transport.threadFactory.bossThreadPrefix', 'SEATA_GROUP', '', 'NettyBoss', '0f8db59a3b7f2823f38a70c308361836', '2010-05-05 00:00:00', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 123, 'transport.threadFactory.workerThreadPrefix', 'SEATA_GROUP', '', 'NettyServerNIOWorker', 'a78ec7ef5d1631754c4e72ae8a3e9205', '2010-05-05 00:00:00', '2021-11-15 01:03:35', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 124, 'transport.threadFactory.serverExecutorThreadPrefix', 'SEATA_GROUP', '', 'NettyServerBizHandler', '11a36309f3d9df84fa8b59cf071fa2da', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 125, 'transport.threadFactory.shareBossWorker', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 126, 'transport.threadFactory.clientSelectorThreadPrefix', 'SEATA_GROUP', '', 'NettyClientSelector', 'cd7ec5a06541e75f5a7913752322c3af', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 127, 'transport.threadFactory.clientSelectorThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 128, 'transport.threadFactory.clientWorkerThreadPrefix', 'SEATA_GROUP', '', 'NettyClientWorkerThread', '61cf4e69a56354cf72f46dc86414a57e', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 129, 'transport.threadFactory.bossThreadSize', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 130, 'transport.threadFactory.workerThreadSize', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 131, 'transport.shutdown.wait', 'SEATA_GROUP', '', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 132, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 133, 'service.default.grouplist', 'SEATA_GROUP', '', '192.168.32.2:8091', 'fe1ec3fbde84a789069f534b9f2dd74d', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 134, 'service.enableDegrade', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 135, 'service.disableGlobalTransaction', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 136, 'client.rm.asyncCommitBufferLimit', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 137, 'client.rm.lock.retryInterval', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 138, 'client.rm.lock.retryTimes', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 139, 'client.rm.lock.retryPolicyBranchRollbackOnConflict', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 140, 'client.rm.reportRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 141, 'client.rm.tableMetaCheckEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 142, 'client.rm.tableMetaCheckerInterval', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 143, 'client.rm.sqlParserType', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 144, 'client.rm.reportSuccessEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-15 01:03:36', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 145, 'client.rm.sagaBranchRegisterEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 146, 'client.rm.tccActionInterceptorOrder', 'SEATA_GROUP', '', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 147, 'client.tm.commitRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 148, 'client.tm.rollbackRetryCount', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 149, 'client.tm.defaultGlobalTransactionTimeout', 'SEATA_GROUP', '', '60000', '2b4226dd7ed6eb2d419b881f3ae9c97c', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 150, 'client.tm.degradeCheck', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 151, 'client.tm.degradeCheckAllowTimes', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 152, 'client.tm.degradeCheckPeriod', 'SEATA_GROUP', '', '2000', '08f90c1a417155361a5c4b8d297e0d78', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 153, 'client.tm.interceptorOrder', 'SEATA_GROUP', '', '-2147482648', 'f056d9efa5dae3872f9da035c83bcde8', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 154, 'store.mode', 'SEATA_GROUP', '', 'db', 'd77d5e503ad1439f585ac494268b351b', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 155, 'store.lock.mode', 'SEATA_GROUP', '', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 156, 'store.session.mode', 'SEATA_GROUP', '', 'file', '8c7dd922ad47494fc02c388e12c00eac', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 157, 'store.file.dir', 'SEATA_GROUP', '', 'file_store/data', '6a8dec07c44c33a8a9247cba5710bbb2', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 158, 'store.file.maxBranchSessionSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 159, 'store.file.maxGlobalSessionSize', 'SEATA_GROUP', '', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 160, 'store.file.fileWriteBufferCacheSize', 'SEATA_GROUP', '', '16384', 'c76fe1d8e08462434d800487585be217', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 161, 'store.file.flushDiskMode', 'SEATA_GROUP', '', 'async', '0df93e34273b367bb63bad28c94c78d5', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 162, 'store.file.sessionReloadReadSize', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 163, 'store.db.datasource', 'SEATA_GROUP', '', 'druid', '3d650fb8a5df01600281d48c47c9fa60', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 164, 'store.db.dbType', 'SEATA_GROUP', '', 'mysql', '81c3b080dad537de7e10e0987a4bf52e', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 165, 'store.db.driverClassName', 'SEATA_GROUP', '', 'com.mysql.cj.jdbc.Driver', '33763409bb7f4838bde4fae9540433e4', '2010-05-05 00:00:00', '2021-11-15 01:03:37', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 166, 'store.db.url', 'SEATA_GROUP', '', 'jdbc:mysql://192.168.32.2:3306/seata?useUnicode=true&rewriteBatchedStatements=true', '5aec93504f91f5a7a52f5d7f56595ccf', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 167, 'store.db.user', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 168, 'store.db.password', 'SEATA_GROUP', '', 'root', '63a9f0ea7bb98050796b649e85481845', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 169, 'store.db.minConn', 'SEATA_GROUP', '', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 170, 'store.db.maxConn', 'SEATA_GROUP', '', '30', '34173cb38f07f89ddbebc2ac9128303f', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 171, 'store.db.globalTable', 'SEATA_GROUP', '', 'global_table', '8b28fb6bb4c4f984df2709381f8eba2b', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 172, 'store.db.branchTable', 'SEATA_GROUP', '', 'branch_table', '54bcdac38cf62e103fe115bcf46a660c', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 173, 'store.db.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 174, 'store.db.lockTable', 'SEATA_GROUP', '', 'lock_table', '55e0cae3b6dc6696b768db90098b8f2f', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 175, 'store.db.maxWait', 'SEATA_GROUP', '', '5000', 'a35fe7f7fe8217b4369a0af4244d1fca', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 176, 'store.redis.mode', 'SEATA_GROUP', '', 'single', 'dd5c07036f2975ff4bce568b6511d3bc', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 177, 'store.redis.single.host', 'SEATA_GROUP', '', '192.168.32.2', '0b8a4cdeac6b163a84720c879379b20b', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 178, 'store.redis.single.port', 'SEATA_GROUP', '', '6391', 'f73a9f957962cd73fce51078b5b9614f', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 179, 'store.redis.maxConn', 'SEATA_GROUP', '', '10', 'd3d9446802a44259755d38e6d163e820', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 180, 'store.redis.minConn', 'SEATA_GROUP', '', '1', 'c4ca4238a0b923820dcc509a6f75849b', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 181, 'store.redis.maxTotal', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 182, 'store.redis.database', 'SEATA_GROUP', '', '0', 'cfcd208495d565ef66e7dff9f98764da', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 183, 'store.redis.queryLimit', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 184, 'server.recovery.committingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 185, 'server.recovery.asynCommittingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 186, 'server.recovery.rollbackingRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 187, 'server.recovery.timeoutRetryPeriod', 'SEATA_GROUP', '', '1000', 'a9b7ba70783b617e9998dc4dd82eb3c5', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 188, 'server.maxCommitRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 189, 'server.maxRollbackRetryTimeout', 'SEATA_GROUP', '', '-1', '6bb61e3b7bce0931da574d19d1d82c88', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 190, 'server.rollbackRetryTimeoutUnlockEnable', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 191, 'server.distributedLockExpireTime', 'SEATA_GROUP', '', '10000', 'b7a782741f667201b54880c925faec4b', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 192, 'client.undo.dataValidation', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 193, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 194, 'client.undo.onlyCareUpdateColumns', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 195, 'server.undo.logSaveDays', 'SEATA_GROUP', '', '7', '8f14e45fceea167a5a36dedd4bea2543', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 196, 'server.undo.logDeletePeriod', 'SEATA_GROUP', '', '86400000', 'f4c122804fe9076cb2710f55c3c6e346', '2010-05-05 00:00:00', '2021-11-15 01:03:38', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 197, 'client.undo.logTable', 'SEATA_GROUP', '', 'undo_log', '2842d229c24afe9e61437135e8306614', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 198, 'client.undo.compress.enable', 'SEATA_GROUP', '', 'true', 'b326b5062b2f0e69046810717534cb09', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 199, 'client.undo.compress.type', 'SEATA_GROUP', '', 'zip', 'adcdbd79a8d84175c229b192aadc02f2', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 200, 'client.undo.compress.threshold', 'SEATA_GROUP', '', '64k', 'bd44a6458bdbff0b5cac721ba361f035', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 201, 'log.exceptionRate', 'SEATA_GROUP', '', '100', 'f899139df5e1059396431415e770c6dd', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 202, 'transport.serialization', 'SEATA_GROUP', '', 'seata', 'b943081c423b9a5416a706524ee05d40', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 203, 'transport.compressor', 'SEATA_GROUP', '', 'none', '334c4a4c42fdb79d7ebc3e73b517e6f8', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 204, 'metrics.enabled', 'SEATA_GROUP', '', 'false', '68934a3e9455fa72420237eb05902327', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 205, 'metrics.registryType', 'SEATA_GROUP', '', 'compact', '7cf74ca49c304df8150205fc915cd465', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 206, 'metrics.exporterList', 'SEATA_GROUP', '', 'prometheus', 'e4f00638b8a10e6994e67af2f832d51c', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 207, 'metrics.exporterPrometheusPort', 'SEATA_GROUP', '', '9898', '7b9dc501afe4ee11c56a4831e20cee71', '2010-05-05 00:00:00', '2021-11-15 01:03:39', 'nacos', '192.168.32.2', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (123, 208, 'service.vgroupMapping.my_test_tx_group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-15 01:38:11', NULL, '192.168.32.1', 'D', 'seata');
INSERT INTO `his_config_info` VALUES (0, 209, 'service.vgroupMapping.compose-sync-tx-group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-15 01:39:26', NULL, '192.168.32.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 210, 'service.vgroupMapping.compose-admin-tx-group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-15 01:57:41', NULL, '192.168.32.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 211, 'service.vgroupMapping.compose-alert-tx-group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-15 02:20:37', NULL, '192.168.32.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (184, 212, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2010-05-05 00:00:00', '2021-11-15 04:29:20', 'nacos', '192.168.32.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (184, 213, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'kryo', 'd78f017576c8b3ad5beec73e6c39a59e', '2010-05-05 00:00:00', '2021-11-15 04:31:50', 'nacos', '192.168.32.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (184, 214, 'client.undo.logSerialization', 'SEATA_GROUP', '', 'jackson', 'b41779690b83f182acc67d6388c7bac9', '2010-05-05 00:00:00', '2021-11-15 05:15:14', 'nacos', '192.168.32.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (106, 215, 'compose-admin.yml', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '3809b0b4abb019b2d35a8f7fbddbe15b', '2010-05-05 00:00:00', '2021-11-16 01:46:57', 'nacos', '192.168.32.1', 'U', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (102, 216, 'compose-admin-dev', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '3809b0b4abb019b2d35a8f7fbddbe15b', '2010-05-05 00:00:00', '2021-11-16 01:47:05', NULL, '192.168.32.1', 'D', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (103, 217, 'compose-admin', 'DEFAULT_GROUP', '', 'server:\n  port: 8581\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin\n\nseata:\n  tx-service-group: ${spring.application.name}-group\n  service:\n    grouplist:\n      compose-admin: 192.168.32.2:8091\n    vgroup-mapping:\n      compose-admin-group: compose-admin', '3809b0b4abb019b2d35a8f7fbddbe15b', '2010-05-05 00:00:00', '2021-11-16 01:47:12', NULL, '192.168.32.1', 'D', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (0, 218, 'compose-admin', 'DEFAULT_GROUP', '', 'server:\n  port: 8681\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin', 'c9ff007d3eb213f7f034826cb477c29c', '2010-05-05 00:00:00', '2021-11-16 01:48:31', NULL, '192.168.32.1', 'I', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (106, 219, 'compose-admin.yml', 'DEFAULT_GROUP', '', 'server:\n  port: 8681\n\nspring:\n  application:\n    name: compose-admin\n#  profiles:\n#    active:\n  datasource:\n    driver-class-name: com.mysql.cj.jdbc.Driver\n    url: jdbc:mysql://192.168.32.2:3306/compose_admin?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai\n    username: root\n    password: root\n    hikari:\n      pool-name: HikariCP-Pool\n      minimum-idle: 3\n      idle-timeout: 600000\n      maximum-pool-size: 20\n      auto-commit: true\n      max-lifetime: 1800000\n      connection-timeout: 30000\n      connection-test-query: SELECT 1\n\n  redis:\n    database: 0\n    #host: 192.168.32.2\n    cluster:\n     nodes: 192.168.32.2:6391,192.168.32.2:6392,192.168.32.2:6393\n    jedis:\n      pool:\n        #最大连接数据库连接数,设 0 为没有限制\n        max-active: 8\n        #最大等待连接中的数量,设 0 为没有限制\n        max-idle: 8\n        #最大建立连接等待时间。如果超过此时间将接到异常。设为-1表示无限制。\n        max-wait: -1ms\n        #最小等待连接中的数量,设 0 为没有限制\n        min-idle: 0\n    lettuce:\n      pool:\n        max-active: 8\n        max-idle: 8\n        max-wait: -1ms\n        min-idle: 0\n      shutdown-timeout: 100ms\n    password:\n    #port: 6379\n    username:\n\n\nlogging:\n  config: classpath:log4j2.xml\n  level:\n    web: info\n\nmybatis:\n  mapper-locations: classpath:mapper/*.xml\n  configuration:\n    cache-enabled: false\n    log-impl: org.apache.ibatis.logging.stdout.StdOutImpl\n    log-prefix: debug\n\ndistributedId:\n  address: 192.168.32.2:2181\n  group: compose-admin', 'c9ff007d3eb213f7f034826cb477c29c', '2010-05-05 00:00:00', '2021-11-16 01:48:38', NULL, '192.168.32.1', 'D', '3905fecd-7a2b-49cb-9c45-11485301d0dd');
INSERT INTO `his_config_info` VALUES (0, 220, 'service.vgroupMapping.compose-gateway-tx-group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-16 02:37:12', NULL, '192.168.32.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (207, 221, 'service.vgroupMapping.compose-gateway-tx-group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-16 02:37:44', 'nacos', '192.168.32.1', 'U', 'seata');
INSERT INTO `his_config_info` VALUES (0, 222, 'service.vgroupMapping.compose-collect-tx-group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-16 02:38:44', NULL, '192.168.32.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 223, 'service.vgroupMapping.compose-metric-tx-group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-16 02:39:54', NULL, '192.168.32.1', 'I', 'seata');
INSERT INTO `his_config_info` VALUES (0, 224, 'service.vgroupMapping.compose-open-tx-group', 'SEATA_GROUP', '', 'default', 'c21f969b5f03d33d43e04f8f136e7682', '2010-05-05 00:00:00', '2021-11-16 02:40:29', NULL, '192.168.32.1', 'I', 'seata');
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `role` varchar(50) NOT NULL,
  `resource` varchar(512) NOT NULL,
  `action` varchar(8) NOT NULL,
  UNIQUE KEY `uk_role_permission` (`role`,`resource`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  UNIQUE KEY `uk_username_role` (`username`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('nacos', 'ROLE_ADMIN');
COMMIT;

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数',
  `max_aggr_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='租户容量信息表';

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_info_kptenantid` (`kp`,`tenant_id`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='tenant_info';

-- ----------------------------
-- Records of tenant_info
-- ----------------------------
BEGIN;
INSERT INTO `tenant_info` VALUES (3, '1', '3905fecd-7a2b-49cb-9c45-11485301d0dd', 'compose', 'compose', 'nacos', 1636695991596, 1636695991596);
INSERT INTO `tenant_info` VALUES (4, '1', 'seata', 'seata', 'seata', 'nacos', 1636955872992, 1636955872992);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
