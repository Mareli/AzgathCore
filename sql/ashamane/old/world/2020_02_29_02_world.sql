UPDATE `creature_template` SET `lootid` = `entry` WHERE `entry`  IN (721,43103 ,45859 ,45905 ,49743 ,49832 ,51671 ,51674 ,51712 ,123426,123487,123727,124185,124375,124397,125038,125088,126621,127651,127844,127873,127876,127877,127901,128072,128578,128584,128585,128616,128620,128647,128667,128674,128707,128708,128878,128966,128973,128974,129027,129128,129254,129341,129411,129476,129803,129805,129904,130019,130643,130752,130760,130774,131018,131262,131596,131687,131984,132007,132025,132030,132047,132052,132068,132088,132093,132182,132244,133163,133190,133226,133356,133434,133500,133505,133587,133595,133596,133785,133786,134002,134046,134047,134057,134147,134155,134183,134294,134296,134427,134429,134585,134643,134706,134717,134736,134745,134760,134782,134812,134816,134841,134852,134856,134868,134869,135395,135433,135466,135469,135476,135490,135508,135510,135512,135544,135662,135693,135743,135790,135852,135944,136178,136189,136198,136248,136280,136293,136296,136303,136305,136335,136336,136393,136426,136545,136546,136547,136548,136550,136551,136552,136555,136565,136566,136568,136606,136639,136653,136667,136702,136790,136906,136936,136996,136997,137148,137149,137152,137157,137158,137162,137177,137178,137179,137183,137198,137208,137209,137211,137217,137489,137491,137553,137653,137654,137655,137663,137704,137708,137773,137776,137779,137782,137825,137829,137840,137893,137894,137910,137937,138025,138029,138039,138058,138059,138079,138086,138094,138135,138136,138226,138243,138244,138279,138288,138295,138299,138302,138303,138332,138340,138426,138430,138543,138618,138667,138732,138752,138765,138768,138791,138808,138809,138863,138868,138873,138874,138963,139079,139084,139087,139092,139116,139117,139119,139129,139133,139141,139143,139149,139150,139152,139233,139239,139287,139289,139290,139317,139319,139435,139456,139483,139484,139488,139493,139495,139505,139510,139518,139523,139525,139554,139742,139930,139931,139932,139980,139988,140275,140352,140363,140364,140398,140399,140408,140409,140410,140474,140493,140494,140510,140525,140528,140530,140536,140543,140570,140571,140572,140579,140580,140586,140606,140612,140699,140711,140717,140718,140744,140758,140808,140888,140997,141035,141037,141039,141051,141065,141099,141122,141275,141472,141502,141503,141510,141522,141530,141533,141535,141538,141697,141710,141711,141731,141747,141748,141808,141891,141905,141907,141908,141934,141959,141970,141986,141988,142072,142332,142431,142439,143190,143314,143928,143951,144463,144470,144494);
UPDATE `creature_template` SET `skinloot` = `entry` WHERE `entry`  IN (45859,51671,123426,123487,123727,125088,127876,128072,128585,128616,128620,128647,128667,128708,129128,129341,130752,130760,130774,132030,133226,134046,134047,135490,135508,135510,135512,135790,136426,136548,136566,136790,136936,137152,137829,137840,138059,138079,138086,138299,138873,139435,139484,139488,139523,140711,141051,141502,142431,142439,143951,144463,144494);
-- 删除急救技能
DELETE FROM `trainer_spell` WHERE `TrainerId` = 160;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '46598';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '125095';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '122729';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '152731';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '61791';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '52391';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '93970';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '245319';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '268221';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '47020';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '105080';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '61424';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '46598';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '125095';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '122729';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '152731';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '61791';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '52391';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '93970';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '245319';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '268221';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '47020';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '105080';
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '61424';
UPDATE `areatrigger` SET `spawn_mask` = 8388614 WHERE `guid`  IN(4);
UPDATE `areatrigger` SET `spawn_mask` = 8388868 WHERE `guid`  IN(8,10,22,24,47);
UPDATE `areatrigger` SET `spawn_mask` = 245760 WHERE `guid`  IN(28,30,32,33,35);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (42965,49039,5268);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 42966 AND `spell_effect` = -42965 AND `type` = 0;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 51010 AND `spell_effect` = -5268 AND `type` = 0;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 51010 AND `spell_effect` = 5268 AND `type` = 2;
UPDATE `gameobject_template` SET `Data1` = `entry` WHERE `entry`  IN (1621,1623,1624,105174,105175,176189,180682,202738,202741,202747,202752,203800,203969,204284,205144,208814,208818,208819,208831,228563,276496);
UPDATE `creature_loot_template` SET `Chance` = 16 WHERE `Entry` = 78491 AND `Chance`= 0;
DELETE FROM `reference_loot_template` WHERE `entry` = 78491;
INSERT INTO `reference_loot_template`(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(78491,116294,0,3,0,1,1,1,1,''),
(78491,116291,0,3,0,1,1,1,1,''),
(78491,116288,0,3,0,1,1,1,1,''),
(78491,116233,0,3,0,1,1,1,1,''),
(78491,116208,0,3,0,1,1,1,1,''),
(78491,116028,0,3,0,1,1,1,1,''),
(78491,115999,0,3,0,1,1,1,1,''),
(78491,113664,0,4.71398,0,1,1,1,1,''),
(78491,113662,0,3.85818,0,1,1,1,1,''),
(78491,113661,0,4.5,0,1,1,1,1,''),
(78491,113660,0,4.02204,0,1,1,1,1,''),
(78491,113659,0,3.9483,0,1,1,1,1,''),
(78491,113658,0,3.2,0,1,1,1,1,''),
(78491,113657,0,3.66527,0,1,1,1,1,''),
(78491,113656,0,3.76135,0,1,1,1,1,''),
(78491,113655,0,5.75599,0,1,1,1,1,''),
(78491,113654,0,4.36094,0,1,1,1,1,''),
(78491,113653,0,3.6,0,1,1,1,1,''),
(78491,113652,0,3.94607,0,1,1,1,1,'');
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` IN (131817,132701,131318,131383,133007);
DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (147972,147973);
UPDATE `creature_addon` SET `auras` = '' WHERE `auras` = '0';
UPDATE `creature_template_addon` SET `auras` = '' WHERE `auras` = '0';
UPDATE `creature_template_addon` SET  `auras` = replace(`auras`,'46598 ','');
UPDATE `creature_template_addon` SET  `auras` = replace(`auras`,' 125095','');
UPDATE `creature_template_addon` SET `auras` = '123236' WHERE `entry` = 62821;
UPDATE `creature_template_addon` SET `auras` = '123236' WHERE `entry` = 62821;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 122968;
UPDATE `creature_template_addon` SET `auras` = '256368 256402' WHERE `entry` = 126969;
UPDATE `creature_template_addon` SET `auras` = '98892 257747' WHERE `entry` = 127019;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 129092;
UPDATE `creature_template_addon` SET `auras` = '274467' WHERE `entry` = 133384;
UPDATE `creature_template_addon` SET `auras` = '160758' WHERE `entry` = 134060;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 134516;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 134517;
UPDATE `creature_template_addon` SET `auras` = '42459' WHERE `entry` = 134602;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 134629;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 134691;
UPDATE `creature_template_addon` SET `auras` = '265769' WHERE `entry` = 135336;
UPDATE `creature_template_addon` SET `auras` = '123168 266955' WHERE `entry` = 135699;
UPDATE `creature_template_addon` SET `auras` = '214567 269457' WHERE `entry` = 135971;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 136251;
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 140119;
DELETE FROM `spell_threat` WHERE `entry` = 49039;
UPDATE `disables` SET `flags` = 11 WHERE `sourceType` = 2 AND `entry` = 1458;
UPDATE `disables` SET `flags` = 9 WHERE `sourceType` = 2 AND `entry` = 1712;
DELETE FROM `spell_group` WHERE `spell_id` IN (17629,42735,62380,67016,67017,67018,2380,17629,42735,62380,67016,67017,67018);
DELETE FROM `spell_proc` WHERE `SpellId` IN (4312,16246,19287,148755,171345,196097,197497,203378,217000,224668,234029,246682,16164);
-- UPDATE `spell_proc` SET `SchoolMask` = 32 WHERE `SpellId` = 253324;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender` = 0 WHERE `DisplayID` = 73157;
UPDATE `creature_template` SET `InhabitType` = '4' WHERE `entry` = 154;
UPDATE `creature_template` SET `Spell2` = '0' WHERE `entry` = 1062;
UPDATE `creature_template` SET `Spell1` = '0' WHERE `entry` = 1179;
UPDATE `creature_template` SET `RequiredExpansion` = '0' WHERE `entry` = 2000100;
UPDATE `creature_template` SET `MovementType` = '1' WHERE `entry` = 51348;
DELETE FROM `creature_template_scaling` WHERE `Entry` IN (117473,147972,147973,148922,148927);
UPDATE `creature` SET `spawnDifficulties` = '0' WHERE `map` = 654;
UPDATE `gameobject` SET `spawnDifficulties` = '0' WHERE `map` = 654;
UPDATE `creature` SET `spawndist` = 0 WHERE `guid` = 10680248;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 178240;
UPDATE `creature` SET `phasegroup` = 0 WHERE `guid` IN (177242,178281);
UPDATE `creature` SET `spawnDifficulties` = '14,15,16,17' WHERE `map` = 1205;
UPDATE `gameobject` SET `spawnDifficulties` = '14,15,16,17' WHERE `map` = 1205;
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 801486;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 210303980;
UPDATE `creature` SET `spawndist` = 7 WHERE `guid` = 280007346;
UPDATE `creature` SET `spawndist` = 5 WHERE `guid` = 280007345;
UPDATE `creature` SET `spawndist` = 5 WHERE `guid` = 210413380;
UPDATE `creature` SET `spawnDifficulties` = '2,8,23' WHERE `map` = 1651;
UPDATE `gameobject` SET `spawnDifficulties` = '2,8,23' WHERE `map` = 1651;
UPDATE `creature_addon` SET `auras` = '' WHERE `guid` IN (264376,210316676,210316682,210426355,210426356,210428066,210428067,210428445,210428457,210428460,210429153,210429154,210429155,210432411,210432412,210432413,20556546,1264376,310986,310987,310988,310989,310990,310991,310992,310993,310994,310995,310996,310997,310998,311000,311003,311005,321086,20534276,20534273,20534269,20534267,20534266,20534258,20534256,20534254);
UPDATE `creature_addon` SET `auras` = '96510' WHERE `guid` = 310977;
DELETE FROM `gameobject_questitem` WHERE `itemid` = 5798;
DELETE FROM `gameobject_questitem` WHERE `itemid` = 56249;
UPDATE `gameobject_template` SET `displayId` = '13370' WHERE `entry` = 250648;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` = 48434;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` = 45045;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =33416;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =34244;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =50740;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =50076;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =30986;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =33424;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =39321;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =40342;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =50646;
UPDATE `quest_template` SET `RewardNextQuest` = 0 WHERE `ID` =50878;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` = 48434;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` = 48434;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` = 45045;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =33416;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =34244;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =50740;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =50076;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =30986;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =33424;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =39321;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =40342;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =50646;
UPDATE `quest_template_addon` SET `NextQuestID` = 0 WHERE `ID` =50878;
UPDATE `quest_template` SET `RewardDisplaySpell1` = 0 WHERE `ID` IN (45727,48441,46734,47653,47416,47892,46816,45423,47993,48107,47654,42982,43424,48668,48443,48202,46291,48448,48544,43409,42987,43341,43414,53405,48601,48447,43359,43407,43412,43415,43418,43420,43422,43423,43425,43533,44721,46941,47220,47460,48445,48199,48200,48201,50973,53406);
UPDATE `quest_template` SET `RewardDisplaySpell2` = 0 WHERE `ID` IN (47416,48199);
UPDATE `quest_template` SET `RewardDisplaySpell3` = 0 WHERE `ID` IN (48107);
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` = 33416;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` = 40779;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =33492;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =33104;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =33398;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =33422;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =33429;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =33432;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =33431;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =33434;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =37916;
UPDATE `quest_template` SET `RewardItem1` = 0 ,`RewardAmount1` = 0 WHERE `ID` =43151;
UPDATE `quest_template` SET `RewardSpell` = 0 ,`RewardAmount1` = 0 WHERE `ID` = 38611;

DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (47460,26918,50670,32010,32011);
INSERT INTO `disables`(`sourceType`, `entry`, `comment`) VALUES 
(1, 47460, "47460/interact-doodad-creature-test-do-not-localize"),
(1, 26918, "26918/圣光之力"),
(1, 50670, "50670/doug-test-gossip-test-3"),
(1, 32010, "32010/a-celestial-task"),
(1, 32011, "32011/天神的任务");
UPDATE `quest_template_addon` SET `PrevQuestID` = 0 WHERE `ID` = 51101;
DELETE FROM `quest_poi` WHERE `QuestID` = 4451 AND `BlobIndex` = 0 AND `Idx1` = 0;
DELETE FROM `quest_poi` WHERE `QuestID` = 31035 AND `BlobIndex` = 0 AND `Idx1` = 0;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 29152 AND `spell_id` = 83580;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 127149 AND `spell_id` = 240770;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 126927 AND `spell_id` = 145803;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 131220 AND `spell_id` = 145803;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 138267 AND `spell_id` = 272034;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 92438 AND `spell_id` = 103583;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 136723 AND `spell_id` = 269495;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 129321 AND `spell_id` = 103583;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 127977 AND `spell_id` = 103583;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 129320 AND `spell_id` = 103583;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 137230 AND `spell_id` = 269648;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 138797 AND `spell_id` = 272899;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 125316 AND `spell_id` = 83580;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 125839 AND `spell_id` = 83580;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 130197 AND `spell_id` = 0;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 137857 AND `spell_id` = 271240;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 135336 AND `spell_id` = 170135;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 137879 AND `spell_id` = 134411;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 278536 AND `spell_id` = 257953;
UPDATE `creature_template` SET `npcflag`=`npcflag`-16777216 WHERE `ENTRY` IN (92438,144282,134021,135336,137857,142929,136723,144103,115113,115105,115103,115101,115013,126927,127149,131220,138267,137230,129320,127977,129321,138797,125316,125839,140552,137879,135060);

