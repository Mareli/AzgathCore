-- 修复开始控制台错误 startup_error 大约减少400k错误
UPDATE `creature` SET `spawnDifficulties` = '3,4' WHERE `map` = 757;
UPDATE `gameobject` SET `spawnDifficulties` = '3,4' WHERE `map` = 757;
UPDATE `creature` SET `spawnDifficulties` = '14,15,33' WHERE `map` = 720;
UPDATE `gameobject` SET `spawnDifficulties` = '14,15,33' WHERE `map` = 720;
UPDATE `creature` SET `spawnDifficulties` = '3,4,5,6' WHERE `map` = 671;
UPDATE `gameobject` SET `spawnDifficulties` = '3,4,5,6' WHERE `map` = 671;
UPDATE `creature_template` SET `npcflag`=`npcflag`|8192 WHERE `subname` like "%Flight Master%" AND `npcflag`!=`npcflag`|8192;
UPDATE `creature_template` SET `npcflag`=`npcflag`|16 WHERE `ENTRY` IN (SELECT `ID` FROM `npc_trainer`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `ENTRY` IN (SELECT `entry` FROM `npc_vendor`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|131072 WHERE `subname` like "%Banker%" AND `npcflag`!=`npcflag`|131072;
UPDATE `creature_template` SET `npcflag`=`npcflag`|65536 WHERE `subname` like "%Innkeeper%" AND `npcflag`!=`npcflag`|65536;
UPDATE `creature_template` SET `npcflag`=`npcflag`|16384 WHERE `subname` like "%Spirit Healer%" AND `npcflag`!=`npcflag`|16384;
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `ENTRY` IN (SELECT `npc_entry` FROM `npc_spellclick_spells`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `ENTRY` IN (SELECT `ID` FROM `creature_queststarter`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `ENTRY` IN (SELECT `ID` FROM `creature_questender`);
UPDATE `gameobject_template` SET `type`='2' WHERE `ENTRY` IN (SELECT `ID` FROM `gameobject_queststarter`);
UPDATE `gameobject_template` SET `type`='2' WHERE `ENTRY` IN (SELECT `ID` FROM `gameobject_questender`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|16 WHERE `ENTRY` IN (SELECT `ID` FROM `npc_trainer`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `ENTRY` IN (SELECT `entry` FROM `npc_vendor`);
DELETE FROM `gameobject` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_template_addon` WHERE `entry` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `creature_template_addon` WHERE `Entry` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `gameobject_queststarter` WHERE `Quest` NOT IN (SELECT `id` FROM `quest_template`);
DELETE FROM `gameobject_questender` WHERE `Quest` NOT IN (SELECT `id` FROM `quest_template`);
DELETE FROM `gameobject_queststarter` WHERE `id` NOT IN (SELECT `id` FROM `gameobject_template`);
DELETE FROM `gameobject_questender` WHERE `id` NOT IN (SELECT `id` FROM `gameobject_template`);
update creature_template set unit_class=1 where unit_class=0;
INSERT INTO `quest_template_addon` (`ID`)
SELECT `ID` FROM `quest_template` WHERE `id` NOT IN(SELECT `id` FROM `quest_template_addon`);
update `quest_template_addon`,`quest_template`
set `quest_template_addon`.`NextQuestID`=`quest_template`.`RewardNextQuest`
where `quest_template_addon`.`ID`=`quest_template`.`ID` and `quest_template`.`RewardNextQuest`!='0';
CREATE TABLE quest_template_addon_copy SELECT * FROM quest_template_addon;
INSERT INTO quest_template_addon_copy SELECT * FROM quest_template_addon;
update `quest_template_addon`,`quest_template_addon_copy`
set `quest_template_addon`.`PrevQuestID`=`quest_template_addon_copy`.`ID`
where `quest_template_addon`.`ID`=`quest_template_addon_copy`.`nextquestid`;
DROP TABLE quest_template_addon_copy;
update `quest_template_addon`,`quest_template`
set `quest_template_addon`.`ProvidedItemCount`='1'
where `quest_template_addon`.`id`=`quest_template`.`id` and `quest_template`.`StartItem`!=0 AND `quest_template_addon`.`ProvidedItemCount`='0';
update `quest_template_addon`,`quest_template`
set `quest_template_addon`.`ProvidedItemCount`=0
where `quest_template_addon`.`ID`=`quest_template`.`ID` and `quest_template`.`StartItem`='0';

-- 修复专业任务，没接受访专业也可接受任务的bug
-- 采矿
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='186'
where `quest_template`.`QuestSortID`='-408'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 剥皮
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='393'
where `quest_template`.`QuestSortID`='-411'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;
-- 附魔
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='333'
where `quest_template`.`QuestSortID`='-410'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 钓鱼
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='356'
where `quest_template`.`QuestSortID`='-101'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 炼金
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='171'
where `quest_template`.`QuestSortID`='-181'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 考古
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='794'
where `quest_template`.`QuestSortID`='-377'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 煅造
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='164'
where `quest_template`.`QuestSortID`='-121'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 烹饪
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='185'
where `quest_template`.`QuestSortID`='-304'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 工程
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='202'
where `quest_template`.`QuestSortID`='-201'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 急救
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='129'
where `quest_template`.`QuestSortID`='-324'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 草药
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='182'
where `quest_template`.`QuestSortID`='-24'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 铭文
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='773'
where `quest_template`.`QuestSortID`='-371'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 珠宝
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='755'
where `quest_template`.`QuestSortID`='-373'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 制皮
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='165'
where `quest_template`.`QuestSortID`='-182'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

-- 裁缝
update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillID`='197'
where `quest_template`.`QuestSortID`='-264'
and `quest_template_addon`.`ID`=`quest_template`.`ID`;

update `quest_template_addon`,`quest_template`
SET `quest_template_addon`.`RequiredSkillPoints`='1'
where `quest_template`.`QuestSortID`<'0'
and `quest_template_addon`.`ID`=`quest_template`.`ID`
and `quest_template_addon`.`RequiredSkillPoints`='0';
