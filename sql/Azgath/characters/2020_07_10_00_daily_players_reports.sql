/*
 Navicat Premium Data Transfer

 Source Server         : Azgath MARIADB830
 Source Server Type    : MariaDB
 Source Server Version : 100504
 Source Host           : localhost:3308
 Source Schema         : az_chars

 Target Server Type    : MariaDB
 Target Server Version : 100504
 File Encoding         : 65001

 Date: 09/07/2020 02:53:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for daily_players_reports
-- ----------------------------
DROP TABLE IF EXISTS `daily_players_reports`;
CREATE TABLE `daily_players_reports`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `creation_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `average` float NOT NULL DEFAULT 0,
  `total_reports` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `speed_reports` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fly_reports` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `jump_reports` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `waterwalk_reports` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `teleportplane_reports` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `climb_reports` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily_players_reports
-- ----------------------------
INSERT INTO `daily_players_reports` VALUES (6, 2776923, 0.910256, 71, 0, 71, 0, 0, 0, 0);
INSERT INTO `daily_players_reports` VALUES (7, 318897, 0.601695, 71, 0, 71, 0, 0, 0, 0);
INSERT INTO `daily_players_reports` VALUES (10, 605960, 0.959459, 71, 0, 71, 0, 0, 0, 0);
INSERT INTO `daily_players_reports` VALUES (13, 1167170, 1.61364, 71, 0, 71, 0, 0, 0, 0);
INSERT INTO `daily_players_reports` VALUES (14, 653773, 5.07143, 71, 0, 71, 0, 0, 0, 0);
INSERT INTO `daily_players_reports` VALUES (18, 603977, 1.775, 71, 0, 71, 0, 0, 0, 0);
INSERT INTO `daily_players_reports` VALUES (920, 5699254, 2.36667, 71, 0, 71, 0, 0, 0, 0);
INSERT INTO `daily_players_reports` VALUES (928, 475292, 4.4375, 71, 0, 71, 0, 0, 0, 0);
INSERT INTO `daily_players_reports` VALUES (929, 398253, 1.0597, 71, 0, 71, 0, 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
