-- Neltharions lair
UPDATE `creature_template` SET `ScriptName`='mob_vileshard_crawler' WHERE (`entry`='96247');
UPDATE `creature_template` SET `ScriptName`='mob_embershard_scorpion' WHERE (`entry`='98406');
UPDATE `creature_template` SET `ScriptName`='mob_rockback_gnasher' WHERE (`entry`='91006');
UPDATE `creature_template` SET `ScriptName`='mob_vileshard_chunk' WHERE (`entry`='101438');
UPDATE `creature_template` SET `ScriptName`='mob_tarspitter_lurker' WHERE (`entry`='91001');
UPDATE `creature_template` SET `ScriptName`='mob_vileshard_hulk' WHERE (`entry`='91000');
UPDATE `creature_template` SET `ScriptName`='mob_understone_drudge' WHERE (`entry`='92350');
UPDATE `creature_template` SET `ScriptName`='mob_mightstone_breaker' WHERE (`entry`='92612');
UPDATE `creature_template` SET `ScriptName`='mob_rockbound_pelter' WHERE (`entry`='91008');
UPDATE `creature_template` SET `ScriptName`='mob_stoneclaw_hunter' WHERE (`entry`='91332');
UPDATE `creature_template` SET `ScriptName`='mob_blightshard_shaper' WHERE (`entry`='90998');
UPDATE `creature_template` SET `ScriptName`='mob_stoneclaw_grubmaster' WHERE (`entry`='102404');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_lurker_submerge';
INSERT INTO spell_script_names VALUES (183433, 'spell_lurker_submerge');

DELETE FROM `areatrigger_template` WHERE (`Id`='8790');
INSERT INTO `areatrigger_template` (`Id`, `Data0`, `Data1`, `ScriptName`) VALUES ('8790', '2.5', '2.5', 'at_acid_splatter');

-- Dargul
DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_dargrul_landslide';
INSERT INTO spell_script_names VALUES (200700, 'spell_dargrul_landslide');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_dargrul_crystal_spikes';
INSERT INTO spell_script_names VALUES (200551, 'spell_dargrul_crystal_spikes');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_dargrul_magma_wave';
INSERT INTO spell_script_names VALUES (200404, 'spell_dargrul_magma_wave');

UPDATE `creature_template` SET `ScriptName`='boss_dargrul' WHERE (`entry`='91007');
UPDATE `creature_template` SET `ScriptName`='mob_molten_charskin' WHERE (`entry`='101476');
UPDATE `creature_template` SET `ScriptName`='mob_crystall_stalker' WHERE (`entry`='101593');

-- naraxas
DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_naraxas_rancid_maw';
INSERT INTO spell_script_names VALUES (205549, 'spell_naraxas_rancid_maw');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_naraxas_toxic_retch';
INSERT INTO spell_script_names VALUES (210150, 'spell_naraxas_toxic_retch');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_naraxas_spiked_tongue';
INSERT INTO spell_script_names VALUES (199176, 'spell_naraxas_spiked_tongue');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_naraxas_spiked_tongue';
INSERT INTO spell_script_names VALUES (199176, 'spell_naraxas_spiked_tongue');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_naraxas_devourging_aura';
INSERT INTO spell_script_names VALUES
(-199705, "spell_naraxas_devourging_aura"),
(-205418, "spell_naraxas_devourging_aura");

DELETE FROM `areatrigger_template` WHERE (`Id`='11287');
INSERT INTO `areatrigger_template` (`Id`, `Data0`, `Data1`, `ScriptName`) VALUES ('11287', '3', '3', 'at_toxic_retch');

DELETE FROM `areatrigger_template` WHERE (`Id`='9239');
INSERT INTO `areatrigger_template` (`Id`, `Data0`, `Data1`, `ScriptName`) VALUES ('9239', '4', '4', 'at_rancid_maw');

UPDATE `creature_template` SET `ScriptName`='boss_naraxas' WHERE (`entry`='91005');
UPDATE `creature_template` SET `ScriptName`='mob_wormspeaker_devout' WHERE (`entry`='101075');
UPDATE `creature_template` SET `ScriptName`='mob_angry_crowd' WHERE (`entry`='109137');
UPDATE `creature_template` SET `ScriptName`='mob_emberhusk_dominator' WHERE (`entry`='113537');

-- rokmora
UPDATE `creature_template` SET `ScriptName`='boss_rokmora' WHERE (`entry`='91003');
UPDATE `creature_template` SET `ScriptName`='npc_ularogg_rokmora_start' WHERE (`entry`='105300');
UPDATE `creature_template` SET `ScriptName`='npc_navarogg_rokmora_start' WHERE (`entry`='100700');
UPDATE `creature_template` SET `ScriptName`='mob_blightshard_skitter' WHERE (`entry`='97720');
UPDATE `creature_template` SET `ScriptName`='npc_spiritwalker_ebonhorn' WHERE (`entry`='100701');
UPDATE `creature_template` SET `ScriptName`='npc_empty_barrel' WHERE (`entry`='92473');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_rokmora_shatter';
INSERT INTO spell_script_names VALUES (188114, 'spell_rokmora_shatter');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_crystalline_ground_damage';
INSERT INTO spell_script_names VALUES (-215898, 'spell_crystalline_ground_damage');

DELETE FROM `areatrigger_template` WHERE (`Id`='9669');
INSERT INTO `areatrigger_template` (`Id`, `Data0`, `Data1`, `ScriptName`) VALUES ('9669', '5', '5', 'at_choking_dust');

DELETE FROM `areatrigger_template` WHERE (`Id`='11860');
INSERT INTO `areatrigger_template` (`Id`, `Flags`, `Data0`, `Data1`, `ScriptName`) VALUES ('11860', '2', '45', '45', 'at_crystalline_ground');

-- ularogg cragshapper
UPDATE `creature_template` SET `ScriptName`='boss_ularogg_cragshaper' WHERE (`entry`='91004');
UPDATE `creature_template` SET `ScriptName`='mob_bellowing_idol_mountain_stance' WHERE (`entry`='100818');
UPDATE `creature_template` SET `ScriptName`='mob_bellowing_idol' WHERE (`entry`='98081');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_ularogg_mountain_stance';
INSERT INTO spell_script_names VALUES (198565, 'spell_ularogg_mountain_stance');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_idol_falling_debris';
INSERT INTO spell_script_names VALUES (193270, 'spell_idol_falling_debris');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_mountain_strike_trigger';
INSERT INTO spell_script_names VALUES (216290, 'spell_mountain_strike_trigger');

DELETE FROM `spell_script_names` WHERE ScriptName = 'spell_mountain_strike_dest';
INSERT INTO spell_script_names VALUES
(216292, "spell_mountain_strike_dest"),
(210164, "spell_mountain_strike_dest"),
(200722, "spell_mountain_strike_dest"),
(200338, "spell_mountain_strike_dest");

DELETE FROM `areatrigger_template` WHERE (`Id`='11899');
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`) VALUES ('11899', '4', '16', '0.5', '0.5', '3', '3', '0.3', '0.3', 'at_mountain_strike');


UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=43884; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=43884; 
UPDATE `creature` SET `phaseId`=0 WHERE `id`=43884; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=43884);

UPDATE `creature_template` SET `npcflag` = 4 WHERE `entry` = 42620;
DELETE FROM `world`.`gameobject_loot_template` WHERE `Entry` = '57' AND `Item` = '2005'; 

UPDATE `world`.`creature_loot_template` SET `QuestRequired` = '1' WHERE `Entry` = '942' AND `Item` = '2633'; 
UPDATE `world`.`creature_loot_template` SET `QuestRequired` = '1' WHERE `Entry` = '941' AND `Item` = '2633'; 
UPDATE `world`.`creature_loot_template` SET `QuestRequired` = '1' WHERE `Entry` = '940' AND `Item` = '2633'; 
UPDATE `world`.`creature_loot_template` SET `QuestRequired` = '1' WHERE `Entry` = '937' AND `Item` = '2633'; 


UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=43886; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=43886; 
UPDATE `creature` SET `phaseId`=0 WHERE `id`=43886; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=43886);


UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=43885; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=43885; 
UPDATE `creature` SET `phaseId`=0 WHERE `id`=43885; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=43885);


-- Elder Snapjaw Crocolisk
SET @ENTRY := 2635;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,12000,15000,11,33661,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Crush Armor'),
(@ENTRY,0,1,0,0,0,100,0,10000,10000,10000,10000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Tendon Rip');


UPDATE `creature_template` SET `ScriptName`='boss_shivermaw' WHERE (`entry`='101951');
UPDATE `creature_template` SET `ScriptName`='boss_saelorn' WHERE (`entry`='102387');

UPDATE `creature_template` SET `ScriptName`='boss_mind_flayer_kaarhj' WHERE (`entry`='101950');
UPDATE `creature_template` SET `ScriptName`='boss_millificent_manastorm' WHERE (`entry`='101976');
UPDATE `creature_template` SET `ScriptName`='boss_aluriel' WHERE (`entry`='107699');
UPDATE `creature_template` SET `ScriptName`='boss_chronomatic_anomaly' WHERE (`entry`='104415');
UPDATE `creature_template` SET `ScriptName`='boss_skorpyron' WHERE (`entry`='102263');
UPDATE `creature_template` SET `ScriptName`='boss_trilliax' WHERE (`entry`='104288');
UPDATE `creature_template` SET `ScriptName`='boss_attumen_new' WHERE (`entry`='114262');
UPDATE `creature_template` SET `ScriptName`='boss_opera_toe_knee' WHERE (`entry`='114261');


SET @ATTUMEN := 114262;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_attumen', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 1,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@ATTUMEN, 11426201, 11426202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_midnight', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`InhabitType` = 1,
`VehicleId` = 4990,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (114264, 11426401, 11426402);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_intagible_presence',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`unit_flags` = 256,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (114315, 11431501, 11431502);


DELETE FROM `spell_script_names` WHERE `spell_id` IN (227338, 227404, 227365);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227338, 'spell_attumen_riderless'),
(227404, 'spell_attumen_intagible_presence'),
(227365, 'spell_attumen_spectral_charge');

DELETE FROM `areatrigger_template` WHERE `id` IN (8762);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8762, 0, 0, 1, 1, 0, 0, 0, 0, 'at_kara_spectral_charge', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN  (8762);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8762, 8762, 2271, 0, 0, 0, 0, 9000, 9000, 23420);

DELETE FROM `creature_text` WHERE `CreatureID` = @ATTUMEN;
INSERT INTO `creature_text`(`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `Sound`, `comment`) VALUES
(@ATTUMEN, '0', '0', 'Ah, faithful Midnight. For many years, our countless hunts provided game for the master\'s table.', '14', '100', '58644', 'ATTUMEN - INTRO'),
(@ATTUMEN, '1', '0', 'These days we hunt for sport... and the glory of the kill!', '14', '100', '58644', 'ATTUMEN - AGGRO'),
(@ATTUMEN, '1', '1', 'Well, well! Another group of thieves trying to steal my horse!', '14', '100', '58645', 'ATTUMEN - AGGRO'),
(@ATTUMEN, '2', '0', 'My quarry never escapes!', '14', '100', '58646', 'ATTUMEN - INTAGIBLE PRESENCE'),
(@ATTUMEN, '3', '0', 'Rise up, Midnight! Stamp them into dust!', '14', '100', '58639', 'ATTUMEN - MIGHTY_STOMP'),
(@ATTUMEN, '4', '0', 'Time to face my quarry toe-to-toe!', '14', '100', '58638', 'ATTUMEN - FOOT_FIGHT'),
(@ATTUMEN, '5', '0', 'We ride, Midnight! To victory!', '14', '100', '58640', 'ATTUMEN - RIDE_MIDNIGHT'),
(@ATTUMEN, '6', '0', 'Form ranks! Charge!', '14', '100', '58642', 'ATTUMEN - SPECTRAL_CHARGE'),
(@ATTUMEN, '7', '0', 'My trophy collection grows.', '14', '100', '58647', 'ATTUMEN - KILL'),
(@ATTUMEN, '7', '1', 'Easy prey!', '14', '100', '58648', 'ATTUMEN - KILL'),
(@ATTUMEN, '8', '0', 'Well done, Midnight!', '14', '100', '58641', 'ATTUMEN - KILL_MIDNIGHT'),
(@ATTUMEN, '9', '0', 'They had no chance! I kill for a living!', '14', '100', '58641', 'ATTUMEN - WIPE'),
(@ATTUMEN, '10', '0', 'I... have become... the hunted...', '14', '100', '58641', 'ATTUMEN - DEATH');

SET @MAIDEN := 113971;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_maiden_of_virtue', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MAIDEN, 11397101, 11397102);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (227508, 227817, 227823);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227508, 'spell_maiden_mass_repetance'),
(227817, 'spell_maiden_holy_bulwark'),
(227823, 'spell_maiden_holy_wrath');



DELETE FROM `areatrigger_template` WHERE `id` = 8812;
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8812, 0, 2, 5, 5, 0, 0, 0, 0, 'at_sacred_ground', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` = 8812;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8812, 8812, 0, 2537, 0, 0, 86, 0, 155000, 23420);

DELETE FROM `creature_text` WHERE `CreatureID` = @MAIDEN;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@MAIDEN, '0', '0', 'And so begins your purification!', '14', '100', '58644', 'MAIDEN - AGGRO'),
(@MAIDEN, '0', '1', 'The stench of corruption is upon you! ', '14', '100', '58645', 'MAIDEN - AGGRO'),
(@MAIDEN, '1', '0', 'All shall be sanctified!', '14', '100', '58646', 'MAIDEN - HOLY_BOLT'),
(@MAIDEN, '2', '0', 'By fire be cleansed!', '14', '100', '58639', 'MAIDEN - HOLY_SHOCK'),
(@MAIDEN, '3', '0', 'The righteous have nothing to fear!', '14', '100', '58638', 'MAIDEN - SACRED_GROUND'),
(@MAIDEN, '3', '1', 'Step into the light, mortals!', '14', '100', '58640', 'MAIDEN - SACRED_GROUND'),
(@MAIDEN, '4', '0', 'Hold, mortals! Open your hearts to virtue!', '14', '100', '58642', 'MAIDEN - MASS_REPETANCE'),
(@MAIDEN, '5', '0', 'Renounce your greed and perversion!', '14', '100', '58647', 'MAIDEN - HOLY_BULWARK'),
(@MAIDEN, '6', '0', 'Repent... or DIE!', '14', '100', '58648', 'MAIDEN - HOLY_WRATH'),
(@MAIDEN, '7', '0', 'Purified!', '14', '100', '58641', 'MAIDEN - KILL'),
(@MAIDEN, '7', '1', 'A teachable moment.', '14', '100', '58641', 'MAIDEN - KILL'),
(@MAIDEN, '8', '0', 'The lesson is complete.', '14', '100', '58641', 'MAIDEN - WIPE'),
(@MAIDEN, '8', '1', 'A pure mind is an orderly mind.', '14', '100', '58641', 'MAIDEN - WIPE'),
(@MAIDEN, '9', '0', 'I will... never... relent...', '14', '100', '58641', 'MAIDEN - DEATH'),
(@MAIDEN, '9', '1', 'You are all... as corrupt... as the Guardian...', '14', '100', '58641', 'MAIDEN - DEATH');

SET @MANA_DEVOURER := 116494;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_mana_devourer', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MANA_DEVOURER, 11649401, 11649402);

UPDATE `creature_template` SET 
`flags_extra` = 128
WHERE `entry` IN (98080, 98081, 98082);



DELETE FROM `spell_script_names` WHERE `spell_id` IN (227297, 227524, 227451);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227297, 'spell_devourer_coalesce_power'),
(227524, 'spell_devourer_energy_void'),
(227451, 'spell_devourer_mana_restore');

DELETE FROM `areatrigger_template` WHERE `id` IN (8791, 9077, 8754);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8791, 0, 2, 10, 10, 0, 0, 0, 0, 'at_kara_energy_void', 23420),
(9077, 0, 0, 0.5, 0.5, 0, 0, 0, 0, '', 23420),
(8754, 0, 4, 3, 3, 0, 0, 0, 0, 'at_kara_loose_mana', 23420);

UPDATE `instance_template` SET `script` = 'instance_new_karazhan' WHERE `map` = 1651;

DELETE FROM `creature_model_info` WHERE `DisplayID` = 73157;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`) VALUES
(73157, 8.012421, 10, 2);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8791, 9077, 8754);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8791, 8791, 0, 2294, 0, 0, 85, 0, 120000, 23420), -- SpellId: 227523
(9077, 9077, 0, 0, 0, 0, 0, 0, 10000, 23420), -- SpellId : 230212
(8754, 8754, 0, 0, 0, 0, 0, 375109, 0, 23420); -- SpellId: 227296

SET @MOROES := 114312;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_moroes', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 1,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MOROES, 11431201, 11431202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_moroes_guest', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16
WHERE `entry` IN (114316, 114317, 114318, 114319, 114320, 114321);

DELETE FROM `creature` WHERE `id` IN (114316, 11431601, 11431602, 114317, 11431701, 11431702, 114318, 11431801, 11431802, 11431901, 11431902, 114320, 11432001, 11432002, 114321, 11432101, 11432102);

UPDATE `creature_template` SET 
`ScriptName` = '', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`flags_extra` = 128
WHERE `entry` IN (114327);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (227736, 227872, 227672);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227736, 'spell_moroes_vanish'),
(227872, 'spell_moroes_ghastly_purge'),
(227672, 'spell_kara_will_breaker');

DELETE FROM `creature_template_addon` WHERE `entry` = 114327;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(114327, '227472');

DELETE FROM `areatrigger_template` WHERE `id` IN (8782);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8782, 0, 4, 5, 5, 0, 0, 0, 0, 'at_kara_whirling_edge', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8782);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8782, 8782, 0, 0, 0, 0, 0, 0, 0, 23420); -- SpellId: 227472

DELETE FROM `creature_text` WHERE `CreatureID` = @MOROES;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@MOROES, '0', '1', 'The master has not been himself for quite some time. Perhaps a feast will brighten his spirit.', '14', '100', '58641', 'MOROES - INTRO'),
(@MOROES, '1', '0', 'I don\'t believe the master is expecting you!', '14', '100', '58644', 'MORES - AGGRO'),
(@MOROES, '1', '1', 'I do so detest party crashers!', '14', '100', '58644', 'MOROES - AGGRO'),
(@MOROES, '1', '2', 'I\'ll drag you out by your scruff!', '14', '100', '58645', 'MOROES - AGGRO'),
(@MOROES, '1', '3', 'May we see your invitation?', '14', '100', '58646', 'MOROES - AGGRO'),
(@MOROES, '2', '0', 'May I take your jacket?', '14', '100', '58639', 'MOROES - COAT_JACKET'),
(@MOROES, '2', '1', 'Mind your manners!', '14', '100', '58638', 'MOROES - COAT_JACKET'),
(@MOROES, '3', '0', 'I insist you dress for dinner!', '14', '100', '58640', 'MOROES - VANISH'),
(@MOROES, '4', '0', 'Stop troubling the master\'s guests!', '14', '100', '58642', 'MOROES - GHASTLY'),
(@MOROES, '5', '0', 'Nothing a good sprinkling of sawdust can\'t handle.', '14', '100', '58647', 'MOROES - KILL'),
(@MOROES, '5', '1', 'I\'ll have the cleaning crew take care of this... mess.', '14', '100', '58648', 'MOROES - KILL'),
(@MOROES, '5', '2', 'Hm! Seems that one had enough for the evening.', '14', '100', '58641', 'MOROES - KILL'),
(@MOROES, '5', '3', 'Stop being such a nuisance!', '14', '100', '58641', 'MOROES - KILL'),
(@MOROES, '6', '0', 'Perhaps your party would be more comfortable at the children\'s table.', '14', '100', '58641', 'MOROES - WIPE'),
(@MOROES, '6', '1', 'The guards really must do a better job of keeping out the ruffians.', '14', '100', '58641', 'MOROES - WIPE'),
(@MOROES, '7', '0', 'Seems I\'ll be... retiring... for... the evening...', '14', '100', '58641', 'MOROES - DEATH'),
(@MOROES, '7', '1', 'Master... I hope... I served you... well...', '14', '100', '58641', 'MOROES - DEATH'),
(@MOROES, '7', '2', 'I fear that I am currently... indisposed...', '14', '100', '58641', 'MOROES - DEATH'),
(@MOROES, '7', '3', 'I will just need... a moment...', '14', '100', '58641', 'MOROES - DEATH');

SET @NIGHTBANE := 114895;
SET @ARCHANAGOS := 115213;
SET @IMAGE_MEDIVH := 115038;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_nightbane', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 4,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@NIGHTBANE, 11489501, 11489502);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_bonecurse',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`InhabitType` = 4
WHERE `entry` IN (114903, 11490301, 11490302);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_restless_bones',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16
WHERE `entry` IN (114906, 11490601, 11490602);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_image_of_medivh',
`npcflag` = 1
WHERE `entry` IN (115038, 11503801, 11503802);

UPDATE `gameobject_template` SET 
`ScriptName` = 'go_door_entrance'
WHERE `entry` = 259690;

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_soul_fragment',
`npcflag` = `npcflag` |16777216,
`unit_flags` = 768
WHERE `entry` IN (115103, 115113, 115101, 115013, 115105);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (228862, 228796, 228829, 228835);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(228862, 'spell_nightbane_charred_earth'),
(228796, 'spell_nightbane_ignite_soul'),
(228829, 'spell_nightbane_burning_bones'),
(228835, 'spell_kara_absorb_vitality');

DELETE FROM `spell_target_position` WHERE `ID` IN (232406);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(232406, 0, 1651, -11049.805, -1980.708, 101.889, 23360);

DELETE FROM `areatrigger_template` WHERE `id` IN (8905, 9175);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8905, 0, 0, 10, 10, 0, 0, 0, 0, 'at_kara_charred_earth', 24461),
(9175, 4, 0, 10, 10, 4, 4, 0.3, 0.3, '', 24461);


REPLACE INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawndifficulties`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(115103, 1651, 8443, 8443, 8388608, 0, 0, 0, -10980.71, -1865.066, 81.81189, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(115105, 1651, 0, 0, 8388608, 0, 0, 0, -10895.200, -1806.410, 91.579, 4.62, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(115101, 1651, 0, 0, 8388608, 0, 0, 0, -10899, -2076.939, 49.55752, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(115013, 1651, 0, 0, 8388608, 0, 0, 0, -10849.97, -2095.043, 92.24573, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(@NIGHTBANE, 1651, 0, 0, 8388608, 0, 0, 0, -11161.1, -1948.520, 91.4738, 2.12048, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(11489501, 1651, 0, 0, 8388608, 0, 0, 0, -11161.1, -1948.520, 91.4738, 2.12048, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(11489502, 1651, 0, 0, 8388608, 0, 0, 0, -11161.1, -1948.520, 91.4738, 2.12048, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8905, 9175);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8905, 8905, 0, 0, 0, 0, 0, 0, 60000, 24461), -- SpellId : 228864
(9175, 9175, 0, 0, 0, 0, 93, 0, 60000, 24461); -- SpellId : 228864

DELETE FROM `creature_text` WHERE `CreatureID` IN (@NIGHTBANE, @ARCHANAGOS, @IMAGE_MEDIVH);
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@NIGHTBANE, '0', '0', 'Learn the meaning of torment!', '14', '100', '77532', 'NIGHTBANE - AGGRO'),
(@NIGHTBANE, '0', '1', 'Come forth and burn! ', '14', '100', '77534', 'NIGHTBANE - AGGRO'),
(@NIGHTBANE, '1', '0', 'Burn from the inside!', '14', '100', '77523', 'NIGHTBANE - IGNITE_SOUL'),
(@NIGHTBANE, '1', '1', 'Your soul betrays your allies!', '14', '100', '77522', 'NIGHTBANE - IGNITE_SOUL'),
(@NIGHTBANE, '1', '2', 'Your lifeblood is my weapon!', '14', '100', '77524', 'NIGHTBANE - IGNITE_SOUL'),
(@NIGHTBANE, '2', '0', 'I\'ve toyed with you long enough!', '14', '100', '77545', 'NIGHTBANE - PHASE_AIR'),
(@NIGHTBANE, '2', '1', 'Miserable vermin. I shall exterminate you from the air!', '14', '100', '77528', 'NIGHTBANE - PHASE_AIR'),
(@NIGHTBANE, '3', '0', 'Enough! I will finish you myself!', '14', '100', '77529', 'NIGHTBANE - PHASE_3'),
(@NIGHTBANE, '3', '1', 'I will end you!', '14', '100', '77546', 'NIGHTBANE - PHASE_3'),
(@NIGHTBANE, '3', '2', 'Time to end this!', '14', '100', '77544', 'NIGHTBANE - PHASE_3'),
(@NIGHTBANE, '4', '0', 'Run, cowards!', '14', '100', '77525', 'NIGHTBANE - BELLOWING_ROAR'),
(@NIGHTBANE, '4', '1', 'Weak-willed mortals!', '14', '100', '77526', 'NIGHTBANE - BELLOWING_ROAR'),
(@NIGHTBANE, '4', '2', 'Your courage falters!', '14', '100', '77527', 'NIGHTBANE - BELLOWING_ROAR'),
(@NIGHTBANE, '5', '0', 'I\'ll reduce you to ashes!', '14', '100', '77533', 'NIGHTBANE - KILL'),
(@NIGHTBANE, '5', '1', 'Kindling for the fire!', '14', '100', '77535', 'NIGHTBANE - KILL'),
(@NIGHTBANE, '5', '2', 'Pathetic!', '14', '100', '77536', 'NIGHTBANE - KILL'),
(@NIGHTBANE, '5', '3', 'Who\'s next?!', '14', '100', '77537', 'NIGHTBANE - KILL'),
(@NIGHTBANE, '6', '0', 'Mortals never learn.', '14', '100', '77539', 'NIGHTBANE - WIPE'),
(@NIGHTBANE, '6', '1', 'Pitiful... as expected.', '14', '100', '77538', 'NIGHTBANE - WIPE'),
(@NIGHTBANE, '6', '2', 'You called me here only to die at my feet?', '14', '100', '77540', 'NIGHTBANE - WIPE'),
(@NIGHTBANE, '7', '0', 'It is... never... over...', '14', '100', '77541', 'NIGHTBANE - DEATH'),
(@NIGHTBANE, '7', '1', 'I will... never... be free...', '14', '100', '77542', 'NIGHTBANE - DEATH'),
(@NIGHTBANE, '8', '0', 'Am I damned to answer the summons of mortals for all eternity?', '14', '100', '77530', 'NIGHTBANE - DEATH'),
(@NIGHTBANE, '9', '0', 'So be it! You will suffer for your insolence!', '14', '100', '77531', 'NIGHTBANE - DEATH'),
(@NIGHTBANE, '10', '0', 'The strange chill of a dark presence winds through the air', '41', '100', '0', 'NIGHTBANE - START TIMER'),
(@IMAGE_MEDIVH, '0', '0', 'You\'ve got my attention, dragon. You\'ll find I\'m not as easily scared as the villagers below.', '14', '100', '58641', 'IMAGE_MEDIVH_REPLY'),
(@IMAGE_MEDIVH, '1', '0', 'You dare challenge me at my own dwelling? Your arrogance is astounding, even for a dragon.', '14', '100', '58641', 'IMAGE_MEDIVH_REPLY'),
(@IMAGE_MEDIVH, '2', '0', 'I do not know what you speak of, dragon... but I will not be bullied by this display of insolence. I\'ll leave Karazhan when it suits me!', '14', '100', '58641', 'IMAGE_MEDIVH_REPLY'),
(@IMAGE_MEDIVH, '3', '0', 'He should not have angered me. I must go... recover my strength now...', '14', '100', '58641', 'IMAGE_MEDIVH_REPLY'),
(@ARCHANAGOS, '0', '0', 'Your dabbling in the arcane has gone too far, Medivh. You\'ve attracted the attention of powers beyond your understanding. You must leave Karazhan at once!', '14', '100', '58641', 'IMAGE_OF_ARCANAGOS'),
(@ARCHANAGOS, '1', '0', 'A dark power seeks to use you, Medivh! If you stay, dire days will follow. You must hurry, we don\'t have much time!', '14', '100', '77690', 'IMAGE_OF_ARCANAGOS'),
(@ARCHANAGOS, '2', '0', 'You leave me no alternative. I will stop you by force if you won\'t listen to reason.', '14', '100', '58641', 'IMAGE_OF_ARCANAGOS'),
(@ARCHANAGOS, '3', '0', 'What have you done, wizard? This cannot be! I\'m burning from... within!', '14', '100', '58641', 'IMAGE_OF_ARCANAGOS');

SET @ELFYRA         := 114284;
SET @GALINDRE       := 114251;
SET @COGGLESTON     := 114328;
SET @LUMINORE       := 114329;
SET @BABLET         := 114330;
SET @MRS_CAULDRON   := 114522;
SET @TOE_KNEE       := 114261;
SET @MRRGRIA        := 114260;
SET @BARNES         := 114339;

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_barnes',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 35,
`npcflag` = 1
WHERE `entry` IN (@BARNES, 11433901, 11433902);

UPDATE `creature_template` SET 
`ScriptName` = 'boss_opera_toe_knee', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@TOE_KNEE, 11426101, 11426102);

UPDATE `creature_template` SET 
`ScriptName` = 'boss_opera_mrrgria', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MRRGRIA, 11426001, 11426002);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_gang_ruffian', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16
WHERE `entry` IN (114265, 11426501, 11426502);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_shoreline_speaker', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16
WHERE `entry` IN (114266, 11426601, 11426602);

UPDATE `creature_template` SET 
`ScriptName` = 'boss_opera_elfyra', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@ELFYRA, 11428401, 11428402);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_galyndre',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@GALINDRE, 11432801, 11432802);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_winged_assistant',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16
WHERE `entry` IN (114324, 11432401, 11432402);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_coggleston',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@COGGLESTON, 11432801, 11432802);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_luminore',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@LUMINORE, 11432901, 11432902);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_bablet',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`speed_walk` = 0.25,
`speed_run` = 0.5,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@BABLET, 11433001, 11433002);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_mrs_cauldrons',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MRS_CAULDRON, 11452201, 11452202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_flashing_forks',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16
WHERE `entry` IN (116574, 11657401, 11657402);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (231869, 227776, 227447, 227477, 228221, 227449, 227453, 227777, 227783);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(231869, 'spell_opera_wikket_bond'),
(227776, 'spell_opera_magic_magnificient'),
(227447, 'spell_opera_defy_gravity'),
(227477, 'spell_opera_summon_assistants'),
(228221, 'spell_opera_severe_dusting'),
(227449, 'spell_opera_dashing_gale'),
(227453, 'spell_opera_dashing_gale_area'),
(227777, 'spell_opera_thunder_ritual'),
(227783, 'spell_opera_wash_away');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (228011, 227568, 227319, 227453);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(228011, 228013, 1, 'Soup Spray - Mrs Cauldrons'),
(227568, 227567, 1, 'Burning Leg Sweep - Toe Knee'),
(227319, 227325, 0, 'Poisonous Shank - Gang Ruffian');

-- Severe Dusting


DELETE FROM `areatrigger_template` WHERE `id` IN (8843, 8763, 8847, 8781, 8811, 8764);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8843, 4, 2, 2, 2, 20, 20, 1.5, 1.5, 'at_kara_burning_blaze', 23420),
(8763, 0, 4, 3, 3, 0, 0, 0, 0, 'at_kara_defy_gravity', 23420),
(8847, 4, 4, 1, 1, 20, 20, 3, 3, '', 23420),
(8781, 0, 0, 3, 3, 0, 0, 0, 0, 'at_kara_dashing_gale', 23420),
(8811, 1, 0, 3, 5, 3, 3, 5, 3, 'at_kara_wash_away', 23420),
(8764, 0, 0, 3, 3, 0, 0, 0, 0, 'at_kara_bubble_blast', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8843, 8763, 8847, 8781, 8811, 8764);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8843, 8843, 0, 2564, 0, 0, 0, 0, 60000, 23420), -- SpellId : 228197
(8763, 8763, 0, 0, 0, 0, 0, 0, 180000, 23420), -- SpellId: 227472
(8847, 8847, 0, 0, 0, 0, 0, 0, 0, 23420), -- SpellId : 228213
(8781, 8781, 0, 0, 0, 0, 0, 0, 60000, 23420), -- SpellId: 227471
(8811, 8811, 0, 0, 0, 0, 0, 0, 18000, 23420), -- SpellId: 227790
(8764, 8764, 0, 0, 0, 0, 0, 0, 20000, 23420); -- SpellId: 227420







DELETE FROM `creature_text` WHERE `CreatureID` IN (@ELFYRA, @GALINDRE, @BARNES, @TOE_KNEE, @MRRGRIA, @COGGLESTON, @LUMINORE, @BABLET, @MRS_CAULDRON);
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
-- Elfyra --
(@ELFYRA, '0', '0', 'We all deserve a chance to fly! Hey, do you really think the Wizard will de-greenify me?', '14', '100', '77153', 'ELFYRA - INTRO'),
(@ELFYRA, '1', '0', 'I don\'t have any friends... well, apart from you, Galindre.', '14', '100', '77154', 'ELFYRA - INTRO'),
(@ELFYRA, '2', '1', 'Together, we\'re unlimited!', '14', '100', '77146', 'ELFYRA - AGGRO'),
(@ELFYRA, '3', '0', 'Sorry to bring you down!', '14', '100', '77147', 'ELFYRA - DEFY_GRAVITY'),
(@ELFYRA, '3', '1', 'You deserve a chance to fly!', '14', '100', '77148', 'ELFYRA - DEFY_GRAVITY'),
(@ELFYRA, '4', '0', 'Come see my minions, and let them be heard!', '14', '100', '77149', 'ELFYRA - SUMMON_ASSISTANTS'),
(@ELFYRA, '4', '1', 'Elekkamomen otunbuntu rotu kerlaramen!', '14', '100', '77150', 'ELFYRA - SUMMON_ASSISTANTS'),
(@ELFYRA, '5', '0', 'For the first time, I feel... wikket.', '14', '100', '77151', 'ELFYRA - KILL'),
(@ELFYRA, '5', '1', 'That was quite the commotion!', '14', '100', '77152', 'ELFYRA - KILL'),
(@ELFYRA, '6', '0', 'How beautifully... tragic.', '14', '100', '77145', 'ELFYRA - DEATH'),
-- Galindre --
(@GALINDRE, '0', '0', 'Elfyra, come down from there! You\'re fluttering about like one of those horrible monkey creatures!', '14', '100', '77161', 'GALINDRE - INTRO'),
(@GALINDRE, '1', '0', 'Of course, dear! Though that old frock of yours... Oh, look! Some new friends have come to pay us a visit.', '14', '100', '77162', 'GALINDRE - INTRO'),
(@GALINDRE, '2', '0', 'If you\'re my friend, you\'ll make the hozen get rid of these interlopers... then we\'re off to see the Wizard!', '14', '100', '77163', 'GALINDRE - INTRO'),
(@GALINDRE, '3', '0', 'Follow my lead and you\'ll be popular!', '14', '100', '77158', 'GALINDRE - AGGRO'),
(@GALINDRE, '4', '0', 'This place could stand to be Galindre-fied!', '14', '100', '77157', 'GALINDRE - MAGIC_MAGNIFICIENT'),
(@GALINDRE, '4', '1', 'Now for something most magnificent!', '14', '100', '77156', 'GALINDRE - MAGIC_MAGNIFICIENT'),
(@GALINDRE, '5', '0', 'That one needed a makeover.', '14', '100', '77159', 'GALINDRE - KILL'),
(@GALINDRE, '5', '1', 'Have you misplaced your wikket mind?', '14', '100', '77160', 'GALINDRE - KILL'),
-- Toe Knee --
(@TOE_KNEE, '0', '0', 'So ya wanna rumble, do ya?', '14', '100', '77136', 'TOE_KNEE - AGGRO'),
(@TOE_KNEE, '0', '1', 'Let\'s dance!', '14', '100', '77137', 'TOE_KNEE - AGGRO'),
(@TOE_KNEE, '1', '0', 'It\'s you and me against the world, baby!', '14', '100', '77135', 'TOE_KNEE - INTRO'),
(@TOE_KNEE, '2', '0', 'Wanna go for a spin?', '14', '100', '77132', 'TOE_KNEE - DASHING_GALE'),
(@TOE_KNEE, '3', '0', 'Now that\'s what I call a hot foot!', '14', '100', '77133', 'TOE_KNEE - BURNING_LEG_SWEEP'),
(@TOE_KNEE, '4', '0', 'Beat it!', '14', '100', '77138', 'TOE_KNEE - KILL'),
(@TOE_KNEE, '4', '1', 'Go on! Scram!', '14', '100', '77139', 'TOE_KNEE - KILL'),
(@TOE_KNEE, '5', '0', 'A gang that don\'t own the fields, is nothing!', '14', '100', '77140', 'TOE_KNEE - WIPE'),
(@TOE_KNEE, '5', '1', 'I dug you punks a early grave!', '14', '100', '77141', 'TOE_KNEE - WIPE'),
(@TOE_KNEE, '6', '0', 'I\'ll never... stop saying... Mrrgria...?', '14', '100', '77142', 'TOE_KNEE - DEATH'),
(@TOE_KNEE, '6', '1', 'There\'s a... place for us... somewhere...', '14', '100', '77143', 'TOE_KNEE - DEATH'),
-- Coggleston --
(@COGGLESTON, '0', '0', 'Luminore! Mrs. Cauldrons! Babblet! Let us dispose with these interlopers!', '14', '100', '77088', 'COGGLESTON - AGGRO'),
(@COGGLESTON, '1', '0', 'Quickly now! Get rid of them!', '14', '100', '77094', 'COGGLESTON - KARA_KAZHAM'),
(@COGGLESTON, '2', '0', 'Delightful! One less guest for dinner!', '14', '100', '77089', 'COGGLESTON - KILL'),
(@COGGLESTON, '3', '0', 'Never stand in the way of true love!', '14', '100', '77090', 'COGGLESTON - WIPE'),
(@COGGLESTON, '4', '0', 'It seems... my rose... has... wilted...', '14', '100', '77091', 'COGGLESTON - DEATH'),
(@COGGLESTON, '5', '0', 'Oh no, no, no... this won\'t do! You outsiders will ruin our final chance to break the curse!', '14', '100', '77105', 'COGGLESTON - CONVERSATION'),
(@COGGLESTON, '6', '0', 'It\'s working! It\'s working!', '14', '100', '77106', 'COGGLESTON - CONVERSATION'),
-- Luminore --
(@LUMINORE, '0', '0', 'Zee true love, eet burnses!', '14', '100', '77095', 'LUMINORE - HEAT_WAVE'),
(@LUMINORE, '1', '0', 'The candle! Mine!', '14', '100', '77092', 'LUMINORE - KILL'),
(@LUMINORE, '2', '0', 'No... take... zee... candle...', '14', '100', '77093', 'LUMINORE - DEATH'),
-- Bablet --
(@BABLET, '0', '0', 'That will teach you to flirt with my boyfriend!', '14', '100', '77099', 'BABLET - KILL'),
(@BABLET, '1', '0', 'Only beauty... can kill... a brute...', '14', '100', '77100', 'BABLET - DEATH'),
-- Mrs Cauldrons --
(@MRS_CAULDRON, '0', '0', 'Hope I don\'t spoil your appetite, dearies!', '14', '100', '77096', 'MRS_CAULDRON - SOUP_SPRAY'),
(@MRS_CAULDRON, '1', '0', 'That didn\'t go very well at all, did it?', '14', '100', '77098', 'MRS_CAULDRON - KILL'),
(@MRS_CAULDRON, '2', '0', 'Guess I\'m... sleeping in... the cupboard.', '14', '100', '77097', 'MRS_CAULDRON - DEATH');

SET @SHADE_MEDIVH := 114350;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_shade_of_medivh', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 1,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@SHADE_MEDIVH, 11435001, 11435002);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_guardian_image', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`InhabitType` = 1,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (114675, 11467501, 11467502);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (228334, 227806, 228269);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(228269, 'spell_shade_medivh_flame_wreath'),
(227806, 'spell_shade_medivh_ceaseless_winter'),
(228334, 'spell_shade_medivh_guardian_image');



DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 227641;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(227641, 227644, 1, 'Piercing Missiles - Shade of Medivh');

DELETE FROM `spell_target_position` WHERE `ID` = 227779;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(227779, 0, 1651, -4599.05, -2518.14, 2876.59, 23360),
(227779, 1, 1651, -4599.05, -2518.14, 2876.59, 23360);

DELETE FROM `areatrigger_template` WHERE `id` IN (8809, 8848, 8851);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8809, 4, 0, 40, 40, 1, 1, 0.3, 0.3, '', 23420),
(8848, 4, 0, 40, 40, 15, 15, 0.3, 0.3, 'at_kara_ceaseless_winter', 23420),
(8851, 0, 0, 4, 4, 0, 0, 0, 0, 'at_kara_flame_wreath', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN  (8809, 8848, 8851);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8809, 8809, 0, 0, 2285, 0, 89, 0, 20000, 23420), -- SpellId : 227779
(8848, 8848, 0, 0, 2307, 0, 0, 0, 20000, 23420), -- SpellId : 227779
(8851, 8851, 2618, 0, 0, 0, 0, 0, 20000, 23420); -- SpellId : 228257

DELETE FROM `creature_text` WHERE `CreatureID` = @SHADE_MEDIVH;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@SHADE_MEDIVH, '0', '0', 'This is who I am. I was tainted from birth, polluted from before my conception, a bad seed grown to bear bitter fruit.', '14', '100', '58644', 'CURATOR - INTRO'),
(@SHADE_MEDIVH, '1', '0', 'Hello, champions. I\'ve been expecting you.', '14', '100', '58644', 'SHADE_MEDIVH - AGGRO'),
(@SHADE_MEDIVH, '1', '1', 'You\'re just like the others, aren\'t you?', '14', '100', '77558', 'SHADE_MEDIVH - AGGRO'),
(@SHADE_MEDIVH, '2', '0', 'A basic spell... but effective', '14', '100', '77549', 'SHADE_MEDIVH - PIERCING_MISSILES'),
(@SHADE_MEDIVH, '2', '1', 'You grow weaker... I grow stronger!', '14', '100', '77564', 'SHADE_MEDIVH - PIERCING_MISSILES'),
(@SHADE_MEDIVH, '3', '0', 'The inherent nature of fire...', '14', '100', '77561', 'SHADE_MEDIVH - EVOCATION'),
(@SHADE_MEDIVH, '3', '1', 'Burn... just like that dragon!', '14', '100', '77570', 'SHADE_MEDIVH - EVOCATION'),
(@SHADE_MEDIVH, '4', '0', 'A memory, frozen in time!', '14', '100', '77560', 'SHADE_MEDIVH - EVOCATION_END'),
(@SHADE_MEDIVH, '5', '0', 'Keep still. Let it end.', '14', '100', '77555', 'SHADE_MEDIVH - KILL'),
(@SHADE_MEDIVH, '5', '1', 'Winter is here!', '14', '100', '77572', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '6', '0', 'I suggest staying put.', '14', '100', '77566', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '6', '1', 'It burns, burns, burns!', '14', '100', '77550', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '7', '0', 'Carrion for the birds...', '14', '100', '77570', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '7', '1', 'So many pieces of me...', '14', '100', '77565', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '8', '0', 'Just. Gets. Easier.', '14', '100', '77557', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '8', '1', 'A fitting end for a thief!', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '8', '2', 'All goes as planned.', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '8', '3', 'The tower needed a new decoration.', '14', '100', '77571', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '9', '0', 'You have no idea what it\'s like to do the things I\'ve done. Harsh things. Necessary things.', '14', '100', '77557', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '9', '1', 'Once you get used to it, you can kill friends as easily as anyone else.', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '10', '0', 'I fought it... for as long as... I could...', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '10', '1', 'So... it comes... to this...', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '10', '2', 'Atiesh... will be... splintered...', '14', '100', '77569', 'SHADE_MEDIVH - DEATH');

SET @VIZADUUM := 114790;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_vizaduum', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`InhabitType` = 4,
`unit_class` = 2,
`unit_flags2` = 0,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@VIZADUUM, 11479001, 11479002);

UPDATE `creature_template` SET
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`InhabitType` = 4,
`flags_extra` = 128
WHERE `entry` IN (114913, 11491301, 11491302);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_fel_cannon',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`speed_walk` = 0.725,
`speed_run` = 0.725,
`flags_extra` = 128
WHERE `entry` IN (115274, 11527401, 11527402);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_invisible_vehicle',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 35,
`InhabitType` = 4,
`speed_walk` = 4,
`speed_run` = 4,
`flags_extra` = 128,
`VehicleId` = 5009
WHERE `entry` IN (115361, 11536101, 11536102);

UPDATE `creature_template` SET
`ScriptName` = 'npc_stabilize_rift',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`InhabitType` = 4,
`flags_extra` = 128
WHERE `entry` IN (115789, 11578901, 11578902);

UPDATE `creature_template` SET
`faction` = 16,
`flags_extra` = 128,
`InhabitType` = 8
WHERE `entry` = 115493;

DELETE FROM `creature_template_addon` WHERE `entry` IN (115694, 114913);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(115694, '229906');

DELETE FROM `creature` WHERE `id` = 114913 AND `map` = 1651;
REPLACE INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawndifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
('114913','1651','8443','8443','8388608','0','0','0','0','3397.11','-2142.85','977.435','6.11565','7200','0','0','0','0','0','0','0','0','','23420'),
('114913','1651','8443','8443','8388608','0','0','0','0','3800.63','-1876.49','869.978','4.18863','7200','0','0','0','0','0','0','0','0','','23420');

DELETE FROM `gameobject` WHERE `id` = 265486 AND `map` = 1651;
REPLACE INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawndifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
('265486','1651','8443','8443','8388608','0','1','3960.62','-2007.71','671.739','4.03272','0','0','-0.902368','0.430965','7200','255','1','','23420'),
('265486','1651','8443','8443','8388608','0','1','3496.74','-1959.66','784.618','5.803','0','0','-0.237792','0.971316','7200','255','1','','23420');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (229159, 229283, 229287, 229246, 229151, 230084);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(229159, 'spell_vizaduum_chaotic_shadows'),
(229283, 'spell_vizaduum_bombardment_charge'),
(229287, 'spell_vizaduum_bombardment_aura'),
(229246, 'spell_vizaduum_fel_beam_charge'),
(229151, 'spell_vizaduum_disintegrate'),
(230084, 'spell_vizaduum_stabilize_rift');

DELETE FROM `areatrigger_template` WHERE `id` IN (8939, 8940, 8941, 8942, 8943, 8944, 8945, 8946, 9009, 8963, 8962, 9054);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8939, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8940, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8941, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8942, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8943, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8944, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8945, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8946, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(9009, 0, 0, 5, 5, 0, 0, 0, 0, 'at_kara_demonic_portal', 23420),
(8963, 0, 2, 5, 5, 0, 0, 0, 0, 'at_kara_fel_flames', 23420),
(8962, 0, 4, 5, 5, 0, 0, 0, 0, 'at_kara_fel_beam', 23420),
(9054, 0, 4, 12, 12, 0, 0, 0, 0, 'at_kara_soul_harvest', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8939, 8940, 8941, 8942, 8943, 8944, 8945, 8946, 9009, 8962, 8963, 9054);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8939, 8939, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8940, 8940, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8941, 8941, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8942, 8942, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8943, 8943, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8944, 8944, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8945, 8945, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8946, 8946, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(9009, 9009, 0, 0, 0, 0, 0, 0, 30000, 23420), -- SpellId : 229591
(8962, 8962, 0, 0, 0, 0, 98, 0, 8000, 23420), -- SpellId : 229244
(8963, 8963, 0, 0, 0, 0, 98, 0, 120000, 23420), -- SpellId : 229249
(9054, 9054, 0, 0, 0, 0, 0, 0, 0, 23420); -- SpellId : 229906

DELETE FROM `waypoint_data` WHERE `id` IN (11479010, 11479020);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(11479010, 0, 3717.774, -2079.090, 850.9378 ),
(11479010, 1, 3905.002, -1978.016, 965.4493 ),
(11479010, 2, 3915.754, -1971.380, 930.000 ),
(11479020, 0, 3826.860, -2041.582, 932.946  ),
(11479020, 1, 3659.277, -2061.302, 973.476  ),
(11479020, 2, 3571.789, -2043.062, 1008.941 ),
(11479020, 3, 3470.271, -2010.690, 1045.000 );


UPDATE `creature_template` SET `spell1`='111582', `AIName`='' WHERE (`entry`='58876');
DELETE FROM smart_scripts WHERE entryorguid=58876;
INSERT INTO `smart_scripts` (`entryorguid`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_param1`, `target_type`, `comment`) VALUES ('58876', '6000', '10000', '14000', '17000', '111582', '1', 'Hungry Dog');
UPDATE `gameobject_template` SET `name`='Tears of the Vale' WHERE (`entry`='221776');
UPDATE `creature_template` SET `ScriptName`='boss_sha_of_pride' WHERE (`entry`='71734');
UPDATE `creature_template` SET `ScriptName`='boss_norushen_pride' WHERE (`entry`='71967');
UPDATE `creature_template` SET `ScriptName`='npc_manifestation_of_pride' WHERE (`entry`='72280');
UPDATE `creature_template` SET `ScriptName`='npc_self_reflection' WHERE (`entry`='72172');
UPDATE `creature_template` SET `ScriptName`='npc_rift_of_corruption' WHERE (`entry`='72846');
UPDATE `creature_template` SET `ScriptName`='npc_jaina_proudmoore_pride' WHERE (`entry`='73598');
UPDATE `creature_template` SET `AIName`='' WHERE (`entry`='71734');
DELETE FROM gameobject WHERE guid=232960;
UPDATE `creature_template` SET `scriptname`='npc_crimsonborne_warlord' WHERE `entry`=39626;
UPDATE `creature_template` SET `scriptname`='npc_faceless_corruptor' WHERE `entry`=39392;
UPDATE `creature_template` SET `scriptname`='npc_chogall_corruption' WHERE `entry`=43999;
UPDATE `creature_template` SET `scriptname`='npc_overcome_by_anger_bunny' WHERE `entry`=60732;
UPDATE `creature_template` SET `scriptname`='npc_ancestral_brewmaster' WHERE `entry`=59075;
UPDATE `creature_template` SET `scriptname`='npc_leaking_beer_barrel' WHERE `entry`=73186;
UPDATE `creature_template` SET `scriptname`='npc_beer_barrel_bunny' WHERE `entry`=66215;
UPDATE `creature_template` SET `scriptname`='npc_sap_globule' WHERE `entry`=61623;
UPDATE `creature_template` SET `scriptname`='npc_sikthik_amberwing' WHERE `entry`=61699;
UPDATE `creature_template` SET `scriptname`='npc_sikthik_add_vojak' WHERE `entry`=61670;
UPDATE `creature_template` SET `scriptname`='npc_sikthik_add_vojak' WHERE `entry`=61701;
UPDATE `creature_template` SET `scriptname`='npc_sikthik_add_vojak' WHERE `entry`=63106;
UPDATE `creature_template` SET `scriptname`='npc_mantid_tar_keg_vojak' WHERE `entry`=61817;
UPDATE `creature_template` SET `scriptname`='npc_tar_puddle_vojak' WHERE `entry`=61579;
UPDATE `creature_template` SET `scriptname`='npc_sikthik_warden' WHERE `entry`=62795;
UPDATE `creature_template` SET `scriptname`='npc_yang_ironclaw' WHERE `entry`=61620;
UPDATE `creature_template` SET `scriptname`='npc_li_chu' WHERE `entry`=61812;
UPDATE `creature_template` SET `scriptname`='npc_lo_chu' WHERE `entry`=62794;
UPDATE `creature_template` SET `scriptname`='npc_sikthik_amber_sapper_pavalak' WHERE `entry`=61484;
UPDATE `creature_template` SET `scriptname`='npc_sikthik_soldier_pavalak' WHERE `entry`=62348;
UPDATE `creature_template` SET `scriptname`='npc_siege_explosives_pavalak' WHERE `entry`=61452;
UPDATE `creature_template` SET `scriptname`='boss_jin_rokh_breaker' WHERE `entry`=69465;
UPDATE `creature_template` SET `scriptname`='npc_mogu_statue_trigger' WHERE `entry`=69467;
UPDATE `creature_template` SET `scriptname`='npc_conductive_water' WHERE `entry`=69469;
UPDATE `creature_template` SET `scriptname`='npc_focused_lightning' WHERE `entry`=69593;
UPDATE `creature_template` SET `scriptname`='npc_focused_lightning' WHERE `entry`=70174;
UPDATE `creature_template` SET `scriptname`='npc_lightning_fissure' WHERE `entry`=69609;
UPDATE `creature_template` SET `scriptname`='npc_throneofthunder_teleporter' WHERE `entry`=74000;
UPDATE `creature_template` SET `scriptname`='npc_direhorn_spirit_horridon' WHERE `entry`=70688;
UPDATE `creature_template` SET `scriptname`='npc_farraki_skirmisher_amani_protector' WHERE `entry`=69169;
UPDATE `creature_template` SET `scriptname`='npc_farraki_skirmisher_amani_protector' WHERE `entry`=69173;
UPDATE `creature_template` SET `scriptname`='npc_sul_lithuz_stonegazer' WHERE `entry`=69172;
UPDATE `creature_template` SET `scriptname`='npc_farraki_wastewalker' WHERE `entry`=69175;
UPDATE `creature_template` SET `scriptname`='npc_sand_trap' WHERE `entry`=69346;
UPDATE `creature_template` SET `scriptname`='npc_gurubashi_bloodlord' WHERE `entry`=69167;
UPDATE `creature_template` SET `scriptname`='npc_gurubashi_venom_priest' WHERE `entry`=69164;
UPDATE `creature_template` SET `scriptname`='npc_venomous_effusion_horridon' WHERE `entry`=69314;
UPDATE `creature_template` SET `scriptname`='npc_living_poison_horridon' WHERE `entry`=69313;
UPDATE `creature_template` SET `scriptname`='npc_risen_drakkari_warrior_champion' WHERE `entry`=69184;
UPDATE `creature_template` SET `scriptname`='npc_risen_drakkari_warrior_champion' WHERE `entry`=69185;
UPDATE `creature_template` SET `scriptname`='npc_drakkari_frozen_warlord' WHERE `entry`=69178;
UPDATE `creature_template` SET `scriptname`='npc_frozen_orb_horridon' WHERE `entry`=69268;
UPDATE `creature_template` SET `scriptname`='npc_amani_shi_flame_caster_horridon' WHERE `entry`=69168;
UPDATE `creature_template` SET `scriptname`='npc_amani_warbear_horridon' WHERE `entry`=69177;
UPDATE `creature_template` SET `scriptname`='npc_amani_shi_beast_shaman_horridon' WHERE `entry`=69176;
UPDATE `creature_template` SET `scriptname`='npc_lightning_nova_totem' WHERE `entry`=69215;
UPDATE `creature_template` SET `scriptname`='npc_zandalari_dinomancer_horridon' WHERE `entry`=69221;
UPDATE `creature_template` SET `scriptname`='npc_war_god_jalak' WHERE `entry`=69374;
UPDATE `creature_template` SET `scriptname`='npc_whirl_turtle' WHERE `entry`=67966;
UPDATE `creature_template` SET `scriptname`='npc_vampiric_cave_bat' WHERE `entry`=69352;
UPDATE `creature_template` SET `scriptname`='npc_rockfall_tortos' WHERE `entry`=68219;
UPDATE `creature_template` SET `scriptname`='npc_humming_crystal' WHERE `entry`=69639;
UPDATE `creature_template` SET `scriptname`='npc_lei_shen_tortos' WHERE `entry`=70437;
UPDATE `creature_template` SET `scriptname`='boss_spirit_of_gara_jal_council' WHERE `entry`=69135;
UPDATE `creature_template` SET `scriptname`='boss_kazra_jin' WHERE `entry`=69134;
UPDATE `creature_template` SET `scriptname`='boss_sul_the_sandcrawler' WHERE `entry`=69078;
UPDATE `creature_template` SET `scriptname`='boss_frost_king_malakk' WHERE `entry`=69131;
UPDATE `creature_template` SET `scriptname`='boss_high_priestess_mar_li' WHERE `entry`=69132;
UPDATE `creature_template` SET `scriptname`='npc_zabrajin_reckless_charge' WHERE `entry`=69453;
UPDATE `creature_template` SET `scriptname`='npc_sul_quicksand' WHERE `entry`=69150;
UPDATE `creature_template` SET `scriptname`='npc_blessed_loa_spirit' WHERE `entry`=69480;
UPDATE `creature_template` SET `scriptname`='npc_shadowed_loa_spirit' WHERE `entry`=69548;
UPDATE `creature_template` SET `scriptname`='npc_marli_twisted_fate' WHERE `entry`=69740;
UPDATE `creature_template` SET `scriptname`='npc_garajal_council_intro' WHERE `entry`=70056;
UPDATE `creature_template` SET `scriptname`='npc_flaming_head_megaera' WHERE `entry`=70212;
UPDATE `creature_template` SET `scriptname`='npc_frozen_head_megaera' WHERE `entry`=70235;
UPDATE `creature_template` SET `scriptname`='npc_venomous_head_megaera' WHERE `entry`=70247;
UPDATE `creature_template` SET `scriptname`='npc_arcane_head_megaera' WHERE `entry`=70252;
UPDATE `creature_template` SET `scriptname`='npc_cinders_megaera' WHERE `entry`=70432;
UPDATE `creature_template` SET `scriptname`='npc_icy_ground_megaera' WHERE `entry`=70446;
UPDATE `creature_template` SET `scriptname`='npc_nether_wyrm_megaera' WHERE `entry`=70507;
UPDATE `creature_template` SET `scriptname`='npc_soo_tormented_initiate' WHERE `entry`=73349;
UPDATE `creature_template` SET `scriptname`='npc_soo_fallen_pool_tender' WHERE `entry`=73342;
UPDATE `creature_template` SET `scriptname`='npc_soo_aqueous_defender' WHERE `entry`=73191;
UPDATE `creature_template` SET `scriptname`='npc_sha_splash_bolt_immerseus' WHERE `entry`=71544;
UPDATE `creature_template` SET `scriptname`='npc_swirl_immerseus' WHERE `entry`=71548;
UPDATE `creature_template` SET `scriptname`='npc_swirl_target_immerseus' WHERE `entry`=71550;
UPDATE `creature_template` SET `scriptname`='npc_sha_puddle_immerseus' WHERE `entry`=71603;
UPDATE `creature_template` SET `scriptname`='npc_contaminated_puddle_immerseus' WHERE `entry`=71604;
UPDATE `creature_template` SET `scriptname`='boss_rook_stonetoe' WHERE `entry`=71475;
UPDATE `creature_template` SET `scriptname`='boss_he_softfoot' WHERE `entry`=71479;
UPDATE `creature_template` SET `scriptname`='boss_sun_tenderheart' WHERE `entry`=71480;
UPDATE `creature_template` SET `scriptname`='npc_embodied_misery' WHERE `entry`=71476;
UPDATE `creature_template` SET `scriptname`='npc_embodied_sorrow' WHERE `entry`=71481;
UPDATE `creature_template` SET `scriptname`='npc_embodied_gloom' WHERE `entry`=71477;
UPDATE `creature_template` SET `scriptname`='npc_embodied_anguish' WHERE `entry`=71478;
UPDATE `creature_template` SET `scriptname`='npc_embodied_despair' WHERE `entry`=71474;
UPDATE `creature_template` SET `scriptname`='npc_embodied_desperation' WHERE `entry`=71482;
UPDATE `creature_template` SET `scriptname`='npc_despair_spawn' WHERE `entry`=71712;
UPDATE `creature_template` SET `scriptname`='npc_desperation_spawn' WHERE `entry`=71993;
UPDATE `creature_template` SET `scriptname`='boss_amalgam_of_corruption' WHERE `entry`=72276;
UPDATE `creature_template` SET `scriptname`='npc_blind_hatred' WHERE `entry`=72565;
UPDATE `creature_template` SET `scriptname`='npc_residual_corruption' WHERE `entry`=72550;
UPDATE `creature_template` SET `scriptname`='npc_expelled_corruption' WHERE `entry`=74001;
UPDATE `creature_template` SET `scriptname`='npc_quarantine_measures' WHERE `entry`=72669;
UPDATE `creature_template` SET `scriptname`='npc_purifying_light_orb' WHERE `entry`=72065;
UPDATE `creature_template` SET `scriptname`='npc_lorewalker_cho_norushen' WHERE `entry`=72872;
UPDATE `instance_template` SET `script`='instance_siege_of_niuzao_temple' WHERE map=1011;
UPDATE `instance_template` SET `script`='instance_throne_of_thunder' WHERE map=1098;
UPDATE `instance_template` SET `script`='instance_siege_of_orgrimmar' WHERE map=1136;
UPDATE `instance_template` SET `script`='instance_mogu_shan_vaults' WHERE map=1008;
UPDATE `creature_template` SET `scriptname`='npc_mountaineer_watch' WHERE entry=41056;
UPDATE `creature_template` SET `scriptname`='npc_crimsonborne_warlord_empowering_flames' WHERE entry=48682;
UPDATE `creature_template` SET `scriptname`='boss_adarogg' WHERE entry=61408;
UPDATE `creature_template` SET `scriptname`='boss_gordoth' WHERE entry=61528;
UPDATE `creature_template` SET `scriptname`='boss_koranthal' WHERE entry=61412;
UPDATE `creature_template` SET `scriptname`='boss_slagmaw' WHERE entry=61463;
UPDATE `creature_template` SET `scriptname`='npc_chogall_corrupting_adherent' WHERE entry=77836;
UPDATE `creature_template` SET `scriptname`='mob_clone_player' WHERE entry=56405;
UPDATE `creature_template` SET `scriptname`='boss_unsok' WHERE entry=62511;
UPDATE `creature_template` SET `scriptname`='boss_shekzeer' WHERE entry=62837;
UPDATE `creature_template` SET `scriptname`='npc_sul_quicksand' WHERE entry=40503;
UPDATE `creature_template` SET `scriptname`='boss_megaera' WHERE entry=68065;
UPDATE `creature_template` SET `scriptname`='npc_manifestation_of_corruption' WHERE entry=71977;
UPDATE `creature_template` SET `scriptname`='npc_essence_of_corruption' WHERE entry=72263;
UPDATE `creature_template` SET `scriptname`='npc_greater_corruption' WHERE entry=72001;
UPDATE `creature_template` SET `scriptname`='npc_titanic_corruption' WHERE entry=72051;
UPDATE `creature_template` SET `scriptname`='mob_master_cannoneer_dagryn' WHERE entry=72356;
UPDATE `creature_template` SET `scriptname`='mob_high_enforcer_thranok' WHERE entry=72355;
UPDATE `creature_template` SET `scriptname`='mob_lieutenant_krugruk' WHERE entry=72357;
UPDATE `creature_template` SET `scriptname`='mob_korgra_the_snake' WHERE entry=72456;
UPDATE `creature_template` SET `scriptname`='mob_dragonmaw_bonecrusher' WHERE entry=72354;
UPDATE `creature_template` SET `scriptname`='boss_iron_juggernaut' WHERE entry=71466;
UPDATE `creature_template` SET `scriptname`='mob_crawler_mine' WHERE entry=72050;
UPDATE `creature_template` SET `scriptname`='boss_earthbreaker_haromm' WHERE entry=71859;
UPDATE `creature_template` SET `scriptname`='boss_bloodclaw' WHERE entry=71923;
UPDATE `creature_template` SET `scriptname`='mob_darkfang' WHERE entry=71921;
UPDATE `creature_template` SET `scriptname`='mob_foul_slime' WHERE entry=71825;
UPDATE `creature_template` SET `scriptname`='boss_general_nazgrim' WHERE entry=71515;
UPDATE `creature_template` SET `scriptname`='mob_orgrimmar_faithful' WHERE entry=71715;
UPDATE `creature_template` SET `scriptname`='mob_korkron_ironblade' WHERE entry=71770;
UPDATE `creature_template` SET `scriptname`='mob_korkron_arcweaver' WHERE entry=71771;
UPDATE `creature_template` SET `scriptname`='mob_korkron_assassin' WHERE entry=71518;
UPDATE `creature_template` SET `scriptname`='mob_korkron_warshaman' WHERE entry=71773;
UPDATE `creature_template` SET `scriptname`='boss_spoils_of_pandaria' WHERE entry=71889;
UPDATE `creature_template` SET `scriptname`='mob_secured_stockpile_of_spoils' WHERE entry=71501;
UPDATE `creature_template` SET `scriptname`='mob_modified_anima_golem' WHERE entry=71395;
UPDATE `creature_template` SET `scriptname`='mob_mogu_shadow_ritualist' WHERE entry=71393;
UPDATE `creature_template` SET `scriptname`='mob_zarthik_amber_priest' WHERE entry=71397;
UPDATE `creature_template` SET `scriptname`='mob_setthik_wielder' WHERE entry=71405;
UPDATE `creature_template` SET `scriptname`='mob_animated_stone_mogu' WHERE entry=71380;
UPDATE `creature_template` SET `scriptname`='mob_burial_urn' WHERE entry=71382;
UPDATE `creature_template` SET `scriptname`='mob_quilen_gardians' WHERE entry=61387;
UPDATE `creature_template` SET `scriptname`='mob_srithik_bombardier' WHERE entry=71385;
UPDATE `creature_template` SET `scriptname`='mob_korthik_warcaller' WHERE entry=71383;
UPDATE `creature_template` SET `scriptname`='mob_ancient_breawmaster_spirit' WHERE entry=71427;
UPDATE `creature_template` SET `scriptname`='mob_wise_misteweaver_spirit' WHERE entry=71428;
UPDATE `creature_template` SET `scriptname`='mob_namelesse_windwallker_spirit' WHERE entry=71430;
UPDATE `creature_template` SET `scriptname`='boss_thok_the_bloodthirsty' WHERE entry=71529;
UPDATE `creature_template` SET `scriptname`='mob_korkron_jailer' WHERE entry=73195;
UPDATE `creature_template` SET `scriptname`='mob_akolik' WHERE entry=71742;
UPDATE `creature_template` SET `scriptname`='mob_waterspeaker_gorai' WHERE entry=71749;
UPDATE `creature_template` SET `scriptname`='mob_montak' WHERE entry=71763;
UPDATE `creature_template` SET `scriptname`='boss_siegecrafter_blackfuse' WHERE entry=71504;
UPDATE `creature_template` SET `scriptname`='mob_automated_shredder' WHERE entry=71591;
UPDATE `creature_template` SET `scriptname`='boss_kilruk_the_wind_reaver' WHERE entry=71161;
UPDATE `creature_template` SET `scriptname`='boss_xaril_the_poisoned_mind' WHERE entry=71157;
UPDATE `creature_template` SET `scriptname`='boss_kaztik_the_manipulator' WHERE entry=71156;
UPDATE `creature_template` SET `scriptname`='boss_korven_the_prime' WHERE entry=71155;
UPDATE `creature_template` SET `scriptname`='boss_iyyokuk_the_lucid' WHERE entry=71160;
UPDATE `creature_template` SET `scriptname`='boss_karoz_the_locust' WHERE entry=71154;
UPDATE `creature_template` SET `scriptname`='boss_skeer_the_bloodseeker' WHERE entry=71152;
UPDATE `creature_template` SET `scriptname`='boss_rikkal_the_dissector' WHERE entry=71158;
UPDATE `creature_template` SET `scriptname`='boss_hisek_the_swarmkeeper' WHERE entry=71153;
UPDATE `creature_template` SET `scriptname`='mob_siege_engineer' WHERE entry=71984;
UPDATE `creature_template` SET `scriptname`='mob_korkron_warbringer' WHERE entry=71979;
UPDATE `creature_template` SET `scriptname`='mob_wolf_rider_farseer' WHERE entry=71983;
UPDATE `creature_template` SET `scriptname`='mob_ik_thik_warrior' WHERE entry=63635;
UPDATE `creature_template` SET `scriptname`='npc_ji_firepaw' WHERE entry=60570;
UPDATE `creature_template` SET `scriptname`='npc_ji_firepaw_escort' WHERE entry=60900;

UPDATE creature_template SET ScriptName = "boss_wind_lord_meljarak" WHERE entry = 62397;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;




UPDATE creature_template SET scriptname = 'boss_blood_princess_thalena' WHERE entry = 102431;
UPDATE creature_template SET scriptname = 'boss_anubesset' WHERE entry = 102246;
UPDATE creature_template SET scriptname = 'boss_festerface' WHERE entry = 101995;
UPDATE creature_template SET scriptname = 'boss_attumen_new' WHERE entry = 114262;
UPDATE creature_template SET scriptname = 'boss_curator_new' WHERE entry = 114247;
UPDATE creature_template SET scriptname = 'boss_moroes_new' WHERE entry = 114312;
UPDATE creature_template SET scriptname = 'boss_nightbane_new' WHERE entry = 114895;

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_stabilize_rift',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`InhabitType` = 4,
`flags_extra` = 128
WHERE `entry` IN (115789, 11578901, 11578902);


UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;
UPDATE creature_template SET scriptname = 'boss_garalon' WHERE entry = 62164;


SET @MAIDEN := 113971;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_maiden_of_virtue_new', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MAIDEN, 11397101, 11397102);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (227508, 227817, 227823);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227508, 'spell_maiden_mass_repetance'),
(227817, 'spell_maiden_holy_bulwark'),
(227823, 'spell_maiden_holy_wrath');

-- Mass Repentance


DELETE FROM `areatrigger_template` WHERE `id` = 8812;
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8812, 0, 2, 5, 5, 0, 0, 0, 0, 'at_sacred_ground', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` = 8812;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8812, 8812, 0, 2537, 0, 0, 86, 0, 155000, 23420);

DELETE FROM `creature_text` WHERE `CreatureID` = @MAIDEN;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@MAIDEN, '0', '0', 'And so begins your purification!', '14', '100', '58644', 'MAIDEN - AGGRO'),
(@MAIDEN, '0', '1', 'The stench of corruption is upon you! ', '14', '100', '58645', 'MAIDEN - AGGRO'),
(@MAIDEN, '1', '0', 'All shall be sanctified!', '14', '100', '58646', 'MAIDEN - HOLY_BOLT'),
(@MAIDEN, '2', '0', 'By fire be cleansed!', '14', '100', '58639', 'MAIDEN - HOLY_SHOCK'),
(@MAIDEN, '3', '0', 'The righteous have nothing to fear!', '14', '100', '58638', 'MAIDEN - SACRED_GROUND'),
(@MAIDEN, '3', '1', 'Step into the light, mortals!', '14', '100', '58640', 'MAIDEN - SACRED_GROUND'),
(@MAIDEN, '4', '0', 'Hold, mortals! Open your hearts to virtue!', '14', '100', '58642', 'MAIDEN - MASS_REPETANCE'),
(@MAIDEN, '5', '0', 'Renounce your greed and perversion!', '14', '100', '58647', 'MAIDEN - HOLY_BULWARK'),
(@MAIDEN, '6', '0', 'Repent... or DIE!', '14', '100', '58648', 'MAIDEN - HOLY_WRATH'),
(@MAIDEN, '7', '0', 'Purified!', '14', '100', '58641', 'MAIDEN - KILL'),
(@MAIDEN, '7', '1', 'A teachable moment.', '14', '100', '58641', 'MAIDEN - KILL'),
(@MAIDEN, '8', '0', 'The lesson is complete.', '14', '100', '58641', 'MAIDEN - WIPE'),
(@MAIDEN, '8', '1', 'A pure mind is an orderly mind.', '14', '100', '58641', 'MAIDEN - WIPE'),
(@MAIDEN, '9', '0', 'I will... never... relent...', '14', '100', '58641', 'MAIDEN - DEATH'),
(@MAIDEN, '9', '1', 'You are all... as corrupt... as the Guardian...', '14', '100', '58641', 'MAIDEN - DEATH');








SET @MANA_DEVOURER := 116494;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_mana_devourer', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MANA_DEVOURER, 11649401, 11649402);

UPDATE `creature_template` SET 
`flags_extra` = 128
WHERE `entry` IN (98080, 98081, 98082);

-- Loose Mana


DELETE FROM `spell_script_names` WHERE `spell_id` IN (227297, 227524, 227451);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227297, 'spell_devourer_coalesce_power'),
(227524, 'spell_devourer_energy_void'),
(227451, 'spell_devourer_mana_restore');

DELETE FROM `areatrigger_template` WHERE `id` IN (8791, 9077, 8754);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8791, 0, 2, 10, 10, 0, 0, 0, 0, 'at_kara_energy_void', 23420),
(9077, 0, 0, 0.5, 0.5, 0, 0, 0, 0, '', 23420),
(8754, 0, 4, 3, 3, 0, 0, 0, 0, 'at_kara_loose_mana', 23420);

UPDATE `instance_template` SET `script` = 'instance_new_karazhan' WHERE `map` = 1651;

DELETE FROM `creature_model_info` WHERE `DisplayID` = 73157;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`) VALUES
(73157, 8.012421, 10, 2);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8791, 9077, 8754);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8791, 8791, 0, 2294, 0, 0, 85, 0, 120000, 23420), -- SpellId: 227523
(9077, 9077, 0, 0, 0, 0, 0, 0, 10000, 23420), -- SpellId : 230212
(8754, 8754, 0, 0, 0, 0, 0, 375109, 0, 23420); -- SpellId: 227296

SET @CURATOR := 114247;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_curator', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 4,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@CURATOR, 11424701, 11424702);

DELETE FROM `creature_template_addon` WHERE `entry` = 114247;

UPDATE `creature_template` SET `faction` = 35 WHERE `entry` IN (114262, 11426201, 11426202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_volatile_energy', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = `unit_flags2` |2048,
`InhabitType` = 8,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` = 114249;

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (234416, 227256);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(234416, 227267, 1, 'Summon Volatile Energy - The Curator'),
(227256, 227257, 0, 'Overload - The Curator');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (227270, 227269, 227254, 227257, 227278);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227269, 'spell_kara_arc_lightning'),
(227270, 'spell_kara_arc_lightning_dmg'),
(227254, 'spell_curator_evocation'),
(227257, 'spell_curator_overload'),
(227278, 'spell_curator_power_discharge');

DELETE FROM `areatrigger_template` WHERE `id` = 8780;
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8780, 0, 0, 6, 6, 0, 0, 0, 0, 'at_kara_power_discharge', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` = 8780;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8780, 8780, 0, 0, 0, 0, 0, 0, 0, 23420); -- SpellId : 227289

DELETE FROM `creature_text` WHERE `CreatureID` = @CURATOR;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@CURATOR, '0', '0', 'Janitorial units: begin Menagerie decontamination.', '12', '100', '58644', 'CURATOR - INTRO'),
(@CURATOR, '1', '0', 'The Menagerie is for-- ERADICATE! ERADICATE!', '14', '100', '58644', 'CURATOR - AGGRO'),
(@CURATOR, '1', '1', 'Welcome to the-- TERMINATE INTRUDERS! ', '14', '100', '58645', 'CURATOR - AGGRO'),
(@CURATOR, '2', '0', 'Countermeasures deployed.', '12', '100', '58646', 'CURATOR - VOLATILE_ENERGY'),
(@CURATOR, '2', '1', 'DETERENT ACIVATED!', '12', '100', '58639', 'CURATOR - VOLATILE_ENERGY'),
(@CURATOR, '3', '0', 'Overload in progress. Prepare for-- PURGE! PURGE! PURGE!', '12', '100', '58638', 'CURATOR - EVOCATION'),
(@CURATOR, '3', '1', 'Attention guests: DIE! DIE! DIE!', '12', '100', '58640', 'CURATOR - EVOCATION'),
(@CURATOR, '4', '0', 'Deterrent protocols successful.', '12', '100', '58642', 'CURATOR - EVOCATION_END'),
(@CURATOR, '5', '0', 'EXTERMINATED!', '12', '100', '58647', 'CURATOR - KILL'),
(@CURATOR, '6', '0', 'Curator is no longer op... er... ation... al.', '14', '100', '58648', 'CURATOR - DEATH'),
(@CURATOR, '6', '1', 'System... failure... im... mi... nent...', '14', '100', '58641', 'CURATOR - DEATH');

UPDATE instance_template SET script = "instance_highmaul" WHERE map = 1228;

UPDATE creature_template SET scriptname = "boss_the_butcher" WHERE entry = 77404;
UPDATE creature_template SET scriptname = "boss_imperator_margok" WHERE entry = 77428;
UPDATE creature_template SET scriptname = "npc_highmaul_rune_of_displacement" WHERE entry = 77429;
UPDATE creature_template SET scriptname = "npc_highmaul_destructive_resonance" WHERE entry = 77637;
UPDATE creature_template SET scriptname = "npc_highmaul_destructive_resonance_replication" WHERE entry = 77681;
UPDATE creature_template SET scriptname = "npc_highmaul_arcane_aberration" WHERE entry = 77809;
UPDATE creature_template SET scriptname = "npc_highmaul_arcane_aberration" WHERE entry = 77877;
UPDATE creature_template SET scriptname = "npc_highmaul_arcane_aberration" WHERE entry = 77878;
UPDATE creature_template SET scriptname = "npc_highmaul_arcane_aberration" WHERE entry = 77879;
UPDATE creature_template SET scriptname = "npc_highmaul_volatile_anomaly" WHERE entry = 78077;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_warmage" WHERE entry = 78121;
UPDATE creature_template SET scriptname = "boss_twin_ogron_phemos" WHERE entry = 78237;
UPDATE creature_template SET scriptname = "boss_twin_ogron_pol" WHERE entry = 78238;
UPDATE creature_template SET scriptname = "boss_brackenspore" WHERE entry = 78491;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_reaver" WHERE entry = 78549;
UPDATE creature_template SET scriptname = "boss_highmaul_cho_gall" WHERE entry = 78623;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_faithful" WHERE entry = 78641;
UPDATE creature_template SET scriptname = "boss_kargath_bladefist" WHERE entry = 78714;
UPDATE creature_template SET scriptname = "npc_highmaul_fire_pillar" WHERE entry = 78757;
UPDATE creature_template SET scriptname = "npc_highmaul_kargath_bladefist_trigger" WHERE entry = 78846;
UPDATE creature_template SET scriptname = "npc_highmaul_rejuvenating_mushroom" WHERE entry = 78868;
UPDATE creature_template SET scriptname = "npc_highmaul_living_mushroom" WHERE entry = 78884;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_bomber" WHERE entry = 78926;
UPDATE creature_template SET scriptname = "boss_tectus" WHERE entry = 78948;
UPDATE creature_template SET scriptname = "npc_highmaul_drunken_bileslinger" WHERE entry = 78954;
UPDATE creature_template SET scriptname = "boss_koragh" WHERE entry = 79015;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_grunt_second" WHERE entry = 79068;
UPDATE creature_template SET scriptname = "npc_highmaul_mind_fungus" WHERE entry = 79082;
UPDATE creature_template SET scriptname = "npc_highmaul_fungal_flesh_eater" WHERE entry = 79092;
UPDATE creature_template SET scriptname = "npc_highmaul_chain_hurl_vehicle" WHERE entry = 79134;
UPDATE creature_template SET scriptname = "npc_highmaul_spore_shooter" WHERE entry = 79183;
UPDATE creature_template SET scriptname = "npc_highmaul_ravenous_bloodmaw" WHERE entry = 79296;
UPDATE creature_template SET scriptname = "npc_highmaul_arcane_remnant" WHERE entry = 79388;
UPDATE creature_template SET scriptname = "npc_highmaul_koragh_volatile_anomaly" WHERE entry = 79956;
UPDATE creature_template SET scriptname = "npc_highmaul_somldering_stoneguard" WHERE entry = 80051;
UPDATE creature_template SET scriptname = "npc_highmaul_bladespire_sorcerer" WHERE entry = 80071;
UPDATE creature_template SET scriptname = "npc_highmaul_earthen_pillar_stalker" WHERE entry = 80476;
UPDATE creature_template SET scriptname = "boss_tectus" WHERE entry = 80551;
UPDATE creature_template SET scriptname = "boss_tectus" WHERE entry = 80557;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_earthwarper" WHERE entry = 80599;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_berserker" WHERE entry = 80822;
UPDATE creature_template SET scriptname = "npc_highmaul_warden_thultok" WHERE entry = 81269;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_guardsman" WHERE entry = 81270;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_runemaster" WHERE entry = 81272;
UPDATE creature_template SET scriptname = "npc_highmaul_bfc9000" WHERE entry = 81403;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_mauler" WHERE entry = 81779;
UPDATE creature_template SET scriptname = "npc_highmaul_guard_captain_thag" WHERE entry = 81780;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_royal_guardsman" WHERE entry = 81806;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_nouk" WHERE entry = 81807;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_magknor" WHERE entry = 81808;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_gorluk" WHERE entry = 81809;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_daglat" WHERE entry = 81810;
UPDATE creature_template SET scriptname = "npc_highmaul_high_councilor_malgris" WHERE entry = 81811;
UPDATE creature_template SET scriptname = "npc_highmaul_glimpse_of_madness" WHERE entry = 82242;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_earthshaker" WHERE entry = 82399;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_brute" WHERE entry = 82400;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_cadaver" WHERE entry = 82505;
UPDATE creature_template SET scriptname = "npc_highmaul_highmaul_conscript" WHERE entry = 82519;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_arcanist" WHERE entry = 82528;
UPDATE creature_template SET scriptname = "npc_highmaul_krush" WHERE entry = 82532;
UPDATE creature_template SET scriptname = "npc_highmaul_krush" WHERE entry = 82533;
UPDATE creature_template SET scriptname = "npc_highmaul_krush" WHERE entry = 82534;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_devout" WHERE entry = 82698;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_enforcer" WHERE entry = 82900;
UPDATE creature_template SET scriptname = "npc_highmaul_imperator_margok" WHERE entry = 83268;
UPDATE creature_template SET scriptname = "npc_highmaul_jhorn_the_mad" WHERE entry = 83377;
UPDATE creature_template SET scriptname = "npc_highmaul_thoktar_ironskull" WHERE entry = 83378;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_grunt" WHERE entry = 84946;
UPDATE creature_template SET scriptname = "npc_highmaul_ogre_grunt_second" WHERE entry = 84948;
UPDATE creature_template SET scriptname = "npc_highmaul_ogre_grunt" WHERE entry = 84958;
UPDATE creature_template SET scriptname = "npc_highmaul_gharg_arena_master" WHERE entry = 84971;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_sorcerer" WHERE entry = 85225;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_soothsayer" WHERE entry = 85240;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_brute" WHERE entry = 85241;
UPDATE creature_template SET scriptname = "npc_highmaul_void_aberration" WHERE entry = 85243;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_ritualist" WHERE entry = 85245;
UPDATE creature_template SET scriptname = "npc_highmaul_greater_void_aberration" WHERE entry = 85246;
UPDATE creature_template SET scriptname = "npc_highmaul_rokka_and_lokk" WHERE entry = 86071;
UPDATE creature_template SET scriptname = "npc_highmaul_oro" WHERE entry = 86072;
UPDATE creature_template SET scriptname = "npc_highmaul_rokka_and_lokk" WHERE entry = 86073;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_supplicant" WHERE entry = 86185;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_high_sorcerer" WHERE entry = 86256;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_enforcer" WHERE entry = 86275;
UPDATE creature_template SET scriptname = "npc_highmaul_underbelly_vagrant" WHERE entry = 86290;
UPDATE creature_template SET scriptname = "npc_highmaul_breaker_of_frost" WHERE entry = 86326;
UPDATE creature_template SET scriptname = "npc_highmaul_breaker_of_fire" WHERE entry = 86329;
UPDATE creature_template SET scriptname = "npc_highmaul_breaker_of_fel" WHERE entry = 86330;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_flame_technician" WHERE entry = 86607;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_warmaster" WHERE entry = 86609;
UPDATE creature_template SET scriptname = "npc_highmaul_mind_fungus" WHERE entry = 86611;
UPDATE creature_template SET scriptname = "npc_highmaul_spore_shooter" WHERE entry = 86612;
UPDATE creature_template SET scriptname = "npc_highmaul_wild_flames" WHERE entry = 86875;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_blood_mage" WHERE entry = 87229;
UPDATE creature_template SET scriptname = "npc_highmaul_arcane_torrent" WHERE entry = 87256;
UPDATE creature_template SET scriptname = "npc_highmaul_phantasmal_weapon" WHERE entry = 87293;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_warbringer" WHERE entry = 87589;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_warden" WHERE entry = 87619;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_fanatic" WHERE entry = 87768;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_rune_mender" WHERE entry = 87910;
UPDATE creature_template SET scriptname = "npc_highmaul_highmaul_sweeper" WHERE entry = 88874;
UPDATE creature_template SET scriptname = "npc_highmaul_vulgor" WHERE entry = 80048;
UPDATE creature_template SET scriptname = "npc_highmaul_warden_thultok" WHERE entry = 1681269;
UPDATE creature_template SET scriptname = "npc_highmaul_thoktar_ironskull" WHERE entry = 1583378;
UPDATE creature_template SET scriptname = "npc_highmaul_breaker_of_fel" WHERE entry = 1686330;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_daglat" WHERE entry = 1581810;
UPDATE creature_template SET scriptname = "npc_highmaul_underbelly_vagrant" WHERE entry = 1686290;
UPDATE creature_template SET scriptname = "npc_highmaul_thoktar_ironskull" WHERE entry = 1683378;
UPDATE creature_template SET scriptname = "npc_highmaul_highmaul_conscript" WHERE entry = 1582519;
UPDATE creature_template SET scriptname = "npc_highmaul_breaker_of_fel" WHERE entry = 1586330;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_flame_technician" WHERE entry = 1686607;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_warmaster" WHERE entry = 1586609;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_flame_technician" WHERE entry = 1586607;
UPDATE creature_template SET scriptname = "npc_highmaul_oro" WHERE entry = 1686072;
UPDATE creature_template SET scriptname = "npc_highmaul_high_councilor_malgris" WHERE entry = 1681811;
UPDATE creature_template SET scriptname = "npc_highmaul_high_councilor_malgris" WHERE entry = 1581811;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_enforcer" WHERE entry = 1682900;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_warden" WHERE entry = 1587619;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_soothsayer" WHERE entry = 1685240;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_warden" WHERE entry = 1687619;
UPDATE creature_template SET scriptname = "npc_highmaul_vulgor" WHERE entry = 1580048;
UPDATE creature_template SET scriptname = "npc_highmaul_highmaul_sweeper" WHERE entry = 1588874;
UPDATE creature_template SET scriptname = "boss_twin_ogron_pol" WHERE entry = 1578238;
UPDATE creature_template SET scriptname = "npc_highmaul_krush" WHERE entry = 1582532;
UPDATE creature_template SET scriptname = "boss_kargath_bladefist" WHERE entry = 1678714;
UPDATE creature_template SET scriptname = "boss_twin_ogron_phemos" WHERE entry = 1578237;
UPDATE creature_template SET scriptname = "boss_kargath_bladefist" WHERE entry = 1578714;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_arcanist" WHERE entry = 1682528;
UPDATE creature_template SET scriptname = "npc_highmaul_kargath_bladefist_trigger" WHERE entry = 1578846;
UPDATE creature_template SET scriptname = "npc_highmaul_bladespire_sorcerer" WHERE entry = 1680071;
UPDATE creature_template SET scriptname = "npc_highmaul_jhorn_the_mad" WHERE entry = 1683377;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_brute" WHERE entry = 1582400;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_daglat" WHERE entry = 1681810;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_grunt" WHERE entry = 1584946;
UPDATE creature_template SET scriptname = "npc_highmaul_vulgor" WHERE entry = 1680048;
UPDATE creature_template SET scriptname = "npc_highmaul_bladespire_sorcerer" WHERE entry = 1580071;
UPDATE creature_template SET scriptname = "boss_twin_ogron_pol" WHERE entry = 1678238;
UPDATE creature_template SET scriptname = "boss_brackenspore" WHERE entry = 1578491;
UPDATE creature_template SET scriptname = "npc_highmaul_rokka_and_lokk" WHERE entry = 1686071;
UPDATE creature_template SET scriptname = "npc_highmaul_rokka_and_lokk" WHERE entry = 1586073;
UPDATE creature_template SET scriptname = "npc_highmaul_rokka_and_lokk" WHERE entry = 1686073;
UPDATE creature_template SET scriptname = "npc_highmaul_jhorn_the_mad" WHERE entry = 1583377;
UPDATE creature_template SET scriptname = "npc_highmaul_highmaul_conscript" WHERE entry = 1682519;
UPDATE creature_template SET scriptname = "boss_the_butcher" WHERE entry = 1577404;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_runemaster" WHERE entry = 1681272;
UPDATE creature_template SET scriptname = "npc_highmaul_void_aberration" WHERE entry = 1685243;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_runemaster" WHERE entry = 1581272;
UPDATE creature_template SET scriptname = "boss_brackenspore" WHERE entry = 1678491;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_warbringer" WHERE entry = 1687589;
UPDATE creature_template SET scriptname = "npc_highmaul_void_aberration" WHERE entry = 1585243;
UPDATE creature_template SET scriptname = "boss_tectus" WHERE entry = 1680551;
UPDATE creature_template SET scriptname = "npc_highmaul_fire_pillar" WHERE entry = 1578757;
UPDATE creature_template SET scriptname = "npc_highmaul_ravenous_bloodmaw" WHERE entry = 1679296;
UPDATE creature_template SET scriptname = "npc_highmaul_gharg_arena_master" WHERE entry = 1584971;
UPDATE creature_template SET scriptname = "npc_highmaul_breaker_of_fire" WHERE entry = 1686329;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_rune_mender" WHERE entry = 1587910;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_fanatic" WHERE entry = 1687768;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_gorluk" WHERE entry = 1681809;
UPDATE creature_template SET scriptname = "npc_highmaul_ogre_grunt_second" WHERE entry = 1584948;
UPDATE creature_template SET scriptname = "npc_highmaul_highmaul_sweeper" WHERE entry = 1688874;
UPDATE creature_template SET scriptname = "boss_tectus" WHERE entry = 1580551;
UPDATE creature_template SET scriptname = "npc_highmaul_bfc9000" WHERE entry = 1581403;
UPDATE creature_template SET scriptname = "boss_tectus" WHERE entry = 1678948;
UPDATE creature_template SET scriptname = "boss_imperator_margok" WHERE entry = 1577428;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_sorcerer" WHERE entry = 1685225;
UPDATE creature_template SET scriptname = "npc_highmaul_rokka_and_lokk" WHERE entry = 1586071;
UPDATE creature_template SET scriptname = "npc_highmaul_oro" WHERE entry = 1586072;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_nouk" WHERE entry = 1581807;
UPDATE creature_template SET scriptname = "npc_highmaul_ogre_grunt_second" WHERE entry = 1684948;
UPDATE creature_template SET scriptname = "boss_the_butcher" WHERE entry = 1677404;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_sorcerer" WHERE entry = 1585225;
UPDATE creature_template SET scriptname = "npc_highmaul_guard_captain_thag" WHERE entry = 1581780;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_gorluk" WHERE entry = 1581809;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_grunt" WHERE entry = 1684946;
UPDATE creature_template SET scriptname = "npc_highmaul_warden_thultok" WHERE entry = 1581269;
UPDATE creature_template SET scriptname = "npc_highmaul_kargath_bladefist_trigger" WHERE entry = 1678846;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_devout" WHERE entry = 1582698;
UPDATE creature_template SET scriptname = "npc_highmaul_rune_of_displacement" WHERE entry = 1677429;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_fanatic" WHERE entry = 1587768;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_nouk" WHERE entry = 1681807;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_enforcer" WHERE entry = 1582900;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_high_sorcerer" WHERE entry = 1686256;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_soothsayer" WHERE entry = 1585240;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_grunt_second" WHERE entry = 1679068;
UPDATE creature_template SET scriptname = "npc_highmaul_breaker_of_frost" WHERE entry = 1686326;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_mauler" WHERE entry = 1681779;
UPDATE creature_template SET scriptname = "npc_highmaul_breaker_of_frost" WHERE entry = 1586326;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_royal_guardsman" WHERE entry = 1581806;
UPDATE creature_template SET scriptname = "npc_highmaul_gharg_arena_master" WHERE entry = 1684971;
UPDATE creature_template SET scriptname = "boss_koragh" WHERE entry = 1579015;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_mauler" WHERE entry = 1581779;
UPDATE creature_template SET scriptname = "boss_koragh" WHERE entry = 1679015;
UPDATE creature_template SET scriptname = "npc_highmaul_bfc9000" WHERE entry = 1681403;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_guardsman" WHERE entry = 1581270;
UPDATE creature_template SET scriptname = "npc_highmaul_guard_captain_thag" WHERE entry = 1681780;
UPDATE creature_template SET scriptname = "npc_highmaul_krush" WHERE entry = 1682532;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_arcanist" WHERE entry = 1582528;
UPDATE creature_template SET scriptname = "npc_highmaul_fire_pillar" WHERE entry = 1678757;
UPDATE creature_template SET scriptname = "boss_tectus" WHERE entry = 1578948;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_high_sorcerer" WHERE entry = 1586256;
UPDATE creature_template SET scriptname = "npc_highmaul_rune_of_displacement" WHERE entry = 1577429;
UPDATE creature_template SET scriptname = "npc_highmaul_ogre_grunt" WHERE entry = 1684958;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_ritualist" WHERE entry = 1685245;
UPDATE creature_template SET scriptname = "npc_highmaul_greater_void_aberration" WHERE entry = 1585246;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_blood_mage" WHERE entry = 1687229;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_blood_mage" WHERE entry = 1587229;
UPDATE creature_template SET scriptname = "npc_highmaul_greater_void_aberration" WHERE entry = 1685246;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_magknor" WHERE entry = 1681808;
UPDATE creature_template SET scriptname = "npc_highmaul_ogre_grunt" WHERE entry = 1584958;
UPDATE creature_template SET scriptname = "npc_highmaul_councilor_magknor" WHERE entry = 1581808;
UPDATE creature_template SET scriptname = "boss_imperator_margok" WHERE entry = 1677428;
UPDATE creature_template SET scriptname = "npc_highmaul_underbelly_vagrant" WHERE entry = 1586290;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_supplicant" WHERE entry = 1586185;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_supplicant" WHERE entry = 1686185;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_devout" WHERE entry = 1682698;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_enforcer" WHERE entry = 1686275;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_guardsman" WHERE entry = 1681270;
UPDATE creature_template SET scriptname = "boss_tectus" WHERE entry = 1680557;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_brute" WHERE entry = 1682400;
UPDATE creature_template SET scriptname = "boss_twin_ogron_phemos" WHERE entry = 1678237;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_brute" WHERE entry = 1685241;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_brute" WHERE entry = 1585241;
UPDATE creature_template SET scriptname = "boss_tectus" WHERE entry = 1580557;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_enforcer" WHERE entry = 1586275;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_royal_guardsman" WHERE entry = 1681806;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_grunt_second" WHERE entry = 1579068;
UPDATE creature_template SET scriptname = "npc_highmaul_gorian_rune_mender" WHERE entry = 1687910;
UPDATE creature_template SET scriptname = "npc_highmaul_ogron_warbringer" WHERE entry = 1587589;
UPDATE creature_template SET scriptname = "npc_highmaul_breaker_of_fire" WHERE entry = 1586329;
UPDATE creature_template SET scriptname = "npc_highmaul_iron_warmaster" WHERE entry = 1686609;
UPDATE creature_template SET scriptname = "npc_highmaul_night_twisted_ritualist" WHERE entry = 1585245;
UPDATE creature_template SET scriptname = "npc_highmaul_ravenous_bloodmaw" WHERE entry = 1579296;
UPDATE creature_template SET scriptname = "npc_highmauareaTrigger_for_crowd" WHERE entry = 79260;

UPDATE gameobject_template SET scriptname = "go_highmaul_arena_elevator" WHERE entry = 233098;
UPDATE gameobject_template SET scriptname = "go_highmaul_portal" WHERE entry = 231776;
UPDATE gameobject_template SET scriptname = "go_highmaul_instance_portal" WHERE entry = 231770;

REPLACE INTO spell_script_names VALUES
(151990, "spell_highmaul_chain_grip"),
(152024, "spell_highmaul_chain_grip_aura"),
(156135, "spell_highmaul_heavy_handed"),
(156138, "spell_highmaul_heavy_handed_proc"),
(156152, "spell_highmaul_gushing_wounds"),
(156197, "spell_highmaul_bounding_cleave_dummy"),
(156225, "spell_highmaul_branded"),
(156239, "spell_highmaul_arcane_wrath_damage"),
(156803, "spell_highmaul_nullification_barrier"),
(157265, "spell_highmaul_volatile_anomalies"),
(157323, "spell_highmaul_force_nova_fortified"),
(157353, "spell_highmaul_force_nova_dot"),
(157943, "spell_highmaul_phemos_whirlwind"),
(157951, "spell_highmaul_twin_ogron_dispositions"),
(157953, "spell_highmaul_disposition"),
(158016, "spell_highmaul_twin_ogron_dispositions"),
(158017, "spell_highmaul_twin_ogron_dispositions"),
(158026, "spell_highmaul_enfeebling_roar"),
(158134, "spell_highmaul_pol_shield_charge"),
(158420, "spell_highmaul_pulverize_third_wave"),
(158547, "spell_highmaul_devastating_shockwave"),
(158605, "spell_highmaul_mark_of_chaos"),
(159001, "spell_highmaul_berserker_rush_periodic"),
(159028, "spell_highmaul_berserker_rush"),
(159113, "spell_highmaul_impale"),
(159212, "spell_highmaul_blade_dance"),
(159220, "spell_highmaul_necrotic_breath"),
(159386, "spell_highmaul_correct_searchers"),
(159410, "spell_highmaul_correct_searchers"),
(159410, "spell_kargath_mauling_brew"),
(159706, "spell_highmaul_fire_pillar_activated"),
(159947, "spell_highmaul_chain_hurl"),
(159948, "spell_chain_hurl_tempfix"),
(160131, "spell_highmaul_obscured"),
(160447, "spell_highmaul_orbs_of_chaos_aura"),
(160521, "spell_highmaul_vile_breath"),
(160720, "spell_highmaul_caustic_energy"),
(161242, "spell_highmaul_caustic_energy_dot"),
(161328, "spell_highmaul_suppression_field_aura"),
(162185, "spell_highmaul_expel_magic_fire"),
(162186, "spell_highmaul_expel_magic_arcane"),
(162271, "spell_highmaul_earth_breaker"),
(162287, "spell_highmaul_tectus_energy_gain"),
(162288, "spell_highmaul_accretion"),
(162475, "spell_highmaul_tectonic_upheaval"),
(162576, "spell_highmaul_fire_pillar_gout_searcher"),
(162658, "spell_highmaul_tectus_energy_gain"),
(162674, "spell_highmaul_tectus_energy_gain"),
(162892, "spell_highmaul_petrification"),
(162968, "spell_highmaul_earthen_flechettes"),
(163130, "spell_highmaul_inflamed"),
(163134, "spell_highmaul_nullification_barrier_player"),
(163180, "spell_highmaul_correct_searchers"),
(163302, "spell_highmaul_roar_of_the_crowd"),
(163310, "spell_highmaul_flamethrower"),
(163312, "spell_highmaul_raving_assault"),
(163322, "spell_highmaul_flamethrower_aura"),
(163347, "spell_highmaul_creeping_moss"),
(163392, "spell_highmaul_crowd_minion_killed"),
(163408, "spell_highmaul_heckle"),
(163666, "spell_highmaul_pulsing_heat"),
(163667, "spell_highmaul_flamethrower_regen"),
(163794, "spell_highmaul_exploding_fungus"),
(163967, "spell_highmaul_fire_pillar_steam_timer"),
(164004, "spell_highmaul_branded_displacement"),
(164005, "spell_highmaul_branded_fortification"),
(164006, "spell_highmaul_branded_replication"),
(164176, "spell_highmaul_mark_of_chaos"),
(164178, "spell_highmaul_mark_of_chaos"),
(164191, "spell_highmaul_mark_of_chaos"),
(164248, "spell_highmaul_energy_regen"),
(165102, "spell_highmaul_infinite_darkness"),
(165223, "spell_highmaul_burning_infusion"),
(165595, "spell_highmaul_gaze_of_the_abyss"),
(165647, "spell_highmaul_glimpse_of_madness"),
(166024, "spell_highmaul_earthen_pillar_timer"),
(166174, "spell_highmaul_earthdevastating_slam"),
(166175, "spell_highmaul_earthdevastating_slam_dmg"),
(166178, "spell_highmaul_shield_charge"),
(166185, "spell_highmaul_rending_slash"),
(166189, "spell_highmaul_decimate"),
(166225, "spell_highmaul_boars_rush"),
(169949, "spell_highmaul_spawn_dust_cloud"),
(172058, "spell_highmaul_stonebolt_volley"),
(172073, "spell_highmaul_meteoric_earthspire"),
(172813, "spell_highmaul_expel_magic_frost_aura"),
(172895, "spell_highmaul_expel_magic_fel"),
(173244, "spell_highmaul_spore_shot"),
(173425, "spell_highmaul_warming_up"),
(173616, "spell_highmaul_wild_flames_areatrigger"),
(174116, "spell_highmaul_destructive_resonance"),
(174126, "spell_highmaul_dominance_aura"),
(174404, "spell_highmaul_frozen_core"),
(174465, "spell_highmaul_unstoppable_charge"),
(174474, "spell_highmaul_corrupted_blood_shield"),
(174939, "spell_highmaul_time_stop"),
(174981, "spell_highmaul_unstable_tempest"),
(176580, "spell_highmaul_transition_visuals"),
(178023, "spell_highmaul_arcane_barrage");


  

UPDATE `creature_template` SET `ScriptName` = 'boss_fel_lord_betrug' WHERE `entry` = 102446;
UPDATE `creature_template` SET `ScriptName` = 'boss_aquasirr' WHERE `entry` = 134056;

UPDATE `instance_template` SET `script` = 'instance_new_karazhan' WHERE `map` = 1651;

SET @CURATOR := 114247;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_curator_new', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 4,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@CURATOR, 11424701, 11424702);



UPDATE `creature_template` SET `faction` = 35 WHERE `entry` IN (114262, 11426201, 11426202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_volatile_energy', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = `unit_flags2` |2048,
`InhabitType` = 8,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` = 114249;

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (234416, 227256);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(234416, 227267, 1, 'Summon Volatile Energy - The Curator'),
(227256, 227257, 0, 'Overload - The Curator');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (227270, 227269, 227254, 227257, 227278);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227269, 'spell_kara_arc_lightning'),
(227270, 'spell_kara_arc_lightning_dmg'),
(227254, 'spell_curator_evocation'),
(227257, 'spell_curator_overload'),
(227278, 'spell_curator_power_discharge');

DELETE FROM `areatrigger_template` WHERE `id` = 8780;
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8780, 0, 0, 6, 6, 0, 0, 0, 0, 'at_kara_power_discharge', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` = 8780;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8780, 8780, 0, 0, 0, 0, 0, 0, 0, 23420); -- SpellId : 227289

DELETE FROM `creature_text` WHERE `CreatureID` = @CURATOR;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@CURATOR, '0', '0', 'Janitorial units: begin Menagerie decontamination.', '12', '100', '58644', 'CURATOR - INTRO'),
(@CURATOR, '1', '0', 'The Menagerie is for-- ERADICATE! ERADICATE!', '14', '100', '58644', 'CURATOR - AGGRO'),
(@CURATOR, '1', '1', 'Welcome to the-- TERMINATE INTRUDERS! ', '14', '100', '58645', 'CURATOR - AGGRO'),
(@CURATOR, '2', '0', 'Countermeasures deployed.', '12', '100', '58646', 'CURATOR - VOLATILE_ENERGY'),
(@CURATOR, '2', '1', 'DETERENT ACIVATED!', '12', '100', '58639', 'CURATOR - VOLATILE_ENERGY'),
(@CURATOR, '3', '0', 'Overload in progress. Prepare for-- PURGE! PURGE! PURGE!', '12', '100', '58638', 'CURATOR - EVOCATION'),
(@CURATOR, '3', '1', 'Attention guests: DIE! DIE! DIE!', '12', '100', '58640', 'CURATOR - EVOCATION'),
(@CURATOR, '4', '0', 'Deterrent protocols successful.', '12', '100', '58642', 'CURATOR - EVOCATION_END'),
(@CURATOR, '5', '0', 'EXTERMINATED!', '12', '100', '58647', 'CURATOR - KILL'),
(@CURATOR, '6', '0', 'Curator is no longer op... er... ation... al.', '14', '100', '58648', 'CURATOR - DEATH'),
(@CURATOR, '6', '1', 'System... failure... im... mi... nent...', '14', '100', '58641', 'CURATOR - DEATH');









-- creature_template
UPDATE creature_template SET scriptname = "boss_stone_guard_controler" WHERE entry = 60089;
UPDATE creature_template SET scriptname = "mob_celestial_protector" WHERE entry = 60793;
UPDATE creature_template SET scriptname = "mob_cosmic_spark" WHERE entry = 62618;
UPDATE creature_template SET scriptname = "mob_energy_charge" WHERE entry = 60913;
UPDATE creature_template SET scriptname = "mob_empyreal_focus" WHERE entry = 60776;
UPDATE creature_template SET scriptname = "mob_infinite_energy" WHERE entry = 65293;
UPDATE creature_template SET scriptname = "boss_generic_guardian" WHERE entry IN (59915, 60043, 60047, 50051);

UPDATE creature_template SET scriptname = "boss_spirit_kings_controler" WHERE entry = 60984;
UPDATE creature_template SET scriptname = "boss_spirit_kings" WHERE entry IN (60709, 60710, 60701, 60708);

UPDATE creature_template SET scriptname = "boss_feng" WHERE entry = 60009;

UPDATE creature_template SET scriptname = "boss_garajal" WHERE entry = 60143;

UPDATE creature_template SET scriptname = "boss_elegon" WHERE entry = 60410;

UPDATE creature_template SET scriptname = "mob_empyreal_focus" WHERE entry = 60776;
UPDATE creature_template SET scriptname = "mob_lightning_fist" WHERE entry = 60241;
UPDATE creature_template SET scriptname = "mob_wild_spark" WHERE entry = 60438;
UPDATE creature_template SET scriptname = "mob_siphon_shield" WHERE entry = 60627;
UPDATE creature_template SET scriptname = "mob_soul_fragment" WHERE entry = 60781;
UPDATE creature_template SET scriptname = "mob_spirit_totem" WHERE entry = 60240;
UPDATE creature_template SET scriptname = "mob_shadowy_minion" WHERE entry IN (60184, 60940);
UPDATE creature_template SET scriptname = "mob_spirit_totem_intro" WHERE entry IN (60512, 60513);
UPDATE creature_template SET scriptname = "mob_soul_cutter" WHERE entry = 62003;
UPDATE creature_template SET scriptname = "mob_soul_cutter" WHERE entry = 62003;
UPDATE creature_template SET scriptname = "mob_garajal_ghost" WHERE entry = 61140;
UPDATE creature_template SET scriptname = "mob_ancient_mogu_machine" WHERE entry = 60648;
UPDATE creature_template SET scriptname = "mob_woe_titan_spark" WHERE entry = 60480;

UPDATE creature_template SET scriptname = "mob_enormous_stone_quilen" WHERE entry = 64183;
UPDATE creature_template SET scriptname = "mob_stone_quilen" WHERE entry = 60576;
UPDATE creature_template SET scriptname = "mob_zandalari_skullcharger" WHERE entry = 60375;
UPDATE creature_template SET scriptname = "npc_lorewalker_cho" WHERE entry = 61348;
UPDATE creature_template SET scriptname = "mob_sorcerer_mogu" WHERE entry = 61250;
UPDATE creature_template SET scriptname = "mob_mogu_archer" WHERE entry = 61345;
UPDATE creature_template SET scriptname = "mob_mounted_mogu" WHERE entry = 61341;
UPDATE creature_template SET scriptname = "mob_kingsguard" WHERE entry = 61347;
UPDATE creature_template SET scriptname = "mob_subetai" WHERE entry = 61427;
UPDATE creature_template SET scriptname = "mob_meng" WHERE entry = 61429;
UPDATE creature_template SET scriptname = "mob_zian" WHERE entry = 61421;
UPDATE creature_template SET scriptname = "mob_qiang" WHERE entry = 61423;
UPDATE creature_template SET scriptname = "mob_mogu_secret_keeper" WHERE entry = 61131;
UPDATE creature_template SET scriptname = "mob_mogu_engine_keeper" WHERE entry = 64068;
UPDATE creature_template SET scriptname = "mob_mogu_warden" WHERE entry IN (64061, 64947, 64063);
UPDATE creature_template SET scriptname = "mob_cursed_mogu_sculpture" WHERE entry IN (61334, 61989);


/*
    new boss_jin_qin_xi(); -- Qin-Xi - 60399  Jan-Xi - 60400
    new mob_woe_add_generic(); -- Emperor's Rage - 60396 -- Emperor's Strength - 60397 -- Emperor's Courage - 60398
    new mob_general_purpose_bunnyJMF(); -- // General Purpose Bunny JMF - 55091 - Note: this mob is also used in Stormstout Brewery
*/

-- gameobject_templates
UPDATE gameobject_template SET scriptname = "go_celestial_control_console" WHERE entry = 211650;
UPDATE gameobject_template SET scriptname = "go_cancel" WHERE entry = 211626;
UPDATE gameobject_template SET scriptname = "go_inversion" WHERE entry = 211628;
UPDATE gameobject_template SET scriptname = "go_ancien_control_console" WHERE entry = 211584;


UPDATE creature_template SET scriptname = "boss_will_of_emperor" WHERE entry IN (60399, 60400);

UPDATE instance_template SET script = "instance_mogu_shan_vault" WHERE map = 1008 AND parent = 870;


-- areatrigger_teleport
DELETE FROM areatrigger_teleport WHERE ID = 7839 AND PortLocID = 4093;
INSERT INTO areatrigger_teleport (`ID`, `PortLocID`, `Name`)VALUES
(7839, 4093, "Mogu'shan Vaults - Exit Target");


-- spell scripts
DELETE FROM spell_script_names WHERE spell_id IN 
(127785, 127783, 127781, 117874, 118313, 119360, 118024, 127362, 132222, 127911, 116994, 122741, 124967, 115817, 118530, 116434, 116365, 116711, 116816, 116821, 116784, 116583, 116040, 122151, 118469, 120715, 127732, 118165, 117006, 116968, 117485, 117195, 116818, 116779, 118327, 116550, 116556, 116605, 118300, 118302, 118304, 118305, 118307, 118308, 132296, 132297, 132298);
UPDATE `creature_template` SET `ScriptName`='boss_jin_qin_xi' WHERE  `entry` IN (60399,60400);
REPLACE INTO spell_script_names (`spell_id`, `ScriptName`)VALUES
(127785, "spell_spawn_flash_1_periodic"),
(127783, "spell_spawn_flash_2_periodic"),
(127781, "spell_spawn_flash_3_periodic"),
(117874, "spell_touch_of_titans"),
(118313, "spell_radiating_energies"),
(119360, "spell_draw_power"),
(118024, "spell_core_checker"),
(127362, "spell_grasping_energy_tendrils"),
(132222, "spell_destabilizing_energies"),
(127911, "spell_total_annihilation"),
(116994, "spell_unstable_energy"),
(122741, "spell_radiating_energies"),
(124967, "spell_draw_power"),
(115817, "spell_nullification_barrier"),
(118530, "spell_spirit_bolt"),
(116434, "spell_mogu_arcane_resonance"),
(116365, "spell_mogu_arcane_velocity"),
(116711, "spell_draw_flame"),
(116816, "spell_mogu_wildfire_infusion"),
(116821, "spell_wildfire_infusion_stacks"),
(116784, "spell_wildfire_spark"),
(116583, "spell_mogu_wildfire_spark"),
(116040, "spell_mogu_epicenter"),
(122151, "spell_voodoo_doll"),
(118469, "spell_final_destination"),
(120715, "spell_soul_back"),
(127732, "spell_cosmetic_lightning"),
(118165, "spell_terracota_spawn"),
(117006, "spell_devastating_arc"),
(116968, "spell_arc_visual"),
(117485, "spell_impeding_thrust"),
(117195, "spell_magnetized_jan"),
(116818, "spell_magnetized_qin"),
(116779, "spell_titan_gas"),
(118327, "spell_titan_gas2"),
(116550, "spell_energizing_smash"),
(116556, "spell_energizing_visual"),
(118300, "spell_mogu_inversion"),
(118302, "spell_mogu_inversion"),
(118304, "spell_mogu_inversion"),
(118305, "spell_mogu_inversion"),
(118307, "spell_mogu_inversion"),
(118308, "spell_mogu_inversion"),
(132297, "spell_mogu_inversion"),
(132298, "spell_mogu_inversion"),
(132296, "spell_mogu_inversion"),
(116605, "spell_energized"),
(120764, "spell_ghost_essence"),
(125092, "spell_mogu_petrification");

DELETE FROM `gameobject_template_addon` WHERE  `entry` IN (235794,280650);
UPDATE `creature_template` SET `spell1`='0' WHERE  `entry`=29264;
UPDATE `creature_template_addon` SET `auras`='' WHERE  `entry` IN (42010,41366,43273);
UPDATE `creature_template_addon` SET `auras`='80855 16245' WHERE  `entry`=43279;
UPDATE `creature` SET `spawndist`='0' WHERE  `guid` IN (183746,183806);

UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=24974;
UPDATE `creature_template` SET `npcflag`='0' WHERE  `entry`=130758;
UPDATE `creature_template` SET `lootid`='0' WHERE  `entry`=36756;
UPDATE `gameobject_template` SET `Data1`='204281' WHERE  `entry`=204281;
UPDATE `gameobject_template` SET `Data1`='203751' WHERE  `entry`=203751;
UPDATE `gameobject_template` SET `Data1`='203801' WHERE  `entry`=203801;
UPDATE `gameobject_template` SET `Data1`='203762' WHERE  `entry`=203762;
DELETE FROM `spell_loot_template` WHERE  `Entry` IN (263148,263149,263150,263151,263152,263153,263154);
UPDATE `npc_vendor` SET `maxcount`='0' WHERE  `entry`=111903 AND `item`=138295 AND `ExtendedCost`=0 AND `type`=1;
DELETE FROM `creature_formations` WHERE  `leaderGUID` IN (370509,370570);
DELETE FROM `creature_formations` WHERE  `memberGUID` IN (370510,370571);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=42175;
UPDATE `areatrigger` SET `spawn_mask` = 8388870 WHERE  `guid` IN (4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,33,35,45,47);
DELETE FROM `spell_linked_spell` WHERE  `spell_trigger`=108936 AND `spell_effect`=108943 AND `type`=0;
DELETE FROM `areatrigger_scripts` WHERE  `entry` IN (1520,149959);
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry` IN (26401,26520,121247,49481);
DELETE FROM `spell_script_names` WHERE  `spell_id`=196771 AND `ScriptName`='spell_dk_remorseless_winter';
DELETE FROM `spell_script_names` WHERE  `spell_id`=119051 AND `ScriptName`='spell_monk_transcendence_clone_visual';
DELETE FROM `spell_script_names` WHERE  `spell_id`=196408 AND `ScriptName`='spell_warl_fire_and_brimstone';

DELETE FROM `creature_equip_template` WHERE `CreatureID`=132659 AND `ID`=1;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
(132659, 1, 33295, 0, 0, 33295, 0, 0, 0, 0, 0, 0);



DELETE FROM `smart_scripts` WHERE `entryorguid`=77034;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(77034, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 12000, 15000, '', 11, 155581, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Black Iron Veteran - Cast Sunder Armor'),
(77034, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 20000, 30000, '', 11, 155575, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Black Iron Veteran - Cast Shield Smash');

DELETE FROM `smart_scripts` WHERE `entryorguid`=84462;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(84462, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 12000, 15000, '', 11, 155581, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Black Iron Veteran - Cast Sunder Armor'),
(84462, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 20000, 30000, '', 11, 155575, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Black Iron Veteran - Cast Shield Smash');




DELETE FROM `instance_template` WHERE `map`=1009;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`, `insideResurrection`) VALUES 
(1009, 0, 'instance_heart_of_fear', 0, 0);

UPDATE `gameobject_template` SET `ScriptName`='go_krithik_weapon_rack' WHERE  `entry`=211675;
UPDATE `gameobject_template` SET `ScriptName`='go_mardum_legion_banner_1' WHERE  `entry`=250560;

UPDATE `creature_template` SET `ScriptName`='boss_garalon' WHERE  `entry`=62164;
UPDATE `creature_template` SET `ScriptName`='boss_jin_qin_xi' WHERE  `entry` IN (60399,60400);
UPDATE `creature_template` SET `ScriptName`='boss_shekzeer' WHERE  `entry`=62837;
UPDATE `creature_template` SET `ScriptName`='boss_tayak' WHERE  `entry`=62543;
UPDATE `creature_template` SET `ScriptName`='boss_unsok' WHERE  `entry`=62511;
UPDATE `creature_template` SET `ScriptName`='boss_wind_lord_meljarak' WHERE  `entry`=62397;
UPDATE `creature_template` SET `ScriptName`='boss_zorlok' WHERE  `entry`=62980;
UPDATE `creature_template` SET `ScriptName`='mob_add_setthik_windblade' WHERE  `entry`=63589;
UPDATE `creature_template` SET `ScriptName`='mob_amber_globule' WHERE  `entry`=64283;
UPDATE `creature_template` SET `ScriptName`='mob_amber_monstruosity' WHERE  `entry`=62711;
UPDATE `creature_template` SET `ScriptName`='mob_amber_pool_stalker' WHERE  `entry`=62762;
UPDATE `creature_template` SET `ScriptName`='mob_amber_scalpel' WHERE  `entry`=62510;
UPDATE `creature_template` SET `ScriptName`='mob_amber_searsting' WHERE  `entry`=63569;
UPDATE `creature_template` SET `ScriptName`='mob_amber_trap' WHERE  `entry`=64351;
UPDATE `creature_template` SET `ScriptName`='mob_amberridden_mushan' WHERE  `entry`=63568;
UPDATE `creature_template` SET `ScriptName`='mob_coagulated_amber' WHERE  `entry` IN (63597,63594);
UPDATE `creature_template` SET `ScriptName`='mob_cobalt_mine' WHERE  `entry`=65803;
UPDATE `creature_template` SET `ScriptName`='mob_cursed_mogu_sculture' WHERE  `entry` IN (61334,61989);
UPDATE `creature_template` SET `ScriptName`='mob_dissonance_field' WHERE  `entry`=62847;
UPDATE `creature_template` SET `ScriptName`='mob_enslaved_bonesmasher' WHERE  `entry`=63030;
UPDATE `creature_template` SET `ScriptName`='mob_gale_winds_stalker' WHERE  `entry`=63292;
UPDATE `creature_template` SET `ScriptName`='mob_general_purpose_bunnyJMF' WHERE  `entry`=55091;
UPDATE `creature_template` SET `ScriptName`='mob_heart_of_fear' WHERE  `entry`=63445;
UPDATE `creature_template` SET `ScriptName`='mob_instructor_kli_thak' WHERE  `entry`=64338;
UPDATE `creature_template` SET `ScriptName`='mob_instructor_maltik' WHERE  `entry`=64340;
UPDATE `creature_template` SET `ScriptName`='mob_instructor_tak_thok' WHERE  `entry`=64339;
UPDATE `creature_template` SET `ScriptName`='mob_instructor_zarik' WHERE  `entry`=64341;
UPDATE `creature_template` SET `ScriptName`='mob_kor_thik_extremist' WHERE  `entry`=63036;
UPDATE `creature_template` SET `ScriptName`='mob_kor_thik_silentwing' WHERE  `entry`=64355;
UPDATE `creature_template` SET `ScriptName`='mob_kor_thik_slicer' WHERE  `entry`=63048;
UPDATE `creature_template` SET `ScriptName`='mob_kor_thik_swarmer' WHERE  `entry`=64357;
UPDATE `creature_template` SET `ScriptName`='mob_korthik_fleshrender' WHERE  `entry`=64902;
UPDATE `creature_template` SET `ScriptName`='mob_korthik_reaver' WHERE  `entry`=63591;
UPDATE `creature_template` SET `ScriptName`='mob_korthik_swarmguard' WHERE  `entry`=64916;
UPDATE `creature_template` SET `ScriptName`='mob_korthik_warsinger' WHERE  `entry`=64458;
UPDATE `creature_template` SET `ScriptName`='mob_living_amber' WHERE  `entry`=62691;
UPDATE `creature_template` SET `ScriptName`='mob_living_crystal' WHERE  `entry` IN (60304,60306,60307,60308);
UPDATE `creature_template` SET `ScriptName`='mob_mutated_construct' WHERE  `entry`=62701;
UPDATE `creature_template` SET `ScriptName`='mob_pinning_arrow' WHERE  `entry`=60958;
UPDATE `creature_template` SET `ScriptName`='mob_set_thik_fanatic' WHERE  `entry`=63031;
UPDATE `creature_template` SET `ScriptName`='mob_set_thik_gale_slicer' WHERE  `entry`=64353;
UPDATE `creature_template` SET `ScriptName`='mob_set_thik_gustwing' WHERE  `entry`=63592;
UPDATE `creature_template` SET `ScriptName`='mob_set_thik_swiftblade' WHERE  `entry`=63049;
UPDATE `creature_template` SET `ScriptName`='mob_set_thik_tempest' WHERE  `entry`=64358;
UPDATE `creature_template` SET `ScriptName`='mob_set_thik_zephyrian' WHERE  `entry`=63593;
UPDATE `creature_template` SET `ScriptName`='mob_setthik_windblade' WHERE  `entry`=64453;
UPDATE `creature_template` SET `ScriptName`='mob_sha_of_fear' WHERE  `entry`=63942;
UPDATE `creature_template` SET `ScriptName`='mob_sonic_pulse' WHERE  `entry`=63837;
UPDATE `creature_template` SET `ScriptName`='mob_sonic_ring' WHERE  `entry`=62689;
UPDATE `creature_template` SET `ScriptName`='mob_sra_thik_shield_master' WHERE  `entry`=63032;
UPDATE `creature_template` SET `ScriptName`='mob_srathik_ambercaller' WHERE  `entry`=64917;
UPDATE `creature_template` SET `ScriptName`='mob_srathik_pooltender' WHERE  `entry`=63570;
UPDATE `creature_template` SET `ScriptName`='mob_sticky_resin' WHERE  `entry`=63730;
UPDATE `creature_template` SET `ScriptName`='mob_tiling_creature' WHERE  `entry`=62026;
UPDATE `creature_template` SET `ScriptName`='mob_undying_shadow' WHERE  `entry`=60731;
UPDATE `creature_template` SET `ScriptName`='mob_woe_add_generic' WHERE  `entry` IN (60396,60397,60398);
UPDATE `creature_template` SET `ScriptName`='mob_zar_thik_supplicant' WHERE  `entry` IN (67177,66181,63853);
UPDATE `creature_template` SET `ScriptName`='mob_zar_thik_zealot' WHERE  `entry`=63035;
UPDATE `creature_template` SET `ScriptName`='mob_zarthik_augurer' WHERE  `entry`=64454;
UPDATE `creature_template` SET `ScriptName`='mob_zephyr' WHERE  `entry`=63599;
UPDATE `creature_template` SET `ScriptName`='npc_amber_prison_meljarak' WHERE  `entry`=62531;
UPDATE `creature_template` SET `ScriptName`='npc_corrosive_resin_pool' WHERE  `entry`=67046;
UPDATE `creature_template` SET `ScriptName`='npc_garalon_leg' WHERE  `entry`=63053;
UPDATE `creature_template` SET `ScriptName`='npc_korthik_elite_blademaster' WHERE  `entry`=62402;
UPDATE `creature_template` SET `ScriptName`='npc_pheromone_trail' WHERE  `entry`=63021;
UPDATE `creature_template` SET `ScriptName`='npc_srathik_amber_trapper' WHERE  `entry`=62405;
UPDATE `creature_template` SET `ScriptName`='npc_storm_unleashed_tornado' WHERE  `entry`=63278;
UPDATE `creature_template` SET `ScriptName`='npc_tempest_slash_tornado' WHERE  `entry`=62908;
UPDATE `creature_template` SET `ScriptName`='npc_whirling_blade' WHERE  `entry`=63930;
UPDATE `creature_template` SET `ScriptName`='npc_wind_bomb_meljarak' WHERE  `entry`=67053;
UPDATE `creature_template` SET `ScriptName`='npc_zarthik_battle_mender' WHERE  `entry`=62408;
UPDATE `creature_template` SET `ScriptName`='npc_mardum_allari' WHERE  `entry`=94410;
UPDATE `creature_template` SET `ScriptName`='npc_hatecoil_arcanist' WHERE  `entry`=97171;
UPDATE `creature_template` SET `ScriptName`='npc_icycle_dm' WHERE  `entry`=49481;
UPDATE `creature_template` SET `ScriptName`='npc_vics_flying_machine' WHERE  `entry`=28710;

DELETE FROM `spell_script_names` WHERE `spell_id`=124843 AND `ScriptName`='spell_amassing_darkness';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(124843, 'spell_amassing_darkness');

DELETE FROM `spell_script_names` WHERE `spell_id`=121995 AND `ScriptName`='spell_amber_scalpel';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(121995, 'spell_amber_scalpel');

DELETE FROM `spell_script_names` WHERE `spell_id`=122440 AND `ScriptName`='spell_attenuation';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122440, 'spell_attenuation');

DELETE FROM `spell_script_names` WHERE `spell_id`=125310 AND `ScriptName`='spell_blade_tempest';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(125310, 'spell_blade_tempest');

DELETE FROM `spell_script_names` WHERE `spell_id`=123060 AND `ScriptName`='spell_break_free';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123060, 'spell_break_free');

DELETE FROM `spell_script_names` WHERE `spell_id`=124845 AND `ScriptName`='spell_calamity';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(124845, 'spell_calamity');

DELETE FROM `spell_script_names` WHERE `spell_id`=117558 AND `ScriptName`='spell_coalescing_shadow';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(117558, 'spell_coalescing_shadow');

DELETE FROM `spell_script_names` WHERE `spell_id`=123156 AND `ScriptName`='spell_consume_amber';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123156, 'spell_consume_amber');

DELETE FROM `spell_script_names` WHERE `spell_id`=122740 AND `ScriptName`='spell_convert';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122740, 'spell_convert');

DELETE FROM `spell_script_names` WHERE `spell_id`=117756 AND `ScriptName`='spell_crazed_cowardice';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(117756, 'spell_crazed_cowardice');

DELETE FROM `spell_script_names` WHERE `spell_id`=117737 AND `ScriptName`='spell_crazed_cowardice';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(117737, 'spell_crazed_cowardice');

DELETE FROM `spell_script_names` WHERE `spell_id`=117833 AND `ScriptName`='spell_crazy_thought';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(117833, 'spell_crazy_thought');

DELETE FROM `spell_script_names` WHERE `spell_id`=123792 AND `ScriptName`='spell_cry_of_terror';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123792, 'spell_cry_of_terror');

DELETE FROM `spell_script_names` WHERE `spell_id`=116541 AND `ScriptName`='spell_energized_tiles';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(116541, 'spell_energized_tiles');

DELETE FROM `spell_script_names` WHERE `spell_id`=123707 AND `ScriptName`='spell_eyes_of_the_empress';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123707, 'spell_eyes_of_the_empress');

DELETE FROM `spell_script_names` WHERE `spell_id`=122413 AND `ScriptName`='spell_fling';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122413, 'spell_fling');

DELETE FROM `spell_script_names` WHERE `spell_id`=122420 AND `ScriptName`='spell_fling_thrown';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122420, 'spell_fling_thrown');

DELETE FROM `spell_script_names` WHERE `spell_id`=122718 AND `ScriptName`='spell_force_verve';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122718, 'spell_force_verve');

DELETE FROM `spell_script_names` WHERE `spell_id`=123633 AND `ScriptName`='spell_gale_winds';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123633, 'spell_gale_winds');

DELETE FROM `spell_script_names` WHERE `spell_id`=122786 AND `ScriptName`='spell_garalon_broken_leg';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122786, 'spell_garalon_broken_leg');

DELETE FROM `spell_script_names` WHERE `spell_id`=117709 AND `ScriptName`='spell_garalon_crush_trigger';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(117709, 'spell_garalon_crush_trigger');

DELETE FROM `spell_script_names` WHERE `spell_id`=123818 AND `ScriptName`='spell_garalon_damaged';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123818, 'spell_garalon_damaged');

DELETE FROM `spell_script_names` WHERE `spell_id`=122735 AND `ScriptName`='spell_garalon_furious_swipe';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122735, 'spell_garalon_furious_swipe');

DELETE FROM `spell_script_names` WHERE `spell_id`=123495 AND `ScriptName`='spell_garalon_mend_leg';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123495, 'spell_garalon_mend_leg');

DELETE FROM `spell_script_names` WHERE `spell_id`=123808 AND `ScriptName`='spell_garalon_pheromones_forcecast';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123808, 'spell_garalon_pheromones_forcecast');

DELETE FROM `spell_script_names` WHERE `spell_id`=128573 AND `ScriptName`='spell_garalon_pheromones_summon';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(128573, 'spell_garalon_pheromones_summon');

DELETE FROM `spell_script_names` WHERE `spell_id`=123100 AND `ScriptName`='spell_garalon_pheromones_switch';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123100, 'spell_garalon_pheromones_switch');

DELETE FROM `spell_script_names` WHERE `spell_id`=123109 AND `ScriptName`='spell_garalon_pheromones_taunt';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123109, 'spell_garalon_pheromones_taunt');

DELETE FROM `spell_script_names` WHERE `spell_id`=123120 AND `ScriptName`='spell_garalon_pheromones_trail_dmg';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123120, 'spell_garalon_pheromones_trail_dmg');

DELETE FROM `spell_script_names` WHERE `spell_id`=123081 AND `ScriptName`='spell_garalon_pungency';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123081, 'spell_garalon_pungency');

DELETE FROM `spell_script_names` WHERE `spell_id`=122415 AND `ScriptName`='spell_grab';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122415, 'spell_grab');

DELETE FROM `spell_script_names` WHERE `spell_id`=122852 AND `ScriptName`='spell_inhale_zorlok';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122852, 'spell_inhale_zorlok');

DELETE FROM `spell_script_names` WHERE `spell_id`=130395 AND `ScriptName`='spell_jasper_chains';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(130395, 'spell_jasper_chains');

DELETE FROM `spell_script_names` WHERE `spell_id`=130404 AND `ScriptName`='spell_jasper_chains_damage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(130404, 'spell_jasper_chains_damage');

DELETE FROM `spell_script_names` WHERE `spell_id`=117708 AND `ScriptName`='spell_maddening_shout';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(117708, 'spell_maddening_shout');

DELETE FROM `spell_script_names` WHERE `spell_id`=117921 AND `ScriptName`='spell_massive_attacks';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(117921, 'spell_massive_attacks');

DELETE FROM `spell_script_names` WHERE `spell_id`=122064 AND `ScriptName`='spell_meljarak_corrosive_resin';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122064, 'spell_meljarak_corrosive_resin');

DELETE FROM `spell_script_names` WHERE `spell_id`=122147 AND `ScriptName`='spell_mending';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122147, 'spell_mending');

DELETE FROM `spell_script_names` WHERE `spell_id`=115852 AND `ScriptName`='spell_petrification';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(115852, 'spell_petrification');

DELETE FROM `spell_script_names` WHERE `spell_id`=116006 AND `ScriptName`='spell_petrification';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(116006, 'spell_petrification');

DELETE FROM `spell_script_names` WHERE `spell_id`=116036 AND `ScriptName`='spell_petrification';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(116036, 'spell_petrification');

DELETE FROM `spell_script_names` WHERE `spell_id`=116057 AND `ScriptName`='spell_petrification';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(116057, 'spell_petrification');

DELETE FROM `spell_script_names` WHERE `spell_id`=118145 AND `ScriptName`='spell_pinned_down';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(118145, 'spell_pinned_down');

DELETE FROM `spell_script_names` WHERE `spell_id`=123713 AND `ScriptName`='spell_servant_of_the_empress';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123713, 'spell_servant_of_the_empress');

DELETE FROM `spell_script_names` WHERE `spell_id`=117697 AND `ScriptName`='spell_shield_of_darkness';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(117697, 'spell_shield_of_darkness');

DELETE FROM `spell_script_names` WHERE `spell_id`=118163 AND `ScriptName`='spell_sleight_of_hand';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(118163, 'spell_sleight_of_hand');

DELETE FROM `spell_script_names` WHERE `spell_id`=124673 AND `ScriptName`='spell_sonic_pulse';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(124673, 'spell_sonic_pulse');

DELETE FROM `spell_script_names` WHERE `spell_id`=122336 AND `ScriptName`='spell_sonic_ring';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122336, 'spell_sonic_ring');

DELETE FROM `spell_script_names` WHERE `spell_id`=122395 AND `ScriptName`='spell_struggle_for_control';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122395, 'spell_struggle_for_control');

DELETE FROM `spell_script_names` WHERE `spell_id`=123616 AND `ScriptName`='spell_su_dumaura';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123616, 'spell_su_dumaura');

DELETE FROM `spell_script_names` WHERE `spell_id`=123600 AND `ScriptName`='spell_su_dummy';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123600, 'spell_su_dummy');

DELETE FROM `spell_script_names` WHERE `spell_id`=124024 AND `ScriptName`='spell_su_dummy_visual';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(124024, 'spell_su_dummy_visual');

DELETE FROM `spell_script_names` WHERE `spell_id`=124783 AND `ScriptName`='spell_tayak_storm_unleashed_dmg';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(124783, 'spell_tayak_storm_unleashed_dmg');

DELETE FROM `spell_script_names` WHERE `spell_id`=124258 AND `ScriptName`='spell_tayak_storms_vehicle';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(124258, 'spell_tayak_storms_vehicle');

DELETE FROM `spell_script_names` WHERE `spell_id`=123814 AND `ScriptName`='spell_tayak_su_visual';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123814, 'spell_tayak_su_visual');

DELETE FROM `spell_script_names` WHERE `spell_id`=123459 AND `ScriptName`='spell_tayak_wind_step';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123459, 'spell_tayak_wind_step');

DELETE FROM `spell_script_names` WHERE `spell_id`=122853 AND `ScriptName`='spell_tempest_slash';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122853, 'spell_tempest_slash');

DELETE FROM `spell_script_names` WHERE `spell_id`=122982 AND `ScriptName`='spell_unseen_strike';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122982, 'spell_unseen_strike');

DELETE FROM `spell_script_names` WHERE `spell_id`=122994 AND `ScriptName`='spell_unseen_strike_dmg';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122994, 'spell_unseen_strike_dmg');

DELETE FROM `spell_script_names` WHERE `spell_id`=122547 AND `ScriptName`='spell_unsok_draw_power';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122547, 'spell_unsok_draw_power');

DELETE FROM `spell_script_names` WHERE `spell_id`=124862 AND `ScriptName`='spell_visions_of_demise';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(124862, 'spell_visions_of_demise');

DELETE FROM `spell_script_names` WHERE `spell_id`=123421 AND `ScriptName`='spell_vital_strikes';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123421, 'spell_vital_strikes');

DELETE FROM `spell_script_names` WHERE `spell_id`=123014 AND `ScriptName`='spell_volatile_amber';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123014, 'spell_volatile_amber');

DELETE FROM `spell_script_names` WHERE `spell_id`=118094 AND `ScriptName`='spell_volley';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(118094, 'spell_volley');

DELETE FROM `spell_script_names` WHERE `spell_id`=118105 AND `ScriptName`='spell_volley';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(118105, 'spell_volley');

DELETE FROM `spell_script_names` WHERE `spell_id`=118106 AND `ScriptName`='spell_volley';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(118106, 'spell_volley');

DELETE FROM `spell_script_names` WHERE `spell_id`=121898 AND `ScriptName`='spell_whirling_blade_damages';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(121898, 'spell_whirling_blade_damages');

DELETE FROM `spell_script_names` WHERE `spell_id`=121897 AND `ScriptName`='spell_whirling_blade_sword';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(121897, 'spell_whirling_blade_sword');

DELETE FROM `spell_script_names` WHERE `spell_id`=123175 AND `ScriptName`='spell_wind_step';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(123175, 'spell_wind_step');

DELETE FROM `spell_script_names` WHERE `spell_id`=122761 AND `ScriptName`='spell_zorlok_exhale';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122761, 'spell_zorlok_exhale');

DELETE FROM `spell_script_names` WHERE `spell_id`=122760 AND `ScriptName`='spell_zorlok_exhale_damage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(122760, 'spell_zorlok_exhale_damage');

DELETE FROM `areatrigger_template` WHERE `Id`=5302;
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES 
(5302, 0, 8, 5, 5, 0, 0, 0, 0, 'at_monk_chi_burst_damage', 26365);

DELETE FROM `spell_script_names` WHERE `spell_id`=11196 AND `ScriptName`='spell_gen_bandage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(11196, 'spell_gen_bandage');

DELETE FROM `spell_script_names` WHERE `spell_id`=100780 AND `ScriptName`='spell_monk_tiger_palm';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(100780, 'spell_monk_tiger_palm');

-- move to another guid range
SET @CGUID := 685;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+124;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+124;
DELETE FROM `waypoint_data` WHERE `id` BETWEEN ((@CGUID+0)*10) AND ((@CGUID+124)*10);

SET @OGUID := 46;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+14;

SET @CGUID := 454893;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+124;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@CGUID+0, 112392, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1076.599, 7248.414, 97.78458, 0.7000231, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Quartermaster Durnolf
(@CGUID+1, 93823, 1479, 7813, 7813, '0', 5090, 0, 0, 0, 1059.613, 7224.605, 100.3775, 0.03462749, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Danica the Reclaimer
(@CGUID+2, 116609, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1071.531, 7241.38, 97.78132, 6.147542, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Battlelord's Armor
(@CGUID+3, 96679, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1082.998, 7229.331, 98.20152, 3.558333, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Aerylia
(@CGUID+4, 112420, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1049.514, 7135.655, 98.26167, 4.09064, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Ymirjar Lord's Set
(@CGUID+5, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1019.195, 7165.312, 97.78876, 1.599757, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+6, 112400, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1042.552, 7139.059, 98.17068, 4.729155, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Onslaught Set
(@CGUID+7, 96469, 1479, 7813, 7813, '0', 5107, 0, 0, 0, 796.1858, 7228.977, 106.7501, 0.01738298, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Odyn
(@CGUID+8, 111741, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1067.51, 7324.483, 109.51, 0.05171752, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Fjornson Stonecarver
(@CGUID+9, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 892.434, 7226.98, 97.78457, 5.579187, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+10, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 881.3212, 7215.812, 97.84029, 0.8428905, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+11, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1035.899, 7164.185, 97.78709, 1.637839, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+12, 112408, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1044.514, 7138.362, 98.09043, 4.533813, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Heroes' Dreadnaught Set
(@CGUID+13, 112418, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1048.08, 7136.716, 98.11954, 4.406168, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Hellscream's Conquest Set
(@CGUID+14, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1052.437, 7118.711, 97.76829, 5.480986, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+15, 112413, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1046.476, 7137.655, 98.12541, 4.404978, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valorous Siegebreaker Set
(@CGUID+16, 112416, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1048.076, 7136.72, 98.18303, 4.312254, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Wrynn's Conquest Set
(@CGUID+17, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 881.3577, 7238.921, 97.81672, 5.622649, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+18, 112361, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1010.028, 7139.051, 98.17016, 5.175318, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Warbringer Armor Set
(@CGUID+19, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1041.295, 7120.502, 97.79205, 4.123053, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+20, 112390, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1011.79, 7139.432, 98.16254, 4.938556, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Destroyer Armor Set
(@CGUID+21, 114558, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 996.7882, 7131.478, 98.34371, 5.313775, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Greater Sparring Partner
(@CGUID+22, 114559, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 983.5417, 7115.333, 98.34372, 5.964656, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Lesser Sparring Partner
(@CGUID+23, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 849.691, 7241.927, 106.7698, 3.942692, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+24, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1000.208, 7109.535, 97.79235, 5.673533, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+25, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1014.392, 7122.58, 97.79585, 5.204721, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+26, 112356, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1006.404, 7137.51, 98.14191, 5.266796, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Battlegear of Wrath Set
(@CGUID+27, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1050.693, 7111.057, 97.79233, 4.03371, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+28, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 848.368, 7212.071, 106.7691, 2.617522, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+29, 112353, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1004.611, 7136.491, 98.09541, 5.572387, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Battlegear of Might Set
(@CGUID+30, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1010.502, 7120.085, 97.79221, 5.342214, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+31, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1066.46, 7116.097, 98.34373, 0.714711, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_weapon_inspector_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+32, 107494, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1029.283, 7122.28, 101.786, 1.365587, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Val'kyr Arena Master
(@CGUID+33, 112577, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1021.997, 7125.033, 97.78559, 4.873281, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Weaponmaster Asvard
(@CGUID+34, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1002.779, 7112.72, 97.79243, 5.494812, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+35, 112357, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1008.24, 7138.466, 98.09775, 5.087465, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Conqueror's Battlegear Set
(@CGUID+36, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1009.476, 7069.135, 97.7838, 1.230678, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+37, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1068.148, 7099.457, 98.06343, 0.4467911, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_weapon_inspector_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+38, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 996.0295, 7088.243, 97.7838, 0.5178266, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+39, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1053.821, 7059.55, 98.34373, 4.876904, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_weapon_inspector_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+40, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1013.844, 7066.76, 97.7838, 1.091989, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+41, 107494, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1022.26, 7065.905, 101.786, 4.937614, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Val'kyr Arena Master
(@CGUID+42, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1055.898, 7089.155, 97.78381, 3.174177, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+43, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 996.283, 7100.035, 97.78442, 6.270727, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+44, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1000.828, 7078.397, 97.7838, 0.4620249, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+45, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1037.589, 7066.596, 97.78381, 2.381599, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+46, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1041.092, 7068.59, 97.78381, 2.431519, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+47, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 981.2535, 7083.415, 98.34373, 3.51726, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_weapon_inspector_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+48, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1055.465, 7101.055, 97.78791, 3.54066, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+49, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1049.63, 7075.854, 97.78381, 2.568862, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+50, 107483, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1041.01, 7048.68, 98.34371, 1.974365, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Lesser Sparring Partner
(@CGUID+51, 107483, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1008.724, 7049.438, 98.34371, 1.227951, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Lesser Sparring Partner
(@CGUID+52, 107484, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1025.441, 7047.345, 98.34372, 1.575, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Greater Sparring Partner
(@CGUID+53, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 787.2691, 7141.032, 107.1845, 3.962807, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+54, 96586, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1024.649, 7354.032, 107.6685, 1.500983, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Master Smith Helgar
(@CGUID+55, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 799.2552, 7240.588, 106.7846, 3.108604, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+56, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 795.0833, 7217.432, 106.7469, 0.12223, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+57, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 795.4566, 7241.323, 106.7465, 6.263709, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+58, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 906.0347, 7238.638, 97.82867, 3.213452, 420, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_incoming_valarjar_aspirant_2', 24015), -- Valarjar Aspirant
(@CGUID+59, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 783.9618, 7319.146, 107.1622, 5.558975, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+60, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 781.368, 7140.252, 107.1625, 0.8794658, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+61, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 887.0469, 7215.551, 97.8416, 1.970037, 420, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_incoming_valarjar_aspirant_1', 24015), -- Valarjar Aspirant
(@CGUID+62, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 838.9618, 7182.88, 107.5491, 2.275736, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+63, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 839.1059, 7186.208, 107.5515, 3.687696, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+64, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 840.1702, 7270.393, 107.5516, 2.705152, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+65, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 828.2902, 7272.351, 107.5846, 2.375442, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Shieldmaiden
(@CGUID+66, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 803.6049,7325.532, 107.5846, 4.506814, 540, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_leaving_valarjar_1', 24015), -- Valarjar Aspirant
(@CGUID+67, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 831.388, 7296.055, 107.5846, 1.930207, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+68, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 809.3837, 7173.368, 107.0277, 5.281168, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Shieldmaiden
(@CGUID+69, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 828.7118, 7184.054, 107.556, 5.624679, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+70, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 823.9757, 7169.554, 107.5535, 5.984025, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+71, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 797.1129, 7270.123, 107.5464, 1.396805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+72, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 819.7847, 7292.21, 107.5571, 0.6717078, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Shieldmaiden
(@CGUID+73, 113300, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 814.1077, 7229.027, 106.7456, 3.15387, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Image of Thorim
(@CGUID+74, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 820.4601, 7153.763, 107.5452, 0.8983396, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+75, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 812.2892, 7286.124, 106.7846, 4.526197, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+76, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 805.3559, 7189.577, 107.5568, 4.634243, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+77, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 824.0938, 7156.772, 107.554, 2.579204, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+78, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 829.4011, 7162.335, 107.5629, 2.534826, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+79, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 828.6077, 7180.745, 107.5552, 0.9823219, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+80, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 827.3924, 7285.477, 107.5528, 0.9050231, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+81, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 822.0504, 7291.395, 107.5548, 0.8406721, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+82, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 839.9896, 7276.862, 107.5461, 3.406442, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+83, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1046.743, 7116.038, 97.79204, 4.075095, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+84, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 798.8055, 7167.791, 107.5566, 3.21311, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+85, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 818.2708, 7151.954, 107.5402, 3.27984, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+86, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 795.5208, 7295.604, 107.5576, 2.931253, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+87, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 814.1736, 7311.827, 107.5468, 5.071805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+88, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 821.4045, 7304.61, 107.5438, 3.961463, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+89, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 843.809, 7283.556, 107.4719, 3.633651, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+90, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 807.2465, 7269.116, 107.5579, 3.195144, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+91, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 840.3403, 7172.121, 107.4872, 2.919409, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+92, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 831.3125, 7274.136, 107.5543, 1.661897, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+93, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 793.7621, 7192.156, 107.4274, 6.169437, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+94, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 797.5504, 7279.313, 107.5523, 5.85173, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+95, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 794.342, 7181.619, 107.5434, 5.917163, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+96, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 797.0816, 7274.227, 107.5485, 5.371294, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+97, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 784.0087, 7167.393, 107.5416, 5.713745, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+98, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 789.3386, 7161.089, 107.5541, 2.545176, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+99, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 798.5434, 7293.633, 107.5581, 4.832476, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+100, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 815.0625, 7149.273, 107.5412, 1.924815, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+101, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 796.5729, 7165.526, 107.5567, 1.24369, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+102, 103810, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 807.7656, 7309.16, 109.6824, 3.487215, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Renfield
(@CGUID+103, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 804.5729, 7146.695, 107.5489, 0.8699546, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+104, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 793.0313, 7298.327, 107.5576, 5.071805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+105, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 776.6667, 7302.682, 107.3829, 5.628316, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+106, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 800.3316, 7325.029, 107.3884, 5.443239, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+107, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 810.6476, 7301.071, 107.5587, 2.769743, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+108, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 808.6337, 7303.242, 107.5587, 0.4036042, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+109, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 808.1007, 7312.498, 107.5525, 5.614032, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+110, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 805.4045, 7185.153, 107.5569, 2.049371, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+111, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 795.6667, 7181.746, 107.5449, 0.1131875, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+112, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 829.2587, 7191.175, 107.5606, 0.1131875, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+113, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 794.6996, 7282.824, 107.5476, 0.7188638, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+114, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 817.0955, 7309.072, 107.5454, 3.461222, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+115, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 788.6007, 7174.139, 107.4175, 5.679673, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+116, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 831.092, 7277.778, 107.5537, 5.071805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+117, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 993.75, 7323.065, 123.6135, 5.650713, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_1', 24015), -- Val'kyr of Odyn
(@CGUID+118, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1110.443, 7213.999, 17.28479, 3.149208, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_2', 24015), -- Val'kyr of Odyn
(@CGUID+119, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1124.51, 7222.31, 42.15336, 3.232374, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_3', 24015), -- Val'kyr of Odyn
(@CGUID+120, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 912.2222, 7205.531, 129.2773, 6.190696, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_4', 24015), -- Val'kyr of Odyn
(@CGUID+121, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1039.444, 7133.647, 106.5698, 3.696915, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_5', 24015), -- Val'kyr of Odyn
(@CGUID+122, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1107.887, 7234.073, 54.97818, 3.075214, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_6', 24015), -- Val'kyr of Odyn
(@CGUID+123, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1065.42, 7306.094, 117.8158, 2.302904, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_7', 24015), -- Val'kyr of Odyn
(@CGUID+124, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 771.441, 7159.936, 107.5405, 6.036823, 600, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_leaving_valarjar_2', 24015); -- Valarjar Aspirant

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+124;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+2, 0, 0, 0, 1, 0, 12290, 0, 0, ''), -- Battlelord's Armor
(@CGUID+4, 0, 0, 50331648, 1, 0, 0, 0, 0, '223760'), -- Ymirjar Lord's Set - 223760 - Ymirjar Lord's Set
(@CGUID+6, 0, 0, 50331648, 1, 0, 0, 0, 0, '223743'), -- Onslaught Set - 223743 - Onslaught Set
(@CGUID+7, 0, 0, 1, 1, 0, 0, 0, 0, ''), -- Odyn
(@CGUID+8, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Fjornson Stonecarver
(@CGUID+12, 0, 0, 50331648, 1, 0, 0, 0, 0, '223746'), -- Heroes' Dreadnaught Set - 223746 - Heroes' Dreadnaught Set
(@CGUID+13, 0, 0, 50331648, 1, 0, 0, 0, 0, '223759'), -- Hellscream's Conquest Set - 223759 - Hellscream's Conquest Set
(@CGUID+15, 0, 0, 50331648, 1, 0, 0, 0, 0, '223749'), -- Valorous Siegebreaker Set - 223749 - Valorous Siegebreaker Set
(@CGUID+16, 0, 0, 50331648, 1, 0, 0, 0, 0, '223752'), -- Wrynn's Conquest Set - 223752 - Wrynn's Conquest Set
(@CGUID+18, 0, 0, 50331648, 1, 0, 0, 0, 0, '223717'), -- Warbringer Armor Set - 223717 - Warbringer Armor Set
(@CGUID+20, 0, 0, 50331648, 1, 0, 0, 0, 0, '223739'), -- Destroyer Armor Set - 223739 - Destroyer Armor Set
(@CGUID+21, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Greater Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+22, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Lesser Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+26, 0, 0, 50331648, 1, 0, 0, 0, 0, '223705'), -- Battlegear of Wrath Set - 223705 - Battlegear of Wrath Set
(@CGUID+29, 0, 0, 50331648, 1, 0, 0, 0, 0, '223700'), -- Battlegear of Might Set - 223700 - Battlegear of Might Set
(@CGUID+33, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Weaponmaster Asvard
(@CGUID+35, 0, 0, 50331648, 1, 0, 0, 0, 0, '223709'), -- Conqueror's Battlegear Set - 223709 - Conqueror's Battlegear Set
(@CGUID+50, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Lesser Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+51, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Lesser Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+52, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Greater Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+54, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Master Smith Helgar
(@CGUID+73, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Image of Thorim
(@CGUID+89, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+91, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+93, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+105, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+106, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+115, 0, 0, 0, 1, 426, 0, 0, 0, ''); -- Valarjar Aspirant

-- Pathing for Quartermaster Durnolf
SET @PATH := (@CGUID+0) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+0;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+0, @PATH, 0, 0, 1, 0, 0, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 1078.332, 7249.874, 97.78458, 0.5061455, 15000, 0, 0, 100, 0),
(@PATH, 2, 1076.599, 7248.414, 97.78458, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 1072.833, 7244.781, 97.78458, 2.251475, 15000, 0, 0, 100, 0);

-- Pathing for Stormforged Valarjar
SET @PATH := (@CGUID+14) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+14;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+14, @PATH, 0, 0, 1, 0, 0, 0, 0, '52642'); -- Stormforged Valarjar - 52642 - Dull Weapons

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 1059.355, 7109.143, 98.03021, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 1062.14, 7098.445, 98.09122, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 1062.212, 7086.201, 98.07793, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 1057.238, 7073.042, 98.07264, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 1050.738, 7066.218, 97.85432, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 1041.468, 7059.611, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 1035.233, 7057.516, 98.04141, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 1030.441, 7056.395, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 1016.19, 7057.544, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 1001.354, 7064.85, 98.03457, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 999.6281, 7066.602, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 991.1783, 7078.769, 98.05251, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 988.2833, 7090.929, 98.04587, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 988.7699, 7102.168, 98.06433, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 991.3452, 7110.406, 98.0473, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 997.7927, 7119.614, 98.03343, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 1007.708, 7127.708, 98.04001, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 1009.347, 7128.678, 98.05522, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 1024.143, 7130.562, 98.03651, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 1033.394, 7130.59, 97.83824, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 1035.905, 7129.8, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 1039.673, 7128.535, 98.06012, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 1050.871, 7120.234, 98.03458, 0, 0, 0, 0, 100, 0);

-- Pathing for Stormforged Valarjar
SET @PATH := (@CGUID+9) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+9;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+9, @PATH, 0, 0, 1, 0, 0, 0, 0, '52642'); -- Stormforged Valarjar - 52642 - Dull Weapons

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 899.703, 7219.97, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 909.387, 7216.78, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 919.976, 7216.32, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 932.529, 7216.02, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 945.434, 7216.09, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 956.3, 7216.17, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 965.25, 7216.12, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 976.085, 7217.55, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 984.035, 7218.43, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 991.854, 7220.49, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 995.995, 7220.9, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 998.682, 7220.46, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 1000.88, 7217.52, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 1003.06, 7213.05, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 1006.04, 7208.53, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 1010.58, 7203.69, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 1016.79, 7200.38, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 1020.13, 7198.14, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 1022.56, 7194.85, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 1023.03, 7190.72, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 1022.07, 7185.97, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 1021.28, 7180.11, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 1020.18, 7171.65, 97.7846, 0, 14000, 0, 0, 100, 0),
(@PATH, 24, 1028.04, 7170.89, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 25, 1033.46, 7173.44, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 26, 1034.11, 7178.06, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 27, 1033.23, 7181.86, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 28, 1032.5, 7189.42, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 29, 1032.85, 7195.41, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 30, 1036.11, 7198.49, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 31, 1041.39, 7201.25, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 32, 1045.58, 7204.88, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 33, 1048.67, 7207.85, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 34, 1052.05, 7212.5, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 35, 1054.7, 7216.44, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 36, 1055.88, 7220.42, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 37, 1060.33, 7221.08, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 38, 1065.39, 7218.43, 97.8289, 0, 0, 0, 0, 100, 0),
(@PATH, 39, 1068.39, 7214.8, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 40, 1068.32, 7209.8, 97.7846, 0, 15000, 0, 0, 100, 0),
(@PATH, 41, 1065.41, 7217.37, 97.8214, 0, 0, 0, 0, 100, 0),
(@PATH, 42, 1061.24, 7219.92, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 43, 1056.07, 7221.62, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 44, 1053.59, 7226.19, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 45, 1053.6, 7231.76, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 46, 1053.44, 7238.03, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 47, 1049.05, 7243.52, 97.8326, 0, 0, 0, 0, 100, 0),
(@PATH, 48, 1045.87, 7246.58, 97.8975, 0, 0, 0, 0, 100, 0),
(@PATH, 49, 1042.33, 7249.42, 97.9682, 0, 0, 0, 0, 100, 0),
(@PATH, 50, 1039.85, 7250.54, 97.7845, 0, 0, 0, 0, 100, 0),
(@PATH, 51, 1036.55, 7252.61, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 52, 1034.29, 7254.71, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 53, 1034.21, 7258.83, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 54, 1034.25, 7263.33, 97.8129, 0, 0, 0, 0, 100, 0),
(@PATH, 55, 1034.49, 7266.94, 97.8577, 0, 0, 0, 0, 100, 0),
(@PATH, 56, 1034.63, 7269.23, 97.8861, 0, 13000, 0, 0, 100, 0),
(@PATH, 57, 1029.1, 7268.52, 97.8802, 0, 0, 0, 0, 100, 0),
(@PATH, 58, 1025.21, 7262.77, 97.8107, 0, 0, 0, 0, 100, 0),
(@PATH, 59, 1024.41, 7258.54, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 60, 1023.33, 7254.99, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 61, 1019.39, 7252.49, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 62, 1015.62, 7250.6, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 63, 1010.78, 7247.79, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 64, 1006.78, 7244.65, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 65, 1003.78, 7239.71, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 66, 1001.31, 7234.52, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 67, 1000.29, 7231.48, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 68, 995.401, 7230.75, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 69, 988.91, 7231.11, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 70, 985.299, 7232.55, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 71, 978.115, 7235.72, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 72, 970.783, 7235.44, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 73, 963.299, 7235.57, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 74, 952.04, 7236, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 75, 941.611, 7236.31, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 76, 922.184, 7236.51, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 77, 901.578, 7237.24, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 78, 886.344, 7237.96, 97.7846, 0, 15000, 0, 0, 100, 0);

-- Pathing for Stormforged Valarjar
SET @PATH := (@CGUID+55) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+55;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+55, @PATH, 0, 0, 1, 0, 0, 0, 0, '52642'); -- Stormforged Valarjar - 52642 - Dull Weapons

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 799.2552, 7240.588, 106.7846, 0, 15000, 0, 0, 100, 0),
(@PATH, 2, 803.5764, 7240.032, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 807.1285, 7241.317, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 809.2222, 7248.132, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 811.243, 7253.938, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 814.2976, 7259.448, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 813.4879, 7265.893, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 813.4063, 7275.651, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 813.8004, 7283.113, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 810.0226, 7288.268, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 803.0785, 7294.741, 106.8754, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 792.852, 7305.193, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 784.3941, 7313.585, 107.1845, 0, 15000, 0, 0, 100, 0),
(@PATH, 14, 792.852, 7305.193, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 803.0785, 7294.741, 106.8754, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 810.0226, 7288.268, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 813.8004, 7283.113, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 813.4063, 7275.651, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 813.4879, 7265.893, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 814.2976, 7259.448, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 811.243, 7253.938, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 809.2222, 7248.132, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 807.1285, 7241.317, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 24, 803.5764, 7240.032, 106.7846, 0, 0, 0, 0, 100, 0);

-- Pathing for Stormforged Valarjar
SET @PATH := (@CGUID+53) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+53;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+53, @PATH, 0, 0, 1, 0, 0, 0, 0, '52642'); -- Stormforged Valarjar - 52642 - Dull Weapons

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 787.2691, 7141.032, 107.1845, 0, 15000, 0, 0, 100, 0),
(@PATH, 2, 791.7396, 7145.578, 107.0109, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 795.9323, 7149.517, 106.8352, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 801.4167, 7155.145, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 806.757, 7160.366, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 812.3542, 7166.497, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 817.4305, 7172.878, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 819.4948, 7179.916, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 819.6927, 7189.042, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 820.6406, 7199.277, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 824.2413, 7201.967, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 828.4722, 7203.042, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 832.0208, 7204.906, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 835.8264, 7208.015, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 839.2604, 7211.28, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 845.6389, 7213.393, 106.7846, 0, 15000, 0, 0, 100, 0),
(@PATH, 17, 839.2604, 7211.28, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 835.8264, 7208.015, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 832.0208, 7204.906, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 828.4722, 7203.042, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 824.2413, 7201.967, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 820.6406, 7199.277, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 819.6927, 7189.042, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 24, 819.4948, 7179.916, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 25, 817.4305, 7172.878, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 26, 812.3542, 7166.497, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 27, 806.757, 7160.366, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 28, 801.4167, 7155.145, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 29, 795.9323, 7149.517, 106.8352, 0, 0, 0, 0, 100, 0),
(@PATH, 30, 791.7396, 7145.578, 107.0109, 0, 0, 0, 0, 100, 0);

-- Start Mead Hall

-- Pathing for Shieldmaiden
SET @PATH := (@CGUID+65) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+65;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+65, @PATH, 0, 0, 1, 0, 0, 0, 0, ''); -- Shieldmaiden

-- missing emotes
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 821.6458, 7278.744, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 817.5417, 7284.403, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 813.7292, 7289.004, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 809.7726, 7291.155, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 806.7186, 7288.294, 107.5844, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 802.8837, 7288.68, 107.5846, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 801.5521, 7290.084, 107.5846, 0, 20000, 0, 0, 100, 0),
(@PATH, 8, 806.4844, 7289.871, 107.2425, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 810.8333, 7287.885, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 815.3386, 7283.011, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 818.4531, 7278.502, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 822.3646, 7270.632, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 826.1702, 7270.191, 107.5846, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 830.4688, 7270.254, 107.5846, 0, 20000, 0, 0, 100, 0);

-- Pathing for Valarjar Aspirant
SET @PATH := (@CGUID+75) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+75;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+75, @PATH, 0, 0, 1, 0, 0, 0, 0, ''); -- Valarjar Aspirant

-- missing emotes
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 807.4114, 7278.075, 107.5846, 0, 15000, 0, 0, 100, 0),
(@PATH, 2, 814.585, 7297.916, 107.5846, 0, 15000, 0, 0, 100, 0),
(@PATH, 3, 812.8472, 7289.086, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 811.0191, 7279.381, 106.7846, 0, 0, 0, 0, 100, 0);

-- Shieldmaiden
SET @PATH := (@CGUID+68) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+68;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+68, @PATH, 0, 0, 1, 0, 0, 0, 0, ''); -- Shieldmaiden

-- missing emotes
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 810.806, 7163.271, 106.8967, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 813.4445, 7160.912, 107.6182, 0, 20000, 0, 0, 100, 0),
(@PATH, 3, 808.9236, 7166.083, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 809.0608, 7170.817, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 810.1614, 7177.255, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 806.1841, 7178.373, 107.5846, 0, 15000, 0, 0, 100, 0),
(@PATH, 7, 812.059, 7169.183, 106.7846, 0, 0, 0, 0, 100, 0);

SET @OGUID := 301210;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+14;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 246280, 1479, 7813, 7813, '0', 5997, 0, 1067.097, 7240.936, 100.5904, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- Cylinder Collision (2 Scale) (Area: Skyhold - Difficulty: 0)
(@OGUID+1, 250878, 1479, 7813, 7813, '0', 5997, 0, 1127.615, 7196.929, 99.71751, 2.335665, 0, 0, 0.9199028, 0.3921465, 120, 255, 1, 24015), -- Training Troops (Area: Skyhold - Difficulty: 0)
(@OGUID+2, 244516, 1479, 7813, 7813, '0', 5997, 0, 1085.462, 7228.605, 47.26785, 1.315875, 0.522438, 0.354455, 0.4989128, 0.5937223, 120, 255, 1, 24015), -- Valhallas Portal (Area: Skyhold - Difficulty: 0)
(@OGUID+3, 252016, 1479, 7813, 7813, '0', 5997, 0, 1069.146, 7204.144, 97.69034, 0.8474326, 0, 0, 0.4111509, 0.9115673, 120, 255, 1, 24015), -- Requisitioned Armaments (Area: Skyhold - Difficulty: 0)
(@OGUID+4, 267922, 1479, 7813, 7813, '0', 5997, 0, 1068.727, 7311.191, 109.4267, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- The Favored of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+5, 250879, 1479, 7813, 7813, '0', 5997, 0, 1128.748, 7249.465, 99.71822, 3.968774, 0, 0, -0.9156837, 0.4018996, 120, 255, 1, 24015), -- Training Troops (Area: Skyhold - Difficulty: 0)
(@OGUID+6, 259095, 1479, 7813, 7813, '0', 5997, 0, 1142.71, 7223.2, 101.819, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- [DNT] Command Table Collision Cylinder (Area: Skyhold - Difficulty: 0)
(@OGUID+7, 248981, 1479, 7813, 7813, '0', 5997, 0, 1069.054, 7311.249, 109.4267, 0.9491548, 0, 0, 0.4569626, 0.8894859, 120, 255, 1, 24015), -- The Favored of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+8, 250880, 1479, 7813, 7813, '0', 5997, 0, 1122.059, 7253.297, 99.71768, 3.91156, 0, 0, -0.9268045, 0.3755441, 120, 255, 1, 24015), -- Training Troops (Area: Skyhold - Difficulty: 0)
(@OGUID+9, 252887, 1479, 7813, 7813, '0', 5997, 0, 1054.125, 7132.937, 98.26038, 5.665893, 0, 0, -0.3037691, 0.9527457, 120, 255, 1, 24015), -- Blessing of Mjolnir (Area: Skyhold - Difficulty: 0)
(@OGUID+10, 248979, 1479, 7813, 7813, '0', 5997, 0, 1074.019, 7322.522, 109.4267, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- Saga of the Valarjar (Area: Skyhold - Difficulty: 0)
(@OGUID+11, 245726, 1479, 7813, 7813, '0', 5997, 0, 1030.769, 7361.063, 107.3078, 4.673286, -0.001883507, -0.01285458, -0.7206783, 0.6931479, 120, 255, 1, 24015), -- Forge of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+12, 267923, 1479, 7813, 7813, '0', 5997, 0, 1068.278, 7334.356, 109.4267, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- The Legend of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+13, 248980, 1479, 7813, 7813, '0', 5997, 0, 1068.616, 7334.295, 109.4267, 5.433888, 0, 0, -0.4120007, 0.9111835, 120, 255, 1, 24015), -- The Legend of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+14, 247320, 1479, 7813, 7813, '0', 5997, 0, 1030.392, 7360.578, 107.5607, 4.678151, 0, 0, -0.7191076, 0.6948987, 120, 255, 1, 24015); -- Forge of Power (Area: Skyhold - Difficulty: 0)

UPDATE creature_template SET ScriptName = 'npc_feral_spirit' WHERE entry = 29264;
UPDATE areatrigger_template SET scriptname = "at_warlock_casting_circle" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 8138);
UPDATE `creature_template` SET `ScriptName`='npc_paku' WHERE (`entry`='127377');
UPDATE `creature_template` SET `ScriptName`='npc_pterrordax_paku_master_of_winds' WHERE (`entry`='137768');
UPDATE `creature_template` SET `ScriptName`='npc_ata_the_winglord_paku_master_of_winds' WHERE (`entry`='129701');
UPDATE `creature_template` SET `ScriptName`='npc_ata_the_winglord_offensively_defence' WHERE (`entry`='135810');
UPDATE `creature_template` SET `ScriptName`='npc_soth_zolani' WHERE (`entry`='129088');
UPDATE `creature` SET `ScriptName`='npc_allied_race_infos_draenei' WHERE (`guid`='11000002');
UPDATE `creature` SET `ScriptName`='npc_allied_race_infos_voidelf' WHERE (`guid`='11000003');
UPDATE `creature_template` SET `ScriptName`='npc_vha_congealing_blood' WHERE (`entry`='102941');


UPDATE `creature_template` SET `ScriptName`='npc_vha_stasis_crystal' WHERE (`entry`='103672');



UPDATE areatrigger_template SET scriptname = "at_warlock_fel_fissure" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6959);
UPDATE areatrigger_template SET scriptname = "at_warlock_bane_of_havoc" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 5650);
UPDATE areatrigger_template SET scriptname = "at_dh_fury_of_the_illidari" WHERE id = 10470;
UPDATE areatrigger_template SET scriptname = "at_warlock_summon_observer" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 90001);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_mana_rift" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 9695);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_demonic_trample" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6482);
UPDATE `instance_template` SET `parent` = '870', `script` = 'instance_siege_of_the_niuzao_temple' WHERE `map` = '1011';
SET @CGUID := 685;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+124;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@CGUID+0, 112392, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1076.599, 7248.414, 97.78458, 0.7000231, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Quartermaster Durnolf
(@CGUID+1, 93823, 1479, 7813, 7813, '0', 5090, 0, 0, 0, 1059.613, 7224.605, 100.3775, 0.03462749, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Danica the Reclaimer
(@CGUID+2, 116609, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1071.531, 7241.38, 97.78132, 6.147542, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Battlelord's Armor
(@CGUID+3, 96679, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1082.998, 7229.331, 98.20152, 3.558333, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Aerylia
(@CGUID+4, 112420, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1049.514, 7135.655, 98.26167, 4.09064, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Ymirjar Lord's Set
(@CGUID+5, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1019.195, 7165.312, 97.78876, 1.599757, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+6, 112400, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1042.552, 7139.059, 98.17068, 4.729155, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Onslaught Set
(@CGUID+7, 96469, 1479, 7813, 7813, '0', 5107, 0, 0, 0, 796.1858, 7228.977, 106.7501, 0.01738298, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Odyn
(@CGUID+8, 111741, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1067.51, 7324.483, 109.51, 0.05171752, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Fjornson Stonecarver
(@CGUID+9, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 892.434, 7226.98, 97.78457, 5.579187, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+10, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 881.3212, 7215.812, 97.84029, 0.8428905, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+11, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1035.899, 7164.185, 97.78709, 1.637839, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+12, 112408, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1044.514, 7138.362, 98.09043, 4.533813, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Heroes' Dreadnaught Set
(@CGUID+13, 112418, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1048.08, 7136.716, 98.11954, 4.406168, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Hellscream's Conquest Set
(@CGUID+14, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1052.437, 7118.711, 97.76829, 5.480986, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+15, 112413, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1046.476, 7137.655, 98.12541, 4.404978, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valorous Siegebreaker Set
(@CGUID+16, 112416, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1048.076, 7136.72, 98.18303, 4.312254, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Wrynn's Conquest Set
(@CGUID+17, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 881.3577, 7238.921, 97.81672, 5.622649, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+18, 112361, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1010.028, 7139.051, 98.17016, 5.175318, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Warbringer Armor Set
(@CGUID+19, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1041.295, 7120.502, 97.79205, 4.123053, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+20, 112390, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1011.79, 7139.432, 98.16254, 4.938556, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Destroyer Armor Set
(@CGUID+21, 114558, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 996.7882, 7131.478, 98.34371, 5.313775, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Greater Sparring Partner
(@CGUID+22, 114559, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 983.5417, 7115.333, 98.34372, 5.964656, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Lesser Sparring Partner
(@CGUID+23, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 849.691, 7241.927, 106.7698, 3.942692, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+24, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1000.208, 7109.535, 97.79235, 5.673533, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+25, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1014.392, 7122.58, 97.79585, 5.204721, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+26, 112356, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1006.404, 7137.51, 98.14191, 5.266796, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Battlegear of Wrath Set
(@CGUID+27, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1050.693, 7111.057, 97.79233, 4.03371, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+28, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 848.368, 7212.071, 106.7691, 2.617522, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+29, 112353, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1004.611, 7136.491, 98.09541, 5.572387, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Battlegear of Might Set
(@CGUID+30, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1010.502, 7120.085, 97.79221, 5.342214, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+31, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1066.46, 7116.097, 98.34373, 0.714711, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_weapon_inspector_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+32, 107494, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1029.283, 7122.28, 101.786, 1.365587, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Val'kyr Arena Master
(@CGUID+33, 112577, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1021.997, 7125.033, 97.78559, 4.873281, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Weaponmaster Asvard
(@CGUID+34, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1002.779, 7112.72, 97.79243, 5.494812, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+35, 112357, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1008.24, 7138.466, 98.09775, 5.087465, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Conqueror's Battlegear Set
(@CGUID+36, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1009.476, 7069.135, 97.7838, 1.230678, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+37, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1068.148, 7099.457, 98.06343, 0.4467911, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_weapon_inspector_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+38, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 996.0295, 7088.243, 97.7838, 0.5178266, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+39, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1053.821, 7059.55, 98.34373, 4.876904, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_weapon_inspector_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+40, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1013.844, 7066.76, 97.7838, 1.091989, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+41, 107494, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1022.26, 7065.905, 101.786, 4.937614, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Val'kyr Arena Master
(@CGUID+42, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1055.898, 7089.155, 97.78381, 3.174177, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+43, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 996.283, 7100.035, 97.78442, 6.270727, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+44, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1000.828, 7078.397, 97.7838, 0.4620249, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+45, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1037.589, 7066.596, 97.78381, 2.381599, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+46, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1041.092, 7068.59, 97.78381, 2.431519, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+47, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 981.2535, 7083.415, 98.34373, 3.51726, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_weapon_inspector_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+48, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1055.465, 7101.055, 97.78791, 3.54066, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+49, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1049.63, 7075.854, 97.78381, 2.568862, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+50, 107483, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1041.01, 7048.68, 98.34371, 1.974365, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Lesser Sparring Partner
(@CGUID+51, 107483, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1008.724, 7049.438, 98.34371, 1.227951, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Lesser Sparring Partner
(@CGUID+52, 107484, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1025.441, 7047.345, 98.34372, 1.575, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Greater Sparring Partner
(@CGUID+53, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 787.2691, 7141.032, 107.1845, 3.962807, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+54, 96586, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1024.649, 7354.032, 107.6685, 1.500983, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Master Smith Helgar
(@CGUID+55, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 799.2552, 7240.588, 106.7846, 3.108604, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+56, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 795.0833, 7217.432, 106.7469, 0.12223, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+57, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 795.4566, 7241.323, 106.7465, 6.263709, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+58, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 906.0347, 7238.638, 97.82867, 3.213452, 420, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_incoming_valarjar_aspirant_2', 24015), -- Valarjar Aspirant
(@CGUID+59, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 783.9618, 7319.146, 107.1622, 5.558975, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+60, 96572, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 781.368, 7140.252, 107.1625, 0.8794658, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Stormforged Valarjar
(@CGUID+61, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 887.0469, 7215.551, 97.8416, 1.970037, 420, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_incoming_valarjar_aspirant_1', 24015), -- Valarjar Aspirant
(@CGUID+62, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 838.9618, 7182.88, 107.5491, 2.275736, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+63, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 839.1059, 7186.208, 107.5515, 3.687696, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+64, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 840.1702, 7270.393, 107.5516, 2.705152, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+65, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 828.2902, 7272.351, 107.5846, 2.375442, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Shieldmaiden
(@CGUID+66, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 803.6049,7325.532, 107.5846, 4.506814, 540, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_leaving_valarjar_1', 24015), -- Valarjar Aspirant
(@CGUID+67, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 831.388, 7296.055, 107.5846, 1.930207, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+68, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 809.3837, 7173.368, 107.0277, 5.281168, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Shieldmaiden
(@CGUID+69, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 828.7118, 7184.054, 107.556, 5.624679, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+70, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 823.9757, 7169.554, 107.5535, 5.984025, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+71, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 797.1129, 7270.123, 107.5464, 1.396805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+72, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 819.7847, 7292.21, 107.5571, 0.6717078, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Shieldmaiden
(@CGUID+73, 113300, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 814.1077, 7229.027, 106.7456, 3.15387, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Image of Thorim
(@CGUID+74, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 820.4601, 7153.763, 107.5452, 0.8983396, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+75, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 812.2892, 7286.124, 106.7846, 4.526197, 120, 0, 0, 0, 0, 2, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+76, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 805.3559, 7189.577, 107.5568, 4.634243, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+77, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 824.0938, 7156.772, 107.554, 2.579204, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+78, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 829.4011, 7162.335, 107.5629, 2.534826, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+79, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 828.6077, 7180.745, 107.5552, 0.9823219, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+80, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 827.3924, 7285.477, 107.5528, 0.9050231, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+81, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 822.0504, 7291.395, 107.5548, 0.8406721, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+82, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 839.9896, 7276.862, 107.5461, 3.406442, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+83, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1046.743, 7116.038, 97.79204, 4.075095, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_spectating_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+84, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 798.8055, 7167.791, 107.5566, 3.21311, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+85, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 818.2708, 7151.954, 107.5402, 3.27984, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+86, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 795.5208, 7295.604, 107.5576, 2.931253, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+87, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 814.1736, 7311.827, 107.5468, 5.071805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+88, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 821.4045, 7304.61, 107.5438, 3.961463, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+89, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 843.809, 7283.556, 107.4719, 3.633651, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+90, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 807.2465, 7269.116, 107.5579, 3.195144, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+91, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 840.3403, 7172.121, 107.4872, 2.919409, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+92, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 831.3125, 7274.136, 107.5543, 1.661897, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+93, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 793.7621, 7192.156, 107.4274, 6.169437, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+94, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 797.5504, 7279.313, 107.5523, 5.85173, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+95, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 794.342, 7181.619, 107.5434, 5.917163, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+96, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 797.0816, 7274.227, 107.5485, 5.371294, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+97, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 784.0087, 7167.393, 107.5416, 5.713745, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+98, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 789.3386, 7161.089, 107.5541, 2.545176, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+99, 113270, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 798.5434, 7293.633, 107.5581, 4.832476, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Shieldmaiden
(@CGUID+100, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 815.0625, 7149.273, 107.5412, 1.924815, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+101, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 796.5729, 7165.526, 107.5567, 1.24369, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+102, 103810, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 807.7656, 7309.16, 109.6824, 3.487215, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Renfield
(@CGUID+103, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 804.5729, 7146.695, 107.5489, 0.8699546, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+104, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 793.0313, 7298.327, 107.5576, 5.071805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+105, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 776.6667, 7302.682, 107.3829, 5.628316, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+106, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 800.3316, 7325.029, 107.3884, 5.443239, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+107, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 810.6476, 7301.071, 107.5587, 2.769743, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+108, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 808.6337, 7303.242, 107.5587, 0.4036042, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+109, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 808.1007, 7312.498, 107.5525, 5.614032, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+110, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 805.4045, 7185.153, 107.5569, 2.049371, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+111, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 795.6667, 7181.746, 107.5449, 0.1131875, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+112, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 829.2587, 7191.175, 107.5606, 0.1131875, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+113, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 794.6996, 7282.824, 107.5476, 0.7188638, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+114, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 817.0955, 7309.072, 107.5454, 3.461222, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+115, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 788.6007, 7174.139, 107.4175, 5.679673, 120, 0, 0, 0, 0, 0, 0, 0, 0, '', 24015), -- Valarjar Aspirant
(@CGUID+116, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 831.092, 7277.778, 107.5537, 5.071805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_feasting_valarjar', 24015), -- Valarjar Aspirant
(@CGUID+117, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 993.75, 7323.065, 123.6135, 5.650713, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_1', 24015), -- Val'kyr of Odyn
(@CGUID+118, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1110.443, 7213.999, 17.28479, 3.149208, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_2', 24015), -- Val'kyr of Odyn
(@CGUID+119, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1124.51, 7222.31, 42.15336, 3.232374, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_3', 24015), -- Val'kyr of Odyn
(@CGUID+120, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 912.2222, 7205.531, 129.2773, 6.190696, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_4', 24015), -- Val'kyr of Odyn
(@CGUID+121, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1039.444, 7133.647, 106.5698, 3.696915, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_5', 24015), -- Val'kyr of Odyn
(@CGUID+122, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1107.887, 7234.073, 54.97818, 3.075214, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_6', 24015), -- Val'kyr of Odyn
(@CGUID+123, 93819, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 1065.42, 7306.094, 117.8158, 2.302904, 30, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_valkyr_of_odyn_7', 24015), -- Val'kyr of Odyn
(@CGUID+124, 96401, 1479, 7813, 7813, '0', 5997, 0, 0, 0, 771.441, 7159.936, 107.5405, 6.036823, 600, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_leaving_valarjar_2', 24015); -- Valarjar Aspirant

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+124;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+2, 0, 0, 0, 1, 0, 12290, 0, 0, ''), -- Battlelord's Armor
(@CGUID+4, 0, 0, 50331648, 1, 0, 0, 0, 0, '223760'), -- Ymirjar Lord's Set - 223760 - Ymirjar Lord's Set
(@CGUID+6, 0, 0, 50331648, 1, 0, 0, 0, 0, '223743'), -- Onslaught Set - 223743 - Onslaught Set
(@CGUID+7, 0, 0, 1, 1, 0, 0, 0, 0, ''), -- Odyn
(@CGUID+8, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Fjornson Stonecarver
(@CGUID+12, 0, 0, 50331648, 1, 0, 0, 0, 0, '223746'), -- Heroes' Dreadnaught Set - 223746 - Heroes' Dreadnaught Set
(@CGUID+13, 0, 0, 50331648, 1, 0, 0, 0, 0, '223759'), -- Hellscream's Conquest Set - 223759 - Hellscream's Conquest Set
(@CGUID+15, 0, 0, 50331648, 1, 0, 0, 0, 0, '223749'), -- Valorous Siegebreaker Set - 223749 - Valorous Siegebreaker Set
(@CGUID+16, 0, 0, 50331648, 1, 0, 0, 0, 0, '223752'), -- Wrynn's Conquest Set - 223752 - Wrynn's Conquest Set
(@CGUID+18, 0, 0, 50331648, 1, 0, 0, 0, 0, '223717'), -- Warbringer Armor Set - 223717 - Warbringer Armor Set
(@CGUID+20, 0, 0, 50331648, 1, 0, 0, 0, 0, '223739'), -- Destroyer Armor Set - 223739 - Destroyer Armor Set
(@CGUID+21, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Greater Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+22, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Lesser Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+26, 0, 0, 50331648, 1, 0, 0, 0, 0, '223705'), -- Battlegear of Wrath Set - 223705 - Battlegear of Wrath Set
(@CGUID+29, 0, 0, 50331648, 1, 0, 0, 0, 0, '223700'), -- Battlegear of Might Set - 223700 - Battlegear of Might Set
(@CGUID+33, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Weaponmaster Asvard
(@CGUID+35, 0, 0, 50331648, 1, 0, 0, 0, 0, '223709'), -- Conqueror's Battlegear Set - 223709 - Conqueror's Battlegear Set
(@CGUID+50, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Lesser Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+51, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Lesser Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+52, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Greater Sparring Partner - 98892 - Training Dummy Marker
(@CGUID+54, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Master Smith Helgar
(@CGUID+73, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Image of Thorim
(@CGUID+89, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+91, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+93, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+105, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+106, 0, 0, 0, 1, 426, 0, 0, 0, ''), -- Valarjar Aspirant
(@CGUID+115, 0, 0, 0, 1, 426, 0, 0, 0, ''); -- Valarjar Aspirant

DELETE FROM `creature_template_addon` WHERE `entry` IN (93823, 93819, 96401, 113270, 96572, 103810, 107494, 96679);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(93823, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Danica the Reclaimer
(93819, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Val'kyr of Odyn
(96401, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Valarjar Aspirant
(113270, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Shieldmaiden
(96572, 0, 0, 0, 1, 0, 0, 0, 0, '52642'), -- Stormforged Valarjar - 52642 - Dull Weapons
(103810, 0, 0, 0, 1, 0, 0, 0, 0, '205607'), -- Renfield - 205607 - Boosted
(107494, 0, 0, 33554432, 1, 0, 0, 0, 0, ''), -- Val'kyr Arena Master
(96679, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- Aerylia

-- Pathing for Quartermaster Durnolf
SET @PATH := (@CGUID+0) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+0;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+0, @PATH, 0, 0, 1, 0, 0, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 1078.332, 7249.874, 97.78458, 0.5061455, 15000, 0, 0, 100, 0),
(@PATH, 2, 1076.599, 7248.414, 97.78458, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 1072.833, 7244.781, 97.78458, 2.251475, 15000, 0, 0, 100, 0);

-- Pathing for Stormforged Valarjar
SET @PATH := (@CGUID+14) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+14;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+14, @PATH, 0, 0, 1, 0, 0, 0, 0, '52642'); -- Stormforged Valarjar - 52642 - Dull Weapons

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 1059.355, 7109.143, 98.03021, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 1062.14, 7098.445, 98.09122, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 1062.212, 7086.201, 98.07793, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 1057.238, 7073.042, 98.07264, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 1050.738, 7066.218, 97.85432, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 1041.468, 7059.611, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 1035.233, 7057.516, 98.04141, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 1030.441, 7056.395, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 1016.19, 7057.544, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 1001.354, 7064.85, 98.03457, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 999.6281, 7066.602, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 991.1783, 7078.769, 98.05251, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 988.2833, 7090.929, 98.04587, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 988.7699, 7102.168, 98.06433, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 991.3452, 7110.406, 98.0473, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 997.7927, 7119.614, 98.03343, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 1007.708, 7127.708, 98.04001, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 1009.347, 7128.678, 98.05522, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 1024.143, 7130.562, 98.03651, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 1033.394, 7130.59, 97.83824, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 1035.905, 7129.8, 98.03458, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 1039.673, 7128.535, 98.06012, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 1050.871, 7120.234, 98.03458, 0, 0, 0, 0, 100, 0);

-- Pathing for Stormforged Valarjar
SET @PATH := (@CGUID+9) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+9;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+9, @PATH, 0, 0, 1, 0, 0, 0, 0, '52642'); -- Stormforged Valarjar - 52642 - Dull Weapons

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 899.703, 7219.97, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 909.387, 7216.78, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 919.976, 7216.32, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 932.529, 7216.02, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 945.434, 7216.09, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 956.3, 7216.17, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 965.25, 7216.12, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 976.085, 7217.55, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 984.035, 7218.43, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 991.854, 7220.49, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 995.995, 7220.9, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 998.682, 7220.46, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 1000.88, 7217.52, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 1003.06, 7213.05, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 1006.04, 7208.53, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 1010.58, 7203.69, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 1016.79, 7200.38, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 1020.13, 7198.14, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 1022.56, 7194.85, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 1023.03, 7190.72, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 1022.07, 7185.97, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 1021.28, 7180.11, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 1020.18, 7171.65, 97.7846, 0, 14000, 0, 0, 100, 0),
(@PATH, 24, 1028.04, 7170.89, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 25, 1033.46, 7173.44, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 26, 1034.11, 7178.06, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 27, 1033.23, 7181.86, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 28, 1032.5, 7189.42, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 29, 1032.85, 7195.41, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 30, 1036.11, 7198.49, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 31, 1041.39, 7201.25, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 32, 1045.58, 7204.88, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 33, 1048.67, 7207.85, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 34, 1052.05, 7212.5, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 35, 1054.7, 7216.44, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 36, 1055.88, 7220.42, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 37, 1060.33, 7221.08, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 38, 1065.39, 7218.43, 97.8289, 0, 0, 0, 0, 100, 0),
(@PATH, 39, 1068.39, 7214.8, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 40, 1068.32, 7209.8, 97.7846, 0, 15000, 0, 0, 100, 0),
(@PATH, 41, 1065.41, 7217.37, 97.8214, 0, 0, 0, 0, 100, 0),
(@PATH, 42, 1061.24, 7219.92, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 43, 1056.07, 7221.62, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 44, 1053.59, 7226.19, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 45, 1053.6, 7231.76, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 46, 1053.44, 7238.03, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 47, 1049.05, 7243.52, 97.8326, 0, 0, 0, 0, 100, 0),
(@PATH, 48, 1045.87, 7246.58, 97.8975, 0, 0, 0, 0, 100, 0),
(@PATH, 49, 1042.33, 7249.42, 97.9682, 0, 0, 0, 0, 100, 0),
(@PATH, 50, 1039.85, 7250.54, 97.7845, 0, 0, 0, 0, 100, 0),
(@PATH, 51, 1036.55, 7252.61, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 52, 1034.29, 7254.71, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 53, 1034.21, 7258.83, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 54, 1034.25, 7263.33, 97.8129, 0, 0, 0, 0, 100, 0),
(@PATH, 55, 1034.49, 7266.94, 97.8577, 0, 0, 0, 0, 100, 0),
(@PATH, 56, 1034.63, 7269.23, 97.8861, 0, 13000, 0, 0, 100, 0),
(@PATH, 57, 1029.1, 7268.52, 97.8802, 0, 0, 0, 0, 100, 0),
(@PATH, 58, 1025.21, 7262.77, 97.8107, 0, 0, 0, 0, 100, 0),
(@PATH, 59, 1024.41, 7258.54, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 60, 1023.33, 7254.99, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 61, 1019.39, 7252.49, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 62, 1015.62, 7250.6, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 63, 1010.78, 7247.79, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 64, 1006.78, 7244.65, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 65, 1003.78, 7239.71, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 66, 1001.31, 7234.52, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 67, 1000.29, 7231.48, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 68, 995.401, 7230.75, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 69, 988.91, 7231.11, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 70, 985.299, 7232.55, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 71, 978.115, 7235.72, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 72, 970.783, 7235.44, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 73, 963.299, 7235.57, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 74, 952.04, 7236, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 75, 941.611, 7236.31, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 76, 922.184, 7236.51, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 77, 901.578, 7237.24, 97.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 78, 886.344, 7237.96, 97.7846, 0, 15000, 0, 0, 100, 0);

-- Pathing for Stormforged Valarjar
SET @PATH := (@CGUID+55) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+55;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+55, @PATH, 0, 0, 1, 0, 0, 0, 0, '52642'); -- Stormforged Valarjar - 52642 - Dull Weapons

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 799.2552, 7240.588, 106.7846, 0, 15000, 0, 0, 100, 0),
(@PATH, 2, 803.5764, 7240.032, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 807.1285, 7241.317, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 809.2222, 7248.132, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 811.243, 7253.938, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 814.2976, 7259.448, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 813.4879, 7265.893, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 813.4063, 7275.651, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 813.8004, 7283.113, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 810.0226, 7288.268, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 803.0785, 7294.741, 106.8754, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 792.852, 7305.193, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 784.3941, 7313.585, 107.1845, 0, 15000, 0, 0, 100, 0),
(@PATH, 14, 792.852, 7305.193, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 803.0785, 7294.741, 106.8754, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 810.0226, 7288.268, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 813.8004, 7283.113, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 813.4063, 7275.651, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 813.4879, 7265.893, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 814.2976, 7259.448, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 811.243, 7253.938, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 809.2222, 7248.132, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 807.1285, 7241.317, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 24, 803.5764, 7240.032, 106.7846, 0, 0, 0, 0, 100, 0);

-- Pathing for Stormforged Valarjar
SET @PATH := (@CGUID+53) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+53;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+53, @PATH, 0, 0, 1, 0, 0, 0, 0, '52642'); -- Stormforged Valarjar - 52642 - Dull Weapons

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 787.2691, 7141.032, 107.1845, 0, 15000, 0, 0, 100, 0),
(@PATH, 2, 791.7396, 7145.578, 107.0109, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 795.9323, 7149.517, 106.8352, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 801.4167, 7155.145, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 806.757, 7160.366, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 812.3542, 7166.497, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 817.4305, 7172.878, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 819.4948, 7179.916, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 819.6927, 7189.042, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 820.6406, 7199.277, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 824.2413, 7201.967, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 828.4722, 7203.042, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 832.0208, 7204.906, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 835.8264, 7208.015, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 839.2604, 7211.28, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 845.6389, 7213.393, 106.7846, 0, 15000, 0, 0, 100, 0),
(@PATH, 17, 839.2604, 7211.28, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 835.8264, 7208.015, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 832.0208, 7204.906, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 828.4722, 7203.042, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 824.2413, 7201.967, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 820.6406, 7199.277, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 819.6927, 7189.042, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 24, 819.4948, 7179.916, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 25, 817.4305, 7172.878, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 26, 812.3542, 7166.497, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 27, 806.757, 7160.366, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 28, 801.4167, 7155.145, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 29, 795.9323, 7149.517, 106.8352, 0, 0, 0, 0, 100, 0),
(@PATH, 30, 791.7396, 7145.578, 107.0109, 0, 0, 0, 0, 100, 0);

-- Start Mead Hall

-- Pathing for Shieldmaiden
SET @PATH := (@CGUID+65) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+65;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+65, @PATH, 0, 0, 1, 0, 0, 0, 0, ''); -- Shieldmaiden

-- missing emotes
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 821.6458, 7278.744, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 817.5417, 7284.403, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 813.7292, 7289.004, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 809.7726, 7291.155, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 806.7186, 7288.294, 107.5844, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 802.8837, 7288.68, 107.5846, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 801.5521, 7290.084, 107.5846, 0, 20000, 0, 0, 100, 0),
(@PATH, 8, 806.4844, 7289.871, 107.2425, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 810.8333, 7287.885, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 815.3386, 7283.011, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 818.4531, 7278.502, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 822.3646, 7270.632, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 826.1702, 7270.191, 107.5846, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 830.4688, 7270.254, 107.5846, 0, 20000, 0, 0, 100, 0);

-- Pathing for Valarjar Aspirant
SET @PATH := (@CGUID+75) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+75;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+75, @PATH, 0, 0, 1, 0, 0, 0, 0, ''); -- Valarjar Aspirant

-- missing emotes
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 807.4114, 7278.075, 107.5846, 0, 15000, 0, 0, 100, 0),
(@PATH, 2, 814.585, 7297.916, 107.5846, 0, 15000, 0, 0, 100, 0),
(@PATH, 3, 812.8472, 7289.086, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 811.0191, 7279.381, 106.7846, 0, 0, 0, 0, 100, 0);

-- Shieldmaiden
SET @PATH := (@CGUID+68) * 10;

DELETE FROM `creature_addon` WHERE `guid`=@CGUID+68;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+68, @PATH, 0, 0, 1, 0, 0, 0, 0, ''); -- Shieldmaiden

-- missing emotes
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 810.806, 7163.271, 106.8967, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 813.4445, 7160.912, 107.6182, 0, 20000, 0, 0, 100, 0),
(@PATH, 3, 808.9236, 7166.083, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 809.0608, 7170.817, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 810.1614, 7177.255, 106.7846, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 806.1841, 7178.373, 107.5846, 0, 15000, 0, 0, 100, 0),
(@PATH, 7, 812.059, 7169.183, 106.7846, 0, 0, 0, 0, 100, 0);

-- End Mead Hall

-- Creature Equip Templates
DELETE FROM `creature_equip_template` WHERE (`CreatureID`=103810 AND `ID`=1) OR (`CreatureID`=96586 AND `ID`=1) OR (`CreatureID`=107484 AND `ID`=1) OR (`CreatureID`=107483 AND `ID`=1) OR (`CreatureID`=112577 AND `ID`=1) OR (`CreatureID`=107494 AND `ID`=1) OR (`CreatureID`=114559 AND `ID`=1) OR (`CreatureID`=114558 AND `ID`=1) OR (`CreatureID`=96572 AND `ID`=1) OR (`CreatureID`=96679 AND `ID`=1) OR (`CreatureID`=93823 AND `ID`=1) OR (`CreatureID`=112392 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(103810, 1, 83019, 0, 0, 0, 0, 0, 0, 0, 0), -- Renfield
(96586, 1, 7956, 0, 0, 0, 0, 0, 0, 0, 0), -- Master Smith Helgar
(107484, 1, 137174, 0, 0, 137266, 0, 0, 0, 0, 0), -- Greater Sparring Partner
(107483, 1, 137263, 0, 0, 137264, 0, 0, 0, 0, 0), -- Lesser Sparring Partner
(112577, 1, 140747, 0, 0, 0, 0, 0, 0, 0, 0), -- Weaponmaster Asvard
(107494, 1, 137262, 0, 0, 0, 0, 0, 0, 0, 0), -- Val'kyr Arena Master
(114559, 1, 137263, 0, 0, 137264, 0, 0, 0, 0, 0), -- Lesser Sparring Partner
(114558, 1, 137263, 0, 0, 140748, 0, 0, 0, 0, 0), -- Greater Sparring Partner
(96572, 1, 137174, 0, 0, 140748, 0, 0, 0, 0, 0), -- Stormforged Valarjar
(96679, 1, 140345, 0, 0, 0, 0, 0, 0, 0, 0), -- Aerylia
(93823, 1, 140345, 0, 0, 0, 0, 0, 0, 0, 0), -- Danica the Reclaimer
(112392, 1, 140747, 0, 0, 0, 0, 0, 0, 0, 0); -- Quartermaster Durnolf

UPDATE `creature_template` SET `minlevel`=100, `maxlevel`=100, `speed_walk`=0.888888, `BaseAttackTime`=1500, `RangeAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=103810; -- Renfield
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=2141, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33587264, `unit_flags2`=2048, `VehicleId`=4866 WHERE `entry`=113300; -- Image of Thorim
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110, `speed_run`=1.285714, `BaseAttackTime`=1000, `RangeAttackTime`=2000, `unit_flags2`=2048, `InhabitType`=1 WHERE `entry`=113270; -- Shieldmaiden
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `npcflag`=134217731, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=96586; -- Master Smith Helgar
UPDATE `creature_template` SET `minlevel`=113, `maxlevel`=113, `faction`=7, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=131072, `unit_flags2`=2048 WHERE `entry`=107484; -- Greater Sparring Partner
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=7, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=131072, `unit_flags2`=2048 WHERE `entry`=107483; -- Lesser Sparring Partner
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112357; -- Conqueror's Battlegear Set
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=5, `npcflag`=1, `speed_run`=1, `BaseAttackTime`=1500, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=112577; -- Weaponmaster Asvard
UPDATE `creature_template` SET `minlevel`=100, `maxlevel`=100, `npcflag`=1, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=2, `unit_flags`=33536, `unit_flags2`=18432, `HoverHeight`=2.8 WHERE `entry`=107494; -- Val'kyr Arena Master
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112353; -- Battlegear of Might Set
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112356; -- Battlegear of Wrath Set
UPDATE `creature_template` SET `minlevel`=112, `maxlevel`=112, `faction`=7, `BaseAttackTime`=1500, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=114559; -- Lesser Sparring Partner
UPDATE `creature_template` SET `minlevel`=113, `maxlevel`=113, `faction`=7, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=114558; -- Greater Sparring Partner
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112390; -- Destroyer Armor Set
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `ScriptName`='' WHERE `entry`=96401; -- Valarjar Aspirant
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112361; -- Warbringer Armor Set
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112416; -- Wrynn's Conquest Set
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112413; -- Valorous Siegebreaker Set
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112418; -- Hellscream's Conquest Set
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112408; -- Heroes' Dreadnaught Set
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `npcflag`=3, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=8, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=111741; -- Fjornson Stonecarver
UPDATE `creature_template` SET `minlevel`=111, `maxlevel`=111, `npcflag`=3, `speed_run`=1, `BaseAttackTime`=1500, `RangeAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=4196352, `ScriptName`='npc_odyn' WHERE `entry`=96469; -- Odyn
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112400; -- Onslaught Set
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=96572; -- Stormforged Valarjar
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=112420; -- Ymirjar Lord's Set
UPDATE `creature_template` SET `minlevel`=100, `maxlevel`=100, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=2, `unit_flags`=33536, `unit_flags2`=18432, `HoverHeight`=2.8, `InhabitType`=2|4 WHERE `entry`=93819; -- Val'kyr of Odyn
UPDATE `creature_template` SET `minlevel`=100, `maxlevel`=100, `npcflag`=1, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=2, `unit_flags`=33536, `unit_flags2`=18432, `HoverHeight`=2.8 WHERE `entry`=96679; -- Aerylia
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=116609; -- Battlelord's Armor
UPDATE `creature_template` SET `minlevel`=100, `maxlevel`=100, `npcflag`=3, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=2, `unit_flags`=33536, `unit_flags2`=18432, `HoverHeight`=2.8, `InhabitType`=6, `ScriptName`='npc_danica_the_reclaimer' WHERE `entry`=93823; -- Danica the Reclaimer
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `npcflag`=4227, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=2, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=112392; -- Quartermaster Durnolf

UPDATE `creature_model_info` SET `BoundingRadius`=0.31, `CombatReach`=1.1, `VerifiedBuild`=24015 WHERE `DisplayID`=40994;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=25799;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=25204;
UPDATE `creature_model_info` SET `BoundingRadius`=0.31, `CombatReach`=1.5, `VerifiedBuild`=24015 WHERE `DisplayID`=71252;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=25801;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=25800;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=42722;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=42720;
UPDATE `creature_model_info` SET `BoundingRadius`=1.509789, `CombatReach`=1.875, `VerifiedBuild`=24015 WHERE `DisplayID`=67956;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=65680;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=65678;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=65679;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=70110;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=65681;
UPDATE `creature_model_info` SET `BoundingRadius`=1.748563, `CombatReach`=0.6, `VerifiedBuild`=24015 WHERE `DisplayID`=67162;
UPDATE `creature_model_info` SET `BoundingRadius`=1.449397, `CombatReach`=1.8, `VerifiedBuild`=24015 WHERE `DisplayID`=67937;
UPDATE `creature_model_info` SET `BoundingRadius`=1.509789, `CombatReach`=1.875, `VerifiedBuild`=24015 WHERE `DisplayID`=67938;
UPDATE `creature_model_info` SET `BoundingRadius`=1.831403, `CombatReach`=1.729, `VerifiedBuild`=24015 WHERE `DisplayID`=73429;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=67230;
UPDATE `creature_model_info` SET `BoundingRadius`=1.328614, `CombatReach`=1.65, `VerifiedBuild`=24015 WHERE `DisplayID`=67361;
UPDATE `creature_model_info` SET `VerifiedBuild`=24015 WHERE `DisplayID`=21342;
UPDATE `creature_model_info` SET `BoundingRadius`=2.03999, `CombatReach`=0.7, `VerifiedBuild`=24015 WHERE `DisplayID`=67161;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=24015 WHERE `DisplayID`=74255;
UPDATE `creature_model_info` SET `BoundingRadius`=2.03999, `CombatReach`=0.7, `VerifiedBuild`=24015 WHERE `DisplayID`=73300;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3645831, `CombatReach`=1.575, `VerifiedBuild`=24015 WHERE `DisplayID`=72055;

DELETE FROM `creature_queststarter` WHERE `id`=93823 AND `quest`=39654;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(93823, 39654);

DELETE FROM `scene_template` WHERE `SceneId` IN (1109);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `ScriptName`) VALUES
(1109, 11, 1489, 'scene_odyn_intro');

DELETE FROM `phase_area` WHERE (`AreaId`=7813 AND `PhaseId`=5997) OR (`AreaId`=7813 AND `PhaseId`=5090) OR (`AreaId`=7813 AND `PhaseId`=5107);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7813, 5997, 'Warrior Order Hall - Default phase'),
(7813, 5107, 'Warrior Order Hall - Odyn\'s phase'),
(7813, 5090, 'Warrior Order Hall - Starting phase - Removed when quest 39654 (Odyn and the Valarjar) is completed or rewarded');

DELETE FROM `graveyard_zone` WHERE `ID`=5358;
INSERT INTO `graveyard_zone` (`ID`, `GhostZone`, `Comment`) VALUES
(5358, 7813, 'Warrior Order Hall - Default Graveyard');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=26 AND `SourceGroup`=5090 AND `SourceEntry`=7813;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`, `Comment`) VALUES
(26, 5090, 7813, 0, 8, 39654, 1, 'Only in phase 5090 when quest 39654 not rewarded'),
(26, 5090, 7813, 0, 28, 39654, 1, 'Only in phase 5090 when quest 39654 not completed');

DELETE FROM `creature_text` WHERE `CreatureID`=93823;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(93823, 0, 0, 'Welcome to Skyhold! Here the brave live on forever!', 12, 0, 100, 0, 0, 60356, 98601, 'Danica the Reclaimer to Player'),
(93823, 1, 0, 'Behind you lies the Eye of Odyn, which peers across all of Azeroth! This way lies the Forge, where the mightiest weapons of the valarjar are crafted by Helgar, the greatest smith in the Halls.', 12, 0, 100, 0, 0, 60358, 98370, 'Danica the Reclaimer to Player'),
(93823, 2, 0, 'Across the way lies the Arena of Glory, where warriors vie for supremacy in epic combat. Before us lies the Great Mead Hall where drink and stories flow freely!', 12, 0, 100, 0, 0, 60359, 105450, 'Danica the Reclaimer to Player'),
(93823, 3, 0, 'Odyn awaits ahead. I will go forth and announce you. Be respectful!', 12, 0, 100, 0, 0, 60360, 98372, 'Danica the Reclaimer to Player');

DELETE FROM `spell_target_position` WHERE `ID`=193711 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(193711, 0, 1479, 834.61, 7228.57, 106.67, 24015); -- Spell: Cancel/Complete Scene - Order Formation Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)

-- GameObjects
DELETE FROM `gameobject_template` WHERE `entry` IN (250878 /*Training Troops*/, 252887 /*Blessing of Mjolnir*/, 250879 /*Training Troops*/, 267923 /*The Legend of Odyn*/, 248980 /*The Legend of Odyn*/, 252801 /*Artifact Research Notes*/, 250880 /*Training Troops*/, 248979 /*Saga of the Valarjar*/, 267922 /*The Favored of Odyn*/, 248981 /*The Favored of Odyn*/, 258944 /*Warswords of the Valarjar Appearance*/, 244516 /*Valhallas Portal*/, 258942 /*Warswords of the Valarjar Appearance*/, 258943 /*Warswords of the Valarjar Appearance*/, 258945 /*Warswords of the Valarjar Appearance*/, 252016 /*Requisitioned Armaments*/, 245726 /*Forge of Odyn*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `VerifiedBuild`) VALUES
(250878, 45, 9510, 'Training Troops', '', '', '', 1, 158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Training Troops
(252887, 45, 9510, 'Blessing of Mjolnir', '', '', '', 1, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Blessing of Mjolnir
(250879, 45, 9510, 'Training Troops', '', '', '', 1, 159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Training Troops
(267923, 8, 9510, 'The Legend of Odyn', '', '', '', 1, 1915, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- The Legend of Odyn
(248980, 9, 33174, 'The Legend of Odyn', '', '', '', 1.5, 5268, 0, 8, 0, 42681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- The Legend of Odyn
(252801, 45, 15781, 'Artifact Research Notes', '', '', '', 1, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Artifact Research Notes
(250880, 45, 9510, 'Training Troops', '', '', '', 1, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Training Troops
(248979, 9, 33173, 'Saga of the Valarjar', '', '', '', 1.5, 5795, 0, 8, 0, 42681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Saga of the Valarjar
(267922, 8, 9510, 'The Favored of Odyn', '', '', '', 1, 1914, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- The Favored of Odyn
(248981, 9, 33174, 'The Favored of Odyn', '', '', '', 1.5, 5269, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- The Favored of Odyn
(258944, 5, 37956, 'Warswords of the Valarjar Appearance', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Warswords of the Valarjar Appearance
(244516, 5, 34055, 'Valhallas Portal', '', '', '', 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Valhallas Portal
(258942, 5, 37958, 'Warswords of the Valarjar Appearance', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Warswords of the Valarjar Appearance
(258943, 5, 37957, 'Warswords of the Valarjar Appearance', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Warswords of the Valarjar Appearance
(258945, 5, 37955, 'Warswords of the Valarjar Appearance', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Warswords of the Valarjar Appearance
(252016, 45, 9510, 'Requisitioned Armaments', '', '', '', 1, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015), -- Requisitioned Armaments
(245726, 47, 31101, 'Forge of Odyn', '', '', '', 2, 37155, 1, 0, 648, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24015); -- Forge of Odyn

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (250878 /*Training Troops*/, 252887 /*Blessing of Mjolnir*/, 250879 /*Training Troops*/, 252801 /*Artifact Research Notes*/, 250880 /*Training Troops*/, 258944 /*Warswords of the Valarjar Appearance*/, 258945 /*Warswords of the Valarjar Appearance*/, 258943 /*Warswords of the Valarjar Appearance*/, 258942 /*Warswords of the Valarjar Appearance*/, 252016 /*Requisitioned Armaments*/, 245726 /*Forge of Odyn*/, 252064 /*Grand Challenger's Bounty*/, 246280 /*Cylinder Collision (2 Scale)*/);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`) VALUES
(250878, 0, 262144), -- Training Troops
(252887, 0, 262144), -- Blessing of Mjolnir
(250879, 0, 262144), -- Training Troops
(252801, 0, 262144), -- Artifact Research Notes
(250880, 0, 262144), -- Training Troops
(258944, 114, 0), -- Warswords of the Valarjar Appearance
(258945, 114, 0), -- Warswords of the Valarjar Appearance
(258943, 114, 0), -- Warswords of the Valarjar Appearance
(258942, 114, 0), -- Warswords of the Valarjar Appearance
(252016, 0, 262144), -- Requisitioned Armaments
(245726, 0, 270336), -- Forge of Odyn
(252064, 0, 262144), -- Grand Challenger's Bounty
(246280, 0, 32); -- Cylinder Collision (2 Scale)

SET @OGUID := 46;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+14;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 246280, 1479, 7813, 7813, '0', 5997, 0, 1067.097, 7240.936, 100.5904, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- Cylinder Collision (2 Scale) (Area: Skyhold - Difficulty: 0)
(@OGUID+1, 250878, 1479, 7813, 7813, '0', 5997, 0, 1127.615, 7196.929, 99.71751, 2.335665, 0, 0, 0.9199028, 0.3921465, 120, 255, 1, 24015), -- Training Troops (Area: Skyhold - Difficulty: 0)
(@OGUID+2, 244516, 1479, 7813, 7813, '0', 5997, 0, 1085.462, 7228.605, 47.26785, 1.315875, 0.522438, 0.354455, 0.4989128, 0.5937223, 120, 255, 1, 24015), -- Valhallas Portal (Area: Skyhold - Difficulty: 0)
(@OGUID+3, 252016, 1479, 7813, 7813, '0', 5997, 0, 1069.146, 7204.144, 97.69034, 0.8474326, 0, 0, 0.4111509, 0.9115673, 120, 255, 1, 24015), -- Requisitioned Armaments (Area: Skyhold - Difficulty: 0)
(@OGUID+4, 267922, 1479, 7813, 7813, '0', 5997, 0, 1068.727, 7311.191, 109.4267, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- The Favored of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+5, 250879, 1479, 7813, 7813, '0', 5997, 0, 1128.748, 7249.465, 99.71822, 3.968774, 0, 0, -0.9156837, 0.4018996, 120, 255, 1, 24015), -- Training Troops (Area: Skyhold - Difficulty: 0)
(@OGUID+6, 259095, 1479, 7813, 7813, '0', 5997, 0, 1142.71, 7223.2, 101.819, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- [DNT] Command Table Collision Cylinder (Area: Skyhold - Difficulty: 0)
(@OGUID+7, 248981, 1479, 7813, 7813, '0', 5997, 0, 1069.054, 7311.249, 109.4267, 0.9491548, 0, 0, 0.4569626, 0.8894859, 120, 255, 1, 24015), -- The Favored of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+8, 250880, 1479, 7813, 7813, '0', 5997, 0, 1122.059, 7253.297, 99.71768, 3.91156, 0, 0, -0.9268045, 0.3755441, 120, 255, 1, 24015), -- Training Troops (Area: Skyhold - Difficulty: 0)
(@OGUID+9, 252887, 1479, 7813, 7813, '0', 5997, 0, 1054.125, 7132.937, 98.26038, 5.665893, 0, 0, -0.3037691, 0.9527457, 120, 255, 1, 24015), -- Blessing of Mjolnir (Area: Skyhold - Difficulty: 0)
(@OGUID+10, 248979, 1479, 7813, 7813, '0', 5997, 0, 1074.019, 7322.522, 109.4267, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- Saga of the Valarjar (Area: Skyhold - Difficulty: 0)
(@OGUID+11, 245726, 1479, 7813, 7813, '0', 5997, 0, 1030.769, 7361.063, 107.3078, 4.673286, -0.001883507, -0.01285458, -0.7206783, 0.6931479, 120, 255, 1, 24015), -- Forge of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+12, 267923, 1479, 7813, 7813, '0', 5997, 0, 1068.278, 7334.356, 109.4267, 0, 0, 0, 0, 1, 120, 255, 1, 24015), -- The Legend of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+13, 248980, 1479, 7813, 7813, '0', 5997, 0, 1068.616, 7334.295, 109.4267, 5.433888, 0, 0, -0.4120007, 0.9111835, 120, 255, 1, 24015), -- The Legend of Odyn (Area: Skyhold - Difficulty: 0)
(@OGUID+14, 247320, 1479, 7813, 7813, '0', 5997, 0, 1030.392, 7360.578, 107.5607, 4.678151, 0, 0, -0.7191076, 0.6948987, 120, 255, 1, 24015); -- Forge of Power (Area: Skyhold - Difficulty: 0)
UPDATE `instance_template` SET `parent`='1220', `script`='instance_neltharions_lair', `allowMount`='1' WHERE (`map`='1458');
UPDATE `creature_template` SET `ScriptName`='npc_vha_congealing_goo' WHERE (`entry`='102158');
UPDATE `creature_template` SET `ScriptName`='npc_vha_blistering_bettle' WHERE (`entry`='102540');
UPDATE `creature_template` SET `ScriptName`='npc_vha_spitting_scarab' WHERE (`entry`='102271');
UPDATE `creature_template` SET `ScriptName`='npc_vha_impale_dummy' WHERE (`entry`='999850');
UPDATE `creature_template` SET `ScriptName`='npc_vault_of_the_wardens_sledge_or_crusher' WHERE (`entry`='197180');

UPDATE `creature_template` SET `ScriptName`='npc_vha_rocket_chicken' WHERE (`entry`='102103');
UPDATE `creature_template` SET `ScriptName`='npc_vha_squirrel_bomb' WHERE (`entry`='102043');
UPDATE `creature_template` SET `ScriptName`='npc_vha_mechanical_squirrel_bomb' WHERE (`entry`='102137');
UPDATE `creature_template` SET `ScriptName`='boss_naraxas' WHERE (`entry`='91005');
UPDATE `creature_template` SET `ScriptName`='boss_naraxas' WHERE (`entry`='91005');
UPDATE `creature_template` SET `ScriptName`='boss_naraxas' WHERE (`entry`='91005');
UPDATE `creature_template` SET `ScriptName`='boss_naraxas' WHERE (`entry`='91005');

UPDATE `creature_template` SET `ScriptName`='npc_mariam_spellwalker_35872' WHERE (`entry`='35872');
UPDATE `creature_template` SET `ScriptName`='npc_king_genn_greymane_35112' WHERE (`entry`='35112');
UPDATE `creature_template` SET `ScriptName`='npc_bloodfang_worgen_35118' WHERE (`entry`='35118');
UPDATE `creature_template` SET `ScriptName`='npc_wounded_guard_47091' WHERE (`entry`='47091');
UPDATE `creature_template` SET `ScriptName`='npc_gilnean_royal_guard_35232' WHERE (`entry`='35232');
UPDATE `creature_template` SET `ScriptName`='npc_sergeant_cleese_35839' WHERE (`entry`='35839');
UPDATE `creature_template` SET `ScriptName`='npc_gwen_armstead_35840' WHERE (`entry`='35840');
UPDATE `creature_template` SET `ScriptName`='npc_frightened_citizen_35836' WHERE (`entry`='35836');
UPDATE `creature_template` SET `ScriptName`='npc_frightened_citizen_34981' WHERE (`entry`='34981');
UPDATE `creature_template` SET `ScriptName`='npc_rampaging_worgen_34884' WHERE (`entry`='34884');
UPDATE `creature_template` SET `ScriptName`='npc_frenzied_stalker_35627' WHERE (`entry`='35627');
UPDATE `creature_template` SET `ScriptName`='npc_northgate_rebel_41015' WHERE (`entry`='41015');
UPDATE `creature_template` SET `ScriptName`='npc_northgate_rebel_36057' WHERE (`entry`='36057');
UPDATE `creature_template` SET `ScriptName`='npc_sister_almyra_44468' WHERE (`entry`='44468');
UPDATE `creature_template` SET `ScriptName`='npc_gilnean_city_guard_35504' WHERE (`entry`='35504');
UPDATE `creature_template` SET `ScriptName`='npc_lord_godfrey_35906' WHERE (`entry`='35906');
UPDATE `creature_template` SET `ScriptName`='npc_bloodfang_lurker_35463' WHERE (`entry`='35463');
UPDATE `creature_template` SET `ScriptName`='npc_lorna_crowley_35378' WHERE (`entry`='35378');
UPDATE `creature_template` SET `ScriptName`='npc_josiah_avery_35369' WHERE (`entry`='35369');
UPDATE `creature_template` SET `ScriptName`='npc_lord_godfrey_35115' WHERE (`entry`='35115');
UPDATE `creature_template` SET `ScriptName`='npc_rebel_cannon_35317' WHERE (`entry`='35317');
UPDATE `creature_template` SET `ScriptName`='npc_crowley_horse_35231' WHERE (`entry`='35231');
UPDATE `creature_template` SET `ScriptName`='npc_lord_darius_crowley_35552' WHERE (`entry`='35552');
UPDATE `creature_template` SET `ScriptName`='npc_bloodfang_stalker_35229' WHERE (`entry`='35229');
UPDATE `creature_template` SET `ScriptName`='npc_commandeered_cannon_35914' WHERE (`entry`='35914');
UPDATE `creature_template` SET `ScriptName`='npc_krennan_aranas_35907' WHERE (`entry`='35907');
UPDATE `creature_template` SET `ScriptName`='npc_king_greymanes_horse_35905' WHERE (`entry`='35905');
UPDATE `creature_template` SET `ScriptName`='npc_king_genn_greymane_35550' WHERE (`entry`='35550');
UPDATE `gameobject_template` SET `ScriptName`='go_merchant_square_door_195327' WHERE (`entry`='195327');
UPDATE `creature_template` SET `ScriptName`='npc_prince_liam_greymane_34913' WHERE (`entry`='34913');
UPDATE `creature_template` SET `ScriptName`='npc_gilneas_city_guard_34916' WHERE (`entry`='34916');
UPDATE `creature_template` SET `ScriptName`='npc_rampaging_worgen_35660' WHERE (`entry`='35660');
UPDATE `creature_template` SET `ScriptName`='npc_prince_liam_greymane_34850' WHERE (`entry`='34850');
UPDATE `creature_template` SET `ScriptName`='npc_torm_the_brute' WHERE (`entry`='115914');
UPDATE `creature_template` SET `ScriptName`='npc_fulminant' WHERE (`entry`='111081');
UPDATE `creature_template` SET `ScriptName`='npc_pulsauron' WHERE (`entry`='111071');
UPDATE `creature_template` SET `ScriptName`='npc_chaotoid' WHERE (`entry`='111075');
UPDATE `creature_template` SET `ScriptName`='mob_seigneur_de_guerre_de_la_nuee_cramoisie' WHERE `entry`='39626';
UPDATE `creature_template` SET `ScriptName`='npc_apprentice_mirveda' WHERE `entry`=15402;
UPDATE `creature_template` SET `ScriptName`='mob_corrupteur_sans_visage' WHERE `entry`='39392';
UPDATE `creature_template` SET `ScriptName`='npc_infused_crystal' WHERE `entry`=16364;
UPDATE `creature_template` SET `ScriptName`='npc_converted_sentry' WHERE `entry`=24981;
UPDATE `creature_template` SET `ScriptName` = 'npc_runaway_shredder' WHERE `entry` = 35111;
UPDATE `creature_template` SET `ScriptName`='npc_nathanos_team_meeting' WHERE (`entry`='135205');
UPDATE `creature_template` SET `ScriptName`='npc_hilde_firebreaker_queststarter' WHERE (`entry`='128349');
UPDATE `creature_template` SET `ScriptName`='npc_hilde_firebreaker_protect' WHERE (`entry`='129841');
UPDATE `creature_template` SET `ScriptName`='npc_aqualing' WHERE (`entry`='134828');
UPDATE `creature_template` SET `ScriptName`='npc_flying_bomber' WHERE (`entry`='38929');
UPDATE `creature_template` SET `ScriptName`='npc_wild_wyrm' WHERE (`entry`='30275');
UPDATE `gameobject_template` SET `ScriptName` = 'go_door_entrance' WHERE `entry` = 259690;
UPDATE `creature_template` SET `ScriptName`='npc_arc_timeless_wraith' WHERE (`entry`='103130');
UPDATE `creature_template` SET `ScriptName`='npc_arc_chrono_shard' WHERE (`entry`='102849');
UPDATE `creature_template` SET `ScriptName`='npc_kara_barnes_new' WHERE (`entry`='114339');
UPDATE `creature_template` SET `ScriptName`='npc_sludgerax' WHERE (`entry`='112255');
UPDATE `creature_template` SET `ScriptName`='npc_tr_slime_pool' WHERE (`entry`='112293');
UPDATE `creature_template` SET `ScriptName`='npc_putrid_sludge' WHERE (`entry`='112251');
UPDATE `creature_template` SET `ScriptName`='npc_putrid_sludge' WHERE (`entry`='113512');
UPDATE `creature_template` SET `ScriptName`='npc_crystalline_scorpid' WHERE (`entry`='103217');
UPDATE `creature_template` SET `ScriptName`='npc_vault_of_the_wardens_sledge_or_crusher' WHERE (`entry`='92990');
UPDATE `creature_template` SET `ScriptName`='npc_crystalline_shard' WHERE (`entry`='103209');
UPDATE `creature_template` SET `ScriptName`='npc_arcane_tether' WHERE (`entry`='103682');
UPDATE `creature_template` SET `ScriptName`='npc_temporal_rift' WHERE (`entry`='106878');
UPDATE `creature_template` SET `ScriptName`='npc_fragmented_time_particle' WHERE (`entry`='114671');
UPDATE `creature_template` SET `ScriptName`='npc_waning_time_particle' WHERE (`entry`='104676');
UPDATE `creature_template` SET `ScriptName`='npc_vha_demon_portal' WHERE (`entry`='116167');
UPDATE `creature_template` SET `ScriptName`='npc_vha_ice_block' WHERE (`entry`='102301');
UPDATE `creature_template` SET `ScriptName`='npc_vha_phase_spider' WHERE (`entry`='102434');


UPDATE `creature_template` SET `ScriptName`='npc_faceless_tendril' WHERE (`entry`='101994');


DELETE FROM spell_script_names WHERE `spell_id` IN (202487, 203622, 202361, 210879, 202339, 202328, 201598, 201495, 201369, 201356);
INSERT INTO spell_script_names VALUES 
(202487, 'spell_anubesset_summon_blistering_ooze'),
(203622, 'spell_betrug_chaotic_energy'),
(202361, 'spell_betrug_execution'),
(210879, 'spell_betrug_seed_of_destruction'),
(202339, 'spell_betrug_mighty_slash_jump'),
(202328, 'spell_betrug_mighty_slash'),
(201598, 'spell_festerface_congealing_vomit'),
(201495, 'spell_vha_recongealing'),
(201369, 'spell_vha_rocket_chicken_rocket'),
(201356, 'spell_vha_swarn_rockets');


SET @NALTIRA := 98207;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_naltira', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@NALTIRA, 9820701, 9820702);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_arc_vicious_manafang', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`InhabitType` = 4,
`unit_flags` = 2,
`unit_flags2` = `unit_flags2` |2048
WHERE `entry` IN (110966, 11096601, 11096602);

UPDATE `creature_template` SET 
`InhabitType` = 4,
`flags_extra` = `flags_extra` |128
WHERE `entry` = 68553;


DELETE FROM `spell_script_names` WHERE `spell_id` IN (199810, 199811, 200227, 199956, 200284, 200024, 224425, 211543);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(199810, 'spell_naltira_blink_strikes'),
(199811, 'spell_naltira_blink_strikes_dmg'),
(200227, 'spell_naltira_tangled_web'),
(200284, 'spell_naltira_tangled_web_dmg'),
(199956, 'spell_naltira_nether_venom'),
(200024, 'spell_naltira_nether_venom_dmg'),
(211543, 'spell_arc_devour');

DELETE FROM `areatrigger_template` WHERE `id` IN (5605);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(5605, 4, 0, 4.5, 4.5, 5, 5, 0.3, 0.3, 'at_arc_nether_venom', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5605);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5605, 5605, 0, 0, 0, 0, 0, 0, 300000, 23420);

DELETE FROM `instance_template` WHERE `map` = 1516;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (1516, 0, 'instance_the_arcway', 0);

DELETE FROM `creature_template_addon` WHERE `entry` = 110966;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(110966, 0, 0, 50331648, 1, 0, '');

/*==================
-- Gilneas More Fixes
==================*/
-- Shadowy Figure (34867)
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223338,223331,223317,223334,223312,223345,223330);

DELETE FROM `creature` WHERE  `guid`=223295;
DELETE FROM `creature_addon` WHERE  `guid`=223295;


-- Prince Liam Greymane (34850)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=34850;


-- Gilneas Evacuation Facing Marker (Near) (35010)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35010;


-- Gilneas Evacuation Facing Marker (Far) (35011)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35011;


-- Gilneas Evacuation Facing Marker (First) (35830)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35830;
UPDATE `creature` SET `PhaseId`='170' WHERE  `id`=35830;


-- Distrito de los Mercaderes Fase 170 + Quest Invisybility
UPDATE `spell_area` SET `quest_start`='14091', `quest_start_status`='2' WHERE  `spell`=59073 AND `area`=4756 AND `quest_start`=14078;
UPDATE `spell_area` SET `quest_start`='14091', `quest_start_status`='2' WHERE  `spell`=49416 AND `area`=4756 AND `quest_start`=14078;
UPDATE `spell_area` SET `quest_start_status`='66' WHERE  `spell`=59073 AND `area`=4756 AND `quest_start`=14091;
UPDATE `spell_area` SET `quest_start_status`='66' WHERE  `spell`=49416 AND `area`=4756 AND `quest_start`=14091;


-- Prince Liam Greymane (34913)
UPDATE `creature_template` SET `flags_extra`='2', `ScriptName`='' WHERE  `entry`=34913;
DELETE FROM `creature_queststarter` WHERE  `id`=34913 AND `quest`=14091;
UPDATE `creature_addon` SET `mount`='0', `emote`='659' WHERE  `guid`=223413;


-- Rampaging Worgen (34884)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=34884;

UPDATE `smart_scripts` SET `comment`='Rampaging Worgen - Say Line 0' WHERE  `entryorguid`=34884 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=34884;

UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223609,223405,223406,223388,223402,223597,223399,223610,223598,223430,223385);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `guid` IN (223609,223405,223406,223388,223402,223597,223399,223610,223598,223430,223385);

DELETE FROM `creature` WHERE  `guid` IN (223462,223461,223420,223448,223465,223464,223404,223463,223392,223429,223428,223644,223387,223395,223606,223459,223599);
DELETE FROM `creature_addon` WHERE  `guid` IN (223462,223461,223420,223448,223465,223464,223404,223463,223392,223429,223428,223644,223387,223395,223606,223459,223599);

UPDATE `creature_addon` SET `emote`='438' WHERE  `guid` IN (223607,223457,223391,223401);
UPDATE `creature_addon` SET `emote`='433' WHERE  `guid` IN (223426,223403,223389,223400);


-- Gilneas City Guard (34916)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=34916;

UPDATE `creature` SET `position_x`='-1516.09', `position_y`='1396.20', `position_z`='35.5560', `orientation`='2.68179' WHERE  `guid`=223433;
UPDATE `creature_addon` SET `emote`='333' WHERE  `guid` IN (223447,223433,223431,223418,223396,223424,223409,223394,223449,223454,223453,223455);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `guid` IN (223433,223431,223418,223396,223424,223409,223394);
UPDATE `creature` SET `spawndist`='2', `MovementType`='1' WHERE  `guid` IN (223447,223454,223449,223453,223455);

DELETE FROM `smart_scripts` WHERE `entryorguid`=34916;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34916, 0, 0, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 34884, 15, 0, 0, 0, 0, 0, 'Gilneas City Guard - Attack Rampaging Worgen');


-- Merchant Square Door (195327)
UPDATE `gameobject_template` SET `Data3`='60000', `Data5`='1', `Data6`='60000', `ScriptName`='' WHERE  `entry`=195327;
UPDATE `gameobject_template_addon` SET `flags`='4' WHERE  `entry`=195327;





DELETE FROM `smart_scripts` WHERE `entryorguid` IN (195327,19532700,19532701);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(195327, 1, 0, 0, 64, 0, 100, 512, 0, 0, 0, 0, '', 87, 19532700, 19532701, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - On Gossip Hello - Run Random Actionlist'),
(19532700, 9, 0, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 12, 34981, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Summon Frightened Citizen'),
(19532700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 105, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Add Flag Not Selectable'),
(19532700, 9, 2, 0, 60, 0, 100, 0, 60000, 60000, 0, 0, '', 106, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Remove Flag Not Selectable in 60 seg'),
(19532701, 9, 0, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 12, 35836, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Summon Frightened Citizen'),
(19532701, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 12, 35660, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Summon Rampaging Worgen'),
(19532701, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 105, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Add Flag Not Selectable'),
(19532701, 9, 3, 0, 60, 0, 100, 0, 60000, 60000, 0, 0, '', 106, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Remove Flag Not Selectable in 60 seg');


-- Rampaging Worgen (35660)
UPDATE `creature_template` SET `unit_flags`='32768', `ScriptName`='' WHERE  `entry`=35660;

DELETE FROM `creature_template_addon` WHERE `entry`=35660;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(35660, 0, 0, 0, 1, 0, 0, 0, 0, '59073 49416');

UPDATE `creature_text` SET `comment`='Rampaging Worgen - Combat Enrage' WHERE  `CreatureID`=35660 AND `GroupID`=0 AND `ID`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35660;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35660, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - On Spawn - Set Random Movement'),
(35660, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 56646, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - Cast Enrage at 30% HP'),
(35660, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - Say Line 0'),
(35660, 0, 3, 0, 1, 0, 100, 0, 45000, 45000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - OCC - Despawn in 45 seg');


-- Frightened Citizen (34981)
UPDATE `creature_template` SET `unit_flags`='33280', `flags_extra`='2', `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=34981;

DELETE FROM `creature_template_addon` WHERE `entry`=34981;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(34981, 0, 0, 0, 1, 431, 0, 0, 0, '59073 49416');

DELETE FROM `smart_scripts` WHERE `entryorguid`=34981;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34981, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - On Spawn - Set Random Movement'),
(34981, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Say Random Line'),
(34981, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 33, 35830, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Quest Credit'),
(34981, 0, 3, 0, 1, 0, 100, 0, 10000, 10000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - OCC - Despawn in 10 seg');


-- Frightened Citizen (35836)
UPDATE `creature_template` SET `unit_flags`='33280', `flags_extra`='2', `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=35836;

DELETE FROM `creature_template_addon` WHERE `entry`=35836;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(35836, 0, 0, 0, 1, 431, 0, 0, 0, '59073 49416');

DELETE FROM `smart_scripts` WHERE `entryorguid`=35836;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35836, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - On Spawn - Set Random Movement'),
(35836, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Say Random Line'),
(35836, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 33, 35830, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Quest Credit'),
(35836, 0, 3, 0, 1, 0, 100, 0, 10000, 10000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - OCC - Despawn in 10 seg');


-- Salvaged Supplies (46896)
DELETE FROM `creature_loot_template` WHERE  `Item`=46896;


-- Supply Crate (195306)
UPDATE `gameobject` SET `spawntimesecs`='60' WHERE  `id`=195306;


-- Distrito Militar Fase 170
UPDATE `spell_area` SET `quest_start`='14099', `quest_start_status`='66' WHERE  `spell`=59073 AND `area`=4757 AND `quest_start`=14078 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;


-- Gwen Armstead (35840)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=35840;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35840;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35840, 0, 0, 0, 1, 0, 100, 0, 2500, 2500, 60000, 60000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - Out Of Combat - Say Line 0'),
(35840, 0, 1, 0, 1, 0, 100, 0, 6000, 6000, 60000, 60000, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - Out Of Combat - Say Line 1'),
(35840, 0, 2, 0, 1, 0, 100, 0, 10000, 10000, 60000, 60000, '', 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - Out Of Combat - Say Line 1');


-- Marie Allen (38853)
DELETE FROM `gossip_menu_option` WHERE `MenuId`=10841 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(10841, 0, 1, 'Let me take a look at your merchandise.', 0, 3, 128, 26365);




-- Gilnean Survivor (35233)
UPDATE `creature_addon` SET `emote`='605' WHERE  `guid` IN (223527,223547,223552,223479,223481,223484);
UPDATE `creature_addon` SET `emote`='431' WHERE  `guid` IN (223523,223550,223542);
UPDATE `creature_addon` SET `emote`='20' WHERE  `guid` IN (223525,223554,223544);

DELETE FROM `creature` WHERE  `guid` IN (223540,223551,223543,223485,223545);
DELETE FROM `creature_addon` WHERE  `guid` IN (223540,223551,223543,223485,223545);

UPDATE `creature` SET `position_x`='-1636.82', `position_y`='1307.91', `position_z`='19.6632', `orientation`='5.42632' WHERE  `guid`=223479;


-- Huntsman Blake (35874)
UPDATE `creature_addon` SET `emote`='385' WHERE  `guid`=223493;


-- Wounded Guard (47091)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=47091;


-- Myriam Spellwaker (35872)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35872;


-- Sergeant Cleese (35839)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35839;


-- Bloodfang Worgen (35118)
UPDATE `creature_template` SET `flags_extra`='0', `ScriptName`='' WHERE  `entry`=35118;

DELETE FROM `creature` WHERE  `guid` IN (223586,223564,223497,223504,223526,223528,223521,223532,223584,223514,223517,223650,223657,223563,223560,223574,223510,223653);
DELETE FROM `creature_addon` WHERE  `guid` IN (223586,223564,223497,223504,223526,223528,223521,223532,223584,223514,223517,223650,223657,223563,223560,223574,223510,223653);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35118;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35118, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - Cast Enrage at 30% HP'),
(35118, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - Say Line 0'),
(35118, 0, 2, 0, 8, 0, 100, 0, 100, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 3, 0, 8, 0, 100, 0, 56641, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 4, 0, 8, 0, 100, 0, 2098, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 5, 0, 8, 0, 100, 0, 348, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 6, 0, 8, 0, 100, 0, 5143, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 7, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35232, 15, 0, 0, 0, 0, 0, 'Bloodfang Worgen - Attack Gilnean Royal Guard');

UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223651,223561,223658,223489,223487,223499,223488,223579,223573,223652);
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE  `guid` IN (223488,223573);
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=35118;


-- Gilnean Royal Guard (35232)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=35232;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35232;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35232, 0, 0, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35118, 15, 0, 0, 0, 0, 0, 'Gilnean Royal Guard - Attack Bloodfang Worgen');

DELETE FROM `creature` WHERE  `guid`=223566;
DELETE FROM `creature_addon` WHERE  `guid`=223566;

UPDATE `creature_addon` SET `emote`='333' WHERE  `guid` IN (223512,223558,223529,223539,223524,223516,223522,223520,223567,223571);
UPDATE `creature` SET `spawndist`='3', `MovementType`='1' WHERE  `guid` IN (223512,223558,223529,223539,223524,223516,223522,223520,223567,223571);

UPDATE `creature_addon` SET `emote`='333' WHERE  `guid` IN (223538,223531,223530,223533,223541,223553,223546,223548,223549);


-- King Genn Greymane (35112)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35112;


-- Lord Godfrey (35115)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35115;


-- Captain Broderick (50371)
UPDATE `creature_addon` SET `emote`='433' WHERE  `guid`=223570;


-- Lord Darius Crowley (35077)
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid`=223581;


-- Tobias Mistmantle (35124)
UPDATE `creature_addon` SET `emote`='333' WHERE  `guid`=223578;


-- Bloodfang Bloodletter (35457)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35457;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid`=223686;

DELETE FROM `creature` WHERE  `guid` IN (223613,223469);
DELETE FROM `creature_addon` WHERE  `guid` IN (223613,223469);


-- Worgen Runt (35456)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35456;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223683,223678,223659,223688,223685,223620,223669,223667,223675,223671,223670);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35456;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35456, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Runt - Cast Enrage at 30% HP'),
(35456, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Runt - Say Text at 30% HP');

DELETE FROM `creature` WHERE  `guid` IN (223615,223668,223677,223617,223660,223622,223682,223665,223687,223612,223456,223664,223621,223681,223680,223663,223619,223662,223679,223661,223618,223666,223623,223616,223676,223672,223674,223673,223684,223614,223641,223636,223639,223637,223635,223640,223638,223625,223468,223624,223467);
DELETE FROM `creature_addon` WHERE  `guid` IN (223615,223668,223677,223617,223660,223622,223682,223665,223687,223612,223456,223664,223621,223681,223680,223663,223619,223662,223679,223661,223618,223666,223623,223616,223676,223672,223674,223673,223684,223614,223641,223636,223639,223637,223635,223640,223638,223625,223468,223624,223467);


-- Worgen Runt (35188)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35188;


-- Worgen Alpha (35167)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35167;


-- Worgen Alpha (35170)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35170;


-- Cellar Door (195430)
UPDATE `gameobject_template` SET `name`='Cellar Door', `Data2`='8000' WHERE  `entry`=195430;
UPDATE `gameobject_template_addon` SET `faction`='0', `flags`='32' WHERE  `entry`=195430;




-- Cellar Door (195621)
UPDATE `gameobject` SET `PhaseId`='0' WHERE  `guid`=94629;




/*==================
-- Gilneas More Fixes
==================*/
-- Shadowy Figure (34867)
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223338,223331,223317,223334,223312,223345,223330);

DELETE FROM `creature` WHERE  `guid`=223295;
DELETE FROM `creature_addon` WHERE  `guid`=223295;


-- Prince Liam Greymane (34850)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=34850;


-- Gilneas Evacuation Facing Marker (Near) (35010)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35010;


-- Gilneas Evacuation Facing Marker (Far) (35011)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35011;


-- Gilneas Evacuation Facing Marker (First) (35830)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35830;
UPDATE `creature` SET `PhaseId`='170' WHERE  `id`=35830;


-- Distrito de los Mercaderes Fase 170 + Quest Invisybility
UPDATE `spell_area` SET `quest_start`='14091', `quest_start_status`='2' WHERE  `spell`=59073 AND `area`=4756 AND `quest_start`=14078;
UPDATE `spell_area` SET `quest_start`='14091', `quest_start_status`='2' WHERE  `spell`=49416 AND `area`=4756 AND `quest_start`=14078;
UPDATE `spell_area` SET `quest_start_status`='66' WHERE  `spell`=59073 AND `area`=4756 AND `quest_start`=14091;
UPDATE `spell_area` SET `quest_start_status`='66' WHERE  `spell`=49416 AND `area`=4756 AND `quest_start`=14091;


-- Prince Liam Greymane (34913)
UPDATE `creature_template` SET `flags_extra`='2', `ScriptName`='' WHERE  `entry`=34913;
DELETE FROM `creature_queststarter` WHERE  `id`=34913 AND `quest`=14091;
UPDATE `creature_addon` SET `mount`='0', `emote`='659' WHERE  `guid`=223413;


-- Rampaging Worgen (34884)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=34884;

UPDATE `smart_scripts` SET `comment`='Rampaging Worgen - Say Line 0' WHERE  `entryorguid`=34884 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=34884;

UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223609,223405,223406,223388,223402,223597,223399,223610,223598,223430,223385);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `guid` IN (223609,223405,223406,223388,223402,223597,223399,223610,223598,223430,223385);

DELETE FROM `creature` WHERE  `guid` IN (223462,223461,223420,223448,223465,223464,223404,223463,223392,223429,223428,223644,223387,223395,223606,223459,223599);
DELETE FROM `creature_addon` WHERE  `guid` IN (223462,223461,223420,223448,223465,223464,223404,223463,223392,223429,223428,223644,223387,223395,223606,223459,223599);

UPDATE `creature_addon` SET `emote`='438' WHERE  `guid` IN (223607,223457,223391,223401);
UPDATE `creature_addon` SET `emote`='433' WHERE  `guid` IN (223426,223403,223389,223400);


-- Gilneas City Guard (34916)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=34916;

UPDATE `creature` SET `position_x`='-1516.09', `position_y`='1396.20', `position_z`='35.5560', `orientation`='2.68179' WHERE  `guid`=223433;
UPDATE `creature_addon` SET `emote`='333' WHERE  `guid` IN (223447,223433,223431,223418,223396,223424,223409,223394,223449,223454,223453,223455);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `guid` IN (223433,223431,223418,223396,223424,223409,223394);
UPDATE `creature` SET `spawndist`='2', `MovementType`='1' WHERE  `guid` IN (223447,223454,223449,223453,223455);

DELETE FROM `smart_scripts` WHERE `entryorguid`=34916;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34916, 0, 0, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 34884, 15, 0, 0, 0, 0, 0, 'Gilneas City Guard - Attack Rampaging Worgen');


-- Merchant Square Door (195327)
UPDATE `gameobject_template` SET `Data3`='60000', `Data5`='1', `Data6`='60000', `ScriptName`='' WHERE  `entry`=195327;
UPDATE `gameobject_template_addon` SET `flags`='4' WHERE  `entry`=195327;





DELETE FROM `smart_scripts` WHERE `entryorguid` IN (195327,19532700,19532701);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(195327, 1, 0, 0, 64, 0, 100, 512, 0, 0, 0, 0, '', 87, 19532700, 19532701, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - On Gossip Hello - Run Random Actionlist'),
(19532700, 9, 0, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 12, 34981, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Summon Frightened Citizen'),
(19532700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 105, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Add Flag Not Selectable'),
(19532700, 9, 2, 0, 60, 0, 100, 0, 60000, 60000, 0, 0, '', 106, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Remove Flag Not Selectable in 60 seg'),
(19532701, 9, 0, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 12, 35836, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Summon Frightened Citizen'),
(19532701, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 12, 35660, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Summon Rampaging Worgen'),
(19532701, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 105, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Add Flag Not Selectable'),
(19532701, 9, 3, 0, 60, 0, 100, 0, 60000, 60000, 0, 0, '', 106, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Remove Flag Not Selectable in 60 seg');


-- Rampaging Worgen (35660)
UPDATE `creature_template` SET `unit_flags`='32768', `ScriptName`='' WHERE  `entry`=35660;

DELETE FROM `creature_template_addon` WHERE `entry`=35660;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(35660, 0, 0, 0, 1, 0, 0, 0, 0, '59073 49416');

UPDATE `creature_text` SET `comment`='Rampaging Worgen - Combat Enrage' WHERE  `CreatureID`=35660 AND `GroupID`=0 AND `ID`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35660;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35660, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - On Spawn - Set Random Movement'),
(35660, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 56646, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - Cast Enrage at 30% HP'),
(35660, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - Say Line 0'),
(35660, 0, 3, 0, 1, 0, 100, 0, 45000, 45000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - OCC - Despawn in 45 seg');


-- Frightened Citizen (34981)
UPDATE `creature_template` SET `unit_flags`='33280', `flags_extra`='2', `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=34981;

DELETE FROM `creature_template_addon` WHERE `entry`=34981;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(34981, 0, 0, 0, 1, 431, 0, 0, 0, '59073 49416');

DELETE FROM `smart_scripts` WHERE `entryorguid`=34981;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34981, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - On Spawn - Set Random Movement'),
(34981, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Say Random Line'),
(34981, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 33, 35830, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Quest Credit'),
(34981, 0, 3, 0, 1, 0, 100, 0, 10000, 10000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - OCC - Despawn in 10 seg');


-- Frightened Citizen (35836)
UPDATE `creature_template` SET `unit_flags`='33280', `flags_extra`='2', `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=35836;

DELETE FROM `creature_template_addon` WHERE `entry`=35836;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(35836, 0, 0, 0, 1, 431, 0, 0, 0, '59073 49416');

DELETE FROM `smart_scripts` WHERE `entryorguid`=35836;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35836, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - On Spawn - Set Random Movement'),
(35836, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Say Random Line'),
(35836, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 33, 35830, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Quest Credit'),
(35836, 0, 3, 0, 1, 0, 100, 0, 10000, 10000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - OCC - Despawn in 10 seg');


-- Salvaged Supplies (46896)
DELETE FROM `creature_loot_template` WHERE  `Item`=46896;


-- Supply Crate (195306)
UPDATE `gameobject` SET `spawntimesecs`='60' WHERE  `id`=195306;


-- Distrito Militar Fase 170
UPDATE `spell_area` SET `quest_start`='14099', `quest_start_status`='66' WHERE  `spell`=59073 AND `area`=4757 AND `quest_start`=14078 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;


-- Gwen Armstead (35840)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=35840;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35840;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35840, 0, 0, 0, 1, 0, 100, 0, 2500, 2500, 60000, 60000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - Out Of Combat - Say Line 0'),
(35840, 0, 1, 0, 1, 0, 100, 0, 6000, 6000, 60000, 60000, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - Out Of Combat - Say Line 1'),
(35840, 0, 2, 0, 1, 0, 100, 0, 10000, 10000, 60000, 60000, '', 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - Out Of Combat - Say Line 1');


-- Marie Allen (38853)
DELETE FROM `gossip_menu_option` WHERE `MenuId`=10841 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(10841, 0, 1, 'Let me take a look at your merchandise.', 0, 3, 128, 26365);




-- Gilnean Survivor (35233)
UPDATE `creature_addon` SET `emote`='605' WHERE  `guid` IN (223527,223547,223552,223479,223481,223484);
UPDATE `creature_addon` SET `emote`='431' WHERE  `guid` IN (223523,223550,223542);
UPDATE `creature_addon` SET `emote`='20' WHERE  `guid` IN (223525,223554,223544);

DELETE FROM `creature` WHERE  `guid` IN (223540,223551,223543,223485,223545);
DELETE FROM `creature_addon` WHERE  `guid` IN (223540,223551,223543,223485,223545);

UPDATE `creature` SET `position_x`='-1636.82', `position_y`='1307.91', `position_z`='19.6632', `orientation`='5.42632' WHERE  `guid`=223479;


-- Huntsman Blake (35874)
UPDATE `creature_addon` SET `emote`='385' WHERE  `guid`=223493;


-- Wounded Guard (47091)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=47091;


-- Myriam Spellwaker (35872)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35872;


-- Sergeant Cleese (35839)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35839;


-- Bloodfang Worgen (35118)
UPDATE `creature_template` SET `flags_extra`='0', `ScriptName`='' WHERE  `entry`=35118;

DELETE FROM `creature` WHERE  `guid` IN (223586,223564,223497,223504,223526,223528,223521,223532,223584,223514,223517,223650,223657,223563,223560,223574,223510,223653);
DELETE FROM `creature_addon` WHERE  `guid` IN (223586,223564,223497,223504,223526,223528,223521,223532,223584,223514,223517,223650,223657,223563,223560,223574,223510,223653);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35118;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35118, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - Cast Enrage at 30% HP'),
(35118, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - Say Line 0'),
(35118, 0, 2, 0, 8, 0, 100, 0, 100, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 3, 0, 8, 0, 100, 0, 56641, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 4, 0, 8, 0, 100, 0, 2098, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 5, 0, 8, 0, 100, 0, 348, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 6, 0, 8, 0, 100, 0, 5143, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 7, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35232, 15, 0, 0, 0, 0, 0, 'Bloodfang Worgen - Attack Gilnean Royal Guard');

UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223651,223561,223658,223489,223487,223499,223488,223579,223573,223652);
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE  `guid` IN (223488,223573);
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=35118;


-- Gilnean Royal Guard (35232)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=35232;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35232;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35232, 0, 0, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35118, 15, 0, 0, 0, 0, 0, 'Gilnean Royal Guard - Attack Bloodfang Worgen');

DELETE FROM `creature` WHERE  `guid`=223566;
DELETE FROM `creature_addon` WHERE  `guid`=223566;

UPDATE `creature_addon` SET `emote`='333' WHERE  `guid` IN (223512,223558,223529,223539,223524,223516,223522,223520,223567,223571);
UPDATE `creature` SET `spawndist`='3', `MovementType`='1' WHERE  `guid` IN (223512,223558,223529,223539,223524,223516,223522,223520,223567,223571);

UPDATE `creature_addon` SET `emote`='333' WHERE  `guid` IN (223538,223531,223530,223533,223541,223553,223546,223548,223549);


-- King Genn Greymane (35112)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35112;


-- Lord Godfrey (35115)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35115;


-- Captain Broderick (50371)
UPDATE `creature_addon` SET `emote`='433' WHERE  `guid`=223570;


-- Lord Darius Crowley (35077)
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid`=223581;


-- Tobias Mistmantle (35124)
UPDATE `creature_addon` SET `emote`='333' WHERE  `guid`=223578;


-- Bloodfang Bloodletter (35457)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35457;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid`=223686;

DELETE FROM `creature` WHERE  `guid` IN (223613,223469);
DELETE FROM `creature_addon` WHERE  `guid` IN (223613,223469);


-- Worgen Runt (35456)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35456;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223683,223678,223659,223688,223685,223620,223669,223667,223675,223671,223670);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35456;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35456, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Runt - Cast Enrage at 30% HP'),
(35456, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Runt - Say Text at 30% HP');

DELETE FROM `creature` WHERE  `guid` IN (223615,223668,223677,223617,223660,223622,223682,223665,223687,223612,223456,223664,223621,223681,223680,223663,223619,223662,223679,223661,223618,223666,223623,223616,223676,223672,223674,223673,223684,223614,223641,223636,223639,223637,223635,223640,223638,223625,223468,223624,223467);
DELETE FROM `creature_addon` WHERE  `guid` IN (223615,223668,223677,223617,223660,223622,223682,223665,223687,223612,223456,223664,223621,223681,223680,223663,223619,223662,223679,223661,223618,223666,223623,223616,223676,223672,223674,223673,223684,223614,223641,223636,223639,223637,223635,223640,223638,223625,223468,223624,223467);


-- Worgen Runt (35188)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35188;


-- Worgen Alpha (35167)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35167;


-- Worgen Alpha (35170)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35170;


-- Cellar Door (195430)
UPDATE `gameobject_template` SET `name`='Cellar Door', `Data2`='8000' WHERE  `entry`=195430;
UPDATE `gameobject_template_addon` SET `faction`='0', `flags`='32' WHERE  `entry`=195430;




-- Cellar Door (195621)
UPDATE `gameobject` SET `PhaseId`='0' WHERE  `guid`=94629;


/*==================
-- Gilneas Finish 1.5/5
==================*/

-- Playercreateinfo Cast Spell
DELETE FROM `playercreateinfo_cast_spell` WHERE `raceMask`=2097152 AND `classMask`=1437 AND `spell`=95759;
DELETE FROM `playercreateinfo_cast_spell` WHERE `raceMask`=2097152 AND `classMask`=1437 AND `spell`=72857;

-- Smart Scripts
UPDATE `smart_scripts` SET `event_param_string`='' WHERE  `event_param_string`='0';


-- Rampaging Worgen (34884)
DELETE FROM `creature` WHERE  `guid`=223458;
DELETE FROM `creature_addon` WHERE  `guid`=223458;


-- Prince Liam Greymane (34913)
DELETE FROM `smart_scripts` WHERE `entryorguid`=34913;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34913, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 25000, 35000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Prince Liam Greymane - OCC - Say Random Text');


-- Gwen Armstead (35840)
DELETE FROM `smart_scripts` WHERE `entryorguid`=35840;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35840, 0, 0, 0, 1, 0, 100, 0, 2500, 2500, 45000, 45000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - OCC - Say Line 0'),
(35840, 0, 1, 0, 1, 0, 100, 0, 6000, 6000, 45000, 45000, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - OCC - Say Line 1'),
(35840, 0, 2, 0, 1, 0, 100, 0, 10000, 10000, 45000, 45000, '', 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - OCC - Say Line 2');


-- Generic Trigger LAB - Multiphase (35374)
UPDATE `creature` SET `PhaseId`='171' WHERE  `guid` IN (223585,223588);


-- Josiah Avery (35369)
UPDATE `creature_template` SET `unit_flags`='33280', `flags_extra`='2', `AIName`='SmartAI', `ScriptName`=''  WHERE  `entry`=35369;
UPDATE `creature_addon` SET `emote`='659' WHERE  `guid`=223587;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35369;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35369, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 25000, 35000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Josiah Avery - OCC - Say Line 0'),
(35369, 0, 1, 2, 20, 0, 100, 0, 14159, 0, 0, 0, '', 75, 72870, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Josiah Avery - On Quest Rewarded - Add Aura Worgen Bite'),
(35369, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 85, 67350, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Josiah Avery - Player Cast on Self Summon Josiah');


-- Josiah Avery (35370)
DELETE FROM `creature_template_addon` WHERE `entry`=35370;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(35370, 0, 0, 0, 1, 540, 0, 0, 0, '59074');


-- Josiah Event Trigger (50415)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128', `AIName`='' WHERE  `entry`=50415;
DELETE FROM `smart_scripts` WHERE `entryorguid`=50415;

DELETE FROM `creature_template_addon` WHERE `entry`=50415;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(50415, 0, 0, 0, 1, 540, 0, 0, 0, '59074');


-- Lorna Crowley (35378)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35378;


-- Bloodfang Lurker (35463)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35463;
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=35463;


-- Gilneas City Guard (35504)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35504;
DELETE FROM `creature` WHERE  `guid` IN (223776,223753,223785,223691,223734,223710,223701,223723,223708,223744,223733,223713);
DELETE FROM `creature_addon` WHERE  `guid` IN (223776,223753,223785,223691,223734,223710,223701,223723,223708,223744,223733,223713);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35504;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35504, 0, 0, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35505, 15, 0, 0, 0, 0, 0, 'Gilneas City Guard - Attack Bloodfang Ripper');


-- Bloodfang Ripper (35505)
DELETE FROM `creature` WHERE  `guid` IN (223724,223727,223709,223766,223711,223782,223763,223689,223781,223725,223731,223738,223717,223775,223742,223722,223762,223740,223698,223721,223779,223693,223752,223771,223747,223780,223810,223696,223746,223718,223729,223786,223714,223759,223739,223707,223745,223834,223697,223706,223811,223807,223823,223705,223703,223846,223855,223783,223789,223829,223841,223852,223702,223719,223849,223824,223835,223728,223853,223831,223836,223840,223843,223854,223826,223842,223845,223851,223833,223844,223848,223832,223850,223856,223824,223835,223778,223808,223730,223849,223827);
DELETE FROM `creature_addon` WHERE  `guid` IN (223724,223727,223709,223766,223711,223782,223763,223689,223781,223725,223731,223738,223717,223775,223742,223722,223762,223740,223698,223721,223779,223693,223752,223771,223747,223780,223810,223696,223746,223718,223729,223786,223714,223759,223739,223707,223745,223834,223697,223706,223811,223807,223823,223705,223703,223846,223855,223783,223789,223829,223841,223852,223702,223719,223849,223824,223835,223728,223853,223831,223836,223840,223843,223854,223826,223842,223845,223851,223833,223844,223848,223832,223850,223856,223824,223835,223778,223808,223730,223849,223827);
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE  `id`=35505 AND NOT `MovementType`='2';
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=35505;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223690,223694,223704,223715,223716,223735,223737,223748,223749,223750,223755,223756,223757,223760,223761,223764,223768,223770,223774,223777,223809,223812,223821,223828,223837);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35505;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35505, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Ripper - Cast Enrage at 30% HP'),
(35505, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Ripper - Say Text at 30% HP'),
(35505, 0, 2, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35504, 15, 0, 0, 0, 0, 0, 'Bloodfang Ripper - Attack Gilneas City Guard');


-- King Genn Greymane (35550)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35550;


-- King Greymane's Horse (35905)
UPDATE `creature_template` SET `spell1`='0', `ScriptName`=''  WHERE  `entry`=35905;
DELETE FROM `vehicle_template_accessory` WHERE  `entry`=35905 AND `seat_id`=1;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35905,3590500);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35905, 0, 0, 0, 27, 0, 100, 512, 0, 0, 0, 0, '', 53, 1, 35905, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On Passanger Boarded - Start WP'),
(35905, 0, 1, 0, 40, 0, 100, 512, 7, 35905, 0, 0, '', 33, 35753, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP 7 Reached - Quest Credit'), -- Replace Spell 68219
(35905, 0, 2, 0, 40, 0, 100, 512, 16, 35905, 0, 0, '', 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP 12 Reached - Despawn in 1 seg');


-- Krennan Aranas (35907)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35907;


-- Krennan Aranas (35753)
UPDATE `creature` SET `spawntimesecs`='5' WHERE  `id`=35753;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35753;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35753, 0, 1, 0, 8, 0, 100, 1, 68219, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Spellhit - Despawn Instant'),
(35753, 0, 0, 0, 1, 0, 100, 0, 0, 0, 60000, 60000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - OCC - Say Text 0');

UPDATE `spell_area` SET `quest_end`='14293', `quest_start_status`='8', `quest_end_status`='66' WHERE  `spell`=49416 AND `area`=4757 AND `quest_start`=14293 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;


-- Commandeered Cannon (35914)
UPDATE `creature_template` SET `unit_flags`='33554944', `flags_extra`='2', `ScriptName`=''  WHERE  `entry`=35914;
UPDATE `smart_scripts` SET `action_param1`='46401', `comment`='Commandeered Cannon - On Script - Cast Cosmetic - Cannon Impact' WHERE  `entryorguid`=3591400 AND `source_type`=9 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='46401', `comment`='Commandeered Cannon - On Script - Cast Cosmetic - Cannon Impact' WHERE  `entryorguid`=3591400 AND `source_type`=9 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='46401', `comment`='Commandeered Cannon - On Script - Cast Cosmetic - Cannon Impact' WHERE  `entryorguid`=3591400 AND `source_type`=9 AND `id`=2 AND `link`=0;


-- Lord Godfrey (35906)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35906;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35906;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35906, 0, 0, 1, 20, 0, 100, 0, 14293, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - On Quest Reward - Say Line 0'),
(35906, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 28, 72870, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - Remove Aura Worgen Bite'),
(35906, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, '', 75, 72872, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - Add Aura Infected Bite'),
(35906, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, '', 85, 93555, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - Player Cast on Self Forcecast Cannon Camera'),
(35906, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 80, 3591400, 0, 0, 0, 0, 0, 10, 223899, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - Actionlist');


-- Bloodfang Ripper (35916)
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=35916;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223929,223930,223931,223932,223933,223934,223935,223936,223937,223938,223939,223940,223941);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `id`=35916 AND NOT `MovementType`='2';


-- Afflicted Gilnean (50471)
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=50471;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223870,223871,223881,223885,223889,223892,223894,223896,223897,223909,223920,223952,223985,223986,224029);
UPDATE `creature` SET `spawndist`='2', `MovementType`='1' WHERE  `guid` IN (223870,223871,223881,223885,223889,223892,223894,223896,223897,223909,223920,223952,223985,223986,224029);
DELETE FROM `creature` WHERE  `guid` IN (223985,223955,223857,223882,223983,223953,223980,223868,223877,223954,223984,223925,223887,223875,223872,223874,223916,223911,223891,223888,223945,223879,224036,223862,223863,223923,223912,223928,223950,223893,223904,224031,223951,223860,224184,223902,223978,223880);
DELETE FROM `creature_addon` WHERE  `guid` IN (223985,223955,223857,223882,223983,223953,223980,223868,223877,223954,223984,223925,223887,223875,223872,223874,223916,223911,223891,223888,223945,223879,224036,223862,223863,223923,223912,223928,223950,223893,223904,224031,223951,223860,224184,223902,223978,223880);


-- Huntsman Blake (44461)
UPDATE `creature_addon` SET `emote`='385' WHERE  `guid`=223995;


-- Loren the Fence (44464)
UPDATE `creature_addon` SET `auras`='34189' WHERE  `guid`=224006;


-- Sister Almyra (44468)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=44468;


-- Shaken Survivor (35554)
UPDATE `creature_addon` SET `emote`='455' WHERE  `guid` IN (223999,224002,224005,224012,224015,224016,224017,224018,224019,224023,224024);


-- Crowley's Horse (44427)
DELETE FROM `creature` WHERE  `guid`=224013;
DELETE FROM `creature_addon` WHERE  `guid`=224013;


-- King Genn Greymane (35911)
UPDATE `smart_scripts` SET `target_param1`='224007' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `target_param1`='224008' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `target_param1`='224022' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `target_param2`='35552' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `target_param2`='35911' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `target_param2`='35551' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=3 AND `link`=0;


/*==================
-- Gilneas Finish 2/5
==================*/

-- Lord Darius Crowley (35552)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35552;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35552;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35552, 0, 0, 0, 19, 0, 100, 0, 14212, 0, 0, 0, '', 85, 67001, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - On Quest Taken - Player Cast on Self Summon Crowley\'s Horse');


-- Crowley\'s Horse (35231)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35231;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35231,3523100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35231, 0, 0, 0, 54, 0, 100, 512, 0, 0, 0, 0, '', 80, 3523100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - On Just Summoned - Run Actionlist'),
(35231, 0, 1, 0, 40, 0, 100, 512, 10, 35231, 0, 0, '', 54, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - On WP 12 Reached - Paused WP'),
(35231, 0, 2, 3, 40, 0, 100, 512, 22, 35231, 0, 0, '', 11, 68576, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - On WP 22 Reached - Cast Eject All Passengers'),
(35231, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Despawn'),
(35231, 0, 4, 0, 6, 0, 100, 512, 0, 0, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - On Death - Despawn'),
(35231, 0, 5, 6, 60, 0, 100, 512, 15000, 15000, 15000, 15000, '', 1, 1, 1, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Event Update - Lord Darius Crowley Say Line 1'),
(35231, 0, 6, 7, 61, 0, 100, 512, 0, 0, 0, 0, '', 28, 67063, 0, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Remove Aura Throw Torch to Lord Darius Crowley'),
(35231, 0, 7, 8, 61, 0, 100, 512, 0, 0, 0, 0, '', 28, 67063, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Remove Aura Throw Torch to Player'),
(35231, 0, 8, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 28, 67063, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Remove Aura Throw Torch to Self'),
(3523100, 9, 0, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1735.01, 1653.01, 20.49, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 1, 0, 0, 0, 100, 512, 100, 100, 100, 100, '', 97, 15, 15, 0, 1709, 20, 0, 1, 0, 0, 0, -1714.02, 1666.37, 20.57, 0, 'Crowley\'s Horse - Jump to Pos'),
(3523100, 9, 2, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 1, 0, 1, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Lord Darius Crowley Say Line 0'),
(3523100, 9, 3, 0, 0, 0, 100, 512, 1800, 1800, 1800, 1800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1695.77, 1662.28, 20.5008, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 4, 0, 0, 0, 100, 512, 1800, 1800, 1800, 1800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1678.26, 1648.95, 20.6123, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 5, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1669.8, 1634.52, 20.4897, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 6, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1678.61, 1615.53, 20.4897, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 7, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1692.43, 1613.71, 20.4897, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 8, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1703.6, 1621.72, 20.4897, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 9, 0, 0, 0, 100, 512, 2800, 2800, 2800, 2800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1673.3, 1701.64, 20.4992, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 10, 0, 0, 0, 100, 512, 4800, 4800, 4800, 4800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1681.95, 1703.72, 20.4992, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 11, 0, 0, 0, 100, 512, 5200, 5200, 5200, 5200, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1646.58, 1708.64, 20.4918, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 12, 0, 0, 0, 100, 512, 4200, 4200, 4200, 4200, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1611.8, 1710.91, 22.6814, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 13, 0, 0, 0, 100, 512, 5200, 5200, 5200, 5200, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1589.02, 1710.71, 20.4852, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 14, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 97, 15, 15, 0, 1709, 20, 0, 1, 0, 0, 0, -1572.31, 1709.16, 20.4861, 0, 'Crowley\'s Horse - Jump to Pos'),
(3523100, 9, 15, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1549.35, 1705.51, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 16, 0, 0, 0, 100, 512, 3400, 3400, 3400, 3400, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1522.72, 1696.79, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 17, 0, 0, 0, 100, 512, 4300, 4300, 4300, 4300, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1490.45, 1679.68, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 18, 0, 0, 0, 100, 512, 4700, 4700, 4700, 4700, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1435.31, 1623.39, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 19, 0, 0, 0, 100, 512, 4500, 4500, 4500, 4500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1418.88, 1592.74, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 20, 0, 0, 0, 100, 512, 4500, 4500, 4500, 4500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1414.37, 1575.23, 20.4802, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 21, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1416.5, 1566.34, 20.4821, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 22, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1444.24, 1553.16, 20.4839, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 23, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1469.58, 1560.96, 20.4839, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 24, 0, 0, 0, 100, 512, 2500, 2500, 2500, 2500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1505.88, 1566.46, 20.4858, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 25, 0, 0, 0, 100, 512, 2500, 2500, 2500, 2500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1517.87, 1568.61, 26.2918, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 26, 0, 0, 0, 100, 512, 2500, 2500, 2500, 2500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1535.83, 1572.85, 28.9941, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 27, 0, 0, 0, 100, 512, 4500, 4500, 4500, 4500, '', 41, 1, 0, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Lord Darius Crowley Despawn'),
(3523100, 9, 28, 0, 0, 0, 100, 512, 100, 100, 100, 100, '', 28, 67063, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Remove Aura Throw Torch to Player'),
(3523100, 9, 29, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 11, 68576, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Cast Eject All Passengers');


-- Bloodfang Stalker (35229)
UPDATE `creature_template` SET `flags_extra`='66', `ScriptName`=''  WHERE  `entry`=35229;
DELETE FROM `creature` WHERE  `guid` IN (224144,224078,224074,224075,224073,224077,224072,224121,224119,224131,224129,224135,224127);
DELETE FROM `creature_addon` WHERE  `guid` IN (224144,224078,224074,224075,224073,224077,224072,224121,224119,224131,224129,224135,224127);
UPDATE `creature` SET `spawntimesecs`='30' WHERE  `id`=35229;
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `id`=35229;
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=35229;
UPDATE `creature_addon` SET `emote`='540' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=35229);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35229;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35229, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - Cast Enrage at 30% HP'),
(35229, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - Say Text at 30% HP'),
(35229, 0, 2, 3, 8, 0, 100, 512, 67063, 0, 0, 0, '', 33, 35582, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - On Spellhit - Quest Credit'),
(35229, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - Die');


-- Crowley's Horse (44429)
DELETE FROM `creature` WHERE  `guid`=224297;
DELETE FROM `creature_addon` WHERE  `guid`=224297;


-- Rebel Cannon (35317)
UPDATE `creature_template` SET `InhabitType`='8', `ScriptName`='' WHERE  `entry`=35317;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=35317 AND `SourceEntry`=43671 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=14218 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 35317, 43671, 0, 0, 9, 0, 14218, 0, 0, 0, 0, 0, '', 'Rebel Cannon - Required Quest Active for Spellclick');


-- Northgate Rebel (36057)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=36057;
UPDATE `creature_addon` SET `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=36057);

DELETE FROM `smart_scripts` WHERE `entryorguid`=36057;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36057, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2300, 3900, '', 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Northgate Rebel - Cast Shoot'),
(36057, 0, 1, 0, 9, 0, 100, 0, 0, 5, 12000, 14500, '', 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Northgate Rebel - On Close - Cast Cleave'),
(36057, 0, 2, 0, 1, 0, 100, 0, 0, 0, 2000, 2000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35229, 10, 0, 0, 0, 0, 0, 'Northgate Rebel - Attack Creature Bloodfang Stalker');





-- Lord Darius Crowley (35566)
DELETE FROM `creature` WHERE `guid`=72590;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(72590, 35566, 654, 4755, 4761, 1, 0, 179, 0, -1, 0, 0, -1619.7, 1498.03, 32.8829, 0.785398, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 26365);

DELETE FROM `creature_addon` WHERE `guid`=72590;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(72590, 0, 0, 0, 2, 333, 0, 0, 0, '67503');


-- Frenzied Stalker (35627)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35627;
DELETE FROM `creature` WHERE  `guid` IN (224455,224457,224434,224458,224430,224436,224440,224454,224459,224428,224421,224460,224423,224424,224462,224464,224429,224463,224461);
DELETE FROM `creature_addon` WHERE  `guid` IN (224455,224457,224434,224458,224430,224436,224440,224454,224459,224428,224421,224460,224423,224424,224462,224464,224429,224463,224461);
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=35627;
UPDATE `creature_addon` SET `emote`='540' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=35627);
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=35627;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35627;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35627, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Stalker - Cast Enrage at 30% HP'),
(35627, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Stalker - Say Text at 30% HP');


-- Northgate Rebel (41015)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=41015;
UPDATE `creature_template_addon` SET `emote`='333' WHERE  `entry`=41015;
UPDATE `creature_addon` SET `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=41015);

DELETE FROM `creature` WHERE `map` = 1651;
INSERT IGNORE INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
( 114350, 1651, 8443, 8443, 3, 0, 0, 0, -4599.056, -2524.583, 2876.593, 1.708567, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114350 (Area: 8443 - Difficulty: 23) (Auras: 189573 - 189573)
( 114844, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114844 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29920 - 29920) (possible waypoints or random movement)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4691.342, -2323.144, 2895.902, 3.60904, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4593.947, -2312.139, 2909.081, 2.934427, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 114839, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114839 (Area: 8443 - Difficulty: 23) (Auras: 19818 - 19818, 46598 - 46598) (possible waypoints or random movement)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4606.519, -2318.216, 2910.132, 1.913029, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 114844, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114844 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29920 - 29920) (possible waypoints or random movement)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 114843, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114843 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4608.202, -2337.044, 2905.976, 6.273538, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 114844, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114844 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29920 - 29920) (possible waypoints or random movement)
( 114844, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114844 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29920 - 29920) (possible waypoints or random movement)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 114844, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114844 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, -4597.031, -2473.181, 2876.416, 1.555107, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4593.692, -2333.405, 2912.599, 3.104028, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 114843, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114843 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 115488, 1651, 8443, 8443, 3, 0, 0, 0, -4688.675, -2311.784, 2880.133, 3.139164, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115488 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 114843, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114843 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114842, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114842 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 114834, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114834 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 18950 - 18950) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4685.847, -2281.809, 2748.337, 2.684976, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621) (possible waypoints or random movement)
( 114834, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114834 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 18950 - 18950)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, -4487.433, -2245.629, 2932.681, 1.875582, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 114839, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114839 (Area: 8443 - Difficulty: 23) (Auras: 19818 - 19818, 46598 - 46598) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114839, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114839 (Area: 8443 - Difficulty: 23) (Auras: 19818 - 19818, 46598 - 46598) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4569.891, -2259.686, 2912.854, 0.4024282, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4614.877, -2249.828, 2913.524, 2.90327, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4657.249, -2256.002, 2834.539, 2.079695, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114844, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114844 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29920 - 29920) (possible waypoints or random movement)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4696.73, -2305.469, 2899.917, 2.100253, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4582.066, -2232.656, 2913.524, 2.90327, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4701.014, -2313.039, 2901.314, 4.186323, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114834, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114834 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 18950 - 18950)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, -4486.018, -2248.31, 2932.766, 3.123787, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114839, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114839 (Area: 8443 - Difficulty: 23) (Auras: 19818 - 19818, 46598 - 46598) (possible waypoints or random movement)
( 114834, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114834 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 18950 - 18950) (possible waypoints or random movement)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4570.09, -2272.085, 2974.486, 2.100472, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4572.062, -2270.969, 2968.726, 5.03447, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4596.375, -2259.146, 2916.196, 0.4499379, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 116864, 1651, 8443, 8443, 3, 0, 0, 0, -4567.959, -2266.01, 2973.228, 1.010745, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116864 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4610.181, -2218, 2913.524, 2.90327, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4568.839, -2211.002, 2775.928, 2.59864, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4593.415, -2214.653, 2779.933, 6.048404, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621) (possible waypoints or random movement)
( 115488, 1651, 8443, 8443, 3, 0, 0, 0, -4715.555, -2221.876, 2855.528, 5.688374, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115488 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 114844, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114844 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4661.56, -2189.235, 2903.131, 5.742876, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621) (possible waypoints or random movement)
( 115488, 1651, 8443, 8443, 3, 0, 0, 0, -4712.913, -2204.849, 2853.041, 5.527647, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115488 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, -4575.523, -2221.195, 2904.623, 5.934316, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4586.465, -2520.199, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4592.506, -2521.465, 2876.721, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 114835, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114835 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29908 - 29908) (possible waypoints or random movement)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, -4530.937, -2172.95, 2880.754, 4.378059, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 114839, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114839 (Area: 8443 - Difficulty: 23) (Auras: 19818 - 19818, 46598 - 46598) (possible waypoints or random movement)
( 115488, 1651, 8443, 8443, 3, 0, 0, 0, -4537.156, -2175.229, 2880.741, 6.257354, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115488 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 115757, 1651, 8443, 8443, 3, 0, 0, 0, -4687.579, -2112.545, 2871.34, 3.086123, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115757 (Area: 8443 - Difficulty: 23) (Auras: 230045 - 230045, 42459 - 42459) (possible waypoints or random movement)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, -4696.008, -2147.419, 2754.254, 1.641562, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621) (possible waypoints or random movement)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10952.9, -1808.226, 121.7885, 5.314186, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114938, 1651, 8443, 8443, 3, 0, 0, 0, -10961.33, -1975.915, 89.21518, 2.975311, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114938 (Area: 8443 - Difficulty: 23) (Auras: )
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10935.46, -1954.056, 49.55991, 3.124139, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114627, 1651, 8443, 8443, 3, 0, 0, 0, -11072.42, -2034.151, 115.3658, 5.653266, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114627 (Area: 8443 - Difficulty: 23)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10888.37, -1839.337, 93.28, 1.579737, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114940, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 1.007242, 0.02745139, 4.712389, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114940 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114555, 1651, 8443, 8443, 3, 0, 0, 0, -11067.6, -1960.358, 77.35147, 3.347422, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114555 (Area: 8443 - Difficulty: 23) (Auras: 232686 - 232686)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10986.5, -2014.665, 80.05693, 6.123907, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114628, 1651, 8443, 8443, 3, 0, 0, 0, -11072.2, -2007.96, 77.35146, 0.03490658, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114628 (Area: 8443 - Difficulty: 23)
( 115986, 1651, 8443, 8443, 3, 0, 0, 0, -10905.22, -1736.292, 90.55457, 0.05394841, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115986 (Area: 8443 - Difficulty: 23)
( 115063, 1651, 8443, 8443, 3, 0, 0, 0, -10943.91, -2043.104, 49.55752, 2.862669, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115063 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10977.28, -1989.5, 80.0566, 3.700098, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10881.95, -1842.762, 93.44077, 1.908938, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114940, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 1.007242, 0.02745139, 4.712389, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114940 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10958.6, -1987.946, 80.05677, 0.6590823, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: 29521 - 29521)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 11.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10917.84, -1982.608, 92.26781, 5.288348, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10958.85, -2019.207, 80.05714, 4.495277, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
(114634, 1651, 8443, 8443, 3, 0, 0, 0, -10951.3, -1990.746, 80.16587, 4.607484, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114634 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10982.58, -1989.531, 80.05698, 5.72468, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10973.78, -1971.665, 80.05632, 0.8122545, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114714, 1651, 8443, 8443, 3, 0, 0, 0, -11059.75, -1992.052, 77.35147, 5.602507, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114714 (Area: 8443 - Difficulty: 23)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10936.98, -1930.78, 93.90508, 4.206244, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115019, 1651, 8443, 8443, 3, 0, 0, 0, -10974.5, -1942.038, 46.1594, 4.923446, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115019 (Area: 8443 - Difficulty: 23)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10933.71, -1959.55, 49.56043, 3.04381, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 28, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10915.87, -1988.425, 92.26788, 1.27409, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10988.02, -2032.911, 93.90794, 0.8552113, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: 29521 - 29521)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 15.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10928.51, -1972.84, 92.26401, 2.583087, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115063, 1651, 8443, 8443, 3, 0, 0, 0, -10931.44, -1982.995, 49.59782, 5.509943, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115063 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114629, 1651, 8443, 8443, 3, 0, 0, 0, -10936, -1933.271, 93.90356, 3.036873, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114629 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10956.87, -1971.477, 80.05665, 0.6806784, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114653, 1651, 8443, 8443, 3, 0, 0, 0, -10895.84, -1749.012, 101.0038, 4.60779, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114653 (Area: 8443 - Difficulty: 23) (Auras: 228292 - 228292)
( 115062, 1651, 8443, 8443, 3, 0, 0, 0, -10945.8, -2033.153, 49.55753, 1.877527, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115062 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 18654, 1651, 8443, 8443, 3, 0, 0, 0, -10897.49, -1799.212, 91.81512, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 18654 (Area: 8443 - Difficulty: 23)
( 114636, 1651, 8443, 8443, 3, 0, 0, 0, -11105.58, -1892.333, 74.48761, 5.602507, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114636 (Area: 8443 - Difficulty: 23)
( 114556, 1651, 8443, 8443, 3, 0, 0, 0, -11069.07, -1959.439, 77.35147, 3.721804, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114556 (Area: 8443 - Difficulty: 23) (Auras: 232686 - 232686, 228268 - 228268)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10882.85, -1833.217, 92.97864, 1.427346, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114940, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 1.007242, 0.02745139, 4.712389, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114940 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10983.98, -2012.293, 80.05679, 5.044002, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114628, 1651, 8443, 8443, 3, 0, 0, 0, -11040.94, -1943.361, 77.35146, 4.39823, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114628 (Area: 8443 - Difficulty: 23)
( 114637, 1651, 8443, 8443, 3, 0, 0, 0, -11104.52, -1893.576, 74.48822, 2.303835, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114637 (Area: 8443 - Difficulty: 23) (Auras: 18950 - 18950)
( 114634, 1651, 8443, 8443, 3, 0, 0, 0, -11022.21, -1979.402, 93.96576, 4.588218, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114634 (Area: 8443 - Difficulty: 23)
( 16425, 1651, 8443, 8443, 3, 0, 0, 0, -11109.13, -1906.575, 74.48924, 1.815142, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 16425 (Area: 8443 - Difficulty: 23)
( 114542, 1651, 8443, 8443, 3, 0, 0, 0, -10953.97, -1814.129, 121.7885, 0.8524922, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114542 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114940, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, -0.9927585, 0.02745139, 1.570796, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114940 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10979.21, -1993.458, 80.05669, 2.23884, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
(115030, 1651, 8443, 8443, 3, 0, 0, 0, -10989.94, -1947.504, 46.10361, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115030 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
(114625, 1651, 8443, 8443, 3, 0, 0, 0, -10959.55, -1984.809, 80.05669, 6.178465, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
(114636, 1651, 8443, 8443, 3, 0, 0, 0, -11096.22, -1910.602, 74.50053, 2.86234, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114636 (Area: 8443 - Difficulty: 23)
(114637, 1651, 8443, 8443, 3, 0, 0, 0, -11100.17, -1914.071, 74.49252, 3.420845, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114637 (Area: 8443 - Difficulty: 23) (Auras: 18950 - 18950)
(16424, 1651, 8443, 8443, 3, 0, 0, 0, -11109.81, -1904.892, 74.49053, 5.148721, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 16424 (Area: 8443 - Difficulty: 23) (Auras: 18950 - 18950)
( 114634, 1651, 8443, 8443, 3, 0, 0, 0, -10973.46, -1977.784, 80.27386, 1.561793, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114634 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10912.21, -1984.814, 92.26845, 4.555309, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10958.09, -2025.557, 80.0573, 2.089643, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10974.02, -1969.415, 80.05635, 6.195919, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10954.82, -1983.05, 80.05695, 4.329226, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114714, 1651, 8443, 8443, 3, 0, 0, 0, -11073.04, -1961.273, 77.34994, 0.5039292, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114714 (Area: 8443 - Difficulty: 23) (Auras: 232685 - 232685)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10938.87, -1934.74, 93.90456, 1.134464, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115019, 1651, 8443, 8443, 3, 0, 0, 0, -10979.53, -1943.269, 46.13517, 4.923446, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115019 (Area: 8443 - Difficulty: 23)
( 114716, 1651, 8443, 8443, 3, 0, 0, 0, -11053.34, -1951.089, 77.35147, 3.543018, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114716 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10947.02, -1988.993, 93.90794, 4.782202, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: 29521 - 29521)
( 114938, 1651, 8443, 8443, 3, 0, 0, 0, -10974.28, -1984.049, 93.52236, 3.309827, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114938 (Area: 8443 - Difficulty: 23) (Auras: )
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10932.5, -1973.035, 92.26527, 1.48353, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115062, 1651, 8443, 8443, 3, 0, 0, 0, -10935.31, -2013.076, 49.55752, 5.965041, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115062 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 14.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 115118, 1651, 8443, 8443, 3, 0, 0, 0, -10959.3, -1976.618, 46.2513, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115118 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10945.08, -1966.991, 93.90794, 3.036873, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: 29521 - 29521)
( 114634, 1651, 8443, 8443, 3, 0, 0, 0, -10918.9, -2018.409, 92.3647, 4.59337, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114634 (Area: 8443 - Difficulty: 23)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10970.1, -1998.311, 80.05599, 0.3642277, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 116003, 1651, 8443, 8443, 3, 0, 0, 0, -10900.85, -1736.764, 90.55388, 0.4528567, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116003 (Area: 8443 - Difficulty: 23)
( 114634, 1651, 8443, 8443, 3, 0, 0, 0, -10905.32, -1965.453, 92.36578, 1.43472, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114634 (Area: 8443 - Difficulty: 23)
( 114626, 1651, 8443, 8443, 3, 0, 0, 0, -11012.07, -1968.906, 110.588, 4.2448, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114626 (Area: 8443 - Difficulty: 23)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10890.24, -1834.667, 93.05122, 1.637601, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 115032, 1651, 8443, 8443, 3, 0, 0, 0, -10940.62, -1968.755, 49.55829, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115032 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10979.79, -2016.84, 80.05648, 2.692626, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114628, 1651, 8443, 8443, 3, 0, 0, 0, -11069.24, -2007.05, 77.35146, 4.782202, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114628 (Area: 8443 - Difficulty: 23)
( 115063, 1651, 8443, 8443, 3, 0, 0, 0, -10919.79, -1964.345, 49.55892, 3.523998, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115063 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10911.14, -1986.255, 92.26859, 3.001966, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: 29521 - 29521)
( 114636, 1651, 8443, 8443, 3, 0, 0, 0, -11112.96, -1902.53, 74.4902, 3.106686, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114636 (Area: 8443 - Difficulty: 23)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10892.14, -1843.5, 93.46429, 1.536277, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114940, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, -0.9927585, 0.02745139, 1.570796, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114940 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10957.84, -1982.618, 80.05676, 5.113815, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114815, 1651, 8443, 8443, 3, 0, 0, 0, -11090.54, -1908.386, 49.94825, 3.612832, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114815 (Area: 8443 - Difficulty: 23) (Auras: 28002 - 28002)
( 114716, 1651, 8443, 8443, 3, 0, 0, 0, -11072.74, -1986.099, 77.35146, 1.797689, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114716 (Area: 8443 - Difficulty: 23)
( 115062, 1651, 8443, 8443, 3, 0, 0, 0, -10921.33, -2034.108, 49.55752, 3.734023, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115062 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10914.01, -1987.524, 92.26829, 1.780236, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114634, 1651, 8443, 8443, 3, 0, 0, 0, -10951.11, -2004.54, 80.16576, 1.459072, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114634 (Area: 8443 - Difficulty: 23)
( 115059, 1651, 8443, 8443, 3, 0, 0, 0, -10898.9, -2008.082, 49.55753, 4.536906, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115059 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10921.38, -1985.498, 92.26741, 4.974188, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10961.83, -2025.691, 80.05697, 1.117011, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10969.04, -1971.922, 80.05609, 2.693482, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: 29521 - 29521)
( 114636, 1651, 8443, 8443, 3, 0, 0, 0, -11102.76, -1907.656, 74.56576, 4.980879, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114636 (Area: 8443 - Difficulty: 23)
( 114637, 1651, 8443, 8443, 3, 0, 0, 0, -11110.85, -1890.148, 74.49007, 6.213372, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114637 (Area: 8443 - Difficulty: 23) (Auras: 18950 - 18950)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10917.96, -1960.986, 49.55918, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 22, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 79535, 1651, 8443, 8443, 3, 0, 0, 0, -11045.91, -1957.039, 77.26814, 5.742055, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 79535 (Area: 8443 - Difficulty: 23)
( 115123, 1651, 8443, 8443, 3, 0, 0, 0, -10933.26, -2044.504, 49.55752, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115123 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10992.51, -2008.483, 93.90793, 6.003932, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: 29521 - 29521)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10977.82, -2035.392, 79.97293, 1.457632, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 115059, 1651, 8443, 8443, 3, 0, 0, 0, -10897.59, -1999.698, 49.55753, 0.7064972, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115059 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114938, 1651, 8443, 8443, 3, 0, 0, 0, -10960.7, -2006.208, 92.21379, 3.62721, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114938 (Area: 8443 - Difficulty: 23) (Auras: )
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 15.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10932.23, -1970.724, 92.2652, 5.72468, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114629, 1651, 8443, 8443, 3, 0, 0, 0, -10929.94, -1969.774, 92.26448, 3.682645, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114629 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10954.88, -1811.109, 121.7885, 6.010331, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115057, 1651, 8443, 8443, 3, 0, 0, 0, -10935.47, -2029.552, 49.55752, 3.04381, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115057 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114616, 1651, 8443, 8443, 3, 0, 0, 0, -10923.5, -1785.365, 91.81609, 1.360941, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114616 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526, 28002 - 28002)
( 114629, 1651, 8443, 8443, 3, 0, 0, 0, -10954.33, -1970.087, 80.05679, 3.455752, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114629 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115019, 1651, 8443, 8443, 3, 0, 0, 0, -10923.7, -2049.439, 49.55752, 3.23748, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115019 (Area: 8443 - Difficulty: 23)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10880.02, -1833.09, 92.95777, 1.64867, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114940, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, -0.9927585, 0.02745139, 1.570796, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114940 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10982.71, -2019.212, 80.05665, 1.37881, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10939.21, -1951.705, 49.55504, 3.04381, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114794, 1651, 8443, 8443, 3, 0, 0, 0, -11068.11, -1986.137, 77.36578, 3.858814, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114794 (Area: 8443 - Difficulty: 23) (Auras: 201626 - 201626)
( 115063, 1651, 8443, 8443, 3, 0, 0, 0, -10931.59, -2051.103, 49.55752, 0.4652851, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115063 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10980.07, -1988.03, 80.05682, 5.026548, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 115030, 1651, 8443, 8443, 3, 0, 0, 0, -10958.77, -1939.613, 46.20573, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115030 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10953.61, -1985.92, 80.05707, 3.211406, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10878.92, -1841.87, 93.40049, 1.663109, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114940, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, -0.9927585, 0.02745139, 1.570796, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114940 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10980.5, -2013.391, 80.05656, 3.735005, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 15.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114715, 1651, 8443, 8443, 3, 0, 0, 0, -11071.06, -1983.597, 77.35146, 2.617994, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114715 (Area: 8443 - Difficulty: 23)
( 114646, 1651, 8443, 8443, 3, 0, 0, 0, -11069.14, -1957.236, 77.35115, 1.304508, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114646 (Area: 8443 - Difficulty: 23) (Auras: 232686 - 232686)
( 115062, 1651, 8443, 8443, 3, 0, 0, 0, -10937.16, -1988.549, 49.61819, 0.7217076, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115062 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10919.06, -1988.988, 92.2673, 2.251475, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10962.15, -2019.747, 80.05708, 5.361847, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114636, 1651, 8443, 8443, 3, 0, 0, 0, -11109.29, -1890.318, 74.4884, 2.827433, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114636 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10976.98, -1991.569, 80.05656, 3.001966, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: 29521 - 29521)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10968.56, -1969.205, 80.05609, 3.676898, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114714, 1651, 8443, 8443, 3, 0, 0, 0, -11057.77, -1994.262, 77.35146, 1.937315, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114714 (Area: 8443 - Difficulty: 23)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 12.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10940.32, -1931.406, 93.90354, 5.864306, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115019, 1651, 8443, 8443, 3, 0, 0, 0, -10960.66, -1943.179, 46.21542, 3.436953, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115019 (Area: 8443 - Difficulty: 23)
( 114544, 1651, 8443, 8443, 3, 0, 0, 0, -10927.49, -1800.372, 91.50718, 0.3229498, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114544 (Area: 8443 - Difficulty: 23)
( 114715, 1651, 8443, 8443, 3, 0, 0, 0, -11053.39, -1957.656, 77.35147, 1.727876, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114715 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10947.11, -1992.632, 93.90794, 1.204277, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 115124, 1651, 8443, 8443, 3, 0, 0, 0, -10930.13, -2008.111, 49.55752, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115124 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10956.77, -2022.113, 80.05725, 3.526603, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10967.73, -2000.264, 80.05618, 1.516357, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115019, 1651, 8443, 8443, 3, 0, 0, 0, -10964.04, -1975.924, 45.97697, 3.23748, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115019 (Area: 8443 - Difficulty: 23)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 11.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10937.04, -1935.163, 93.90284, 2.181662, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 79535, 1651, 8443, 8443, 3, 0, 0, 0, -10982.5, -2016.935, 79.97339, 2.343618, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 79535 (Area: 8443 - Difficulty: 23)
( 115030, 1651, 8443, 8443, 3, 0, 0, 0, -10992.34, -1973.698, 46.06582, 3.04381, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115030 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10957.42, -1969.417, 80.05658, 5.689773, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115019, 1651, 8443, 8443, 3, 0, 0, 0, -10924.83, -2043.7, 49.55752, 3.23748, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115019 (Area: 8443 - Difficulty: 23)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10887.91, -1834.188, 93.02084, 1.423845, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114649, 1651, 8443, 8443, 3, 0, 0, 0, -10993.64, -2030.686, 80.05706, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114649 (Area: 8443 - Difficulty: 23) (Auras: 232686 - 232686)
( 114637, 1651, 8443, 8443, 3, 0, 0, 0, -11098.25, -1909.384, 74.49921, 0.03490658, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114637 (Area: 8443 - Difficulty: 23) (Auras: 18950 - 18950)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10985.94, -2017.868, 80.05686, 0.7330383, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114628, 1651, 8443, 8443, 3, 0, 0, 0, -11044.32, -1943.538, 77.35147, 5.410521, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114628 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10916.9, -1984.389, 92.26793, 1.867502, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114794, 1651, 8443, 8443, 3, 0, 0, 0, -10988.4, -2030.825, 80.05674, 2.65119, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114794 (Area: 8443 - Difficulty: 23) (Auras: 201626 - 201626, 232685 - 232685)
( 114648, 1651, 8443, 8443, 3, 0, 0, 0, -10992.83, -2028.2, 80.05708, 5.92925, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114648 (Area: 8443 - Difficulty: 23) (Auras: 232686 - 232686)
( 114636, 1651, 8443, 8443, 3, 0, 0, 0, -11101.66, -1914.142, 74.49089, 0.2268928, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114636 (Area: 8443 - Difficulty: 23)
( 114940, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 1.007242, 0.02745139, 4.712389, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114940 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10982.07, -1992.632, 80.0569, 0.8923731, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10955.68, -1988.819, 80.05698, 1.832596, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114637, 1651, 8443, 8443, 3, 0, 0, 0, -11114.57, -1902.826, 74.48831, 0.3839724, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114637 (Area: 8443 - Difficulty: 23) (Auras: 18950 - 18950)
( 114716, 1651, 8443, 8443, 3, 0, 0, 0, -11071.63, -1980.458, 77.35146, 3.316126, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114716 (Area: 8443 - Difficulty: 23)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 12, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420); -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)

INSERT IGNORE INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
( 114624, 1651, 8443, 8443, 3, 0, 0, 0, -10965.62, -1955.693, 80.05598, 4.555309, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114624 (Area: 8443 - Difficulty: 23)
( 115034, 1651, 8443, 8443, 3, 0, 0, 0, -10927.69, -1981.925, 49.57317, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115034 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10919.08, -1986.719, 92.26761, 3.996804, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 114647, 1651, 8443, 8443, 3, 0, 0, 0, -10994.84, -2029.188, 80.05715, 6.167356, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114647 (Area: 8443 - Difficulty: 23) (Auras: 232686 - 232686)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10963.59, -2023, 80.05688, 6.246773, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10971.62, -1967.356, 80.05631, 5.110896, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 116804, 1651, 8443, 8443, 3, 0, 0, 0, -11140.38, -1886.941, 165.8487, 3.765622, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116804 (Area: 8443 - Difficulty: 23)
( 114716, 1651, 8443, 8443, 3, 0, 0, 0, -11052.72, -1954.497, 77.35146, 2.687807, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114716 (Area: 8443 - Difficulty: 23)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -11013.9, -1940.229, 93.90948, 2.321288, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: 29521 - 29521)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10950.71, -2022.257, 93.90794, 2.391101, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23)
( 114799, 1651, 8443, 8443, 3, 0, 0, 0, -11099.76, -1937.739, 49.98219, 4.150565, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114799 (Area: 8443 - Difficulty: 23) (Auras: 28002 - 28002)
( 114625, 1651, 8443, 8443, 3, 0, 0, 0, -10971.26, -1973.262, 80.0562, 1.396263, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114625 (Area: 8443 - Difficulty: 23) (Auras: )
( 115032, 1651, 8443, 8443, 3, 0, 0, 0, -10909.83, -1945.101, 49.56647, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115032 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114938, 1651, 8443, 8443, 3, 0, 0, 0, -10982.32, -2003.13, 88.63092, 3.31178, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114938 (Area: 8443 - Difficulty: 23) (Auras: )
( 116573, 1651, 8443, 8443, 3, 0, 0, 0, -11076.42, -2010.543, 49.97478, 1.690058, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116573 (Area: 8443 - Difficulty: 23) (Auras: 28002 - 28002)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114632, 1651, 8443, 8443, 3, 0, 0, 0, -10930.82, -1974.599, 92.26472, 0.8901179, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114632 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115019, 1651, 8443, 8443, 3, 0, 0, 0, -10965.17, -1970.184, 45.89899, 3.23748, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115019 (Area: 8443 - Difficulty: 23)
( 115062, 1651, 8443, 8443, 3, 0, 0, 0, -10932.1, -1947.387, 49.53877, 5.178862, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115062 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114629, 1651, 8443, 8443, 3, 0, 0, 0, -10967.65, -1997.776, 80.05616, 3.979351, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114629 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114526, 1651, 8443, 8443, 3, 0, 0, 0, -10845.64, -1776.122, 97.75092, 1.726201, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114526 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114339, 1651, 8443, 8443, 3, 0, 0, 0, -10866.7, -1781.08, 90.47, 1.448623, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114339 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115985, 1651, 8443, 8443, 3, 0, 0, 0, -10884.4, -1719.498, 90.55328, 3.461074, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115985 (Area: 8443 - Difficulty: 23)
( 115984, 1651, 8443, 8443, 3, 0, 0, 0, -10885.95, -1724.953, 90.55328, 1.836948, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115984 (Area: 8443 - Difficulty: 23)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10849.49, -1820.283, 107.7477, 4.389164, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 116002, 1651, 8443, 8443, 3, 0, 0, 0, -10884.07, -1722.602, 90.55328, 2.494789, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116002 (Area: 8443 - Difficulty: 23) (Auras: 32339 - 32339)
( 115967, 1651, 8443, 8443, 3, 0, 0, 0, -10871.92, -1736.686, 90.55617, 6.126473, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115967 (Area: 8443 - Difficulty: 23)
( 114792, 1651, 8443, 8443, 3, 0, 0, 0, -10853.4, -1981.604, 92.24299, 5.014647, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114792 (Area: 8443 - Difficulty: 23)
( 114541, 1651, 8443, 8443, 3, 0, 0, 0, -10846.72, -1822.403, 107.748, 3.69302, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114541 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115976, 1651, 8443, 8443, 3, 0, 0, 0, -10875.56, -1736.66, 90.55635, 3.290025, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115976 (Area: 8443 - Difficulty: 23)
( 115983, 1651, 8443, 8443, 3, 0, 0, 0, -10889.9, -1724.83, 90.55328, 0.9725864, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115983 (Area: 8443 - Difficulty: 23)
( 115982, 1651, 8443, 8443, 3, 0, 0, 0, -10891.51, -1721.523, 90.55328, 6.122034, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115982 (Area: 8443 - Difficulty: 23) (Auras: 31073 - 31073)
( 114542, 1651, 8443, 8443, 3, 0, 0, 0, -10852.56, -1821.043, 107.7468, 5.514511, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114542 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115981, 1651, 8443, 8443, 3, 0, 0, 0, -10888.15, -1718.481, 90.55328, 5.197168, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115981 (Area: 8443 - Difficulty: 23)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10886.53, -1996.269, 49.55752, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10876.9, -2001.899, 49.55752, 2.259269, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10828.47, -1961.54, 93.44202, 5.568544, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 115062, 1651, 8443, 8443, 3, 0, 0, 0, -10921.71, -2054.052, 49.55752, 0.5118436, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115062 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115019, 1651, 8443, 8443, 3, 0, 0, 0, -10925.6, -2059.083, 49.55752, 1.750988, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115019 (Area: 8443 - Difficulty: 23)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10904.56, -2051.212, 49.55753, 4.685557, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10861.81, -1999.255, 92.24299, 5.568544, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10873.81, -2005.009, 49.55753, 0.8148964, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10886.62, -2023.007, 49.55752, 0.3319124, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10904.04, -2036.974, 49.55752, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114526, 1651, 8443, 8443, 3, 0, 0, 0, -10853.55, -1713.618, 96.27826, 4.837142, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114526 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10904.7, -2029.33, 49.55752, 5.168778, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114526, 1651, 8443, 8443, 3, 0, 0, 0, -10853.18, -1717.516, 96.27826, 1.610197, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114526 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 114783, 1651, 8443, 8443, 3, 0, 0, 0, -10841.1, -1972.618, 93.44202, 2.044443, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114783 (Area: 8443 - Difficulty: 23)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10851.96, -1984.142, 92.24299, 2.494579, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10903.39, -2025.943, 49.55752, 1.925367, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114783, 1651, 8443, 8443, 3, 0, 0, 0, -10859.92, -2001.417, 92.24299, 2.044443, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114783 (Area: 8443 - Difficulty: 23)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10865.32, -2029.418, 92.25822, 4.625316, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 114792, 1651, 8443, 8443, 3, 0, 0, 0, -10843.24, -1969.25, 93.44202, 5.014647, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114792 (Area: 8443 - Difficulty: 23)
( 115059, 1651, 8443, 8443, 3, 0, 0, 0, -10882.15, -2025.368, 49.55752, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115059 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114783, 1651, 8443, 8443, 3, 0, 0, 0, -10864.85, -2032.203, 92.25822, 1.290912, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114783 (Area: 8443 - Difficulty: 23)
( 114783, 1651, 8443, 8443, 3, 0, 0, 0, -10825.78, -2003.38, 92.24298, 2.066244, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114783 (Area: 8443 - Difficulty: 23)
( 115059, 1651, 8443, 8443, 3, 0, 0, 0, -10909.51, -2067.507, 49.55752, 1.002726, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115059 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 114526, 1651, 8443, 8443, 3, 0, 0, 0, -10843.11, -1715.757, 96.27826, 5.301922, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114526 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10890.54, -2056.391, 49.55752, 0.3319124, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10851.7, -2022.313, 92.25822, 2.494579, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10827.06, -1963.821, 93.44202, 2.494579, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10828.75, -1985.835, 92.24298, 5.040791, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 114792, 1651, 8443, 8443, 3, 0, 0, 0, -10826.32, -1986.771, 92.24298, 3.443807, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114792 (Area: 8443 - Difficulty: 23)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10827.69, -2002.004, 92.24298, 6.233469, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 114526, 1651, 8443, 8443, 3, 0, 0, 0, -10840.75, -1717.457, 96.27826, 2.438507, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114526 (Area: 8443 - Difficulty: 23) (Auras: 227526 - 227526)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114792, 1651, 8443, 8443, 3, 0, 0, 0, -10853.13, -2019.773, 92.25822, 5.014647, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114792 (Area: 8443 - Difficulty: 23)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10890.1, -2082.101, 49.55752, 0.3319124, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10835.13, -2038.965, 91.00822, 3.982658, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10901.68, -2067.809, 49.55752, 0.6392534, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115059, 1651, 8443, 8443, 3, 0, 0, 0, -10909.98, -2074.457, 49.55752, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115059 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10880.37, -2055.528, 49.55753, 2.019009, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 114792, 1651, 8443, 8443, 3, 0, 0, 0, -10832.71, -2026.873, 91.00824, 5.014647, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114792 (Area: 8443 - Difficulty: 23)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10895.7, -2084.917, 49.55752, 0.3319124, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10892.68, -2068.993, 49.55752, 0.3319124, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114783, 1651, 8443, 8443, 3, 0, 0, 0, -10836.23, -2041.222, 91.00823, 1.290912, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114783 (Area: 8443 - Difficulty: 23)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10909.28, -2074.542, 49.55752, 0.3319124, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 114796, 1651, 8443, 8443, 3, 0, 0, 0, -10831.97, -2029.635, 91.00824, 2.050664, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114796 (Area: 8443 - Difficulty: 23)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 115059, 1651, 8443, 8443, 3, 0, 0, 0, -10892.61, -2069.353, 49.55752, 0.5051143, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115059 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115115, 0, 8443, 8443, 3, 0, 0, 0, 3, 0, 10.5, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115115 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10902.58, -2085.641, 49.55752, 0.3319124, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 115033, 1651, 8443, 8443, 3, 0, 0, 0, -10888.94, -2074.878, 49.55752, 0.3319124, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115033 (Area: 8443 - Difficulty: 23) (Auras: 228980 - 228980)
( 115059, 1651, 8443, 8443, 3, 0, 0, 0, -10895.49, -2084.785, 49.55752, 5.618784, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115059 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115059, 1651, 8443, 8443, 3, 0, 0, 0, -10901.69, -2085.78, 49.55752, 2.088761, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115059 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10889.2, -2075.012, 49.55752, 3.032929, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115061, 1651, 8443, 8443, 3, 0, 0, 0, -10889.93, -2081.965, 49.55752, 3.032929, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115061 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115059, 1651, 8443, 8443, 3, 0, 0, 0, -10907.6, -2085.925, 49.55752, 5.618784, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115059 (Area: 8443 - Difficulty: 23) (Auras: 35356 - 35356)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11063.14, -2015.81, 114.6081, 6.043159, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11048.32, -2004.727, 115.4257, 5.133496, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0) (Auras: 145363 - 145363)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11096.79, -2100.206, 98.17137, 4.295646, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11134.15, -2008.504, 97.83997, 0.3776134, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 12380, 0, 41, 2562, 1, 0, 0, 0, -11111.47, -2036.193, 48.041, 3.437846, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 12380 (Area: 2562 - Difficulty: 0) (Auras: 186571 - 186571)
( 114781, 0, 41, 2562, 1, 0, 0, 0, -11062.42, -2016.684, 117.2723, 5.397585, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114781 (Area: 2562 - Difficulty: 0) (Auras: 229209 - 229209)
( 115006, 0, 41, 2562, 1, 0, 0, 0, -11126.03, -1999.3, 14.45967, 0.02767495, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115006 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11017.03, -2040.467, 121.7082, 3.913081, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 68819, 0, 41, 2562, 1, 0, 0, 0, -11018.12, -2051.608, 89.61996, 2.478864, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 68819 (Area: 2562 - Difficulty: 0)
( 115227, 0, 41, 2562, 1, 0, 0, 0, -11025.56, -2015.113, 95.09755, 5.357655, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115227 (Area: 2562 - Difficulty: 0) (Auras: 228518 - 228518)
( 114631, 0, 41, 2562, 1, 0, 0, 0, -11123.24, -2006.866, 47.26961, 4.304931, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114631 (Area: 2562 - Difficulty: 0)
( 115228, 0, 41, 2562, 1, 0, 0, 0, -11062.43, -2016.681, 114.6914, 5.357655, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115228 (Area: 2562 - Difficulty: 0) (Auras: 228518 - 228518)
( 115009, 0, 41, 2562, 1, 0, 0, 0, -11126.58, -2000.63, 14.49395, 0.3411688, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115009 (Area: 2562 - Difficulty: 0) (Auras: )
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11014.44, -2053.531, 89.75873, 0.6403805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0) (Auras: 145363 - 145363)
( 114821, 0, 41, 2562, 1, 0, 0, 0, -11003.34, -2055.302, 92.7111, 2.710582, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114821 (Area: 2562 - Difficulty: 0)
( 100813, 0, 41, 2562, 1, 0, 0, 0, -11018.7, -2003.502, 26.13934, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 100813 (Area: 2562 - Difficulty: 0)
( 116680, 0, 41, 2562, 1, 0, 0, 0, -11120.94, -2035.602, 47.15884, 3.08244, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116680 (Area: 2562 - Difficulty: 0) (Auras: 145363 - 145363)
( 114821, 0, 41, 2562, 1, 0, 0, 0, -11020.24, -2065.832, 89.64951, 4.043395, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114821 (Area: 2562 - Difficulty: 0)
( 114310, 0, 41, 2562, 1, 0, 0, 0, -11121.56, -2008.486, 47.1966, 4.317957, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114310 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -10967.21, -1972.784, 101.166, 5.778349, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 12379, 0, 41, 2562, 1, 0, 0, 0, -11121.64, -2010.997, 14.0294, 2.436013, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 12379 (Area: 2562 - Difficulty: 0) (Auras: 186571 - 186571)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11017.29, -1905.113, 116.8234, 3.730815, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 115004, 0, 41, 2562, 1, 0, 0, 0, -11101.2, -1975.539, 5.988404, 4.885742, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115004 (Area: 2562 - Difficulty: 0) (Auras: 193760 - 193760)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11089.02, -2040.437, 83.19359, 3.343415, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 115009, 0, 41, 2562, 1, 0, 0, 0, -11124.22, -2002.906, 14.2403, 5.821214, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115009 (Area: 2562 - Difficulty: 0) (Auras: )
( 18255, 0, 41, 2562, 1, 0, 0, 0, -11115.38, -2016.101, 47.16006, 3.738746, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 18255 (Area: 2562 - Difficulty: 0) (Auras: 211179 - 211179)
( 114821, 0, 41, 2562, 1, 0, 0, 0, -11012.87, -2070.906, 68.75018, 4.171209, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114821 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11139.96, -2005.374, 140.8074, 1.155337, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 113418, 0, 41, 2562, 1, 0, 0, 0, -11028.09, -2051.139, 89.61089, 0.2121756, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 113418 (Area: 2562 - Difficulty: 0) (Auras: 229150 - 229150)
( 114821, 0, 41, 2562, 1, 0, 0, 0, -11025.64, -2048.354, 89.6244, 4.032607, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114821 (Area: 2562 - Difficulty: 0)
( 114678, 0, 41, 2562, 1, 0, 0, 0, -11025.6, -2015.111, 97.72633, 5.397585, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114678 (Area: 2562 - Difficulty: 0) (Auras: 229209 - 229209)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11057.13, -2021.331, 139.7565, 4.217355, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 115009, 0, 41, 2562, 1, 0, 0, 0, -11099.83, -2030.429, 46.84723, 2.511415, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115009 (Area: 2562 - Difficulty: 0)
( 115009, 0, 41, 2562, 1, 0, 0, 0, -11125.84, -2001.869, 14.4078, 0.7374741, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115009 (Area: 2562 - Difficulty: 0) (Auras: )
( 114821, 0, 41, 2562, 1, 0, 0, 0, -11027.46, -2057.498, 89.62426, 3.7295, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114821 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11085.48, -2010.428, 121.8423, 5.633767, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 114822, 0, 41, 2562, 1, 0, 0, 0, -11028.09, -2051.139, 89.61089, 0.2121756, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114822 (Area: 2562 - Difficulty: 0)
( 61375, 0, 41, 2562, 1, 0, 0, 0, -11051.36, -1922.414, -16.93036, 5.627913, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 61375 (Area: 2562 - Difficulty: 0)
( 61375, 0, 41, 2562, 1, 0, 0, 0, -11032.46, -1904.584, -33.26728, 1.110932, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 61375 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11125.04, -1898.649, 90.99459, 5.350084, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0) (Auras: 145363 - 145363)
( 12379, 0, 41, 2562, 1, 0, 0, 0, -11102.41, -1958.109, 0.8138741, 4.490536, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 12379 (Area: 2562 - Difficulty: 0) (Auras: 186571 - 186571)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11137.68, -1881.419, 98.82465, 2.139087, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 12379, 0, 41, 2562, 1, 0, 0, 0, -11038.88, -1910.25, -3.599879, 2.577924, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 12379 (Area: 2562 - Difficulty: 0) (Auras: 186571 - 186571)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11108.12, -1883.133, 128.1689, 6.258762, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11131.41, -2126.202, 146.4742, 2.465736, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 61375, 0, 41, 2562, 1, 0, 0, 0, -11053.54, -1989.972, -23.57404, 1.238257, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 61375 (Area: 2562 - Difficulty: 0)
( 61375, 0, 41, 2562, 1, 0, 0, 0, -11067.07, -1968.559, -23.66095, 3.958611, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 61375 (Area: 2562 - Difficulty: 0)
( 115169, 0, 41, 2562, 1, 0, 0, 0, -10953.61, -1881.977, -14.38565, 3.121794, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115169 (Area: 2562 - Difficulty: 0) (Auras: 229122 - 229122)
( 61375, 0, 41, 2562, 1, 0, 0, 0, -11101.23, -1940.704, -10.82084, 0.07666135, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 61375 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11164.21, -2018.515, 90.46029, 3.649487, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11129.44, -1824.233, 148.2412, 3.204138, 120, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0) (possible waypoints or random movement)
( 115024, 0, 41, 2562, 1, 0, 0, 0, -11148.81, -1947.812, 90.91125, 4.936004, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115024 (Area: 2562 - Difficulty: 0)
( 115164, 0, 41, 2562, 1, 0, 0, 0, -11093.17, -2005.29, 13.30673, 2.805932, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115164 (Area: 2562 - Difficulty: 0) (Auras: 42459 - 42459, 204227 - 204227)
-- ( 32638, 0, 41, 2562, 1, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 32638 (Area: 2562 - Difficulty: 0) (Auras: 61424 - 61424) - !!! on transport - transport template not found !!!
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, -4597.666, -2471.409, 2876.366, 5.437465, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 114350, 1651, 8443, 8443, 3, 0, 0, 0, -4599.056, -2524.583, 2876.593, 1.708567, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114350 (Area: 8443 - Difficulty: 23) (Auras: 189573 - 189573)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4599.219, -2519.971, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 114350, 1651, 8443, 8443, 3, 0, 0, 0, -4599.056, -2524.583, 2876.593, 1.708567, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114350 (Area: 8443 - Difficulty: 23) (Auras: 189573 - 189573)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4599.336, -2526.546, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4598.118, -2527.466, 2876.673, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4608.741, -2508.735, 2876.721, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4597.321, -2526.736, 2876.721, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4600.017, -2530.561, 2878.272, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 114350, 1651, 8443, 8443, 3, 0, 0, 0, -4599.056, -2524.583, 2876.593, 1.708567, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114350 (Area: 8443 - Difficulty: 23) (Auras: 189573 - 189573)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4599.379, -2520.247, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4601.791, -2518.907, 2876.721, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4593.526, -2509.838, 2876.721, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 114350, 1651, 8443, 8443, 3, 0, 0, 0, -4599.056, -2524.583, 2876.593, 1.708567, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114350 (Area: 8443 - Difficulty: 23) (Auras: 189573 - 189573)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4599.219, -2521.94, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4599.491, -2530.922, 2878.424, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4578.722, -2521.891, 2876.721, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4599.567, -2519.803, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4601.389, -2506.485, 2876.721, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4599.716, -2520.687, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4599.76, -2500.811, 2876.721, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4598.735, -2498.598, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4587.783, -2518.564, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4588.319, -2519.427, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4613.027, -2523.532, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4599.601, -2518.99, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4602.884, -2521.176, 2876.721, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4602.613, -2512.841, 2876.593, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 116865, 1651, 8443, 8443, 3, 0, 0, 0, -4475.392, -2692.659, 1019.617, 0.607305, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116865 (Area: 8443 - Difficulty: 23)
( 116865, 1651, 8443, 8443, 3, 0, 0, 0, -4553.958, -2768.659, 801.7769, 1.398141, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116865 (Area: 8443 - Difficulty: 23)
( 116865, 1651, 8443, 8443, 3, 0, 0, 0, -5064.412, -2941.296, 882.929, 4.461972, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116865 (Area: 8443 - Difficulty: 23)
( 116865, 1651, 8443, 8443, 3, 0, 0, 0, -4879.532, -2786.312, 757.2325, 0.8185951, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116865 (Area: 8443 - Difficulty: 23)
( 116865, 1651, 8443, 8443, 3, 0, 0, 0, -4250.814, -2700.936, 819.3504, 5.038812, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116865 (Area: 8443 - Difficulty: 23)
( 116865, 1651, 8443, 8443, 3, 0, 0, 0, -4031.432, -2867.149, 848.3797, 1.310731, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116865 (Area: 8443 - Difficulty: 23)
( 116865, 1651, 8443, 8443, 3, 0, 0, 0, -4122.42, -2880.673, 718.5941, 5.014591, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116865 (Area: 8443 - Difficulty: 23)
( 116494, 1651, 8443, 8443, 3, 0, 0, 0, -4955.172, -2699.371, 152.5366, 3.477777, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116494 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 116494, 1651, 8443, 8443, 3, 0, 0, 0, -4984.954, -2713.726, 152.5366, 5.677995, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116494 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 116494, 1651, 8443, 8443, 3, 0, 0, 0, -4998.369, -2669.243, 152.5366, 3.06174, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116494 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 115417, 1651, 8443, 8443, 3, 0, 0, 0, -4654.895, -2619.932, 153.4379, 3.823071, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115417 (Area: 8443 - Difficulty: 23) (Auras: ) (possible waypoints or random movement)
( 115419, 1651, 8443, 8443, 3, 0, 0, 0, -4778.19, -2562.442, 162.4379, 6.068014, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115419 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 114252, 1651, 8443, 8443, 3, 0, 0, 0, -4348.227, -2628.24, 154.4462, 0.08515065, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114252 (Area: 8443 - Difficulty: 23) (Auras: 227451 - 227451)
( 115417, 1651, 8443, 8443, 3, 0, 0, 0, -4773.407, -2631.021, 153.6404, 3.172243, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 115417 (Area: 8443 - Difficulty: 23) (Auras: ) (possible waypoints or random movement)
( 115419, 1651, 8443, 8443, 3, 0, 0, 0, -4484.935, -2584.821, 163.2612, 4.078941, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115419 (Area: 8443 - Difficulty: 23) (Auras: )
( 115418, 1651, 8443, 8443, 3, 0, 0, 0, -4540.431, -2577.043, 154.3045, 5.324764, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115418 (Area: 8443 - Difficulty: 23) (Auras: )
( 115417, 1651, 8443, 8443, 3, 0, 0, 0, -4491.639, -2610.504, 153.4378, 2.448489, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115417 (Area: 8443 - Difficulty: 23) (Auras: )
( 115418, 1651, 8443, 8443, 3, 0, 0, 0, -4412.956, -2552.743, 153.4379, 2.640414, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115418 (Area: 8443 - Difficulty: 23) (Auras: )
( 116494, 1651, 8443, 8443, 3, 0, 0, 0, -4046.842, -2767.58, 152.5368, 1.972449, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116494 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4577.483, -2525.64, 154.3212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 116494, 1651, 8443, 8443, 3, 0, 0, 0, -4031.439, -2826.252, 152.5367, 3.111984, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116494 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 116494, 1651, 8443, 8443, 3, 0, 0, 0, -3989.355, -2808.361, 152.5367, 2.428921, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116494 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4421.38, -2545.377, 153.3469, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4344.772, -2629.311, 153.3468, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4343.042, -2630.139, 153.3471, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4329.402, -2650.776, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4321.682, -2647.93, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4338.939, -2635.748, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 114252, 1651, 8443, 8443, 3, 0, 0, 0, -4351.573, -2630.302, 153.5667, 1.554037, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114252 (Area: 8443 - Difficulty: 23) (Auras: 227451 - 227451)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4357.144, -2625.324, 153.3471, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4355.666, -2631.621, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4334.536, -2625.207, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 114252, 1651, 8443, 8443, 3, 0, 0, 0, -4352.491, -2627.635, 154.4456, 1.902284, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114252 (Area: 8443 - Difficulty: 23) (Auras: 227451 - 227451)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4361.781, -2610.115, 153.347, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4342.875, -2619.561, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4349.58, -2604.066, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4353.692, -2601.235, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4372.11, -2622.422, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 114252, 1651, 8443, 8443, 3, 0, 0, 0, -4353.267, -2628.134, 154.4656, 5.492991, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114252 (Area: 8443 - Difficulty: 23) (Auras: 227451 - 227451)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4354.112, -2625.284, 153.347, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4342.985, -2618.91, 153.3469, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4328.019, -2630.096, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4348.915, -2651.719, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4306.254, -2592.784, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4335.165, -2646.491, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 114252, 1651, 8443, 8443, 3, 0, 0, 0, -4361.959, -2625.447, 154.4605, 2.70437, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114252 (Area: 8443 - Difficulty: 23) (Auras: 227451 - 227451)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4355.067, -2605.961, 153.347, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4323.467, -2606.719, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4331.596, -2613.219, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, -4357.504, -2598.426, 153.3469, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4360.293, -2604.5, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, -4346.072, -2582.11, 153.5212, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 63420, 1651, 8443, 8443, 3, 0, 0, 0, -4474.01, -2597.071, 153.347, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 63420 (Area: 8443 - Difficulty: 23)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, 4088.49, -2236.484, 743.7255, 4.700223, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4145.408, -2039.961, 750.0696, 1.049321, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4157.922, -2039.481, 748.7856, 5.300201, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4174.796, -2051.163, 730.7505, 5.873086, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4163.401, -2082.526, 727.8912, 4.967656, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4113.805, -2089.496, 748.0912, 3.841634, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4154.931, -2047.572, 727.8912, 2.992376, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4145.7, -2087.528, 727.8912, 1.76087, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23) (Auras: 232309 - 232309)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4170.7, -2062.904, 730.6912, 0.06618091, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23) (Auras: 232309 - 232309)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4138.769, -2087.401, 751.4057, 3.836105, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, 3984.245, -2250.618, 797.3057, 0.4499379, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4168.244, -2046.985, 751.0548, 5.402395, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, 4128.797, -2283.335, 731.0414, 5.714716, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4177.066, -2064.867, 731.7578, 5.625439, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4158.502, -2082.139, 749.8741, 1.065597, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4121.757, -2042.952, 748.7322, 6.07343, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 115386, 1651, 8443, 8443, 3, 0, 0, 0, 3938.674, -2223.778, 781.4248, 3.161448, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115386 (Area: 8443 - Difficulty: 23) (Auras: )
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4137.421, -2033.334, 730.7192, 3.842057, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4118.056, -2053.379, 730.6912, 6.022497, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4115.452, -2061.121, 730.6912, 1.575896, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420); -- 115831 (Area: 8443 - Difficulty: 23)

INSERT IGNORE INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4119.58, -2041.572, 730.6911, 5.343441, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23)
( 116804, 1651, 8443, 8443, 3, 0, 0, 0, 4145.182, -2059.3, 727.2621, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116804 (Area: 8443 - Difficulty: 23)
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4163.771, -2036.224, 730.6912, 4.128742, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23) (possible waypoints or random movement)
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4128.475, -2093.186, 727.9058, 6.20057, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4151.285, -2032.132, 730.6398, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23) (Auras: 145363 - 145363)
( 114913, 1651, 8443, 8443, 3, 0, 0, 0, 3800.63, -1876.49, 869.9778, 4.188633, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114913 (Area: 8443 - Difficulty: 23)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4120.228, -2039.912, 730.6911, 4.533541, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23)
( 115488, 1651, 8443, 8443, 3, 0, 0, 0, 4035.703, -2252.434, 764.3607, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115488 (Area: 8443 - Difficulty: 23) (Auras: )
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4174.474, -2076.044, 748.9894, 6.120323, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4173.164, -2066.432, 751.2996, 5.680091, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, 4138.914, -2284.345, 711.4178, 1.695799, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4173.848, -2049.526, 730.6912, 5.309893, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 115487, 1651, 8443, 8443, 3, 0, 0, 0, 4145.317, -2065.753, 727.7527, 4.159483, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115487 (Area: 8443 - Difficulty: 23) (Auras: 229594 - 229594, 227369 - 227369, 145363 - 145363)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4173.807, -2049.264, 730.6912, 3.150992, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23)
( 115486, 1651, 8443, 8443, 3, 0, 0, 0, 3938.446, -2241.493, 779.3878, 1.691206, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115486 (Area: 8443 - Difficulty: 23) (Auras: 145363 - 145363)
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4130.917, -2033.553, 748.7715, 0.08701377, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4127.905, -2053.342, 727.8912, 5.853397, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4144.148, -2083.919, 727.8912, 1.321579, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23) (Auras: 232309 - 232309)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4116.706, -2063.489, 730.6912, 3.510272, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4161.631, -2092.026, 748.1719, 3.785038, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23)
( 115489, 1651, 8443, 8443, 3, 0, 0, 0, 4143.504, -2068.656, 727.9002, 1.206694, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115489 (Area: 8443 - Difficulty: 23) (Auras: 229485 - 229485)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4174.515, -2061.93, 730.6911, 5.790884, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23) (Auras: 232309 - 232309)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4163.935, -2056.013, 750.9821, 3.737573, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, 4005.553, -2262.347, 795.257, 0.4024282, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 115694, 1651, 8443, 8443, 3, 0, 0, 0, 3964.866, -2028.788, 927.5717, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115694 (Area: 8443 - Difficulty: 23) (Auras: 229906 - 229906)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4150.668, -2072.598, 749.7014, 3.937785, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4131.265, -2045.129, 752.1709, 2.794888, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4149.049, -2031.599, 730.6398, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23) (Auras: 145363 - 145363)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, 4096.463, -2273.47, 753.9464, 2.289373, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4137.57, -2076.057, 751.1802, 0.5609534, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4140.207, -2030.724, 730.6398, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23) (Auras: 145363 - 145363)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4124.669, -2039.068, 730.7814, 5.428848, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 115694, 1651, 8443, 8443, 3, 0, 0, 0, 3974.576, -2001.944, 927.5717, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115694 (Area: 8443 - Difficulty: 23) (Auras: 229906 - 229906)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4144.999, -2086.899, 727.8912, 5.108096, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23) (Auras: 232309 - 232309)
( 114913, 1651, 8443, 8443, 3, 0, 0, 0, 3397.11, -2142.851, 977.4353, 6.115651, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114913 (Area: 8443 - Difficulty: 23)
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4161.649, -2061.81, 727.8912, 0.0464332, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, 4037.136, -2252.165, 785.1076, 2.90327, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4111.28, -2055.251, 751.7977, 3.414006, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, 4145.387, -2283.979, 717.3177, 1.695799, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4173.606, -2048.339, 730.6912, 3.066568, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23)
( 115486, 1651, 8443, 8443, 3, 0, 0, 0, 4090.401, -2261.589, 737.533, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115486 (Area: 8443 - Difficulty: 23) (Auras: )
( 115501, 1651, 8443, 8443, 3, 0, 0, 0, 4146.192, -2068.635, 727.9002, 1.96279, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115501 (Area: 8443 - Difficulty: 23) (Auras: 229485 - 229485)
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4150.025, -2029.043, 730.6398, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23) (Auras: 145363 - 145363)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4173.083, -2056.34, 748.7898, 5.687208, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4117.316, -2063.392, 730.6912, 1.731929, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23)
( 115694, 1651, 8443, 8443, 3, 0, 0, 0, 3939.42, -2007.51, 926.9313, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115694 (Area: 8443 - Difficulty: 23) (Auras: 229906 - 229906)
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4146, -2031.819, 730.6398, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23) (Auras: 145363 - 145363)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4172.299, -2060.326, 730.9103, 4.626094, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23) (Auras: 232309 - 232309)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4131.661, -2035.306, 751.0809, 2.761909, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 115831, 1651, 8443, 8443, 3, 0, 0, 0, 4121.934, -2041.841, 730.6912, 1.756984, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115831 (Area: 8443 - Difficulty: 23)
( 115484, 1651, 8443, 8443, 3, 0, 0, 0, 4100.285, -2247.747, 746.7677, 4.070464, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115484 (Area: 8443 - Difficulty: 23) (Auras: 229621 - 229621)
( 115694, 1651, 8443, 8443, 3, 0, 0, 0, 3948.79, -1980.311, 926.9313, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115694 (Area: 8443 - Difficulty: 23) (Auras: 229906 - 229906)
( 116491, 1651, 8443, 8443, 3, 0, 0, 0, 4174.195, -2093.313, 728.0251, 3.5834, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116491 (Area: 8443 - Difficulty: 23)
( 116551, 1651, 8443, 8443, 3, 0, 0, 0, 4120.989, -2074.86, 749.7751, 5.751668, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116551 (Area: 8443 - Difficulty: 23)
( 116495, 1651, 8443, 8443, 3, 0, 0, 0, 4119.391, -2076.323, 748.6912, 3.568071, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116495 (Area: 8443 - Difficulty: 23)
( 114790, 1651, 8443, 8443, 3, 0, 0, 0, 3657.497, -2125.797, 815.6808, 4.998693, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 114790 (Area: 8443 - Difficulty: 23)
( 114844, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114844 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29920 - 29920) (possible waypoints or random movement)
( 114844, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 114844 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598, 29920 - 29920) (possible waypoints or random movement)
( 105422, 1651, 8443, 8443, 3, 0, 0, 0, 4150.06, -2070.634, 727.9745, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 105422 (Area: 8443 - Difficulty: 23)
( 115406, 1651, 8443, 8443, 3, 0, 0, 0, 3915.781, -2248.519, 778.0812, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115406 (Area: 8443 - Difficulty: 23) (Auras: 232713 - 232713, 229442 - 229442, 229467 - 229467, 229490 - 229490)
( 115488, 1651, 8443, 8443, 3, 0, 0, 0, 3933.093, -2267.09, 780.3699, 3.255775, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115488 (Area: 8443 - Difficulty: 23) (Auras: 145363 - 145363)
( 115402, 1651, 8443, 8443, 3, 0, 0, 0, 3915.863, -2236.941, 779.3514, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115402 (Area: 8443 - Difficulty: 23) (Auras: 232711 - 232711, 229442 - 229442, 229467 - 229467, 229490 - 229490)
( 115401, 1651, 8443, 8443, 3, 0, 0, 0, 3909.446, -2225.17, 784.785, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115401 (Area: 8443 - Difficulty: 23) (Auras: 232711 - 232711, 229442 - 229442, 229467 - 229467, 229490 - 229490)
( 73400, 1651, 8443, 8443, 3, 0, 0, 0, 4148.388, -2072.841, 727.9002, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 73400 (Area: 8443 - Difficulty: 23) (Auras: 147490 - 147490)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 10, 0, 0, 0, 1, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598) (possible waypoints or random movement)
( 115388, 1651, 8443, 8443, 3, 0, 0, 0, 3909.041, -2248.783, 778.2217, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115388 (Area: 8443 - Difficulty: 23) (Auras: 232710 - 232710, 229489 - 229489)
( 115406, 1651, 8443, 8443, 3, 0, 0, 0, 3915.735, -2254.422, 777.5188, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115406 (Area: 8443 - Difficulty: 23) (Auras: 232713 - 232713, 229442 - 229442, 229467 - 229467, 229490 - 229490)
( 115407, 1651, 8443, 8443, 3, 0, 0, 0, 3896.476, -2243.25, 780.2885, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115407 (Area: 8443 - Difficulty: 23) (Auras: 229442 - 229442, 229467 - 229467, 229490 - 229490)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 115395, 1651, 8443, 8443, 3, 0, 0, 0, 3908.661, -2254.637, 777.1992, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 115395 (Area: 8443 - Difficulty: 23) (Auras: 232712 - 232712, 229442 - 229442, 229467 - 229467, 229490 - 229490)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420), -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)
( 116418, 0, 8443, 8443, 3, 0, 0, 0, -0.007052065, 0.007241555, 0.02745139, 3.141593, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420); -- 116418 (Area: 8443 - Difficulty: 23) (Auras: 46598 - 46598)

SET @XAKAL := 98206;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_general_xakal', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@XAKAL, 9820601, 9820602);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_arc_fissure',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`flags_extra` = `flags_extra` |128,
`InhabitType` = 8
WHERE `entry` IN (100342, 10034201, 10034202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_arc_dread_felbat',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`InhabitType` = 4
WHERE `entry` IN (100393, 10039301, 10039302);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (197776, 197786);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(197776, 'spell_xakal_fel_fissure'),
(197786, 'spell_arc_bombardment');

DELETE FROM `areatrigger_template` WHERE `id` IN (6940, 8007, 5355);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(6940, 3, 0, 0, 0, 0, 0, 0, 0, 'at_arc_shadow_slash', 23420),
(8007, 0, 0, 4, 4, 0, 0, 0, 0, 'at_arc_wake_of_shadow', 23420),
(5355, 4, 4, 4.5, 4.5, 5, 5, 0.3, 0.3, 'at_arc_fel_fissure', 23420);

DELETE FROM `areatrigger_template_polygon_vertices` WHERE `AreaTriggerId` IN (6940);
INSERT INTO `areatrigger_template_polygon_vertices` (`AreaTriggerId`, `Idx`, `VerticeX`, `VerticeY`, `VerticeTargetX`, `VerticeTargetY`, `VerifiedBuild`) VALUES
(6940, 3, 0.75, 4, 0, 0, 23420),
(6940, 2, 0.75, -4, 0, 0, 23420),
(6940, 1, -0.75, -4, 0, 0, 23420),
(6940, 0, -0.75, 4, 0, 0, 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (6940, 8007, 5355);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(6940, 6940, 0, 0, 0, 0, 0, 8286, 20000, 23420),
(8007, 8007, 0, 0, 0, 0, 26, 0, 20000, 23420),
(5355, 5355, 0, 0, 0, 0, 0, 0, 0, 23420);

DELETE FROM `instance_template` WHERE `map` = 1516;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (1516, 0, 'instance_the_arcway', 0);

DELETE FROM `creature_text` WHERE `CreatureID` = @XAKAL;
INSERT INTO `creature_text`(`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `Sound`, `comment`) VALUES
(@XAKAL, '0', '0', 'Form up, maggots! Secure the breach until we receive orders from Gul\'dan!', '14', '100', '58644', 'XAKAL - INTRO'),
(@XAKAL, '1', '0', 'Good! Some entertainment! I was getting restless!', '14', '100', '58645', 'XAKAL - AGGRO'),
(@XAKAL, '2', '0', 'All who rise against the Legion are doomed!', '14', '100', '58646', 'XAKAL - FEL_FISSURE'),
(@XAKAL, '3', '0', 'All in my shadow will crumble and fall!', '14', '100', '58639', 'XAKAL - SHADOW_SLASH'),
(@XAKAL, '4', '1', 'Reinforcements to me! NOW!', '14', '100', '58638', 'XAKAL - FEL_BATS'),
(@XAKAL, '5', '0', 'More fuel to stop the fel fires.', '14', '100', '58640', 'XAKAL - KILL'),
(@XAKAL, '5', '1', 'Another notch for my fel blade.', '14', '100', '58642', 'XAKAL - KILL_2'),
(@XAKAL, '5', '2', 'No match for the great Xakal!', '14', '100', '58647', 'XAKAL - KILL_3'),
(@XAKAL, '6', '0', 'Gather, minions! Feast on their corpses, where the blacken is still warm.', '14', '100', '58648', 'XAKAL - WIPE'),
(@XAKAL, '7', '0', 'No... NO! None can best... the great Xakal...', '14', '100', '58641', 'XAKAL - DEAD');

SET @IVANYR := 98203;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_ivanyr', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@IVANYR, 9820301, 9820302);

UPDATE `creature_template` SET
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`unit_flags` = 256
WHERE `entry` IN (98734, 9873401, 9873402);




DELETE FROM `spell_script_names` WHERE `spell_id` IN (196392, 220581, 196804, 196805);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(196392, 'spell_ivanyr_overcharge_mana'),
(220581, 'spell_ivanyr_charged_bolt'),
(196804, 'spell_ivanyr_nether_link'),
(196805, 'spell_ivanyr_nether_link_dmg');

DELETE FROM `areatrigger_template` WHERE `id` IN (8013, 5285);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8013, 0, 0, 2, 2, 0, 0, 0, 0, 'at_arc_charged_bolt', 23420),
(5285, 3, 0, 5.19397, 5.19397, 0, 0, 0, 0, 'at_arc_nether_link', 23420);

DELETE FROM `areatrigger_template_polygon_vertices` WHERE `AreaTriggerId` = 5285;
INSERT IGNORE INTO `areatrigger_template_polygon_vertices` (`AreaTriggerId`, `Idx`, `VerticeX`, `VerticeY`, `VerticeTargetX`, `VerticeTargetY`, `VerifiedBuild`) VALUES
(5285, 2, -9.150391, 17.40723, 0, 0, 23420),
(5285, 1, 13.60913, 10.91553, 0, 0, 23420),
(5285, 0, -0.671875, -4.080078, 0, 0, 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5285,8013);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8013, 8013, 0, 0, 0, 0, 0, 12935, 20000, 23420), -- SpellId : 220569
(5285, 5285, 0, 0, 0, 0, 0, 0, 120000, 23420); -- SpellId : 196806

DELETE FROM `creature_text` WHERE `CreatureID` = @IVANYR;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@IVANYR, '0', '0', 'Stay back! It\'s mine!', '14', '100', '58644', 'IVANYR - INTRO'),
(@IVANYR, '1', '0', 'Thieves! The mana is MINE! ', '14', '100', '58645', 'IVANYR - AGGRO'),
(@IVANYR, '2', '0', 'Go away!', '14', '100', '58646', 'IVANYR - VOLATILE_MAGIC'),
(@IVANYR, '2', '1', 'Get away from my mana!', '14', '100', '58639', 'IVANYR - VOLATILE_MAGIC'),
(@IVANYR, '3', '0', 'Thieving wretch!', '14', '100', '58638', 'IVANYR - KILL'),
(@IVANYR, '3', '1', 'I warned you!', '14', '100', '58640', 'IVANYR - KILL'),
(@IVANYR, '3', '2', 'I will not be consumed!', '14', '100', '58642', 'IVANYR - KILL'),
(@IVANYR, '4', '0', 'More... more...', '14', '100', '58647', 'IVANYR - DEATH'),
(@IVANYR, '5', '0', 'No! I need more...', '14', '100', '58648', 'IVANYR - OVERCHARGE'),
(@IVANYR, '5', '1', 'No! I will not succumb.', '14', '100', '58641', 'IVANYR - OVERCHARGE');

SET @NALTIRA := 98207;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_naltira', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@NALTIRA, 9820701, 9820702);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_arc_vicious_manafang', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`InhabitType` = 4,
`unit_flags` = 2,
`unit_flags2` = `unit_flags2` |2048
WHERE `entry` IN (110966, 11096601, 11096602);

UPDATE `creature_template` SET 
`InhabitType` = 4,
`flags_extra` = `flags_extra` |128
WHERE `entry` = 68553;


DELETE FROM `spell_script_names` WHERE `spell_id` IN (199810, 199811, 200227, 199956, 200284, 200024, 224425, 211543);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(199810, 'spell_naltira_blink_strikes'),
(199811, 'spell_naltira_blink_strikes_dmg'),
(200227, 'spell_naltira_tangled_web'),
(200284, 'spell_naltira_tangled_web_dmg'),
(199956, 'spell_naltira_nether_venom'),
(200024, 'spell_naltira_nether_venom_dmg'),
(211543, 'spell_arc_devour');

DELETE FROM `areatrigger_template` WHERE `id` IN (5605);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(5605, 4, 0, 4.5, 4.5, 5, 5, 0.3, 0.3, 'at_arc_nether_venom', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5605);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5605, 5605, 0, 0, 0, 0, 0, 0, 300000, 23420);

DELETE FROM `instance_template` WHERE `map` = 1516;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (1516, 0, 'instance_the_arcway', 0);

DELETE FROM `creature_template_addon` WHERE `entry` = 110966;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(110966, 0, 0, 50331648, 1, 0, '');




UPDATE `creature_template` SET `ScriptName`='npc_flying_bomber' WHERE (`entry`='38918');
UPDATE `creature_template` SET `ScriptName`='npc_avion_gob' WHERE (`entry`='38929');
SET @VANDROS := 98208;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_advisor_vandros', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@VANDROS, 9820801, 9820802);

UPDATE `creature_template` SET
`ScriptName` = 'npc_arc_chrono_shard',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`unit_flags` = `unit_flags` |2|256|33587200
WHERE `entry` IN (103109, 102849);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_arc_timeless_wraith',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16
WHERE `entry` = 103130;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (202974, 220871, 203882, 203941, 203914, 203883, 203952);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(202974, 'spell_vandros_force_bomb'),
(220871, 'spell_vandros_unstable_mana'),
(203882, 'spell_vandros_banish_in_time'),
(203914, 'spell_vandros_banish_in_time_buff'),
(203883, 'spell_vandros_banish_in_time_tele'),
(203952, 'spell_arc_breach');

DELETE FROM `areatrigger_template` WHERE `id` IN (5879, 5985, 5903);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(5879, 0, 0, 2, 2, 0, 0, 0, 0, 'at_arc_force_bomb', 23420), -- SpellId 202975
(5985, 0, 4, 20, 20, 0, 0, 0, 0, '',  23420),-- SpellId 203882
(5903, 3, 2, 0, 0, 0, 0, 0, 0, 'at_arc_force_nova', 23420); -- SpellId 203090

DELETE FROM `areatrigger_template_polygon_vertices` WHERE `AreaTriggerId` = 5903;
INSERT IGNORE INTO `areatrigger_template_polygon_vertices` (`AreaTriggerId`, `Idx`, `VerticeX`, `VerticeY`, `VerticeTargetX`, `VerticeTargetY`, `VerifiedBuild`) VALUES
(5903, 33, 0.4619141, 0.1913452, 73.91016, 30.61469, 23420),
(5903, 32, 0.5, 0, 80, 0, 23420),
(5903, 31, 0.4619141, -0.1913452, 73.91016, -30.61467, 23420),
(5903, 30, 0.3535156, -0.3535461, 56.56836, -56.56854, 23420),
(5903, 29, 0.1914063, -0.4619446, 30.61426, -73.91037, 23420),
(5903, 28, 0, -0.5, 0, -80, 23420),
(5903, 27, -0.1914063, -0.4619446, -30.61426, -73.91037, 23420),
(5903, 26, -0.3535156, -0.3535461, -56.56836, -56.56854, 23420),
(5903, 25, -0.4619141, -0.1913452, -73.91016, -30.61467, 23420),
(5903, 24, -0.5, 0, -80, 0, 23420),
(5903, 23, -0.4619141, 0.1913452, -73.91016, 30.61469, 23420),
(5903, 22, -0.3535156, 0.3535461, -56.56836, 56.56854, 23420),
(5903, 21, -0.1914063, 0.4619446, -30.61426, 73.91037, 23420),
(5903, 20, 0, 0.5, 0, 80, 23420),
(5903, 19, 0.1914063, 0.4619446, 30.61426, 73.91037, 23420),
(5903, 18, 0.3535156, 0.3535461, 56.56836, 56.56854, 23420),
(5903, 17, 0.4619141, 0.1913452, 73.91016, 30.61469, 23420),
(5903, 16, 9.239258, 3.826843, 92.3877, 38.26834, 23420),
(5903, 15, 10, 0, 100, 0, 23420),
(5903, 14, 9.239258, -3.826843, 92.3877, -38.26834, 23420),
(5903, 13, 7.071289, -7.071075, 70.71094, -70.71068, 23420),
(5903, 12, 3.827148, -9.2388, 38.26855, -92.38795, 23420),
(5903, 11, 0, -10, 0, -100, 23420),
(5903, 10, -3.827148, -9.2388, -38.26855, -92.38795, 23420),
(5903, 9, -7.071289, -7.071075, -70.71094, -70.71068, 23420),
(5903, 8, -9.239258, -3.826843, -92.3877, -38.26834, 23420),
(5903, 7, -10, 0, -100, 0, 23420),
(5903, 6, -9.239258, 3.826843, -92.3877, 38.26834, 23420),
(5903, 5, -7.071289, 7.071075, -70.71094, 70.71069, 23420),
(5903, 4, -3.827148, 9.2388, -38.26855, 92.38794, 23420),
(5903, 3, 0, 10, 0, 100, 23420),
(5903, 2, 3.827148, 9.2388, 38.26855, 92.38794, 23420),
(5903, 1, 7.071289, 7.071075, 70.71094, 70.71069, 23420),
(5903, 0, 9.239258, 3.826843, 92.3877, 38.26834, 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5879, 5985, 5903);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5879, 5879, 0, 0, 0, 0, 0, 0, 5000, 23420), -- SpellId: 202975
(5985, 5985, 0, 0, 0, 0, 0, 0, 120000, 23420), -- SpellId : 203882
(5903, 5903, 0, 0, 0, 0, 0, 0, 12500, 23420); -- SpellId : 203090

DELETE FROM `creature_text` WHERE `CreatureID` = @VANDROS;
INSERT INTO `creature_text`(`CreatureID`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@VANDROS, '0', '0', 'My, my... Someone has made quite a mess down here. It has been too long since we purged these catacombs of refuse. It appears we have a rat infestation.', '14', '100', '58644', 'VANDROS - INTRO'),
(@VANDROS, '1', '0', 'Find the vermin and bring me their heads! Leave no stone unturned!', '14', '100', '58645', 'VANDROS - INTRO2'),
(@VANDROS, '2', '0', 'I have not survived for ten thousand years just to fall to a swarm of rats.', '14', '100', '58646', 'VANDROS - AGGRO'),
(@VANDROS, '3', '0', 'Have you vermin ever witnessed such raw power? I think not.', '14', '100', '58639', 'VANDROS - CHRONO_SHARDS'),
(@VANDROS, '4', '0', 'I am a conduit of the Nightwell\'s glorious power! I am NIGHTBORNE!', '14', '100', '58638', 'VANDROS - BANISH_IN_TIME'),
(@VANDROS, '5', '0', 'Enough! You little beasts are getting out of hand!', '14', '100', '58640', 'VANDROS - REACH_ON_TIME'),
(@VANDROS, '6', '0', 'For the glory of Elisande!', '14', '100', '58642', 'VANDROS - KILL'),
(@VANDROS, '6', '1', 'Think of this as a mercy killing.', '14', '100', '58647', 'VANDROS - KILL'),
(@VANDROS, '6', '2', 'So brave, but so... shortsighted.', '14', '100', '58648', 'VANDROS - KILL'),
(@VANDROS, '7', '0', 'Alas... blind courage only triumphs in the fairy tales.', '14', '100', '58641', 'VANDROS - WIPE'),
(@VANDROS, '8', '0', 'The Grand Magistrix... will have your heads for this...', '14', '100', '58641', 'VANDROS - DEATH');

replace INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES

(70915,'spell_dreamwalker_decay_periodic_timer'),
(70912,'spell_dreamwalker_decay_periodic_timer'),
(70916,'spell_dreamwalker_decay_periodic_timer'),
(70913,'spell_dreamwalker_decay_periodic_timer'),
(70921,'spell_dreamwalker_summoner'),
(70912,'spell_dreamwalker_summon_suppresser'),
(71032,'spell_dreamwalker_summoner'),
(71078,'spell_dreamwalker_summoner'),
(70933,'spell_dreamwalker_summoner'),
(72224,'spell_dreamwalker_summon_dream_portal'),
(72480,'spell_dreamwalker_summon_nightmare_portal'),
(71970,'spell_dreamwalker_nightmare_cloud'),
(72868,'spell_putricide_slime_puddle_aura'),
(72869,'spell_putricide_slime_puddle_aura'),
(62791,'spell_xt002_heart_overload_periodic');

UPDATE `gameobject_template` SET 
`ScriptName` = 'go_door_entrance'
WHERE `entry` = 259690;
UPDATE `creature_equip_template` SET `ItemID1` = '0' WHERE `CreatureID` = '464' AND `ID` = '1'; 
UPDATE `creature_template` SET `InhabitType` = 0 WHERE `entry` = 154;

SET @ENTRY := 7024;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,26290,0,0,0,15,26290,0,0,0,0,0,7,0,0,0,0,0,0,0,'Quest Credit on Quest Add');

UPDATE `quest_objectives` SET `Amount` = '5' WHERE `ID` = '266645'; 


UPDATE `creature_template` SET `faction` = 189 WHERE `entry` = 43340;



UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 43222;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 43247;


UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=43247; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=43247; 
UPDATE `creature` SET `phaseId`=0 WHERE `id`=43247; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=43247);


UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=43222; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=43222; 
UPDATE `creature` SET `phaseId`=0 WHERE `id`=43222; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=43222);

SET @ENTRY := 43611;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,26668,0,0,0,15,26668,0,0,0,0,0,7,0,0,0,0,0,0,0,'Quest Credit on Quest Add');

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 170405;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 170432;

UPDATE `world`.`creature_template` SET `scale` = '2' WHERE `entry` = '45582'; 
UPDATE `world`.`creature_template_model` SET `CreatureDisplayID` = '368' WHERE `CreatureID` = '1505' AND `CreatureDisplayID` = '539'; 
UPDATE `world`.`creature_template_model` SET `CreatureDisplayID` = '368' WHERE `CreatureID` = '103318' AND `CreatureDisplayID` = '539'; 
UPDATE `world`.`creature_template_model` SET `CreatureDisplayID` = '368' WHERE `CreatureID` = '45582' AND `CreatureDisplayID` = '539'; 
UPDATE `creature_template` SET `unit_flags` = 0, `dynamicflags` = 0 WHERE `entry` = 43851;

SET @ENTRY := 43730;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,26760,0,0,0,15,26760,0,0,0,0,0,7,0,0,0,0,0,0,0,'Quest Credit on Quest Add');


UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 43851;


UPDATE `creature_template` SET `HoverHeight` = 2.4 WHERE `entry` = 50372;
UPDATE `creature_template` SET `InhabitType` = 2 WHERE `entry` = 50372;

DELETE FROM `creature_loot_template` WHERE `Entry` = 703;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(703,59522,0,100,1,1,0,1,1,'Key of Ilgalar'), -- 100%
(703,2589,0,20,0,1,1,1,3,'Linen Cloth'), -- 10%
(703,2592,0,20,0,1,1,1,2,'Wool Cloth'),
(703,1179,0,20,0,1,2,1,1,'Ice Cold Milk'), -- 20%
(703,2287,0,20,0,1,2,1,1,'Haunch of Meat'),
(703,858,0,50,0,1,3,1,1,'Lesser Healing Potion'), -- 5%
(703,2455,0,50,0,1,3,1,1,'Minor Mana Potion'),
(703,1210,0,100,0,1,4,1,1,'Shadowgem'), -- 100%
(703,58898,0,50,0,1,5,1,1,'Dirt-Stained Scroll'); -- 50%


-- fix some loot "POSSIBLE ADJUSTED AND REPUSHED IN FUTURE "
DELETE FROM `creature_loot_template` WHERE `Entry` IN (430,445,446,580,518) AND `Reference`=0;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
-- Redridge Mystic
(430,58897,0,100,1,1,0,1,1,'Redridge Gnoll Collar'), -- 100%
(430,2589,0,20,0,1,1,1,3,'Linen Cloth'), -- 10%
(430,2592,0,20,0,1,1,1,2,'Wool Cloth'),
(430,1179,0,20,0,1,2,1,1,'Ice Cold Milk'), -- 20%
(430,2287,0,20,0,1,2,1,1,'Haunch of Meat'),
(430,858,0,5,0,1,3,1,1,'Lesser Healing Potion'), -- 5%
(430,2455,0,5,0,1,3,1,1,'Minor Mana Potion'),
(430,1210,0,1,0,1,4,1,1,'Shadowgem'), -- 1%
(430,58898,0,50,0,1,5,1,1,'Dirt-Stained Scroll'), -- 50%
-- Redridge Alpha
(445,58897,0,100,1,1,0,1,1,'Redridge Gnoll Collar'), -- 100%
(445,2589,0,20,0,1,1,1,3,'Linen Cloth'), -- 10%
(445,2592,0,20,0,1,1,1,2,'Wool Cloth'),
(445,1179,0,20,0,1,2,1,1,'Ice Cold Milk'), -- 20%
(445,2287,0,20,0,1,2,1,1,'Haunch of Meat'),
(445,858,0,5,0,1,3,1,1,'Lesser Healing Potion'), -- 5%
(445,2455,0,5,0,1,3,1,1,'Minor Mana Potion'),
(445,1210,0,1,0,1,4,1,1,'Shadowgem'), -- 1%
(445,58898,0,50,0,1,5,1,1,'Dirt-Stained Scroll'), -- 50%
-- Redridge Basher
(446,58897,0,100,1,1,0,1,1,'Redridge Gnoll Collar'), -- 100%
(446,2589,0,20,0,1,1,1,3,'Linen Cloth'), -- 10%
(446,2592,0,20,0,1,1,1,2,'Wool Cloth'),
(446,1179,0,20,0,1,2,1,1,'Ice Cold Milk'), -- 20%
(446,2287,0,20,0,1,2,1,1,'Haunch of Meat'),
(446,858,0,5,0,1,3,1,1,'Lesser Healing Potion'), -- 5%
(446,2455,0,5,0,1,3,1,1,'Minor Mana Potion'),
(446,1210,0,1,0,1,4,1,1,'Shadowgem'), -- 1%
(446,58898,0,50,0,1,5,1,1,'Dirt-Stained Scroll'), -- 50%
-- Redridge Drudger
(580,58897,0,100,1,1,0,1,1,'Redridge Gnoll Collar'), -- 100%
(580,2589,0,20,0,1,1,1,3,'Linen Cloth'), -- 10%
(580,2592,0,20,0,1,1,1,2,'Wool Cloth'),
(580,1179,0,20,0,1,2,1,1,'Ice Cold Milk'), -- 20%
(580,2287,0,20,0,1,2,1,1,'Haunch of Meat'),
(580,858,0,5,0,1,3,1,1,'Lesser Healing Potion'), -- 5%
(580,2455,0,5,0,1,3,1,1,'Minor Mana Potion'),
(580,1210,0,1,0,1,4,1,1,'Shadowgem'), -- 1%
(580,58898,0,50,0,1,5,1,1,'Dirt-Stained Scroll'), -- 50%
-- Yowler
(518,58937,0,100,1,1,0,1,1,'Blackrock Invasion Plans'), -- 100%
(518,2589,0,20,0,1,1,1,3,'Linen Cloth'), -- 10%
(518,2592,0,20,0,1,1,1,2,'Wool Cloth'),
(518,1179,0,20,0,1,2,1,1,'Ice Cold Milk'), -- 20%
(518,2287,0,20,0,1,2,1,1,'Haunch of Meat'),
(518,858,0,5,0,1,3,1,1,'Lesser Healing Potion'), -- 5%
(518,2455,0,5,0,1,3,1,1,'Minor Mana Potion'),
(518,1210,0,1,0,1,4,1,1,'Shadowgem'); -- 1%



DELETE FROM `creature_text` WHERE `CreatureID` IN (43222,43247);
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES
(43222, 0, 0, 'My spouse has gone missing! Please help!', 12, 7, 100, 22, 0, 0, 43745, 'Redridge Citizen'),
(43222, 0, 1, 'Townspeople are disappearing, Solomon. What are you going to do about it?', 12, 7, 100, 22, 0, 0, 43746, 'Redridge Citizen'),
(43222, 0, 2, 'It''s time to wake up, magistrate! These aren''t ordinary gnoll attacks!', 12, 7, 100, 25, 0, 0, 43747, 'Redridge Citizen'),
(43222, 0, 3, 'Where is the help that we requested from Stormwind?', 12, 7, 100, 4, 0, 0, 43748, 'Redridge Citizen'),
(43222, 0, 4, 'What are we paying our taxes for if your guards can''t even keep gnolls out?', 12, 7, 100, 53, 0, 0, 43749, 'Redridge Citizen'),
(43222, 0, 5, 'My children were kidnapped while they slept! I WANT ANSWERS, SOLOMON!', 12, 7, 100, 5, 0, 0, 43750, 'Redridge Citizen'),
(43222, 0, 6, 'You better do something quick or you''ll have a riot on your hands, Solomon!', 12, 7, 100, 53, 0, 0, 43751, 'Redridge Citizen'),
(43222, 0, 7, 'The gnolls have never been this aggressive. What''s going on, Solomon? Tell us!', 12, 7, 100, 25, 0, 0, 43752, 'Redridge Citizen'),
(43222, 0, 8, 'How long must we stand here before our pleas are heard?', 12, 7, 100, 53, 0, 0, 43753, 'Redridge Citizen'),
(43222, 0, 9, 'Get this damned line moving!', 12, 7, 100, 15, 0, 0, 43754, 'Redridge Citizen'),
(43222, 0, 10, 'You''re good for nothing, Solomon!', 12, 7, 100, 14, 0, 0, 43755, 'Redridge Citizen'),
(43222, 0, 11, 'You can forget about re-election, magistrate!', 12, 7, 100, 274, 0, 0, 43756, 'Redridge Citizen'),
(43222, 0, 12, 'No justice, no peace!', 12, 7, 100, 22, 0, 0, 43757, 'Redridge Citizen'),
(43222, 0, 13, 'If you don''t do something about these gnolls, we will!', 12, 7, 100, 25, 0, 0, 43758, 'Redridge Citizen'),
(43222, 0, 14, 'Please help me! I''m the last member of my family left. Everyone else has been kidnapped!', 12, 7, 100, 15, 0, 0, 43759, 'Redridge Citizen'),
(43222, 1, 0, 'Forget you, Solomon. I''ll find my family by myself.', 12, 7, 100, 14, 0, 0, 43760, 'Redridge Citizen'),
(43247, 0, 0, 'My spouse has gone missing! Please help!', 12, 7, 100, 22, 0, 0, 43745, 'Redridge Citizen'),
(43247, 0, 1, 'Townspeople are disappearing, Solomon. What are you going to do about it?', 12, 7, 100, 22, 0, 0, 43746, 'Redridge Citizen'),
(43247, 0, 2, 'It''s time to wake up, magistrate! These aren''t ordinary gnoll attacks!', 12, 7, 100, 25, 0, 0, 43747, 'Redridge Citizen'),
(43247, 0, 3, 'Where is the help that we requested from Stormwind?', 12, 7, 100, 4, 0, 0, 43748, 'Redridge Citizen'),
(43247, 0, 4, 'What are we paying our taxes for if your guards can''t even keep gnolls out?', 12, 7, 100, 53, 0, 0, 43749, 'Redridge Citizen'),
(43247, 0, 5, 'My children were kidnapped while they slept! I WANT ANSWERS, SOLOMON!', 12, 7, 100, 5, 0, 0, 43750, 'Redridge Citizen'),
(43247, 0, 6, 'You better do something quick or you''ll have a riot on your hands, Solomon!', 12, 7, 100, 53, 0, 0, 43751, 'Redridge Citizen'),
(43247, 0, 7, 'The gnolls have never been this aggressive. What''s going on, Solomon? Tell us!', 12, 7, 100, 25, 0, 0, 43752, 'Redridge Citizen'),
(43247, 0, 8, 'How long must we stand here before our pleas are heard?', 12, 7, 100, 53, 0, 0, 43753, 'Redridge Citizen'),
(43247, 0, 9, 'Get this damned line moving!', 12, 7, 100, 15, 0, 0, 43754, 'Redridge Citizen'),
(43247, 0, 10, 'You''re good for nothing, Solomon!', 12, 7, 100, 14, 0, 0, 43755, 'Redridge Citizen'),
(43247, 0, 11, 'You can forget about re-election, magistrate!', 12, 7, 100, 274, 0, 0, 43756, 'Redridge Citizen'),
(43247, 0, 12, 'No justice, no peace!', 12, 7, 100, 22, 0, 0, 43757, 'Redridge Citizen'),
(43247, 0, 13, 'If you don''t do something about these gnolls, we will!', 12, 7, 100, 25, 0, 0, 43758, 'Redridge Citizen'),
(43247, 0, 14, 'Please help me! I''m the last member of my family left. Everyone else has been kidnapped!', 12, 7, 100, 15, 0, 0, 43759, 'Redridge Citizen'),
(43247, 1, 0, 'Forget you, Solomon. I''ll find my family by myself.', 12, 7, 100, 14, 0, 0, 43760, 'Redridge Citizen');












INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(206609, "spell_chronomatic_anomaly_time_release_absorb"),
(206610, "spell_chronomatic_anomaly_time_release_area"),
(219984, "spell_chronomatic_anomaly_burst_of_time_area"),
(206607, "spell_chronomatic_anomaly_chronometric_particles"),
(206618, "spell_chronomatic_anomaly_time_bomb_area"),
(206617, "spell_chronomatic_anomaly_time_bomb_periodic"),
(206615, "spell_chronomatic_anomaly_time_bomb_damage"),
(212109, "spell_chronomatic_anomaly_temporal_smash"),
(212115, "spell_chronomatic_anomaly_temporal_smash_dest"),
(213853, "spell_gen_aluriel_animate"),
(201153, "spell_eternal_darkness"),
(201172, "spell_eternal_darkness_dmg"),
(201920, "spell_shadow_crash"),
(202306, "spell_vha_creeping_slaughter"),
(210504, "spell_saelorn_toxic_blood"),
(201961, "spell_shivermaw_ice_bomb"),
(201672, "spell_shivermaw_relentless_storm"),
(201865, "spell_shivermaw_relentless_storm_missile"),
(212492, "spell_gen_aluriel_annihilate"),
(212587, "spell_gen_mark_of_frost"),  
(212648, "spell_gen_target_mark_of_forst"),
(212530, "spell_gen_mark_of_frost"),
(212735, "spell_gen_aluriel_detonate"),
(106182, "spell_ultraxion_last_defender_of_azeroth"),
(87770, "spell_wind_burst"),
(39142, "spell_archimonde_drain_world_tree_dummy"),
(91436, "spell_springvale_forsaken_ability"),
(93202, "spell_corruption_sickness"),
(534556, "shadowmoon_burial_grounds_ritual_of_bones_darkness_trigger"),
(342521, "shadowmoon_burial_grounds_initial_teleport"),
(221160, "spell_chaotoid_compress_the_void"),
(221189, "spell_fulminant_scatter_area"),
(206482, "spell_gen_arcane_seepage"),
(210074, "spell_skorpyron_shockwave_damage"),
(204471, "spell_skorpyron_focused_blast"),
(210172, "spell_skorpyron_call_of_the_scorpid"),
(204371, "spell_skorpyron_call_of_the_scorpid_pack_select"),
(214966, "spell_skorpyron_arcane_tether_periodic_visual"),
(211659, "spell_skorpyron_arcane_tether_damage"),
(204531, "spell_skorpyron_arcane_tether_periodic_damage"),
(204277, "spell_skorpyron_power"),
(205200, "spell_skorpyron_arcanoslash_periodic"),
(204275, "spell_skorpyron_arcanoslash_damage");



-- TELEPORT SmartAI
UPDATE `creature_template` SET `gossip_menu_id`='43443' WHERE `entry`='43443';
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 43443;
REPLACE INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId` ,`OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES('43443','0','0','Lets Go!','0','1','1','29416');

SET @ENTRY := 43443;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,43443,0,0,0,62,0,0,0,0,0,0,7,0,0,0,-9424,-2813,61,3,"Teleport"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,15,26616,0,0,0,0,0,7,0,0,0,0,0,0,0,'Quest Credit on Gossip');














































































