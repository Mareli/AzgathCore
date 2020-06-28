DELETE FROM creature WHERE map = 1864 AND id = 136347;

SET @CGUID = 280004420;

DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID+60;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(@CGUID+0, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3924.88, -1016.54, 109.037, 0.767486, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+1, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3927.5, -1041.8, 105.243, 3.26865, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+2, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3927.72, -1018.86, 109.037, 0.767486, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+3, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3927.72, -1045.44, 105.147, 3.08756, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+4, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3928.49, -1038.37, 105.506, 3.41974, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+5, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3929.08, -1049.04, 104.804, 2.92717, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+6, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3930.04, -1021.15, 109.114, 0.767486, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+7, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3932.82, -1023.68, 109.306, 0.767486, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+8, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3941.56, -1192.87, 120.446, 1.33775, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+9, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3942.21, -1054.73, 102.271, 0.915905, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+10, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3944.8, -1057.1, 101.473, 1.15289, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+11, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3947.06, -1196.82, 120.446, 1.49874, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+12, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3947.36, -1180.69, 120.446, 1.84084, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+13, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3947.4, -1023.05, 109.257, 2.28865, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+14, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3948.19, -1059.18, 101.038, 1.40311, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+15, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3949.86, -1020.33, 109.037, 2.28865, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+16, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3952.26, -1018.12, 109.306, 2.28865, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+17, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3953.18, -1059.7, 101.135, 1.71424, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+18, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3953.5, -1184.54, 120.446, 1.92876, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+19, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3954.93, -1015.47, 109.306, 2.28865, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+20, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3959.39, -1050.59, 104.112, 2.44229, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+21, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3960.66, -1047.6, 104.983, 2.60382, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+22, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3963.07, -1045.45, 104.792, 2.75434, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+23, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3965.36, -1043.26, 104.67, 2.88623, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+24, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3965.77, -1024.75, 109.566, 3.55118, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+25, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3967.48, -1028.09, 108.21, 3.55118, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+26, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3968.86, -1031.05, 107.926, 3.55118, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+27, 136347, 1864, 9525, 9963, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3970.7, -1034.22, 107.614, 3.55118, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+28, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 3992.46, -1174.01, 124.297, 0.195794, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+29, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4000.31, -1172.45, 124.08, 0.195748, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+30, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4005.59, -1171.14, 122.457, 0.145294, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+31, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4009.09, -1170.88, 120.854, 0.131089, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+32, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4012.78, -1213.81, 152.616, 0.204676, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+33, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4013.08, -1170.53, 119.122, 0.115472, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+34, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4013.62, -1209.8, 152.616, 5.83734, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+35, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4015.28, -1217.84, 152.616, 0.937498, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+36, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4016.94, -1230.29, 152.616, 0.204676, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+37, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4017.79, -1226.28, 152.616, 5.83734, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+38, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4018.77, -1170, 116.635, 0.0655484, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+39, 136347, 1864, 9525, 9964, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4019.45, -1234.32, 152.616, 0.937498, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+40, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4036.3, -1172.67, 111.098, 5.69193, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+41, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4042.95, -1177.13, 110.467, 5.69216, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+42, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4053.53, -1142.08, 109.524, 0.135325, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+43, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4060.08, -1133.72, 109.622, 4.784, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+44, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4060.27, -1146.98, 108.934, 1.53883, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+45, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4066.62, -1140.02, 108.902, 3.2952, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+46, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4146.41, -1277.87, 179.91, 1.52584, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+47, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4149.35, -1280.11, 179.91, 1.76101, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+48, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4152.34, -1280.09, 179.894, 1.90288, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+49, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4155.94, -1279.16, 179.861, 1.97762, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+50, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4159.88, -1277.14, 179.858, 2.26454, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+51, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4161.39, -1273.97, 179.84, 2.46692, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+52, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4164.16, -1301.47, 180.404, 4.61988, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+53, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4165.84, -1303.78, 180.898, 4.89615, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+54, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4167.31, -1300.91, 180.389, 4.70402, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+55, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4169.08, -1303.7, 180.918, 4.75876, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+56, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4170.65, -1302.02, 180.555, 4.74115, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+57, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4172.12, -1303.96, 181.075, 4.61981, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+58, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4173.64, -1301.84, 180.569, 4.53793, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+59, 136347, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4174.54, -1303.66, 181.075, 4.74023, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(@CGUID+60, 134137, 1864, 9525, 9525, '1,2,23,8', 0, 0, 0, -1, 0, 0, 4051.12, -1292.21, 149.040, 0.11830, 86400, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE creature_template_addon SET auras = '' WHERE entry = 136347;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 136347;
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 136347);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(136347, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 271037, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tidesage Initiate - On Reset - Cast Storm Ritual'),
(136347, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 7000, 12000, 11, 209858, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Tidesage Initiate - In Combat - Cast Necrotic Rot'),
(136347, 0, 2, 0, 2, 0, 100, 1, 0, 50, 0, 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tidesage Initiate - Between 0-50% Health - Flee For Assist (No Repeat)');

DELETE FROM `creature_text` WHERE `CreatureID` = 139971;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(139971, 0, 0, 'With the power of the Tide Pearl, our fleets will be unstoppable.', 12, 0, 100, 1, 0, 103094, 150904, 0, 'Rexxar'),
(139971, 1, 0, 'The Alliance must not claim this prize. All who oppose us will fall!', 12, 0, 100, 1, 0, 103095, 151983, 0, 'Rexxar'),
(139971, 2, 0, 'Now... let the hunt begin!', 12, 0, 100, 1, 0, 103096, 152224, 0, 'Rexxar');

UPDATE `creature_template` SET `ScriptName` = 'npc_rexxar' WHERE `entry` = 139971;

DELETE FROM `creature_addon` WHERE `guid` = 280004004;
INSERT INTO `creature_addon` (`guid`, `path_id`) VALUES (280004004, 280004004);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 280004004;
UPDATE creature_template_addon SET auras = '' WHERE entry = 134139;
DELETE FROM `waypoint_data` WHERE `id` = 280004004;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(280004004, 1, 4167.1, -1297.9, 179.793, 0, 2000, 0, 0, 100, 0),
(280004004, 2, 4160.15, -1281.51, 179.695, 0, 2000, 0, 0, 100, 0);

UPDATE `creature` SET `spawndist` = 20, `MovementType` = 1 WHERE `map` = 1864 AND `id` = 141587;

DELETE FROM `creature` WHERE `guid` = 280004003;

UPDATE `creature_template` SET `ScriptName` = 'npc_brother_pike' WHERE `entry` = 139970;
DELETE FROM `creature_text` WHERE `CreatureID` = 139970;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(139970, 0, 0, 'All must be purified before stepping inside our most holy place. I ask that you receive the blessings of each cleansing font before entering the heart of the shrine.', 12, 0, 100, 1, 0, 0, 154061, 0, 'Brother Pike');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 134139;
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 134139);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(134139, 0, 0, 0, 0, 0, 100, 1, 2000, 4000, 0, 0, 11, 267981, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shrine Templar - In Combat - Cast Protective Aura (No Repeat)'),
(134139, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 9000, 15000, 11, 276268, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Shrine Templar - In Combat - Cast Heaving Blow');

DELETE FROM `areatrigger_template` WHERE `Id` IN (17777);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(17777, 0, 4, 6, 6, 0, 0, 0, 0, 27481);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` = 13166;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(13166, 17777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27481); -- SpellId : 267981

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId` = 17777;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES 
(17777, 0, 267982, 1);

UPDATE `creature` SET `spawndist` = 10, `MovementType` = 1 WHERE `map` = 1864 AND `id` = 134173;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 134173;
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 134173);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(134173, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 240443, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Animated Droplet - On Just Died - Cast Burst');

DELETE FROM `spell_script_names` WHERE `spell_id` = 240443;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (240443, 'spell_burst_sots');

UPDATE creature_template_addon SET auras = '123169' WHERE entry = 134137;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 134137;
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 134137);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(134137, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 9000, 12000, 11, 267973, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Temple Attendant - In Combat - Cast Wash Away'),
(134137, 0, 1, 0, 0, 0, 100, 0, 2000, 4000, 5000, 5000, 11, 267969, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Temple Attendant - In Combat - Cast Water Blast'),
(134137, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 263509, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Temple Attendant - On Reset - Cast Wavebending');

UPDATE creature_template_addon SET auras = '170134' WHERE entry = 136186;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 136186;
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 136186);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(136186, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 276266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tidesage Spiritualist - In Combat - Cast Spirit\'s Swiftness (No Repeat)'),
(136186, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 9000, 9000, 11, 268050, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Tidesage Spiritualist - In Combat - Cast Anchor of Binding'),
(136186, 0, 2, 0, 0, 0, 100, 0, 9000, 15000, 9000, 15000, 11, 268030, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tidesage Spiritualist - In Combat - Cast Mending Rapids'),
(136186, 0, 3, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 267636, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Tidesage Spiritualist - On Reset - Cast Storm Ritual');

DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (268030);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 3, 268030, 0, 31, 5, 134137),
(13, 3, 268030, 1, 31, 5, 134139);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 134144;
DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 134144);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(134144, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 10000, 10000, 11, 268027, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Living Current - In Combat - Cast Rising Tides'),
(134144, 0, 1, 0, 0, 0, 100, 0, 14000, 14000, 10000, 10000, 11, 268028, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Living Current - In Combat - Cast Crushing Waters');


DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (263509);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 263509, 0, 31, 5, 134144);

DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (267640);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 267640, 0, 31, 5, 136188);


UPDATE `creature_template` SET `ScriptName` = 'npc_lord_stormsong' WHERE `entry` = 139737;
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (274365);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 274365, 0, 31, 5, 134056);


UPDATE `creature_template` SET `ScriptName` = 'boss_aquasirr' WHERE `entry` = 134056;
UPDATE creature_template_addon SET auras = '' WHERE entry = 139737;

DELETE FROM `spell_target_position` WHERE `ID` = 274365;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES (274365, 0, 1864, 3932.82, -1243.81, 128.368, 0);

UPDATE `areatrigger_template` SET `ScriptName` = 'at_aquasirr_undertow' WHERE `Id` = 17427;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (264101, 264560, 264773, 264903, 264477);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(264101, 'spell_surging_rush'),
(264560, 'spell_choking_brine'),
(264773, 'spell_choking_brine'),
(264477, 'spell_grasp_from_the_depths'),
(264903, 'spell_erupting_water');

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId` = 17428;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES 
(17428, 0, 264155, 2);

DELETE FROM `spell_target_position` WHERE `ID` IN(264911, 264912, 264913);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES 
(264911, 0, 1864, 3917.316, -1234.083, 128.1308, 0),
(264912, 0, 1864, 3924.026, -1259.524, 128.1416, 0),
(264913, 0, 1864, 3950.806, -1238.476, 127.8313, 0);

UPDATE `creature_template` SET `ScriptName` = 'npc_aqualing', `mechanic_immune_mask` = 2147467263 WHERE `entry` = 134828;

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId` = 18334;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES 
(18334, 1, 274438, 1);

DELETE FROM `spell_areatrigger_splines` WHERE `SpellMiscId` = 13866;
INSERT INTO `spell_areatrigger_splines` (`SpellMiscId`, `Idx`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES 
(13866, 0, 0, 0, 0, 0),
(13866, 1, 40, 0, 0, 0);

UPDATE `creature_template` SET `ScriptName` = 'at_slicing_hurricane' WHERE `entry` = 19019;


UPDATE `creature_template` SET `ScriptName` = 'boss_brother_ironhull', mechanic_immune_mask = 2147467263, `unit_flags` = 0, `unit_flags2` = 0, `unit_flags3` = 0 WHERE `entry` = 134063;
UPDATE `creature_template` SET `ScriptName` = 'boss_galecaller_faye', mechanic_immune_mask = 2147467263, `unit_flags` = 0, `unit_flags2` = 0, `unit_flags3` = 0 WHERE `entry` = 134058;
UPDATE `creature_template` SET `ScriptName` = 'npc_grasp_of_depths', mechanic_immune_mask = 2147467263, `unit_flags` = 0, `unit_flags2` = 0, `unit_flags3` = 0 WHERE `entry` = 134612;
UPDATE creature_template_addon SET auras = '' WHERE entry IN (134063,134058);

UPDATE `creature_classlevelstats` SET `basemana` = 295105 WHERE `level` IN (120, 121, 122, 123) AND `class` IN (2, 8);

DELETE FROM `creature_template_journal` WHERE entry IN (134056, 134063, 134060, 134067);
INSERT INTO `creature_template_journal` VALUES
(134056, 2153), -- Aqu'sirr
(134063, 2154), -- Tidesage Council 
(134060, 2155), -- Lord Stormsong
(134067, 2156); -- Vol'zith the Whisperer

DELETE FROM `spell_script_names` WHERE `spell_id` IN (267905, 267891);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(267905, 'spell_tidesage_wards'),
(267891, 'spell_tidesage_wards');

UPDATE `areatrigger_template` SET `ScriptName` = 'at_reinforcing_ward' WHERE `Id` = 17771;
UPDATE `areatrigger_template` SET `ScriptName` = 'at_swiftness_ward' WHERE `Id` = 17766;

UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16 WHERE `entry`=134612;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `ScriptName` = 'npc_blowback', `flags_extra` = 128 WHERE `entry`=136314;

DELETE FROM `areatrigger_template` WHERE `Id` IN (100106);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(100106, 0, 0, 2, 2, 0, 0, 0, 0, 'at_blowback', 0);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` = 13147;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(13147, 100106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27481); -- SpellId : 267836

DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId` = 100106;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES 
(100106, 0, 267838, 2);

DELETE FROM `creature` WHERE `id` = 137051;

UPDATE `creature_template` SET `ScriptName` = 'boss_lord_stormsong', mechanic_immune_mask = 2147467263, `unit_flags` = 0, `unit_flags2` = 0, `unit_flags3` = 0 WHERE `entry` = 134060;

SET @CGUID = 280004481;
SET @PHASEID = 0;
SET @CDIFFS = '1,2,23,8';

DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID+17;
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+0, 136961, 1864, @CDIFFS, @PHASEID, 3596.47, -1467.177, 144.3021, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+1, 136961, 1864, @CDIFFS, @PHASEID, 3603.398, -1474.344, 143.6918, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+2, 136961, 1864, @CDIFFS, @PHASEID, 3612.72, -1475.741, 143.6916, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+3, 136961, 1864, @CDIFFS, @PHASEID, 3607.074, -1481.736, 144.1659, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+4, 136961, 1864, @CDIFFS, @PHASEID, 3543.254, -1439.333, 145.8678, 1.410063);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+5, 136961, 1864, @CDIFFS, @PHASEID, 3560.611, -1444.517, 145.8678, 1.410063);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+6, 136961, 1864, @CDIFFS, @PHASEID, 3531.87, -1440.951, 145.8678, 1.410063);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+7, 136961, 1864, @CDIFFS, @PHASEID, 3548.267, -1445.872, 145.8678, 1.410063);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+8, 136961, 1864, @CDIFFS, @PHASEID, 3540.384, -1448.313, 145.8678, 1.410063);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+9, 136961, 1864, @CDIFFS, @PHASEID, 3609.3, -1464.762, 143.6438, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+10, 136961, 1864, @CDIFFS, @PHASEID, 3532.199, -1454.004, 145.8678, 1.410063);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+11, 136961, 1864, @CDIFFS, @PHASEID, 3539.573, -1532.413, 148.5007, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+12, 136961, 1864, @CDIFFS, @PHASEID, 3542.986, -1525.889, 148.5007, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+13, 136961, 1864, @CDIFFS, @PHASEID, 3528.564, -1528.306, 148.8275, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+14, 136961, 1864, @CDIFFS, @PHASEID, 3533.428, -1532.764, 148.6944, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+15, 136961, 1864, @CDIFFS, @PHASEID, 3536.089, -1523.132, 148.5007, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+16, 136961, 1864, @CDIFFS, @PHASEID, 3536.38, -1527.337, 148.5007, 0);
INSERT INTO creature (guid, id, map, spawnDifficulties, PhaseId, position_x, position_y, position_z, orientation) VALUES (@CGUID+17, 136961, 1864, @CDIFFS, @PHASEID, 3610.384, -1493.705, -152.0011, 0);


DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (278006, 269021);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 278006, 0, 31, 5, 136961),
(13, 1, 269021, 0, 31, 5, 136961);


DELETE FROM `spell_script_names` WHERE `spell_id` IN (278010, 269021, 269131, 269289);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(278010, 'spell_dark_water'),
(269021, 'spell_waken_the_void'),
(269131, 'spell_ancient_mindbender'),
(269289, 'spell_disciple_of_the_volzith');

UPDATE `creature_template` SET `ScriptName` = 'npc_awoken_void', `unit_flags` = 0, `unit_flags2` = 0, `unit_flags3` = 0, `flags_extra` = 0 WHERE `entry` = 137036;

DELETE FROM `areatrigger_template` WHERE `Id` IN (17892);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(17892, 4, 4, 1.5, 1.5, 4, 4, 1, 1, 'at_waken_the_void', 27377);

UPDATE creature_template_addon SET auras = '' WHERE entry IN (137051);
UPDATE creature_template SET speed_run = 0.322457 WHERE entry IN (137036);

DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (269242);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 269242, 0, 31, 5, 134060);

DELETE FROM `areatrigger_template` WHERE `Id` IN (17909);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(17909, 0, 0, 15, 15, 0, 0, 0, 0, '', 27481);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (13312, 13313);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(13312, 17909, 0, 0, 0, 0, 0, 0, 0, 0, 60000, 27481), -- SpellId : 269399
(13313, 17909, 0, 0, 0, 0, 0, 0, 0, 0, 60000, 27481); -- SpellId : 269399


DELETE FROM `areatrigger_template_actions` WHERE `AreaTriggerId` = 17909;
INSERT INTO `areatrigger_template_actions` (`AreaTriggerId`, `ActionType`, `ActionParam`, `TargetType`) VALUES 
(17909, 1, 269419, 2);

UPDATE `creature_template` SET `ScriptName` = 'boss_volzith', mechanic_immune_mask = 2147467263, `unit_flags` = 0, `unit_flags2` = 0, `unit_flags3` = 0 WHERE `entry` = 134069;
UPDATE `creature_template` SET `ScriptName` = 'npc_tentacle', `unit_flags` = 0, `unit_flags2` = 0 WHERE `entry` = 135987;
UPDATE creature_template_addon SET auras = '' WHERE entry IN (134069, 135987);

DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (267360);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 267360, 0, 31, 5, 140038);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (267364, 267444, 267037, 274551, 267034, 267304);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(267364, 'spell_tentacle_slam'),
(267444, 'spell_grasp_of_the_sunken_city_channel'),
(267037, 'spell_whispers_of_power_debuff'),
(274551, 'spell_old_tongue'),
(267034, 'spell_whispers_of_power'),
(267304, 'spell_call_the_abyss');

UPDATE `creature_template` SET `ScriptName` = 'npc_forgotten_denizen', `unit_flags` = 0, `unit_flags2` = 0, `unit_flags3` = 0 WHERE `entry` = 136297;
UPDATE `creature_template` SET `ScriptName` = 'npc_sunken_denizen', `unit_flags` = 0, `unit_flags2` = 0, `unit_flags3` = 0 WHERE `entry` = 136100;
UPDATE creature_template_addon SET auras = '' WHERE entry IN (136297, 136100);

UPDATE `creature_template` SET `ScriptName` = 'npc_manifestation_of_the_deep', mechanic_immune_mask = 0, `unit_flags` = 0, `unit_flags2` = 0, `unit_flags3` = 0 WHERE `entry` = 135903;
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16 WHERE `entry`=135903;

DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (267311);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 267311, 0, 31, 5, 134069);

UPDATE creature_template SET DamageModifier = 4 WHERE entry IN (SELECT id FROM creature WHERE map = 1864) AND minlevel > 100;
UPDATE creature_template SET DamageModifier = 5 WHERE entry IN (134056, 134063, 134058, 139737, 134069, 136295, 136100);

UPDATE `creature` SET `position_x` = 3617.39, `position_y` = -1715.65, `position_z` = 85.6533, `orientation` = 2.66901 WHERE `guid` = 280004340;
UPDATE `creature` SET `position_x` = 3627.24, `position_y` = -1708.07, `position_z` = 85.6533, `orientation` = 2.32894 WHERE `guid` = 280004339;
