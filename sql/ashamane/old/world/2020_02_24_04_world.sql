UPDATE instance_template SET parent = 1220, script = "instance_black_rook_hold", insideResurrection = 1 WHERE map = 1501;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (202805, 202676, 203381, 203057, 202659, 202779, 50725, 50720, 20230, 772, 59725, 7001, 75880);
INSERT INTO spell_script_names VALUES 
(202805, 'spell_thalena_vampiric_kiss_player'),
(202676, 'spell_thalena_vampiric_kiss'),
(203381, 'spell_thalena_blood_call'),
(203057, 'spell_thalena_shroud_of_sorrow_dmg'),
(202659, 'spell_thalena_blood_swarn'),
(202779, 'spell_thalena_frenzied_bloodthirst'),
(50720, 'spell_warr_vigilance'),
(20230,'spell_warr_retaliation'),
(772, 'spell_warr_rend'),
(7001, 'spell_pri_lightwell_renew'),
(75880, 'spell_halion_spawn_living_embers'),
(59725,'spell_warr_improved_spell_reflection'),
(50725, 'spell_warr_vigilance_trigger');

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
UPDATE `gameobject_template` SET `ScriptName` = 'gameobject_cage_trap' WHERE `entry` = 185916;

DELETE FROM `criteria_data` WHERE `criteria_id`=6455 AND `type`=41;
INSERT INTO `criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES 
(6455, 41, 0, 0, 'achievement_show_me_you_moves');

UPDATE `instance_template` SET `script` = 'instance_new_karazhan' WHERE `map` = 1651;
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_mana_rift" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 9695);
UPDATE areatrigger_template SET scriptname = "at_dh_artifact_fury_of_the_illidari" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 5758);
UPDATE areatrigger_template SET scriptname = "at_demon_hunter_demonic_trample" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6482);
UPDATE areatrigger_template SET scriptname = "at_warlock_casting_circle" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 8138);
UPDATE areatrigger_template SET scriptname = "at_warlock_summon_observer" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 90001);
UPDATE areatrigger_template SET scriptname = "at_warlock_bane_of_havoc" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 5650);
UPDATE areatrigger_template SET scriptname = "at_warlock_fel_fissure" WHERE Id IN (SELECT AreaTriggerId FROM spell_areatrigger WHERE SpellMiscId = 6959);

UPDATE creature_template SET ScriptName='' WHERE ScriptName='npc_palehoof_orb' AND entry=26688;    

UPDATE `creature_template` SET `ScriptName`= "npc_massive_jormungar" WHERE `entry` =26685;
UPDATE creature_template SET ScriptName = 'boss_maiev_shadowsong' WHERE entry = 23197;

UPDATE creature_template SET ScriptName = 'npc_maiev' WHERE entry = 22989;
UPDATE `creature_template` SET `ScriptName`='npc_frenzied_worgen' WHERE `entry`=26683;
UPDATE `creature_template` SET `ScriptName`='npc_ravenous_furbolg' WHERE `entry`=26684;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_pos_ice_shards';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(70827, 'spell_pos_ice_shards');


UPDATE creature_template SET ScriptName='' WHERE ScriptName='npc_palehoof_orb' AND entry=26688;
UPDATE creature_template SET ScriptName='' WHERE ScriptName='npc_ferocious_rhino' AND entry=26686;

UPDATE instance_template SET script = "instance_the_bastion_of_twilight" WHERE map = 671;
UPDATE `instance_template` SET `script` = 'instance_lost_city_of_the_tolvir' WHERE `map` =755;
UPDATE `instance_template` SET `script` = 'instance_tol_dagor' WHERE `map` = 1771;
UPDATE `instance_template` SET `script` = 'instance_throne_of_the_four_winds' WHERE `map` =754;


DELETE FROM instance_template WHERE map = 1175;
insert  into `instance_template`(`map`,`parent`,`script`,`allowMount`,`insideResurrection`) values 
(1175,1116,'instance_Bloodmaul',0,0);
DELETE FROM instance_template WHERE map = 1530;
insert  into `instance_template`(`map`,`parent`,`script`,`allowMount`,`insideResurrection`) values 
(1530,0,'instance_the_nighthold',0,0);
UPDATE `instance_template` SET `script` = 'instance_violet_hold_assault' WHERE `map` =1544;