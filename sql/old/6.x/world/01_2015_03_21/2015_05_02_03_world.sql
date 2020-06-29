SET @CGUID := 370768;
SET @OGUID := 233404;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+68;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@CGUID+0, 46763, 762, 4.26206, -11.6361, -17.82397, 3.420845),
(@CGUID+1, 48535, 762, -15.9296, -10.8046, -15.32037, 4.258604),
(@CGUID+2, 48535, 762, 2.31688, -7.91102, -23.63947, 0),
(@CGUID+3, 48535, 762, -4.130146, -2.779428, -17.79507, 0.01120401),
(@CGUID+4, 46764, 763, 4.15988, -11.1731, -17.82867, 3.368485),
(@CGUID+5, 48535, 763, -11.77357, -10.21906, -16.61713, 1.694214),
(@CGUID+6, 48535, 763, 6.63632, -3.07199, -17.71427, 1.22173),
(@CGUID+7, 48535, 763, 7.3889, -7.71648, -23.53657, 3.246312),
(@CGUID+8, 42885, 747, -54.99634, -7.373413, -5.197235, 2.366248),
(@CGUID+9, 42885, 747, -23.40527, -24.4469, -5.236877, 1.179137),
(@CGUID+10, 42885, 747, 21.1759, -13.75055, 9.600037, 4.709668),
(@CGUID+11, 42801, 747, -64.83681, 0.033795, 9.903969, 0),
(@CGUID+12, 42885, 747, 15.50969, -17.88296, -5.163431, 0.6208096),
(@CGUID+13, 42681, 747, -28.55183, -12.62104, 20.55605, 1.221731),
(@CGUID+14, 42681, 747, -36.9719, -12.35286, 20.52748, 2.094395),
(@CGUID+15, 42681, 747, -8.098283, -10.13041, 20.51006, 4.328416),
(@CGUID+16, 42885, 747, -44.20203, 21.69708, 9.606781, 0.9522773),
(@CGUID+17, 42885, 747, -1.110718, 21.1604, 9.630798, 0.5497429),
(@CGUID+18, 42885, 747, 14.22437, 10.63971, 9.554291, 2.169876),
(@CGUID+19, 42885, 747, -39.12793, 18.85876, -5.200531, 0.1506691),
(@CGUID+20, 42681, 747, -12.88364, 0.360375, 25.36376, 5.462881),
(@CGUID+21, 40350, 747, -32.20043, 0.574289, 13.4672, 0.541052),
(@CGUID+22, 42681, 747, 4.631958, -13.97084, 20.88808, 1.413717),
(@CGUID+23, 42682, 747, -43.78606, 0.475003, 20.60984, 6.178465),
(@CGUID+24, 42809, 747, -34.16956, 0.603002, 8.555613, 0),
(@CGUID+25, 42681, 747, -36.3671, 8.293001, 20.53229, 5.462881),
(@CGUID+26, 42682, 747, -11.36899, 8.655779, 20.51657, 0.7330384),
(@CGUID+27, 42885, 747, 25.26886, 0.7057495, -4.921814, 5.96848),
(@CGUID+28, 42885, 747, 5.521973, 21.10114, -5.195404, 2.243494),
(@CGUID+29, 42681, 747, -58.60949, -0.095605, 23.56651, 1.32645),
(@CGUID+30, 42682, 747, 7.348988, 1.012339, 20.63929, 2.199114),
(@CGUID+31, 42681, 747, -33.68518, 14.85802, 20.70304, 3.368485),
(@CGUID+32, 42681, 747, -13.73099, 14.58074, 20.47051, 5.742133),
(@CGUID+33, 42682, 747, -47.46341, 10.64703, 22.57558, 4.991642),
(@CGUID+34, 42682, 747, 18.27893, -11.43421, 20.46279, 4.328416),
(@CGUID+35, 42681, 747, 16.12486, -3.936981, 20.51413, 4.852015),
(@CGUID+36, 42681, 747, -62.30529, 4.799966, 23.54879, 0.4537854),
(@CGUID+37, 42885, 747, 34.90405, 8.44812, 9.605408, 5.832501),
(@CGUID+38, 42682, 747, 3.028534, 18.12543, 20.53766, 5.253441),
(@CGUID+39, 42885, 747, 43.29504, -4.26123, 9.285492, 3.197539),
(@CGUID+40, 42681, 747, 32.83448, -24.09242, 25.11685, 5.742133),
(@CGUID+41, 42885, 747, 42.10449, -4.010803, -2.083954, 1.74742),
(@CGUID+42, 42682, 747, 31.65753, -7.46235, 23.36306, 1.361357),
(@CGUID+43, 42681, 747, 15.77466, 16.16105, 20.59039, 2.076942),
(@CGUID+44, 42681, 747, 31.94202, 1.224564, 23.37182, 4.764749),
(@CGUID+45, 42682, 747, 39.30655, -41.2642, 25.11442, 2.199114),
(@CGUID+46, 43681, 747, 28.9662, 7.74904, 23.36593, 6.230825),
(@CGUID+47, 43082, 747, 28.9031, 7.92859, 23.36993, 3.385939),
(@CGUID+48, 42681, 747, 41.02726, -20.22445, 25.11503, 3.420845),
(@CGUID+49, 42681, 747, 38.54572, -4.734725, 40.167, 5.742133),
(@CGUID+50, 42682, 747, 35.79272, 6.766162, 40.16405, 5.253441),
(@CGUID+51, 42885, 747, 53.87292, 7.720337, -2.054565, 1.592655),
(@CGUID+52, 42681, 747, 35.64383, 22.14937, 25.1158, 5.742133),
(@CGUID+53, 40350, 747, 50.3677, 1.59352, 42.24823, 3.944444),
(@CGUID+54, 40350, 747, -22.0063, 53.3257, 4.203373, 4.956735),
(@CGUID+55, 42684, 747, 48.71556, 11.32662, 40.50675, 3.787364),
(@CGUID+56, 40350, 747, -21.9116, 57.4225, 25.87903, 3.944444),
(@CGUID+57, 42682, 747, 35.15972, 33.27727, 25.11475, 5.550147),
(@CGUID+58, 40350, 747, -24.6196, 55.3271, 5.002563, 4.782202),
(@CGUID+59, 40350, 747, -17.385, 55.5016, 4.217743, 4.956735),
(@CGUID+60, 40350, 747, -21.9806, 57.688, 9.419393, 3.944444),
(@CGUID+61, 42716, 747, 49.72736, 18.22787, 42.58023, 3.839724),
(@CGUID+62, 40350, 747, 49.58121, 18.193, 46.16101, 3.944444),
(@CGUID+63, 40350, 747, -24.3035, 61.4472, 3.728523, 1.256637),
(@CGUID+64, 40350, 747, -18.6721, 62.316, 4.217683, 1.256637),
(@CGUID+65, 40350, 747, 37.0378, 42.39633, 41.92483, 3.944444),
(@CGUID+66, 42681, 747, 40.88038, 43.12596, 25.11707, 5.044002),
(@CGUID+67, 40350, 747, 3.007076, 0.687804, -35.96375, 0.541052),
(@CGUID+68, 40350, 747, 6.583054, -26.1589, -42.17334, 0.541052);


DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+6;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 207571, 763, -4.223741, -10.42916, -17.757, 5.654869, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+1, 204280, 747, 44.1827, 6.19141, 10.4048, 3.769912, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+2, 204280, 747, -6.2442, -5.59698, 20.4536, 3.769912, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+3, 204279, 747, -37.0487, -3.5828, 20.4435, 2.199115, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+4, 204280, 747, 1.20738, 25.3906, 25.634, 3.769912, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+5, 204279, 747, -22.6119, 16.5843, 20.4029, 2.199115, 0, 0, 0, 1, 120, 255, 1),
(@OGUID+6, 204279, 747, -63.1212, -5.60142, 23.4866, 2.199115, 0, 0, 0, 1, 120, 255, 1);
