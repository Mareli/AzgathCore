-- Pathing for Krethis the Shadowspinner Entry: 12433 'TDB FORMAT' 
SET @NPC := 322085;
SET @PATH := @NPC * 10;

UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1274.974,`position_y`=1897.126,`position_z`=21.38938 WHERE `guid`=@NPC;

DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1274.974,1897.126,21.38938,0,0,0,0,100,0), -- 21:39:04
(@PATH,2,1278.909,1908.219,23.45893,0,0,0,0,100,0), -- 21:39:09
(@PATH,3,1284.339,1918.863,23.57857,0,0,0,0,100,0), -- 21:39:14
(@PATH,4,1280.469,1924.43,20.27084,0,0,0,0,100,0), -- 21:39:18
(@PATH,5,1271.227,1938.581,15.20391,0,0,0,0,100,0), -- 21:39:25
(@PATH,6,1265.389,1958.833,14.73023,0,0,0,0,100,0), -- 21:39:33
(@PATH,7,1255.614,1974.375,14.68589,0,0,0,0,100,0), -- 21:42:41
(@PATH,8,1242.331,1979.81,12.17621,0,0,0,0,100,0), -- 21:42:47
(@PATH,9,1221.198,1970.09,10.64629,0,0,0,0,100,0), -- 21:42:57
(@PATH,10,1206.895,1964.751,10.06111,0,0,0,0,100,0), -- 21:43:03
(@PATH,11,1186.084,1964.823,10.14644,0,0,0,0,100,0), -- 21:43:11
(@PATH,12,1168.252,1950.556,9.711398,0,0,0,0,100,0), -- 21:43:21
(@PATH,13,1167.201,1930.388,9.925863,0,0,0,0,100,0), -- 21:43:30
(@PATH,14,1173.539,1917.193,12.24881,0,0,0,0,100,0), -- 21:43:36
(@PATH,15,1183.568,1895.232,14.90211,0,0,0,0,100,0), -- 21:43:46
(@PATH,16,1192.336,1879.673,16.86435,0,0,0,0,100,0), -- 21:43:53
(@PATH,17,1211.627,1866.091,15.35263,0,0,0,0,100,0), -- 21:44:03
(@PATH,18,1238.959,1854.467,9.821017,0,0,0,0,100,0), -- 21:44:15
(@PATH,19,1248.241,1836.601,10.78487,0,0,0,0,100,0), -- 21:44:23
(@PATH,20,1274.907,1834.172,18.62721,0,0,0,0,100,0), -- 21:44:36
(@PATH,21,1273.366,1866.705,20.1383,0,0,0,0,100,0); -- 21:44:50
