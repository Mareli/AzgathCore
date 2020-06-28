-- script_waypoints for Arthas movements inside Culling
DELETE FROM `script_waypoint` WHERE `entry`=26499;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(26499,0,1903.167,1291.573,143.32,0, 'culling Bridge WP1'),
(26499,1,1911.087,1314.263,150.026,0, 'culling Bridge WP2'),
(26499,2,1902.959,1295.127,143.388,10000, 'culling Bridge WP3'),
(26499,3,1913.726,1287.407,141.927,0, 'culling Bridge WP4'),
(26499,4,1990.833,1293.391,145.467,0, 'culling Bridge WP5'),
(26499,5,1997.003,1317.776,142.963,0, 'culling Bridge WP6'),
(26499,6,2019.631,1326.084,142.929,0, 'culling Bridge WP7'),
(26499,7,2026.469,1287.088,143.596,0, 'culling Bridge WP8'),
(26499,8,2050.660,1287.333,142.671,0, 'culling Bridge WP9'),
(26499,9,2081.447,1287.770,141.324,0, 'culling Streets WP1'),
(26499,10,2087.689,1280.344,140.730,0, 'culling Streets WP2'),
(26499,11,2092.154,1276.645,140.520,0, 'culling Streets WP3'),
(26499,12,2099.876,1280.21,138.55,0, 'culling Streets WP4'),
(26499,13,2120.757,1286.97,136.343,0, 'culling Streets WP5'),
(26499,14,2165.073,1279.338,133.40,0, 'culling Streets WP6'),
(26499,15,2186.441,1234.445,136.524,0, 'culling Streets WP7'),
(26499,16,2210.385,1207.550,136.259,0, 'culling Streets WP8'),
(26499,17,2243.594,1177.705,137.144,0, 'culling Streets WP9'),
(26499,18,2286.883,1177.262,137.631,0, 'culling Streets WP10'),
(26499,19,2320.374,1179.954,133.926,0, 'culling Streets WP11'),
(26499,20,2365.626,1194.838,131.974,0, 'culling Streets WP12'),
(26499,21,2366.559,1197.759,132.382,0, 'culling House WP1'),
(26499,22,2394.011,1205.148,134.125,0, 'culling House WP2'),
(26499,23,2395.854,1206.345,134.039,0, 'culling House WP3'),
(26499,24,2442.023,1219.205,133.999,0, 'culling House WP3'),
(26499,25,2447.105,1191.182,148.076,0, 'culling House WP4'),
(26499,26,2444.250,1190.510,148.076,0, 'culling House WP5'),
(26499,27,2418.487,1196.059,148.076,0, 'culling House WP6'),
(26499,28,2401.221,1191.705,148.076,0, 'culling House WP7'),
(26499,29,2409.205,1157.425,148.190,0, 'culling House WP8'),
(26499,30,2417.584,1121.026,148.082,0, 'culling House WP9'),
(26499,31,2423.123,1119.431,148.076,0, 'culling House WP10'),
(26499,32,2447.833,1112.714,148.076,0, 'culling House WP11'),
(26499,33,2457.133,1120.941,150.008,0, 'culling House WP12'),
(26499,34,2459.694,1127.012,150.008,0, 'culling House WP13'),
(26499,35,2469.617,1122.274,150.008,0, 'culling House WP14'),
(26499,36,2470.437,1122.794,150.008,3000, 'culling House WP15'),
(26499,37,2471.662,1123.077,150.035,3000, 'culling House WP16'),
(26499,38,2483.183,1125.042,149.905,0, 'culling Secret WP1'),
(26499,39,2487.867,1099.760,144.858,0, 'culling Secret WP2'),
(26499,40,2498.270,1101.929,144.599,0, 'culling Secret WP3'),
(26499,41,2492.114,1128.238,139.967,0, 'culling Secret WP4'),
(26499,42,2500.286,1130.183,139.982,0, 'culling Room WP1'),
(26499,43,2503.010,1119.241,139.978,0, 'culling Room WP2'),
(26499,44,2517.820,1122.645,132.066,0, 'culling Room WP3'),
(26499,45,2540.479,1129.061,130.868,7000, 'culling Fire Street WP1'),
(26499,46,2568.619,1157.794,126.906,0, 'culling Fire Street WP2'),
(26499,47,2556.074,1222.058,125.412,20000, 'culling Fire Street WP3'),
(26499,48,2521.531,1295.209,130.573,0, 'culling Fire Street WP4'),
(26499,49,2504.362,1348.667,132.944,0, 'culling Fire Street WP5'),
(26499,50,2450.594,1431.544,131.361,0, 'culling Fire Street WP6'),
(26499,51,2353.485,1404.839,128.531,0, 'culling Market WP1'),
(26499,52,2329.882,1406.273,128.013,0, 'culling Market WP2'),
(26499,53,2329.882,1406.273,128.013,12000, 'culling Market WP3'),
(26499,54,2327.391,1412.475,127.692,0, 'culling Market WP4'),
(26499,55,2303.016,1480.070,128.139,0, 'culling Crusader WP1'),
(26499,56,2296.665,1502.362,128.362,0, 'culling Crusader WP2');
