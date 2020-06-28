ALTER TABLE `broadcast_text` CHANGE COLUMN `WDBVerified` `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `creature_equip_template` CHANGE COLUMN `WDBVerified` `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `creature_template` CHANGE COLUMN `WDBVerified` `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `gameobject_template` CHANGE COLUMN `WDBVerified` `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `item_set_names` CHANGE COLUMN `WDBVerified` `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `item_template` CHANGE COLUMN `WDBVerified` `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `npc_text` CHANGE COLUMN `WDBVerified` `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `page_text` CHANGE COLUMN `WDBVerified` `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `quest_template` CHANGE COLUMN `WDBVerified` `VerifiedBuild` SMALLINT(5) DEFAULT '0';

ALTER TABLE `areatrigger_teleport` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `creature` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `lfg_entrances` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `locales_broadcast_text` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `locales_creature` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `locales_gameobject` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `locales_item` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `locales_item_set_names` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `locales_quest` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `npc_vendor` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `quest_poi_points` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';
ALTER TABLE `quest_poi` ADD `VerifiedBuild` SMALLINT(5) DEFAULT '0';

UPDATE `locales_broadcast_text` SET `VerifiedBuild`=18019;
UPDATE `locales_creature` SET `VerifiedBuild`=18019;
UPDATE `locales_gameobject` SET `VerifiedBuild`=18019;
UPDATE `locales_item` SET `VerifiedBuild`=15050;
UPDATE `locales_item_set_names` SET `VerifiedBuild`=15050;
UPDATE `locales_quest` SET `VerifiedBuild`=18019;

UPDATE `creature_template` SET `VerifiedBuild`=0 WHERE `VerifiedBuild`=1;
UPDATE `gameobject_template` SET `VerifiedBuild`=0 WHERE `VerifiedBuild`=1;
UPDATE `item_set_names` SET `VerifiedBuild`=0 WHERE `VerifiedBuild`=1;
UPDATE `item_template` SET `VerifiedBuild`=0 WHERE `VerifiedBuild`=1;
UPDATE `npc_text` SET `VerifiedBuild`=0 WHERE `VerifiedBuild`=1;
UPDATE `page_text` SET `VerifiedBuild`=0 WHERE `VerifiedBuild`=1;
UPDATE `item_template` SET `VerifiedBuild`=0 WHERE `VerifiedBuild`=1;

UPDATE `locales_item` SET `VerifiedBuild`=-12340 WHERE `entry` IN (1019, 5022, 5084, 5085, 5096, 5512, 5530, 5544, 5798, 6712, 6949, 6950, 6951, 7675, 8925, 8926, 8927, 8928, 8984, 8985, 9250, 9315, 9577, 10920, 10921, 10922, 10958, 11163, 11168, 11223, 11367, 11368, 12368, 12708, 13466, 16051, 16209, 16262, 16263, 16306, 16310, 16972, 17414, 17683, 17771, 18224, 18256, 18562, 18947, 19004, 19005, 20310, 20844, 21214, 21279, 21280, 21281, 21282, 21283, 21284, 21285, 21287, 21288, 21289, 21290, 21291, 21292, 21293, 21294, 21295, 21296, 21297, 21298, 21299, 21300, 21302, 21303, 21304, 21306, 21307, 21927, 22053, 22054, 22055, 22146, 22153, 22530, 22540, 22549, 22550, 22890, 22891, 22897, 23094, 23096, 23099, 23100, 23105, 23106, 23108, 23109, 23113, 23114, 23115, 23116, 23121, 23130, 23133, 23136, 23137, 23142, 23143, 23144, 23145, 23148, 23149, 23150, 23151, 23155, 23320, 23778, 23815, 23902, 24029, 24030, 24031, 24032, 24037, 24047, 24050, 24051, 24052, 24056, 24057, 24060, 24061, 24062, 24065, 24162, 24192, 24195, 24196, 24197, 24201, 24203, 24205, 24206, 24207, 24211, 24212, 24215, 24216, 24217, 24219, 27679, 27689, 27774, 27777, 27785, 27786, 27809, 27811, 27812, 27820, 28048, 28117, 28118, 28120, 28122, 28274, 28360, 28361, 28362, 28363, 28460, 28461, 28462, 28465, 28466, 28468, 28469, 28470, 28557, 28595, 28596, 2874, 2893, 2939, 29468, 29549, 29550, 29553, 30467, 30547, 30548, 30550, 30551, 30552, 30553, 30555, 30556, 30558, 30559, 30560, 30563, 30564, 30565, 30572, 30573, 30574, 30575, 30581, 30583, 30585, 30586, 30589, 30590, 30591, 30593, 30594, 30600, 30601, 30603, 30605, 30606, 31116, 31117, 31118, 31359, 31501, 31837, 31860, 31861, 31862, 31863, 31864, 31865, 31866, 31867, 31868, 31869, 31870, 31871, 31872, 31873, 31874, 31875, 31876, 31877, 31878, 31879, 32195, 32196, 32197, 32198, 32202, 32204, 32206, 32207, 32208, 32210, 32213, 32214, 32215, 32216, 32219, 32220, 32221, 32222, 32223, 32225, 32281, 32282, 32283, 32284, 32288, 32290, 32292, 32293, 32294, 32296, 32299, 32300, 32301, 32302, 32305, 32306, 32307, 32308, 32309, 32311, 3238, 32634, 32635, 32636, 32637, 32638, 32639, 32640, 32735, 33139, 33141, 3371, 3372, 33804, 34060, 34061, 34200, 34201, 34218, 3460, 35238, 35239, 35240, 35241, 35245, 35248, 35249, 35250, 35251, 35252, 35255, 35256, 35257, 35259, 35261, 35262, 35266, 35268, 35270, 35271, 35304, 35305, 35306, 35307, 35396, 35397, 35398, 35399, 35400, 35417, 35418, 35419, 35420, 35421, 35422, 35423, 35424, 35425, 35426, 35427, 35428, 35429, 35430, 35431, 35432, 35433, 35434, 35435, 35436, 35437, 35438, 35439, 35440, 35441, 35442, 35443, 35444, 35445, 35446, 35447, 35448, 35449, 35450, 35451, 35452, 35453, 35454, 35455, 35456, 35457, 35458, 35459, 35460, 35461, 35462, 35487, 35488, 35489, 35500, 35707, 35708, 35756, 36766, 37347, 37602, 37603, 3776, 3819, 38545, 38546, 38547, 38549, 38679, 38682, 38766, 38767, 38768, 38769, 38770, 38771, 38772, 38773, 38774, 38775, 38776, 38777, 38778, 38779, 38780, 38781, 38782, 38783, 38784, 38785, 38786, 38787, 38788, 38789, 38790, 38791, 38792, 38793, 38794, 38795, 38796, 38797, 38798, 38799, 38800, 38801, 38802, 38803, 38804, 38805, 38806, 38807, 38808, 38809, 38810, 38811, 38812, 38813, 38814, 38815, 38816, 38817, 38818, 38819, 38820, 38821, 38822, 38823, 38824, 38825, 38826, 38827, 38828, 38829, 38830, 38831, 38832, 38833, 38834, 38835, 38836, 38837, 38838, 38839, 38840, 38841, 38842, 38843, 38844, 38845, 38846, 38847, 38848, 38849, 38850, 38851, 38852, 38853, 38854, 38855, 38856, 38857, 38858, 38859, 38860, 38861, 38862, 38863, 38864, 38865, 38866, 38867, 38868, 38869, 38870, 38871, 38872, 38873, 38874, 38875, 38876, 38877, 38878, 38879, 38880, 38881, 38882, 38883, 38884, 38885, 38886, 38887, 38888, 38889, 38890, 38891, 38892, 38893, 38894, 38895, 38896, 38897, 38898, 38899, 38900, 38901, 38902, 38903, 38904, 38905, 38906, 38907, 38908, 38909, 38910, 38911, 38912, 38913, 38914, 38915, 38917, 38918, 38919, 38920, 38921, 38922, 38923, 38924, 38925, 38926, 38927, 38928, 38929, 38930, 38931, 38932, 38933, 38934, 38935, 38936, 38937, 38938, 38939, 38940, 38941, 38942, 38943, 38944, 38945, 38946, 38947, 38948, 38949, 38950, 38951, 38953, 38954, 38955, 38956, 38958, 38959, 38960, 38961, 38962, 38963, 38964, 38965, 38966, 38967, 38968, 38969, 38971, 38972, 38973, 38974, 38975, 38976, 38977, 38978, 38979, 38980, 38981, 38982, 38983, 38984, 38985, 38986, 38987, 38988, 38989, 38990, 38991, 38992, 38993, 38994, 38995, 38997, 38998, 38999, 39000, 39001, 39002, 39003, 39004, 39005, 39006, 39349, 39350, 39906, 39907, 39909, 39911, 39912, 39915, 39916, 39927, 39933, 39936, 39937, 39938, 39942, 39943, 39944, 39946, 39948, 39953, 39957, 39958, 39960, 39961, 39962, 39963, 39965, 39966, 39968, 39975, 39976, 39979, 39981, 39983, 39984, 39985, 39986, 39988, 39991, 39998, 39999, 40000, 40002, 40010, 40012, 40014, 40015, 40023, 40024, 40025, 40027, 40029, 40030, 40031, 40032, 40033, 40038, 40044, 40047, 40049, 40050, 40052, 40053, 40054, 40055, 40057, 40058, 40085, 40088, 40089, 40092, 40094, 40096, 40099, 40100, 40101, 40103, 40104, 40113, 40114, 40115, 40117, 40121, 40123, 40125, 40126, 40131, 40132, 40134, 40136, 40137, 40138, 40140, 40143, 40148, 40151, 40153, 40154, 40156, 40157, 40158, 40159, 40161, 40162, 40164, 40166, 40167, 40170, 40172, 40174, 40175, 40176, 40177, 40178, 40181, 40411, 40899, 40901, 40903, 40920, 41094, 41096, 41098, 41100, 41101, 41104, 41105, 41106, 41107, 41109, 41110, 41170, 41377, 41429, 41433, 41436, 41438, 41439, 41440, 41444, 41447, 41449, 41450, 41452, 41454, 41456, 41458, 41459, 41462, 41463, 41464, 41467, 41469, 41471, 41473, 41475, 41477, 41478, 41479, 41481, 41482, 41486, 41487, 41488, 41490, 41491, 41494, 41496, 41501, 41502, 41524, 41535, 41538, 41541, 41563, 41564, 41567, 41568, 41570, 41573, 41580, 41581, 41582, 41687, 41688, 41689, 41694, 41696, 41697, 41698, 41699, 41701, 41702, 41703, 41705, 41718, 41719, 41721, 41722, 41724, 41725, 41730, 41732, 41736, 41739, 41747, 41777, 41782, 41785, 41791, 41795, 41796, 41817, 41818, 41820, 42144, 42146, 42153, 42157, 42299, 42303, 42304, 42309, 42315, 42397, 42403, 42405, 42407, 42416, 42417, 42456, 42465, 42466, 42469, 42471, 42734, 42740, 42743, 42747, 42750, 42753, 42754, 42899, 42901, 42906, 42907, 42909, 42910, 42912, 42915, 42916, 42917, 42965, 42971, 43145, 43146, 43230, 43231, 43232, 43233, 43234, 43235, 43237, 43335, 43339, 43350, 43354, 43355, 43357, 43359, 43360, 43366, 43368, 43369, 43380, 43386, 43391, 43394, 43396, 43397, 43398, 43412, 43414, 43416, 43417, 43418, 43420, 43423, 43424, 43425, 43426, 43428, 43429, 43432, 43441, 43534, 43538, 43545, 43548, 43549, 43553, 4361, 4363, 43671, 43672, 43673, 43826, 43867, 43868, 43869, 43952, 43987, 44449, 44453, 44455, 44456, 44457, 44458, 44463, 44465, 44466, 44467, 44469, 44470, 44493, 44497, 44511, 44512, 44815, 44842, 44843, 44944, 44946, 44947, 45056, 45060, 45603, 45628, 45733, 45737, 45743, 45744, 45757, 45758, 45760, 45761, 45776, 45789, 45793, 45794, 45803, 45804, 45805, 45883, 46026, 46098, 46372, 46767, 46897, 46899, 46900, 46902, 46903, 46906, 46907, 46908, 46909, 46910, 46914, 46916, 46919, 46921, 46922, 46927, 46928, 46930, 46931, 46934, 46936, 46939, 46940, 46944, 46945, 46946, 46947, 46951, 46952, 46953, 46956, 47008, 47010, 47011, 47012, 47016, 47023, 47179, 48720, 49084, 50045, 50077, 50125, 50166, 50167, 50168, 50816,  52022, 52023);
