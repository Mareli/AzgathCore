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

-- ----------------------------
-- Records of players_reports_status
-- ----------------------------
INSERT INTO `players_reports_status` VALUES (3, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (654, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (835, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (856, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (859, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (905, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (916, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (919, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (922, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (927, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (930, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (931, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (936, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (953, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (955, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (964, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (970, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (974, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (988, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (990, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (992, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (996, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (997, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1012, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1014, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1026, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1028, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1031, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1038, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1042, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1045, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1047, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1048, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1049, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1051, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1052, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1053, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1054, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1055, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1058, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1059, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1060, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1062, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1063, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1064, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1065, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1067, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1071, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1072, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1101, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1104, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1106, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1107, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1108, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1109, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1112, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1113, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1119, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1120, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1121, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1123, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1124, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1135, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1145, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1148, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1164, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1167, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1190, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1193, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1194, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1196, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1197, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1199, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1217, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1218, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1226, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1244, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1248, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1251, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1263, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1295, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1296, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1300, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1301, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1307, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1310, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1311, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1319, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `players_reports_status` VALUES (1345, 0, 0, 0, 0, 0, 0, 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
