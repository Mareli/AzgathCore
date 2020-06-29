-- Lil Timmy c.8666 - Stormwind
-- correct spawn point, spawntime, waypoints.
SET @GUID:= 23427; -- 1 free guid set by tc
DELETE FROM `creature_formations` WHERE `leaderGUID`=45501;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(45501,45501,0,0,2),
(45501,@GUID,2,0,2);

-- White Kitten - missing added
DELETE FROM `creature` WHERE `guid`=@GUID; 
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `spawndist`, `MovementType`) VALUES
(@GUID, 7386, 0, 1, 1, 1, -8632.046875, 921.279480, 99.382813, 3.897803, 180, 42, 0, 0);

UPDATE `creature` SET `position_x` =-8634.505859, `position_y` = 918.960571, `position_z` = 99.354980, `orientation` = 3.832987, `MovementType` = 2, `spawntimesecs` = 5400 WHERE `guid` = 45501;
UPDATE `creature` SET `position_x` =-8583.879883 , `position_y` =633.127014 , `position_z` =96.338028 , `orientation` =4.989326  WHERE `guid` = 79816;
UPDATE `creature` SET `position_x` =-8582.030273 , `position_y` =633.633972 , `position_z` =96.338028 , `orientation` =4.989326  WHERE `guid` = 79815;
UPDATE `creature` SET `position_x` =-8580.509766 , `position_y` =635.107971 , `position_z` =96.338028 , `orientation` =4.989326  WHERE `guid` = 79817;

UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 8666;
DELETE FROM `creature_addon` WHERE `guid`=45501;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(45501,455010,0,0,1,0,'');

DELETE FROM `waypoint_data` WHERE `id`=455010;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(455010,1,-8641.4,912.342,99.1397,0,0,0,0,100,0),
(455010,2,-8661.71,894.74,97.6239,0,0,0,0,100,0),
(455010,3,-8679.15,880.967,97.0168,0,0,0,0,100,0),
(455010,4,-8681.12,877.654,97.0168,0,0,0,0,100,0),
(455010,5,-8679.29,873.082,97.0168,0,0,0,0,100,0),
(455010,6,-8659.98,849.329,97.0168,0,0,0,0,100,0),
(455010,7,-8639.96,825.073,96.6251,0,0,0,0,100,0),
(455010,8,-8636.74,813.025,96.6486,0,0,0,0,100,0),
(455010,9,-8634,793.001,96.6508,0,0,0,0,100,0),
(455010,10,-8635.94,785.58,96.6515,0,0,0,0,100,0),
(455010,11,-8651.43,775.162,96.6714,0,0,0,0,100,0),
(455010,12,-8661.39,764.974,96.6998,0,0,0,0,100,0),
(455010,13,-8662.58,758.134,96.6947,0,0,0,0,100,0),
(455010,14,-8647.73,738.576,96.6965,0,0,0,0,100,0),
(455010,15,-8630.74,726.606,96.7377,0,0,0,0,100,0),
(455010,16,-8618.88,711.997,96.7248,0,0,0,0,100,0),
(455010,17,-8614.67,709.545,96.7549,0,0,0,0,100,0),
(455010,18,-8606.13,711.345,96.7382,0,0,0,0,100,0),
(455010,19,-8598.07,712.945,96.6746,0,0,0,0,100,0),
(455010,20,-8588.25,706.887,97.0168,0,0,0,0,100,0),
(455010,21,-8566.09,678.512,97.0168,0,0,0,0,100,0),
(455010,22,-8561.86,674.735,97.0168,0,0,0,0,100,0),
(455010,23,-8556.46,676.784,97.0168,0,0,0,0,100,0),
(455010,24,-8542.79,686.774,97.6239,0,0,0,0,100,0),
(455010,25,-8536.45,686.854,97.6775,0,0,0,0,100,0),
(455010,26,-8531.64,683.194,98.4422,0,0,0,0,100,0),
(455010,27,-8524.58,673.178,102.5,0,0,0,0,100,0),
(455010,28,-8519.8,666.4,102.615,0,0,0,0,100,0),
(455010,29,-8512.94,656.648,100.901,0,0,0,0,100,0),
(455010,30,-8513.15,648.714,100.292,0,0,0,0,100,0),
(455010,31,-8518.18,642.361,100.092,0,0,0,0,100,0),
(455010,32,-8538.04,630.723,100.404,0,0,0,0,100,0),
(455010,33,-8554.03,617.81,102.053,0,0,0,0,100,0),
(455010,34,-8564.5,613.48,102.435,0,0,0,0,100,0),
(455010,35,-8576.12,601.799,103.26,0,0,0,0,100,0),
(455010,36,-8582.44,589.572,103.691,0,0,0,0,100,0),
(455010,37,-8586.68,575.605,102.985,0,0,0,0,100,0),
(455010,38,-8585.96,565.941,102.26,0,0,0,0,100,0),
(455010,39,-8578.9,545.988,101.779,0,0,0,0,100,0),
(455010,40,-8581.73,541.012,102.09,0,0,0,0,100,0),
(455010,41,-8590.09,533.912,104.76,0,0,0,0,100,0),
(455010,42,-8598.32,527.164,106.399,0,0,0,0,100,0),
(455010,43,-8605.67,520.882,105.748,0,0,0,0,100,0),
(455010,44,-8610.26,515.735,103.79,0,0,0,0,100,0),
(455010,45,-8613.43,514.684,103.401,0,0,0,0,100,0),
(455010,46,-8618.8,518.794,103.068,0,0,0,0,100,0),
(455010,47,-8635.17,535.152,99.9833,0,0,0,0,100,0),
(455010,48,-8647.39,546.721,97.8568,0,0,0,0,100,0),
(455010,49,-8655.78,552.938,96.9435,0,0,0,0,100,0),
(455010,50,-8671.86,552.874,97.2037,0,0,0,0,100,0),
(455010,51,-8679.66,549.654,97.5031,0,0,0,0,100,0),
(455010,52,-8689.63,540.268,97.828,0,0,0,0,100,0),
(455010,53,-8698.98,530.295,97.7173,0,0,0,0,100,0),
(455010,54,-8712.64,520.242,97.2398,0,0,0,0,100,0),
(455010,55,-8715.24,521.571,97.4039,0,0,0,0,100,0),
(455010,56,-8720.77,528.729,99.1496,0,0,0,0,100,0),
(455010,57,-8729.84,539.87,101.105,0,0,0,0,100,0),
(455010,58,-8735.95,547.101,100.845,0,0,0,0,100,0),
(455010,59,-8745.79,557.737,97.7107,0,0,0,0,100,0),
(455010,60,-8746.01,564.915,97.4001,0,0,0,0,100,0),
(455010,61,-8729.92,581.294,97.6775,0,0,0,0,100,0),
(455010,62,-8719.58,591.033,98.4713,0,0,0,0,100,0),
(455010,63,-8712.04,594.001,98.6079,0,0,0,0,100,0),
(455010,64,-8707.26,600.676,98.9982,0,0,0,0,100,0),
(455010,65,-8704.46,616.407,100.215,0,0,0,0,100,0),
(455010,66,-8705.6,629.078,100.477,0,0,0,0,100,0),
(455010,67,-8708.67,645.787,99.9994,0,0,0,0,100,0),
(455010,68,-8716.46,666.585,98.8681,0,0,0,0,100,0),
(455010,69,-8724.09,676.482,98.6317,0,0,0,0,100,0),
(455010,70,-8728.54,684.167,98.7324,0,0,0,0,100,0),
(455010,71,-8733.47,695.151,98.723,0,0,0,0,100,0),
(455010,72,-8743.6,709.876,98.2678,0,0,0,0,100,0),
(455010,73,-8741.08,714.561,98.9815,0,0,0,0,100,0),
(455010,74,-8734.46,720.119,101.647,0,0,0,0,100,0),
(455010,75,-8726.79,726.231,100.924,0,0,0,0,100,0),
(455010,76,-8718.09,733.687,97.9511,0,0,0,0,100,0),
(455010,77,-8716.42,737.269,97.7782,0,0,0,0,100,0),
(455010,78,-8721.01,746.752,97.9693,0,0,0,0,100,0),
(455010,79,-8730.96,759.107,98.1572,0,0,0,0,100,0),
(455010,80,-8731.99,769.385,98.0161,0,0,0,0,100,0),
(455010,81,-8724.64,778.108,98.0604,0,0,0,0,100,0),
(455010,82,-8717.55,792.762,97.1197,0,0,0,0,100,0),
(455010,83,-8717.68,798.804,97.1792,0,0,0,0,100,0),
(455010,84,-8728.3,817.744,96.9777,0,0,0,0,100,0),
(455010,85,-8726.79,830.504,96.3102,0,0,0,0,100,0),
(455010,86,-8723.42,841.35,96.0764,0,0,0,0,100,0),
(455010,87,-8709.57,857.779,96.978,0,0,0,0,100,0),
(455010,88,-8692.38,870.557,97.0284,0,0,0,0,100,0),
(455010,89,-8679.35,880.974,97.0167,0,0,0,0,100,0),
(455010,90,-8661.22,896.239,97.5968,0,0,0,0,100,0),
(455010,91,-8643.7,912.233,98.9288,0,0,0,0,100,0),
(455010,92,-8634.58,918.926,99.3551,0,0,0,0,100,0);
