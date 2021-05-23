/*
 Navicat Premium Data Transfer

 Source Server         : Azgath MARIADB830
 Source Server Type    : MariaDB
 Source Server Version : 100504
 Source Host           : localhost:3308
 Source Schema         : az_world

 Target Server Type    : MariaDB
 Target Server Version : 100504
 File Encoding         : 65001

 Date: 10/07/2020 05:12:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version`  (
  `core_version` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Core revision dumped at startup.',
  `core_revision` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `db_version` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Version of world DB.',
  `cache_id` int(11) NULL DEFAULT 0,
  `hotfix_cache_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`core_version`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Version Notes' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('AzgathCore rev. unknown 1970-01-01 00:00:00 +0000 (Archived branch) (Win64, Release, Static)', 'unknown', 'AZDB 830.03', 7, 0);

SET FOREIGN_KEY_CHECKS = 1;
