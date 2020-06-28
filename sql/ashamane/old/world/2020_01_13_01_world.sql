UPDATE `creature_template` SET `ScriptName`='boss_knight_captain_valyri' WHERE  `entry`= 127490;
UPDATE `creature_template` SET `ScriptName`='npc_tol_dagor_ashavane_quartermaster' WHERE  `entry`= 131856;
UPDATE `creature_template` SET `ScriptName`='npc_tol_dagor_munitions_barrel' WHERE  `entry`= 129437;

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_ignition';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(256970, 'spell_ignition');

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_fuselighter';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(257028, 'spell_fuselighter');

UPDATE `creature_template` SET `ScriptName`='boss_jes_howlis' WHERE `entry`= 127484;

UPDATE `creature_template` SET `ScriptName`='boss_overseer_korgus' WHERE `entry`= 127503;

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_generic_deadeye';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(256038, 'spell_generic_deadeye');

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_explosive_burst';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(256105, 'spell_explosive_burst');

UPDATE `creature_template` SET `ScriptName`='boss_sand_queen' WHERE `entry`= 127479;

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_sand_trap';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(257092, 'spell_sand_trap');

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_upheaval_target_selector';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(257612, 'spell_upheaval_target_selector');

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_upheaval';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(257608, 'spell_upheaval');
