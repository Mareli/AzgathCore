-- Quest The Balance of Nature
DELETE FROM `creature_queststarter` WHERE `id` = 2077 AND `quest` = 28713;
INSERT INTO `creature_queststarter` VALUES
(2077, 28713);

DELETE FROM `creature_questender` WHERE `id` = 2077 AND `quest` = 28713;
INSERT INTO `creature_questender` VALUES
(2077, 28713);

-- ugly hack
UPDATE `quest_template` SET `QuestType` = 0 WHERE `ID` = 52428;
