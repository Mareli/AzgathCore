
SET @CGUID := 145042;
SET @OGUID := 82917;


DELETE FROM `spell_area` WHERE `spell`=58139 AND `area`IN(4530,4531);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(58139, 4531, 13144, 0, 0, 0, 2, 1, 64, 11), -- The Fleshweks after Killing two scourge with one skeleton
(58139, 4530, 13144, 0, 0, 0, 2, 1, 64, 11); -- Sanctumn on renaimation after Killing two scourge with one skeleton

DELETE FROM `creature` WHERE `id` IN(30703,30704,31015,30697,30696,31432);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 31015, 571, 1, 175, 6661.146, 3261.688, 668.9714, 4.115243, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+1, 31015, 571, 1, 175, 6627.71, 3189.896, 647.9885, 2.84596, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+2, 31015, 571, 1, 175, 6659.174, 3212.105, 667.0215, 0.1042775, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+3, 31015, 571, 1, 175, 6654.514, 3239.867, 670.2061, 5.907172, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+4, 31015, 571, 1, 175, 6610.869, 3232.499, 668.5587, 2.604744, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+5, 31015, 571, 1, 175, 6605.338, 3153.076, 665.3033, 5.409661, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+6, 31015, 571, 1, 175, 6702.106, 3154.25, 654.8233, 5.986479, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+7, 31015, 571, 1, 175, 6583.975, 3157.158, 665.6695, 2.269745, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+8, 31015, 571, 1, 175, 6565.48, 3315.214, 667.1922, 3.576956, 120, 0, 0), -- 31015 (Area: 4588)
(@CGUID+9, 31015, 571, 1, 175, 6498.057, 3314.354, 664.8021, 0.5061455, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+10, 31015, 571, 1, 175, 6518.352, 3309.556, 665.1537, 5.462881, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+11, 31015, 571, 1, 175, 6571.921, 3315.821, 668.0949, 2.940412, 120, 0, 0), -- 31015 (Area: 4588)
(@CGUID+12, 31015, 571, 1, 175, 6572.489, 3319.39, 667.0414, -1.827478, 120, 0, 0), -- 31015 (Area: 4588)
(@CGUID+13, 31015, 571, 1, 175, 6530.034, 3256.114, 666.3459, 4.205114, 120, 0, 0), -- 31015 (Area: 4588)
(@CGUID+14, 31015, 571, 1, 175, 6493.935, 3292.664, 664.7191, 5.110613, 120, 5, 1), -- 31015 (Area: 4588) (possible waypoints or random movement)
(@CGUID+15, 31015, 571, 1, 175, 6569.369, 3316.948, 667.7736, -0.4594761, 120, 0, 0), -- 31015 (Area: 4588) (Auras: )
(@CGUID+16, 31015, 571, 1, 175, 6530.081, 3256.11, 666.2975, 4.193476, 120, 0, 0), -- 31015 (Area: 4588)
(@CGUID+17, 31015, 571, 1, 175, 6464.674, 3252.994, 641.5389, 5.995564, 120, 0, 0), -- 31015 (Area: 4531)
(@CGUID+18, 31015, 571, 1, 175, 6489.055, 3385.385, 598.3196, -1.682238, 120, 0, 0), -- 31015 (Area: 4531)
(@CGUID+19, 31015, 571, 1, 175, 6456.603, 3166.644, 657.527, 1.598204, 120, 0, 0), -- 31015 (Area: 4531)
(@CGUID+20, 31015, 571, 1, 175, 6461.294, 3153.185, 657.5644, 4.921828, 120, 5, 1), -- 31015 (Area: 4531) (possible waypoints or random movement)
(@CGUID+21, 31015, 571, 1, 175, 6453.171, 3166.278, 657.5888, 0.3810751, 120, 0, 0), -- 31015 (Area: 4531)
(@CGUID+22, 31015, 571, 1, 175, 6455.606, 3164.106, 657.6061, 1.870695, 120, 0, 0), -- 31015 (Area: 4531)
(@CGUID+23, 31015, 571, 1, 175, 6412.766, 3231.688, 639.8654, 4.939847, 120, 5, 1), -- 31015 (Area: 4531) (possible waypoints or random movement)
(@CGUID+24, 31015, 571, 1, 175, 6667.497, 3354.504, 704.6642, -2.447248, 120, 0, 0), -- 31015 (Area: 4531)
(@CGUID+25, 30696, 571, 1, 175, 6638.812, 3160.733, 660.6064, 1.080401, 120, 5, 1), -- 30696 (Area: 4588) (possible waypoints or random movement)
(@CGUID+26, 30696, 571, 1, 175, 6686.414, 3147.764, 656.3453, 6.07866, 120, 5, 1), -- 30696 (Area: 4588) (possible waypoints or random movement)
(@CGUID+27, 30696, 571, 1, 175, 6526.674, 3303.937, 665.1752, 4.911891, 120, 5, 1), -- 30696 (Area: 4588) (possible waypoints or random movement)
(@CGUID+28, 30696, 571, 1, 175, 6548.213, 3310.022, 665.8172, 2.349988, 120, 0, 0), -- 30696 (Area: 4588)
(@CGUID+29, 30696, 571, 1, 175, 6532.149, 3256.876, 666.6301, -2.182277, 120, 0, 0), -- 30696 (Area: 4588)
(@CGUID+30, 30696, 571, 1, 175, 6521.981, 3320.334, 664.9473, 4.594295, 120, 0, 0), -- 30696 (Area: 4588)
(@CGUID+31, 30696, 571, 1, 175, 6470.161, 3250.802, 643.5604, 3.930473, 120, 0, 0), -- 30696 (Area: 4531)
(@CGUID+32, 30696, 571, 1, 175, 6487.702, 3380.006, 599.0916, 6.272988, 120, 0, 0), -- 30696 (Area: 4531)
(@CGUID+33, 30696, 571, 1, 175, 6488.242, 3194.719, 652.9039, 1.48353, 120, 0, 0), -- 30696 (Area: 4531)
(@CGUID+34, 30696, 571, 1, 175, 6435.536, 3141.343, 657.5279, 0.1379021, 120, 5, 1), -- 30696 (Area: 4531) (possible waypoints or random movement)
(@CGUID+35, 30696, 571, 1, 175, 6564.194, 3135.601, 666.2081, 0.4537856, 120, 0, 0), -- 30696 (Area: 4531)
(@CGUID+36, 30696, 571, 1, 175, 6410.666, 3233.757, 640.489, 4.667454, 120, 5, 1), -- 30696 (Area: 4531) (possible waypoints or random movement)
(@CGUID+37, 30696, 571, 1, 175, 6413.427, 3218.029, 638.4678, 0.122173, 120, 0, 0), -- 30696 (Area: 4531)
(@CGUID+38, 30696, 571, 1, 175, 6452.031, 3161.715, 657.5867, 0.9863433, 120, 0, 0), -- 30696 (Area: 4531)
(@CGUID+39, 30696, 571, 1, 175, 6459.535, 3110.506, 657.6054, 1.157361, 120, 5, 1), -- 30696 (Area: 4531) (possible waypoints or random movement)
(@CGUID+40, 30696, 571, 1, 175, 6679.659, 3345.589, 704.6539, 3.205272, 120, 5, 1), -- 30696 (Area: 4531) (possible waypoints or random movement)
(@CGUID+41, 30703, 571, 1, 175, 6571.963, 3314.406, 668.2784, 2.36651, 120, 0, 0), -- 30703 (Area: 4588)
(@CGUID+42, 30703, 571, 1, 175, 6517.844, 3323.566, 664.8954, -0.663258, 120, 0, 0), -- 30703 (Area: 4588)
(@CGUID+43, 30703, 571, 1, 175, 6528.306, 3259.301, 665.793, -1.073858, 120, 0, 0), -- 30703 (Area: 4588)
(@CGUID+44, 30703, 571, 1, 175, 6454.563, 3168.846, 657.5237, 5.535412, 120, 0, 0), -- 30703 (Area: 4531)
(@CGUID+45, 30703, 571, 1, 175, 6421.846, 3257.234, 640.0424, 2.456618, 120, 0, 0), -- 30703 (Area: 4531) (Auras: )
(@CGUID+46, 30703, 571, 1, 175, 6669.027, 3354.094, 704.2711, 2.458861, 120, 0, 0), -- 30703 (Area: 4531)
(@CGUID+47, 30704, 571, 1, 175, 6572.606, 3315.346, 668.405, -2.30596, 120, 0, 0), -- 30704 (Area: 4588)
(@CGUID+48, 30704, 571, 1, 175, 6568.352, 3316.549, 667.683, 2.906086, 120, 0, 0), -- 30704 (Area: 4588)
(@CGUID+49, 30704, 571, 1, 175, 6571.605, 3316.023, 668.1923, -2.073231, 120, 0, 0), -- 30704 (Area: 4588)
(@CGUID+50, 30704, 571, 1, 175, 6530.246, 3252.483, 666.8104, 1.616269, 120, 0, 0), -- 30704 (Area: 4588)
(@CGUID+51, 30704, 571, 1, 175, 6543.361, 3308.063, 665.3945, 0.383608, 120, 0, 0), -- 30704 (Area: 4588)
(@CGUID+52, 30704, 571, 1, 175, 6529.136, 3252.577, 666.5628, 1.30948, 120, 0, 0), -- 30704 (Area: 4588) (Auras: )
(@CGUID+53, 30704, 571, 1, 175, 6489.347, 3384.931, 598.3163, -1.893157, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+54, 30704, 571, 1, 175, 6492.296, 3382.427, 598.8416, 5.579057, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+55, 30704, 571, 1, 175, 6488.653, 3381.798, 598.9666, 1.330476, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+56, 30704, 571, 1, 175, 6492.833, 3385.416, 598.5916, -3.133257, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+57, 30704, 571, 1, 175, 6492.375, 3197.953, 653.0616, -2.477693, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+58, 30704, 571, 1, 175, 6571.54, 3281.336, 670.894, 5.986175, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+59, 30704, 571, 1, 175, 6463.915, 3257.741, 640.313, 0.01159616, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+60, 30704, 571, 1, 175, 6462.88, 3253.862, 641.1767, 0.2747464, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+61, 30704, 571, 1, 175, 6468.83, 3249.454, 643.105, 0.7893116, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+62, 30704, 571, 1, 175, 6509.02, 3212.699, 658.4735, 2.319517, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+63, 30704, 571, 1, 175, 6507.89, 3210.89, 658.0303, 1.634014, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+64, 30704, 571, 1, 175, 6456.575, 3167.642, 657.5801, -1.838321, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+65, 30704, 571, 1, 175, 6452.937, 3166.663, 657.6061, -0.005128502, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+66, 30704, 571, 1, 175, 6454.717, 3168.428, 657.5237, 2.709053, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+67, 30704, 571, 1, 175, 6455.861, 3167.833, 657.575, -1.598367, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+68, 30704, 571, 1, 175, 6416.846, 3214.117, 639.7312, 2.10443, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+69, 30704, 571, 1, 175, 6590.434, 3331.823, 667.183, 4.037075, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+70, 30704, 571, 1, 175, 6668.725, 3357.257, 704.2558, -3.137703, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+71, 30704, 571, 1, 175, 6664.69, 3352.166, 704.3459, 1.520238, 120, 0, 0), -- 30704 (Area: 4531)
(@CGUID+72, 30697, 571, 1, 175, 6559.192, 3333.02, 664.9217, 4.991642, 120, 0, 0), -- 30697 (Area: 4588)
(@CGUID+73, 30697, 571, 1, 175, 6512.84, 3320.273, 665.2345, 0.5819893, 120, 0, 0), -- 30697 (Area: 4588)
(@CGUID+74, 30697, 571, 1, 175, 6515.811, 3280.09, 665.0708, 0.1396263, 120, 0, 0), -- 30697 (Area: 4531)
(@CGUID+75, 30697, 571, 1, 175, 6476.128, 3146.229, 657.5644, 4.380776, 120, 0, 0), -- 30697 (Area: 4531)
(@CGUID+76, 30697, 571, 1, 175, 6417.988, 3260.385, 640.6262, -0.6849744, 120, 0, 0), -- 30697 (Area: 4531)
(@CGUID+77, 31432, 571, 1, 175, 6588.427, 3278.203, 818.2033, 5.044002, 120, 5, 1); -- 31432 (Area: 4588) (possible waypoints or random movement)


UPDATE `creature` SET `phaseId`=175 WHERE `id` IN(31314,30698,31306,31428);
UPDATE `creature` SET `phaseGroup`=414 WHERE `id` IN(30597,32467);
UPDATE `creature_template` SET `unit_flags`=768 WHERE  `entry`=31432;
UPDATE `creature` SET `equipment_id`=1 WHERE  `id` IN(30703,30704);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=31432;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(31432, 31428, 0, 0, '31432 - 31428', 6, 30000); -- 31432 - 31428


DELETE FROM `gameobject` WHERE `id` IN(193203,193204);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 193203, 571, 1, 175, 6531.642, 3336.632, 666.5159, 2.565632, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+1, 193203, 571, 1, 175, 6541.198, 3337.612, 674.4935, 3.194002, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+2, 193203, 571, 1, 175, 6561.242, 3342.843, 667.0536, 3.106652, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+3, 193203, 571, 1, 175, 6575.444, 3336.632, 667.6539, 4.398232, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+4, 193203, 571, 1, 175, 6517.65, 3262.135, 668.0207, 0.3141584, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+5, 193204, 571, 1, 175, 6509.69, 3298.966, 670.1282, 3.892087, 0, 0, 0, 1, 120, 255, 1), -- 193204 (Area: 4531)
(@OGUID+6, 193203, 571, 1, 175, 6441.041, 3245.802, 643.5339, 4.433136, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+7, 193203, 571, 1, 175, 6523.465, 3403.516, 599.7352, 1.06465, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+8, 193204, 571, 1, 175, 6774.447, 3517.597, 670.3411, 3.106652, 0, 0, 0, 1, 120, 255, 1), -- 193204 (Area: 4531)
(@OGUID+9, 193204, 571, 1, 175, 6774.1, 3539.328, 670.2827, 3.961899, 0, 0, 0, 1, 120, 255, 1), -- 193204 (Area: 4531)
(@OGUID+10, 193203, 571, 1, 175, 6815.187, 3502.362, 691.7656, 2.234018, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+11, 193203, 571, 1, 175, 6836.54, 3514.926, 691.6472, 3.560473, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+12, 193204, 571, 1, 175, 6859.746, 3515.827, 696.0732, 4.747296, 0, 0, 0, 1, 120, 255, 1), -- 193204 (Area: 4531)
(@OGUID+13, 193203, 571, 1, 175, 6717.095, 3499.194, 656.2964, 1.308995, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+14, 193203, 571, 1, 175, 6716.513, 3544.395, 670.4061, 0.6632232, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+15, 193203, 571, 1, 175, 6671.143, 3539.871, 670.931, 3.560473, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+16, 193203, 571, 1, 175, 6656.081, 3455.363, 632.7549, 2.705255, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+17, 193203, 571, 1, 175, 6678.709, 3572.928, 671.7523, 4.06662, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+18, 193203, 571, 1, 175, 6665.039, 3553.045, 670.4769, 2.076939, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+19, 193203, 571, 1, 175, 6466.252, 3423.323, 598.091, 0.4537851, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+20, 193203, 571, 1, 175, 6522.733, 3429.231, 599.0632, 3.351047, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+21, 193203, 571, 1, 175, 6516.931, 3478.982, 597.8824, 4.729844, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+22, 193203, 571, 1, 175, 6498.917, 3480.367, 596.7786, 2.024579, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+23, 193203, 571, 1, 175, 6544.474, 3464.513, 597.8202, 0.1396245, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+24, 193203, 571, 1, 175, 6671.423, 3264.837, 669.0335, 5.724681, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+25, 193203, 571, 1, 175, 6669.524, 3338.208, 703.5842, 1.797689, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+26, 193204, 571, 1, 175, 6926.368, 3514.581, 713.6303, 4.031712, 0, 0, 0, 1, 120, 255, 1), -- 193204 (Area: 4531)
(@OGUID+27, 193203, 571, 1, 175, 6901.291, 3446.396, 704.4607, 2.583081, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+28, 193204, 571, 1, 175, 6885.061, 3495.637, 707.6733, 6.056293, 0, 0, 0, 1, 120, 255, 1), -- 193204 (Area: 4531)
(@OGUID+29, 193203, 571, 1, 175, 6907.985, 3453.707, 705.4143, 6.03884, 0, 0, 0, 1, 120, 255, 1), -- 193203 (Area: 4531)
(@OGUID+30, 193203, 571, 1, 175, 6680.36, 3371.357, 701.1601, 0.3141584, 0, 0, 0, 1, 120, 255, 1); -- 193203 (Area: 4531)

DELETE FROM `creature_template_addon` WHERE `entry` IN(30703,30704,31432);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(31432, 0, 0x3000000, 0x1, ''), -- 31432
(30703, 25280, 0x0, 0x1, ''), -- 30703
(30704, 28919, 0x0, 0x1, ''); -- 30704

DELETE FROM `creature_addon` WHERE `guid` IN(@CGUID+41,@CGUID+42,@CGUID+43,@CGUID+47,@CGUID+48,@CGUID+49,@CGUID+50,@CGUID+51,@CGUID+52);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(@CGUID+41, 0, 0x0, 0x1, ''), 
(@CGUID+42, 0, 0x0, 0x1, ''), 
(@CGUID+43, 0, 0x0, 0x1, ''), 
(@CGUID+47, 0, 0x0, 0x1, ''), 
(@CGUID+48, 0, 0x0, 0x1, ''), 
(@CGUID+49, 0, 0x0, 0x1, ''), 
(@CGUID+50, 0, 0x0, 0x1, ''), 
(@CGUID+51, 0, 0x0, 0x1, ''), 
(@CGUID+52, 0, 0x0, 0x1, '');

UPDATE `creature_template` SET `ainame`='SmartAI' WHERE `entry` IN(30703,30704,31015);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(30703,30704,31015) AND `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30703,0,0,0,4,0,100,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ebon Blade Champion - On Agro - Dismount'),
(30703,0,1,0,0,0,100,0,0,5000,25000,35000,11,58130,2,0,0,0,0,1,0,0,0,0,0,0,0,'Ebon Blade Champion - IC - Cast Icebound Fortitude'),
(30703,0,2,0,9,0,100,0,0,5,20000,30000,11,50688,2,0,0,0,0,2,0,0,0,0,0,0,0,'Ebon Blade Champion - On Range - Cast Plague Strike'),
(30704,0,0,0,4,0,100,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Argent Paladin - On Agro - Dismount'),
(30704,0,1,0,9,0,100,0,0,5,12000,15000,11,58127,2,0,0,0,0,2,0,0,0,0,0,0,0,'Argent Paladin - On Range - Cast Divine Storm'),
(31015,0,0,0,9,0,100,0,0,5,15000,25000,11,60873,2,0,0,0,0,2,0,0,0,0,0,0,0,'Intrepid Ghoul - On Range - Cast Festering Bite'),
(31015,0,1,0,9,0,100,0,0,5,9000,16000,11,60872,2,0,0,0,0,2,0,0,0,0,0,0,0,'Intrepid Ghoul - On Range - Cast Festering Bite'),
(31015,0,2,0,2,0,100,1,0,10,0,0,11,58137,2,0,0,0,0,2,0,0,0,0,0,0,0,'Intrepid Ghoul - On Less than 10% hp - Cast Ghoulplosion');
