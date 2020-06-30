/*
 Navicat Premium Data Transfer

 Source Server Type    : MariaDB

 Date: 30/06/2020 06:03:56
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
INSERT INTO `version` VALUES ('AzgathCore rev. 905f4f7a21cb+ 2020-06-21 13:34:22 +0300 (bfa branch) (Win64, Release, Static)', '905f4f7a21cb+', 'AZDB 830.01', 7, 0);

SET FOREIGN_KEY_CHECKS = 1;
