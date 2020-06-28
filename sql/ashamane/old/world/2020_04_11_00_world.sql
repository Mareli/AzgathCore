UPDATE `creature_template` SET `ScriptName` = 'boss_dunegorger_kraulok' WHERE `entry` = 138794;
UPDATE `creature_template` SET `ScriptName` = 'boss_jiarak' WHERE `entry` = 132253;
UPDATE `creature_template` SET `ScriptName` = 'boss_tzane' WHERE `entry` = 132701;
UPDATE `creature_template` SET `ScriptName` = 'npc_orb_of_swirling' WHERE `entry` = 120988;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (261600, 261552, 261560, 261718);
INSERT INTO `spell_script_names` VALUES
(261718, 'spell_terror_wall_visual_back'),
(261560, 'spell_terror_wall_visual'),
(261552, 'spell_terror_wall'),
(261600, 'spell_coalseced_essence');
