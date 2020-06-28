-- Atal Dazar Priestess Alunza
SET @PRIESTESS_ENTRY := 122967;
SET @CAULDRON := 128956;
SET @CORRUPTEDGOLD := 130738;

-- Set Scripts and fix sniff values
UPDATE `creature_template` SET `ScriptName`='boss_priestess_alunza', `movementId`= 0, `mechanic_immune_mask`= 2147467263 WHERE  `entry`=@PRIESTESS_ENTRY;
UPDATE `creature_template` SET `ScriptName`='npc_blood_tainted_cauldron', `movementId`= 0, `flags_extra` = 128 WHERE  `entry`=@CAULDRON;

DELETE FROM `creature_template` WHERE `entry`=@CORRUPTEDGOLD;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@CORRUPTEDGOLD, 0, 0, 0, 0, 0, 'Corrupted Gold', '', NULL, NULL, NULL, 0, 1, 1, 7, 0, 0, 14, 0, 0.3, 0.3, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1076887624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 2, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 128, 'npc_corrupted_gold', 28153);

-- TO DO
DELETE FROM `creature_text` WHERE `CreatureID` = @PRIESTESS_ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(@PRIESTESS_ENTRY, 0, 0, 'Servants of Yazma are not welcome here!', 14, 0, 100, 0, 0, 97338, 140323, 'Priestess Alun\'za'),
(@PRIESTESS_ENTRY, 1, 0, '$n gilds her hands with gold.', 16, 0, 100, 0, 0, 97333, 138800, 'Priestess Alun\'za to Priestess Alun\'za'),
(@PRIESTESS_ENTRY, 2, 0, 'My claws will find your heart.', 14, 0, 100, 0, 0, 97333, 140353, 'Priestess Alun\'za'),
(@PRIESTESS_ENTRY, 3, 0, '|TInterface\\Icons\\SPELL_HOLY_PURIFY.BLP:20|t%s casts |cFFFF0000|Hspell:255577|h[Transfusion]|h|r!', 41, 0, 100, 0, 0, 97337, 138801, 'Priestess Alun\'za to Priestess Alun\'za'),
(@PRIESTESS_ENTRY, 4, 0, 'You do not belong here!', 14, 0, 100, 0, 0, 97337, 140354, 'Priestess Alun\'za'),
(@PRIESTESS_ENTRY, 5, 0, 'Corruption be purified!', 14, 0, 100, 0, 0, 97336, 140331, 'Priestess Alun\'za'),
(@PRIESTESS_ENTRY, 6, 0, 'De pools... must be... cleansed.', 14, 0, 100, 0, 0, 97340, 140327, 'Priestess Alun\'za to Player');

-- Import AreaTrigger Data
DELETE FROM `areatrigger_template` WHERE `Id` IN (16589, 16013, 9228, 6197, 19538, 19652, 8352, 16553, 17056, 11420, 16857, 16029, 12929, 16644, 16643, 16503);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(16589, 4, 4, 6.8, 6.8, 10, 10, 3, 3, 28153),
(16013, 0, 2, 5, 5, 0, 0, 0, 0, 28153),
(9228, 0, 0, 8, 8, 0, 0, 0, 0, 28153),
(6197, 0, 0, 4, 4, 0, 0, 0, 0, 28153),
(19538, 1, 0, 4, 4, 7.5, 4, 4, 7.5, 28153),
(19652, 0, 16, 4, 4, 0, 0, 0, 0, 28153),
(8352, 0, 0, 8, 8, 0, 0, 0, 0, 28153),
(16553, 0, 0, 3, 3, 0, 0, 0, 0, 28153),
(17056, 0, 0, 3, 3, 0, 0, 0, 0, 28153),
(11420, 0, 4, 8, 8, 0, 0, 0, 0, 28153),
(16857, 0, 4, 8, 8, 0, 0, 0, 0, 28153),
(16029, 0, 2, 4, 4, 0, 0, 0, 0, 28153),
(12929, 0, 0, 8, 8, 0, 0, 0, 0, 28153),
(16644, 0, 0, 3, 3, 0, 0, 0, 0, 28153),
(16643, 0, 0, 3, 3, 0, 0, 0, 0, 28153),
(16503, 0, 4, 20, 20, 0, 0, 0, 0, 28153);

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId`=16589 AND `ActionType`=1 AND `ActionParam`=255842;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES 
(16589, 1, 255842, 2);

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId`=16029 AND `ActionType`=1 AND `ActionParam`=263927;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES 
(16029, 1, 263927, 2);

DELETE FROM spell_areatrigger WHERE (SpellMiscId=11231 AND AreaTriggerId=16013) OR (SpellMiscId=11867 AND AreaTriggerId=16553) OR (SpellMiscId=12369 AND AreaTriggerId=17056) OR (SpellMiscId=11897 AND AreaTriggerId=16589) OR (SpellMiscId=12155 AND AreaTriggerId=16857) OR (SpellMiscId=11243 AND AreaTriggerId=16029) OR (SpellMiscId=11959 AND AreaTriggerId=16644) OR (SpellMiscId=11958 AND AreaTriggerId=16643) OR (SpellMiscId=11814 AND AreaTriggerId=16503);
INSERT INTO spell_areatrigger (SpellMiscId, AreaTriggerId, MoveCurveId, ScaleCurveId, MorphCurveId, FacingCurveId, DecalPropertiesId, TimeToTarget, TimeToTargetScale, VerifiedBuild) VALUES
(11231, 16013, 0, 3325, 0, 0, 214, 0, 120000, 28153), -- SpellId : 250022
(11867, 16553, 0, 0, 0, 0, 0, 0, 60000, 28153), -- SpellId : 255559
(12369, 17056, 0, 0, 0, 0, 0, 0, 30000, 28153), -- SpellId : 260670
(11897, 16589, 0, 0, 0, 0, 0, 0, 0, 28153), -- SpellId : 255619
(12155, 16857, 0, 0, 0, 0, 0, 0, 4999, 28153), -- SpellId : 253721
(11243, 16029, 0, 3477, 0, 0, 209, 0, 60000, 28153), -- SpellId : 250696
(11959, 16644, 0, 0, 0, 0, 0, 0, 0, 28153), -- SpellId : 256608
(11958, 16643, 0, 0, 0, 0, 0, 0, 0, 28153), -- SpellId : 256606
(11814, 16503, 0, 0, 0, 0, 0, 0, 0, 28153); -- SpellId : 254958

UPDATE `areatrigger_template` SET `ScriptName`='at_priestess_alunza_tainted_blood' WHERE  `Id`=17056;

-- 255584 - Molten Gold Target Selector
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_priestess_alunza_molten_gold';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(255584, 'spell_priestess_alunza_molten_gold');

-- 260658 - Cauldron Purify
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_npc_cauldron_purify';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(260658, 'spell_npc_cauldron_purify');

-- 255615 - Pool Pre Selector
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_priestess_pool_pre_selector';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(255615, 'spell_priestess_pool_pre_selector');

-- 255577 - Transfusion
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_priestess_transfusion';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(255577, 'spell_priestess_transfusion');

-- 255592 - Pool Tainted Selector
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_priestess_pool_tainted_selector';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(255592, 'spell_priestess_pool_tainted_selector');

-- 255575 - Tranfusion Damage
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_priestess_tranfusion_damage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(255575, 'spell_priestess_tranfusion_damage');

DELETE FROM `disables` WHERE `sourceType`=0 AND `entry` IN (255591, 255615);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(0, 255591, 64, '', '', 'Ignore LoS Atal Dazar Priestss Alunza Select Cauldron'),
(0, 255615, 64, '', '', 'Ignore LoS Atal Dazar Priestss Alunza Select Cauldron');

-- 258681 - Boss Energy Regen
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_priestess_energy_regen';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(258681, 'spell_priestess_energy_regen');

-- Cauldron Addons
DELETE FROM `creature_template_addon` WHERE `entry`=@CAULDRON;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(@CAULDRON, 0, 0, 50331648, 1, 0, 0, 0, 0, '');

-- 
-- --------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------
-- Volkaal
Delete From `creature_text` where CreatureID in(122965);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(122965, 0, 0, 'Master want your bones!', 14, 0, 100, 0, 0, 97343, 0, 'Vol\'kaal'),
(122965, 1, 0, 'You die with me!', 14, 0, 100, 0, 0, 97349, 0, 'Vol\'kaal to Player'),
(122965, 2, 0, 'Master gonna build me again...', 14, 0, 100, 0, 0, 97345, 0, 'Vol\'kaal to Vol\'kaal');

update `creature_template` set `ScriptName` = 'boss_ataldazar_volkaal' where `entry` = 122965;
update `creature_template` set `ScriptName` = 'npc_ataldazar_reanimation_totem' where `entry` = 125977;

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId`=16013 AND `ActionType`=1 AND `ActionParam`=250036;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES (16013, 1, 250036, 2);

update `creature_template` set `unit_flags` = 33555200 where entry = 125868;
DELETE FROM `creature_template_addon` WHERE `entry`=125868;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES (125868, 0, 0, 0, 0, 0, 0, 0, 0, '250013');

-- script names
update `creature_template` set `ScriptName` = 'boss_ataldazar_yazma' where `entry` = 122968;
update `creature_template` set `ScriptName` = 'npc_ataldazar_soulspawn' where `entry` = 125828;
update `creature_template` set `ScriptName` = 'npc_ataldazar_echo_of_shadra' where `entry` = 125868;

update `creature_template` set `ScriptName` = 'boss_ataldazar_rezan' where `entry` = 122963;
update `areatrigger_template` set `ScriptName` = 'areatrigger_ancient_bones' where `Id` = 16644;
