UPDATE `creature_template` SET `ScriptName`='boss_aspix' WHERE  `entry`= 133944;
UPDATE `creature_template` SET `ScriptName`='boss_adderis' WHERE `entry`= 133379;

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_lightning_shield';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(273411, 'spell_lightning_shield');
