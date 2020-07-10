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

 Date: 09/07/2020 02:23:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for players_reports_status
-- ----------------------------
DROP TABLE IF EXISTS `players_reports_status`;
CREATE TABLE `players_reports_status`  (
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
