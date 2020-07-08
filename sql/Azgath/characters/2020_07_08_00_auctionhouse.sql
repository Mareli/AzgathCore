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

 Date: 08/07/2020 01:29:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auctionhouse
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `auctioneerguid` int(10) NOT NULL DEFAULT 0,
  `itemguid` int(10) NOT NULL DEFAULT 0,
  `itemowner` int(10) NOT NULL DEFAULT 0,
  `buyoutprice` int(10) NOT NULL DEFAULT 0,
  `time` int(10) NOT NULL DEFAULT 0,
  `buyguid` int(10) NOT NULL DEFAULT 0,
  `lastbid` int(10) NOT NULL DEFAULT 0,
  `startbid` int(10) NOT NULL DEFAULT 0,
  `auctionHouseId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `bidder` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `minBid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `buyoutOrUnitPrice` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `deposit` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `bidAmount` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `startTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
