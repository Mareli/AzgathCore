/*
 Navicat Premium Data Transfer

 Source Server         : AzgathCore
 Source Server Type    : MariaDB
 Source Server Version : 100508
 Source Host           : localhost
 Source Schema         : az_chars

 Target Server Type    : MariaDB
 Target Server Version : 100508

 Date: 20/05/2021 06:13:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_battlepet
-- ----------------------------
DROP TABLE IF EXISTS `account_battlepet`;
CREATE TABLE `account_battlepet`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `slot` int(11) NOT NULL DEFAULT -1,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '\"\"',
  `nameTimeStamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `species` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quality` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `breed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `xp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `display` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `health` int(11) NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `infoPower` int(11) NOT NULL DEFAULT 0,
  `infoMaxHealth` int(11) NOT NULL DEFAULT 0,
  `infoSpeed` int(11) NOT NULL DEFAULT 0,
  `infoGender` int(11) NOT NULL DEFAULT 0,
  `declinedGenitive` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `declinedNative` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `declinedAccusative` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `declinedInstrumental` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `declinedPrepositional` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `account`) USING BTREE,
  INDEX `account`(`account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_data
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data`  (
  `accountId` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_instance_times
-- ----------------------------
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE `account_instance_times`  (
  `accountId` int(10) UNSIGNED NOT NULL,
  `instanceId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `releaseTime` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`accountId`, `instanceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_tutorial
-- ----------------------------
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE `account_tutorial`  (
  `accountId` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `tut0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tut1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tut2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tut3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tut4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tut5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tut6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tut7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`accountId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for arena_team
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team`  (
  `arenaTeamId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `captainGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `rating` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `seasonGames` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `seasonWins` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `weekGames` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `weekWins` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `backgroundColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `emblemStyle` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `emblemColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `borderStyle` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `borderColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`arenaTeamId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for arena_team_member
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member`  (
  `arenaTeamId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `weekGames` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `weekWins` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `seasonGames` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `seasonWins` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `personalRating` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`arenaTeamId`, `guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auction_bidders
-- ----------------------------
DROP TABLE IF EXISTS `auction_bidders`;
CREATE TABLE `auction_bidders`  (
  `auctionId` int(10) UNSIGNED NOT NULL,
  `playerGuid` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`auctionId`, `playerGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auction_items
-- ----------------------------
DROP TABLE IF EXISTS `auction_items`;
CREATE TABLE `auction_items`  (
  `auctionId` int(10) UNSIGNED NOT NULL,
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`auctionId`, `itemGuid`) USING BTREE,
  UNIQUE INDEX `idx_itemGuid`(`itemGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auctionhouse
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
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

-- ----------------------------
-- Table structure for blackmarket_auctions
-- ----------------------------
DROP TABLE IF EXISTS `blackmarket_auctions`;
CREATE TABLE `blackmarket_auctions`  (
  `marketId` int(10) NOT NULL DEFAULT 0,
  `currentBid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(10) NOT NULL DEFAULT 0,
  `numBids` int(10) NOT NULL DEFAULT 0,
  `bidder` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`marketId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bugreport
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Debug System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for calendar_events
-- ----------------------------
DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE `calendar_events`  (
  `EventID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Owner` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `EventType` tinyint(1) UNSIGNED NOT NULL DEFAULT 4,
  `TextureID` int(10) NOT NULL DEFAULT -1,
  `Date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `LockDate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`EventID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for calendar_invites
-- ----------------------------
DROP TABLE IF EXISTS `calendar_invites`;
CREATE TABLE `calendar_invites`  (
  `InviteID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `EventID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Invitee` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Sender` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ResponseTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ModerationRank` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`InviteID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for challenge
-- ----------------------------
DROP TABLE IF EXISTS `challenge`;
CREATE TABLE `challenge`  (
  `ID` int(11) NOT NULL,
  `GuildID` bigint(20) NOT NULL DEFAULT 0,
  `MapID` mediumint(9) NOT NULL DEFAULT 0,
  `ChallengeID` mediumint(6) NOT NULL DEFAULT 0,
  `RecordTime` int(11) NOT NULL DEFAULT 0,
  `Date` int(11) NOT NULL DEFAULT 0,
  `ChallengeLevel` smallint(6) NOT NULL DEFAULT 0,
  `TimerLevel` smallint(6) NOT NULL DEFAULT 0,
  `Affixes` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ChestID` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `mapID`(`MapID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of challenge
-- ----------------------------
INSERT INTO `challenge` VALUES (1, 0, 1466, 0, 273561, 1546792860, 10, 3, '', 252668);
INSERT INTO `challenge` VALUES (2, 0, 1466, 0, 152150, 1546793630, 10, 3, '', 252668);
INSERT INTO `challenge` VALUES (3, 0, 1501, 0, 2727878, 1558133724, 21, 0, '5 14 10 ', 252677);
INSERT INTO `challenge` VALUES (4, 0, 1477, 0, 1984493, 1558136236, 20, 2, '5 14 10 ', 252056);
INSERT INTO `challenge` VALUES (5, 0, 1477, 0, 2427970, 1558178561, 23, 1, '5 14 10 ', 252056);
INSERT INTO `challenge` VALUES (6, 0, 1501, 0, 3157539, 1558199441, 24, 0, '5 14 10 ', 252677);
INSERT INTO `challenge` VALUES (7, 0, 1456, 0, 2028229, 1558202188, 22, 1, '5 14 10 ', 252665);
INSERT INTO `challenge` VALUES (8, 0, 1492, 0, 1610491, 1558204984, 20, 0, '5 14 10 ', 252680);
INSERT INTO `challenge` VALUES (9, 0, 1477, 0, 1549741, 1558212257, 19, 3, '5 14 10 ', 252056);
INSERT INTO `challenge` VALUES (10, 0, 1492, 0, 1672740, 1558213817, 22, 0, '5 14 10 ', 252680);
INSERT INTO `challenge` VALUES (11, 0, 1493, 0, 3105862, 1558218007, 21, 0, '5 14 10 ', 252674);
INSERT INTO `challenge` VALUES (12, 0, 1458, 0, 1800896, 1558219919, 20, 1, '5 14 10 ', 252671);
INSERT INTO `challenge` VALUES (13, 0, 1466, 0, 1338187, 1558221863, 21, 2, '5 14 10 ', 252668);
INSERT INTO `challenge` VALUES (14, 0, 1458, 0, 2032340, 1558224045, 23, 0, '5 14 10 ', 252671);
INSERT INTO `challenge` VALUES (15, 0, 1651, 0, 1674529, 1558266353, 22, 2, '5 14 10 ', 269871);
INSERT INTO `challenge` VALUES (16, 0, 1753, 0, 2131830, 1558907561, 22, 0, '6 4 9 ', 272689);
INSERT INTO `challenge` VALUES (17, 0, 1492, 0, 1151400, 1558908867, 21, 2, '6 4 9 ', 252680);
INSERT INTO `challenge` VALUES (18, 0, 1477, 0, 2254960, 1558911214, 23, 1, '6 4 9 ', 252056);
INSERT INTO `challenge` VALUES (19, 1, 1458, 0, 2149442, 1559067354, 24, 0, '6 4 9 ', 252671);
INSERT INTO `challenge` VALUES (20, 1, 1651, 0, 1844431, 1559070955, 19, 2, '6 4 9 ', 269852);
INSERT INTO `challenge` VALUES (21, 1, 1571, 0, 2537718, 1559081724, 19, 0, '6 4 9 ', 252686);
INSERT INTO `challenge` VALUES (22, 1, 1651, 0, 4331811, 1559219291, 23, 0, '6 4 9 ', 269852);
INSERT INTO `challenge` VALUES (23, 1, 1477, 0, 2364143, 1559237729, 21, 1, '6 4 9 ', 252056);
INSERT INTO `challenge` VALUES (24, 1, 1456, 0, 1616304, 1559239390, 20, 2, '6 4 9 ', 252665);
INSERT INTO `challenge` VALUES (25, 1, 1466, 0, 1895417, 1559428751, 23, 0, '7 2 10 ', 252668);
INSERT INTO `challenge` VALUES (26, 1, 1458, 0, 2000234, 1559430816, 22, 0, '7 2 10 ', 252671);
INSERT INTO `challenge` VALUES (27, 1, 1477, 0, 1840601, 1559432979, 21, 2, '7 2 10 ', 252056);
INSERT INTO `challenge` VALUES (28, 1, 1456, 0, 2762397, 1559435729, 23, 0, '7 2 10 ', 252665);
INSERT INTO `challenge` VALUES (29, 1, 1651, 0, 3087125, 1559439102, 18, 0, '7 2 10 ', 269852);
INSERT INTO `challenge` VALUES (30, 1, 1456, 0, 1096942, 1559440431, 17, 3, '7 2 10 ', 252665);
INSERT INTO `challenge` VALUES (31, 1, 1458, 0, 1323940, 1559442257, 20, 2, '7 2 10 ', 252671);
INSERT INTO `challenge` VALUES (32, 1, 1456, 0, 2240010, 1559480444, 22, 0, '7 2 10 ', 252665);
INSERT INTO `challenge` VALUES (33, 1, 1477, 0, 1881686, 1559504677, 20, 2, '7 2 10 ', 252056);
INSERT INTO `challenge` VALUES (34, 1, 1466, 0, 3214439, 1559941847, 22, 0, '7 2 10 ', 252668);
INSERT INTO `challenge` VALUES (35, 1, 1456, 0, 3055663, 1560009878, 21, 0, '9 10 6 ', 252665);
INSERT INTO `challenge` VALUES (36, 1, 1477, 0, 1608273, 1560011920, 20, 3, '9 10 6 ', 252056);
INSERT INTO `challenge` VALUES (37, 1, 1458, 0, 1503774, 1560014126, 22, 2, '9 10 6 ', 252671);
INSERT INTO `challenge` VALUES (38, 1, 1516, 0, 3296680, 1563044883, 22, 0, '9 10 6 ', 252683);
INSERT INTO `challenge` VALUES (39, 1, 1458, 0, 1574050, 1563047670, 21, 2, '9 10 6 ', 252671);
INSERT INTO `challenge` VALUES (40, 1, 1456, 0, 1744580, 1563059559, 20, 1, '9 10 6 ', 252665);
INSERT INTO `challenge` VALUES (41, 1, 1458, 0, 1519230, 1563062458, 21, 2, '9 10 6 ', 252671);

-- ----------------------------
-- Table structure for challenge_key
-- ----------------------------
DROP TABLE IF EXISTS `challenge_key`;
CREATE TABLE `challenge_key`  (
  `guid` int(10) NOT NULL DEFAULT 0,
  `ID` mediumint(6) UNSIGNED NOT NULL DEFAULT 0,
  `Level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Affix` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Affix1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Affix2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `KeyIsCharded` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `timeReset` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `InstanceID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `guid`(`guid`) USING BTREE,
  INDEX `timeReset`(`timeReset`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for challenge_member
-- ----------------------------
DROP TABLE IF EXISTS `challenge_member`;
CREATE TABLE `challenge_member`  (
  `id` int(11) NOT NULL,
  `member` bigint(20) NOT NULL DEFAULT 0,
  `specID` mediumint(6) NOT NULL DEFAULT 0,
  `ChallengeLevel` smallint(6) NOT NULL DEFAULT 0,
  `Date` int(10) NOT NULL DEFAULT 0,
  `ChestID` int(10) NOT NULL DEFAULT 0,
  INDEX `id`(`id`, `member`) USING BTREE,
  INDEX `member`(`member`) USING BTREE,
  INDEX `Date`(`Date`) USING BTREE,
  INDEX `ChallengeLevel`(`ChallengeLevel`) USING BTREE,
  INDEX `ChestID`(`ChestID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of challenge_member
-- ----------------------------
INSERT INTO `challenge_member` VALUES (1, 2, 259, 10, 1546792860, 252668);
INSERT INTO `challenge_member` VALUES (1, 1, 259, 10, 1546792860, 252668);
INSERT INTO `challenge_member` VALUES (2, 2, 259, 10, 1546793630, 252668);
INSERT INTO `challenge_member` VALUES (2, 1, 259, 10, 1546793630, 252668);
INSERT INTO `challenge_member` VALUES (3, 1363267, 577, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (3, 1363263, 73, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (3, 1363250, 259, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (3, 1363249, 105, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (3, 1363248, 253, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (4, 1363267, 577, 20, 1558136236, 252056);
INSERT INTO `challenge_member` VALUES (4, 1363263, 73, 20, 1558136236, 252056);
INSERT INTO `challenge_member` VALUES (4, 1363250, 259, 20, 1558136236, 252056);
INSERT INTO `challenge_member` VALUES (4, 1363248, 253, 20, 1558136236, 252056);
INSERT INTO `challenge_member` VALUES (5, 1363267, 577, 23, 1558178561, 252056);
INSERT INTO `challenge_member` VALUES (5, 1363263, 73, 23, 1558178561, 252056);
INSERT INTO `challenge_member` VALUES (5, 1363250, 259, 23, 1558178561, 252056);
INSERT INTO `challenge_member` VALUES (5, 1363248, 253, 23, 1558178561, 252056);
INSERT INTO `challenge_member` VALUES (6, 1363267, 577, 24, 1558199441, 252677);
INSERT INTO `challenge_member` VALUES (6, 1363263, 73, 24, 1558199441, 252677);
INSERT INTO `challenge_member` VALUES (6, 1363250, 259, 24, 1558199441, 252677);
INSERT INTO `challenge_member` VALUES (6, 1363248, 253, 24, 1558199441, 252677);
INSERT INTO `challenge_member` VALUES (7, 1363267, 577, 22, 1558202188, 252665);
INSERT INTO `challenge_member` VALUES (7, 1363263, 73, 22, 1558202188, 252665);
INSERT INTO `challenge_member` VALUES (7, 1363250, 259, 22, 1558202188, 252665);
INSERT INTO `challenge_member` VALUES (7, 1363248, 253, 22, 1558202188, 252665);
INSERT INTO `challenge_member` VALUES (8, 1363267, 577, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (8, 1363263, 73, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (8, 1363250, 259, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (8, 1363249, 105, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (8, 1363248, 253, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (9, 1363267, 577, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (9, 1363263, 73, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (9, 1363250, 259, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (9, 1363249, 105, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (9, 1363248, 253, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (10, 1363267, 577, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (10, 1363263, 73, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (10, 1363250, 259, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (10, 1363249, 105, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (10, 1363248, 253, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (11, 1363267, 577, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (11, 1363263, 73, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (11, 1363250, 259, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (11, 1363249, 105, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (11, 1363248, 253, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (12, 1363267, 577, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (12, 1363263, 73, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (12, 1363250, 259, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (12, 1363249, 105, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (12, 1363248, 253, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (13, 1363267, 577, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (13, 1363263, 73, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (13, 1363250, 259, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (13, 1363249, 105, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (13, 1363248, 253, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (14, 1363267, 577, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (14, 1363263, 73, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (14, 1363250, 259, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (14, 1363249, 105, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (14, 1363248, 253, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (15, 1363267, 577, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (15, 1363263, 73, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (15, 1363250, 259, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (15, 1363249, 105, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (15, 1363248, 253, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (16, 1363267, 577, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (16, 1363263, 73, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (16, 1363250, 259, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (16, 1363249, 105, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (16, 1363248, 253, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (17, 1363267, 577, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (17, 1363263, 73, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (17, 1363250, 259, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (17, 1363249, 105, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (17, 1363248, 253, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (18, 1363267, 577, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (18, 1363263, 73, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (18, 1363250, 259, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (18, 1363249, 105, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (18, 1363248, 253, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (19, 1363267, 577, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (19, 1363263, 73, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (19, 1363250, 259, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (19, 1363249, 105, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (19, 1363248, 253, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (20, 1363267, 577, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (20, 1363263, 73, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (20, 1363250, 259, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (20, 1363249, 105, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (20, 1363248, 253, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (21, 1363267, 577, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (21, 1363263, 73, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (21, 1363250, 259, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (21, 1363249, 102, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (21, 1363248, 253, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (22, 1363267, 577, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (22, 1363263, 73, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (22, 1363250, 259, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (22, 1363249, 105, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (22, 1363248, 253, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (23, 1363267, 577, 21, 1559237729, 252056);
INSERT INTO `challenge_member` VALUES (23, 1363263, 73, 21, 1559237729, 252056);
INSERT INTO `challenge_member` VALUES (23, 1363250, 259, 21, 1559237729, 252056);
INSERT INTO `challenge_member` VALUES (23, 1363248, 253, 21, 1559237729, 252056);
INSERT INTO `challenge_member` VALUES (24, 1363267, 577, 20, 1559239390, 252665);
INSERT INTO `challenge_member` VALUES (24, 1363263, 73, 20, 1559239390, 252665);
INSERT INTO `challenge_member` VALUES (24, 1363250, 259, 20, 1559239390, 252665);
INSERT INTO `challenge_member` VALUES (24, 1363248, 253, 20, 1559239390, 252665);
INSERT INTO `challenge_member` VALUES (25, 1363267, 577, 23, 1559428751, 252668);
INSERT INTO `challenge_member` VALUES (25, 1363263, 73, 23, 1559428751, 252668);
INSERT INTO `challenge_member` VALUES (25, 1363250, 259, 23, 1559428751, 252668);
INSERT INTO `challenge_member` VALUES (25, 1363248, 253, 23, 1559428751, 252668);
INSERT INTO `challenge_member` VALUES (26, 1363267, 577, 22, 1559430816, 252671);
INSERT INTO `challenge_member` VALUES (26, 1363263, 73, 22, 1559430816, 252671);
INSERT INTO `challenge_member` VALUES (26, 1363250, 259, 22, 1559430816, 252671);
INSERT INTO `challenge_member` VALUES (26, 1363248, 253, 22, 1559430816, 252671);
INSERT INTO `challenge_member` VALUES (27, 1363267, 577, 21, 1559432979, 252056);
INSERT INTO `challenge_member` VALUES (27, 1363263, 73, 21, 1559432979, 252056);
INSERT INTO `challenge_member` VALUES (27, 1363250, 259, 21, 1559432979, 252056);
INSERT INTO `challenge_member` VALUES (27, 1363248, 253, 21, 1559432979, 252056);
INSERT INTO `challenge_member` VALUES (28, 1363267, 577, 23, 1559435729, 252665);
INSERT INTO `challenge_member` VALUES (28, 1363263, 73, 23, 1559435729, 252665);
INSERT INTO `challenge_member` VALUES (28, 1363250, 259, 23, 1559435729, 252665);
INSERT INTO `challenge_member` VALUES (28, 1363248, 253, 23, 1559435729, 252665);
INSERT INTO `challenge_member` VALUES (29, 1363267, 577, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (29, 1363263, 73, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (29, 1363251, 64, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (29, 1363250, 259, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (29, 1363248, 253, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (30, 1363267, 577, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (30, 1363263, 73, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (30, 1363251, 64, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (30, 1363250, 259, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (30, 1363248, 253, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (31, 1363267, 577, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (31, 1363263, 73, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (31, 1363251, 63, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (31, 1363250, 259, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (31, 1363248, 253, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (32, 1363267, 577, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (32, 1363263, 73, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (32, 1363250, 259, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (32, 1363249, 105, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (32, 1363248, 253, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (33, 1363267, 577, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (33, 1363263, 73, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (33, 1363250, 259, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (33, 1363249, 105, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (33, 1363248, 253, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (34, 1363267, 577, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (34, 1363263, 73, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (34, 1363250, 259, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (34, 1363249, 105, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (34, 1363248, 253, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (35, 1363267, 577, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (35, 1363263, 73, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (35, 1363250, 259, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (35, 1363249, 105, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (35, 1363248, 253, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (36, 1363267, 577, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (36, 1363263, 73, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (36, 1363250, 259, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (36, 1363249, 105, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (36, 1363248, 253, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (37, 1363267, 577, 22, 1560014126, 252671);
INSERT INTO `challenge_member` VALUES (37, 1363263, 73, 22, 1560014126, 252671);
INSERT INTO `challenge_member` VALUES (37, 1363250, 259, 22, 1560014126, 252671);
INSERT INTO `challenge_member` VALUES (37, 1363248, 253, 22, 1560014126, 252671);
INSERT INTO `challenge_member` VALUES (38, 1363267, 577, 22, 1563044883, 252683);
INSERT INTO `challenge_member` VALUES (38, 1363263, 73, 22, 1563044883, 252683);
INSERT INTO `challenge_member` VALUES (38, 1363250, 259, 22, 1563044883, 252683);
INSERT INTO `challenge_member` VALUES (38, 1363248, 253, 22, 1563044883, 252683);
INSERT INTO `challenge_member` VALUES (39, 1363267, 577, 21, 1563047670, 252671);
INSERT INTO `challenge_member` VALUES (39, 1363263, 73, 21, 1563047670, 252671);
INSERT INTO `challenge_member` VALUES (39, 1363250, 259, 21, 1563047670, 252671);
INSERT INTO `challenge_member` VALUES (39, 1363248, 253, 21, 1563047670, 252671);
INSERT INTO `challenge_member` VALUES (40, 1363267, 577, 20, 1563059559, 252665);
INSERT INTO `challenge_member` VALUES (40, 1363263, 73, 20, 1563059559, 252665);
INSERT INTO `challenge_member` VALUES (40, 1363250, 259, 20, 1563059559, 252665);
INSERT INTO `challenge_member` VALUES (40, 1363248, 253, 20, 1563059559, 252665);
INSERT INTO `challenge_member` VALUES (41, 1363267, 577, 21, 1563062458, 252671);
INSERT INTO `challenge_member` VALUES (41, 1363263, 73, 21, 1563062458, 252671);
INSERT INTO `challenge_member` VALUES (41, 1363250, 259, 21, 1563062458, 252671);
INSERT INTO `challenge_member` VALUES (41, 1363248, 253, 21, 1563062458, 252671);
INSERT INTO `challenge_member` VALUES (1, 2, 259, 10, 1546792860, 252668);
INSERT INTO `challenge_member` VALUES (1, 1, 259, 10, 1546792860, 252668);
INSERT INTO `challenge_member` VALUES (2, 2, 259, 10, 1546793630, 252668);
INSERT INTO `challenge_member` VALUES (2, 1, 259, 10, 1546793630, 252668);
INSERT INTO `challenge_member` VALUES (3, 1363267, 577, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (3, 1363263, 73, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (3, 1363250, 259, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (3, 1363249, 105, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (3, 1363248, 253, 21, 1558133724, 252677);
INSERT INTO `challenge_member` VALUES (4, 1363267, 577, 20, 1558136236, 252056);
INSERT INTO `challenge_member` VALUES (4, 1363263, 73, 20, 1558136236, 252056);
INSERT INTO `challenge_member` VALUES (4, 1363250, 259, 20, 1558136236, 252056);
INSERT INTO `challenge_member` VALUES (4, 1363248, 253, 20, 1558136236, 252056);
INSERT INTO `challenge_member` VALUES (5, 1363267, 577, 23, 1558178561, 252056);
INSERT INTO `challenge_member` VALUES (5, 1363263, 73, 23, 1558178561, 252056);
INSERT INTO `challenge_member` VALUES (5, 1363250, 259, 23, 1558178561, 252056);
INSERT INTO `challenge_member` VALUES (5, 1363248, 253, 23, 1558178561, 252056);
INSERT INTO `challenge_member` VALUES (6, 1363267, 577, 24, 1558199441, 252677);
INSERT INTO `challenge_member` VALUES (6, 1363263, 73, 24, 1558199441, 252677);
INSERT INTO `challenge_member` VALUES (6, 1363250, 259, 24, 1558199441, 252677);
INSERT INTO `challenge_member` VALUES (6, 1363248, 253, 24, 1558199441, 252677);
INSERT INTO `challenge_member` VALUES (7, 1363267, 577, 22, 1558202188, 252665);
INSERT INTO `challenge_member` VALUES (7, 1363263, 73, 22, 1558202188, 252665);
INSERT INTO `challenge_member` VALUES (7, 1363250, 259, 22, 1558202188, 252665);
INSERT INTO `challenge_member` VALUES (7, 1363248, 253, 22, 1558202188, 252665);
INSERT INTO `challenge_member` VALUES (8, 1363267, 577, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (8, 1363263, 73, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (8, 1363250, 259, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (8, 1363249, 105, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (8, 1363248, 253, 20, 1558204984, 252680);
INSERT INTO `challenge_member` VALUES (9, 1363267, 577, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (9, 1363263, 73, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (9, 1363250, 259, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (9, 1363249, 105, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (9, 1363248, 253, 19, 1558212257, 252056);
INSERT INTO `challenge_member` VALUES (10, 1363267, 577, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (10, 1363263, 73, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (10, 1363250, 259, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (10, 1363249, 105, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (10, 1363248, 253, 22, 1558213817, 252680);
INSERT INTO `challenge_member` VALUES (11, 1363267, 577, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (11, 1363263, 73, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (11, 1363250, 259, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (11, 1363249, 105, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (11, 1363248, 253, 21, 1558218007, 252674);
INSERT INTO `challenge_member` VALUES (12, 1363267, 577, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (12, 1363263, 73, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (12, 1363250, 259, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (12, 1363249, 105, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (12, 1363248, 253, 20, 1558219919, 252671);
INSERT INTO `challenge_member` VALUES (13, 1363267, 577, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (13, 1363263, 73, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (13, 1363250, 259, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (13, 1363249, 105, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (13, 1363248, 253, 21, 1558221863, 252668);
INSERT INTO `challenge_member` VALUES (14, 1363267, 577, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (14, 1363263, 73, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (14, 1363250, 259, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (14, 1363249, 105, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (14, 1363248, 253, 23, 1558224045, 252671);
INSERT INTO `challenge_member` VALUES (15, 1363267, 577, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (15, 1363263, 73, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (15, 1363250, 259, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (15, 1363249, 105, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (15, 1363248, 253, 22, 1558266353, 269871);
INSERT INTO `challenge_member` VALUES (16, 1363267, 577, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (16, 1363263, 73, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (16, 1363250, 259, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (16, 1363249, 105, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (16, 1363248, 253, 22, 1558907561, 272689);
INSERT INTO `challenge_member` VALUES (17, 1363267, 577, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (17, 1363263, 73, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (17, 1363250, 259, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (17, 1363249, 105, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (17, 1363248, 253, 21, 1558908867, 252680);
INSERT INTO `challenge_member` VALUES (18, 1363267, 577, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (18, 1363263, 73, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (18, 1363250, 259, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (18, 1363249, 105, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (18, 1363248, 253, 23, 1558911214, 252056);
INSERT INTO `challenge_member` VALUES (19, 1363267, 577, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (19, 1363263, 73, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (19, 1363250, 259, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (19, 1363249, 105, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (19, 1363248, 253, 24, 1559067354, 252671);
INSERT INTO `challenge_member` VALUES (20, 1363267, 577, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (20, 1363263, 73, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (20, 1363250, 259, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (20, 1363249, 105, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (20, 1363248, 253, 19, 1559070955, 269852);
INSERT INTO `challenge_member` VALUES (21, 1363267, 577, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (21, 1363263, 73, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (21, 1363250, 259, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (21, 1363249, 102, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (21, 1363248, 253, 19, 1559081724, 252686);
INSERT INTO `challenge_member` VALUES (22, 1363267, 577, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (22, 1363263, 73, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (22, 1363250, 259, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (22, 1363249, 105, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (22, 1363248, 253, 23, 1559219291, 269852);
INSERT INTO `challenge_member` VALUES (23, 1363267, 577, 21, 1559237729, 252056);
INSERT INTO `challenge_member` VALUES (23, 1363263, 73, 21, 1559237729, 252056);
INSERT INTO `challenge_member` VALUES (23, 1363250, 259, 21, 1559237729, 252056);
INSERT INTO `challenge_member` VALUES (23, 1363248, 253, 21, 1559237729, 252056);
INSERT INTO `challenge_member` VALUES (24, 1363267, 577, 20, 1559239390, 252665);
INSERT INTO `challenge_member` VALUES (24, 1363263, 73, 20, 1559239390, 252665);
INSERT INTO `challenge_member` VALUES (24, 1363250, 259, 20, 1559239390, 252665);
INSERT INTO `challenge_member` VALUES (24, 1363248, 253, 20, 1559239390, 252665);
INSERT INTO `challenge_member` VALUES (25, 1363267, 577, 23, 1559428751, 252668);
INSERT INTO `challenge_member` VALUES (25, 1363263, 73, 23, 1559428751, 252668);
INSERT INTO `challenge_member` VALUES (25, 1363250, 259, 23, 1559428751, 252668);
INSERT INTO `challenge_member` VALUES (25, 1363248, 253, 23, 1559428751, 252668);
INSERT INTO `challenge_member` VALUES (26, 1363267, 577, 22, 1559430816, 252671);
INSERT INTO `challenge_member` VALUES (26, 1363263, 73, 22, 1559430816, 252671);
INSERT INTO `challenge_member` VALUES (26, 1363250, 259, 22, 1559430816, 252671);
INSERT INTO `challenge_member` VALUES (26, 1363248, 253, 22, 1559430816, 252671);
INSERT INTO `challenge_member` VALUES (27, 1363267, 577, 21, 1559432979, 252056);
INSERT INTO `challenge_member` VALUES (27, 1363263, 73, 21, 1559432979, 252056);
INSERT INTO `challenge_member` VALUES (27, 1363250, 259, 21, 1559432979, 252056);
INSERT INTO `challenge_member` VALUES (27, 1363248, 253, 21, 1559432979, 252056);
INSERT INTO `challenge_member` VALUES (28, 1363267, 577, 23, 1559435729, 252665);
INSERT INTO `challenge_member` VALUES (28, 1363263, 73, 23, 1559435729, 252665);
INSERT INTO `challenge_member` VALUES (28, 1363250, 259, 23, 1559435729, 252665);
INSERT INTO `challenge_member` VALUES (28, 1363248, 253, 23, 1559435729, 252665);
INSERT INTO `challenge_member` VALUES (29, 1363267, 577, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (29, 1363263, 73, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (29, 1363251, 64, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (29, 1363250, 259, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (29, 1363248, 253, 18, 1559439102, 269852);
INSERT INTO `challenge_member` VALUES (30, 1363267, 577, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (30, 1363263, 73, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (30, 1363251, 64, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (30, 1363250, 259, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (30, 1363248, 253, 17, 1559440431, 252665);
INSERT INTO `challenge_member` VALUES (31, 1363267, 577, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (31, 1363263, 73, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (31, 1363251, 63, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (31, 1363250, 259, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (31, 1363248, 253, 20, 1559442257, 252671);
INSERT INTO `challenge_member` VALUES (32, 1363267, 577, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (32, 1363263, 73, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (32, 1363250, 259, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (32, 1363249, 105, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (32, 1363248, 253, 22, 1559480444, 252665);
INSERT INTO `challenge_member` VALUES (33, 1363267, 577, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (33, 1363263, 73, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (33, 1363250, 259, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (33, 1363249, 105, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (33, 1363248, 253, 20, 1559504677, 252056);
INSERT INTO `challenge_member` VALUES (34, 1363267, 577, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (34, 1363263, 73, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (34, 1363250, 259, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (34, 1363249, 105, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (34, 1363248, 253, 22, 1559941847, 252668);
INSERT INTO `challenge_member` VALUES (35, 1363267, 577, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (35, 1363263, 73, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (35, 1363250, 259, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (35, 1363249, 105, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (35, 1363248, 253, 21, 1560009878, 252665);
INSERT INTO `challenge_member` VALUES (36, 1363267, 577, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (36, 1363263, 73, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (36, 1363250, 259, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (36, 1363249, 105, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (36, 1363248, 253, 20, 1560011920, 252056);
INSERT INTO `challenge_member` VALUES (37, 1363267, 577, 22, 1560014126, 252671);
INSERT INTO `challenge_member` VALUES (37, 1363263, 73, 22, 1560014126, 252671);
INSERT INTO `challenge_member` VALUES (37, 1363250, 259, 22, 1560014126, 252671);
INSERT INTO `challenge_member` VALUES (37, 1363248, 253, 22, 1560014126, 252671);
INSERT INTO `challenge_member` VALUES (38, 1363267, 577, 22, 1563044883, 252683);
INSERT INTO `challenge_member` VALUES (38, 1363263, 73, 22, 1563044883, 252683);
INSERT INTO `challenge_member` VALUES (38, 1363250, 259, 22, 1563044883, 252683);
INSERT INTO `challenge_member` VALUES (38, 1363248, 253, 22, 1563044883, 252683);
INSERT INTO `challenge_member` VALUES (39, 1363267, 577, 21, 1563047670, 252671);
INSERT INTO `challenge_member` VALUES (39, 1363263, 73, 21, 1563047670, 252671);
INSERT INTO `challenge_member` VALUES (39, 1363250, 259, 21, 1563047670, 252671);
INSERT INTO `challenge_member` VALUES (39, 1363248, 253, 21, 1563047670, 252671);
INSERT INTO `challenge_member` VALUES (40, 1363267, 577, 20, 1563059559, 252665);
INSERT INTO `challenge_member` VALUES (40, 1363263, 73, 20, 1563059559, 252665);
INSERT INTO `challenge_member` VALUES (40, 1363250, 259, 20, 1563059559, 252665);
INSERT INTO `challenge_member` VALUES (40, 1363248, 253, 20, 1563059559, 252665);
INSERT INTO `challenge_member` VALUES (41, 1363267, 577, 21, 1563062458, 252671);
INSERT INTO `challenge_member` VALUES (41, 1363263, 73, 21, 1563062458, 252671);
INSERT INTO `challenge_member` VALUES (41, 1363250, 259, 21, 1563062458, 252671);
INSERT INTO `challenge_member` VALUES (41, 1363248, 253, 21, 1563062458, 252671);

-- ----------------------------
-- Table structure for challenge_oplote_loot
-- ----------------------------
DROP TABLE IF EXISTS `challenge_oplote_loot`;
CREATE TABLE `challenge_oplote_loot`  (
  `guid` int(10) NOT NULL DEFAULT 0,
  `chestListID` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `date` int(10) NOT NULL DEFAULT 0,
  `ChallengeLevel` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for channels
-- ----------------------------
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels`  (
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `team` int(10) UNSIGNED NOT NULL,
  `announce` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `ownership` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bannedList` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastUsed` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`name`, `team`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Channel System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_account_data
-- ----------------------------
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_achievement
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `achievement` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `achievement`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_achievement_progress
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `criteria` int(10) UNSIGNED NOT NULL,
  `counter` bigint(20) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `criteria`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_action
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `spec` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `button` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `action` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spec`, `button`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_adventure_quest
-- ----------------------------
DROP TABLE IF EXISTS `character_adventure_quest`;
CREATE TABLE `character_adventure_quest`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `questID` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `guid`(`guid`) USING BTREE,
  INDEX `questID`(`questID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for character_archaeology_branchs
-- ----------------------------
DROP TABLE IF EXISTS `character_archaeology_branchs`;
CREATE TABLE `character_archaeology_branchs`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `projectId` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `projectId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_archaeology_digsites
-- ----------------------------
DROP TABLE IF EXISTS `character_archaeology_digsites`;
CREATE TABLE `character_archaeology_digsites`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `digsiteId` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `point_x` float NULL DEFAULT 0,
  `point_y` float NULL DEFAULT 0,
  `count` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `digsiteId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_archaeology_history
-- ----------------------------
DROP TABLE IF EXISTS `character_archaeology_history`;
CREATE TABLE `character_archaeology_history`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `projectId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `projectId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_arena_data
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_data`;
CREATE TABLE `character_arena_data`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `slot` tinyint(3) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bestRatingOfWeek` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bestRatingOfSeason` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `matchMakerRating` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `weekGames` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `weekWins` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `prevWeekGames` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `prevWeekWins` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `seasonGames` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `seasonWins` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ranking` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dayGames` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dayWins` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `slot`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_aura
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) UNSIGNED NOT NULL,
  `effectMask` int(10) UNSIGNED NOT NULL,
  `recalculateMask` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `difficulty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stackCount` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `maxDuration` int(11) NOT NULL DEFAULT 0,
  `remainTime` int(11) NOT NULL DEFAULT 0,
  `remainCharges` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `castItemId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `castItemLevel` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`guid`, `casterGuid`, `itemGuid`, `spell`, `effectMask`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_aura_effect
-- ----------------------------
DROP TABLE IF EXISTS `character_aura_effect`;
CREATE TABLE `character_aura_effect`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) UNSIGNED NOT NULL,
  `effectMask` int(10) UNSIGNED NOT NULL,
  `effectIndex` tinyint(3) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `baseAmount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `casterGuid`, `itemGuid`, `spell`, `effectMask`, `effectIndex`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_banned
-- ----------------------------
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE `character_banned`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `bandate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unbandate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bannedby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banreason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`guid`, `bandate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Ban List' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_battleground_data
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `instanceId` int(10) UNSIGNED NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) UNSIGNED NOT NULL,
  `joinX` float NOT NULL DEFAULT 0,
  `joinY` float NOT NULL DEFAULT 0,
  `joinZ` float NOT NULL DEFAULT 0,
  `joinO` float NOT NULL DEFAULT 0,
  `joinMapId` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `taxiStart` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `taxiEnd` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mountSpell` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_battleground_random
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_completed_challenges
-- ----------------------------
DROP TABLE IF EXISTS `character_completed_challenges`;
CREATE TABLE `character_completed_challenges`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `KeyId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `MapId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `BestCompletion` int(12) UNSIGNED NULL DEFAULT 0,
  `LastCompletion` int(12) UNSIGNED NULL DEFAULT 0,
  `Medal` int(10) UNSIGNED NULL DEFAULT 0,
  `MedalDate` int(12) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `KeyId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_cuf_profiles
-- ----------------------------
DROP TABLE IF EXISTS `character_cuf_profiles`;
CREATE TABLE `character_cuf_profiles`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Guid',
  `id` tinyint(3) UNSIGNED NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame Sort By',
  `healthText` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame Health Text',
  `boolOptions` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Many Configurable Bool Options',
  `topPoint` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame top alignment',
  `bottomPoint` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame bottom alignment',
  `leftPoint` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame left alignment',
  `topOffset` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame position offset from top',
  `bottomOffset` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame position offset from bottom',
  `leftOffset` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Frame position offset from left',
  PRIMARY KEY (`guid`, `id`) USING BTREE,
  INDEX `index`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_currency
-- ----------------------------
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE `character_currency`  (
  `CharacterGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Currency` smallint(5) UNSIGNED NOT NULL,
  `Quantity` int(10) UNSIGNED NOT NULL,
  `WeeklyQuantity` int(10) UNSIGNED NOT NULL,
  `TrackedQuantity` int(10) UNSIGNED NOT NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL,
  `WeekCap` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`CharacterGuid`, `Currency`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_customizations
-- ----------------------------
DROP TABLE IF EXISTS `character_customizations`;
CREATE TABLE `character_customizations`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `chrCustomizationOptionID` int(10) UNSIGNED NOT NULL,
  `chrCustomizationChoiceID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `chrCustomizationOptionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_declinedname
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dative` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `accusative` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `instrumental` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `prepositional` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_equipmentsets
-- ----------------------------
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets`  (
  `guid` bigint(20) NOT NULL DEFAULT 0,
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `iconname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ignore_mask` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `AssignedSpecIndex` int(11) NOT NULL DEFAULT -1,
  `item0` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item1` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item2` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item3` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item4` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item5` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item6` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item7` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item8` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item9` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item10` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item11` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item12` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item13` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item14` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item15` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item16` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item17` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item18` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`setguid`) USING BTREE,
  UNIQUE INDEX `idx_set`(`guid`, `setguid`, `setindex`) USING BTREE,
  INDEX `Idx_setindex`(`setindex`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_favorite_auctions
-- ----------------------------
DROP TABLE IF EXISTS `character_favorite_auctions`;
CREATE TABLE `character_favorite_auctions`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `itemId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `itemLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `battlePetSpeciesId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `suffixItemNameDescriptionId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `order`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_fishingsteps
-- ----------------------------
DROP TABLE IF EXISTS `character_fishingsteps`;
CREATE TABLE `character_fishingsteps`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `fishingSteps` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_garrison
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison`;
CREATE TABLE `character_garrison`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `siteLevelId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `followerActivationsRemainingToday` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_garrison_blueprints
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_blueprints`;
CREATE TABLE `character_garrison_blueprints`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `garrison_type` tinyint(3) UNSIGNED NOT NULL,
  `buildingId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `garrison_type`, `buildingId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_garrison_buildings
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_buildings`;
CREATE TABLE `character_garrison_buildings`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `garrison_type` tinyint(3) UNSIGNED NOT NULL,
  `plotInstanceId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buildingId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `timeBuilt` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `garrison_type`, `plotInstanceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_garrison_follower_abilities
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_follower_abilities`;
CREATE TABLE `character_garrison_follower_abilities`  (
  `dbId` bigint(20) UNSIGNED NOT NULL,
  `abilityId` int(10) UNSIGNED NOT NULL,
  `slot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`dbId`, `abilityId`, `slot`) USING BTREE,
  CONSTRAINT `fk_foll_dbid` FOREIGN KEY (`dbId`) REFERENCES `character_garrison_followers` (`dbId`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_garrison_followers
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_followers`;
CREATE TABLE `character_garrison_followers`  (
  `dbId` bigint(20) UNSIGNED NOT NULL,
  `guid` bigint(20) UNSIGNED NOT NULL,
  `garrison_type` tinyint(3) UNSIGNED NOT NULL,
  `followerId` int(10) UNSIGNED NOT NULL,
  `quality` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 90,
  `itemLevelWeapon` int(10) UNSIGNED NOT NULL DEFAULT 600,
  `itemLevelArmor` int(10) UNSIGNED NOT NULL DEFAULT 600,
  `xp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `currentBuilding` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `currentMission` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`dbId`) USING BTREE,
  UNIQUE INDEX `idx_guid_id`(`guid`, `followerId`) USING BTREE,
  CONSTRAINT `fk_foll_owner` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_garrison_mission_rewards
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_mission_rewards`;
CREATE TABLE `character_garrison_mission_rewards`  (
  `dbId` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `itemId` int(10) NOT NULL DEFAULT 0,
  `itemQuantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `currencyId` int(10) NOT NULL DEFAULT 0,
  `currencyQuantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `FollowerXP` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `BonusAbilityId` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_garrison_missions
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_missions`;
CREATE TABLE `character_garrison_missions`  (
  `dbId` bigint(20) UNSIGNED NOT NULL,
  `guid` bigint(20) UNSIGNED NOT NULL,
  `garrison_type` tinyint(3) UNSIGNED NOT NULL,
  `missionId` int(10) UNSIGNED NOT NULL,
  `offerTime` int(10) NOT NULL,
  `startTime` int(10) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`dbId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_garrison_work_order
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_work_order`;
CREATE TABLE `character_garrison_work_order`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `garrison_id` bigint(20) UNSIGNED NOT NULL,
  `plot_instance_id` int(10) UNSIGNED NOT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `creation_time` int(10) UNSIGNED NOT NULL,
  `complete_time` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `garrison_id`(`garrison_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_gifts
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `entry` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_guid`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_glyphs
-- ----------------------------
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `talentGroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `glyphId` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `talentGroup`, `glyphId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_homebind
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `zoneId` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_instance
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `instance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permanent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `extendState` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`guid`, `instance`) USING BTREE,
  INDEX `instance`(`instance`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_inventory
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `bag` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `slot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`) USING BTREE,
  UNIQUE INDEX `guid`(`guid`, `bag`, `slot`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_pet
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `entry` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner` bigint(10) UNSIGNED NOT NULL DEFAULT 0,
  `modelid` int(10) UNSIGNED NULL DEFAULT 0,
  `CreatedBySpell` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `PetType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `exp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Reactstate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `slot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `curhealth` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `curmana` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `savetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `abdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `specialization` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `owner`(`owner`) USING BTREE,
  INDEX `idx_slot`(`slot`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_pet_declinedname
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `genitive` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `dative` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `accusative` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `instrumental` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `prepositional` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `owner_key`(`owner`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_pvp_talent
-- ----------------------------
DROP TABLE IF EXISTS `character_pvp_talent`;
CREATE TABLE `character_pvp_talent`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `talentId0` int(10) UNSIGNED NOT NULL,
  `talentId1` int(10) UNSIGNED NOT NULL,
  `talentId2` int(10) UNSIGNED NOT NULL,
  `talentId3` int(10) UNSIGNED NOT NULL,
  `talentGroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `talentGroup`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_queststatus
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `quest` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `timer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `explored` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_queststatus_daily
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `quest`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_queststatus_monthly
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_monthly`;
CREATE TABLE `character_queststatus_monthly`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`, `quest`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_queststatus_objectives
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_objectives`;
CREATE TABLE `character_queststatus_objectives`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `quest` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `objective` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `quest`, `objective`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_queststatus_objectives_criteria
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_objectives_criteria`;
CREATE TABLE `character_queststatus_objectives_criteria`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `questObjectiveId` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`, `questObjectiveId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_queststatus_objectives_criteria_progress
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_objectives_criteria_progress`;
CREATE TABLE `character_queststatus_objectives_criteria_progress`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `criteriaId` int(10) UNSIGNED NOT NULL,
  `counter` bigint(20) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `criteriaId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_queststatus_rewarded
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE `character_queststatus_rewarded`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  `active` tinyint(10) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`guid`, `quest`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_queststatus_seasonal
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_seasonal`;
CREATE TABLE `character_queststatus_seasonal`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  `event` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`, `quest`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_queststatus_weekly
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `quest` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`, `quest`) USING BTREE,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_recovery
-- ----------------------------
DROP TABLE IF EXISTS `character_recovery`;
CREATE TABLE `character_recovery`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `delivered` tinyint(1) NULL DEFAULT 0,
  `account` int(11) UNSIGNED NOT NULL,
  `race` int(11) UNSIGNED NOT NULL,
  `class` int(11) UNSIGNED NOT NULL,
  `level` int(11) UNSIGNED NOT NULL,
  `skill1` int(11) NOT NULL DEFAULT 0,
  `skill1_value` int(11) NOT NULL DEFAULT 0,
  `skill2` int(11) NOT NULL DEFAULT 0,
  `skill2_value` int(11) NOT NULL DEFAULT 0,
  `items` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `spells` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `at_login` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_reputation
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `faction` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `standing` int(11) NOT NULL DEFAULT 0,
  `flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `faction`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_shop
-- ----------------------------
DROP TABLE IF EXISTS `character_shop`;
CREATE TABLE `character_shop`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guid` bigint(20) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `itemId` int(10) NOT NULL DEFAULT 0,
  `itemCount` int(10) NOT NULL DEFAULT 0,
  `delivered` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_skills
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills`  (
  `guid` bigint(20) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) UNSIGNED NOT NULL,
  `value` smallint(5) UNSIGNED NOT NULL,
  `max` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`, `skill`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_social
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `friend` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Friend Flags',
  `note` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`, `friend`, `flags`) USING BTREE,
  INDEX `friend`(`friend`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_spell
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `disabled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_spell_charges
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_charges`;
CREATE TABLE `character_spell_charges`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `categoryId` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rechargeEnd` int(10) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_spell_cooldown
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `item` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Item Identifier',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `categoryId` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell category Id',
  `categoryEnd` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_stats
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxpower1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxpower2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxpower3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxpower4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxpower5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxpower6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `strength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agility` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stamina` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `intellect` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `armor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resHoly` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resFire` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resNature` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resFrost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resShadow` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resArcane` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `blockPct` float UNSIGNED NOT NULL DEFAULT 0,
  `dodgePct` float UNSIGNED NOT NULL DEFAULT 0,
  `parryPct` float UNSIGNED NOT NULL DEFAULT 0,
  `critPct` float UNSIGNED NOT NULL DEFAULT 0,
  `rangedCritPct` float UNSIGNED NOT NULL DEFAULT 0,
  `spellCritPct` float UNSIGNED NOT NULL DEFAULT 0,
  `attackPower` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rangedAttackPower` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spellPower` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resilience` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_talent
-- ----------------------------
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `talentId` mediumint(8) UNSIGNED NOT NULL,
  `talentGroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `talentId`, `talentGroup`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_transmog_outfits
-- ----------------------------
DROP TABLE IF EXISTS `character_transmog_outfits`;
CREATE TABLE `character_transmog_outfits`  (
  `guid` bigint(20) NOT NULL DEFAULT 0,
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `iconname` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ignore_mask` int(11) NOT NULL DEFAULT 0,
  `appearance0` int(10) NOT NULL DEFAULT 0,
  `appearance1` int(10) NOT NULL DEFAULT 0,
  `appearance2` int(10) NOT NULL DEFAULT 0,
  `appearance3` int(10) NOT NULL DEFAULT 0,
  `appearance4` int(10) NOT NULL DEFAULT 0,
  `appearance5` int(10) NOT NULL DEFAULT 0,
  `appearance6` int(10) NOT NULL DEFAULT 0,
  `appearance7` int(10) NOT NULL DEFAULT 0,
  `appearance8` int(10) NOT NULL DEFAULT 0,
  `appearance9` int(10) NOT NULL DEFAULT 0,
  `appearance10` int(10) NOT NULL DEFAULT 0,
  `appearance11` int(10) NOT NULL DEFAULT 0,
  `appearance12` int(10) NOT NULL DEFAULT 0,
  `appearance13` int(10) NOT NULL DEFAULT 0,
  `appearance14` int(10) NOT NULL DEFAULT 0,
  `appearance15` int(10) NOT NULL DEFAULT 0,
  `appearance16` int(10) NOT NULL DEFAULT 0,
  `appearance17` int(10) NOT NULL DEFAULT 0,
  `appearance18` int(10) NOT NULL DEFAULT 0,
  `mainHandEnchant` int(10) NOT NULL DEFAULT 0,
  `offHandEnchant` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`setguid`) USING BTREE,
  UNIQUE INDEX `idx_set`(`guid`, `setguid`, `setindex`) USING BTREE,
  INDEX `Idx_setindex`(`setindex`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_void_storage
-- ----------------------------
DROP TABLE IF EXISTS `character_void_storage`;
CREATE TABLE `character_void_storage`  (
  `itemId` bigint(20) UNSIGNED NOT NULL,
  `playerGuid` bigint(20) UNSIGNED NOT NULL,
  `itemEntry` mediumint(8) UNSIGNED NOT NULL,
  `slot` tinyint(3) UNSIGNED NOT NULL,
  `creatorGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `randomBonusListId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fixedScalingLevel` int(10) UNSIGNED NULL DEFAULT 0,
  `artifactKnowledgeLevel` int(10) UNSIGNED NULL DEFAULT 0,
  `challengeId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeAffix1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeAffix2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeAffix3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeIsCharged` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `bonusListIDs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`itemId`) USING BTREE,
  UNIQUE INDEX `idx_player_slot`(`playerGuid`, `slot`) USING BTREE,
  INDEX `idx_player`(`playerGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_world_quest
-- ----------------------------
DROP TABLE IF EXISTS `character_world_quest`;
CREATE TABLE `character_world_quest`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `questId` int(10) UNSIGNED NOT NULL,
  `lastupdate` int(10) UNSIGNED NOT NULL,
  `timer` int(10) UNSIGNED NOT NULL,
  `variableID` int(10) UNSIGNED NOT NULL,
  `value` int(10) NOT NULL,
  PRIMARY KEY (`guid`, `questId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `account` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `race` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `xp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `money` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `inventorySlots` tinyint(3) UNSIGNED NOT NULL DEFAULT 16,
  `bankSlots` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `restState` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `playerFlags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `playerFlagsEx` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position_x` float NOT NULL DEFAULT 0,
  `position_y` float NOT NULL DEFAULT 0,
  `position_z` float NOT NULL DEFAULT 0,
  `map` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `instance_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dungeonDifficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `raidDifficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 14,
  `legacyRaidDifficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 3,
  `orientation` float NOT NULL DEFAULT 0,
  `taximask` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `cinematic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `totaltime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `leveltime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `logout_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_logout_resting` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `rest_bonus` float NOT NULL DEFAULT 0,
  `resettalents_cost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resettalents_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `numRespecs` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `primarySpecialization` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `trans_x` float NOT NULL DEFAULT 0,
  `trans_y` float NOT NULL DEFAULT 0,
  `trans_z` float NOT NULL DEFAULT 0,
  `trans_o` float NOT NULL DEFAULT 0,
  `transguid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extra_flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `stable_slots` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `at_login` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `zone` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `death_expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `taxi_path` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `totalKills` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `todayKills` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `yesterdayKills` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `chosenTitle` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `watchedFaction` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `drunk` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `health` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `power6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `latency` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `activeTalentGroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lootSpecId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `exploredZones` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `equipmentCache` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `knownTitles` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `actionBars` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `xpRate` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `deleteInfos_Account` int(10) UNSIGNED NULL DEFAULT NULL,
  `deleteInfos_Name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleteDate` int(10) UNSIGNED NULL DEFAULT NULL,
  `honor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `honorLevel` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `prestigeLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `honorRestState` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `honorRestBonus` float NOT NULL DEFAULT 0,
  `lastLoginBuild` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_account`(`account`) USING BTREE,
  INDEX `idx_online`(`online`) USING BTREE,
  INDEX `idx_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for corpse
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `orientation` float NOT NULL DEFAULT 0,
  `mapId` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Map Identifier',
  `displayId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `itemCache` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `race` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dynFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `corpseType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `instanceId` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_type`(`corpseType`) USING BTREE,
  INDEX `idx_instance`(`instanceId`) USING BTREE,
  INDEX `idx_time`(`time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Death System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for corpse_customizations
-- ----------------------------
DROP TABLE IF EXISTS `corpse_customizations`;
CREATE TABLE `corpse_customizations`  (
  `ownerGuid` bigint(20) UNSIGNED NOT NULL,
  `chrCustomizationOptionID` int(10) UNSIGNED NOT NULL,
  `chrCustomizationChoiceID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ownerGuid`, `chrCustomizationOptionID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for corpse_phases
-- ----------------------------
DROP TABLE IF EXISTS `corpse_phases`;
CREATE TABLE `corpse_phases`  (
  `OwnerGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseId` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`OwnerGuid`, `PhaseId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for creature_respawn
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mapId` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `instanceId` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`, `instanceId`) USING BTREE,
  INDEX `idx_instance`(`instanceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Grid Loading System' ROW_FORMAT = Dynamic;

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
-- Table structure for game_event_condition_save
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save`  (
  `eventEntry` tinyint(3) UNSIGNED NOT NULL,
  `condition_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `done` float NULL DEFAULT 0,
  PRIMARY KEY (`eventEntry`, `condition_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_event_save
-- ----------------------------
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save`  (
  `eventEntry` tinyint(3) UNSIGNED NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `next_start` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`eventEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gameobject_respawn
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn`  (
  `guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mapId` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `instanceId` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`, `instanceId`) USING BTREE,
  INDEX `idx_instance`(`instanceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Grid Loading System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gm_bug
-- ----------------------------
DROP TABLE IF EXISTS `gm_bug`;
CREATE TABLE `gm_bug`  (
  `id` int(10) UNSIGNED NOT NULL,
  `playerGuid` bigint(20) UNSIGNED NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mapId` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `facing` float NOT NULL DEFAULT 0,
  `closedBy` bigint(20) NOT NULL DEFAULT 0,
  `assignedTo` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gm_complaint
-- ----------------------------
DROP TABLE IF EXISTS `gm_complaint`;
CREATE TABLE `gm_complaint`  (
  `id` int(10) UNSIGNED NOT NULL,
  `playerGuid` bigint(20) UNSIGNED NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mapId` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `facing` float NOT NULL DEFAULT 0,
  `targetCharacterGuid` bigint(20) UNSIGNED NOT NULL,
  `complaintType` smallint(5) UNSIGNED NOT NULL,
  `reportLineIndex` int(10) NOT NULL,
  `closedBy` bigint(20) NOT NULL DEFAULT 0,
  `assignedTo` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gm_complaint_chatlog
-- ----------------------------
DROP TABLE IF EXISTS `gm_complaint_chatlog`;
CREATE TABLE `gm_complaint_chatlog`  (
  `complaintId` int(10) UNSIGNED NOT NULL,
  `lineId` int(10) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`complaintId`, `lineId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gm_suggestion
-- ----------------------------
DROP TABLE IF EXISTS `gm_suggestion`;
CREATE TABLE `gm_suggestion`  (
  `id` int(10) UNSIGNED NOT NULL,
  `playerGuid` bigint(20) UNSIGNED NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mapId` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `posX` float NOT NULL DEFAULT 0,
  `posY` float NOT NULL DEFAULT 0,
  `posZ` float NOT NULL DEFAULT 0,
  `facing` float NOT NULL DEFAULT 0,
  `closedBy` bigint(20) NOT NULL DEFAULT 0,
  `assignedTo` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_instance
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `instance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permanent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `instance`) USING BTREE,
  INDEX `instance`(`instance`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_member
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member`  (
  `guid` int(10) UNSIGNED NOT NULL,
  `memberGuid` bigint(20) UNSIGNED NOT NULL,
  `memberFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `subgroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `roles` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`memberGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Groups' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `guid` int(10) UNSIGNED NOT NULL,
  `leaderGuid` bigint(20) UNSIGNED NOT NULL,
  `lootMethod` tinyint(3) UNSIGNED NOT NULL,
  `looterGuid` bigint(20) UNSIGNED NOT NULL,
  `lootThreshold` tinyint(3) UNSIGNED NOT NULL,
  `icon1` binary(16) NOT NULL,
  `icon2` binary(16) NOT NULL,
  `icon3` binary(16) NOT NULL,
  `icon4` binary(16) NOT NULL,
  `icon5` binary(16) NOT NULL,
  `icon6` binary(16) NOT NULL,
  `icon7` binary(16) NOT NULL,
  `icon8` binary(16) NOT NULL,
  `groupType` tinyint(3) UNSIGNED NOT NULL,
  `difficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `raidDifficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 14,
  `legacyRaidDifficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 3,
  `masterLooterGuid` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `leaderGuid`(`leaderGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Groups' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild`  (
  `guildid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `leaderguid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `EmblemStyle` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EmblemColor` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BorderStyle` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BorderColor` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BackgroundColor` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `motd` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `createdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `BankMoney` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_achievement
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement`;
CREATE TABLE `guild_achievement`  (
  `guildId` bigint(20) UNSIGNED NOT NULL,
  `achievement` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guids` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`guildId`, `achievement`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_achievement_progress
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement_progress`;
CREATE TABLE `guild_achievement_progress`  (
  `guildId` bigint(20) UNSIGNED NOT NULL,
  `criteria` int(10) UNSIGNED NOT NULL,
  `counter` bigint(20) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `completedGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildId`, `criteria`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_bank_eventlog
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog`  (
  `guildid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Guild Identificator',
  `LogGuid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event type',
  `PlayerGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ItemOrMoney` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ItemStackCount` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DestTabId` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`, `LogGuid`, `TabId`) USING BTREE,
  INDEX `guildid_key`(`guildid`) USING BTREE,
  INDEX `Idx_PlayerGuid`(`PlayerGuid`) USING BTREE,
  INDEX `Idx_LogGuid`(`LogGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_bank_item
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item`  (
  `guildid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `TabId` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SlotId` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`, `TabId`, `SlotId`) USING BTREE,
  INDEX `guildid_key`(`guildid`) USING BTREE,
  INDEX `Idx_item_guid`(`item_guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_bank_right
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right`  (
  `guildid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `TabId` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `rid` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gbright` tinyint(3) NOT NULL DEFAULT 0,
  `SlotPerDay` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`, `TabId`, `rid`) USING BTREE,
  INDEX `guildid_key`(`guildid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_bank_tab
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab`  (
  `guildid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `TabId` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TabName` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `TabIcon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `TabText` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guildid`, `TabId`) USING BTREE,
  INDEX `guildid_key`(`guildid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_challenges
-- ----------------------------
DROP TABLE IF EXISTS `guild_challenges`;
CREATE TABLE `guild_challenges`  (
  `GuildId` int(10) UNSIGNED NOT NULL,
  `ChallengeType` int(1) NOT NULL DEFAULT 0,
  `ChallengeCount` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`GuildId`, `ChallengeType`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_eventlog
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog`  (
  `guildid` bigint(20) UNSIGNED NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) UNSIGNED NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) UNSIGNED NOT NULL COMMENT 'Event type',
  `PlayerGuid1` bigint(20) UNSIGNED NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` bigint(20) UNSIGNED NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) UNSIGNED NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) UNSIGNED NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`, `LogGuid`) USING BTREE,
  INDEX `Idx_PlayerGuid1`(`PlayerGuid1`) USING BTREE,
  INDEX `Idx_PlayerGuid2`(`PlayerGuid2`) USING BTREE,
  INDEX `Idx_LogGuid`(`LogGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild Eventlog' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_finder_applicant
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_applicant`;
CREATE TABLE `guild_finder_applicant`  (
  `guildId` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `playerGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `availability` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `classRole` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `interests` tinyint(3) UNSIGNED NULL DEFAULT 0,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `submitTime` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`guildId`, `playerGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_finder_guild_settings
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_guild_settings`;
CREATE TABLE `guild_finder_guild_settings`  (
  `guildId` bigint(20) UNSIGNED NOT NULL,
  `availability` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `classRoles` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `interests` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `listed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guildId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_member
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member`  (
  `guildid` bigint(20) UNSIGNED NOT NULL COMMENT 'Guild Identificator',
  `guid` bigint(20) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  `pnote` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `offnote` varchar(31) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  UNIQUE INDEX `guid_key`(`guid`) USING BTREE,
  INDEX `guildid_key`(`guildid`) USING BTREE,
  INDEX `guildid_rank_key`(`guildid`, `rank`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_member_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `guild_member_withdraw`;
CREATE TABLE `guild_member_withdraw`  (
  `guid` bigint(20) UNSIGNED NOT NULL,
  `tab0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tab1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tab2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tab3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tab4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tab5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tab6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tab7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `money` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild Member Daily Withdraws' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_newslog
-- ----------------------------
DROP TABLE IF EXISTS `guild_newslog`;
CREATE TABLE `guild_newslog`  (
  `guildid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Guild Identificator',
  `LogGuid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event type',
  `PlayerGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Value` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TimeStamp` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`, `LogGuid`) USING BTREE,
  INDEX `guildid_key`(`guildid`) USING BTREE,
  INDEX `Idx_PlayerGuid`(`PlayerGuid`) USING BTREE,
  INDEX `Idx_LogGuid`(`LogGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_rank
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank`  (
  `guildid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `rid` tinyint(3) UNSIGNED NOT NULL,
  `rname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rights` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `BankMoneyPerDay` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`, `rid`) USING BTREE,
  INDEX `Idx_rid`(`rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instance
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `map` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `resettime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `difficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `completedEncounters` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entranceId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `map`(`map`) USING BTREE,
  INDEX `resettime`(`resettime`) USING BTREE,
  INDEX `difficulty`(`difficulty`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instance_reset
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset`  (
  `mapid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `difficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `resettime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`mapid`, `difficulty`) USING BTREE,
  INDEX `difficulty`(`difficulty`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for instance_scenario_progress
-- ----------------------------
DROP TABLE IF EXISTS `instance_scenario_progress`;
CREATE TABLE `instance_scenario_progress`  (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria` int(10) UNSIGNED NOT NULL,
  `counter` bigint(20) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `criteria`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance`  (
  `guid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemEntry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `owner_guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `creatorGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `giftCreatorGuid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `duration` int(10) NOT NULL DEFAULT 0,
  `charges` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `flags` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `enchantments` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `randomBonusListId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `durability` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `playedTime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transmogrification` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `enchantIllusion` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `battlePetSpeciesId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `battlePetBreedData` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `battlePetLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `battlePetDisplayId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `bonusListIDs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `idx_owner_guid`(`owner_guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance_artifact
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_artifact`;
CREATE TABLE `item_instance_artifact`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  `xp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `artifactAppearanceId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `artifactTierId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance_artifact_powers
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_artifact_powers`;
CREATE TABLE `item_instance_artifact_powers`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  `artifactPowerId` int(10) UNSIGNED NOT NULL,
  `purchasedRank` tinyint(3) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`, `artifactPowerId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance_azerite
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_azerite`;
CREATE TABLE `item_instance_azerite`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  `xp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `knowledgeLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `selectedAzeriteEssences1specId` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences1azeriteEssenceId1` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences1azeriteEssenceId2` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences1azeriteEssenceId3` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences1azeriteEssenceId4` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences2specId` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences2azeriteEssenceId1` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences2azeriteEssenceId2` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences2azeriteEssenceId3` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences2azeriteEssenceId4` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences3specId` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences3azeriteEssenceId1` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences3azeriteEssenceId2` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences3azeriteEssenceId3` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences3azeriteEssenceId4` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences4specId` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences4azeriteEssenceId1` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences4azeriteEssenceId2` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences4azeriteEssenceId3` int(10) UNSIGNED NULL DEFAULT 0,
  `selectedAzeriteEssences4azeriteEssenceId4` int(10) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance_azerite_empowered
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_azerite_empowered`;
CREATE TABLE `item_instance_azerite_empowered`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  `azeritePowerId1` int(11) NOT NULL,
  `azeritePowerId2` int(11) NOT NULL,
  `azeritePowerId3` int(11) NOT NULL,
  `azeritePowerId4` int(11) NOT NULL,
  `azeritePowerId5` int(11) NOT NULL,
  PRIMARY KEY (`itemGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance_azerite_milestone_power
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_azerite_milestone_power`;
CREATE TABLE `item_instance_azerite_milestone_power`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  `azeriteItemMilestonePowerId` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`itemGuid`, `azeriteItemMilestonePowerId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance_azerite_unlocked_essence
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_azerite_unlocked_essence`;
CREATE TABLE `item_instance_azerite_unlocked_essence`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  `azeriteEssenceId` int(10) UNSIGNED NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`itemGuid`, `azeriteEssenceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance_gems
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_gems`;
CREATE TABLE `item_instance_gems`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  `gemItemId1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gemBonuses1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gemContext1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gemScalingLevel1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gemItemId2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gemBonuses2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gemContext2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gemScalingLevel2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gemItemId3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gemBonuses3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gemContext3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gemScalingLevel3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance_modifiers
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_modifiers`;
CREATE TABLE `item_instance_modifiers`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  `fixedScalingLevel` int(10) UNSIGNED NULL DEFAULT 0,
  `artifactKnowledgeLevel` int(10) UNSIGNED NULL DEFAULT 0,
  `challengeId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeAffix1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeAffix2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeAffix3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `challengeIsCharged` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_instance_transmog
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_transmog`;
CREATE TABLE `item_instance_transmog`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL,
  `itemModifiedAppearanceAllSpecs` int(11) NOT NULL DEFAULT 0,
  `itemModifiedAppearanceSpec1` int(11) NOT NULL DEFAULT 0,
  `itemModifiedAppearanceSpec2` int(11) NOT NULL DEFAULT 0,
  `itemModifiedAppearanceSpec3` int(11) NOT NULL DEFAULT 0,
  `itemModifiedAppearanceSpec4` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentAllSpecs` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentSpec1` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentSpec2` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentSpec3` int(11) NOT NULL DEFAULT 0,
  `spellItemEnchantmentSpec4` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_loot_items
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_items`;
CREATE TABLE `item_loot_items`  (
  `container_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(10) NOT NULL DEFAULT 0 COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT 0,
  `counted` tinyint(1) NOT NULL DEFAULT 0,
  `under_threshold` tinyint(1) NOT NULL DEFAULT 0,
  `needs_quest` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'quest drop',
  `rnd_bonus` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'random bonus list added when originally rolled',
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `bonus_list_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Space separated list of bonus list ids',
  PRIMARY KEY (`container_id`, `item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_loot_money
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_money`;
CREATE TABLE `item_loot_money`  (
  `container_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) NOT NULL DEFAULT 0 COMMENT 'money loot (in copper)',
  PRIMARY KEY (`container_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_refund_instance
-- ----------------------------
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance`  (
  `item_guid` bigint(20) UNSIGNED NOT NULL COMMENT 'Item GUID',
  `player_guid` bigint(20) UNSIGNED NOT NULL COMMENT 'Player GUID',
  `paidMoney` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `paidExtendedCost` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_guid`, `player_guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item Refund System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_soulbound_trade_data
-- ----------------------------
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE `item_soulbound_trade_data`  (
  `itemGuid` bigint(20) UNSIGNED NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Item Refund System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lfg_data
-- ----------------------------
DROP TABLE IF EXISTS `lfg_data`;
CREATE TABLE `lfg_data`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `dungeon` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'LFG Data' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for log_gm
-- ----------------------------
DROP TABLE IF EXISTS `log_gm`;
CREATE TABLE `log_gm`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` datetime(0) NULL DEFAULT NULL,
  `gm_account_id` bigint(20) NULL DEFAULT NULL,
  `gm_account_name` blob NULL DEFAULT NULL,
  `gm_character_id` bigint(20) NULL DEFAULT NULL,
  `gm_character_name` blob NULL DEFAULT NULL,
  `gm_ip` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `target_account_id` bigint(20) NULL DEFAULT NULL,
  `target_account_name` blob NULL DEFAULT NULL,
  `target_character_id` bigint(20) NULL DEFAULT NULL,
  `target_character_name` blob NULL DEFAULT NULL,
  `target_ip` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `command` blob NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `messageType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stationery` tinyint(3) NOT NULL DEFAULT 41,
  `mailTemplateId` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sender` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `receiver` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  `subject` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `has_items` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deliver_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `money` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `cod` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `checked` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_receiver`(`receiver`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Mail System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mail_items
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items`  (
  `mail_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `receiver` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`) USING BTREE,
  INDEX `idx_receiver`(`receiver`) USING BTREE,
  INDEX `idx_mail_id`(`mail_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pet_aura
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura`  (
  `guid` int(10) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) UNSIGNED NOT NULL,
  `effectMask` int(10) UNSIGNED NOT NULL,
  `recalculateMask` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `difficulty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stackCount` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `maxDuration` int(11) NOT NULL DEFAULT 0,
  `remainTime` int(11) NOT NULL DEFAULT 0,
  `remainCharges` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`, `effectMask`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pet_aura_effect
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura_effect`;
CREATE TABLE `pet_aura_effect`  (
  `guid` int(10) UNSIGNED NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) UNSIGNED NOT NULL,
  `effectMask` int(10) UNSIGNED NOT NULL,
  `effectIndex` tinyint(3) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `baseAmount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `casterGuid`, `spell`, `effectMask`, `effectIndex`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pet_spell
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Pet System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pet_spell_charges
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_charges`;
CREATE TABLE `pet_spell_charges`  (
  `guid` int(10) UNSIGNED NOT NULL,
  `categoryId` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rechargeEnd` int(10) UNSIGNED NOT NULL DEFAULT 0,
  INDEX `idx_guid`(`guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pet_spell_cooldown
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell Identifier',
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `categoryId` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Spell category Id',
  `categoryEnd` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`, `spell`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for petition
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition`  (
  `ownerguid` bigint(20) UNSIGNED NOT NULL,
  `petitionguid` bigint(20) UNSIGNED NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ownerguid`) USING BTREE,
  UNIQUE INDEX `index_ownerguid_petitionguid`(`ownerguid`, `petitionguid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for petition_sign
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign`  (
  `ownerguid` bigint(20) UNSIGNED NOT NULL,
  `petitionguid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `playerguid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `player_account` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`petitionguid`, `playerguid`) USING BTREE,
  INDEX `Idx_playerguid`(`playerguid`) USING BTREE,
  INDEX `Idx_ownerguid`(`ownerguid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Guild System' ROW_FORMAT = Dynamic;

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
-- Table structure for pool_quest_save
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE `pool_quest_save`  (
  `pool_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quest_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`pool_id`, `quest_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pvpstats_battlegrounds
-- ----------------------------
DROP TABLE IF EXISTS `pvpstats_battlegrounds`;
CREATE TABLE `pvpstats_battlegrounds`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `winner_faction` tinyint(4) NOT NULL,
  `bracket_id` tinyint(3) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pvpstats_players
-- ----------------------------
DROP TABLE IF EXISTS `pvpstats_players`;
CREATE TABLE `pvpstats_players`  (
  `battleground_id` bigint(20) UNSIGNED NOT NULL,
  `character_guid` bigint(20) UNSIGNED NOT NULL,
  `winner` bit(1) NOT NULL,
  `score_killing_blows` int(10) UNSIGNED NOT NULL,
  `score_deaths` int(10) UNSIGNED NOT NULL,
  `score_honorable_kills` int(10) UNSIGNED NOT NULL,
  `score_bonus_honor` int(10) UNSIGNED NOT NULL,
  `score_damage_done` int(10) UNSIGNED NOT NULL,
  `score_healing_done` int(10) UNSIGNED NOT NULL,
  `attr_1` int(10) UNSIGNED NOT NULL,
  `attr_2` int(10) UNSIGNED NOT NULL,
  `attr_3` int(10) UNSIGNED NOT NULL,
  `attr_4` int(10) UNSIGNED NOT NULL,
  `attr_5` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`battleground_id`, `character_guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_tracker
-- ----------------------------
DROP TABLE IF EXISTS `quest_tracker`;
CREATE TABLE `quest_tracker`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `character_guid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `quest_accept_time` datetime(0) NOT NULL,
  `quest_complete_time` datetime(0) NULL DEFAULT NULL,
  `quest_abandon_time` datetime(0) NULL DEFAULT NULL,
  `completed_by_gm` tinyint(1) NOT NULL DEFAULT 0,
  `core_hash` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `core_revision` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`, `character_guid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reserved_name
-- ----------------------------
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE `reserved_name`  (
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Player Reserved Names' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for updates
-- ----------------------------
DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates`  (
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp(0) NOT NULL DEFAULT current_timestamp COMMENT 'timestamp when the query was applied.',
  `speed` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'List of all applied updates in this database.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for updates_include
-- ----------------------------
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE `updates_include`  (
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'List of directories where we want to include sql updates.' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of updates_include
-- ----------------------------
INSERT INTO `updates_include` VALUES ('$/sql/updates/characters', 'RELEASED');

-- ----------------------------
-- Table structure for warden_action
-- ----------------------------
DROP TABLE IF EXISTS `warden_action`;
CREATE TABLE `warden_action`  (
  `wardenId` smallint(5) UNSIGNED NOT NULL,
  `action` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`wardenId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_quest
-- ----------------------------
DROP TABLE IF EXISTS `world_quest`;
CREATE TABLE `world_quest`  (
  `id` int(10) UNSIGNED NOT NULL,
  `rewardid` int(10) UNSIGNED NOT NULL,
  `starttime` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for worldstates
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates`  (
  `entry` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Variable Saves' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
