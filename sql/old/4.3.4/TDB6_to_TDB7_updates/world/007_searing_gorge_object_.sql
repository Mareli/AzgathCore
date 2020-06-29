-- Game Object Spawns Searing Gorge
SET @OGUID    := 225000;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+48;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 50982, 0, 1, 1, 0, -6850.783, -1538.734, 240.8644, 5.730457, 0, 0, 0, 1, 120, 255, 1),-- The Charred Oak
(@OGUID+1, 142837, 0, 1, 1, 0, -7019.648, -1715.341, 241.6788, 3.141593, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+2, 148498, 0, 1, 1, 0, -6477.94, -1243.35, 180.183, 3.525572, 0, 0, 0, 1, 120, 255, 1), -- Altar of Suntara
(@OGUID+3, 148506, 0, 1, 1, 0, -6484.869, -973.0788, 333.5645, 3.438303, 0, 0, 0, 1, 120, 255, 1), -- Twilight Artifact
(@OGUID+4, 149025, 0, 1, 1, 0, -7002.615, -1118.745, 258.7853, 3.926996, 0, 0, 0, 1, 120, 255, 1), -- Sentry Brazier
(@OGUID+5, 149030, 0, 1, 1, 0, -7005.989, -1305.397, 259.4996, 0.06981169, 0, 0, 0, 1, 120, 255, 1), -- Sentry Brazier
(@OGUID+6, 149031, 0, 1, 1, 0, -6914.24, -1440.12, 257.255, 1.954769, 0, 0, 0, 1, 120, 255, 1), -- Sentry Brazier
(@OGUID+7, 149032, 0, 1, 1, 0, -6910.33, -1066.01, 257.716, 3.961899, 0, 0, 0, 1, 120, 255, 1), -- Sentry Brazier
(@OGUID+8, 152032, 0, 1, 1, 0, -6831.787, -1226.228, 240.0312, 2.199111, 0, 0, 0, 1, 120, 255, 1), -- Anvil
(@OGUID+9, 152033, 0, 1, 1, 0, -6828.088, -1220.515, 240.0139, 4.703663, 0, 0, 0, 1, 120, 255, 1), -- Stone Anvil
(@OGUID+10, 152034, 0, 1, 1, 0, -6831.688, -1222.371, 240.0139, 1.780234, 0, 0, 0, 1, 120, 255, 1), -- Forge
(@OGUID+11, 152035, 0, 1, 1, 0, -7219.698, -1236.47, 254.7406, 3.141593, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+12, 152036, 0, 1, 1, 0, -6796.31, -1086.703, 243.4771, 3.143365, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+13, 152037, 0, 1, 1, 0, -6858.243, -1172.339, 240.3356, 3.141593, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+14, 152038, 0, 1, 1, 0, -6740.059, -1257.468, 246.4779, 3.141593, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+15, 152039, 0, 1, 1, 0, -6683.802, -1163.122, 240.2483, 3.141593, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+16, 152040, 0, 1, 1, 0, -6705.27, -1281.971, 240.9179, 3.132858, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+17, 152041, 0, 1, 1, 0, -6744.198, -1246.108, 246.4324, 6.126107, 0, 0, 0, 1, 120, 255, 1), -- Stone Anvil
(@OGUID+18, 152042, 0, 1, 1, 0, -6745.457, -1248.994, 246.7499, 1.780234, 0, 0, 0, 1, 120, 255, 1), -- Forge
(@OGUID+19, 152043, 0, 1, 1, 0, -6596.877, -1864.236, 244.9188, 4.136433, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+20, 152044, 0, 1, 1, 0, -6689.93, -1419.035, 242.2343, 3.132858, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+21, 152045, 0, 1, 1, 0, -6686.632, -1428.489, 241.3293, 0.4799649, 0, 0, 0, 1, 120, 255, 1), -- Forge
(@OGUID+22, 152046, 0, 1, 1, 0, -6689.933, -1426.456, 241.6353, 1.422442, 0, 0, 0, 1, 120, 255, 1), -- Stone Anvil
(@OGUID+23, 153240, 0, 1, 1, 0, -6471.138, -884.1467, 324.0875, 1.780234, 0, 0, 0, 1, 120, 255, 1), -- Stone Anvil
(@OGUID+24, 153241, 0, 1, 1, 0, -6490.667, -900.2643, 323.9729, 3.141593, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+25, 153242, 0, 1, 1, 0, -6610.969, -864.1788, 244.3056, 3.141593, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+26, 173265, 0, 1, 1, 0, -7024.781, -1786.504, 265.8278, 2.164206, 0, 0, 0, 1, 120, 255, 1), -- Wooden Outhouse
(@OGUID+27, 179500, 0, 1, 1, 0, -7226.222, -1740.191, 244.4409, 3.525572, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+28, 179844, 0, 1, 1, 0, -6525.997, -1188.373, 309.2178, 2.312241, 0, 0, 0, 1, 120, 255, 1), -- Forge
(@OGUID+29, 179862, 0, 1, 1, 0, -6524.34, -1185.847, 309.2188, 3.202675, 0, 0, 0, 1, 120, 255, 1), -- Anvil
(@OGUID+30, 204438, 0, 1, 1, 0, -7092.609, -1269.819, 270.44, 0.9512032, 0, 0, 0, 1, 120, 255, 1), -- Forge
(@OGUID+31, 204439, 0, 1, 1, 0, -6896.11, -1855.9, 250.6, 2.111848, 0, 0, 0, 1, 120, 255, 1), -- Campfire
(@OGUID+32, 204440, 0, 1, 1, 0, -7110.19, -1199.5, 307.218, 3.665196, 0, 0, 0, 1, 120, 255, 1), -- Mailbox
(@OGUID+33, 206597, 0, 1, 1, 0, -6627.73, -836.087, 244.167, 4.293513, 0, 0, 0, 1, 120, 255, 1), -- Twilight's Hammer Crate
(@OGUID+34, 208263, 0, 1, 1, 0, -7230.382, -1741.052, 244.447, 0.802851, 0, 0, 0, 1, 120, 255, 1), -- Sarah Tanner Cocoon
(@OGUID+35, 206659, 0, 1, 1, 0, -7220.63, -1240.7, 254.741, 0, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+36, 206659, 0, 1, 1, 0, -7146.43, -1363.08, 248.048, 5.864307, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+37, 206659, 0, 1, 1, 0, -7223.125, -1250.248, 254.709, 6.003934, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+38, 206659, 0, 1, 1, 0, -7051.42, -1365.72, 242.586, 0, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+39, 206659, 0, 1, 1, 0, -6987.43, -1382.27, 242.983, 0.6806767, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+40, 206659, 0, 1, 1, 0, -6994.84, -1415.49, 241.976, 1.710422, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+41, 206659, 0, 1, 1, 0, -7040.87, -1427.3, 241.674, 0.9773831, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+42, 206659, 0, 1, 1, 0, -7216.13, -1444.14, 247.875, 0.2792516, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+43, 206659, 0, 1, 1, 0, -7134.1, -1453.81, 246.34, 1.151916, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+44, 206659, 0, 1, 1, 0, -7163.03, -1452.38, 243.624, 0, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+45, 206659, 0, 1, 1, 0, -7124.29, -1402.82, 244.092, 1.047198, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+46, 206659, 0, 1, 1, 0, -7164.25, -1380.19, 242.145, 5.67232, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+47, 206659, 0, 1, 1, 0, -7092.08, -1431.54, 245.128, 4.71239, 0, 0, 0, 1, 120, 255, 1), -- Dark Iron Bullets
(@OGUID+48, 206659, 0, 1, 1, 0, -7215.13, -1302.19, 253.331, 0.01745246, 0, 0, 0, 1, 120, 255, 1); -- Dark Iron Bullets
