DELETE FROM `spell_proc` WHERE `SpellId` = '155783'; 
INSERT INTO `spell_proc` (`SpellId`, `ProcFlags`, `HitMask`) VALUES ('155783', '2148042752', '2'); 
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dru_natures_guardian'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('155783', 'spell_dru_natures_guardian');

