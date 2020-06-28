--
-- Table structure for table `item_instance_azerite`
--
DROP TABLE IF EXISTS `item_instance_azerite`;
CREATE TABLE `item_instance_azerite` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `xp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '1',
  `knowledgeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `item_instance_azerite` 
  ADD `selectedAzeriteEssences1specId` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences1azeriteEssenceId1` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences1azeriteEssenceId2` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences1azeriteEssenceId3` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences2specId` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences2azeriteEssenceId1` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences2azeriteEssenceId2` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences2azeriteEssenceId3` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences3specId` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences3azeriteEssenceId1` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences3azeriteEssenceId2` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences3azeriteEssenceId3` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences4specId` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences4azeriteEssenceId1` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences4azeriteEssenceId2` int(10) unsigned NULL DEFAULT '0',
  ADD `selectedAzeriteEssences4azeriteEssenceId3` int(10) unsigned NULL DEFAULT '0';

--
-- Table structure for table `item_instance_azerite_milestone_power`
--
DROP TABLE IF EXISTS `item_instance_azerite_milestone_power`;
CREATE TABLE `item_instance_azerite_milestone_power` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `azeriteItemMilestonePowerId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`itemGuid`,`azeriteItemMilestonePowerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `item_instance_azerite_unlocked_essence`
--
DROP TABLE IF EXISTS `item_instance_azerite_unlocked_essence`;
CREATE TABLE `item_instance_azerite_unlocked_essence` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `azeriteEssenceId` int(10) unsigned NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  PRIMARY KEY (`itemGuid`,`azeriteEssenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `characters` ADD `numRespecs` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `resettalents_time`;

--
-- Table structure for table `item_instance_azerite_empowered`
--
DROP TABLE IF EXISTS `item_instance_azerite_empowered`;
CREATE TABLE `item_instance_azerite_empowered` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `azeritePowerId1` int(11) NOT NULL,
  `azeritePowerId2` int(11) NOT NULL,
  `azeritePowerId3` int(11) NOT NULL,
  `azeritePowerId4` int(11) NOT NULL,
  `azeritePowerId5` int(11) NOT NULL,
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

