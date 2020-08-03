/*
 Navicat Premium Data Transfer

 Source Server         : AzgathDb MARIADB830
 Source Server Type    : MariaDB
 Source Server Version : 100504
 Source Schema         : az_world

 Target Server Type    : MariaDB
 Target Server Version : 100504
 File Encoding         : 65001

 Date: 03/08/2020 16:15:10
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
INSERT INTO `version` VALUES ('AzgathCore rev. unknown 1970-01-01 00:00:00 +0000 (Archived branch) (Win64, Release, Static)', 'unknown', 'AZDB 837.08', 7, 0);

SET FOREIGN_KEY_CHECKS = 1;
