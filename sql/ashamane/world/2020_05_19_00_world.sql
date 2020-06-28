DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_warr_sudden_death';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (29725);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(29725, 'spell_warr_sudden_death');
