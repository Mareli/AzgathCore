SET @CGUID = 280007801;
SET @OGUID = 210413264;


DELETE FROM `conversation_actors` WHERE (`ConversationId`=9222 AND `ConversationActorId`=0 AND `Idx`=0) OR (`ConversationId`=10518 AND `ConversationActorId`=0 AND `Idx`=1) OR (`ConversationId`=10528 AND `ConversationActorId`=0 AND `Idx`=1) OR (`ConversationId`=10523 AND `ConversationActorId`=0 AND `Idx`=1);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(9222, 0, 0, 28768),
(10518, 0, 1, 28768),
(10528, 0, 1, 28768),
(10523, 0, 1, 28768);

UPDATE `conversation_actor_template` SET `CreatureId`=136065, `CreatureModelId`=85758 WHERE `Id`=0;
UPDATE `conversation_actor_template` SET `CreatureId`=136068, `CreatureModelId`=72253 WHERE `Id`=0;
UPDATE `conversation_actor_template` SET `CreatureId`=122392, `CreatureModelId`=66644 WHERE `Id`=0;
UPDATE `conversation_actor_template` SET `CreatureId`=136068, `CreatureModelId`=72253 WHERE `Id`=0;
UPDATE `conversation_actor_template` SET `CreatureId`=122392, `CreatureModelId`=66644 WHERE `Id`=0;
UPDATE `conversation_actor_template` SET `CreatureId`=136068, `CreatureModelId`=72253 WHERE `Id`=0;
UPDATE `conversation_actor_template` SET `CreatureId`=122392, `CreatureModelId`=66644 WHERE `Id`=0;

DELETE FROM `conversation_line_template` WHERE `Id` IN (20775, 24790, 24810, 24800);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(20775, 0, 82, 0, 0, 28768),
(24790, 0, 82, 1, 0, 28768),
(24810, 0, 82, 1, 0, 28768),
(24800, 0, 82, 1, 0, 28768);

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (281545 /*Puppe*/, 290981 /*Turm*/, 276449 /*Hordenbanner*/, 276401 /*Allianzbanner*/, 282734 /*Seitentorflügel*/, 282728 /*Torflügel*/, 276642 /*Allianzbanner*/, 294169 /*Zerstörter Belagerungsturm der Horde*/, 291019 /*Ställe*/, 291025 /*Sägewerk*/, 291028 /*Sägewerk*/, 276831 /*Allianzbanner*/, 276448 /*Allianzbanner*/, 293692 /*Kaserne*/, 293730 /*Tor von Ar'gorok*/, 293748 /*Gebäude*/, 293717 /*Kriegswerkstatt*/, 293687 /*Altar der Stürme*/, 291018 /*Ställe*/, 291027 /*Sägewerk*/, 293721 /*Werkstatt*/, 291024 /*Sägewerk*/, 290983 /*Turm*/, 293714 /*Festung*/, 289541 /*Allianzbanner*/, 277644 /*Allianzbanner*/, 236440 /*Prison Door*/, 293769 /*Werkstatt*/, 292605 /*Tor*/, 293733 /*Tor von Burg Stromgarde*/, 293757 /*Kaserne*/, 293900 /*Belagerungsturm der Allianz*/, 281431 /*Allianzschild*/, 293766 /*Schloss*/, 293762 /*Schmiede*/, 293753 /*Altar der Könige*/, 293691 /*Kaserne*/, 293746 /*Arkaner Turm*/, 290242 /*Mauer*/, 290241 /*Mauer*/, 290240 /*Mauer*/, 293716 /*Kriegswerkstatt*/, 290223 /*Mauer*/, 293729 /*Tor von Ar'gorok*/, 290222 /*Mauer*/, 293686 /*Altar der Stürme*/, 290221 /*Mauer*/, 290220 /*Mauer*/, 290219 /*Mauer*/, 290218 /*Mauer*/, 290217 /*Mauer*/, 293754 /*Kaserne*/, 290265 /*Turm der Horde*/, 293751 /*Altar der Könige*/, 290264 /*Turm der Horde*/, 290239 /*Mauer*/, 290238 /*Mauer*/, 290227 /*Mauer*/, 290168 /*Mauer*/, 290226 /*Mauer*/, 293764 /*Schloss*/, 290167 /*Mauer*/, 290225 /*Mauer*/, 290166 /*Mauer*/, 290224 /*Mauer*/, 293720 /*Werkstatt*/, 290276 /*Mauer*/, 290275 /*Mauer*/, 290274 /*Mauer*/, 293760 /*Schmiede*/, 293713 /*Festung*/, 293731 /*Tor von Burg Stromgarde*/, 293767 /*Werkstatt*/, 290185 /*Mauer*/, 290184 /*Mauer*/, 290183 /*Mauer*/, 290182 /*Mauer*/, 290253 /*Mauer*/, 290181 /*Mauer*/, 290180 /*Mauer*/, 290251 /*Mauer*/, 290250 /*Mauer*/, 290322 /*Stein der Inneren Bindung*/);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`) VALUES
(281545, 1375, 0), -- Puppe
(290981, 0, 1048576), -- Turm
(276449, 114, 32), -- Hordenbanner
(276401, 1735, 48), -- Allianzbanner
(282734, 1375, 32), -- Seitentorflügel
(282728, 1375, 32), -- Torflügel
(276642, 1735, 48), -- Allianzbanner
(294169, 1375, 32), -- Zerstörter Belagerungsturm der Horde
(291019, 0, 1048576), -- Ställe
(291025, 0, 1048832), -- Sägewerk
(291028, 0, 1048832), -- Sägewerk
(276831, 1735, 48), -- Allianzbanner
(276448, 1735, 48), -- Allianzbanner
(293692, 0, 32), -- Kaserne
(293730, 0, 32), -- Tor von Ar'gorok
(293748, 0, 32), -- Gebäude
(293717, 0, 32), -- Kriegswerkstatt
(293687, 0, 32), -- Altar der Stürme
(291018, 0, 32), -- Ställe
(291027, 0, 32), -- Sägewerk
(293721, 0, 32), -- Werkstatt
(291024, 0, 32), -- Sägewerk
(290983, 0, 32), -- Turm
(293714, 0, 32), -- Festung
(289541, 114, 32), -- Allianzbanner
(277644, 1735, 48), -- Allianzbanner
(236440, 0, 32), -- Prison Door
(293769, 0, 32), -- Werkstatt
(292605, 1375, 32), -- Tor
(293733, 0, 32), -- Tor von Burg Stromgarde
(293757, 0, 32), -- Kaserne
(293900, 1375, 32), -- Belagerungsturm der Allianz
(281431, 1375, 8192), -- Allianzschild
(293766, 0, 32), -- Schloss
(293762, 0, 32), -- Schmiede
(293753, 0, 32), -- Altar der Könige
(293691, 0, 1048608), -- Kaserne
(293746, 0, 1048608), -- Arkaner Turm
(290242, 0, 1048608), -- Mauer
(290241, 0, 1048608), -- Mauer
(290240, 0, 1048608), -- Mauer
(293716, 0, 1048608), -- Kriegswerkstatt
(290223, 0, 1048608), -- Mauer
(293729, 0, 1048608), -- Tor von Ar'gorok
(290222, 0, 1048608), -- Mauer
(293686, 0, 1048608), -- Altar der Stürme
(290221, 0, 1048608), -- Mauer
(290220, 0, 1048608), -- Mauer
(290219, 0, 1048608), -- Mauer
(290218, 0, 1048608), -- Mauer
(290217, 0, 1048608), -- Mauer
(293754, 0, 1048608), -- Kaserne
(290265, 0, 1048608), -- Turm der Horde
(293751, 0, 1048608), -- Altar der Könige
(290264, 0, 1048608), -- Turm der Horde
(290239, 0, 1048608), -- Mauer
(290238, 0, 1048608), -- Mauer
(290227, 0, 1048608), -- Mauer
(290168, 0, 1048608), -- Mauer
(290226, 0, 1048608), -- Mauer
(293764, 0, 1048608), -- Schloss
(290167, 0, 1048608), -- Mauer
(290225, 0, 1048608), -- Mauer
(290166, 0, 1048608), -- Mauer
(290224, 0, 1048608), -- Mauer
(293720, 0, 1048608), -- Werkstatt
(290276, 0, 1048608), -- Mauer
(290275, 0, 1048608), -- Mauer
(290274, 0, 1048608), -- Mauer
(293760, 0, 1048864), -- Schmiede
(293713, 0, 1048608), -- Festung
(293731, 0, 1048608), -- Tor von Burg Stromgarde
(293767, 0, 1048608), -- Werkstatt
(290185, 0, 1048608), -- Mauer
(290184, 0, 1048608), -- Mauer
(290183, 0, 1048608), -- Mauer
(290182, 0, 1048608), -- Mauer
(290253, 0, 1048608), -- Mauer
(290181, 0, 1048608), -- Mauer
(290180, 0, 1048608), -- Mauer
(290251, 0, 1048608), -- Mauer
(290250, 0, 1048608), -- Mauer
(290322, 35, 36); -- Stein der Inneren Bindung

UPDATE `gameobject_template_addon` SET `flags`=278528 WHERE `entry`=2040; -- Mithril Deposit
UPDATE `gameobject_template_addon` SET `faction`=35 WHERE `entry`=233567; -- Bonfire
UPDATE `gameobject_template_addon` SET `flags`=278528 WHERE `entry`=2042; -- Fadeleaf
UPDATE `gameobject_template_addon` SET `flags`=278528 WHERE `entry`=2043; -- Khadgar's Whisker
UPDATE `gameobject_template_addon` SET `flags`=278528 WHERE `entry`=2046; -- Goldthorn
UPDATE `gameobject_template_addon` SET `flags`=36 WHERE `entry`=2702; -- Stone of Inner Binding
UPDATE `gameobject_template_addon` SET `flags`=2113540 WHERE `entry`=203450; -- Trollbane's Tomb
UPDATE `gameobject_template_addon` SET `flags`=2113540 WHERE `entry`=250648; -- Trollbanns Grabmal
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=176630; -- Keepsake of Remembrance

DELETE FROM `quest_poi` WHERE (`QuestID`=51028 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51028 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54625 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54625 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(51028, 0, 1, 32, 0, 0, 1643, 1161, 0, 0, 0, 0, 1587770, 0, 28768), -- -Unknown-
(51028, 0, 0, -1, 0, 0, 1643, 1161, 0, 0, 0, 0, 1587770, 0, 28768), -- -Unknown-
(54625, 0, 1, 32, 0, 0, 0, 14, 0, 2, 0, 0, 0, 0, 28768), -- -Unknown-
(54625, 0, 0, 0, 387786, 143237, 0, 14, 0, 2, 0, 0, 0, 0, 28768); -- -Unknown-

DELETE FROM `quest_poi_points` WHERE (`QuestID`=51028 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51028 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54625 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=54625 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(51028, 1, 0, 1198, -580, 28768), -- -Unknown-
(51028, 0, 0, 1198, -580, 28768), -- -Unknown-
(54625, 1, 0, -1741, -3301, 28768), -- -Unknown-
(54625, 0, 11, -1708, -3503, 28768), -- -Unknown-
(54625, 0, 10, -1800, -3480, 28768), -- -Unknown-
(54625, 0, 9, -1869, -3421, 28768), -- -Unknown-
(54625, 0, 8, -1938, -3290, 28768), -- -Unknown-
(54625, 0, 7, -1954, -3224, 28768), -- -Unknown-
(54625, 0, 6, -1895, -3134, 28768), -- -Unknown-
(54625, 0, 5, -1764, -3129, 28768), -- -Unknown-
(54625, 0, 4, -1666, -3168, 28768), -- -Unknown-
(54625, 0, 3, -1587, -3240, 28768), -- -Unknown-
(54625, 0, 2, -1554, -3306, 28768), -- -Unknown-
(54625, 0, 1, -1547, -3411, 28768), -- -Unknown-
(54625, 0, 0, -1628, -3506, 28768); -- -Unknown-


DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1585;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 140944, 1643, 0, 0, '0', '0', 0, 0, 0, 1099.998, -379.8108, 7.455372, 1.425443, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- -Unknown- (Area: -Unknown- - Difficulty: 1)
(@CGUID+1, 140948, 1643, 0, 0, '0', '0', 0, 0, 0, 1029.257, -359.257, 1.908168, 1.987804, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- -Unknown- (Area: -Unknown- - Difficulty: 1)
(@CGUID+2, 134849, 1643, 0, 0, '0', '0', 0, 0, 0, 958.9318, -404.3705, 9.844105, 5.080814, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- -Unknown- (Area: -Unknown- - Difficulty: 1)
(@CGUID+3, 140944, 1643, 0, 0, '0', '0', 0, 0, 0, 1096.62, -378.8385, 7.455372, 1.215179, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- -Unknown- (Area: -Unknown- - Difficulty: 1)
(@CGUID+4, 2588, 0, 45, 324, '0', '11292', 0, 0, 0, -1652.169, -1885.626, 81.53316, 5.728414, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Prowler (Area: Stromgarde Keep - Difficulty: 0) (Auras: 22766 - Sneak)
(@CGUID+5, 2590, 0, 45, 324, '0', '11292', 0, 0, 0, -1624.994, -1842.858, 81.40307, 4.960213, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Conjuror (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+6, 2591, 0, 45, 324, '0', '11292', 0, 0, 0, -1630.607, -1921.169, 69.03972, 3.246522, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Magus (Area: Stromgarde Keep - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+7, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1647.422, -1866.878, 80.75114, 2.076942, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0) (Auras: 42648 - Sleeping Sleep)
(@CGUID+8, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1677.749, -1847.225, 80.08463, 5.637414, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+9, 2590, 0, 45, 324, '0', '11292', 0, 0, 0, -1627.03, -1878.615, 81.59995, 4.661526, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Conjuror (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+10, 2591, 0, 45, 324, '0', '11292', 0, 0, 0, -1645.722, -1919.635, 73.81039, 3.543018, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Magus (Area: Stromgarde Keep - Difficulty: 0) (Auras: 32783 - Arcane Channeling)
(@CGUID+11, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1684.375, -1902.723, 80.85099, 1.605703, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+12, 2783, 0, 45, 324, '0', '11292', 0, 0, 0, -1644.627, -1930.724, 68.16023, 1.605703, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Marez Cowl (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+13, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1622.688, -1817.883, 81.11512, 2.251475, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+14, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1630.837, -1808.302, 80.52064, 4.029926, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+15, 2590, 0, 45, 324, '0', '11292', 0, 0, 0, -1696.892, -1926.68, 86.57626, 6.265732, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Conjuror (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+16, 2590, 0, 45, 324, '0', '11292', 0, 0, 0, -1694.559, -1910.386, 81.83971, 1.553343, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Conjuror (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+17, 2590, 0, 45, 324, '0', '11292', 0, 0, 0, -1715.455, -1908.687, 81.43973, 5.638545, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Conjuror (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+18, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1692.999, -1926.1, 86.57614, 3.490659, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+19, 2591, 0, 45, 324, '0', '11292', 0, 0, 0, -1679.966, -1821.024, 100.4397, 2.052797, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Magus (Area: Stromgarde Keep - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+20, 4075, 0, 45, 324, '0', '11292', 0, 0, 0, -1657.801, -1859.858, 78.93494, 2.099212, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+21, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1599.327, -1925.917, 67.95113, 0.09751668, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+22, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1648.909, -1811.613, 80.02506, 6.143559, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+23, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1644.175, -1824.9, 79.26045, 4.553206, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+24, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1715.561, -1873.809, 81.43973, 0.8203048, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+25, 4075, 0, 45, 324, '0', '11292', 0, 0, 0, -1647.159, -1849.112, 79.29725, 3.528267, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+26, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1603.01, -1859.864, 68.09473, 0.3141593, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+27, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1680.932, -1823.576, 108.4756, 3.193953, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0) (Auras: 42648 - Sleeping Sleep)
(@CGUID+28, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1632.353, -1933.157, 69.03972, 4.207784, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+29, 4075, 0, 45, 324, '0', '11292', 0, 0, 0, -1672.134, -1859.077, 79.43502, 1.188476, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+30, 2590, 0, 45, 324, '0', '11292', 0, 0, 0, -1717.719, -1857.644, 81.49253, 3.01988, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Conjuror (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+31, 2591, 0, 45, 324, '0', '11292', 0, 0, 0, -1587.154, -1881.78, 68.65759, 2.921952, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Magus (Area: Stromgarde Keep - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+32, 2591, 0, 45, 324, '0', '11292', 0, 0, 0, -1694.081, -1813.316, 100.4397, 1.973271, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Magus (Area: Stromgarde Keep - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+33, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1649.936, -1794.64, 80.14643, 0.4014257, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+34, 2782, 0, 45, 324, '0', '11292', 0, 0, 0, -1564.106, -1909.436, 47.50595, 1.271721, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Caretaker Alaric (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+35, 2591, 0, 45, 324, '0', '11292', 0, 0, 0, -1698.43, -1821.756, 93.25743, 4.691322, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Magus (Area: Stromgarde Keep - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+36, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1676.971, -1805.956, 100.4397, 5.626332, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+37, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1711.995, -1822.42, 93.21663, 0.05235988, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+38, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1567.86, -1824.752, 67.97298, 4.047407, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+39, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1603.646, -1941.666, 68.31785, 5.902068, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+40, 4075, 0, 45, 324, '0', '11292', 0, 0, 0, -1601.809, -1931.572, 68.23658, 2.900879, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+41, 4075, 0, 45, 324, '0', '11292', 0, 0, 0, -1629.438, -1793.825, 80.31653, 1.558952, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+42, 2597, 0, 45, 324, '0', '11292', 0, 0, 0, -1709.681, -1803.798, 101.7912, 0.06981317, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Lord Falconcrest (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+43, 2599, 0, 45, 324, '0', '11292', 0, 0, 0, -1706.604, -1810.696, 101.7912, 0.6283185, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Otto (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+44, 2591, 0, 45, 324, '0', '11292', 0, 0, 0, -1703.679, -1801.474, 101.8397, 3.5452, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Magus (Area: Stromgarde Keep - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+45, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1710.322, -1812.143, 84.3942, 3.926991, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+46, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1682.076, -1808.267, 83.05128, 5.462893, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+47, 2781, 0, 45, 324, '0', '11292', 0, 0, 0, -1576.716, -1913.939, 47.57337, 1.418474, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Caretaker Weston (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+48, 2590, 0, 45, 324, '0', '11292', 0, 0, 0, -1580.675, -1859.799, 68.42554, 0.1396263, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Conjuror (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+49, 2590, 0, 45, 324, '0', '11292', 0, 0, 0, -1592.365, -1818.291, 68.51766, 1.498487, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Conjuror (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+50, 24477, 0, 45, 324, '0', '11292', 0, 0, 0, -1585.152, -1907.442, 68.67551, 5.028908, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Syndicate Thief (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+51, 142718, 0, 45, 324, '0', '11292', 0, 0, 0, -1613.425, -1867.689, 111.7878, 5.572247, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+52, 49999, 0, 45, 324, '0', '11292', 0, 0, 0, -1660.637, -1833.554, 81.40833, 6.03308, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: Stromgarde Keep - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+53, 142828, 0, 45, 324, '0', '11292', 0, 0, 0, -1642.203, -1883.95, 80.11195, 1.712748, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: Stromgarde Keep - Difficulty: 0) (Auras: )
(@CGUID+54, 142828, 0, 45, 324, '0', '11292', 0, 0, 0, -1661.967, -1883.691, 80.09363, 1.446203, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: Stromgarde Keep - Difficulty: 0) (Auras: )
(@CGUID+55, 49999, 0, 45, 324, '0', '11292', 0, 0, 0, -1627.648, -1872.109, 81.3646, 3.725259, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: Stromgarde Keep - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+56, 142826, 0, 45, 324, '0', '11292', 0, 0, 0, -1657.675, -1881.144, 80.09317, 1.43521, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Altarit Jesse Taylor (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+57, 142828, 0, 45, 324, '0', '11292', 0, 0, 0, -1653.827, -1858.493, 80.13393, 4.691942, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: Stromgarde Keep - Difficulty: 0) (Auras: ) (possible waypoints or random movement)
(@CGUID+58, 142828, 0, 45, 324, '0', '11292', 0, 0, 0, -1651.847, -1858.752, 80.13393, 4.698212, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: Stromgarde Keep - Difficulty: 0) (Auras: ) (possible waypoints or random movement)
(@CGUID+59, 143172, 0, 45, 324, '0', '11292', 0, 0, 0, -1646.108, -1881.785, 80.09226, 1.549046, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Yvera Dämmerschwinge (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+60, 49999, 0, 45, 324, '0', '11292', 0, 0, 0, -1699.724, -1846.959, 81.88593, 1.298227, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: Stromgarde Keep - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+61, 114590, 0, 45, 324, '0', '11292', 0, 0, 0, -1594.28, -1861.366, 69.35107, 4.177539, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Generic Bunny (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+62, 49999, 0, 45, 324, '0', '11292', 0, 0, 0, -1688.098, -1922.475, 82.00031, 3.761236, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: Stromgarde Keep - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+63, 133633, 0, 45, 324, '0', '11292', 0, 0, 0, -1592.918, -1861.911, 68.38718, 2.712939, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Geldrin (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+64, 121541, 0, 45, 324, '0', '11292', 0, 0, 0, -1595.056, -1895.833, 67.70518, 5.750686, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ban-Lu (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+65, 142828, 0, 45, 324, '0', '11292', 0, 0, 0, -1622.74, -1797.33, 80.09226, 3.211288, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: Stromgarde Keep - Difficulty: 0) (Auras: )
(@CGUID+66, 133932, 0, 45, 324, '0', '11292', 0, 0, 0, -1594.983, -1833.004, 67.69958, 6.282461, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Godrey Rotbart (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+67, 4075, 0, 45, 324, '0', '11292', 0, 0, 0, -1596.844, -1936.421, 68.17465, 5.161651, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rat (Area: Stromgarde Keep - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+68, 142131, 0, 45, 324, '0', '11292', 0, 0, 0, -1569.78, -1869.938, 68.5816, 1.022367, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Scharfschütze von Stromgarde (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+69, 142131, 0, 45, 324, '0', '11292', 0, 0, 0, -1568.057, -1871.08, 68.65442, 1.022367, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Scharfschütze von Stromgarde (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+70, 142828, 0, 45, 324, '0', '11292', 0, 0, 0, -1623.158, -1810.318, 80.09226, 3.090313, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: Stromgarde Keep - Difficulty: 0) (Auras: )
(@CGUID+71, 142131, 0, 45, 324, '0', '11292', 0, 0, 0, -1569.181, -1872.847, 68.65442, 1.022367, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Scharfschütze von Stromgarde (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+72, 142131, 0, 45, 324, '0', '11292', 0, 0, 0, -1567.387, -1874.116, 68.65442, 1.022367, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Scharfschütze von Stromgarde (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+73, 142131, 0, 45, 324, '0', '11292', 0, 0, 0, -1570.903, -1871.705, 68.65442, 1.022367, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Scharfschütze von Stromgarde (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+74, 133867, 0, 45, 324, '0', '11292', 0, 0, 0, -1596.48, -1842.69, 67.91312, 3.001966, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Balinda Dunkelstein (Area: Stromgarde Keep - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+75, 142828, 0, 45, 324, '0', '11292', 0, 0, 0, -1642.498, -1787.938, 80.09369, 0.03506051, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: Stromgarde Keep - Difficulty: 0) (Auras: )
(@CGUID+76, 142718, 0, 45, 324, '0', '11292', 0, 0, 0, -1684.347, -1955.755, 114.1064, 5.327508, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+77, 142131, 0, 45, 324, '0', '11292', 0, 0, 0, -1566.267, -1872.347, 68.55946, 1.022367, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Scharfschütze von Stromgarde (Area: Stromgarde Keep - Difficulty: 0)
(@CGUID+78, 142718, 0, 45, 324, '0', '11292', 0, 0, 0, -1683.883, -1789.709, 124.8712, 4.175802, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: Stromgarde Keep - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+79, 127851, 0, 45, 324, '0', '11292', 0, 0, 0, -1516.139, -1850.203, 69.63657, 3.150484, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Belagerungsmaschine der Allianz (Area: Stromgarde Keep - Difficulty: 0) (Auras: 244971 - -Unknown-)
(@CGUID+80, 127851, 0, 45, 324, '0', '11292', 0, 0, 0, -1516.139, -1862.064, 69.63657, 3.150484, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Belagerungsmaschine der Allianz (Area: Stromgarde Keep - Difficulty: 0) (Auras: 244971 - -Unknown-)
(@CGUID+81, 133661, 0, 45, 324, '0', '11292', 0, 0, 0, -1560.553, -1874.018, 67.70518, 1.484698, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Brawley Steinbraue (Area: Stromgarde Keep - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+82, 49999, 0, 45, 324, '0', '11292', 0, 0, 0, -1659.834, -1781.016, 81.13393, 4.175319, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: Stromgarde Keep - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+83, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1569.203, -1822.515, 67.70501, 4.660994, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+84, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1569.152, -1821.532, 67.70501, 4.660814, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+85, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1567.198, -1825.533, 67.70501, 4.703748, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+86, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1569.183, -1823.533, 67.70501, 4.684863, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+87, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1567.199, -1826.582, 67.70501, 4.707442, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+88, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1567.196, -1824.602, 67.70501, 4.698489, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+89, 142718, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1646.605, -1781.19, 125.6481, 4.730952, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: -Unknown- - Difficulty: 0)
(@CGUID+90, 142718, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1592.827, -1789.711, 119.7981, 4.717731, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: -Unknown- - Difficulty: 0)
(@CGUID+91, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1718.74, -1798.318, 80.13596, 4.71282, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: ) (possible waypoints or random movement)
(@CGUID+92, 49999, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1700.379, -1784.98, 81.18658, 5.69985, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+93, 8883, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1596.778, -1774.481, 68.11312, 0.1908656, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riding Horse (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+94, 143018, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1577.747, -1796.255, 68.00516, 5.900672, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hauptmann Roderick Bräustein (Area: -Unknown- - Difficulty: 0)
(@CGUID+95, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1583.674, -1750.953, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+96, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1682.352, -1739.439, 80.11188, 4.570864, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+97, 133779, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1576.792, -1746.948, 67.70491, 4.700239, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Kürassier Wrenn (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+98, 4075, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1603.341, -1743.406, 67.86131, 1.43747, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+99, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1586.01, -1748.936, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+100, 142008, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1716.825, -1762.075, 80.19991, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grayson Bell (Area: -Unknown- - Difficulty: 0)
(@CGUID+101, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1586.016, -1757.207, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+102, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1583.646, -1748.825, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+103, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1586.085, -1755.139, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+104, 8883, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1595.656, -1766.46, 68.81339, 6.230593, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riding Horse (Area: -Unknown- - Difficulty: 0)
(@CGUID+105, 49999, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1650, -1741.666, 81.95518, 4.77371, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+106, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1586.076, -1746.87, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+107, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1586.061, -1759.208, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+108, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1602.872, -1744.663, 67.66553, 3.27795, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+109, 8883, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1597.257, -1759.602, 68.81339, 3.71235, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riding Horse (Area: -Unknown- - Difficulty: 0)
(@CGUID+110, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1583.71, -1755.158, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+111, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1694.384, -1739.571, 80.09259, 4.843935, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+112, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1586.049, -1750.934, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+113, 143410, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1716.936, -1766.707, 80.19991, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Greif der Allianz (Area: -Unknown- - Difficulty: 0)
(@CGUID+114, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1583.641, -1757.226, 67.66352, 0.06920064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+115, 60197, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1605.403, -1745.106, 67.89236, 6.125123, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: -Unknown- - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+116, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1557.549, -1749.589, 67.70093, 6.273998, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+117, 60197, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1554.962, -1755.056, 68.31049, 3.205057, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: -Unknown- - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+118, 60197, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1555.58, -1749.703, 67.85938, 3.138664, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: -Unknown- - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+119, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1605.542, -1717.877, 67.87752, 0.1034729, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+120, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1556.799, -1755.203, 68.28307, 0.05720577, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+121, 142718, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1614.62, -1689.974, 110.6774, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: -Unknown- - Difficulty: 0)
(@CGUID+122, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1680.813, -1698.335, 68.42106, 1.613556, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+123, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1598.599, -1695.934, 67.74673, 0.9759676, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+124, 133530, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1536.36, -1842.709, 68.15464, 2.740167, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Zwergeningenieur (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+125, 142718, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1532.872, -1802.847, 112.9456, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: -Unknown- - Difficulty: 0)
(@CGUID+126, 133711, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1535.177, -1791.514, 68.53597, 1.53117, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Steinmetz von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 263194 - -Unknown-)
(@CGUID+127, 133582, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1537.948, -1833.509, 69.00187, 4.487996, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Dorfbewohner aus Arathi (Area: -Unknown- - Difficulty: 0)
(@CGUID+128, 133711, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1523.902, -1810.235, 67.93256, 0.1568773, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Steinmetz von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 263184 - -Unknown-) (possible waypoints or random movement)
(@CGUID+129, 133711, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1533.627, -1809.953, 67.70518, 3.045026, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Steinmetz von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 263203 - -Unknown-) (possible waypoints or random movement)
(@CGUID+130, 60197, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1536.108, -1772.444, 68.80896, 1.509039, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: -Unknown- - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+131, 133958, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1552.318, -1731.023, 67.91219, 6.227103, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Tregan Hügelhub (Area: -Unknown- - Difficulty: 0) (Auras: 263076 - -Unknown-) (possible waypoints or random movement)
(@CGUID+132, 142033, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1536.021, -1770.637, 68.72827, 4.842586, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+133, 60197, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1529.813, -1772.28, 68.4649, 1.530818, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: -Unknown- - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+134, 8883, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1537.818, -1837.792, 68.41213, 2.327094, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riding Horse (Area: -Unknown- - Difficulty: 0)
(@CGUID+135, 133890, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1563.436, -1721, 67.66352, 3.093746, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jonathan Flynn (Area: -Unknown- - Difficulty: 0)
(@CGUID+136, 133530, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1523.92, -1867.274, 69.68832, 4.869469, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Zwergeningenieur (Area: -Unknown- - Difficulty: 0)
(@CGUID+137, 60197, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1522.726, -1873.484, 68.60656, 4.728975, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: -Unknown- - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+138, 142835, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1531.67, -1865.325, 68.48909, 2.592093, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Murrer (Area: -Unknown- - Difficulty: 0)
(@CGUID+139, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1564.613, -1671.635, 67.66352, 5.27851, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+140, 142036, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1522.307, -1689.276, 68.10045, 3.627923, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Zauberer von Stromgarde (Area: -Unknown- - Difficulty: 0)
(@CGUID+141, 4075, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1486.883, -1772.9, 68.39377, 5.51997, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+142, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1597.573, -1694.04, 67.74768, 4.814702, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+143, 142036, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1513.358, -1695.656, 67.66977, 0.2059119, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Zauberer von Stromgarde (Area: -Unknown- - Difficulty: 0)
(@CGUID+144, 4075, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1493.939, -1744.589, 67.70518, 5.143748, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+145, 60197, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1509.028, -1683.085, 67.80965, 3.634233, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: -Unknown- - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+146, 60197, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1505.648, -1688.09, 67.97659, 3.701974, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: -Unknown- - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+147, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1592.69, -1669.78, 67.70518, 3.106686, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+148, 60197, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1502.835, -1693.458, 68.40917, 3.359956, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: -Unknown- - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+149, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1558.833, -1654.748, 67.66356, 1.896986, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+150, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1550.915, -1652.123, 67.66352, 4.770061, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+151, 49999, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1630.969, -1674.623, 68.55137, 3.075938, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+152, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1559.278, -1652.906, 67.66354, 4.996261, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+153, 142718, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1522.559, -1652.944, 120.7842, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: -Unknown- - Difficulty: 0)
(@CGUID+154, 4075, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1575.061, -1640.956, 68.69591, 5.380114, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+155, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1560.345, -1643, 67.66352, 4.062129, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+156, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1516.469, -1641.911, 68.53256, 0.4306896, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+157, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1657.931, -1680.517, 67.66378, 4.792783, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+158, 142828, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1509.399, -1651.523, 68.24486, 0.7476164, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+159, 62019, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1611.042, -1601.646, 69.86033, 0.342371, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Cat (Area: -Unknown- - Difficulty: 0) (Auras: 236530 - Mod Scale +25%)
(@CGUID+160, 61366, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1609.812, -1601.256, 70.01996, 0.4444192, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+161, 49999, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1615.811, -1617.736, 70.1706, 2.245155, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+162, 142005, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1482.474, -1628.028, 60.99121, 3.558032, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+163, 142005, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1479.419, -1624.644, 59.59184, 3.574682, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+164, 142005, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1482.825, -1626.332, 60.94661, 3.594751, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+165, 142005, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1481.948, -1628.129, 60.83987, 3.594751, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+166, 142019, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1480.798, -1625.338, 60.10838, 3.585173, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schütze des Heldenrufpasses (Area: -Unknown- - Difficulty: 0)
(@CGUID+167, 142019, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1479.966, -1627.156, 60.10117, 3.585173, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schütze des Heldenrufpasses (Area: -Unknown- - Difficulty: 0)
(@CGUID+168, 2620, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1492.86, -1566.808, 47.29491, 6.27342, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+169, 142347, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1501.446, -1568.573, 44.73826, 0.9351076, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wildpferd (Area: -Unknown- - Difficulty: 0)
(@CGUID+170, 13321, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1443.248, -1710.64, 52.0112, 2.375529, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+171, 13321, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1428.155, -1626.012, 51.11591, 2.358957, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+172, 142007, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1460.477, -1547.641, 54.53427, 4.453364, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: -Unknown- - Difficulty: 0)
(@CGUID+173, 142007, 0, 9734, 9743, '0', '11292', 0, 0, 0, -1426.773, -1585.653, 53.0096, 4.502949, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: -Unknown- - Difficulty: 0)
(@CGUID+174, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1410.132, -1588.351, 53.21225, 3.609325, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+175, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1351.137, -1621.647, 51.91157, 5.495267, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+176, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1371.208, -1597.215, 52.33498, 3.85329, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+177, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1352.585, -1623.044, 51.91157, 5.496981, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+178, 142007, 0, 9734, 0, '0', '11292', 0, 0, 0, -1416.717, -1548.342, 48.9313, 4.227686, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: 0 - Difficulty: 0)
(@CGUID+179, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1391.666, -1691.682, 52.48226, 4.712389, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+180, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1381.715, -1591.689, 52.59322, 4.571571, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+181, 142007, 0, 9734, 0, '0', '11292', 0, 0, 0, -1429.023, -1528.729, 50.02091, 5.770477, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: 0 - Difficulty: 0)
(@CGUID+182, 142007, 0, 9734, 0, '0', '11292', 0, 0, 0, -1377.641, -1559.16, 51.84903, 5.951939, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: 0 - Difficulty: 0)
(@CGUID+183, 142007, 0, 9734, 0, '0', '11292', 0, 0, 0, -1408.538, -1531.818, 48.14206, 4.700604, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: 0 - Difficulty: 0) (Auras: 257823 - -Unknown-)
(@CGUID+184, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1354.87, -1652.495, 53.79866, 4.42239, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+185, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1331.148, -1648.215, 51.91157, 2.134499, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+186, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1329.421, -1647.207, 51.91157, 2.134704, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+187, 142007, 0, 9734, 0, '0', '11292', 0, 0, 0, -1347.514, -1535.582, 54.9897, 2.75762, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: 0 - Difficulty: 0) (Auras: 258648 - -Unknown-)
(@CGUID+188, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1344.133, -1592.832, 54.39112, 2.555989, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+189, 142007, 0, 9734, 0, '0', '11292', 0, 0, 0, -1331.446, -1554.517, 56.87022, 4.834562, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: 0 - Difficulty: 0)
(@CGUID+190, 142007, 0, 9734, 0, '0', '11292', 0, 0, 0, -1348.578, -1577.879, 54.39748, 1.936753, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: 0 - Difficulty: 0)
(@CGUID+191, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1363.912, -1529.265, 55.04202, 1.932685, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+192, 142019, 0, 9734, 0, '0', '11292', 0, 0, 0, -1330.14, -1649.942, 51.91157, 2.118531, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schütze des Heldenrufpasses (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+193, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1333.147, -1644.791, 51.84385, 2.099242, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+194, 143321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1350.036, -1544.627, 55.07303, 4.185251, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Bodo der Baumstampfer (Area: 0 - Difficulty: 0)
(@CGUID+195, 142005, 0, 9734, 0, '0', '11292', 0, 0, 0, -1365.786, -1529.951, 55.04572, 1.930197, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+196, 142019, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1330.763, -1645.084, 51.88117, 2.119019, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schütze des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+197, 142007, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1377.349, -1506.381, 55.05551, 3.276898, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandholzfäller (Area: -Unknown- - Difficulty: 0)
(@CGUID+198, 142343, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1311.676, -1609.155, 52.68465, 2.814975, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: -Unknown- - Difficulty: 0)
(@CGUID+199, 142005, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1304.911, -1509.684, 55.25463, 6.038468, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+200, 142342, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1266.645, -1557.557, 48.19774, 4.685687, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: -Unknown- - Difficulty: 0)
(@CGUID+201, 142005, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1337.046, -1635.378, 51.80682, 2.150855, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+202, 2620, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1273.693, -1487.201, 60.89531, 4.853457, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+203, 142347, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1270.51, -1602.581, 51.1482, 6.020191, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wildpferd (Area: -Unknown- - Difficulty: 0)
(@CGUID+204, 142347, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1242.642, -1546.121, 47.31443, 4.204152, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wildpferd (Area: -Unknown- - Difficulty: 0)
(@CGUID+205, 142343, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1257.799, -1482.362, 61.2936, 0.2127318, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+206, 142343, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1278.964, -1663.253, 53.60507, 0.1510153, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: -Unknown- - Difficulty: 0)
(@CGUID+207, 142342, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1196.627, -1600.65, 45.41718, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: -Unknown- - Difficulty: 0)
(@CGUID+208, 2620, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1208.175, -1616.123, 47.2794, 2.319501, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+209, 49778, 0, 9734, 9742, '0', '11292', 0, 0, 0, -1192.83, -1566.512, 47.27111, 0.07827114, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Red-Tailed Chipmunk (Area: -Unknown- - Difficulty: 0)
(@CGUID+210, 142015, 0, 9734, 0, '0', '11292', 0, 0, 0, -1169.422, -1561.477, 45.03191, 0.8755401, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+211, 142343, 0, 9734, 0, '0', '11292', 0, 0, 0, -1167.083, -1558.674, 45.41497, 4.017133, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: 0 - Difficulty: 0)
(@CGUID+212, 142016, 0, 9734, 0, '0', '11292', 0, 0, 0, -1167.887, -1562.184, 44.72844, 1.345555, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hund von Neuhof (Area: 0 - Difficulty: 0)
(@CGUID+213, 883, 0, 9734, 0, '0', '11292', 0, 0, 0, -1208.914, -1674.704, 48.49309, 1.590765, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Deer (Area: 0 - Difficulty: 0)
(@CGUID+214, 142016, 0, 9734, 0, '0', '11292', 0, 0, 0, -1161.952, -1656.98, 37.61745, 5.259937, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hund von Neuhof (Area: 0 - Difficulty: 0)
(@CGUID+215, 142342, 0, 9734, 0, '0', '11292', 0, 0, 0, -1216.288, -1483.998, 56.46508, 2.890144, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: 0 - Difficulty: 0)
(@CGUID+216, 142014, 0, 9734, 0, '0', '11292', 0, 0, 0, -1139.915, -1636.174, 36.68979, 1.699413, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Landarbeiter von Neuhof (Area: 0 - Difficulty: 0)
(@CGUID+217, 142013, 0, 9734, 0, '0', '11292', 0, 0, 0, -1130.534, -1621.085, 36.39483, 3.200495, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: 0 - Difficulty: 0) (Auras: 269149 - -Unknown-)
(@CGUID+218, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1163.213, -1525.76, 48.66974, 1.088283, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+219, 142015, 0, 9734, 0, '0', '11292', 0, 0, 0, -1160.318, -1659.486, 37.64119, 5.24726, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+220, 49778, 0, 9734, 0, '0', '11292', 0, 0, 0, -1142.593, -1517.3, 48.09784, 3.108718, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Red-Tailed Chipmunk (Area: 0 - Difficulty: 0)
(@CGUID+221, 142018, 0, 9734, 0, '0', '11292', 0, 0, 0, -1119.901, -1633.694, 36.40485, 6.189391, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: 0 - Difficulty: 0) (Auras: 267930 - -Unknown-, 260824 - -Unknown-)
(@CGUID+222, 142013, 0, 9734, 0, '0', '11292', 0, 0, 0, -1138.461, -1649.818, 36.03201, 3.249147, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: 0 - Difficulty: 0) (Auras: 268799 - -Unknown-)
(@CGUID+223, 385, 0, 9734, 0, '0', '11292', 0, 0, 0, -1110.726, -1558.119, 42.86923, 4.127093, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Horse (Area: 0 - Difficulty: 0)
(@CGUID+224, 142014, 0, 9734, 0, '0', '11292', 0, 0, 0, -1117.385, -1589.535, 37.24293, 1.629042, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Landarbeiter von Neuhof (Area: 0 - Difficulty: 0)
(@CGUID+225, 385, 0, 9734, 0, '0', '11292', 0, 0, 0, -1103.376, -1583.361, 38.51567, 0.7701794, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Horse (Area: 0 - Difficulty: 0)
(@CGUID+226, 142347, 0, 9734, 0, '0', '11292', 0, 0, 0, -1126.74, -1524.307, 45.60258, 0.4621483, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wildpferd (Area: 0 - Difficulty: 0)
(@CGUID+227, 142014, 0, 9734, 0, '0', '11292', 0, 0, 0, -1131.224, -1650.637, 36.42368, 4.223697, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Landarbeiter von Neuhof (Area: 0 - Difficulty: 0)
(@CGUID+228, 142016, 0, 9734, 0, '0', '11292', 0, 0, 0, -1116.581, -1506.395, 47.24095, 6.176999, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hund von Neuhof (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+229, 2442, 0, 9734, 0, '0', '11292', 0, 0, 0, -1138.726, -1670.555, 36.43222, 1.325912, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Cow (Area: 0 - Difficulty: 0)
(@CGUID+230, 2442, 0, 9734, 0, '0', '11292', 0, 0, 0, -1116.327, -1662.422, 36.17368, 5.511622, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Cow (Area: 0 - Difficulty: 0)
(@CGUID+231, 142016, 0, 9734, 0, '0', '11292', 0, 0, 0, -1058.948, -1571.484, 41.75478, 4.765178, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hund von Neuhof (Area: 0 - Difficulty: 0)
(@CGUID+232, 142015, 0, 9734, 0, '0', '11292', 0, 0, 0, -1104.464, -1507.063, 47.76887, 6.251606, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+233, 142015, 0, 9734, 0, '0', '11292', 0, 0, 0, -1058.921, -1572.049, 41.70816, 1.625536, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+234, 2442, 0, 9734, 0, '0', '11292', 0, 0, 0, -1099.459, -1662.694, 35.74718, 0.1296303, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Cow (Area: 0 - Difficulty: 0)
(@CGUID+235, 142013, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1074.971, -1644.941, 35.4902, 2.780977, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0) (Auras: 268799 - -Unknown-)
(@CGUID+236, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1071.255, -1633.922, 35.56135, 4.700937, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288161 - -Unknown-, 260824 - -Unknown-, 288015 - -Unknown-)
(@CGUID+237, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1090.668, -1650.314, 36.84028, 0.9426136, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+238, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1090.168, -1647.929, 36.63402, 4.777146, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+239, 142015, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1044.521, -1645.608, 39.60302, 3.06124, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+240, 142016, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1040.981, -1645.911, 39.85302, 3.028969, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hund von Neuhof (Area: -Unknown- - Difficulty: 0)
(@CGUID+241, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1111.054, -1702.865, 38.62608, 3.320584, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+242, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1044.66, -1693.187, 36.51083, 5.825331, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+243, 142015, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1047.056, -1671.707, 37.46875, 5.697979, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+244, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1049.083, -1675.24, 36.38194, 5.718193, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+245, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1044.638, -1695.843, 37.49374, 5.834802, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+246, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1048.13, -1673.399, 36.99826, 5.708285, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+247, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1091.915, -1684.354, 36.85072, 3.537988, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-)
(@CGUID+248, 124316, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1060.416, -1708.334, 37.32989, 6.232784, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schwein (Area: -Unknown- - Difficulty: 0)
(@CGUID+249, 142015, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1044.486, -1697.944, 37.95394, 5.843989, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768); -- Jäger von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-; 288161 - -Unknown-)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+250, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1086.913, -1683.295, 36.27654, 5.871687, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-)
(@CGUID+251, 142015, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1041.946, -1695.03, 37.00423, 5.782694, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+252, 1933, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1098.987, -1741.185, 37.33167, 2.454453, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Sheep (Area: -Unknown- - Difficulty: 0)
(@CGUID+253, 124316, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1064.545, -1733.702, 37.42093, 0.5845101, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schwein (Area: -Unknown- - Difficulty: 0)
(@CGUID+254, 142017, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1158.493, -1729.266, 55.33743, 2.83659, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kavallerist des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+255, 142342, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1195.049, -1690.096, 47.68885, 0.9844206, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: -Unknown- - Difficulty: 0)
(@CGUID+256, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1166.738, -1726.629, 54.18344, 5.756907, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+257, 137073, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1123.255, -1741.908, 41.76894, 5.159191, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prinzessin (Area: -Unknown- - Difficulty: 0)
(@CGUID+258, 124316, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1060.738, -1718.706, 37.32989, 1.354791, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schwein (Area: -Unknown- - Difficulty: 0)
(@CGUID+259, 1933, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1093.362, -1751.655, 37.33167, 2.402004, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Sheep (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+260, 124316, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1066.904, -1719.966, 37.34216, 1.651345, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schwein (Area: -Unknown- - Difficulty: 0)
(@CGUID+261, 142014, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1094.926, -1733.592, 37.38423, 4.483516, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Landarbeiter von Neuhof (Area: -Unknown- - Difficulty: 0)
(@CGUID+262, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1165.464, -1728.717, 54.69271, 5.788481, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288161 - -Unknown-, 260824 - -Unknown-, 288015 - -Unknown-)
(@CGUID+263, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1109.411, -1730.606, 40.90507, 1.562407, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+264, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1042.026, -1697.309, 37.55408, 5.836912, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-)
(@CGUID+265, 121541, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1039.269, -1702.493, 38.40362, 4.34875, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ban-Lu (Area: -Unknown- - Difficulty: 0)
(@CGUID+266, 137072, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1115.27, -1737.52, 43.2459, 6.143559, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Timbet (Area: -Unknown- - Difficulty: 0)
(@CGUID+267, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1166.16, -1723.953, 53.80748, 5.691752, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288161 - -Unknown-, 260824 - -Unknown-, 267930 - -Unknown-, 288015 - -Unknown-)
(@CGUID+268, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1163.083, -1724.479, 54.2922, 5.657343, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+269, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1109.795, -1728.203, 41.05408, 5.047523, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+270, 142014, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1071.491, -1747.665, 37.33167, 4.886922, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Landarbeiter von Neuhof (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+271, 124316, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1053.835, -1744.821, 37.39822, 0.5381978, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schwein (Area: -Unknown- - Difficulty: 0)
(@CGUID+272, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1047.561, -1761.477, 37.78908, 6.262523, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 267930 - -Unknown-, 260824 - -Unknown-)
(@CGUID+273, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1008.977, -1711.849, 41.02639, 5.891338, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+274, 142015, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1017.882, -1717.705, 44.70462, 5.839226, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+275, 124316, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1065.023, -1763.554, 37.42093, 0.7598584, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schwein (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+276, 124316, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1058.779, -1770.851, 37.40802, 3.737354, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schwein (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+277, 142016, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1094.38, -1788.807, 40.75134, 6.042472, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hund von Neuhof (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+278, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1085.247, -1761.181, 37.29743, 4.904697, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 267930 - -Unknown-, 260824 - -Unknown-)
(@CGUID+279, 142014, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1048.278, -1756.156, 37.69021, 3.700098, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Landarbeiter von Neuhof (Area: -Unknown- - Difficulty: 0)
(@CGUID+280, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1002.316, -1700.151, 41.77383, 5.657759, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-)
(@CGUID+281, 142018, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1004.179, -1701.34, 41.54803, 5.657759, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Milizsoldat von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-)
(@CGUID+282, 142015, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1088.551, -1789.773, 40.37786, 6.129716, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+283, 142015, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1026.656, -1797.45, 44.10197, 5.427816, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Jäger von Neuhof (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+284, 142334, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1057.115, -1807.566, 49.50727, 1.787347, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+285, 142016, 0, 9734, 9737, '0', '11292', 0, 0, 0, -1029.134, -1794.634, 43.363, 5.458731, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hund von Neuhof (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+286, 142440, 0, 9734, 9737, '0', '11292', 0, 0, 0, -990.0035, -1632.616, 41.4777, 2.657069, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Yogursa (Area: -Unknown- - Difficulty: 0) (Auras: 287966 - -Unknown-)
(@CGUID+287, 142342, 0, 9734, 0, '0', '11292', 0, 0, 0, -937.8033, -1586.222, 53.02891, 0.6259248, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: 0 - Difficulty: 0)
(@CGUID+288, 142342, 0, 9734, 0, '0', '11292', 0, 0, 0, -1017.085, -1562.383, 53.72308, 3.141499, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: 0 - Difficulty: 0)
(@CGUID+289, 49778, 0, 9734, 0, '0', '11292', 0, 0, 0, -905.1544, -1721.015, 53.1304, 0.8628055, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Red-Tailed Chipmunk (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+290, 142342, 0, 9734, 0, '0', '11292', 0, 0, 0, -871.155, -1711.892, 60.02131, 3.845342, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: 0 - Difficulty: 0)
(@CGUID+291, 142343, 0, 9734, 0, '0', '11292', 0, 0, 0, -839.2606, -1659.073, 57.74751, 0.03123983, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: 0 - Difficulty: 0)
(@CGUID+292, 883, 0, 9734, 0, '0', '11292', 0, 0, 0, -962.88, -1764.95, 49.85663, 0.2203624, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Deer (Area: 0 - Difficulty: 0)
(@CGUID+293, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -971.7424, -1759.239, 49.29621, 0.441817, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+294, 142343, 0, 9734, 0, '0', '11292', 0, 0, 0, -828.0605, -1770.896, 60.043, 0.4441352, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: 0 - Difficulty: 0)
(@CGUID+295, 142343, 0, 9734, 0, '0', '11292', 0, 0, 0, -806.3971, -1750.52, 57.34229, 1.410557, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: 0 - Difficulty: 0)
(@CGUID+296, 142343, 0, 9734, 0, '0', '11292', 0, 0, 0, -814.6179, -1791.2, 58.31556, 5.09652, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: 0 - Difficulty: 0)
(@CGUID+297, 142436, 0, 9734, 0, '0', '11292', 0, 0, 0, -791.2817, -1771.309, 59.58876, 3.700213, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Zornschnabel (Area: 0 - Difficulty: 0) (Auras: 287961 - -Unknown-)
(@CGUID+298, 142342, 0, 9734, 9736, '0', '11292', 0, 0, 0, -764.2159, -1709.986, 67.31837, 4.963052, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: -Unknown- - Difficulty: 0)
(@CGUID+299, 142343, 0, 9734, 9736, '0', '11292', 0, 0, 0, -783.9621, -1822.054, 61.69674, 2.613237, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: -Unknown- - Difficulty: 0)
(@CGUID+300, 142343, 0, 9734, 9736, '0', '11292', 0, 0, 0, -782.2856, -1800.299, 59.45675, 3.971603, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: -Unknown- - Difficulty: 0)
(@CGUID+301, 49778, 0, 9734, 9736, '0', '11292', 0, 0, 0, -791.7129, -1684.509, 70.91051, 1.527854, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Red-Tailed Chipmunk (Area: -Unknown- - Difficulty: 0)
(@CGUID+302, 142343, 0, 9734, 9736, '0', '11292', 0, 0, 0, -745.3116, -1787.498, 58.54693, 4.247992, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: -Unknown- - Difficulty: 0)
(@CGUID+303, 142343, 0, 9734, 9736, '0', '11292', 0, 0, 0, -781.7897, -1854.485, 63.69659, 1.147555, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+304, 2620, 0, 9734, 9736, '0', '11292', 0, 0, 0, -708.6345, -1775.155, 64.10968, 2.331338, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+305, 142342, 0, 9734, 9736, '0', '11292', 0, 0, 0, -699.4944, -1799.245, 61.45205, 3.58341, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: -Unknown- - Difficulty: 0)
(@CGUID+306, 143373, 0, 9734, 9736, '0', '11292', 0, 0, 0, -742.5035, -1854.118, 69.34266, 2.175524, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Graul (Area: -Unknown- - Difficulty: 0)
(@CGUID+307, 142342, 0, 9734, 9736, '0', '11292', 0, 0, 0, -700.0583, -1742.883, 59.17114, 2.092123, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: -Unknown- - Difficulty: 0)
(@CGUID+308, 142343, 0, 9734, 9736, '0', '11292', 0, 0, 0, -647.6135, -1817.005, 56.23971, 0.1531602, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: -Unknown- - Difficulty: 0)
(@CGUID+309, 142342, 0, 9734, 9736, '0', '11292', 0, 0, 0, -728.3489, -1879.643, 62.22086, 0.6427202, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Heimtückischer Schwarzbär (Area: -Unknown- - Difficulty: 0)
(@CGUID+310, 142343, 0, 9734, 9736, '0', '11292', 0, 0, 0, -703.8507, -1848.65, 62.50713, 4.261841, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tobende Eulenbestie (Area: -Unknown- - Difficulty: 0)
(@CGUID+311, 142334, 0, 9734, 9736, '0', '11292', 0, 0, 0, -645.144, -1860.83, 57.76826, 0.8920847, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+312, 142334, 0, 9734, 9736, '0', '11292', 0, 0, 0, -658.4312, -1924.115, 61.51895, 0.09189729, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+313, 142334, 0, 9734, 9736, '0', '11292', 0, 0, 0, -609.3095, -1900.897, 58.18559, 5.194602, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+314, 142334, 0, 9734, 9736, '0', '11292', 0, 0, 0, -714.5562, -1946.571, 43.33186, 0.0362969, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+315, 142508, 0, 9734, 9736, '0', '11292', 0, 0, 0, -605.6801, -1915.475, 59.64031, 1.209511, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Zweigfürst Aldrus (Area: -Unknown- - Difficulty: 0) (Auras: 287953 - -Unknown-)
(@CGUID+316, 142334, 0, 9734, 9736, '0', '11292', 0, 0, 0, -609.7609, -1947.335, 55.56393, 4.255991, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+317, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -656.4923, -1981.067, 55.35262, 4.09986, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+318, 50770, 0, 9734, 0, '0', '11292', 0, 0, 0, -461.9896, -1896.139, 66.14774, 3.006901, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Zorn (Area: 0 - Difficulty: 0)
(@CGUID+319, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -744.5634, -1961.076, 48.9922, 2.110546, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+320, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -716.31, -1979.958, 45.39422, 1.516525, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+321, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -762.9828, -2003.657, 58.81555, 3.892426, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0)
(@CGUID+322, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -778.9178, -1990.293, 58.45192, 3.656858, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+323, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -791.8986, -1984.699, 58.20192, 0.2429567, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0)
(@CGUID+324, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -763.7879, -2014.154, 58.81555, 2.206485, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-) (possible waypoints or random movement)
(@CGUID+325, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -832.877, -1987.309, 52.81781, 3.890696, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+326, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -858.8726, -1997.914, 55.96353, 3.949087, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+327, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -842.4987, -2003.259, 54.80506, 2.386572, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+328, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -880.7285, -1933.334, 49.56385, 3.532633, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+329, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -889.6721, -1859.832, 68.1514, 0.7287506, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+330, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -894.9335, -1992.581, 55.47927, 3.746543, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0)
(@CGUID+331, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -910.9427, -1950.078, 49.48904, 0.02999694, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+332, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -879.9336, -2033.253, 55.54695, 6.019147, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+333, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -861.041, -2037.746, 55.97736, 4.162069, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+334, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -840.9112, -2037.661, 58.05915, 1.612014, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+335, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -843.6917, -2027.129, 56.41489, 2.522706, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+336, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -772.916, -2029.688, 59.30217, 3.985824, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+337, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -825.7399, -2051.03, 61.66689, 3.826087, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+338, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -800, -2048.959, 66.21977, 0.5232993, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+339, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -848.4102, -2064.865, 62.35236, 5.725, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+340, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -844.4846, -2072.976, 63.38772, 2.688434, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+341, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -793.4824, -2067.535, 66.73689, 0.7771111, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+342, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -784.305, -2061.189, 66.63638, 2.424193, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+343, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -815.3784, -2079.43, 66.55479, 2.514901, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+344, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -915.1911, -2030.563, 55.64732, 3.677278, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+345, 142725, 0, 9734, 9735, '0', '11292', 0, 0, 0, -901.355, -2058.163, 55.93571, 4.416723, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckliche Erscheinung (Area: -Unknown- - Difficulty: 0) (Auras: 287906 - -Unknown-, 144465 - [DND] Shadowy Ghost Visual)
(@CGUID+346, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -880.3821, -2090.456, 61.41154, 5.062121, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+347, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -771.6564, -2068.565, 67.45156, 3.757423, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+348, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -859.0358, -2075.78, 63.13577, 5.734729, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+349, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -887.8626, -2074.684, 57.6603, 3.993375, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+350, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -918.0091, -2075.521, 60.0682, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+351, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -940.6045, -2063.302, 56.33104, 4.899057, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-) (possible waypoints or random movement)
(@CGUID+352, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -890.9465, -2105.014, 60.34653, 3.020146, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+353, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -929.5992, -2041.709, 55.44078, 2.636012, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-) (possible waypoints or random movement)
(@CGUID+354, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -930.0672, -2090.202, 62.39631, 3.6192, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+355, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -897.0922, -2117.592, 59.72115, 0.933734, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+356, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -962.4747, -2101.861, 60.59182, 3.13964, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+357, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -939.0625, -2129.768, 60.33971, 4.712389, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+358, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -918.3035, -2140.804, 59.16646, 0.797648, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+359, 142334, 0, 9734, 9735, '0', '11292', 0, 0, 0, -958.4245, -1974.048, 51.04258, 3.924229, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+360, 49778, 0, 9734, 9735, '0', '11292', 0, 0, 0, -977.1046, -1986.46, 57.98063, 6.205111, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Red-Tailed Chipmunk (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+361, 4075, 0, 9734, 9735, '0', '11292', 0, 0, 0, -963.541, -2102.084, 60.52721, 4.28323, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+362, 142039, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1022.408, -2060.353, 59.26588, 4.877358, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ritter des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+363, 49999, 0, 9734, 9735, '0', '11292', 0, 0, 0, -990.1018, -2131.356, 54.83614, 0.6189157, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+364, 142038, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1018.426, -2053.035, 60.30908, 4.825529, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-)
(@CGUID+365, 142723, 0, 9734, 9735, '0', '11292', 0, 0, 0, -926.8117, -2154.313, 59.11969, 2.648082, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+366, 142038, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1029.604, -2053.595, 60.39807, 4.936042, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-)
(@CGUID+367, 142038, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1024.119, -2058.688, 59.55803, 4.878242, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+368, 142038, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1003.872, -2007.439, 60.2587, 5.927035, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+369, 142047, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1010.238, -2166.236, -55.1317, 1.067314, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: -Unknown- - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+370, 142041, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1048.606, -2057.866, 67.32031, 5.239492, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 288161 - -Unknown-, 288015 - -Unknown-)
(@CGUID+371, 142045, 0, 9734, 9735, '0', '11292', 0, 0, 0, -998.382, -2207.503, -49.64917, 0.1813735, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: -Unknown- - Difficulty: 0)
(@CGUID+372, 142047, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1000.786, -2202.823, -49.26368, 0.8407184, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: -Unknown- - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+373, 142334, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1069.244, -2086.448, 61.08603, 0.5950447, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+374, 142047, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1035.931, -2202.542, -44.63387, 2.846071, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: -Unknown- - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+375, 142045, 0, 9734, 9735, '0', '11292', 0, 0, 0, -984.8906, -2218.953, 13.45709, 2.153353, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: -Unknown- - Difficulty: 0)
(@CGUID+376, 142334, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1049.031, -2165.525, 53.58325, 0.4837304, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+377, 142045, 0, 9734, 9735, '0', '11292', 0, 0, 0, -1032.769, -2207.531, -45.09889, 5.84158, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: -Unknown- - Difficulty: 0)
(@CGUID+378, 142047, 0, 9734, 0, '0', '11292', 0, 0, 0, -986.4435, -2250.018, 13.45742, 6.240317, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+379, 142045, 0, 9734, 0, '0', '11292', 0, 0, 0, -1021.781, -2234.064, -49.06475, 4.581256, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: 0 - Difficulty: 0)
(@CGUID+380, 142047, 0, 9734, 0, '0', '11292', 0, 0, 0, -1051.1, -2219.078, 39.51104, 1.312047, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+381, 142723, 0, 9734, 0, '0', '11292', 0, 0, 0, -894.6561, -2175.486, 61.39629, 2.189853, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: 0 - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+382, 142045, 0, 9734, 0, '0', '11292', 0, 0, 0, -1002.184, -2235.181, 16.13764, 2.154696, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: 0 - Difficulty: 0)
(@CGUID+383, 142045, 0, 9734, 0, '0', '11292', 0, 0, 0, -958.1528, -2240.313, 13.52379, 5.83064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: 0 - Difficulty: 0)
(@CGUID+384, 141615, 0, 9734, 0, '0', '11292', 0, 0, 0, -1178.855, -2191.84, 57.57185, 5.588467, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Brennender Goliath (Area: 0 - Difficulty: 0) (Auras: 287954 - -Unknown-, 259919 - -Unknown-, 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+385, 142047, 0, 9734, 0, '0', '11292', 0, 0, 0, -1042.519, -2251.901, -41.0492, 1.237458, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+386, 142045, 0, 9734, 0, '0', '11292', 0, 0, 0, -1065.462, -2223.052, -44.44962, 3.857331, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: 0 - Difficulty: 0)
(@CGUID+387, 142045, 0, 9734, 0, '0', '11292', 0, 0, 0, -925.1945, -2265.675, 9.064404, 0.4616856, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: 0 - Difficulty: 0)
(@CGUID+388, 142047, 0, 9734, 0, '0', '11292', 0, 0, 0, -1027.436, -2301.385, 16.66355, 5.950022, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+389, 142047, 0, 9734, 0, '0', '11292', 0, 0, 0, -1030.903, -2292.425, -39.8089, 3.000675, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+390, 143372, 0, 9734, 0, '0', '11292', 0, 0, 0, -983.1441, -2285.158, 18.33997, 2.696285, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Vorarbeiter Drogg (Area: 0 - Difficulty: 0)
(@CGUID+391, 142047, 0, 9734, 0, '0', '11292', 0, 0, 0, -946.9549, -2273.141, 9.32692, 4.938317, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+392, 142423, 0, 9734, 0, '0', '11292', 0, 0, 0, -1023.375, -2298.658, -40.27203, 4.715277, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Aufseher Krix (Area: 0 - Difficulty: 0) (Auras: 42459 - Dual Wield, 287959 - -Unknown-)
(@CGUID+393, 142047, 0, 9734, 0, '0', '11292', 0, 0, 0, -1044.314, -2274.745, -40.24988, 3.634421, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+394, 142047, 0, 9734, 0, '0', '11292', 0, 0, 0, -1041.602, -2276.478, 22.48504, 3.839827, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+395, 142045, 0, 9734, 0, '0', '11292', 0, 0, 0, -1070.837, -2269.698, 24.8853, 2.228421, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: 0 - Difficulty: 0)
(@CGUID+396, 142045, 0, 9734, 0, '0', '11292', 0, 0, 0, -995.3933, -2297.953, 19.60896, 1.210412, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: 0 - Difficulty: 0)
(@CGUID+397, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -901.2155, -2218.249, 50.12715, 0.9082223, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+398, 142045, 0, 9734, 9740, '0', '11292', 0, 0, 0, -1065.182, -2288.66, 24.8853, 4.4189, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: -Unknown- - Difficulty: 0)
(@CGUID+399, 142045, 0, 9734, 9740, '0', '11292', 0, 0, 0, -1045.014, -2308.361, 20.01549, 3.825615, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: -Unknown- - Difficulty: 0)
(@CGUID+400, 142045, 0, 9734, 9740, '0', '11292', 0, 0, 0, -1024.344, -2320.717, -41.14048, 3.515935, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: -Unknown- - Difficulty: 0)
(@CGUID+401, 142047, 0, 9734, 9740, '0', '11292', 0, 0, 0, -1037.905, -2311.811, -41.84263, 4.569049, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feldvermesser der Trockenstoppel (Area: -Unknown- - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+402, 138122, 0, 9734, 9740, '0', '11292', 0, 0, 0, -1071.33, -2423.93, 54.35938, 1.570796, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Die Heulende Verdammnis (Area: -Unknown- - Difficulty: 0) (Auras: )
-- (@CGUID+403, 138133, UNKNOWN, 9734, 9740, '0', '11292', 0, 0, 0, 1.298163, 0.002807756, 3.242065, 0, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Kommandantin der Heulenden Verdammnis (Area: -Unknown- - Difficulty: 0) (Auras: 46598 - Ride Vehicle Hardcoded) - !!! on transport - transport template not found !!! (possible waypoints or random movement)
-- (@CGUID+404, 138123, UNKNOWN, 9734, 9740, '0', '11292', 0, 0, 0, -3.280811, -0.00009139749, 6.458789, 0, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Geschütz der Heulenden Verdammnis (Area: -Unknown- - Difficulty: 0) (Auras: 46598 - Ride Vehicle Hardcoded, 271121 - -Unknown-) - !!! on transport - transport template not found !!! (possible waypoints or random movement)
(@CGUID+405, 142045, 0, 9734, 9740, '0', '11292', 0, 0, 0, -1058.153, -2358.118, -47.36582, 4.355745, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: -Unknown- - Difficulty: 0)
(@CGUID+406, 142045, 0, 9734, 9740, '0', '11292', 0, 0, 0, -1075.627, -2377.252, -53.27478, 4.458879, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Buddler der Trockenstoppel (Area: -Unknown- - Difficulty: 0)
(@CGUID+407, 2620, 0, 9734, 9740, '0', '11292', 0, 0, 0, -1071.279, -2417.866, 54.36982, 3.363355, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+408, 2620, 0, 9734, 9740, '0', '11292', 0, 0, 0, -1082.035, -2415.779, 54.35938, 4.208628, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+409, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -977.8604, -2411.234, 50.72512, 3.544946, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+410, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -981.5215, -2412.797, 51.15195, 3.544946, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+411, 143598, 0, 9734, 0, '0', '11292', 0, 0, 0, -979.6542, -2411.998, 50.96966, 3.544946, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ingenieur der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-)
(@CGUID+412, 143599, 0, 9734, 0, '0', '11292', 0, 0, 0, -978.8597, -2413.837, 50.84499, 3.544946, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schlachtzauberer der Heulenden Verdammnis (Area: 0 - Difficulty: 0)
(@CGUID+413, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -977.0464, -2413.06, 50.6394, 3.544946, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+414, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -980.8574, -2414.687, 50.98415, 3.544946, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+415, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1020.666, -2448.715, 54.3498, 2.898172, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+416, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1020.315, -2446.739, 54.3498, 2.90006, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+417, 143598, 0, 9734, 0, '0', '11292', 0, 0, 0, -1013.056, -2448.627, 54.3498, 2.885494, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ingenieur der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-)
(@CGUID+418, 143599, 0, 9734, 0, '0', '11292', 0, 0, 0, -1013.636, -2450.542, 54.3498, 2.885601, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schlachtzauberer der Heulenden Verdammnis (Area: 0 - Difficulty: 0)
(@CGUID+419, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1016.632, -2449.709, 54.3498, 2.898027, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+420, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1016.15, -2447.768, 54.3498, 2.897725, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+421, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1149.368, -2452.868, 57.31186, 5.245104, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+422, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1105.973, -2515.302, 58.00193, 6.047089, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+423, 143598, 0, 9734, 0, '0', '11292', 0, 0, 0, -1114.689, -2513.166, 57.6492, 6.044371, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ingenieur der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-)
(@CGUID+424, 143599, 0, 9734, 0, '0', '11292', 0, 0, 0, -1115.118, -2515.159, 57.89308, 6.046729, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schlachtzauberer der Heulenden Verdammnis (Area: 0 - Difficulty: 0)
(@CGUID+425, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -970.9861, -2510.163, 65.99908, 1.532201, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+426, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -995.4375, -2529.226, 65.87346, 3.73424, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+427, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1114.7, -2515.26, 57.99099, 6.046729, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+428, 143598, 0, 9734, 0, '0', '11292', 0, 0, 0, -987.8386, -2518.719, 66.13493, 3.125665, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ingenieur der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-)
(@CGUID+429, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -991.6406, -2501.573, 66.04613, 2.261092, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+430, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1110.819, -2516.194, 58.13985, 6.046729, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+431, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1009.874, -2557.918, 59.24848, 2.943048, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+432, 143598, 0, 9734, 0, '0', '11292', 0, 0, 0, -1007.678, -2558.364, 59.53924, 2.931746, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ingenieur der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-)
(@CGUID+433, 143599, 0, 9734, 0, '0', '11292', 0, 0, 0, -1008.119, -2560.315, 59.34256, 2.931322, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schlachtzauberer der Heulenden Verdammnis (Area: 0 - Difficulty: 0)
(@CGUID+434, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -989.7107, -2500.266, 66.10839, 3.039472, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+435, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1110.339, -2514.252, 57.86458, 6.047147, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+436, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -983.7274, -2513.283, 66.04639, 5.89662, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+437, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1010.042, -2559.928, 59.10858, 2.930889, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+438, 143599, 0, 9734, 0, '0', '11292', 0, 0, 0, -982.125, -2513.958, 66.03463, 2.728601, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schlachtzauberer der Heulenden Verdammnis (Area: 0 - Difficulty: 0)
(@CGUID+439, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -979.8698, -2533.566, 65.34065, 4.714104, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+440, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1006.155, -2560.711, 59.58125, 2.932338, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+441, 143599, 0, 9734, 0, '0', '11292', 0, 0, 0, -979.4149, -2518.167, 66.03463, 2.42575, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schlachtzauberer der Heulenden Verdammnis (Area: 0 - Difficulty: 0)
(@CGUID+442, 143597, 0, 9734, 0, '0', '11292', 0, 0, 0, -1005.698, -2558.764, 59.75764, 2.931282, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schreckensschild der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+443, 143598, 0, 9734, 0, '0', '11292', 0, 0, 0, -989.8837, -2509.264, 66.09156, 3.52596, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ingenieur der Heulenden Verdammnis (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-)
(@CGUID+444, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1030.431, -2634.826, 46.59341, 0.9864741, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+445, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1099.991, -2586.547, 46.5934, 3.843953, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+446, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1010.808, -2647.861, 55.33682, 2.425336, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+447, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1109.197, -2639.949, 46.5934, 0.7704734, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+448, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1047.022, -2674.819, 50.55445, 5.540638, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+449, 142704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1036.936, -2788.371, 42.04433, 4.263978, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+450, 142704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1050.953, -2811.202, 42.87691, 0.8169335, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+451, 142704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1073.481, -2796.092, 45.06564, 4.871491, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+452, 385, 0, 9734, 0, '0', '11292', 0, 0, 0, -1039.948, -2808.103, 42.65671, 1.529497, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Horse (Area: 0 - Difficulty: 0)
(@CGUID+453, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1146.631, -2771.912, 40.88039, 2.580086, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+454, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -1076.76, -2809.194, 42.92361, 0.4592808, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+455, 142704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1025.882, -2802.69, 42.05367, 5.890341, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+456, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -1100.096, -2799.954, 43.06036, 1.750894, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+457, 142705, 0, 9734, 0, '0', '11292', 0, 0, 0, -1016.347, -2821.505, 50.80738, 3.145095, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+458, 142704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1051.493, -2836.756, 43.17794, 0.7287507, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+459, 142704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1059.538, -2818.061, 42.66102, 5.323083, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+460, 142705, 0, 9734, 0, '0', '11292', 0, 0, 0, -1059.161, -2820.757, 42.53538, 1.228764, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+461, 142704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1031.543, -2827.014, 43.06441, 2.333292, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+462, 143433, 0, 9734, 0, '0', '11292', 0, 0, 0, -1113.163, -2817.643, 42.05379, 1.898877, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ernteschredder des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+463, 143433, 0, 9734, 0, '0', '11292', 0, 0, 0, -1085.922, -2847.401, 42.17879, 4.078717, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ernteschredder des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+464, 142704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1056.811, -2819.03, 42.69086, 3.300399, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: 0 - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+465, 143433, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1109.645, -2869.773, 42.05379, 4.27507, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ernteschredder des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+466, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1028.174, -2851.2, 51.23366, 5.625226, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+467, 4075, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1114.463, -2853.912, 42.37388, 2.564162, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+468, 143433, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1105.718, -2846.436, 42.05379, 6.230855, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ernteschredder des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+469, 142338, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1178.741, -2782.497, 50.62023, 0.915577, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+470, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -993.896, -2823.462, 54.44661, 3.075675, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+471, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1013.005, -2845.576, 55.44978, 2.39437, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+472, 4075, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1079.294, -2856.767, 42.05379, 5.752219, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+473, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1037.422, -2845.703, 48.78427, 2.945492, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+474, 143433, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1121.385, -2845.889, 42.37912, 5.870617, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ernteschredder des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+475, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -996.5729, -2808.67, 54.69648, 1.894059, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+476, 142729, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1085.027, -2889.828, 42.05379, 0.4285048, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ernteschnitter des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+477, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1058.124, -2882.736, 45.41713, 1.602636, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+478, 143433, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1086.068, -2890.718, 42.05379, 0.8422483, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ernteschredder des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+479, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1001.557, -2862.304, 60.88474, 2.275669, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+480, 143433, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1129.225, -2884.223, 42.05379, 6.201112, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ernteschredder des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+481, 142690, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1067.002, -2906.564, 43.8919, 3.801958, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Sängerin (Area: -Unknown- - Difficulty: 0) (Auras: 287912 - -Unknown-, 288181 - -Unknown-)
(@CGUID+482, 143433, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1084.099, -2886.534, 42.23787, 6.008003, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ernteschredder des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+483, 143433, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1143.531, -2867.074, 42.05379, 3.770881, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ernteschredder des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+484, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1060.019, -2923.038, 43.34935, 3.036681, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+485, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1129.942, -2916.122, 42.18289, 1.069579, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+486, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -992.7335, -2866.493, 62.18848, 2.297693, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+487, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1114.543, -2928.196, 42.79763, 4.351104, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+488, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1078.966, -2930.305, 42.1995, 1.550962, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+489, 142688, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1009.447, -2883.42, 61.65139, 3.327349, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Darbel Montrose (Area: -Unknown- - Difficulty: 0) (Auras: 287903 - -Unknown-, 288181 - -Unknown-)
(@CGUID+490, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1161.54, -2884.531, 42.17879, 2.527443, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+491, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1161.682, -2906.495, 49.72984, 1.460444, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+492, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1090.097, -2955.658, 43.1617, 5.309185, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+493, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1015.246, -2887.682, 62.19616, 3.63828, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+494, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1009.205, -2883.804, 61.6422, 4.527596, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+495, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1069.787, -2957.723, 44.72029, 3.101332, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+496, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1093.577, -2921.641, 42.05379, 4.043281, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+497, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1038.818, -2931.174, 52.17461, 2.114048, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+498, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1004.135, -2880.03, 62.00282, 0.4330894, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+499, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1144.146, -2920.604, 48.39686, 0.552681, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768); -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+500, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1046.34, -2944.351, 50.83184, 3.01006, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+501, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1105.75, -2942.847, 42.70041, 2.631649, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-) (possible waypoints or random movement)
(@CGUID+502, 142338, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1125.987, -2976.973, 42.52543, 1.107149, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+503, 49999, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1124.511, -2983.549, 42.37902, 5.652055, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+504, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1038.581, -2951.458, 50.96278, 4.957599, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+505, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1044.252, -2960.273, 50.26942, 1.783528, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+506, 49999, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1031.555, -2997.879, 55.74009, 0.6329588, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+507, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -978.0507, -2855.03, 64.28079, 5.805233, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+508, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -979.5175, -2829.516, 57.90276, 1.119628, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+509, 142705, 0, 9734, 9749, '0', '11292', 0, 0, 0, -972.8871, -2843.167, 67.16299, 2.117345, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pfadpirscher des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+510, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -958.2312, -2823.75, 61.28354, 4.134433, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+511, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -951.3775, -2845.402, 67.65009, 1.065392, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+512, 142704, 0, 9734, 9749, '0', '11292', 0, 0, 0, -964.7241, -2854.017, 66.59418, 6.281943, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Söldner des Syndikats (Area: -Unknown- - Difficulty: 0) (Auras: 288181 - -Unknown-)
(@CGUID+513, 141668, 0, 9734, 9749, '0', '11292', 0, 0, 0, -947.1406, -3111.59, 48.40394, 3.090742, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Echo von Myzrael (Area: -Unknown- - Difficulty: 0) (Auras: 287956 - -Unknown-)
(@CGUID+514, 142338, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1015.076, -3016.189, 55.18751, 5.713906, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+515, 142338, 0, 9734, 9749, '0', '11292', 0, 0, 0, -1037.549, -3036.72, 50.18205, 0.6857295, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+516, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -973.4111, -3073.36, 50.77977, 0.7774549, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+517, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -953.9487, -3079.783, 49.59266, 5.279268, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+518, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -977.2651, -3092.234, 48.15477, 0.5833736, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+519, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1101.905, -3067.797, 44.8689, 6.084641, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+520, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1050.895, -3115.036, 48.22154, 5.88419, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+521, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -978.386, -3112.611, 48.33003, 3.887817, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor, 288179 - -Unknown-)
(@CGUID+522, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1044.425, -3115.078, 47.09703, 5.936016, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+523, 141727, 0, 9734, 0, '0', '11292', 0, 0, 0, -934.054, -3076.645, 50.21497, 4.711531, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+524, 141648, 0, 9734, 0, '0', '11292', 0, 0, 0, -957.2379, -3098.868, 48.40396, 2.074233, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Wächter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+525, 141727, 0, 9734, 0, '0', '11292', 0, 0, 0, -916.4251, -3100.054, 51.26472, 2.300735, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+526, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -958.3128, -3148.049, 48.68812, 1.504358, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor, 288179 - -Unknown-)
(@CGUID+527, 141663, 0, 9734, 0, '0', '11292', 0, 0, 0, -938.8802, -3125.323, 48.45112, 5.471833, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Wächter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+528, 141659, 0, 9734, 0, '0', '11292', 0, 0, 0, -933.3594, -3101.823, 48.40397, 0.4172875, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grollender Wächter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+529, 141725, 0, 9734, 0, '0', '11292', 0, 0, 0, -920.5238, -3129.954, 50.84235, 5.310911, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+530, 141658, 0, 9734, 0, '0', '11292', 0, 0, 0, -959.5452, -3120.29, 48.40401, 3.536323, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Überschäumender Wächter (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor, 288179 - -Unknown-)
(@CGUID+531, 141727, 0, 9734, 0, '0', '11292', 0, 0, 0, -915.171, -3083.115, 50.77687, 0.7480711, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+532, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -968.3571, -3129.041, 50.8062, 0.8600514, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor, 288179 - -Unknown-)
(@CGUID+533, 141725, 0, 9734, 0, '0', '11292', 0, 0, 0, -923.5491, -3155.499, 49.74061, 3.532625, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+534, 141725, 0, 9734, 0, '0', '11292', 0, 0, 0, -943.979, -3156.022, 48.22474, 2.942978, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+535, 141618, 0, 9734, 0, '0', '11292', 0, 0, 0, -873.376, -3287.138, 75.24876, 4.039816, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Überschäumender Goliath (Area: 0 - Difficulty: 0) (Auras: 287955 - -Unknown-, 288179 - -Unknown-)
(@CGUID+536, 142433, 0, 9734, 0, '0', '11292', 0, 0, 0, -775.3417, -3207.797, 82.08213, 1.251545, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fozruk (Area: 0 - Difficulty: 0) (Auras: 287957 - -Unknown-)
(@CGUID+537, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -869.5042, -3241.307, 75.28159, 1.729529, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+538, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -897.1819, -3243.802, 75.14616, 5.969464, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+539, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -824.2098, -3205.02, 69.56079, 1.330381, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-, 12544 - Frost Armor)
(@CGUID+540, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -836.5145, -3239.36, 80.46825, 2.281541, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor, 288179 - -Unknown-)
(@CGUID+541, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -915.8273, -3275.116, 74.66689, 3.568544, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-, 12544 - Frost Armor) (possible waypoints or random movement)
(@CGUID+542, 141658, 0, 9734, 0, '0', '11292', 0, 0, 0, -876.1163, -3263.793, 74.5821, 1.679544, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Überschäumender Wächter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+543, 141658, 0, 9734, 0, '0', '11292', 0, 0, 0, -869.3281, -3304.575, 75.22563, 5.118763, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Überschäumender Wächter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-, 12544 - Frost Armor)
(@CGUID+544, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -831.2741, -3278.636, 75.33051, 0.6427201, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+545, 142570, 0, 9734, 0, '0', '11292', 0, 0, 0, -774.9538, -3206.03, 82.07098, 1.706016, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Znort (Area: 0 - Difficulty: 0)
(@CGUID+546, 142571, 0, 9734, 0, '0', '11292', 0, 0, 0, -779.2921, -3204.882, 81.92459, 1.807252, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Feeboz (Area: 0 - Difficulty: 0)
(@CGUID+547, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -911.2129, -3304.638, 75.82417, 0.9769866, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-, 12544 - Frost Armor)
(@CGUID+548, 141726, 0, 9734, 0, '0', '11292', 0, 0, 0, -934.018, -3274.636, 69.94183, 6.03727, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor, 288179 - -Unknown-)
(@CGUID+549, 141658, 0, 9734, 0, '0', '11292', 0, 0, 0, -894.6927, -3285.868, 75.22563, 3.243955, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Überschäumender Wächter (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor, 288179 - -Unknown-)
(@CGUID+550, 141658, 0, 9734, 0, '0', '11292', 0, 0, 0, -850.8733, -3284.405, 74.5821, 6.268863, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Überschäumender Wächter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+551, 141726, 0, 9734, 9762, '0', '11292', 0, 0, 0, -832.8871, -3326.9, 79.90612, 1.84373, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+552, 141726, 0, 9734, 9762, '0', '11292', 0, 0, 0, -855.9036, -3333.885, 81.27168, 6.050529, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-, 12544 - Frost Armor) (possible waypoints or random movement)
(@CGUID+553, 142569, 0, 9734, 9762, '0', '11292', 0, 0, 0, -775.4689, -3197.724, 82.02759, 2.223475, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Sleeby (Area: -Unknown- - Difficulty: 0)
(@CGUID+554, 141726, 0, 9734, 9762, '0', '11292', 0, 0, 0, -820.0523, -3307.851, 72.43176, 4.124387, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-, 12544 - Frost Armor)
(@CGUID+555, 141726, 0, 9734, 9762, '0', '11292', 0, 0, 0, -908.334, -3318.75, 76.51167, 2.80397, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-, 12544 - Frost Armor) (possible waypoints or random movement)
(@CGUID+556, 141726, 0, 9734, 9762, '0', '11292', 0, 0, 0, -896.5637, -3359.148, 68.59467, 3.423114, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-, 12544 - Frost Armor)
(@CGUID+557, 142338, 0, 9734, 9762, '0', '11292', 0, 0, 0, -775.46, -3387.868, 86.45005, 5.345348, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+558, 142338, 0, 9734, 9762, '0', '11292', 0, 0, 0, -857.6026, -3395.246, 80.90842, 0.5571516, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+559, 49999, 0, 9734, 9762, '0', '11292', 0, 0, 0, -846.1876, -3378.241, 78.98997, 5.364871, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+560, 141726, 0, 9734, 9762, '0', '11292', 0, 0, 0, -930.8571, -3339.938, 69.49885, 5.071207, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schäumender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 12544 - Frost Armor, 288179 - -Unknown-)
(@CGUID+561, 142338, 0, 9734, 9762, '0', '11292', 0, 0, 0, -901.6551, -3399.241, 69.55054, 5.816916, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+562, 142334, 0, 9734, 9762, '0', '11292', 0, 0, 0, -949.5923, -3383.13, 64.77878, 6.269515, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+563, 142338, 0, 9734, 9762, '0', '11292', 0, 0, 0, -976.5933, -3381.909, 62.61469, 2.918833, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+564, 144062, 0, 9734, 9762, '0', '11292', 0, 0, 0, -880.9045, -3503.436, 71.85445, 4.327337, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Mu'uta (Area: -Unknown- - Difficulty: 0)
(@CGUID+565, 144069, 0, 9734, 9762, '0', '11292', 0, 0, 0, -914.4011, -3489.509, 70.86799, 4.52118, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Urda (Area: -Unknown- - Difficulty: 0)
(@CGUID+566, 144070, 0, 9734, 9762, '0', '11292', 0, 0, 0, -957.2083, -3478.123, 54.4671, 4.079994, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Uttnar (Area: -Unknown- - Difficulty: 0)
(@CGUID+567, 144058, 0, 9734, 9762, '0', '11292', 0, 0, 0, -844.875, -3501.245, 73.61243, 1.58825, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+568, 141876, 0, 9734, 9762, '0', '11292', 0, 0, 0, -920.0982, -3507.862, 70.46725, 3.839475, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 268945 - -Unknown-)
(@CGUID+569, 144058, 0, 9734, 9762, '0', '11292', 0, 0, 0, -857.6528, -3513.472, 73.0005, 5.986479, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+570, 144060, 0, 9734, 9762, '0', '11292', 0, 0, 0, -916.493, -3535.198, 70.54381, 2.396288, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Keena (Area: -Unknown- - Difficulty: 0)
(@CGUID+571, 144058, 0, 9734, 9762, '0', '11292', 0, 0, 0, -979.1024, -3506.55, 57.0416, 0.2856607, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+572, 141876, 0, 9734, 9762, '0', '11292', 0, 0, 0, -876.9462, -3528.62, 72.1734, 5.459795, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+573, 144140, 0, 9734, 9762, '0', '11292', 0, 0, 0, -955.191, -3491.03, 54.52854, 2.980907, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tharlidun (Area: -Unknown- - Difficulty: 0)
(@CGUID+574, 144072, 0, 9734, 9762, '0', '11292', 0, 0, 0, -968.9636, -3481.259, 55.21402, 4.213644, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gor'mul (Area: -Unknown- - Difficulty: 0)
(@CGUID+575, 144058, 0, 9734, 9762, '0', '11292', 0, 0, 0, -889.4636, -3526.512, 71.05073, 0.2197316, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+576, 144073, 0, 9734, 9762, '0', '11292', 0, 0, 0, -954.4445, -3530.043, 70.54964, 3.159046, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Drum Teufel (Area: -Unknown- - Difficulty: 0)
(@CGUID+577, 61366, 0, 9734, 9762, '0', '11292', 0, 0, 0, -950.7308, -3529.471, 57.04338, 2.365354, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+578, 144058, 0, 9734, 9762, '0', '11292', 0, 0, 0, -956.5643, -3506.786, 57.07542, 3.138971, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+579, 144058, 0, 9734, 9762, '0', '11292', 0, 0, 0, -912.4757, -3529.264, 70.54381, 2.076334, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+580, 144061, 0, 9734, 9762, '0', '11292', 0, 0, 0, -954.566, -3527.349, 70.55309, 3.159046, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Korin Teufel (Area: -Unknown- - Difficulty: 0)
(@CGUID+581, 144066, 0, 9734, 9762, '0', '11292', 0, 0, 0, -949.7014, -3532.125, 57.06483, 5.303507, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brenn (Area: -Unknown- - Difficulty: 0)
(@CGUID+582, 144058, 0, 9734, 9762, '0', '11292', 0, 0, 0, -876.007, -3519.384, 72.02712, 6.23755, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+583, 4075, 0, 9734, 9750, '0', '11292', 0, 0, 0, -964.178, -3533.866, 56.72043, 4.658119, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+584, 144058, 0, 9734, 9750, '0', '11292', 0, 0, 0, -982.3021, -3551.429, 57.1367, 2.069909, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+585, 144057, 0, 9734, 9750, '0', '11292', 0, 0, 0, -891.8073, -3543.608, 71.30322, 2.890565, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Graud (Area: -Unknown- - Difficulty: 0)
(@CGUID+586, 144059, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1016.342, -3493.712, 62.18576, 5.573742, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jun'ha (Area: -Unknown- - Difficulty: 0)
(@CGUID+587, 144058, 0, 9734, 9750, '0', '11292', 0, 0, 0, -857.9861, -3524.934, 72.97165, 0.1570796, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+588, 144139, 0, 9734, 9750, '0', '11292', 0, 0, 0, -894.1198, -3550.656, 71.30402, 2.191028, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gastwirt Adegwa (Area: -Unknown- - Difficulty: 0)
(@CGUID+589, 144058, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1001.717, -3502.995, 61.23518, 5.314595, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+590, 144058, 0, 9734, 9750, '0', '11292', 0, 0, 0, -986.3055, -3528.998, 57.08956, 2.574642, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+591, 141876, 0, 9734, 9750, '0', '11292', 0, 0, 0, -994.7153, -3570.365, 57.74826, 5.539731, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+592, 144068, 0, 9734, 9750, '0', '11292', 0, 0, 0, -967.3004, -3562.856, 58.59288, 2.352019, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Tunkk (Area: -Unknown- - Difficulty: 0)
(@CGUID+593, 4075, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1008.617, -3582.531, 56.91351, 5.707628, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+594, 141876, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1015.372, -3576.043, 56.56455, 4.13643, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+595, 144058, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1050.076, -3556.222, 55.26929, 3.074369, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+596, 144058, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1027.484, -3560.174, 56.6495, 3.657696, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+597, 144058, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1049.901, -3545.01, 55.30102, 3.286976, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Wächter von Hammerfall (Area: -Unknown- - Difficulty: 0) (Auras: 5301 - Revenge Trigger)
(@CGUID+598, 49999, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1154.554, -3609.662, 43.21848, 1.848107, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+599, 142566, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1158.551, -3615.487, 43.8965, 3.76048, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kobold der Trockenstoppel (Area: -Unknown- - Difficulty: 0)
(@CGUID+600, 49999, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1077.522, -3413.379, 50.11858, 2.599519, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+601, 142334, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1067.446, -3383.584, 52.39545, 3.145971, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+602, 142338, 0, 9734, 9750, '0', '11292', 0, 0, 0, -1074.406, -3360.316, 46.81803, 2.441857, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+603, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1066.661, -3333.534, 53.29245, 3.859321, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+604, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1084.97, -3299.73, 56.55016, 3.256991, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+605, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1138.665, -3270.716, 46.41362, 0.5841519, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+606, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1233.89, -3365.389, 37.83503, 5.123179, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+607, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1150.171, -3223.35, 36.92501, 1.137004, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+608, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1056.49, -3260.576, 49.42939, 0.551143, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+609, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1183.497, -3247.92, 35.48277, 4.154204, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+610, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1105.011, -3247.917, 43.1176, 0.2871537, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+611, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1203.586, -3211.545, 42.09545, 1.236701, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+612, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1147.664, -3204.723, 38.54973, 2.936915, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+613, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1115.714, -3199.34, 44.40702, 3.91318, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+614, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1080.953, -3175.824, 43.20456, 1.74439, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+615, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1180.234, -3187.406, 44.07713, 3.062652, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+616, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1063.356, -3196.61, 44.73972, 1.258001, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+617, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1154.981, -3152.914, 44.87757, 0.87282, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+618, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1222.572, -3148.336, 43.14749, 3.302564, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+619, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1161.845, -3110.317, 47.9103, 5.066194, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0) (Auras: )
(@CGUID+620, 142437, 0, 9734, 0, '0', '11292', 0, 0, 0, -1157.933, -3113.23, 48.14956, 4.355444, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schädelreißer (Area: 0 - Difficulty: 0) (Auras: 287963 - -Unknown-)
(@CGUID+621, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1216.377, -3082.129, 44.3553, 4.722155, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+622, 142437, 0, 9734, 0, '0', '11292', 0, 0, 0, -1216.562, -3106.218, 45.18495, 0.8821436, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schädelreißer (Area: 0 - Difficulty: 0) (Auras: 287963 - -Unknown-)
(@CGUID+623, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1224.129, -3063.55, 41.60745, 2.848458, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+624, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1156.417, -3023.15, 38.19698, 3.918704, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+625, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1198.108, -3051.641, 41.83397, 4.527641, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+626, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1177.869, -2987.264, 47.75999, 2.263534, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+627, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1222.777, -3021.526, 45.28434, 0.8725554, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+628, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1267.106, -3133.639, 42.69307, 3.900935, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+629, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1346.873, -2982.777, 46.22962, 4.495839, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+630, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1333.276, -3050.045, 43.00335, 6.173606, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+631, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1294.593, -2890.059, 54.37434, 1.080954, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+632, 61704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1258.998, -2894.632, 54.82487, 3.750719, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+633, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1231.484, -2898.161, 49.36701, 3.87586, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+634, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1377.692, -2888.989, 47.47236, 2.435312, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+635, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1310.967, -2854.198, 59.32737, 1.083593, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+636, 142730, 0, 9734, 0, '0', '11292', 0, 0, 0, -1405.241, -2984.313, 23.54588, 5.872633, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+637, 141616, 0, 9734, 0, '0', '11292', 0, 0, 0, -1350.481, -2738.087, 58.99705, 3.541909, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Donnernder Goliath (Area: 0 - Difficulty: 0) (Auras: 287964 - -Unknown-, 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+638, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1287.159, -2821.427, 55.67811, 3.837081, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+639, 142731, 0, 9734, 0, '0', '11292', 0, 0, 0, -1441.958, -2879.233, 14.41176, 4.894917, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+640, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -1327.853, -2786.913, 61.25606, 3.658513, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+641, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -1330.657, -2783.396, 60.97701, 3.035898, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+642, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -1375.851, -2797.832, 62.49971, 4.880839, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+643, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -1353.771, -2770.463, 62.22996, 4.841587, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+644, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -1372.643, -2750.88, 60.01747, 6.067252, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+645, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -1353.953, -2761.787, 61.00104, 4.711463, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+646, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -1325.847, -2754.127, 61.72096, 5.828271, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+647, 141724, 0, 9734, 0, '0', '11292', 0, 0, 0, -1290.004, -2768.205, 60.77557, 6.054777, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+648, 141648, 0, 9734, 0, '0', '11292', 0, 0, 0, -1349.217, -2753.063, 59.13694, 4.544374, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Wächter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+649, 141648, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1362.281, -2729.318, 58.95537, 2.249151, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+650, 141724, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1317.066, -2720.738, 56.11787, 4.74558, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+651, 141724, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1325.686, -2709.644, 58.81443, 1.957626, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+652, 141648, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1348.466, -2714.65, 60.58397, 1.658427, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+653, 142338, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1249.044, -2843.002, 56.79291, 1.623524, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+654, 141724, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1405.597, -2736.023, 57.52068, 6.181377, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+655, 141724, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1289.179, -2741.985, 60.3488, 3.112304, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+656, 142338, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1252.269, -2774.847, 53.97948, 1.54124, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+657, 141648, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1337.281, -2731.373, 59.0537, 0.1489272, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+658, 141724, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1376.027, -2710.015, 59.64138, 0.4924857, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+659, 142338, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1253.761, -2716.545, 52.75295, 3.159169, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+660, 141648, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1353.624, -2702.319, 65.1755, 3.367901, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Donnernder Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+661, 141724, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1345.072, -2694.563, 66.78827, 5.145479, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Donnernder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+662, 142338, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1315.413, -2651.13, 69.48281, 4.618548, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+663, 49999, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1250.999, -2691.812, 49.70167, 0.6524817, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+664, 142338, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1378.6, -2648.033, 69.2995, 4.624382, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+665, 142334, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1346.712, -2618.415, 73.09342, 4.809693, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+666, 141756, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1260.771, -2604.536, 56.79941, 2.160422, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+667, 141756, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1224.504, -2555.205, 24.29374, 4.593791, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+668, 141756, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1220.842, -2594.368, 34.42192, 5.406779, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+669, 141732, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1255.547, -2541.814, 21.45566, 1.224183, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Vikki Lonsav (Area: -Unknown- - Difficulty: 0)
(@CGUID+670, 141756, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1229.597, -2568.651, 26.42344, 1.984014, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+671, 141757, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1209.559, -2536.042, 22.47374, 3.060351, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Elitesoldat des Bundes von Arathor (Area: -Unknown- - Difficulty: 0)
(@CGUID+672, 141734, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1278.049, -2531.101, 21.45146, 1.049667, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Jannos Eisenwill (Area: -Unknown- - Difficulty: 0)
(@CGUID+673, 141757, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1211.175, -2537.422, 21.92467, 3.06402, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Elitesoldat des Bundes von Arathor (Area: -Unknown- - Difficulty: 0)
(@CGUID+674, 141761, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1222.201, -2538.111, 21.28716, 2.544334, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Targot Klingeltaschen (Area: -Unknown- - Difficulty: 0)
(@CGUID+675, 141756, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1156.328, -2549.597, 58.61735, 1.704726, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+676, 141757, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1211.094, -2526.427, 21.89141, 3.283027, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Elitesoldat des Bundes von Arathor (Area: -Unknown- - Difficulty: 0)
(@CGUID+677, 141757, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1209.476, -2527.762, 22.38127, 3.334481, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Elitesoldat des Bundes von Arathor (Area: -Unknown- - Difficulty: 0)
(@CGUID+678, 144063, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1204.984, -2532.127, 23.24919, 3.124139, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Radulf Leder (Area: -Unknown- - Difficulty: 0)
(@CGUID+679, 141738, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1231.707, -2520.198, 23.92939, 3.109411, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kommandantin Amaren (Area: -Unknown- - Difficulty: 0)
(@CGUID+680, 144065, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1218.484, -2521.559, 22.02714, 3.665191, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Samuel Falk (Area: -Unknown- - Difficulty: 0)
(@CGUID+681, 144055, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1232.464, -2506.931, 24.27899, 4.022826, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Cedrik Prosa (Area: -Unknown- - Difficulty: 0)
(@CGUID+682, 141733, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1267.424, -2513.266, 21.21391, 5.364172, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Narj Schnitzelschnitt (Area: -Unknown- - Difficulty: 0)
(@CGUID+683, 141756, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1255.962, -2509.068, 21.63402, 2.05599, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+684, 141735, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1278.214, -2518.043, 21.40149, 5.914691, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Drovnar Starkbräu (Area: -Unknown- - Difficulty: 0)
(@CGUID+685, 141770, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1247.561, -2498.295, 23.73115, 0.6313732, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Pferd (Area: -Unknown- - Difficulty: 0)
(@CGUID+686, 144054, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1257.229, -2486.432, 21.15772, 4.380776, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Androd Fadran (Area: -Unknown- - Difficulty: 0)
(@CGUID+687, 141756, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1271.359, -2481.635, 28.50409, 2.523069, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+688, 114590, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1245.3, -2496.642, 24.84353, 3.506263, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Generic Bunny (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+689, 141736, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1248.566, -2497.375, 23.73115, 5.164443, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hammon Karwn (Area: -Unknown- - Difficulty: 0)
(@CGUID+690, 141737, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1252.686, -2493.436, 23.72371, 4.259485, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Emily Jackson (Area: -Unknown- - Difficulty: 0)
(@CGUID+691, 141756, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1239.359, -2403.453, 53.16095, 3.671707, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+692, 141756, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1317.173, -2455.358, 43.57065, 5.73038, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+693, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1354.627, -2544.955, 72.81033, 0.5029287, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+694, 141756, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1353.498, -2452.045, 52.10654, 3.013882, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+695, 141756, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1330.602, -2442.017, 47.59756, 3.222356, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+696, 141756, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1302.5, -2418.78, 62.78179, 6.053751, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger der Zuflucht (Area: -Unknown- - Difficulty: 0)
(@CGUID+697, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1265.694, -2408.875, 57.41178, 0.4837498, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+698, 142334, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1335.517, -2383.543, 65.08329, 3.903685, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+699, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1328.667, -2390.923, 65.12823, 1.015303, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+700, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1356.543, -2349.497, 66.88123, 5.619742, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+701, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1309.552, -2354.387, 65.95575, 3.400308, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+702, 142334, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1287.344, -2357.024, 61.31613, 5.795067, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+703, 2620, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1364.681, -2371.717, 63.14086, 5.707246, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+704, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1375.76, -2388.225, 64.64912, 5.662936, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+705, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1246.753, -2386.823, 58.86824, 0.8056803, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+706, 142334, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1382.366, -2330.36, 65.70558, 3.006329, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+707, 142335, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1254.387, -2356.509, 71.44703, 4.177223, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Junger Mesabussard (Area: -Unknown- - Difficulty: 0)
(@CGUID+708, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1413.504, -2353.614, 62.30912, 3.592141, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+709, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1342.983, -2304.014, 69.00847, 5.564172, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+710, 142338, 0, 9734, 9747, '0', '11292', 0, 0, 0, -1349.29, -2293.995, 66.42941, 2.750764, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+711, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1332.031, -2231.938, 63.79611, 3.964318, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+712, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1317.016, -2180.89, 65.96391, 5.042792, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+713, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1338.24, -2132.67, 59.74778, 6.216747, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+714, 141725, 0, 9734, 0, '0', '11292', 0, 0, 0, -1233.416, -2216.832, 60.74242, 4.25221, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Brennender Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+715, 142001, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1191.799, -2249.978, 64.08081, 3.932051, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Lehrling des Zirkels (Area: -Unknown- - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+716, 121541, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1196.535, -2279.733, 96.39426, 5.343082, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ban-Lu (Area: -Unknown- - Difficulty: 0)
(@CGUID+717, 141725, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1201.348, -2156.148, 58.67534, 4.851403, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+718, 141725, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1234.444, -2175.327, 62.55671, 2.147417, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Brennender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+719, 142001, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1199.97, -2259.729, 63.52129, 4.922971, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Lehrling des Zirkels (Area: -Unknown- - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+720, 141663, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1182.576, -2170.54, 58.49321, 1.632176, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+721, 141663, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1201.679, -2191.295, 57.9251, 3.085812, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+722, 141663, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1182.472, -2213.53, 58.13857, 4.726209, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+723, 142002, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1197.247, -2258.597, 63.52129, 5.727638, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Spruchwirker des Zirkels (Area: -Unknown- - Difficulty: 0) (Auras: 54219 - Arcane Channeling)
(@CGUID+724, 142002, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1185.852, -2246.123, 63.28819, 5.677102, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Spruchwirker des Zirkels (Area: -Unknown- - Difficulty: 0)
(@CGUID+725, 142003, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1183.144, -2247.568, 63.36285, 2.659784, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Flammenbinder der Wildhämmer (Area: -Unknown- - Difficulty: 0) (Auras: 259919 - -Unknown-)
(@CGUID+726, 141725, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1169.909, -2139.667, 60.65281, 3.494455, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+727, 142002, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1170.714, -2255.523, 63.57063, 0.8615859, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Spruchwirker des Zirkels (Area: -Unknown- - Difficulty: 0) (Auras: 54219 - Arcane Channeling)
(@CGUID+728, 142001, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1187.334, -2281.293, 63.43796, 3.124642, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Lehrling des Zirkels (Area: -Unknown- - Difficulty: 0) (Auras: 12544 - Frost Armor, 268463 - -Unknown-)
(@CGUID+729, 141663, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1157.865, -2188.434, 57.92977, 0.200878, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+730, 142001, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1169.339, -2261.438, 63.52129, 5.186604, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Lehrling des Zirkels (Area: -Unknown- - Difficulty: 0) (Auras: 12544 - Frost Armor)
(@CGUID+731, 141725, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1124.796, -2191.417, 59.18212, 6.264898, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+732, 141725, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1134.285, -2171.417, 59.18221, 2.083575, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+733, 141725, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1148.379, -2134.821, 60.43091, 1.423932, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+734, 141725, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1134.015, -2217.427, 59.7469, 1.758442, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Brennender Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+735, 883, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1133.961, -2102.499, 66.45113, 2.580713, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Deer (Area: -Unknown- - Difficulty: 0)
(@CGUID+736, 142334, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1123.049, -2055.895, 60.80819, 3.881464, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+737, 142334, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1111.969, -2106.187, 62.95023, 5.755992, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+738, 40789, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1203.736, -2076.269, 106.2365, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Generic Controller Bunny (CSA) (Area: -Unknown- - Difficulty: 0)
(@CGUID+739, 142038, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1104.331, -2034.863, 65.02171, 3.275078, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+740, 142334, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1142.914, -2031.189, 61.94826, 5.081664, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+741, 142041, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1073.266, -2057.896, 71.73299, 4.716108, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+742, 142334, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1107.936, -2035.347, 64.55409, 4.735965, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+743, 142013, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1063.005, -2035.752, 64.41816, 3.263766, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0) (Auras: 262247 - -Unknown-)
(@CGUID+744, 142011, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1077.316, -1996.599, 77.48351, 6.118493, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Vorgezogener Aufklärer (Area: -Unknown- - Difficulty: 0)
(@CGUID+745, 142041, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1089.644, -2004.863, 70.9417, 2.862792, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+746, 142013, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1057.245, -2035.453, 64.41816, 1.154529, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0) (Auras: 257823 - -Unknown-)
(@CGUID+747, 142038, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1053.474, -1982.283, 61.53815, 1.162764, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+748, 142038, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1052.205, -1984.969, 61.76003, 0.06197442, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+749, 142013, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1041.441, -1993.995, 60.96557, 0.2268928, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768); -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0) (Auras: 268799 - -Unknown-)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+750, 142038, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1087.363, -1972.901, 68.10297, 4.963419, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+751, 142038, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1090.207, -1973.571, 68.6275, 5.218354, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+752, 142038, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1085.443, -1973.594, 67.45599, 4.717296, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+753, 142038, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1090.639, -1975.352, 68.28788, 5.503558, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+754, 142038, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1030.214, -2020.99, 60.90451, 6.106316, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+755, 142033, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1044.054, -2002.165, 60.81232, 4.471882, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+756, 142034, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1044.549, -2004.057, 60.81232, 0.7685469, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Priester von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+757, 142038, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1066.335, -1970.444, 62.00508, 2.322889, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+758, 142039, 0, 9734, 9741, '0', '11292', 0, 0, 0, -1086.622, -1979.167, 66.6994, 1.869665, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ritter des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+759, 142033, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1031.036, -1963.09, 61.1943, 5.081386, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+760, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1058.444, -1959.467, 62.02424, 2.49678, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+761, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1004.708, -2004.951, 60.141, 5.890976, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+762, 142013, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1022.05, -1967.641, 60.86918, 4.39823, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0) (Auras: 268799 - -Unknown-)
(@CGUID+763, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -998.0018, -1993.611, 60.39063, 5.813787, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+764, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1000.358, -1994.528, 60.23661, 5.813787, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+765, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1095.408, -1945.507, 69.83357, 5.728432, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+766, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1058.016, -1924.352, 67.88542, 3.186369, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+767, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1059.479, -1929.597, 67.72396, 2.608658, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+768, 142039, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1063.76, -1926.462, 68.19965, 6.149148, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ritter des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+769, 142041, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1024.585, -1917.134, 68.98846, 0.5080597, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+770, 142041, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1047.894, -1934.825, 68.67747, 2.8745, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+771, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1005.904, -1938.981, 61.13744, 0.8466163, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+772, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1058.217, -1928.592, 67.6875, 2.800989, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+773, 142723, 0, 9734, 9739, '0', '11292', 0, 0, 0, -952.4423, -2032.533, 54.62356, 3.972602, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rachsüchtiger Geist (Area: -Unknown- - Difficulty: 0) (Auras: 288180 - -Unknown-)
(@CGUID+774, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -998.3559, -1945.984, 60.96424, 1.108826, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+775, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -990.8522, -1924.762, 60.36923, 0.9616701, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+776, 142039, 0, 9734, 9739, '0', '11292', 0, 0, 0, -988.8668, -1924.387, 60.22287, 0.9616701, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ritter des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+777, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1096.333, -1947.847, 70.16729, 5.756148, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+778, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -988.5213, -1926.369, 60.30372, 0.9611323, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+779, 142009, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1106.521, -1952.205, 76.29596, 5.897957, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+780, 142039, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1089.906, -1936.043, 69.01932, 5.449416, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ritter des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+781, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1091.909, -1935.952, 69.33018, 5.450861, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+782, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1089.844, -1934.021, 69.08727, 5.450861, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+783, 142041, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1027.807, -1906.892, 72.63644, 0.5797824, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+784, 142334, 0, 9734, 9739, '0', '11292', 0, 0, 0, -941.8013, -1890.677, 65.68269, 3.658558, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+785, 883, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1100.33, -1865.413, 75.61147, 4.219903, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Deer (Area: -Unknown- - Difficulty: 0)
(@CGUID+786, 142041, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1094.839, -1906.531, 76.09725, 5.14964, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+787, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1099.741, -1912.476, 73.83681, 5.307539, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+788, 142038, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1102.432, -1912.944, 73.67307, 5.350235, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Nordhofs (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+789, 142334, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1083.737, -1866.822, 69.42777, 1.475012, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+790, 142009, 0, 9734, 9739, '0', '11292', 0, 0, 0, -1143.097, -1879.424, 82.3413, 0.1370899, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+791, 142334, 0, 9734, 9739, '0', '11292', 0, 0, 0, -994.0812, -1810.602, 45.43951, 4.437576, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+792, 142010, 0, 9734, 0, '0', '11292', 0, 0, 0, -1171.602, -1897.418, 85.92766, 6.153844, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+793, 142013, 0, 9734, 0, '0', '11292', 0, 0, 0, -1182.363, -1842.356, 92.82543, 0.9247044, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: 0 - Difficulty: 0)
(@CGUID+794, 142009, 0, 9734, 0, '0', '11292', 0, 0, 0, -1150.689, -1921.42, 82.35272, 0.3034976, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: 0 - Difficulty: 0) (Auras: 288161 - -Unknown-, 288015 - -Unknown-)
(@CGUID+795, 142013, 0, 9734, 0, '0', '11292', 0, 0, 0, -1185.366, -1925.929, 87.43927, 2.344199, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: 0 - Difficulty: 0)
(@CGUID+796, 142009, 0, 9734, 0, '0', '11292', 0, 0, 0, -1199.925, -1886.587, 91.79581, 5.090533, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+797, 142010, 0, 9734, 0, '0', '11292', 0, 0, 0, -1190.069, -1867.406, 91.8209, 4.683435, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+798, 8883, 0, 9734, 0, '0', '11292', 0, 0, 0, -1202.271, -1865.222, 92.03475, 1.527928, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riding Horse (Area: 0 - Difficulty: 0)
(@CGUID+799, 142013, 0, 9734, 0, '0', '11292', 0, 0, 0, -1206.969, -1856.349, 91.95142, 0.7853982, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: 0 - Difficulty: 0)
(@CGUID+800, 142009, 0, 9734, 0, '0', '11292', 0, 0, 0, -1171.804, -1937.872, 90.27725, 5.386329, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+801, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1126.29, -1963.42, 72.15388, 0.8303329, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+802, 142010, 0, 9734, 0, '0', '11292', 0, 0, 0, -1174.714, -1932.255, 90.27725, 1.229665, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+803, 142009, 0, 9734, 0, '0', '11292', 0, 0, 0, -1163.807, -1945.88, 87.68928, 5.920771, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+804, 114590, 0, 9734, 0, '0', '11292', 0, 0, 0, -1202.712, -1861.847, 93.16914, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Generic Bunny (Area: 0 - Difficulty: 0) (Auras: )
(@CGUID+805, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1135.368, -1951.73, 74.26432, 0.7079908, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+806, 142013, 0, 9734, 0, '0', '11292', 0, 0, 0, -1203.507, -1864.401, 92.03475, 6.049839, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: 0 - Difficulty: 0)
(@CGUID+807, 142010, 0, 9734, 0, '0', '11292', 0, 0, 0, -1171.564, -1907.109, 86.19641, 0.3275177, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+808, 142010, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1221.23, -1897.604, 87.22827, 4.558695, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+809, 142013, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1197.222, -1957.222, 91.1124, 4.634965, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0) (Auras: 268799 - -Unknown-)
(@CGUID+810, 142010, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1230.918, -1907.09, 86.09798, 2.642116, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+811, 142010, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1215.134, -1947.472, 88.84328, 1.484996, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+812, 142009, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1229.092, -1876.266, 92.68356, 5.099058, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+813, 142011, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1222.3, -1974.163, 96.18034, 4.656508, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Vorgezogener Aufklärer (Area: -Unknown- - Difficulty: 0)
(@CGUID+814, 142013, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1235.37, -1945.66, 88.82536, 4.607669, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+815, 142010, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1222.097, -1861.028, 91.61072, 5.0634, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+816, 142010, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1227.726, -1934.733, 88.84328, 5.584688, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+817, 142011, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1194.307, -1973.781, 94.15337, 4.692743, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Vorgezogener Aufklärer (Area: -Unknown- - Difficulty: 0) (Auras: 221085 - Cosmetic - Human Male Kneeling + Spyglass)
(@CGUID+818, 142012, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1226.535, -1935.767, 88.84328, 2.732698, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Initiand des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+819, 142013, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1231.106, -1945.618, 88.75994, 4.147053, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+820, 142009, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1192.707, -1974.057, 94.12543, 5.173986, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+821, 142009, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1224.066, -1973.983, 96.18094, 4.168255, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+822, 142013, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1232.96, -1938.81, 88.85726, 4.625123, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+823, 142010, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1222.88, -1866.446, 91.61072, 1.411273, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+824, 142010, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1230.092, -1894.448, 85.93681, 3.017178, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+825, 142012, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1234.819, -1833.274, 93.32156, 5.520182, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Initiand des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+826, 142013, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1238.596, -1957.971, 88.91438, 5.597823, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0) (Auras: 262247 - -Unknown-)
(@CGUID+827, 142009, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1248.575, -1926.217, 89.51233, 2.529743, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+828, 142009, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1259.851, -1870.872, 83.51163, 5.376521, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+829, 142009, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1217.222, -1863.257, 92.41277, 3.619815, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+830, 142009, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1210.49, -1921.186, 89.64252, 1.618936, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+831, 142010, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1216.474, -1941.556, 88.84328, 4.759681, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Hochstands (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+832, 142013, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1233.194, -1834.788, 93.32156, 3.142294, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandarbeiter (Area: -Unknown- - Difficulty: 0)
(@CGUID+833, 4075, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1223.475, -1955.824, 22.01698, 0.2674984, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+834, 142693, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1253.795, -1991.02, 18.71711, 5.136594, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Oger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+835, 142693, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1252.399, -1993.224, 19.12745, 5.120763, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Oger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+836, 142334, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1186.533, -2003.93, 68.60976, 0.7259938, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+837, 142334, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1280.292, -1943.605, 71.68907, 3.511573, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+838, 142694, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1247.035, -2001.139, 20.32832, 4.99138, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Vollstrecker der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+839, 142334, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1233.621, -2009.505, 68.94765, 0.8448026, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+840, 4075, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1282.658, -1886.143, 20.31311, 5.587234, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+841, 142005, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1318.329, -1943.932, 61.42911, 2.216209, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+842, 142027, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1319.504, -1942.37, 61.53209, 2.21652, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Spruchwirker des Heldenrufpasses (Area: -Unknown- - Difficulty: 0)
(@CGUID+843, 142005, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1319.114, -1939.567, 61.3866, 2.216049, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+844, 142005, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1316.703, -1942.765, 61.51366, 2.216561, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+845, 142026, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1317.908, -1941.165, 61.49781, 2.216445, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Getreuer des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+846, 4075, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1288.253, -1963.962, 10.66159, 2.275633, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+847, 142005, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1320.762, -1940.701, 61.4726, 2.216251, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+848, 142693, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1283.066, -2039.455, 28.72296, 1.285103, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Oger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+849, 142693, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1321.8, -1911.071, 20.31311, 3.641158, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Oger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+850, 142693, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1325.091, -1909.754, 20.31311, 4.639797, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Oger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+851, 141946, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1315.646, -1900.457, 20.19099, 4.000625, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Magus der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+852, 142686, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1301.654, -1899.512, 20.31311, 1.159046, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Faulbauch (Area: -Unknown- - Difficulty: 0) (Auras: 287904 - -Unknown-, 288178 - -Unknown-)
(@CGUID+853, 142693, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1312.401, -1924.877, 20.28015, 4.321306, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Oger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+854, 142684, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1261.16, -1997.291, 17.88426, 4.961204, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kovork (Area: -Unknown- - Difficulty: 0) (Auras: 287908 - -Unknown-, 288178 - -Unknown-)
(@CGUID+855, 142684, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1266.583, -2004.752, 20.36797, 1.233366, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kovork (Area: -Unknown- - Difficulty: 0) (Auras: 287908 - -Unknown-, 288178 - -Unknown-)
(@CGUID+856, 142694, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1300.879, -1992.439, 20.89599, 5.7856, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Vollstrecker der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+857, 142693, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1358.545, -1955.215, 3.420383, 6.225295, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Oger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+858, 142334, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1346.048, -2004.304, 54.40308, 3.11558, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+859, 144048, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1340.019, -2043.483, 64.88605, 3.959118, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Vaughn (Area: -Unknown- - Difficulty: 0)
(@CGUID+860, 144050, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1340.444, -2046.196, 65.24162, 2.570086, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Willa (Area: -Unknown- - Difficulty: 0)
(@CGUID+861, 142694, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1345.827, -1987.892, 11.11587, 2.566859, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Vollstrecker der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-) (possible waypoints or random movement)
(@CGUID+862, 883, 0, 9734, 9738, '0', '11292', 0, 0, 0, -1322.023, -2025.037, 60.19933, 2.99666, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Deer (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+863, 144045, 0, 9734, 0, '0', '11292', 0, 0, 0, -1327.337, -2071.224, 64.40275, 5.442584, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Greta Albrecht (Area: 0 - Difficulty: 0)
(@CGUID+864, 144047, 0, 9734, 0, '0', '11292', 0, 0, 0, -1325.892, -2072.257, 64.39915, 2.27216, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Nordric Albrecht (Area: 0 - Difficulty: 0)
(@CGUID+865, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1274.1, -2106.438, 71.37456, 1.662694, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+866, 142006, 0, 9734, 0, '0', '11292', 0, 0, 0, -1385.217, -2083.524, 7.513989, 5.519146, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: 0 - Difficulty: 0)
(@CGUID+867, 141620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1528.916, -2166.113, 17.48164, 1.005348, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grollender Goliath (Area: 0 - Difficulty: 0) (Auras: 287962 - -Unknown-, 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+868, 142718, 0, 9734, 0, '0', '11292', 0, 0, 0, -1410.343, -2234.287, 118.8205, 4.327061, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+869, 142718, 0, 9734, 0, '0', '11292', 0, 0, 0, -1428.958, -2241.772, 117.1719, 4.244393, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+870, 142718, 0, 9734, 0, '0', '11292', 0, 0, 0, -1437.077, -2273.043, 113.2076, 4.260532, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Greifenreiter von Stromgarde (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+871, 141727, 0, 9734, 0, '0', '11292', 0, 0, 0, -1479.249, -2219.232, 27.53103, 5.529988, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+872, 141659, 0, 9734, 0, '0', '11292', 0, 0, 0, -1501.991, -2174.597, 17.33417, 5.937769, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grollender Wächter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+873, 142006, 0, 9734, 0, '0', '11292', 0, 0, 0, -1448.512, -2112.559, -34.91964, 3.628757, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: 0 - Difficulty: 0)
(@CGUID+874, 142335, 0, 9734, 0, '0', '11292', 0, 0, 0, -1505.699, -2240.259, 46.66213, 1.598722, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Junger Mesabussard (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+875, 141727, 0, 9734, 0, '0', '11292', 0, 0, 0, -1475.296, -2149.53, 18.5151, 2.954925, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+876, 141727, 0, 9734, 0, '0', '11292', 0, 0, 0, -1483.498, -2182.174, 17.38361, 2.899642, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+877, 141727, 0, 9734, 0, '0', '11292', 0, 0, 0, -1514.112, -2217.49, 19.62404, 1.978509, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: 0 - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+878, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1502.503, -2253.132, 33.04213, 4.226911, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+879, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1511.957, -2113.11, 20.35657, 3.813332, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+880, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1465.75, -2087.759, 24.00196, 4.922346, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+881, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1434.266, -2085.3, 25.35987, 2.674335, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+882, 141727, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1550.093, -2213.93, 29.38437, 1.664637, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+883, 141659, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1541.03, -2193.441, 17.23332, 4.109865, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grollender Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+884, 141727, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1514.582, -2115.197, 20.23157, 0.6720251, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+885, 143318, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1463.696, -2084.995, -32.92316, 0.8817077, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Vorarbeiterin Tully (Area: -Unknown- - Difficulty: 0)
(@CGUID+886, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1445.878, -2089.283, 22.81109, 4.460667, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0) (Auras: 262928 - -Unknown-)
(@CGUID+887, 141659, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1514.422, -2136.837, 17.28721, 1.167485, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grollender Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+888, 141727, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1549.906, -2116.039, 17.6683, 2.284297, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+889, 141659, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1557.682, -2156.589, 17.31615, 2.819717, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grollender Wächter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-)
(@CGUID+890, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1470.955, -2076.106, -31.97706, 2.571805, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+891, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1546.958, -2077.241, 21.61801, 2.231, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+892, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1542.785, -2088.997, 22.54697, 4.401817, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+893, 141727, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1583.81, -2184.57, 27.6168, 6.17302, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+894, 141727, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1582.581, -2151.117, 21.58521, 5.612717, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+895, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1505.571, -2070.642, -35.95935, 5.133615, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+896, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1456.427, -2062.007, 23.77509, 2.008109, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+897, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1520.514, -2068.432, 20.84161, 0.5399911, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+898, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1434.106, -2069.495, 25.16301, 5.61568, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+899, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1512.797, -2046.37, -39.04328, 0.09604957, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+900, 141727, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1580.023, -2116.66, 29.21646, 5.647497, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+901, 142339, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1595.818, -2092.314, 36.80043, 4.883324, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+902, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1439.196, -2026.245, 20.42386, 0.4712389, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0) (Auras: 262928 - -Unknown-)
(@CGUID+903, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1459.227, -2022.188, 21.51236, 2.202865, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+904, 142006, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1407.87, -2056.62, -8.860527, 5.222665, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Leitsteinausgräber (Area: -Unknown- - Difficulty: 0)
(@CGUID+905, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1517.102, -1985.89, 56.6595, 2.065002, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+906, 142019, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1462.073, -1977.095, 45.69075, 0.7146552, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schütze des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+907, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1460.553, -1975.756, 45.7576, 0.6116363, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+908, 142019, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1463.319, -1975.535, 45.45365, 0.7123414, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schütze des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+909, 142019, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1514.451, -1986.609, 56.19328, 2.063282, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schütze des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+910, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1464.928, -1976.925, 45.53999, 0.7308345, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+911, 142019, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1516.238, -1987.512, 55.95059, 2.065002, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schütze des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+912, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1463.586, -1978.409, 45.66149, 0.730956, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+913, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1513.657, -1988.085, 55.29679, 2.067648, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+914, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1515.303, -1989.245, 54.93124, 2.067648, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+915, 142005, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1515.363, -1984.911, 57.05294, 2.060639, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+916, 142005, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1459.235, -1972.419, 45.73021, 0.6259248, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+917, 142005, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1394.429, -1963.908, 52.49326, 2.464107, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+918, 142019, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1397.061, -1964.285, 51.76347, 2.503172, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schütze des Heldenrufpasses (Area: -Unknown- - Difficulty: 0)
(@CGUID+919, 142005, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1395.569, -1965.402, 52.37558, 2.501605, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger des Heldenrufpasses (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+920, 4075, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1393.563, -1959.608, 0.6089121, 3.293675, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+921, 142335, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1572.896, -2130.472, 41.90242, 1.084119, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Junger Mesabussard (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+922, 141727, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1577.276, -2219.29, 32.96881, 3.888336, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Rumpelnder Verbannter (Area: -Unknown- - Difficulty: 0) (Auras: 288179 - -Unknown-) (possible waypoints or random movement)
(@CGUID+923, 2620, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1561.969, -2240.065, 36.91478, 5.324235, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+924, 142334, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1616.393, -2214.147, 33.63153, 1.617748, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+925, 142339, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1653.852, -2187.155, 26.98997, 3.926991, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+926, 142334, 0, 9734, 9745, '0', '11292', 0, 0, 0, -1632.315, -2267.285, 42.59384, 5.033898, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+927, 142338, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1609.44, -2306.427, 68.13742, 0.6004748, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+928, 142337, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1681.534, -2184.37, 31.66392, 5.697958, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Mesabussard (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+929, 142338, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1557.617, -2314.901, 68.15215, 2.253413, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+930, 142339, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1682.199, -2272.04, 36.23052, 4.963052, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+931, 142339, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1696.342, -2201.829, 33.81805, 5.81821, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+932, 142334, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1631.084, -2322.462, 67.95092, 1.412064, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+933, 142334, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1581.72, -2334.816, 82.52728, 1.585204, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+934, 142339, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1709.797, -2310.592, 40.40805, 0.7992094, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0)
(@CGUID+935, 142339, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1715.447, -2250.234, 40.08368, 4.336237, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0)
(@CGUID+936, 142339, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1746.46, -2279.496, 38.88646, 5.795067, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0)
(@CGUID+937, 142337, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1756.345, -2294.298, 42.68501, 1.949639, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Mesabussard (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+938, 142339, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1688.825, -2355.997, 36.86828, 4.128723, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+939, 142339, 0, 9734, 0, '0', '11292', 0, 0, 0, -1778.793, -2312.612, 38.89079, 2.172883, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: 0 - Difficulty: 0)
(@CGUID+940, 142339, 0, 9734, 0, '0', '11292', 0, 0, 0, -1784.059, -2252.984, 49.9651, 4.531837, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: 0 - Difficulty: 0)
(@CGUID+941, 142339, 0, 9734, 0, '0', '11292', 0, 0, 0, -1760.12, -2223.977, 52.91709, 4.507711, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: 0 - Difficulty: 0)
(@CGUID+942, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1757.122, -2332.076, 39.6491, 2.220853, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+943, 142337, 0, 9734, 0, '0', '11292', 0, 0, 0, -1814.465, -2339.027, 31.7837, 4.913038, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Mesabussard (Area: 0 - Difficulty: 0)
(@CGUID+944, 142339, 0, 9734, 0, '0', '11292', 0, 0, 0, -1822.265, -2278.077, 44.92495, 2.511362, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: 0 - Difficulty: 0)
(@CGUID+945, 142339, 0, 9734, 0, '0', '11292', 0, 0, 0, -1819.534, -2348.847, 37.04752, 4.289803, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: 0 - Difficulty: 0)
(@CGUID+946, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1851.006, -2313.114, 50.58877, 2.586099, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+947, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1912.58, -2336.939, 62.85513, 1.378002, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+948, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1820.886, -2470.09, 52.85431, 2.057716, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+949, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1788.295, -2492.378, 52.64558, 1.026692, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+950, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1793.646, -2488.204, 49.28285, 0.5712202, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+951, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1737.749, -2516.6, 58.75864, 4.843522, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+952, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1609.943, -2400.377, 99.68806, 4.384652, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+953, 142435, 0, 9734, 0, '0', '11292', 0, 0, 0, -1596.364, -2420.115, 100.5823, 0.9567881, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Seuchenfeder (Area: 0 - Difficulty: 0) (Auras: 287960 - -Unknown-) (possible waypoints or random movement)
(@CGUID+954, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1547.183, -2425.188, 75.08638, 1.36068, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+955, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1548.284, -2384.347, 79.49916, 5.608445, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+956, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1618.805, -2561.861, 42.50935, 6.030883, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+957, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1504.866, -2579.851, 63.33352, 1.161292, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+958, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1465.569, -2552.758, 68.83333, 1.557422, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+959, 142683, 0, 9734, 0, '0', '11292', 0, 0, 0, -1451.655, -2618.755, 50.9018, 3.788758, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ruul Zweistein (Area: 0 - Difficulty: 0) (Auras: 287911 - -Unknown-, 170528 - Fire Channeling)
(@CGUID+960, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1421.995, -2554.838, 72.46885, 3.91318, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+961, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1447.982, -2516.51, 66.68262, 0.5049155, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+962, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1411.198, -2542.366, 76.69517, 1.476151, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+963, 142333, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1483.417, -2778.228, 48.53334, 5.961435, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+964, 142333, 0, 9734, 9748, '0', '11292', 0, 0, 0, -1523.106, -2766.059, 45.64911, 0.5993719, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+965, 142339, 0, 9734, 0, '0', '11292', 0, 0, 0, -1515.519, -2797.532, 37.76052, 1.616642, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: 0 - Difficulty: 0)
(@CGUID+966, 142333, 0, 9734, 0, '0', '11292', 0, 0, 0, -1591.301, -2755.261, 39.82827, 0.293328, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+967, 142339, 0, 9734, 0, '0', '11292', 0, 0, 0, -1582.774, -2798.729, 39.16509, 1.518008, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandhauer (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+968, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1664.707, -2730.939, 52.17368, 4.669447, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+969, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1667.07, -2665.336, 57.23483, 5.211892, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+970, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -1751.874, -2731.136, 51.52461, 2.473868, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0)
(@CGUID+971, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -1795.534, -2638.293, 58.70824, 5.506074, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0)
(@CGUID+972, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -1819.347, -2682.25, 54.47453, 5.838766, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0)
(@CGUID+973, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -1800.815, -2717.665, 48.64648, 0.09741016, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0)
(@CGUID+974, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1766.358, -2766.599, 51.71043, 0.7934572, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+975, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1857.13, -2698.182, 57.25261, 0.9983882, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+976, 142337, 0, 9734, 0, '0', '11292', 0, 0, 0, -1834.935, -2583.259, 56.88395, 6.137954, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Mesabussard (Area: 0 - Difficulty: 0)
(@CGUID+977, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -1916.921, -2577.347, 65.92159, 2.55359, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0)
(@CGUID+978, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1951.538, -2559.584, 73.38447, 1.819566, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+979, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1942.023, -2688.742, 77.4566, 0.407713, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-) (possible waypoints or random movement)
(@CGUID+980, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1951.236, -2616.375, 78.39127, 6.110663, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+981, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1947.717, -2509.72, 71.87899, 5.160331, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+982, 142333, 0, 9734, 0, '0', '11292', 0, 0, 0, -1930.22, -2531.644, 68.77245, 5.795067, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+983, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1988.355, -2627.446, 80.99545, 1.635286, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+984, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -1966.069, -2550.793, 71.64643, 2.684064, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0)
(@CGUID+985, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1870.01, -2516.301, 51.91622, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+986, 142333, 0, 9734, 0, '0', '11292', 0, 0, 0, -1985.573, -2576.687, 75.79239, 2.53407, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+987, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1975.964, -2504.933, 71.85714, 4.319551, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+988, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -1993.277, -2525.606, 73.77382, 0.8058378, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0)
(@CGUID+989, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -1977.462, -2515.978, 73.36537, 6.201018, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0)
(@CGUID+990, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -2014.357, -2512.249, 72.85715, 2.193403, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+991, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -2040.277, -2531.346, 71.41788, 3.984971, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+992, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -2051.013, -2584.146, 76.1818, 1.166402, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+993, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -2025.124, -2538.845, 71.41464, 3.386098, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+994, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -2075.483, -2606.107, 81.14899, 4.747531, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+995, 142340, 0, 9734, 0, '0', '11292', 0, 0, 0, -2080.432, -2551.829, 72.27917, 2.69541, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+996, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -2075.66, -2469.647, 66.92703, 1.616902, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+997, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -2102.58, -2425.201, 65.51643, 2.644741, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+998, 141649, 0, 9734, 0, '0', '11292', 0, 0, 0, -2230.705, -2456.945, 81.54584, 2.209932, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Zidormi (Area: 0 - Difficulty: 0) (Auras: 132482 - Aura Tall - Yellow)
(@CGUID+999, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -2184.522, -2428.522, 75.90162, 3.878619, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768); -- Small Frog (Area: 0 - Difficulty: 0)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+1000, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1997.613, -2760.163, 86.50169, 5.933743, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1001, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1943.054, -2743.646, 76.52538, 6.00416, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1002, 142021, 0, 9734, 0, '0', '11292', 0, 0, 0, -1985.335, -2782.132, 82.58588, 6.254085, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Troll der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1003, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1962.076, -2772.302, 80.05509, 4.189096, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1004, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -1956.383, -2749.783, 81.18945, 1.557771, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0)
(@CGUID+1005, 141946, 0, 9734, 0, '0', '11292', 0, 0, 0, -1970.495, -2758.214, 80.88368, 4.491588, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Magus der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-, 12544 - Frost Armor)
(@CGUID+1006, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1972.679, -2762.134, 80.67188, 0.6634781, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1007, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -1924.277, -2797.422, 72.78331, 1.322026, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0)
(@CGUID+1008, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -1969.676, -2784.622, 81.07128, 5.267037, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0)
(@CGUID+1009, 114590, 0, 9734, 0, '0', '11292', 0, 0, 0, -1948.064, -2781.245, 82.02173, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Generic Bunny (Area: 0 - Difficulty: 0)
(@CGUID+1010, 114590, 0, 9734, 0, '0', '11292', 0, 0, 0, -1950.382, -2796.979, 83.97357, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Generic Bunny (Area: 0 - Difficulty: 0)
(@CGUID+1011, 141942, 0, 9734, 0, '0', '11292', 0, 0, 0, -1954.621, -2795.218, 81.21822, 1.637316, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Molok der Zermalmer (Area: 0 - Difficulty: 0) (Auras: 287958 - -Unknown-, 288178 - -Unknown-)
(@CGUID+1012, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1892.215, -2734.297, 64.35077, 0.8100675, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1013, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1983.977, -2787.948, 82.99677, 1.641841, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1014, 141946, 0, 9734, 0, '0', '11292', 0, 0, 0, -1907.063, -2771.786, 71.58902, 1.651403, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Magus der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor, 288178 - -Unknown-)
(@CGUID+1015, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1914.424, -2788.103, 71.2149, 1.537336, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1016, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -1947.239, -2826.845, 77.00122, 3.231545, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0)
(@CGUID+1017, 141946, 0, 9734, 0, '0', '11292', 0, 0, 0, -1913.109, -2853.512, 74.88613, 5.060968, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Magus der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 12544 - Frost Armor, 288178 - -Unknown-)
(@CGUID+1018, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1868.859, -2821.401, 62.90771, 5.348213, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1019, 142021, 0, 9734, 0, '0', '11292', 0, 0, 0, -1883.911, -2835.457, 62.90776, 0.1829336, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Troll der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1020, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -2030.994, -2813.021, 74.48652, 2.374796, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: 0 - Difficulty: 0)
(@CGUID+1021, 141947, 0, 9734, 0, '0', '11292', 0, 0, 0, -1902.424, -2853.392, 75.60251, 2.062881, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: 0 - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1022, 142021, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1862.62, -2847.792, 62.90771, 1.303106, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Troll der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1023, 142021, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1860.632, -2848.59, 62.9088, 1.84817, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Troll der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1024, 141947, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1859.451, -2841.57, 62.90771, 4.285783, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1025, 4075, 0, 9734, 9754, '0', '11292', 0, 0, 0, -2037.524, -2814.501, 74.81392, 2.318309, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Rat (Area: -Unknown- - Difficulty: 0)
(@CGUID+1026, 141947, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1952.634, -2882.351, 78.37852, 1.435872, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1027, 141947, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1808.288, -2834.222, 57.76698, 0.0904623, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1028, 142333, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1816.352, -2903.113, 60.59681, 2.0851, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1029, 61704, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1825.226, -2880.347, 62.83431, 1.709931, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1030, 142716, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1922.65, -2944.108, 107.7181, 4.377203, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Menschenjäger Rog (Area: -Unknown- - Difficulty: 0) (Auras: 287909 - -Unknown-, 288178 - -Unknown-)
(@CGUID+1031, 142717, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1920.438, -2939.13, 107.7838, 4.131224, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Zetermordio (Area: -Unknown- - Difficulty: 0) (Auras: 193414 - Ghost State V2 (Blue))
(@CGUID+1032, 141947, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1817.833, -2826.333, 60.91964, 6.035739, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-)
(@CGUID+1033, 141947, 0, 9734, 9754, '0', '11292', 0, 0, 0, -1826.88, -2897.28, 64.31673, 5.427974, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Schläger der Felsfäuste (Area: -Unknown- - Difficulty: 0) (Auras: 288178 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1034, 142337, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1795.376, -3070.197, 47.64711, 3.606958, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Mesabussard (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1035, 142333, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1771.192, -3006.343, 43.09395, 0.4287273, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1036, 142333, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1791.188, -3109.131, 41.12459, 1.783528, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1037, 142333, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1731.771, -3064.368, 31.39712, 1.639513, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1038, 142333, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1776.019, -2949.304, 42.39212, 5.732042, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1039, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1687.496, -3045.682, 28.18955, 5.483976, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1040, 142333, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1694.209, -3033.066, 27.96743, 5.864961, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1041, 49999, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1725.693, -3084.769, 29.78692, 3.203635, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1042, 61141, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1703.427, -2951.03, 2.656622, 1.675516, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1043, 142731, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1614.769, -3020.509, 18.14757, 3.750251, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1044, 142730, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1622.02, -2984.204, 23.47285, 0.3538278, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1045, 142731, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1612.645, -2993.658, 22.20177, 5.461482, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1046, 142731, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1617.398, -2963.172, 22.72083, 5.431958, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1047, 142731, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1601.064, -2971.983, 21.7076, 0.5836666, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1048, 142333, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1647.883, -3082.876, 30.07397, 2.866779, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1049, 141876, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1559.993, -2941.892, 14.06467, 3.02422, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1050, 142730, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1581.025, -2930.836, 15.97483, 0.03495843, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288161 - -Unknown-)
(@CGUID+1051, 141876, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1560.71, -3002.361, 14.05511, 5.625945, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1052, 141876, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1567.014, -2973.019, 14.06467, 3.93542, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1053, 142730, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1589.748, -2960.502, 19.52911, 6.069046, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1054, 141876, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1555.088, -2949.037, 14.06467, 2.543201, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1055, 2620, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1590.219, -2957.709, 19.68967, 0.1018079, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1056, 142731, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1602.262, -2937.13, 21.66896, 3.706823, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1057, 141876, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1553.62, -2968.012, 14.06467, 1.739817, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1058, 142730, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1572.724, -3039.5, 20.55985, 1.929923, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1059, 142731, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1589.833, -3024.699, 20.40915, 2.846835, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1060, 141876, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1561.123, -2957.161, 14.06467, 3.294484, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1061, 142337, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1579.892, -2912.03, 27.04566, 3.243623, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Mesabussard (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1062, 142730, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1594.084, -2947.582, 21.24729, 6.069732, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1063, 141876, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1558.718, -3010.913, 14.05511, 3.506871, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1064, 141876, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1550.086, -2999.84, 14.06467, 5.633922, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1065, 142747, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1534.106, -2980.109, 14.51725, 4.854221, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grunzer von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1066, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1560.409, -2923.564, 14.06198, 0.8245387, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1067, 142732, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1590.721, -2885.842, 18.83877, 5.023213, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenpriester der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1068, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1539.617, -3006.758, 14.05511, 2.038716, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1069, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1555.002, -2930.969, 14.06198, 6.274852, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1070, 142747, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1536.288, -2928.043, 14.29116, 2.697339, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grunzer von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1071, 142747, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1537.139, -2967.007, 14.20854, 5.437386, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grunzer von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1072, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1545.696, -2941.191, 14.06467, 1.251701, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1073, 142747, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1533.219, -2993.95, 14.023, 1.486765, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grunzer von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1074, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1544.149, -2923.479, 14.06198, 6.249887, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1075, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1546.606, -2972.413, 14.06467, 1.453815, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1076, 142747, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1542.236, -2993.823, 14.02356, 1.620755, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grunzer von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1077, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1548.073, -2957.427, 14.06467, 1.819916, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1078, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1530.287, -3001.414, 14.05134, 5.207552, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1079, 142747, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1533.08, -2946.974, 14.4719, 1.442139, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grunzer von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1080, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1522.575, -2941.766, 14.06467, 3.146764, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1081, 142732, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1556.153, -2880.441, 15.74779, 2.112109, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenpriester der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1082, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1509.509, -2978.093, 14.06467, 2.401171, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1083, 143901, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1556.809, -2879.299, 15.74987, 5.226231, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Apotheker Jorell (Area: -Unknown- - Difficulty: 0)
(@CGUID+1084, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1509.18, -2978.743, 14.06467, 2.678133, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1085, 142747, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1516.804, -2994.351, 14.0252, 1.47355, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grunzer von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1086, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1529.28, -3020.288, 14.0297, 5.118715, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1087, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1517.497, -2922.106, 14.06467, 0.8718017, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1088, 142747, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1505.208, -3018.34, 14.09073, 6.016327, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grunzer von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1089, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1512.199, -2932.283, 14.06467, 4.872834, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1090, 142747, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1534.198, -2914.892, 14.10725, 1.678105, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grunzer von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1091, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1557.727, -2891.248, 14.06098, 5.243004, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1092, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1517.014, -2950.334, 14.06467, 4.048338, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1093, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1506.746, -2939.383, 14.06467, 0.2925545, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1094, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1561.036, -2891.104, 14.06877, 4.572241, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1095, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1505.748, -2922.297, 14.06467, 0.3433973, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1096, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1490.159, -2989.88, 14.24482, 3.943564, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1097, 385, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1506.077, -2888.502, 14.06686, 2.897039, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Horse (Area: -Unknown- - Difficulty: 0)
(@CGUID+1098, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1535.03, -2869.894, 14.0252, 0.4507517, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1099, 142730, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1493.594, -3018.292, 16.8093, 0.7909229, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1100, 142730, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1533.019, -2870.089, 14.0252, 6.02628, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1101, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1490.67, -2968.404, 14.04139, 2.091044, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1102, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1491.418, -2983.882, 14.04139, 0.2018435, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1103, 142730, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1484.177, -2943.595, 14.05329, 5.445221, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288161 - -Unknown-)
(@CGUID+1104, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1472.703, -2923.267, 15.10001, 4.589125, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1105, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1474.177, -2922.917, 14.79807, 5.72328, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1106, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1482.59, -2944.596, 14.05329, 1.458674, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1107, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1481.542, -2984.053, 14.04139, 2.557462, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1108, 142730, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1527.759, -2892.796, 14.38167, 2.270532, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1109, 49999, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1550.151, -2875.598, 14.94186, 3.703068, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+1110, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1510.348, -3051.727, 22.21819, 4.245757, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1111, 142741, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1479.891, -2986.208, 14.02604, 2.542948, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verdammnisreiter Helgrim (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1112, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1479.665, -2939.52, 14.09612, 4.95116, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1113, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1482.711, -2956.064, 14.05329, 4.816745, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1114, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1478.626, -2942.442, 14.05329, 1.687672, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1115, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1478.203, -2990.545, 14.02604, 2.783144, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1116, 142732, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1475.536, -2986.913, 14.18924, 2.304801, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenpriester der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1117, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1470.233, -2889.09, 14.5176, 1.457273, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1118, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1524.879, -2871.286, 14.14629, 5.924864, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1119, 142732, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1468.995, -2887.497, 14.51842, 3.429316, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenpriester der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1120, 142730, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1444.785, -2923.936, 23.55424, 3.370506, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288161 - -Unknown-)
(@CGUID+1121, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1432.484, -2938.607, 14.05971, 0.4056084, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1122, 385, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1501.909, -2871.503, 14.06686, 5.167487, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Horse (Area: -Unknown- - Difficulty: 0)
(@CGUID+1123, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1472.594, -2893.191, 14.51913, 2.599815, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1124, 385, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1447.505, -2948.174, 14.72441, 0.8625297, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Horse (Area: -Unknown- - Difficulty: 0)
(@CGUID+1125, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1471.03, -2886.861, 14.51801, 5.484007, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1126, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1450.139, -3025.115, 14.61276, 5.838787, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1127, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1474.564, -2894.34, 14.521, 1.611218, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1128, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1454.416, -2885.824, 14.21753, 4.792609, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1129, 141876, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1467.501, -2868.334, 14.78311, 2.795156, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Peon von Hammerfall (Area: -Unknown- - Difficulty: 0)
(@CGUID+1130, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1483.882, -2880.898, 15.0491, 3.755072, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-)
(@CGUID+1131, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1549.073, -3036.108, 16.17511, 5.52876, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1132, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1407.453, -2989.394, 23.66578, 5.616148, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-)
(@CGUID+1133, 142731, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1574.821, -2993.46, 14.09587, 2.588237, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-)
(@CGUID+1134, 142334, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1333.234, -3097.019, 46.30239, 4.700671, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+1135, 142438, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1400.735, -3124.159, 47.10476, 4.763226, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Venomarus (Area: -Unknown- - Difficulty: 0) (Auras: 287965 - -Unknown-)
(@CGUID+1136, 142334, 0, 9734, 9752, '0', '11292', 0, 0, 0, -1474.925, -3114.054, 37.37962, 0.4968522, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+1137, 61704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1345.763, -3154.291, 47.46132, 4.573255, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+1138, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1349.474, -3247.674, 46.9876, 4.355446, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1139, 61141, 0, 9734, 0, '0', '11292', 0, 0, 0, -1371.952, -3263.022, 45.67196, 2.300111, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+1140, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1398.159, -3269.25, 43.79298, 5.156808, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1141, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1318.423, -3291.99, 47.39175, 1.478899, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1142, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1410.448, -3324.819, 41.05844, 2.464107, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1143, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1332.346, -3333.746, 44.54865, 5.570962, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1144, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1333.127, -3332.262, 44.73592, 3.128877, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+1145, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1384.66, -3361.062, 44.19914, 4.747752, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1146, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1270.518, -3329.7, 37.92427, 5.526825, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1147, 61704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1269.047, -3315.354, 38.72742, 4.078274, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+1148, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1416.006, -3334.99, 41.16287, 2.869572, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1149, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1348.068, -3380.914, 44.9109, 3.473843, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1150, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1299.807, -3367.175, 38.08552, 2.334099, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1151, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1311.908, -3409.05, 44.85553, 5.27223, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1152, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1233.524, -3399.236, 41.15863, 0.02702877, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+1153, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1245.175, -3414.696, 42.35576, 4.78487, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1154, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1245.05, -3417.567, 42.64319, 3.232476, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1155, 61704, 0, 9734, 0, '0', '11292', 0, 0, 0, -1266.103, -3436.085, 45.22925, 5.664808, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0)
(@CGUID+1156, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1339.305, -3449.757, 49.13472, 5.690852, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1157, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1280.436, -3458.379, 47.28331, 0.4924858, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1158, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1233.384, -3466.288, 44.54077, 0.8189263, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1159, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1265.638, -3550.127, 58.90208, 3.431604, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1160, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1290.943, -3534.788, 60.1569, 0.08021964, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+1161, 142338, 0, 9734, 0, '0', '11292', 0, 0, 0, -1395.847, -3417.269, 49.95606, 3.428209, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandschreiter (Area: 0 - Difficulty: 0)
(@CGUID+1162, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1451.263, -3422.367, 56.29949, 0.9643876, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1163, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1463.396, -3364.578, 45.11771, 0.6385226, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1164, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1467.207, -3353.011, 46.33099, 4.751432, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1165, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1501.7, -3343.416, 44.65215, 4.170965, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1166, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1479.003, -3320.424, 74.54982, 2.383812, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1167, 142676, 0, 9734, 0, '0', '11292', 0, 0, 0, -1552.837, -3476.933, 59.88906, 5.306101, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1168, 49999, 0, 9734, 0, '0', '11292', 0, 0, 0, -1581.659, -3415.967, 49.2386, 3.771881, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1169, 142692, 0, 9734, 0, '0', '11292', 0, 0, 0, -1552.755, -3476.441, 59.84975, 5.153924, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Nimar der Töter (Area: 0 - Difficulty: 0) (Auras: 287910 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1170, 142696, 0, 9734, 0, '0', '11292', 0, 0, 0, -1557.845, -3334.61, 32.18983, 1.8197, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Räuber der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1171, 142696, 0, 9734, 0, '0', '11292', 0, 0, 0, -1560.588, -3343.503, 32.07314, 1.590325, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Räuber der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1172, 142676, 0, 9734, 0, '0', '11292', 0, 0, 0, -1603.132, -3364.937, 34.39025, 2.543017, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1173, 142676, 0, 9734, 0, '0', '11292', 0, 0, 0, -1553.561, -3477.417, 59.8269, 5.740348, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1174, 142676, 0, 9734, 0, '0', '11292', 0, 0, 0, -1553.526, -3477.969, 59.84829, 5.993948, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1175, 142675, 0, 9734, 0, '0', '11292', 0, 0, 0, -1652.797, -3410.741, 28.78194, 5.681628, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenjäger der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1176, 142681, 0, 9734, 0, '0', '11292', 0, 0, 0, -1646.718, -3411.085, 28.73396, 3.48766, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1177, 142676, 0, 9734, 0, '0', '11292', 0, 0, 0, -1650.343, -3408.951, 28.73396, 4.703057, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1178, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1618.937, -3316.152, 25.0251, 0.8129165, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1179, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1637.633, -3398.836, 28.75261, 3.852338, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1180, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1620.121, -3305.725, 24.9272, 2.31023, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1181, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1625, -3310.97, 24.46284, 1.570796, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1182, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1667.394, -3480.827, 61.1854, 0.5586218, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1183, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1700.259, -3462.788, 57.38537, 0.3340956, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1184, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1706.41, -3453.144, 56.20954, 1.475109, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1185, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1686.843, -3509.833, 60.22631, 3.223947, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1186, 142675, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1685.574, -3384.467, 26.07041, 6.171072, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1187, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1697.281, -3508.313, 60.22631, 0.7396381, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1188, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1720.529, -3475.674, 62.2155, 4.682449, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1189, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1706.429, -3504.29, 60.32354, 6.221724, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1190, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1711.273, -3384.281, 31.4923, 4.033934, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1191, 142675, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1697.541, -3504.193, 60.25333, 4.930984, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1192, 49999, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1713.413, -3385.501, 32.16474, 3.750719, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+1193, 142679, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1686.52, -3377.717, 26.03138, 4.573808, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fischer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1194, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1719.92, -3494.601, 62.30909, 1.941817, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1195, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1712.289, -3392.798, 33.99802, 3.669099, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1196, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1704.033, -3498.215, 60.28437, 5.672565, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1197, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1585.924, -3455.556, 54.55035, 5.454096, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1198, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1712.491, -3364.378, 32.37318, 3.75287, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1199, 142709, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1793.398, -3390.565, 42.60827, 5.183271, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Bestienreiter Kama (Area: -Unknown- - Difficulty: 0) (Auras: 287902 - -Unknown-, 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1200, 61071, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1710.938, -3345.834, 31.99264, 5.799878, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1201, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1821.038, -3348.05, 51.64122, 0.4281447, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1202, 142679, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1792.151, -3300.802, 25.91106, 5.542481, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fischer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1203, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1856.907, -3322.346, 47.00234, 5.305918, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1204, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1849.122, -3329.1, 48.07671, 2.171268, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1205, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1857.447, -3322.787, 47.07861, 5.496327, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1206, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1830.502, -3355.094, 51.63359, 5.644065, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1207, 142734, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1825.441, -3352.616, 53.95655, 5.484968, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Verteidiger von Arathor (Area: -Unknown- - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1208, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1821.25, -3347.612, 51.63359, 0.2259344, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1209, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1848.154, -3333.47, 48.55199, 1.140185, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1210, 142675, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1829.441, -3357.014, 51.64114, 5.329527, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1211, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1829.811, -3348.712, 51.64114, 0.149302, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1212, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1820.962, -3357.028, 51.64099, 3.34965, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288177 - -Unknown-)
(@CGUID+1213, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1880.774, -3303.04, 53.85303, 5.670471, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1214, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1911.586, -3304.652, 59.69643, 2.503172, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1215, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1815.682, -3253.397, 38.37539, 0.1171349, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1216, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1789.675, -3265.632, 34.45407, 5.713609, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1217, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1815.894, -3255.667, 37.97393, 6.002328, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1218, 142679, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1780.997, -3262.972, 34.55208, 0.5791864, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fischer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1219, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1850.184, -3260.25, 43.91473, 2.610364, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1220, 142675, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1862.889, -3251.089, 44.05143, 6.257631, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1221, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1859.92, -3251.002, 44.05143, 3.22108, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1222, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1836.393, -3229.812, 45.61546, 2.303281, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1223, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1849.307, -3246.83, 43.89516, 1.546619, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1224, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1932.418, -3330.686, 58.4597, 6.264902, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1225, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1823.299, -3232.389, 43.67229, 6.107251, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1226, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1931.137, -3323.753, 59.3087, 6.225318, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1227, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1863.51, -3240.521, 44.05604, 2.472218, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1228, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1971.307, -3313.6, 57.30837, 1.461519, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1229, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1971.712, -3335.234, 55.61778, 3.251181, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1230, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -2006.403, -3308.824, 55.15405, 0.1699354, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1231, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1890.125, -3206.957, 54.44901, 1.785745, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1232, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1777.77, -3254.84, 34.93649, 5.048972, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1233, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1775.396, -3250.408, 36.00827, 4.173408, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1234, 142679, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1778.622, -3261.219, 34.50868, 3.825821, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fischer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1235, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1885.292, -3203.253, 54.26097, 2.31571, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1236, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1883.498, -3197.767, 54.37377, 3.085896, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1237, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1866.088, -3177.975, 55.54551, 3.893854, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1238, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1832.342, -3166.342, 47.17998, 0.7177284, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1239, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1851.468, -3180.103, 52.20134, 2.121939, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1240, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1820.285, -3168.574, 45.19237, 3.63517, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1241, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1887.614, -3155.546, 62.35086, 0.2949888, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1242, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1897.168, -3201.156, 54.41627, 5.165333, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1243, 142675, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1889.316, -3191.943, 54.36077, 4.794473, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1244, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1834.528, -3179.733, 48.21415, 5.11272, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1245, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1879.742, -3158.141, 60.31424, 4.612895, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1246, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1876.125, -3150.363, 59.03469, 3.711169, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1247, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1732.307, -3237.783, 33.6788, 5.021795, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1248, 142696, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1740.811, -3203.071, 36.15572, 1.042294, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Räuber der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1249, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1684.773, -3254.72, 27.84971, 0.1391346, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768); -- Small Frog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+1250, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1674.038, -3225.208, 28.68586, 0.2118779, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1251, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1693.784, -3252.968, 29.17305, 4.335796, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1252, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1675.521, -3263.311, 27.54805, 4.712389, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1253, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1670.839, -3231.182, 28.67776, 0.4379723, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1254, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1671.591, -3196.492, 33.63309, 0.4860277, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1255, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1680.181, -3181.278, 32.65844, 1.033092, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1256, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1691.871, -3112.569, 30.37521, 4.761274, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1257, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1648.757, -3236.773, 33.53529, 4.602132, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-)
(@CGUID+1258, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1654.488, -3204.332, 36.11811, 1.438099, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1259, 142696, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1728.326, -3169.035, 34.25534, 1.26101, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768), -- Räuber der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-) (possible waypoints or random movement)
(@CGUID+1260, 49999, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1604.185, -3277.277, 32.14793, 0.4566669, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+1261, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1631.953, -3297.008, 24.88979, 0.7357153, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1262, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1586.136, -3324.965, 33.14424, 2.52436, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-)
(@CGUID+1263, 142679, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1664.007, -3282.422, 24.63069, 4.476959, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fischer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-)
(@CGUID+1264, 142596, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1566.12, -3432.804, 49.37689, 1.252033, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1265, 142681, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1557.049, -3433.262, 49.37882, 2.763716, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hexendoktor der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1266, 142675, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1558.099, -3413.368, 49.36776, 4.005363, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-)
(@CGUID+1267, 61704, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1504.26, -3283.476, 39.08831, 0.03904265, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Grasslands Cottontail (Area: -Unknown- - Difficulty: 0)
(@CGUID+1268, 142675, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1661.536, -3227.228, 28.67884, 4.188394, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1269, 142676, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1662.161, -3237.476, 28.68202, 1.676683, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: -Unknown- - Difficulty: 0) (Auras: 288015 - -Unknown-)
(@CGUID+1270, 142333, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1661.388, -3122.548, 34.49363, 5.593197, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+1271, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1680.984, -3113.275, 32.31694, 5.42038, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1272, 142339, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1686.062, -3100.854, 31.12552, 4.369628, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0)
(@CGUID+1273, 13321, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1648.535, -3085.503, 30.21119, 4.554551, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1274, 61071, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1649.704, -3092.062, 30.71269, 1.205165, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1275, 32638, 0, 9734, 9753, '0', '11292', 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hakmud of Argus (Area: -Unknown- - Difficulty: 0) (Auras: 61424 - Traveler's Tundra Mammoth)
(@CGUID+1276, 32639, 0, 9734, 9753, '0', '11292', 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gnimo (Area: -Unknown- - Difficulty: 0) (Auras: 61424 - Traveler's Tundra Mammoth)
(@CGUID+1277, 142596, 0, 9734, 0, '0', '11292', 0, 0, 0, -1705.316, -3173.764, 39.71346, 1.50684, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Axtwerfer der Bleichborken (Area: 0 - Difficulty: 0)
(@CGUID+1278, 142676, 0, 9734, 0, '0', '11292', 0, 0, 0, -1742.399, -3133.837, 33.56671, 0.602133, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Kopfjäger der Bleichborken (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288177 - -Unknown-)
(@CGUID+1279, 142730, 0, 9734, 0, '0', '11292', 0, 0, 0, -1608.745, -3026.151, 17.97569, 4.093295, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1280, 142730, 0, 9734, 0, '0', '11292', 0, 0, 0, -1610.049, -3011.069, 19.38117, 2.792655, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Armbrustschütze der Entweihten (Area: 0 - Difficulty: 0) (Auras: 288161 - -Unknown-)
(@CGUID+1281, 142731, 0, 9734, 0, '0', '11292', 0, 0, 0, -1589.175, -3039.959, 21.44235, 5.450861, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1282, 142732, 0, 9734, 0, '0', '11292', 0, 0, 0, -1603.025, -3011.684, 18.03545, 1.437704, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenpriester der Entweihten (Area: 0 - Difficulty: 0) (Auras: 288161 - -Unknown-)
(@CGUID+1283, 142716, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1835.615, -2936.727, 68.63332, 6.064728, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Menschenjäger Rog (Area: -Unknown- - Difficulty: 0) (Auras: 287909 - -Unknown-, 288178 - -Unknown-)
(@CGUID+1284, 142717, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1843.946, -2934.877, 70.68707, 6.065046, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Zetermordio (Area: -Unknown- - Difficulty: 0) (Auras: 193414 - Ghost State V2 (Blue))
(@CGUID+1285, 142333, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1748.466, -2919.892, 29.83691, 2.396582, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+1286, 142339, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1768.11, -2867.994, 41.23485, 3.921466, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0)
(@CGUID+1287, 142337, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1767.115, -2840.921, 51.27683, 5.692453, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Mesabussard (Area: -Unknown- - Difficulty: 0)
(@CGUID+1288, 142340, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1698.84, -2834.531, 40.28802, 1.128979, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: -Unknown- - Difficulty: 0)
(@CGUID+1289, 61141, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1758.533, -2791.928, 52.20426, 4.459835, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1290, 142340, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1731.721, -2813.452, 50.30927, 4.780776, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: -Unknown- - Difficulty: 0)
(@CGUID+1291, 142340, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1669.739, -2827.58, 45.89848, 5.240745, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandfleischpirscher (Area: -Unknown- - Difficulty: 0)
(@CGUID+1292, 142333, 0, 9734, 9753, '0', '11292', 0, 0, 0, -1715.266, -2782.412, 53.74779, 1.488629, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Riesiger Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+1293, 142731, 0, 9734, 0, '0', '11292', 0, 0, 0, -1597.617, -2869.89, 21.82998, 3.51867, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1294, 142732, 0, 9734, 0, '0', '11292', 0, 0, 0, -1604.18, -2858.224, 24.46401, 1.824317, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenpriester der Entweihten (Area: 0 - Difficulty: 0) (Auras: 288015 - -Unknown-)
(@CGUID+1295, 142731, 0, 9734, 0, '0', '11292', 0, 0, 0, -1620.135, -2936.092, 20.55237, 1.518008, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1296, 142731, 0, 9734, 0, '0', '11292', 0, 0, 0, -1613.582, -2948.256, 21.63172, 0.2624437, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1297, 142731, 0, 9734, 0, '0', '11292', 0, 0, 0, -1582.24, -2897.358, 15.13909, 5.487084, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Fußsoldat der Entweihten (Area: 0 - Difficulty: 0) (Auras: 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-)
(@CGUID+1298, 142732, 0, 9734, 0, '0', '11292', 0, 0, 0, -1587.186, -2900.762, 15.83518, 0.05473978, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Schattenpriester der Entweihten (Area: 0 - Difficulty: 0) (Auras: 288161 - -Unknown-)
(@CGUID+1299, 142337, 0, 9734, 0, '0', '11292', 0, 0, 0, -1695.516, -2772.629, 47.74868, 5.311648, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Mesabussard (Area: 0 - Difficulty: 0)
(@CGUID+1300, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1584.875, -2404.832, 90.21444, 1.252754, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1301, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1621.404, -2376.67, 90.90202, 2.429369, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1302, 142334, 0, 9734, 0, '0', '11292', 0, 0, 0, -1512.321, -2348.068, 62.66632, 6.106477, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: 0 - Difficulty: 0)
(@CGUID+1303, 142339, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1648.383, -2129.249, 32.38418, 1.382209, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0)
(@CGUID+1304, 142334, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1684.916, -2088.577, 42.16144, 0.5528058, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Ebenenkrabbler (Area: -Unknown- - Difficulty: 0)
(@CGUID+1305, 142339, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1723.945, -2178.319, 43.81035, 2.939222, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Hochlandhauer (Area: -Unknown- - Difficulty: 0)
(@CGUID+1306, 2620, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1606.694, -2044.482, 49.56273, 4.023909, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: -Unknown- - Difficulty: 0)
(@CGUID+1307, 142828, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1528.96, -1945.556, 68.46395, 4.945395, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+1308, 142828, 0, 9734, 9746, '0', '11292', 0, 0, 0, -1539.868, -1950.403, 68.51576, 5.377143, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Gardist von Stromgarde (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+1309, 2620, 0, 9734, 0, '0', '11292', 0, 0, 0, -1474.735, -1962.781, 51.51713, 5.779572, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Prairie Dog (Area: 0 - Difficulty: 0)
(@CGUID+1310, 142131, 0, 9734, 0, '0', '11292', 0, 0, 0, -1515.484, -1883.927, 67.90039, 1.573746, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Scharfschütze von Stromgarde (Area: 0 - Difficulty: 0)
(@CGUID+1311, 142131, 0, 9734, 0, '0', '11292', 0, 0, 0, -1518.453, -1891.087, 67.72562, 0.03490658, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Scharfschütze von Stromgarde (Area: 0 - Difficulty: 0)
(@CGUID+1312, 142131, 0, 9734, 0, '0', '11292', 0, 0, 0, -1522.014, -1884.698, 67.87674, 1.634188, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Scharfschütze von Stromgarde (Area: 0 - Difficulty: 0)
(@CGUID+1313, 142834, 0, 9734, 0, '0', '11292', 0, 0, 0, -1502.694, -1855.017, 69.3877, 0.1925631, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Genny (Area: 0 - Difficulty: 0)
(@CGUID+1314, 60197, 0, 9734, 0, '0', '11292', 0, 0, 0, -1515.516, -1873.332, 68.78584, 4.545842, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Training Dummy (Area: 0 - Difficulty: 0) (Auras: 98892 - Training Dummy Marker)
(@CGUID+1315, 13321, 0, 9734, 0, '0', '11292', 0, 0, 0, -1443.465, -1915.912, 46.01992, 2.956845, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768), -- Small Frog (Area: 0 - Difficulty: 0)
(@CGUID+1316, 4075, 0, 9734, 0, '0', '11292', 0, 0, 0, -1486.243, -1829.747, 68.86295, 2.631649, 120, 10, 0, 0, 0, 1, 0, 0, 0, 28768); -- Rat (Area: 0 - Difficulty: 0) (possible waypoints or random movement)

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1585;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+1, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+2, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+3, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+4, 0, 0, 131072, 1, 0, 0, 0, 0, '22766'), -- Syndicate Prowler - 22766 - Sneak
(@CGUID+5, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Conjuror
(@CGUID+6, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Syndicate Magus - 12544 - Frost Armor
(@CGUID+7, 0, 0, 3, 1, 0, 0, 0, 0, '42648'), -- Syndicate Thief - 42648 - Sleeping Sleep
(@CGUID+8, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+9, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Conjuror
(@CGUID+10, 0, 0, 0, 1, 0, 0, 0, 0, '32783'), -- Syndicate Magus - 32783 - Arcane Channeling
(@CGUID+11, 0, 0, 1, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+12, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Marez Cowl
(@CGUID+13, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+14, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+15, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Conjuror
(@CGUID+16, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Conjuror
(@CGUID+17, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Conjuror
(@CGUID+18, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+19, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Syndicate Magus - 12544 - Frost Armor
(@CGUID+20, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+21, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+22, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+23, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+24, 0, 0, 1, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+25, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+26, 0, 0, 1, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+27, 0, 0, 0, 1, 0, 0, 0, 0, '42648'), -- Syndicate Thief - 42648 - Sleeping Sleep
(@CGUID+28, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+29, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+30, 0, 0, 8, 1, 0, 0, 0, 0, ''), -- Syndicate Conjuror
(@CGUID+31, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Syndicate Magus - 12544 - Frost Armor
(@CGUID+32, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Syndicate Magus - 12544 - Frost Armor
(@CGUID+33, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+34, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Caretaker Alaric
(@CGUID+35, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Syndicate Magus - 12544 - Frost Armor
(@CGUID+36, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+37, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+38, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+39, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+40, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+41, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+42, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Lord Falconcrest
(@CGUID+43, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Otto
(@CGUID+44, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Syndicate Magus - 12544 - Frost Armor
(@CGUID+45, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+46, 0, 0, 8, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+47, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Caretaker Weston
(@CGUID+48, 0, 0, 8, 1, 0, 0, 0, 0, ''), -- Syndicate Conjuror
(@CGUID+49, 0, 0, 8, 1, 0, 0, 0, 0, ''), -- Syndicate Conjuror
(@CGUID+50, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Syndicate Thief
(@CGUID+51, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+52, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+53, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+54, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+55, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+56, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Altarit Jesse Taylor
(@CGUID+57, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+58, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+59, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Yvera Dämmerschwinge
(@CGUID+60, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+61, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Generic Bunny
(@CGUID+62, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+63, 0, 0, 0, 256, 0, 0, 0, 0, ''), -- Geldrin
(@CGUID+64, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ban-Lu
(@CGUID+65, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+66, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Godrey Rotbart
(@CGUID+67, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+68, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Scharfschütze von Stromgarde
(@CGUID+69, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Scharfschütze von Stromgarde
(@CGUID+70, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+71, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Scharfschütze von Stromgarde
(@CGUID+72, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Scharfschütze von Stromgarde
(@CGUID+73, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Scharfschütze von Stromgarde
(@CGUID+74, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Balinda Dunkelstein
(@CGUID+75, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+76, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+77, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Scharfschütze von Stromgarde
(@CGUID+78, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+79, 0, 0, 0, 1, 0, 0, 0, 0, '244971'), -- Belagerungsmaschine der Allianz - 244971 - -Unknown-
(@CGUID+80, 0, 0, 0, 1, 0, 0, 0, 0, '244971'), -- Belagerungsmaschine der Allianz - 244971 - -Unknown-
(@CGUID+81, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Brawley Steinbraue
(@CGUID+82, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+83, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+84, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+85, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+86, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+87, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+88, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+89, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+90, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+91, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+92, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+93, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riding Horse
(@CGUID+94, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hauptmann Roderick Bräustein
(@CGUID+95, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+96, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+97, 0, 84687, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Kürassier Wrenn - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+98, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+99, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+100, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grayson Bell
(@CGUID+101, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+102, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+103, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+104, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riding Horse
(@CGUID+105, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+106, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+107, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+108, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+109, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riding Horse
(@CGUID+110, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+111, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+112, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+113, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Greif der Allianz
(@CGUID+114, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+115, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+116, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+117, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+118, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+119, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+120, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+121, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+122, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+123, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+124, 0, 0, 8, 1, 0, 0, 0, 0, ''), -- Zwergeningenieur
(@CGUID+125, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+126, 0, 0, 0, 1, 0, 0, 0, 0, '263194'), -- Steinmetz von Stromgarde - 263194 - -Unknown-
(@CGUID+127, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Dorfbewohner aus Arathi
(@CGUID+128, 0, 0, 0, 0, 0, 0, 0, 0, '263184'), -- Steinmetz von Stromgarde - 263184 - -Unknown-
(@CGUID+129, 0, 0, 0, 0, 0, 0, 0, 0, '263203'), -- Steinmetz von Stromgarde - 263203 - -Unknown-
(@CGUID+130, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+131, 0, 0, 0, 257, 0, 0, 0, 0, '263076'), -- Tregan Hügelhub - 263076 - -Unknown-
(@CGUID+132, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+133, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+134, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riding Horse
(@CGUID+135, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Jonathan Flynn
(@CGUID+136, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Zwergeningenieur
(@CGUID+137, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+138, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Murrer
(@CGUID+139, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+140, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Zauberer von Stromgarde
(@CGUID+141, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+142, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+143, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Zauberer von Stromgarde
(@CGUID+144, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+145, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+146, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+147, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+148, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+149, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+150, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+151, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+152, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+153, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+154, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+155, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+156, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+157, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+158, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+159, 0, 0, 0, 1, 0, 0, 0, 0, '236530'), -- Cat - 236530 - Mod Scale +25%
(@CGUID+160, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+161, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+162, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+163, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+164, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+165, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+166, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Schütze des Heldenrufpasses
(@CGUID+167, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Schütze des Heldenrufpasses
(@CGUID+168, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+169, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Wildpferd
(@CGUID+170, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+171, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+172, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandholzfäller
(@CGUID+173, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandholzfäller
(@CGUID+174, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+175, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+176, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+177, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+178, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandholzfäller
(@CGUID+179, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+180, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+181, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Hochlandholzfäller
(@CGUID+182, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandholzfäller
(@CGUID+183, 0, 0, 1, 1, 0, 0, 0, 0, '257823'), -- Hochlandholzfäller - 257823 - -Unknown-
(@CGUID+184, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+185, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+186, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+187, 0, 0, 0, 0, 0, 0, 0, 0, '258648'), -- Hochlandholzfäller - 258648 - -Unknown-
(@CGUID+188, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+189, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandholzfäller
(@CGUID+190, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandholzfäller
(@CGUID+191, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+192, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schütze des Heldenrufpasses
(@CGUID+193, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+194, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Bodo der Baumstampfer
(@CGUID+195, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+196, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schütze des Heldenrufpasses
(@CGUID+197, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Hochlandholzfäller
(@CGUID+198, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+199, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+200, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+201, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+202, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+203, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Wildpferd
(@CGUID+204, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Wildpferd
(@CGUID+205, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+206, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+207, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+208, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+209, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Red-Tailed Chipmunk
(@CGUID+210, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+211, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+212, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hund von Neuhof
(@CGUID+213, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Deer
(@CGUID+214, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Hund von Neuhof
(@CGUID+215, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+216, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Landarbeiter von Neuhof
(@CGUID+217, 0, 0, 0, 0, 0, 0, 0, 0, '269149'), -- Hochlandarbeiter - 269149 - -Unknown-
(@CGUID+218, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+219, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+220, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Red-Tailed Chipmunk
(@CGUID+221, 0, 0, 0, 1, 0, 0, 0, 0, '267930 260824'), -- Milizsoldat von Neuhof - 267930 - -Unknown-, 260824 - -Unknown-
(@CGUID+222, 0, 0, 0, 1, 0, 0, 0, 0, '268799'), -- Hochlandarbeiter - 268799 - -Unknown-
(@CGUID+223, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Horse
(@CGUID+224, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Landarbeiter von Neuhof
(@CGUID+225, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Horse
(@CGUID+226, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Wildpferd
(@CGUID+227, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Landarbeiter von Neuhof
(@CGUID+228, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Hund von Neuhof
(@CGUID+229, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Cow
(@CGUID+230, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Cow
(@CGUID+231, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Hund von Neuhof
(@CGUID+232, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+233, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+234, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Cow
(@CGUID+235, 0, 0, 0, 1, 0, 0, 0, 0, '268799'), -- Hochlandarbeiter - 268799 - -Unknown-
(@CGUID+236, 0, 0, 0, 1, 0, 0, 0, 0, '288161 260824 288015'), -- Milizsoldat von Neuhof - 288161 - -Unknown-, 260824 - -Unknown-, 288015 - -Unknown-
(@CGUID+237, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+238, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+239, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+240, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Hund von Neuhof
(@CGUID+241, 0, 0, 0, 1, 0, 0, 0, 0, '288015 260824 288161'), -- Milizsoldat von Neuhof - 288015 - -Unknown-, 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+242, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+243, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+244, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+245, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+246, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+247, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161 288015'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-
(@CGUID+248, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schwein
(@CGUID+249, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'); -- Jäger von Neuhof - 288015 - -Unknown-; 288161 - -Unknown-

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+250, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161 288015'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-
(@CGUID+251, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+252, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sheep
(@CGUID+253, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schwein
(@CGUID+254, 0, 29284, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Kavallerist des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+255, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+256, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+257, 0, 0, 3, 1, 0, 0, 0, 0, ''), -- Prinzessin
(@CGUID+258, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schwein
(@CGUID+259, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sheep
(@CGUID+260, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schwein
(@CGUID+261, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Landarbeiter von Neuhof
(@CGUID+262, 0, 0, 0, 1, 0, 0, 0, 0, '288161 260824 288015'), -- Milizsoldat von Neuhof - 288161 - -Unknown-, 260824 - -Unknown-, 288015 - -Unknown-
(@CGUID+263, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+264, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161 288015'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-
(@CGUID+265, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ban-Lu
(@CGUID+266, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Timbet
(@CGUID+267, 0, 0, 0, 1, 0, 0, 0, 0, '288161 260824 267930 288015'), -- Milizsoldat von Neuhof - 288161 - -Unknown-, 260824 - -Unknown-, 267930 - -Unknown-, 288015 - -Unknown-
(@CGUID+268, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+269, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+270, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Landarbeiter von Neuhof
(@CGUID+271, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schwein
(@CGUID+272, 0, 0, 0, 1, 0, 0, 0, 0, '267930 260824'), -- Milizsoldat von Neuhof - 267930 - -Unknown-, 260824 - -Unknown-
(@CGUID+273, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+274, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+275, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schwein
(@CGUID+276, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schwein
(@CGUID+277, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Hund von Neuhof
(@CGUID+278, 0, 0, 0, 1, 0, 0, 0, 0, '267930 260824'), -- Milizsoldat von Neuhof - 267930 - -Unknown-, 260824 - -Unknown-
(@CGUID+279, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Landarbeiter von Neuhof
(@CGUID+280, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161 288015'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-
(@CGUID+281, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161 288015'), -- Milizsoldat von Neuhof - 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-
(@CGUID+282, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+283, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Jäger von Neuhof - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+284, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+285, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Hund von Neuhof
(@CGUID+286, 0, 0, 0, 1, 0, 0, 0, 0, '287966'), -- Yogursa - 287966 - -Unknown-
(@CGUID+287, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+288, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+289, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Red-Tailed Chipmunk
(@CGUID+290, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+291, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+292, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Deer
(@CGUID+293, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+294, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+295, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+296, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+297, 0, 0, 0, 1, 0, 0, 0, 0, '287961'), -- Zornschnabel - 287961 - -Unknown-
(@CGUID+298, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+299, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+300, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+301, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Red-Tailed Chipmunk
(@CGUID+302, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+303, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+304, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+305, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+306, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Graul
(@CGUID+307, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+308, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+309, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Heimtückischer Schwarzbär
(@CGUID+310, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Tobende Eulenbestie
(@CGUID+311, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+312, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+313, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+314, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+315, 0, 0, 0, 1, 0, 0, 0, 0, '287953'), -- Zweigfürst Aldrus - 287953 - -Unknown-
(@CGUID+316, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+317, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+318, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Zorn
(@CGUID+319, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+320, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+321, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+322, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+323, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+324, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+325, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+326, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+327, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+328, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+329, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+330, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+331, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+332, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+333, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+334, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+335, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+336, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+337, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+338, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+339, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+340, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+341, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+342, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+343, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+344, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+345, 0, 0, 0, 1, 0, 0, 0, 0, '287906 144465'), -- Schreckliche Erscheinung - 287906 - -Unknown-, 144465 - [DND] Shadowy Ghost Visual
(@CGUID+346, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+347, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+348, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+349, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+350, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+351, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+352, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+353, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+354, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+355, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+356, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+357, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+358, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+359, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+360, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Red-Tailed Chipmunk
(@CGUID+361, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+362, 0, 2410, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Ritter des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+363, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+364, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161 288015'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-
(@CGUID+365, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+366, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161 288015'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288161 - -Unknown-, 288015 - -Unknown-
(@CGUID+367, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+368, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+369, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+370, 0, 0, 0, 2, 0, 0, 0, 0, '288161 288015'), -- Armbrustschütze des Nordhofs - 288161 - -Unknown-, 288015 - -Unknown-
(@CGUID+371, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+372, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+373, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+374, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+375, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+376, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+377, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+378, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+379, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+380, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+381, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+382, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+383, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+384, 0, 0, 0, 1, 0, 0, 0, 0, '287954 259919 288179'), -- Brennender Goliath - 287954 - -Unknown-, 259919 - -Unknown-, 288179 - -Unknown-
(@CGUID+385, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+386, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+387, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+388, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+389, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+390, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Vorarbeiter Drogg
(@CGUID+391, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+392, 0, 0, 0, 1, 0, 0, 0, 0, '42459 287959'), -- Aufseher Krix - 42459 - Dual Wield, 287959 - -Unknown-
(@CGUID+393, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+394, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+395, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+396, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+397, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+398, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+399, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+400, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+401, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Feldvermesser der Trockenstoppel - 12544 - Frost Armor
(@CGUID+402, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Die Heulende Verdammnis
-- (@CGUID+403, 0, 0, 0, 1, 0, 0, 0, 0, '46598'), -- Kommandantin der Heulenden Verdammnis - 46598 - Ride Vehicle Hardcoded - !!! on transport - transport template not found !!!
-- (@CGUID+404, 0, 0, 0, 1, 0, 0, 0, 0, '46598 271121'), -- Geschütz der Heulenden Verdammnis - 46598 - Ride Vehicle Hardcoded, 271121 - -Unknown- - !!! on transport - transport template not found !!!
(@CGUID+405, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+406, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Buddler der Trockenstoppel
(@CGUID+407, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+408, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+409, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+410, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+411, 0, 0, 0, 1, 0, 0, 0, 0, '260824'), -- Ingenieur der Heulenden Verdammnis - 260824 - -Unknown-
(@CGUID+412, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schlachtzauberer der Heulenden Verdammnis
(@CGUID+413, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+414, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+415, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+416, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+417, 0, 0, 0, 1, 0, 0, 0, 0, '260824'), -- Ingenieur der Heulenden Verdammnis - 260824 - -Unknown-
(@CGUID+418, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schlachtzauberer der Heulenden Verdammnis
(@CGUID+419, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+420, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+421, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+422, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+423, 0, 0, 0, 1, 0, 0, 0, 0, '260824'), -- Ingenieur der Heulenden Verdammnis - 260824 - -Unknown-
(@CGUID+424, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schlachtzauberer der Heulenden Verdammnis
(@CGUID+425, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+426, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+427, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+428, 0, 0, 0, 1, 0, 0, 0, 0, '260824'), -- Ingenieur der Heulenden Verdammnis - 260824 - -Unknown-
(@CGUID+429, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+430, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+431, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+432, 0, 0, 0, 1, 0, 0, 0, 0, '260824'), -- Ingenieur der Heulenden Verdammnis - 260824 - -Unknown-
(@CGUID+433, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schlachtzauberer der Heulenden Verdammnis
(@CGUID+434, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+435, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+436, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+437, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+438, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Schlachtzauberer der Heulenden Verdammnis
(@CGUID+439, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+440, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+441, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Schlachtzauberer der Heulenden Verdammnis
(@CGUID+442, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Schreckensschild der Heulenden Verdammnis - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+443, 0, 0, 0, 1, 0, 0, 0, 0, '260824'), -- Ingenieur der Heulenden Verdammnis - 260824 - -Unknown-
(@CGUID+444, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+445, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+446, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+447, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+448, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+449, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+450, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+451, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+452, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Horse
(@CGUID+453, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+454, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+455, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+456, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+457, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+458, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+459, 0, 0, 0, 0, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+460, 0, 0, 0, 0, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+461, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+462, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschredder des Syndikats - 288181 - -Unknown-
(@CGUID+463, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschredder des Syndikats - 288181 - -Unknown-
(@CGUID+464, 0, 0, 0, 0, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+465, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschredder des Syndikats - 288181 - -Unknown-
(@CGUID+466, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+467, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+468, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschredder des Syndikats - 288181 - -Unknown-
(@CGUID+469, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+470, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+471, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+472, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+473, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+474, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschredder des Syndikats - 288181 - -Unknown-
(@CGUID+475, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+476, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschnitter des Syndikats - 288181 - -Unknown-
(@CGUID+477, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+478, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschredder des Syndikats - 288181 - -Unknown-
(@CGUID+479, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+480, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschredder des Syndikats - 288181 - -Unknown-
(@CGUID+481, 0, 0, 0, 1, 0, 0, 0, 0, '287912 288181'), -- Sängerin - 287912 - -Unknown-, 288181 - -Unknown-
(@CGUID+482, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschredder des Syndikats - 288181 - -Unknown-
(@CGUID+483, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Ernteschredder des Syndikats - 288181 - -Unknown-
(@CGUID+484, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+485, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+486, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+487, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+488, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+489, 0, 0, 0, 1, 0, 0, 0, 0, '287903 288181'), -- Darbel Montrose - 287903 - -Unknown-, 288181 - -Unknown-
(@CGUID+490, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+491, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+492, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+493, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+494, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+495, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+496, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+497, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+498, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+499, 0, 0, 0, 2, 0, 0, 0, 0, '288181'); -- Pfadpirscher des Syndikats - 288181 - -Unknown-

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+500, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+501, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+502, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+503, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+504, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+505, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+506, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+507, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+508, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+509, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- Pfadpirscher des Syndikats - 288181 - -Unknown-
(@CGUID+510, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+511, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+512, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- Söldner des Syndikats - 288181 - -Unknown-
(@CGUID+513, 0, 0, 0, 1, 0, 0, 0, 0, '287956'), -- Echo von Myzrael - 287956 - -Unknown-
(@CGUID+514, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+515, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+516, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+517, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+518, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+519, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+520, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+521, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- Schäumender Verbannter - 12544 - Frost Armor, 288179 - -Unknown-
(@CGUID+522, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+523, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+524, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Wächter - 288179 - -Unknown-
(@CGUID+525, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+526, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- Schäumender Verbannter - 12544 - Frost Armor, 288179 - -Unknown-
(@CGUID+527, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Wächter - 288179 - -Unknown-
(@CGUID+528, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Grollender Wächter - 288179 - -Unknown-
(@CGUID+529, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+530, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- Überschäumender Wächter - 12544 - Frost Armor, 288179 - -Unknown-
(@CGUID+531, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+532, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- Schäumender Verbannter - 12544 - Frost Armor, 288179 - -Unknown-
(@CGUID+533, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+534, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+535, 0, 0, 0, 1, 0, 0, 0, 0, '287955 288179'), -- Überschäumender Goliath - 287955 - -Unknown-, 288179 - -Unknown-
(@CGUID+536, 0, 0, 0, 1, 0, 0, 0, 0, '287957'), -- Fozruk - 287957 - -Unknown-
(@CGUID+537, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Schäumender Verbannter - 12544 - Frost Armor
(@CGUID+538, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Schäumender Verbannter - 288179 - -Unknown-
(@CGUID+539, 0, 0, 0, 1, 0, 0, 0, 0, '288179 12544'), -- Schäumender Verbannter - 288179 - -Unknown-, 12544 - Frost Armor
(@CGUID+540, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- Schäumender Verbannter - 12544 - Frost Armor, 288179 - -Unknown-
(@CGUID+541, 0, 0, 0, 1, 0, 0, 0, 0, '288179 12544'), -- Schäumender Verbannter - 288179 - -Unknown-, 12544 - Frost Armor
(@CGUID+542, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Überschäumender Wächter - 288179 - -Unknown-
(@CGUID+543, 0, 0, 0, 1, 0, 0, 0, 0, '288179 12544'), -- Überschäumender Wächter - 288179 - -Unknown-, 12544 - Frost Armor
(@CGUID+544, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Schäumender Verbannter - 288179 - -Unknown-
(@CGUID+545, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Znort
(@CGUID+546, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Feeboz
(@CGUID+547, 0, 0, 0, 1, 0, 0, 0, 0, '288179 12544'), -- Schäumender Verbannter - 288179 - -Unknown-, 12544 - Frost Armor
(@CGUID+548, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- Schäumender Verbannter - 12544 - Frost Armor, 288179 - -Unknown-
(@CGUID+549, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- Überschäumender Wächter - 12544 - Frost Armor, 288179 - -Unknown-
(@CGUID+550, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Überschäumender Wächter - 288179 - -Unknown-
(@CGUID+551, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Schäumender Verbannter - 288179 - -Unknown-
(@CGUID+552, 0, 0, 0, 1, 0, 0, 0, 0, '288179 12544'), -- Schäumender Verbannter - 288179 - -Unknown-, 12544 - Frost Armor
(@CGUID+553, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Sleeby
(@CGUID+554, 0, 0, 0, 1, 0, 0, 0, 0, '288179 12544'), -- Schäumender Verbannter - 288179 - -Unknown-, 12544 - Frost Armor
(@CGUID+555, 0, 0, 0, 1, 0, 0, 0, 0, '288179 12544'), -- Schäumender Verbannter - 288179 - -Unknown-, 12544 - Frost Armor
(@CGUID+556, 0, 0, 0, 1, 0, 0, 0, 0, '288179 12544'), -- Schäumender Verbannter - 288179 - -Unknown-, 12544 - Frost Armor
(@CGUID+557, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+558, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+559, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+560, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- Schäumender Verbannter - 12544 - Frost Armor, 288179 - -Unknown-
(@CGUID+561, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+562, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+563, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+564, 0, 0, 0, 258, 0, 0, 0, 0, ''), -- Mu'uta
(@CGUID+565, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Urda
(@CGUID+566, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Uttnar
(@CGUID+567, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+568, 0, 0, 0, 1, 0, 0, 0, 0, '268945'), -- Peon von Hammerfall - 268945 - -Unknown-
(@CGUID+569, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+570, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Keena
(@CGUID+571, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+572, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+573, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Tharlidun
(@CGUID+574, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Gor'mul
(@CGUID+575, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+576, 0, 0, 0, 256, 0, 0, 0, 0, ''), -- Drum Teufel
(@CGUID+577, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+578, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+579, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+580, 0, 0, 0, 256, 0, 0, 0, 0, ''), -- Korin Teufel
(@CGUID+581, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Brenn
(@CGUID+582, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+583, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+584, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+585, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Graud
(@CGUID+586, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Jun'ha
(@CGUID+587, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+588, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Gastwirt Adegwa
(@CGUID+589, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+590, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+591, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+592, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Tunkk
(@CGUID+593, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+594, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+595, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+596, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+597, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- Wächter von Hammerfall - 5301 - Revenge Trigger
(@CGUID+598, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+599, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Kobold der Trockenstoppel
(@CGUID+600, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+601, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+602, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+603, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+604, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+605, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+606, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+607, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+608, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+609, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+610, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+611, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+612, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+613, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+614, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+615, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+616, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+617, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+618, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+619, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+620, 0, 0, 0, 1, 0, 0, 0, 0, '287963'), -- Schädelreißer - 287963 - -Unknown-
(@CGUID+621, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+622, 0, 0, 0, 1, 0, 0, 0, 0, '287963'), -- Schädelreißer - 287963 - -Unknown-
(@CGUID+623, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+624, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+625, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+626, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+627, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+628, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+629, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+630, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+631, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+632, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+633, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+634, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+635, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+636, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+637, 0, 0, 0, 1, 0, 0, 0, 0, '287964 288179'), -- Donnernder Goliath - 287964 - -Unknown-, 288179 - -Unknown-
(@CGUID+638, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+639, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+640, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+641, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+642, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+643, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+644, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+645, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+646, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+647, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+648, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Wächter - 288179 - -Unknown-
(@CGUID+649, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Wächter - 288179 - -Unknown-
(@CGUID+650, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+651, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+652, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Wächter - 288179 - -Unknown-
(@CGUID+653, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+654, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+655, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+656, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+657, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Wächter - 288179 - -Unknown-
(@CGUID+658, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+659, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+660, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Wächter - 288179 - -Unknown-
(@CGUID+661, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Donnernder Verbannter - 288179 - -Unknown-
(@CGUID+662, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+663, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+664, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+665, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+666, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+667, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+668, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+669, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Vikki Lonsav
(@CGUID+670, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+671, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Elitesoldat des Bundes von Arathor
(@CGUID+672, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Jannos Eisenwill
(@CGUID+673, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Elitesoldat des Bundes von Arathor
(@CGUID+674, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Targot Klingeltaschen
(@CGUID+675, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+676, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Elitesoldat des Bundes von Arathor
(@CGUID+677, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Elitesoldat des Bundes von Arathor
(@CGUID+678, 0, 14337, 0, 257, 0, 0, 0, 0, ''), -- Radulf Leder
(@CGUID+679, 0, 14338, 0, 257, 0, 0, 0, 0, ''), -- Kommandantin Amaren
(@CGUID+680, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Samuel Falk
(@CGUID+681, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Cedrik Prosa
(@CGUID+682, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Narj Schnitzelschnitt
(@CGUID+683, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+684, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Drovnar Starkbräu
(@CGUID+685, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Pferd
(@CGUID+686, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Androd Fadran
(@CGUID+687, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+688, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Generic Bunny
(@CGUID+689, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Hammon Karwn
(@CGUID+690, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Emily Jackson
(@CGUID+691, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+692, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+693, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+694, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+695, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+696, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- Verteidiger der Zuflucht
(@CGUID+697, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+698, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+699, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+700, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+701, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+702, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+703, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+704, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+705, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+706, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+707, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Junger Mesabussard
(@CGUID+708, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+709, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+710, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+711, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+712, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+713, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+714, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+715, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Lehrling des Zirkels - 12544 - Frost Armor
(@CGUID+716, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ban-Lu
(@CGUID+717, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+718, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+719, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Lehrling des Zirkels - 12544 - Frost Armor
(@CGUID+720, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Wächter - 288179 - -Unknown-
(@CGUID+721, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Wächter - 288179 - -Unknown-
(@CGUID+722, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Wächter - 288179 - -Unknown-
(@CGUID+723, 0, 21939, 0, 0, 0, 0, 0, 0, '54219'), -- Spruchwirker des Zirkels - 54219 - Arcane Channeling
(@CGUID+724, 0, 21939, 0, 0, 0, 0, 0, 0, ''), -- Spruchwirker des Zirkels
(@CGUID+725, 0, 0, 0, 0, 0, 0, 0, 0, '259919'), -- Flammenbinder der Wildhämmer - 259919 - -Unknown-
(@CGUID+726, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+727, 0, 21939, 0, 0, 0, 0, 0, 0, '54219'), -- Spruchwirker des Zirkels - 54219 - Arcane Channeling
(@CGUID+728, 0, 0, 0, 1, 0, 0, 0, 0, '12544 268463'), -- Lehrling des Zirkels - 12544 - Frost Armor, 268463 - -Unknown-
(@CGUID+729, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Wächter - 288179 - -Unknown-
(@CGUID+730, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- Lehrling des Zirkels - 12544 - Frost Armor
(@CGUID+731, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+732, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+733, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+734, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Brennender Verbannter - 288179 - -Unknown-
(@CGUID+735, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Deer
(@CGUID+736, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+737, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+738, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Generic Controller Bunny (CSA)
(@CGUID+739, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+740, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+741, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Nordhofs - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+742, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+743, 0, 0, 0, 1, 0, 0, 0, 0, '262247'), -- Hochlandarbeiter - 262247 - -Unknown-
(@CGUID+744, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Vorgezogener Aufklärer
(@CGUID+745, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Nordhofs - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+746, 0, 0, 1, 1, 0, 0, 0, 0, '257823'), -- Hochlandarbeiter - 257823 - -Unknown-
(@CGUID+747, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+748, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+749, 0, 0, 0, 1, 0, 0, 0, 0, '268799'); -- Hochlandarbeiter - 268799 - -Unknown-

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+750, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+751, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+752, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+753, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+754, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+755, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+756, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288161'), -- Priester von Stromgarde - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+757, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+758, 0, 2410, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Ritter des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+759, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat von Stromgarde - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+760, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+761, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+762, 0, 0, 0, 1, 0, 0, 0, 0, '268799'), -- Hochlandarbeiter - 268799 - -Unknown-
(@CGUID+763, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+764, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+765, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+766, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+767, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+768, 0, 2410, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Ritter des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+769, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Nordhofs - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+770, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Nordhofs - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+771, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+772, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+773, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- Rachsüchtiger Geist - 288180 - -Unknown-
(@CGUID+774, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+775, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+776, 0, 2410, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Ritter des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+777, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+778, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+779, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+780, 0, 2410, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Ritter des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+781, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+782, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+783, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Nordhofs - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+784, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+785, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Deer
(@CGUID+786, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Nordhofs - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+787, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+788, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Nordhofs - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+789, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+790, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+791, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+792, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+793, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandarbeiter
(@CGUID+794, 0, 0, 0, 2, 0, 0, 0, 0, '288161 288015'), -- Armbrustschütze des Hochstands - 288161 - -Unknown-, 288015 - -Unknown-
(@CGUID+795, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandarbeiter
(@CGUID+796, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+797, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+798, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riding Horse
(@CGUID+799, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandarbeiter
(@CGUID+800, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+801, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+802, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+803, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+804, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Generic Bunny
(@CGUID+805, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+806, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandarbeiter
(@CGUID+807, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+808, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+809, 0, 0, 0, 1, 0, 0, 0, 0, '268799'), -- Hochlandarbeiter - 268799 - -Unknown-
(@CGUID+810, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+811, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+812, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+813, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Vorgezogener Aufklärer
(@CGUID+814, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandarbeiter
(@CGUID+815, 0, 0, 8, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+816, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+817, 0, 0, 0, 1, 0, 0, 0, 0, '221085'), -- Vorgezogener Aufklärer - 221085 - Cosmetic - Human Male Kneeling + Spyglass
(@CGUID+818, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288161'), -- Initiand des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+819, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandarbeiter
(@CGUID+820, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+821, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+822, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandarbeiter
(@CGUID+823, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+824, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+825, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288161'), -- Initiand des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+826, 0, 0, 0, 1, 0, 0, 0, 0, '262247'), -- Hochlandarbeiter - 262247 - -Unknown-
(@CGUID+827, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+828, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+829, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+830, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze des Hochstands - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+831, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Hochstands - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+832, 0, 0, 8, 1, 0, 0, 0, 0, ''), -- Hochlandarbeiter
(@CGUID+833, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+834, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Oger der Felsfäuste - 288178 - -Unknown-
(@CGUID+835, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Oger der Felsfäuste - 288178 - -Unknown-
(@CGUID+836, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+837, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+838, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Vollstrecker der Felsfäuste - 288178 - -Unknown-
(@CGUID+839, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+840, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+841, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+842, 0, 21939, 0, 1, 0, 0, 0, 0, ''), -- Spruchwirker des Heldenrufpasses
(@CGUID+843, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+844, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+845, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288161'), -- Getreuer des Heldenrufpasses - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+846, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+847, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+848, 0, 0, 1, 1, 0, 0, 0, 0, '288178'), -- Oger der Felsfäuste - 288178 - -Unknown-
(@CGUID+849, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Oger der Felsfäuste - 288178 - -Unknown-
(@CGUID+850, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Oger der Felsfäuste - 288178 - -Unknown-
(@CGUID+851, 0, 0, 0, 0, 0, 0, 0, 0, '288178'), -- Magus der Felsfäuste - 288178 - -Unknown-
(@CGUID+852, 0, 0, 0, 1, 0, 0, 0, 0, '287904 288178'), -- Faulbauch - 287904 - -Unknown-, 288178 - -Unknown-
(@CGUID+853, 0, 0, 1, 1, 0, 0, 0, 0, '288178'), -- Oger der Felsfäuste - 288178 - -Unknown-
(@CGUID+854, 0, 0, 0, 1, 0, 0, 0, 0, '287908 288178'), -- Kovork - 287908 - -Unknown-, 288178 - -Unknown-
(@CGUID+855, 0, 0, 0, 1, 0, 0, 0, 0, '287908 288178'), -- Kovork - 287908 - -Unknown-, 288178 - -Unknown-
(@CGUID+856, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Vollstrecker der Felsfäuste - 288178 - -Unknown-
(@CGUID+857, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Oger der Felsfäuste - 288178 - -Unknown-
(@CGUID+858, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+859, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Vaughn
(@CGUID+860, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Willa
(@CGUID+861, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Vollstrecker der Felsfäuste - 288178 - -Unknown-
(@CGUID+862, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Deer
(@CGUID+863, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Greta Albrecht
(@CGUID+864, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Nordric Albrecht
(@CGUID+865, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+866, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+867, 0, 0, 0, 1, 0, 0, 0, 0, '287962 288179'), -- Grollender Goliath - 287962 - -Unknown-, 288179 - -Unknown-
(@CGUID+868, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+869, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+870, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''), -- Greifenreiter von Stromgarde
(@CGUID+871, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+872, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Grollender Wächter - 288179 - -Unknown-
(@CGUID+873, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+874, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Junger Mesabussard
(@CGUID+875, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+876, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+877, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+878, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+879, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+880, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+881, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+882, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+883, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Grollender Wächter - 288179 - -Unknown-
(@CGUID+884, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+885, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Vorarbeiterin Tully
(@CGUID+886, 0, 0, 0, 0, 0, 0, 0, 0, '262928'), -- Leitsteinausgräber - 262928 - -Unknown-
(@CGUID+887, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Grollender Wächter - 288179 - -Unknown-
(@CGUID+888, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+889, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Grollender Wächter - 288179 - -Unknown-
(@CGUID+890, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+891, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+892, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+893, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+894, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+895, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+896, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+897, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+898, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+899, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+900, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+901, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+902, 0, 0, 0, 0, 0, 0, 0, 0, '262928'), -- Leitsteinausgräber - 262928 - -Unknown-
(@CGUID+903, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+904, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Leitsteinausgräber
(@CGUID+905, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+906, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Schütze des Heldenrufpasses
(@CGUID+907, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+908, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Schütze des Heldenrufpasses
(@CGUID+909, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Schütze des Heldenrufpasses
(@CGUID+910, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+911, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Schütze des Heldenrufpasses
(@CGUID+912, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+913, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+914, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+915, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+916, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+917, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+918, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- Schütze des Heldenrufpasses
(@CGUID+919, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger des Heldenrufpasses - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+920, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+921, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Junger Mesabussard
(@CGUID+922, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- Rumpelnder Verbannter - 288179 - -Unknown-
(@CGUID+923, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+924, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+925, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+926, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+927, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+928, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Mesabussard
(@CGUID+929, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+930, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+931, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+932, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+933, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+934, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+935, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+936, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+937, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Mesabussard
(@CGUID+938, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+939, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+940, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+941, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+942, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+943, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Mesabussard
(@CGUID+944, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+945, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+946, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+947, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+948, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+949, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+950, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+951, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+952, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+953, 0, 0, 50331648, 1, 0, 0, 0, 0, '287960'), -- Seuchenfeder - 287960 - -Unknown-
(@CGUID+954, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+955, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+956, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+957, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+958, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+959, 0, 0, 0, 1, 0, 0, 0, 0, '287911 170528'), -- Ruul Zweistein - 287911 - -Unknown-, 170528 - Fire Channeling
(@CGUID+960, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+961, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+962, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+963, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+964, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+965, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+966, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+967, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+968, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+969, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+970, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+971, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+972, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+973, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+974, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+975, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+976, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Mesabussard
(@CGUID+977, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+978, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+979, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+980, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+981, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+982, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+983, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+984, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+985, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+986, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+987, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+988, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+989, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+990, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+991, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+992, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+993, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+994, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+995, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+996, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+997, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+998, 0, 0, 33554432, 1, 0, 0, 0, 0, '132482'), -- Zidormi - 132482 - Aura Tall - Yellow
(@CGUID+999, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- Small Frog

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+1000, 0, 0, 1, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1001, 0, 0, 1, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1002, 0, 0, 1, 1, 0, 0, 0, 0, '288015 288177'), -- Troll der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1003, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1004, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+1005, 0, 0, 0, 0, 0, 0, 0, 0, '288178 12544'), -- Magus der Felsfäuste - 288178 - -Unknown-, 12544 - Frost Armor
(@CGUID+1006, 0, 0, 0, 0, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1007, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+1008, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+1009, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Generic Bunny
(@CGUID+1010, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Generic Bunny
(@CGUID+1011, 0, 0, 0, 1, 0, 0, 0, 0, '287958 288178'), -- Molok der Zermalmer - 287958 - -Unknown-, 288178 - -Unknown-
(@CGUID+1012, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1013, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1014, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288178'), -- Magus der Felsfäuste - 12544 - Frost Armor, 288178 - -Unknown-
(@CGUID+1015, 0, 0, 1, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1016, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+1017, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288178'), -- Magus der Felsfäuste - 12544 - Frost Armor, 288178 - -Unknown-
(@CGUID+1018, 0, 0, 1, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1019, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Troll der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1020, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+1021, 0, 0, 1, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1022, 0, 0, 1, 1, 0, 0, 0, 0, '288015 288177'), -- Troll der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1023, 0, 0, 1, 1, 0, 0, 0, 0, '288015 288177'), -- Troll der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1024, 0, 0, 0, 0, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1025, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Rat
(@CGUID+1026, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1027, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1028, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1029, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1030, 0, 0, 0, 1, 0, 0, 0, 0, '287909 288178'), -- Menschenjäger Rog - 287909 - -Unknown-, 288178 - -Unknown-
(@CGUID+1031, 0, 0, 0, 1, 0, 0, 0, 0, '193414'), -- Zetermordio - 193414 - Ghost State V2 (Blue)
(@CGUID+1032, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1033, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- Schläger der Felsfäuste - 288178 - -Unknown-
(@CGUID+1034, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Mesabussard
(@CGUID+1035, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1036, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1037, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1038, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1039, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1040, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1041, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1042, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+1043, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1044, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1045, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1046, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1047, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1048, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1049, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1050, 0, 0, 0, 2, 0, 0, 0, 0, '288161'), -- Armbrustschütze der Entweihten - 288161 - -Unknown-
(@CGUID+1051, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1052, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1053, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1054, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1055, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+1056, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1057, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1058, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1059, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1060, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1061, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Mesabussard
(@CGUID+1062, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1063, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1064, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1065, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grunzer von Hammerfall
(@CGUID+1066, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1067, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288161'), -- Schattenpriester der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1068, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1069, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1070, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grunzer von Hammerfall
(@CGUID+1071, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grunzer von Hammerfall
(@CGUID+1072, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1073, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grunzer von Hammerfall
(@CGUID+1074, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1075, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1076, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grunzer von Hammerfall
(@CGUID+1077, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1078, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1079, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grunzer von Hammerfall
(@CGUID+1080, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1081, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288161'), -- Schattenpriester der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1082, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1083, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Apotheker Jorell
(@CGUID+1084, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1085, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grunzer von Hammerfall
(@CGUID+1086, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1087, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1088, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grunzer von Hammerfall
(@CGUID+1089, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1090, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grunzer von Hammerfall
(@CGUID+1091, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1092, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1093, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1094, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1095, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1096, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1097, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Horse
(@CGUID+1098, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1099, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1100, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1101, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1102, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1103, 0, 0, 0, 2, 0, 0, 0, 0, '288161'), -- Armbrustschütze der Entweihten - 288161 - -Unknown-
(@CGUID+1104, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1105, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1106, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1107, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1108, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1109, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1110, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1111, 0, 87773, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verdammnisreiter Helgrim - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1112, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1113, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1114, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1115, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1116, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288161'), -- Schattenpriester der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1117, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1118, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1119, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288161'), -- Schattenpriester der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1120, 0, 0, 0, 2, 0, 0, 0, 0, '288161'), -- Armbrustschütze der Entweihten - 288161 - -Unknown-
(@CGUID+1121, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1122, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Horse
(@CGUID+1123, 0, 0, 3, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1124, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Horse
(@CGUID+1125, 0, 0, 0, 0, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1126, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1127, 0, 0, 1, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1128, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1129, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Peon von Hammerfall
(@CGUID+1130, 0, 0, 0, 1, 0, 0, 0, 0, '288015'), -- Fußsoldat der Entweihten - 288015 - -Unknown-
(@CGUID+1131, 0, 0, 0, 1, 0, 0, 0, 0, '288015'), -- Fußsoldat der Entweihten - 288015 - -Unknown-
(@CGUID+1132, 0, 0, 0, 1, 0, 0, 0, 0, '288015'), -- Fußsoldat der Entweihten - 288015 - -Unknown-
(@CGUID+1133, 0, 0, 0, 1, 0, 0, 0, 0, '288015'), -- Fußsoldat der Entweihten - 288015 - -Unknown-
(@CGUID+1134, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1135, 0, 0, 0, 1, 0, 0, 0, 0, '287965'), -- Venomarus - 287965 - -Unknown-
(@CGUID+1136, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1137, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1138, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1139, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+1140, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1141, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1142, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1143, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1144, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+1145, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+1146, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1147, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1148, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1149, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1150, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1151, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1152, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+1153, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+1154, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1155, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1156, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1157, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1158, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1159, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1160, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+1161, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandschreiter
(@CGUID+1162, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1163, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1164, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1165, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1166, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1167, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Kopfjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1168, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1169, 0, 0, 0, 1, 0, 0, 0, 0, '287910 288177'), -- Nimar der Töter - 287910 - -Unknown-, 288177 - -Unknown-
(@CGUID+1170, 0, 59537, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Räuber der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1171, 0, 59537, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Räuber der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1172, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1173, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Kopfjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1174, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Kopfjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1175, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Schattenjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1176, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1177, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1178, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1179, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1180, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1181, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1182, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Axtwerfer der Bleichborken - 288177 - -Unknown-
(@CGUID+1183, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1184, 0, 0, 8, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1185, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1186, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Schattenjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1187, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1188, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1189, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1190, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1191, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Schattenjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1192, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1193, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Fischer der Bleichborken - 288177 - -Unknown-
(@CGUID+1194, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1195, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1196, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1197, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1198, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1199, 0, 14345, 0, 1, 0, 0, 0, 0, '287902 288015 288177'), -- Bestienreiter Kama - 287902 - -Unknown-, 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1200, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1201, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Hexendoktor der Bleichborken - 288177 - -Unknown-
(@CGUID+1202, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Fischer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1203, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Kopfjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1204, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Kopfjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1205, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Axtwerfer der Bleichborken - 288177 - -Unknown-
(@CGUID+1206, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Kopfjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1207, 0, 0, 7, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Verteidiger von Arathor - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1208, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Kopfjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1209, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Kopfjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1210, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Schattenjäger der Bleichborken - 288177 - -Unknown-
(@CGUID+1211, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Hexendoktor der Bleichborken - 288177 - -Unknown-
(@CGUID+1212, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- Hexendoktor der Bleichborken - 288177 - -Unknown-
(@CGUID+1213, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1214, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1215, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1216, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1217, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1218, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Fischer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1219, 0, 0, 1, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1220, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288177'), -- Schattenjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1221, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1222, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1223, 0, 0, 8, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1224, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1225, 0, 0, 1, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1226, 0, 0, 1, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1227, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1228, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1229, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1230, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1231, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1232, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1233, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1234, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Fischer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1235, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1236, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1237, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1238, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1239, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1240, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1241, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1242, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1243, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Schattenjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1244, 0, 0, 1, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1245, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1246, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1247, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1248, 0, 59537, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Räuber der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1249, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- Small Frog

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+1250, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1251, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1252, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1253, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1254, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1255, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1256, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1257, 0, 0, 0, 2, 0, 0, 0, 0, '288015'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-
(@CGUID+1258, 0, 0, 1, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1259, 0, 59537, 0, 1, 0, 0, 0, 0, '288015'), -- Räuber der Bleichborken - 288015 - -Unknown-
(@CGUID+1260, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1261, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1262, 0, 0, 0, 1, 0, 0, 0, 0, '288015'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-
(@CGUID+1263, 0, 0, 0, 1, 0, 0, 0, 0, '288015'), -- Fischer der Bleichborken - 288015 - -Unknown-
(@CGUID+1264, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Axtwerfer der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1265, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Hexendoktor der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1266, 0, 0, 0, 1, 0, 0, 0, 0, '288015'), -- Schattenjäger der Bleichborken - 288015 - -Unknown-
(@CGUID+1267, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Grasslands Cottontail
(@CGUID+1268, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Schattenjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1269, 0, 0, 0, 1, 0, 0, 0, 0, '288015'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-
(@CGUID+1270, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1271, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1272, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+1273, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1274, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1275, 0, 0, 0, 1, 0, 0, 0, 0, '61424'), -- Hakmud of Argus - 61424 - Traveler's Tundra Mammoth
(@CGUID+1276, 0, 0, 0, 1, 0, 0, 0, 0, '61424'), -- Gnimo - 61424 - Traveler's Tundra Mammoth
(@CGUID+1277, 0, 0, 1, 1, 0, 0, 0, 0, ''), -- Axtwerfer der Bleichborken
(@CGUID+1278, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- Kopfjäger der Bleichborken - 288015 - -Unknown-, 288177 - -Unknown-
(@CGUID+1279, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- Armbrustschütze der Entweihten - 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1280, 0, 0, 0, 2, 0, 0, 0, 0, '288161'), -- Armbrustschütze der Entweihten - 288161 - -Unknown-
(@CGUID+1281, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1282, 0, 0, 0, 1, 0, 0, 0, 0, '288161'), -- Schattenpriester der Entweihten - 288161 - -Unknown-
(@CGUID+1283, 0, 0, 0, 2, 0, 0, 0, 0, '287909 288178'), -- Menschenjäger Rog - 287909 - -Unknown-, 288178 - -Unknown-
(@CGUID+1284, 0, 0, 0, 1, 0, 0, 0, 0, '193414'), -- Zetermordio - 193414 - Ghost State V2 (Blue)
(@CGUID+1285, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1286, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+1287, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Mesabussard
(@CGUID+1288, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+1289, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+1290, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+1291, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandfleischpirscher
(@CGUID+1292, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Riesiger Ebenenkrabbler
(@CGUID+1293, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1294, 0, 0, 0, 1, 0, 0, 0, 0, '288015'), -- Schattenpriester der Entweihten - 288015 - -Unknown-
(@CGUID+1295, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1296, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288161 - -Unknown-
(@CGUID+1297, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- Fußsoldat der Entweihten - 260824 - -Unknown-, 288015 - -Unknown-, 288161 - -Unknown-
(@CGUID+1298, 0, 0, 0, 1, 0, 0, 0, 0, '288161'), -- Schattenpriester der Entweihten - 288161 - -Unknown-
(@CGUID+1299, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- Mesabussard
(@CGUID+1300, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1301, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1302, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1303, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+1304, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Ebenenkrabbler
(@CGUID+1305, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Hochlandhauer
(@CGUID+1306, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+1307, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+1308, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Gardist von Stromgarde
(@CGUID+1309, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Prairie Dog
(@CGUID+1310, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scharfschütze von Stromgarde
(@CGUID+1311, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Scharfschütze von Stromgarde
(@CGUID+1312, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Scharfschütze von Stromgarde
(@CGUID+1313, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Genny
(@CGUID+1314, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- Training Dummy - 98892 - Training Dummy Marker
(@CGUID+1315, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- Small Frog
(@CGUID+1316, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- Rat

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+364;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 302858, 1643, 0, 0, '0', '0', 0, 1115.347, -519.4722, 1.881983, 0.4537851, 0, 0, 0.2249508, 0.9743701, 7200, 255, 1, 28768), -- -Unknown- (Area: -Unknown- - Difficulty: 1)
(@OGUID+1, 295053, 1643, 0, 0, '0', '0', 0, 1118.552, -398.4519, 4.04144, 4.03173, 0, 0, -0.9025812, 0.4305196, 7200, 255, 1, 28768), -- -Unknown- (Area: -Unknown- - Difficulty: 1)
(@OGUID+2, 176630, 0, 45, 324, '0', '11292', 0, -1638.894, -1926.252, 73.96053, 5.445428, 0, 0, -0.4067364, 0.9135455, 120, 255, 1, 28768), -- Keepsake of Remembrance (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+3, 250648, 0, 45, 324, '0', '11292', 0, -1564.8, -1904.41, 48.95552, 0, 0, 0, 0, 1, 120, 255, 1, 28768), -- Trollbanns Grabmal (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+4, 203450, 0, 45, 324, '0', '11292', 0, -1564.797, -1904.413, 48.28931, 0, 0, 0, 0, 1, 120, 255, 1, 28768), -- Trollbane's Tomb (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+5, 1622, 0, 45, 324, '0', '11292', 0, -1723.803, -1832.739, 81.12962, 3.944446, 0, 0, -0.9205046, 0.3907318, 120, 255, 1, 28768), -- Bruiseweed (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+6, 2702, 0, 45, 324, '0', '11292', 0, -1510.337, -2170.79, 17.26296, 3.141593, 0, 0, -1, 0, 120, 255, 1, 28768), -- Stone of Inner Binding (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+7, 290322, 0, 45, 324, '0', '11292', 0, -1510.337, -2170.79, 17.26296, 3.141593, 0, 0, -1, 0, 120, 255, 1, 28768), -- Stein der Inneren Bindung (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+8, 290250, 0, 45, 324, '0', '11292', 0, -753.375, -2065.405, 68.55177, 3.045582, 0, 0, 0.998848, 0.04798714, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+9, 290251, 0, 45, 324, '0', '11292', 0, -833.0886, -1977.056, 55.10039, 4.729841, 0, 0, -0.7009096, 0.7132501, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+10, 290180, 0, 45, 324, '0', '11292', 0, -974.3351, -2106.403, 62.41706, 3.368496, 0, 0, -0.9935713, 0.1132084, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+11, 290181, 0, 45, 324, '0', '11292', 0, -755.9688, -2090.035, 74.55139, 6.152286, 0, 0, -0.06540298, 0.9978589, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+12, 290253, 0, 45, 324, '0', '11292', 0, -935.8403, -2157.984, 59.6134, 0.7330341, 0, 0, 0.358366, 0.9335812, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+13, 290182, 0, 45, 324, '0', '11292', 0, -898.7292, -1980.085, 61.89435, 5.113817, 0, 0, -0.5519361, 0.8338864, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+14, 290183, 0, 45, 324, '0', '11292', 0, -863.2969, -2188.351, 70.97752, 4.782203, 0, 0, -0.6819983, 0.7313538, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+15, 290184, 0, 45, 324, '0', '11292', 0, -797.4583, -2153.516, 74.50288, 5.401793, 0, 0, -0.426569, 0.904455, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+16, 290185, 0, 45, 324, '0', '11292', 0, -763.9757, -1979.67, 63.41077, 4.354598, 0, 0, -0.8216467, 0.5699971, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
-- (@OGUID+17, 293767, 0, 45, 324, '0', '11292', 0, -1507.063, -1855.146, 68.30422, 3.150327, 0, 0, -0.9999905, 0.00436732, 120, 255, 1, 28768), -- Werkstatt (Area: Stromgarde Keep - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+18, 290275, 0, 45, 324, '0', '11292', 0, -906.6111, -2183.033, 64.69227, 1.230456, 0, 0, 0.5771446, 0.816642, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+19, 290276, 0, 45, 324, '0', '11292', 0, -748.8889, -2024.392, 67.81252, 6.230826, 0, 0, -0.02617645, 0.9996573, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
-- (@OGUID+20, 293720, 0, 45, 324, '0', '11292', 0, -793.2101, -2016.851, 58.0949, 3.144355, 0, 0, -0.999999, 0.001381068, 120, 255, 1, 28768), -- Werkstatt (Area: Stromgarde Keep - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+21, 290166, 0, 45, 324, '0', '11292', 0, -827.6389, -2175.816, 72.02226, 2.050762, 0, 0, 0.8549118, 0.5187734, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+22, 290225, 0, 45, 324, '0', '11292', 0, -878.5868, -1976.545, 54.89071, 1.68424, 0, 0, 0.7460566, 0.6658826, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+23, 290167, 0, 45, 324, '0', '11292', 0, -747.7986, -2012.576, 70.7692, 3.141593, 0, 0, -1, 0, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
-- (@OGUID+24, 293764, 0, 45, 324, '0', '11292', 0, -1679.788, -1811.356, 79.6985, 0.00002288818, 0, 0, 0.00001144409, 1, 120, 255, 1, 28768), -- Schloss (Area: Stromgarde Keep - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+25, 290168, 0, 45, 324, '0', '11292', 0, -768.4462, -2126.226, 76.6948, 2.44346, 0, 0, 0.9396925, 0.3420205, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+26, 290227, 0, 45, 324, '0', '11292', 0, -753.7708, -1995.646, 62.84124, 0.3665156, 0, 0, 0.1822338, 0.9832552, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+27, 290238, 0, 45, 324, '0', '11292', 0, -918.2708, -2176.656, 64.87269, 0.8639389, 0, 0, 0.4186602, 0.908143, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+28, 290239, 0, 45, 324, '0', '11292', 0, -749.9739, -2039.094, 72.25024, 3.097919, 0, 0, 0.9997616, 0.02183524, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+29, 290264, 0, 45, 324, '0', '11292', 0, -929.2518, -2010.08, 55.29299, 4.06662, 0, 0, -0.8949337, 0.4461992, 120, 255, 1, 28768), -- Turm der Horde (Area: Stromgarde Keep - Difficulty: 0)
-- (@OGUID+30, 293751, 0, 45, 324, '0', '11292', 0, -1651.872, -1925.54, 87.6295, 4.69495, 0, 0, -0.7132454, 0.7009144, 120, 255, 1, 28768), -- Altar der Könige (Area: Stromgarde Keep - Difficulty: 0) - !!! might be temporary spawn !!!
-- (@OGUID+31, 293754, 0, 45, 324, '0', '11292', 0, -1531.012, -1736.021, 67.5882, 3.159062, 0, 0, -0.9999619, 0.008734641, 120, 255, 1, 28768), -- Kaserne (Area: Stromgarde Keep - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+32, 290218, 0, 45, 324, '0', '11292', 0, -760.4601, -2109.141, 71.06345, 5.925392, 0, 0, -0.1779442, 0.9840406, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+33, 290219, 0, 45, 324, '0', '11292', 0, -781.7327, -2139.061, 69.52354, 5.436701, 0, 0, -0.4107189, 0.911762, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+34, 290220, 0, 45, 324, '0', '11292', 0, -844.3229, -2182.878, 68.75634, 5.061451, 0, 0, -0.5735779, 0.819151, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+35, 290221, 0, 45, 324, '0', '11292', 0, -783.1493, -1977.958, 58.15981, 1.492253, 0, 0, 0.6787996, 0.7343236, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
-- (@OGUID+36, 293686, 0, 45, 324, '0', '11292', 0, -797.8073, -2094.37, 65.57371, 3.760329, 0, 0, -0.9525261, 0.304457, 120, 255, 1, 28768), -- Altar der Stürme (Area: Stromgarde Keep - Difficulty: 0) - !!! might be temporary spawn !!!
-- (@OGUID+37, 293729, 0, 45, 324, '0', '11292', 0, -945.8854, -2033.49, 54.48686, 5.663594, 0, 0, -0.3048639, 0.9523959, 120, 255, 1, 28768), -- Tor von Ar'gorok (Area: Stromgarde Keep - Difficulty: 0) - !!! might be temporary spawn !!!
-- (@OGUID+38, 293716, 0, 45, 324, '0', '11292', 0, -884.1875, -2011.887, 55.51393, 5.012016, 0, 0, -0.593648, 0.8047249, 120, 255, 1, 28768), -- Kriegswerkstatt (Area: Stromgarde Keep - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+39, 290241, 0, 45, 324, '0', '11292', 0, -858.5174, -1975.043, 58.94908, 4.738573, 0, 0, -0.6977892, 0.7163032, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+40, 290242, 0, 45, 324, '0', '11292', 0, -954.908, -2140.014, 65.18699, 0.6719524, 0, 0, 0.3296909, 0.9440889, 120, 255, 1, 28768), -- Mauer (Area: Stromgarde Keep - Difficulty: 0)
-- (@OGUID+41, 293746, 0, 45, 324, '0', '11292', 0, -1185.254, -2274.165, 63.48311, 1.544618, 0, 0, 0.6977911, 0.7163013, 120, 255, 1, 28768), -- Arkaner Turm (Area: Stromgarde Keep - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+42, 237058, 0, 45, 324, '0', '11292', 0, -1678.996, -1835.508, 81.12484, 1.771532, 0, 0, 0.7743998, 0.6326966, 120, 255, 1, 28768), -- Stool (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+43, 237059, 0, 45, 324, '0', '11292', 0, -1677.383, -1837.375, 81.13128, 3.054327, 0, 0, 0.9990482, 0.04361926, 120, 255, 1, 28768), -- Stool (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+44, 237060, 0, 45, 324, '0', '11292', 0, -1684.491, -1843.957, 82.46896, 1.640632, 0, 0, 0.7313614, 0.6819901, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+45, 234661, 0, 45, 324, '0', '11292', 0, -1677.274, -1831.681, 81.12429, 3.049767, 0, 0, 0.9989462, 0.04589649, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+46, 234662, 0, 45, 324, '0', '11292', 0, -1677.274, -1832.901, 81.12429, 3.150327, 0, 0, -0.9999905, 0.00436732, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+47, 234663, 0, 45, 324, '0', '11292', 0, -1677.274, -1834.159, 81.12429, 3.111083, 0, 0, 0.9998837, 0.01525439, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+48, 234666, 0, 45, 324, '0', '11292', 0, -1677.499, -1840.402, 82.48058, 3.291472, 0, 0, -0.9971933, 0.07486962, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+49, 234667, 0, 45, 324, '0', '11292', 0, -1677.588, -1841.894, 82.48058, 3.204217, 0, 0, -0.9995098, 0.03130717, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+50, 234668, 0, 45, 324, '0', '11292', 0, -1677.669, -1843.253, 82.48058, 3.029652, 0, 0, 0.9984341, 0.05594124, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+51, 298776, 0, 45, 324, '0', '11292', 0, -1652.351, -1890.623, 84.14213, 0, 0, 0, 0, 1, 120, 255, 1, 28768), -- -Unknown- (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+52, 234652, 0, 45, 324, '0', '11292', 0, -1691.625, -1843.114, 82.44183, 0.2094625, 0, 0, 0.1045399, 0.9945207, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+53, 234639, 0, 45, 324, '0', '11292', 0, -1684.491, -1826.807, 81.02177, 1.640632, 0, 0, 0.7313614, 0.6819901, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+54, 237056, 0, 45, 324, '0', '11292', 0, -1666.608, -1818.71, 80.24041, 3.176533, 0, 0, -0.9998474, 0.01746928, 120, 255, 1, 28768), -- Bench (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+55, 237057, 0, 45, 324, '0', '11292', 0, -1666.693, -1814.085, 80.28706, 3.124123, 0, 0, 0.9999619, 0.008734641, 120, 255, 1, 28768), -- Bench (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+56, 234659, 0, 45, 324, '0', '11292', 0, -1677.293, -1829.055, 81.12429, 3.311599, 0, 0, -0.9963894, 0.08490093, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+57, 234660, 0, 45, 324, '0', '11292', 0, -1677.22, -1823.663, 81.12429, 3.224325, 0, 0, -0.9991446, 0.04135428, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+58, 234665, 0, 45, 324, '0', '11292', 0, -1691.319, -1829.001, 81.12429, 0.08273004, 0, 0, 0.04135323, 0.9991446, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+59, 234669, 0, 45, 324, '0', '11292', 0, -1677.379, -1826.263, 81.11884, 3.124123, 0, 0, 0.9999619, 0.008734641, 120, 255, 1, 28768), -- Bench (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+60, 234670, 0, 45, 324, '0', '11292', 0, -1691.519, -1826.283, 81.12273, 0.00002288818, 0, 0, 0.00001144409, 1, 120, 255, 1, 28768), -- Bench (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+61, 234640, 0, 45, 324, '0', '11292', 0, -1682.793, -1825.271, 81.00368, 3.176533, 0, 0, -0.9998474, 0.01746928, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+62, 234641, 0, 45, 324, '0', '11292', 0, -1682.793, -1822.517, 81.00368, 3.089256, 0, 0, 0.9996576, 0.02616522, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+63, 234642, 0, 45, 324, '0', '11292', 0, -1682.729, -1821.144, 81.00368, 3.089256, 0, 0, 0.9996576, 0.02616522, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+64, 234644, 0, 45, 324, '0', '11292', 0, -1682.793, -1823.86, 81.00368, 3.263804, 0, 0, -0.9981337, 0.06106737, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+65, 234645, 0, 45, 324, '0', '11292', 0, -1682.784, -1819.714, 81.00368, 3.263804, 0, 0, -0.9981337, 0.06106737, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+66, 234648, 0, 45, 324, '0', '11292', 0, -1686.584, -1821.205, 81.00368, 6.230849, 0, 0, -0.02616501, 0.9996576, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+67, 234649, 0, 45, 324, '0', '11292', 0, -1686.584, -1822.456, 81.00368, 6.230849, 0, 0, -0.02616501, 0.9996576, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+68, 234650, 0, 45, 324, '0', '11292', 0, -1686.584, -1823.817, 81.00368, 0.1221959, 0, 0, 0.06105995, 0.9981341, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+69, 234651, 0, 45, 324, '0', '11292', 0, -1686.584, -1825.312, 81.00368, 0.2094625, 0, 0, 0.1045399, 0.9945207, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+70, 234653, 0, 45, 324, '0', '11292', 0, -1691.625, -1841.619, 82.44183, 0.1221959, 0, 0, 0.06105995, 0.9981341, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+71, 234654, 0, 45, 324, '0', '11292', 0, -1691.625, -1840.257, 82.44183, 6.230849, 0, 0, -0.02616501, 0.9996576, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+72, 237061, 0, 45, 324, '0', '11292', 0, -1690.776, -1815.616, 81.12598, 4.598968, 0, 0, -0.7460489, 0.6658911, 120, 255, 1, 28768), -- Stool (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+73, 237062, 0, 45, 324, '0', '11292', 0, -1690.63, -1819.57, 81.14613, 1.431191, 0, 0, 0.6560669, 0.7547027, 120, 255, 1, 28768), -- Stool (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+74, 234656, 0, 45, 324, '0', '11292', 0, -1685.983, -1815.598, 80.97525, 0.9100836, 0, 0, 0.4394999, 0.8982427, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+75, 237618, 0, 45, 324, '0', '11292', 0, -1579.824, -1914.378, 71.13731, 5.952058, 0, 0, -0.1648083, 0.9863256, 120, 255, 1, 28768), -- Bench (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+76, 234657, 0, 45, 324, '0', '11292', 0, -1682.245, -1814.75, 80.95652, 2.362082, 0, 0, 0.9250021, 0.379962, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+77, 237619, 0, 45, 324, '0', '11292', 0, -1582.971, -1914.359, 71.15359, 0.04640423, 0, 0, 0.02320004, 0.9997308, 120, 255, 1, 28768), -- Stool (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+78, 234658, 0, 45, 324, '0', '11292', 0, -1683.071, -1815.504, 80.95652, 2.104366, 0, 0, 0.8685074, 0.4956762, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+79, 237620, 0, 45, 324, '0', '11292', 0, -1586.82, -1910.376, 71.15359, 0.7630195, 0, 0, 0.3723221, 0.9281036, 120, 255, 1, 28768), -- Stool (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+80, 234664, 0, 45, 324, '0', '11292', 0, -1691.226, -1823.621, 81.12429, 0.1699968, 0, 0, 0.08489609, 0.9963898, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+81, 293762, 0, 45, 324, '0', '11292', 0, -1573.384, -1901.281, 67.58027, 0.9424702, 0, 0, 0.4539871, 0.8910083, 120, 255, 0, 28768), -- Schmiede (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+82, 293766, 0, 45, 324, '0', '11292', 0, -1679.788, -1811.356, 79.6985, 0.00002288818, 0, 0, 0.00001144409, 1, 120, 255, 0, 28768), -- Schloss (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+83, 234643, 0, 45, 324, '0', '11292', 0, -1682.902, -1818.363, 81.00368, 3.351065, 0, 0, -0.9945202, 0.1045447, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+84, 234646, 0, 45, 324, '0', '11292', 0, -1686.584, -1818.451, 81.00368, 0.03492914, 0, 0, 0.01746368, 0.9998475, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+85, 234647, 0, 45, 324, '0', '11292', 0, -1686.584, -1819.861, 81.00368, 6.143582, 0, 0, -0.06974506, 0.9975649, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+86, 234655, 0, 45, 324, '0', '11292', 0, -1686.829, -1814.867, 80.97525, 0.6523644, 0, 0, 0.3204288, 0.9472726, 120, 255, 1, 28768), -- Chair (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+87, 281431, 0, 45, 324, '0', '11292', 0, -1549.068, -1731.129, 68.10016, 2.737355, -0.3856502, -0.5461531, -0.7386456, 0.08598569, 120, 255, 1, 28768), -- Allianzschild (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+88, 293900, 0, 45, 324, '0', '11292', 0, -1367.783, -1863.786, 51.62498, 6.053496, 0, 0, -0.1145926, 0.9934126, 120, 255, 1, 28768), -- Belagerungsturm der Allianz (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+89, 293757, 0, 45, 324, '0', '11292', 0, -1531.012, -1736.021, 67.5882, 3.159062, 0, 0, -0.9999619, 0.008734641, 120, 255, 0, 28768), -- Kaserne (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+90, 281431, 0, 45, 324, '0', '11292', 0, -1548.873, -1731.358, 68.07806, 2.944522, -0.3316026, -0.4716778, -0.8109913, 0.09926201, 120, 255, 1, 28768), -- Allianzschild (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+91, 281431, 0, 45, 324, '0', '11292', 0, -1548.936, -1744.224, 68.48158, 2.497282, 0.2312994, -0.09061909, 0.9177837, 0.3097769, 120, 255, 1, 28768), -- Allianzschild (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+92, 293733, 0, 45, 324, '0', '11292', 0, -1474.25, -1801.729, 66.91772, 0, 0, 0, 0, 1, 120, 255, 0, 28768), -- Tor von Burg Stromgarde (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+93, 281431, 0, 45, 324, '0', '11292', 0, -1548.642, -1742.694, 68.41287, 2.365262, 0.4769874, 0.4675159, 0.7421474, 0.05593751, 120, 255, 1, 28768), -- Allianzschild (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+94, 237621, 0, 45, 324, '0', '11292', 0, -1575.74, -1921.892, 68.7514, 0.5371662, 0, 0, 0.2653656, 0.9641479, 120, 255, 1, 28768), -- Anvil (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+95, 237622, 0, 45, 324, '0', '11292', 0, -1563.471, -1907.378, 68.28339, 2.879176, 0, 0, 0.9914045, 0.130832, 120, 255, 1, 28768), -- Anvil (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+96, 243577, 0, 45, 324, '0', '11292', 0, -1563.636, -1907.33, 68.2226, 5.959524, 0, 0, -0.1611252, 0.9869339, 120, 255, 1, 28768), -- Doodad_6HU_BLACKSMITH_FLOORPLATE002 (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+97, 292605, 0, 45, 324, '0', '11292', 0, -1612.53, -1710.832, 67.57633, 0.02618101, 0, 0, 0.01309013, 0.9999143, 120, 255, 0, 28768), -- Tor (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+98, 292605, 0, 45, 324, '0', '11292', 0, -1537.582, -1940.153, 68.41681, 5.139995, 0, 0, -0.5409746, 0.8410389, 120, 255, 0, 28768), -- Tor (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+99, 293769, 0, 45, 324, '0', '11292', 0, -1507.063, -1855.146, 69.15422, 3.150327, 0, 0, -0.9999905, 0.00436732, 120, 255, 0, 28768), -- Werkstatt (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+100, 292605, 0, 45, 324, '0', '11292', 0, -1474.38, -1801.554, 67.57317, 0, 0, 0, 0, 1, 120, 255, 0, 28768), -- Tor (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+101, 292605, 0, 45, 324, '0', '11292', 0, -1521.384, -1653.111, 68.18304, 0.6283169, 0, 0, 0.3090162, 0.9510568, 120, 255, 0, 28768), -- Tor (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+102, 292605, 0, 45, 324, '0', '11292', 0, -1688.203, -1732.686, 79.9025, 4.694937, 0, 0, -0.7132502, 0.7009096, 120, 255, 0, 28768), -- Tor (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+103, 236440, 0, 45, 324, '0', '11292', 0, -1535.011, -1740.998, 59.54094, 1.588265, 0, 0, 0.7132559, 0.7009038, 120, 255, 1, 28768), -- Prison Door (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+104, 277644, 0, 45, 324, '0', '11292', 0, -1355.292, -1818.674, 62.20082, 5.335928, 0, 0, -0.4561186, 0.889919, 120, 255, 1, 28768), -- Allianzbanner (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+105, 289541, 0, 45, 324, '0', '11292', 0, -1467.5, -2087.677, -33.69959, 0.9794012, 0, 0, 0.4703617, 0.8824737, 120, 255, 1, 28768), -- Allianzbanner (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+106, 293714, 0, 45, 324, '0', '11292', 0, -861.0695, -2122.17, 62.1706, 5.302957, 0, 0, -0.470727, 0.882279, 120, 255, 0, 28768), -- Festung (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+107, 293900, 0, 45, 324, '0', '11292', 0, -1351.283, -1792.226, 51.78151, 6.053496, 0, 0, -0.1145926, 0.9934126, 120, 255, 1, 28768), -- Belagerungsturm der Allianz (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+108, 290983, 0, 45, 324, '0', '11292', 0, -1187.215, -1846.986, 91.20211, 4.703661, 0, 0, -0.710186, 0.7040141, 120, 255, 0, 28768), -- Turm (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+109, 291024, 0, 45, 324, '0', '11292', 0, -774.309, -1755.563, 59.45906, 3.96369, 0, 0, -0.9167023, 0.3995709, 120, 255, 0, 28768), -- Sägewerk (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+110, 293721, 0, 45, 324, '0', '11292', 0, -793.2101, -2016.851, 58.0949, 3.144355, 0, 0, -0.999999, 0.001381068, 120, 255, 0, 28768), -- Werkstatt (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+111, 291027, 0, 45, 324, '0', '11292', 0, -744.1129, -1792.764, 57.29734, 2.64418, 0, 0, 0.9692316, 0.2461505, 120, 255, 0, 28768), -- Sägewerk (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+112, 291018, 0, 45, 324, '0', '11292', 0, -1074.766, -1615.533, 35.47324, 4.773477, 0, 0, -0.6851826, 0.7283714, 120, 255, 0, 28768), -- Ställe (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+113, 291024, 0, 45, 324, '0', '11292', 0, -1338.418, -1524.984, 54.83899, 4.184194, 0, 0, -0.8671722, 0.4980083, 120, 255, 0, 28768), -- Sägewerk (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+114, 291027, 0, 45, 324, '0', '11292', 0, -1416.01, -1556.474, 47.00423, 5.882198, 0, 0, -0.1991529, 0.9799684, 120, 255, 0, 28768), -- Sägewerk (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+115, 293687, 0, 45, 324, '0', '11292', 0, -797.8073, -2094.37, 65.57371, 3.760323, 0, 0, -0.952527, 0.304454, 120, 255, 0, 28768), -- Altar der Stürme (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+116, 293717, 0, 45, 324, '0', '11292', 0, -884.1875, -2011.887, 55.51393, 5.012016, 0, 0, -0.593648, 0.8047249, 120, 255, 0, 28768), -- Kriegswerkstatt (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+117, 293748, 0, 45, 324, '0', '11292', 0, -1185.254, -2274.165, 63.48311, 1.544618, 0, 0, 0.6977911, 0.7163013, 120, 255, 0, 28768), -- Gebäude (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+118, 293730, 0, 45, 324, '0', '11292', 0, -945.8854, -2033.49, 54.48686, 5.663594, 0, 0, -0.3048639, 0.9523959, 120, 255, 0, 28768), -- Tor von Ar'gorok (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+119, 293692, 0, 45, 324, '0', '11292', 0, -927.493, -2100.441, 60.26906, 1.337582, 0, 0, 0.620038, 0.7845718, 120, 255, 0, 28768), -- Kaserne (Area: Stromgarde Keep - Difficulty: 0)
(@OGUID+120, 236246, 0, 9734, 9743, '0', '11292', 0, -1539.812, -1745.815, 59.48491, 1.675531, 0, 0, 0.7431498, 0.6691251, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+121, 237961, 0, 9734, 9743, '0', '11292', 0, -1542.558, -1734.749, 59.54094, 3.159062, 0, 0, -0.9999619, 0.008734641, 120, 255, 1, 28768), -- Prison Door (Area: -Unknown- - Difficulty: 0)
(@OGUID+122, 236243, 0, 9734, 9743, '0', '11292', 0, -1538.634, -1742.266, 69.30846, 1.570812, 0, 0, 0.7071123, 0.7071013, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+123, 236245, 0, 9734, 9743, '0', '11292', 0, -1536.842, -1745.605, 59.48491, 2.373664, 0, 0, 0.927187, 0.3745989, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+124, 236233, 0, 9734, 9743, '0', '11292', 0, -1536.62, -1744.535, 69.55766, 3.909557, 0, 0, -0.9271803, 0.3746154, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+125, 236234, 0, 9734, 9743, '0', '11292', 0, -1538.682, -1738.351, 69.30846, 4.712406, 0, 0, -0.7071009, 0.7071127, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+126, 276448, 0, 9734, 9743, '0', '11292', 0, -1204.887, -1893.5, 88.2133, 3.865675, 0, 0, -0.9351759, 0.3541836, 120, 255, 1, 28768), -- Allianzbanner (Area: -Unknown- - Difficulty: 0)
(@OGUID+127, 236240, 0, 9734, 9743, '0', '11292', 0, -1531.17, -1733.787, 69.30846, 1.570812, 0, 0, 0.7071123, 0.7071013, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+128, 236241, 0, 9734, 9743, '0', '11292', 0, -1530.967, -1729.965, 69.30846, 4.712406, 0, 0, -0.7071009, 0.7071127, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+129, 236242, 0, 9734, 9743, '0', '11292', 0, -1531.293, -1742.338, 69.30846, 1.596993, 0, 0, 0.7163076, 0.6977846, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+130, 236244, 0, 9734, 9743, '0', '11292', 0, -1530.401, -1745.863, 59.46085, 1.588265, 0, 0, 0.7132559, 0.7009038, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+131, 236247, 0, 9734, 9743, '0', '11292', 0, -1527.995, -1739.453, 59.46085, 3.246347, 0, 0, -0.9986286, 0.05235322, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+132, 236248, 0, 9734, 9743, '0', '11292', 0, -1531.068, -1735.91, 59.46085, 4.72986, 0, 0, -0.7009029, 0.7132567, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+133, 236249, 0, 9734, 9743, '0', '11292', 0, -1544.03, -1727.679, 59.46085, 4.72986, 0, 0, -0.7009029, 0.7132567, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+134, 236230, 0, 9734, 9743, '0', '11292', 0, -1531.188, -1738.28, 69.30846, 4.738586, 0, 0, -0.6977844, 0.7163078, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+135, 236232, 0, 9734, 9743, '0', '11292', 0, -1522.224, -1739.26, 69.30846, 2.687823, 0, 0, 0.9743719, 0.2249431, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+136, 236235, 0, 9734, 9743, '0', '11292', 0, -1538.529, -1730.089, 69.30846, 4.738586, 0, 0, -0.6977844, 0.7163078, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+137, 236236, 0, 9734, 9743, '0', '11292', 0, -1538.544, -1734.069, 69.30846, 1.596993, 0, 0, 0.7163076, 0.6977846, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+138, 236237, 0, 9734, 9743, '0', '11292', 0, -1535.727, -1730.858, 69.30846, 3.787385, 0, 0, -0.9483204, 0.3173144, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+139, 236238, 0, 9734, 9743, '0', '11292', 0, -1528.352, -1741.713, 69.30846, 2.731454, 0, 0, 0.9790468, 0.2036352, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+140, 236239, 0, 9734, 9743, '0', '11292', 0, -1522.613, -1735.546, 69.30846, 3.159062, 0, 0, -0.9999619, 0.008734641, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+141, 236231, 0, 9734, 9743, '0', '11292', 0, -1522.39, -1732.439, 69.30846, 3.604123, 0, 0, -0.9733772, 0.2292091, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+142, 233463, 0, 9734, 9743, '0', '11292', 0, -1636.843, -1633.836, 75.95203, 4.005531, 0, 0, -0.908143, 0.41866, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+143, 233464, 0, 9734, 9743, '0', '11292', 0, -1641.471, -1630.756, 69.23766, 3.970627, 0, 0, -0.9153109, 0.4027481, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+144, 233465, 0, 9734, 9743, '0', '11292', 0, -1642.957, -1633.508, 69.21622, 1.544616, 0, 0, 0.6977901, 0.7163023, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+145, 233469, 0, 9734, 9743, '0', '11292', 0, -1638.639, -1638.586, 69.23219, 1.596976, 0, 0, 0.7163019, 0.6977904, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+146, 233470, 0, 9734, 9743, '0', '11292', 0, -1638.969, -1641.506, 69.49039, 2.626719, 0, 0, 0.9670458, 0.2546025, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+147, 233471, 0, 9734, 9743, '0', '11292', 0, -1640.436, -1643.182, 69.41315, 1.911136, 0, 0, 0.8166418, 0.5771448, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+148, 239051, 0, 9734, 9743, '0', '11292', 0, -1632.915, -1638.531, 69.17878, 4.660032, 0, 0, -0.7253733, 0.6883557, 120, 255, 1, 28768), -- Stuhl (Area: -Unknown- - Difficulty: 0)
(@OGUID+149, 233472, 0, 9734, 9743, '0', '11292', 0, -1641.526, -1638.606, 69.31413, 1.596976, 0, 0, 0.7163019, 0.6977904, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+150, 239052, 0, 9734, 9743, '0', '11292', 0, -1631.051, -1640.256, 69.17878, 3.150327, 0, 0, -0.9999905, 0.00436732, 120, 255, 1, 28768), -- Stuhl (Area: -Unknown- - Difficulty: 0)
(@OGUID+151, 239053, 0, 9734, 9743, '0', '11292', 0, -1632.836, -1641.983, 69.17878, 1.544616, 0, 0, 0.6977901, 0.7163023, 120, 255, 1, 28768), -- Stuhl (Area: -Unknown- - Difficulty: 0)
(@OGUID+152, 239054, 0, 9734, 9743, '0', '11292', 0, -1633.103, -1631.827, 69.17878, 4.660032, 0, 0, -0.7253733, 0.6883557, 120, 255, 1, 28768), -- Stuhl (Area: -Unknown- - Difficulty: 0)
(@OGUID+153, 239055, 0, 9734, 9743, '0', '11292', 0, -1632.865, -1636.511, 69.17878, 1.544616, 0, 0, 0.6977901, 0.7163023, 120, 255, 1, 28768), -- Stuhl (Area: -Unknown- - Difficulty: 0)
(@OGUID+154, 233478, 0, 9734, 9743, '0', '11292', 0, -1652.564, -1644.966, 75.80714, 3.368496, 0, 0, -0.9935713, 0.1132084, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+155, 233481, 0, 9734, 9743, '0', '11292', 0, -1641.815, -1629.817, 62.97914, 4.729844, 0, 0, -0.7009087, 0.7132511, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+156, 239056, 0, 9734, 9743, '0', '11292', 0, -1631.229, -1634.232, 69.17878, 3.150327, 0, 0, -0.9999905, 0.00436732, 120, 255, 1, 28768), -- Stuhl (Area: -Unknown- - Difficulty: 0)
(@OGUID+157, 239057, 0, 9734, 9743, '0', '11292', 0, -1634.156, -1629.829, 69.17878, 5.619962, 0, 0, -0.3255672, 0.9455189, 120, 255, 1, 28768), -- Stuhl (Area: -Unknown- - Difficulty: 0)
(@OGUID+158, 2046, 0, 9734, 9743, '0', '11292', 0, -1506.514, -1559.819, 44.38697, 5.288348, 0, 0, -0.4771585, 0.8788173, 120, 255, 1, 28768), -- Goldthorn (Area: -Unknown- - Difficulty: 0)
(@OGUID+159, 276831, 0, 9734, 0, '0', '11292', 0, -1089.726, -1681.74, 36.70649, 5.798356, 0, 0, -0.2400475, 0.9707611, 120, 255, 1, 28768), -- Allianzbanner (Area: 0 - Difficulty: 0)
-- (@OGUID+160, 291028, 0, 9734, 0, '0', '11292', 0, -1416.01, -1556.474, 47.00423, 5.882198, 0, 0, -0.1991529, 0.9799684, 120, 255, 1, 28768), -- Sägewerk (Area: 0 - Difficulty: 0) - !!! might be temporary spawn !!!
-- (@OGUID+161, 291025, 0, 9734, 9742, '0', '11292', 0, -1338.418, -1524.984, 54.83899, 4.184198, 0, 0, -0.8671713, 0.49801, 120, 255, 1, 28768), -- Sägewerk (Area: -Unknown- - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+162, 303154, 0, 9734, 9742, '0', '11292', 0, -1257.76, -1644.72, 48.09317, 4.73857, 0, 0, -0.6977901, 0.7163023, 120, 255, 1, 28768), -- VELLCINDA "ELSIE" BENTON (Area: -Unknown- - Difficulty: 0)
(@OGUID+163, 303152, 0, 9734, 9742, '0', '11292', 0, -1247.615, -1644.608, 48.09179, 4.71239, 0, 0, -0.7071066, 0.7071069, 120, 255, 1, 28768), -- THOMAS GRAU (Area: -Unknown- - Difficulty: 0)
(@OGUID+164, 303153, 0, 9734, 9742, '0', '11292', 0, -1258.059, -1650.766, 48.09179, 4.703663, 0, 0, -0.7101851, 0.704015, 120, 255, 1, 28768), -- JAKOB TEUFELSSTEIN (Area: -Unknown- - Difficulty: 0)
(@OGUID+165, 303155, 0, 9734, 9742, '0', '11292', 0, -1254.382, -1657.601, 48.09317, 4.694934, 0, 0, -0.7132511, 0.7009086, 120, 255, 1, 28768), -- PARQUAL FINTALLAS (Area: -Unknown- - Difficulty: 0)
(@OGUID+166, 303156, 0, 9734, 9742, '0', '11292', 0, -1250.406, -1650.906, 48.09394, 1.596973, 0, 0, 0.716301, 0.6977915, 120, 255, 1, 28768), -- JOHANNES TEUFELSSTEIN (Area: -Unknown- - Difficulty: 0)
(@OGUID+167, 303157, 0, 9734, 9742, '0', '11292', 0, -1254.292, -1650.915, 48.09326, 4.694934, 0, 0, -0.7132511, 0.7009086, 120, 255, 1, 28768), -- GEORG TEUFELSSTEIN (Area: -Unknown- - Difficulty: 0)
(@OGUID+168, 1624, 0, 9734, 0, '0', '11292', 0, -1187.054, -1520.946, 52.25962, 4.485497, 0, 0, -0.782608, 0.6225148, 120, 255, 1, 28768), -- Kingsblood (Area: 0 - Difficulty: 0)
(@OGUID+169, 239300, 0, 9734, 0, '0', '11292', 0, -1107.578, -1620.637, 37.13979, 2.364903, 0, 0, 0.9255371, 0.3786569, 120, 255, 1, 28768), -- Chair (Area: 0 - Difficulty: 0)
(@OGUID+170, 239301, 0, 9734, 0, '0', '11292', 0, -1110.407, -1620.909, 37.13979, 1.143175, 0, 0, 0.5409679, 0.8410432, 120, 255, 1, 28768), -- Chair (Area: 0 - Difficulty: 0)
-- (@OGUID+171, 291019, 0, 9734, 9737, '0', '11292', 0, -1074.766, -1615.533, 35.57324, 4.773477, 0, 0, -0.6851826, 0.7283714, 120, 255, 1, 28768), -- Ställe (Area: -Unknown- - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+172, 1732, 0, 9734, 9737, '0', '11292', 0, -1080.328, -1610.245, 35.47784, 2.268925, 0, 0, 0.9063072, 0.4226195, 120, 255, 1, 28768), -- Tin Vein (Area: -Unknown- - Difficulty: 0)
(@OGUID+173, 239300, 0, 9734, 9737, '0', '11292', 0, -1121.618, -1725.817, 41.37933, 4.73857, 0, 0, -0.6977901, 0.7163023, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+174, 239301, 0, 9734, 9737, '0', '11292', 0, -1119.394, -1727.586, 41.37933, 3.516848, 0, 0, -0.9824495, 0.1865285, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+175, 294169, 0, 9734, 9737, '0', '11292', 0, -954.4254, -1955.146, 51.55815, 2.380174, 0.09769106, -0.04067039, 0.923131, 0.369637, 120, 255, 1, 28768), -- Zerstörter Belagerungsturm der Horde (Area: -Unknown- - Difficulty: 0)
(@OGUID+176, 276642, 0, 9734, 9737, '0', '11292', 0, -1055.908, -1985.132, 61.99952, 3.021207, 0, 0, 0.998189, 0.06015627, 120, 255, 1, 28768), -- Allianzbanner (Area: -Unknown- - Difficulty: 0)
(@OGUID+177, 282728, 0, 9734, 9737, '0', '11292', 0, -833.5313, -1977.483, 52.58864, 4.708777, 0, 0, -0.7083826, 0.7058287, 120, 255, 0, 28768), -- Torflügel (Area: -Unknown- - Difficulty: 0)
(@OGUID+178, 1735, 0, 9734, 9737, '0', '11292', 0, -1010.582, -1747.004, 47.60801, 6.143561, 0, 0, -0.06975555, 0.9975641, 120, 255, 1, 28768), -- Iron Deposit (Area: -Unknown- - Difficulty: 0)
(@OGUID+179, 2046, 0, 9734, 0, '0', '11292', 0, -853.5261, -1724.389, 66.39225, 2.548179, 0, 0, 0.9563046, 0.2923723, 120, 255, 1, 28768), -- Goldthorn (Area: 0 - Difficulty: 0)
(@OGUID+180, 296939, 0, 9734, 0, '0', '11292', 0, -810.8264, -1742.188, 57.18639, 3.551751, 0, 0, -0.9790449, 0.2036445, 120, 255, 1, 28768), -- Lagerfeuer (Area: 0 - Difficulty: 0)
(@OGUID+181, 282734, 0, 9734, 0, '0', '11292', 0, -753.7518, -2065.411, 66.03969, 6.159253, 0, 0, -0.06192684, 0.9980807, 120, 255, 0, 28768), -- Seitentorflügel (Area: 0 - Difficulty: 0)
-- (@OGUID+182, 291025, 0, 9734, 9736, '0', '11292', 0, -774.309, -1755.563, 59.45906, 3.96369, 0, 0, -0.9167023, 0.3995709, 120, 255, 1, 28768), -- Sägewerk (Area: -Unknown- - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+183, 282728, 0, 9734, 9736, '0', '11292', 0, -935.8021, -2158.054, 59.05059, 0.7303931, 0, 0, 0.3571329, 0.9340536, 120, 255, 0, 28768), -- Torflügel (Area: -Unknown- - Difficulty: 0)
(@OGUID+184, 1732, 0, 9734, 0, '0', '11292', 0, -915.0452, -1890.877, 78.02392, 2.91469, 0, 0, 0.9935713, 0.1132084, 120, 255, 1, 28768), -- Tin Vein (Area: 0 - Difficulty: 0)
(@OGUID+185, 276401, 0, 9734, 9735, '0', '11292', 0, -1197.045, -2239.385, 64.03655, 1.136021, 0, 0, 0.5379562, 0.8429728, 120, 255, 1, 28768), -- Allianzbanner (Area: -Unknown- - Difficulty: 0)
(@OGUID+186, 276449, 0, 9734, 9735, '0', '11292', 0, -981.8542, -2498.217, 66.8079, 1.604925, 0, 0, 0.7190695, 0.6949382, 120, 255, 1, 28768), -- Hordenbanner (Area: -Unknown- - Difficulty: 0)
(@OGUID+187, 276449, 0, 9734, 0, '0', '11292', 0, -988.8386, -2532.035, 64.88365, 4.969014, 0, 0, -0.6108122, 0.7917755, 120, 255, 1, 28768), -- Hordenbanner (Area: 0 - Difficulty: 0)
(@OGUID+188, 2046, 0, 9734, 0, '0', '11292', 0, -1001.63, -2541.462, 59.99352, 1.221729, 0, 0, 0.573576, 0.8191524, 120, 255, 1, 28768), -- Goldthorn (Area: 0 - Difficulty: 0)
(@OGUID+189, 294065, 0, 9734, 0, '0', '11292', 0, -983.4375, -2515.224, 65.95506, 3.377227, -0.009179115, 0.003306389, -0.9930248, 0.1175012, 120, 255, 1, 28768), -- Lagerfeuer (Area: 0 - Difficulty: 0)
(@OGUID+190, 294066, 0, 9734, 0, '0', '11292', 0, -989.4097, -2518.603, 65.80788, 3.141593, 0, 0, -1, 0, 120, 255, 1, 28768), -- Amboss (Area: 0 - Difficulty: 0)
(@OGUID+191, 1624, 0, 9734, 0, '0', '11292', 0, -1121.7, -2573.67, 49.10684, 0.3316107, 0, 0, 0.1650467, 0.9862857, 120, 255, 1, 28768), -- Kingsblood (Area: 0 - Difficulty: 0)
(@OGUID+192, 1624, 0, 9734, 0, '0', '11292', 0, -1121.778, -2573.095, 49.22887, 3.787367, 0, 0, -0.9483232, 0.3173059, 120, 255, 1, 28768), -- Kingsblood (Area: 0 - Difficulty: 0)
(@OGUID+193, 1622, 0, 9734, 9749, '0', '11292', 0, -1126.622, -2965.731, 43.88925, 4.71239, 0, 0, -0.7071066, 0.7071069, 120, 255, 1, 28768), -- Bruiseweed (Area: -Unknown- - Difficulty: 0)
(@OGUID+194, 239300, 0, 9734, 9749, '0', '11292', 0, -995.0877, -2894.845, 62.34071, 6.239548, 0, 0, -0.02181721, 0.999762, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+195, 239301, 0, 9734, 9749, '0', '11292', 0, -993.1676, -2892.75, 62.34071, 5.017817, 0, 0, -0.5913115, 0.8064433, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+196, 2043, 0, 9734, 9749, '0', '11292', 0, -975.0243, -2790.507, 57.96639, 5.689774, 0, 0, -0.2923717, 0.9563047, 120, 255, 1, 28768), -- Khadgar's Whisker (Area: -Unknown- - Difficulty: 0)
(@OGUID+197, 1732, 0, 9734, 9749, '0', '11292', 0, -955.4139, -2974.046, 75.81394, 5.585054, 0, 0, -0.34202, 0.9396927, 120, 255, 1, 28768), -- Tin Vein (Area: -Unknown- - Difficulty: 0)
(@OGUID+198, 1623, 0, 9734, 0, '0', '11292', 0, -836.6215, -3135.757, 90.93797, 4.468043, 0, 0, -0.7880106, 0.6156617, 120, 255, 1, 28768), -- Wild Steelbloom (Area: 0 - Difficulty: 0)
(@OGUID+199, 1735, 0, 9734, 9762, '0', '11292', 0, -798.6354, -3361.986, 86.29368, 5.532695, 0, 0, -0.3665009, 0.9304177, 120, 255, 1, 28768), -- Iron Deposit (Area: -Unknown- - Difficulty: 0)
(@OGUID+200, 2046, 0, 9734, 9762, '0', '11292', 0, -797.441, -3349.615, 82.18264, 4.886924, 0, 0, -0.642787, 0.766045, 120, 255, 1, 28768), -- Goldthorn (Area: -Unknown- - Difficulty: 0)
(@OGUID+201, 235798, 0, 9734, 9762, '0', '11292', 0, -889.4486, -3505.933, 70.90434, 3.953173, 0, 0, -0.9187908, 0.3947448, 120, 255, 1, 28768), -- Kiste (Area: -Unknown- - Difficulty: 0)
(@OGUID+202, 236619, 0, 9734, 9762, '0', '11292', 0, -957.5854, -3475.209, 54.72679, 3.185267, 0, 0, -0.9997616, 0.02183524, 120, 255, 1, 28768), -- Kiste (Area: -Unknown- - Difficulty: 0)
(@OGUID+203, 278347, 0, 9734, 9762, '0', '11292', 0, -900.2708, -3522.415, 70.54472, 1.570796, 0, 0, 0.7071066, 0.7071069, 120, 255, 1, 28768), -- Auf Befehl des Kriegshäuptlings (Area: -Unknown- - Difficulty: 0)
(@OGUID+204, 2043, 0, 9734, 0, '0', '11292', 0, -1109.832, -3311.149, 51.88803, 1.884953, 0, 0, 0.8090162, 0.5877863, 120, 255, 1, 28768), -- Khadgar's Whisker (Area: 0 - Difficulty: 0)
(@OGUID+205, 2042, 0, 9734, 0, '0', '11292', 0, -1157.427, -3248.861, 39.35781, 5.794494, 0, 0, -0.2419214, 0.9702958, 120, 255, 1, 28768), -- Fadeleaf (Area: 0 - Difficulty: 0)
(@OGUID+206, 1624, 0, 9734, 0, '0', '11292', 0, -1072.257, -3242.056, 43.15642, 1.361356, 0, 0, 0.6293201, 0.7771462, 120, 255, 1, 28768), -- Kingsblood (Area: 0 - Difficulty: 0)
(@OGUID+207, 2043, 0, 9734, 0, '0', '11292', 0, -1319.667, -2862.892, 60.28788, 1.884953, 0, 0, 0.8090162, 0.5877863, 120, 255, 1, 28768), -- Khadgar's Whisker (Area: 0 - Difficulty: 0)
(@OGUID+208, 1735, 0, 9734, 0, '0', '11292', 0, -1334.637, -2822.408, 60.46437, 1.588249, 0, 0, 0.7132502, 0.7009096, 120, 255, 1, 28768), -- Iron Deposit (Area: 0 - Difficulty: 0)
(@OGUID+209, 299015, 0, 9734, 9747, '0', '11292', 0, -1261.363, -2528.66, 21.13029, 3.228903, 0, 0, -0.9990473, 0.04364112, 120, 255, 1, 28768), -- Lagerfeuer (Area: -Unknown- - Difficulty: 0)
(@OGUID+210, 278575, 0, 9734, 9747, '0', '11292', 0, -1225.571, -2541.793, 21.22159, 2.70726, 0, 0, 0.976512, 0.2154632, 120, 255, 0, 28768), -- Heldenaufruf (Area: -Unknown- - Difficulty: 0)
(@OGUID+211, 236993, 0, 9734, 9741, '0', '11292', 0, -1192.207, -2273.881, 85.64996, 4.921832, 0, 0, -0.6293192, 0.7771469, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+212, 236994, 0, 9734, 9741, '0', '11292', 0, -1190.031, -2275.892, 85.64996, 3.246347, 0, 0, -0.9986286, 0.05235322, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+213, 236995, 0, 9734, 9741, '0', '11292', 0, -1201.087, -2259.182, 63.48311, 4.04044, 0, 0, -0.9006977, 0.4344464, 120, 255, 1, 28768), -- Woodbench (Area: -Unknown- - Difficulty: 0)
(@OGUID+214, 296938, 0, 9734, 9741, '0', '11292', 0, -1056.226, -2033.335, 64.43498, 5.209812, 0, 0, -0.5112915, 0.8594074, 120, 255, 1, 28768), -- Lagerfeuer (Area: -Unknown- - Difficulty: 0)
(@OGUID+215, 296937, 0, 9734, 9739, '0', '11292', 0, -1030.254, -1965.137, 61.28568, 6.152292, 0, 0, -0.06540012, 0.9978591, 120, 255, 1, 28768), -- Lagerfeuer (Area: -Unknown- - Difficulty: 0)
-- (@OGUID+216, 290981, 0, 9734, 0, '0', '11292', 0, -1187.215, -1846.986, 91.20211, 4.703663, 0, 0, -0.7101851, 0.704015, 120, 255, 1, 28768), -- Turm (Area: 0 - Difficulty: 0) - !!! might be temporary spawn !!!
(@OGUID+217, 281861, 0, 9734, 9738, '0', '11292', 0, -1259.82, -1898.426, 13.50627, 0.2232302, -0.07776308, 0.004898071, 0.1120796, 0.9906397, 120, 255, 1, 28768), -- 281861 (Area: -Unknown- - Difficulty: 0)
(@OGUID+218, 281862, 0, 9734, 9738, '0', '11292', 0, -1251.595, -1921.306, 13.50627, 0.2232302, -0.07776308, 0.004898071, 0.1120796, 0.9906397, 120, 255, 1, 28768), -- 281862 (Area: -Unknown- - Difficulty: 0)
(@OGUID+219, 281857, 0, 9734, 9738, '0', '11292', 0, -1336.897, -1974.614, -12.58411, 3.245446, -0.004084587, -0.05207253, -0.9972706, 0.05218388, 120, 255, 1, 28768), -- 281857 (Area: -Unknown- - Difficulty: 0)
(@OGUID+220, 1735, 0, 9734, 9738, '0', '11292', 0, -1237.099, -2043.441, 32.77388, 1.710422, 0, 0, 0.7547092, 0.6560594, 120, 255, 1, 28768), -- Iron Deposit (Area: -Unknown- - Difficulty: 0)
(@OGUID+221, 1735, 0, 9734, 9738, '0', '11292', 0, -1278.809, -2041.613, 30.57922, 0.087266, 0, 0, 0.04361916, 0.9990482, 120, 255, 1, 28768), -- Iron Deposit (Area: -Unknown- - Difficulty: 0)
(@OGUID+222, 1623, 0, 9734, 9738, '0', '11292', 0, -1206.734, -2025.045, 72.60992, 1.431168, 0, 0, 0.6560583, 0.7547102, 120, 255, 1, 28768), -- Wild Steelbloom (Area: -Unknown- - Difficulty: 0)
(@OGUID+223, 239300, 0, 9734, 9738, '0', '11292', 0, -1339.983, -2043.446, 64.7636, 3.734993, 0, 0, -0.9563065, 0.2923661, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+224, 281860, 0, 9734, 9738, '0', '11292', 0, -1359.054, -1978.905, 9.244278, 0.3755443, -0.07791042, -0.001030922, 0.1871262, 0.9792409, 120, 255, 1, 28768), -- 281860 (Area: -Unknown- - Difficulty: 0)
(@OGUID+225, 239301, 0, 9734, 9738, '0', '11292', 0, -1340.28, -2046.273, 64.7636, 2.513255, 0, 0, 0.9510536, 0.3090259, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+226, 281545, 0, 9734, 9738, '0', '11292', 0, -1340.319, -2046.573, 65.20087, 4.51045, 0.1444936, -0.657218, -0.368659, 0.6413086, 120, 255, 1, 28768), -- Puppe (Area: -Unknown- - Difficulty: 0)
(@OGUID+227, 239300, 0, 9734, 0, '0', '11292', 0, -1328.863, -2068.293, 64.28481, 5.358142, 0, 0, -0.4462061, 0.8949302, 120, 255, 1, 28768), -- Chair (Area: 0 - Difficulty: 0)
(@OGUID+228, 239301, 0, 9734, 0, '0', '11292', 0, -1326.024, -2068.442, 64.28481, 4.136413, 0, 0, -0.8788214, 0.4771509, 120, 255, 1, 28768), -- Chair (Area: 0 - Difficulty: 0)
(@OGUID+229, 281859, 0, 9734, 9745, '0', '11292', 0, -1392.938, -1950.698, 2.226101, 0.3755792, -0.07719755, -0.001186371, 0.1871233, 0.9792977, 120, 255, 1, 28768), -- 281859 (Area: -Unknown- - Difficulty: 0)
(@OGUID+230, 2046, 0, 9734, 0, '0', '11292', 0, -1915.816, -2388.625, 61.77686, 0.6806767, 0, 0, 0.333806, 0.9426418, 120, 255, 1, 28768), -- Goldthorn (Area: 0 - Difficulty: 0)
(@OGUID+231, 233567, 0, 9734, 0, '0', '11292', 0, -1457.618, -2623.054, 49.87701, 0.6062793, 0, 0, 0.2985182, 0.9544039, 120, 255, 1, 28768), -- Bonfire (Area: 0 - Difficulty: 0)
(@OGUID+232, 2046, 0, 9734, 0, '0', '11292', 0, -1953.405, -2670.816, 81.20538, 1.762782, 0, 0, 0.7716246, 0.6360782, 120, 255, 1, 28768), -- Goldthorn (Area: 0 - Difficulty: 0)
(@OGUID+233, 2041, 0, 9734, 0, '0', '11292', 0, -1947.245, -2506.377, 70.68638, 1.221729, 0, 0, 0.573576, 0.8191524, 120, 255, 1, 28768), -- Liferoot (Area: 0 - Difficulty: 0)
(@OGUID+234, 180684, 0, 9734, 0, '0', '11292', 0, -1956.72, -2488.521, 68.91972, 3.141593, 0, 0, -1, 0, 120, 255, 1, 28768), -- Greater Sagefish School (Area: 0 - Difficulty: 0)
(@OGUID+235, 180684, 0, 9734, 0, '0', '11292', 0, -2184.53, -2417.62, 77.2851, 3.141593, 0, 0, -1, 0, 120, 255, 1, 28768), -- Greater Sagefish School (Area: 0 - Difficulty: 0)
(@OGUID+236, 2040, 0, 9734, 0, '0', '11292', 0, -2063.962, -2674.478, 89.97559, 1.623156, 0, 0, 0.7253742, 0.6883547, 120, 255, 1, 28768), -- Mithril Deposit (Area: 0 - Difficulty: 0)
(@OGUID+237, 1623, 0, 9734, 0, '0', '11292', 0, -2017.413, -2769.186, 90.94844, 5.427975, 0, 0, -0.4146929, 0.9099615, 120, 255, 1, 28768), -- Wild Steelbloom (Area: 0 - Difficulty: 0)
(@OGUID+238, 1735, 0, 9734, 0, '0', '11292', 0, -1979.533, -2760.436, 81.9707, 0.3141584, 0, 0, 0.1564341, 0.9876884, 120, 255, 1, 28768), -- Iron Deposit (Area: 0 - Difficulty: 0)
(@OGUID+239, 2043, 0, 9734, 0, '0', '11292', 0, -1932.453, -2765.299, 74.94865, 4.886924, 0, 0, -0.642787, 0.766045, 120, 255, 1, 28768), -- Khadgar's Whisker (Area: 0 - Difficulty: 0)
(@OGUID+240, 290278, 0, 9734, 9754, '0', '11292', 0, -1923.491, -2947.903, 107.6981, 4.860744, -0.009001732, -0.003762245, -0.6527567, 0.7575048, 120, 255, 1, 28768), -- Lagerfeuer (Area: -Unknown- - Difficulty: 0)
(@OGUID+241, 2043, 0, 9734, 9753, '0', '11292', 0, -1849.502, -3044.781, 57.63186, 2.234018, 0, 0, 0.8987932, 0.4383728, 120, 255, 1, 28768), -- Khadgar's Whisker (Area: -Unknown- - Difficulty: 0)
(@OGUID+242, 1624, 0, 9734, 9753, '0', '11292', 0, -1738.703, -3080.734, 31.94128, 3.926996, 0, 0, -0.9238787, 0.3826855, 120, 255, 1, 28768), -- Kingsblood (Area: -Unknown- - Difficulty: 0)
(@OGUID+243, 2042, 0, 9734, 9753, '0', '11292', 0, -1663.922, -3041.863, 25.07404, 0.2792516, 0, 0, 0.1391726, 0.9902682, 120, 255, 1, 28768), -- Fadeleaf (Area: -Unknown- - Difficulty: 0)
(@OGUID+244, 239300, 0, 9734, 9752, '0', '11292', 0, -1554.029, -2883.858, 15.63346, 2.251465, 0, 0, 0.9025831, 0.4305156, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+245, 239301, 0, 9734, 9752, '0', '11292', 0, -1556.87, -2883.808, 15.63346, 1.029737, 0, 0, 0.4924202, 0.8703576, 120, 255, 1, 28768), -- Chair (Area: -Unknown- - Difficulty: 0)
(@OGUID+246, 246660, 0, 9734, 0, '0', '11292', 0, -1328.344, -3182.103, 46.47487, 5.831146, 0, 0, -0.2241001, 0.9745662, 120, 255, 1, 28768), -- Grave Marker (Area: 0 - Difficulty: 0)
(@OGUID+247, 1624, 0, 9734, 0, '0', '11292', 0, -1262.45, -3524.802, 48.43735, 2.932139, 0, 0, 0.9945211, 0.1045355, 120, 255, 1, 28768), -- Kingsblood (Area: 0 - Difficulty: 0)
(@OGUID+248, 1735, 0, 9734, 0, '0', '11292', 0, -1391.372, -3406.521, 55.77206, 0.5585039, 0, 0, 0.2756367, 0.9612619, 120, 255, 1, 28768), -- Iron Deposit (Area: 0 - Difficulty: 0)
(@OGUID+249, 2043, 0, 9734, 0, '0', '11292', 0, -1548.314, -3426.097, 50.79822, 1.012289, 0, 0, 0.4848089, 0.8746201, 120, 255, 1, 28768); -- Khadgar's Whisker (Area: 0 - Difficulty: 0)

INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+250, 202879, 0, 9734, 0, '0', '11292', 0, -1551.898, -3424.681, 49.92352, 3.269002, 0, 0, -0.9979715, 0.06366175, 120, 255, 1, 28768), -- Ritual Drum (Area: 0 - Difficulty: 0)
(@OGUID+251, 291061, 0, 9734, 0, '0', '11292', 0, -1567.21, -3425.049, 49.28481, 2.426008, 0, 0, 0.9366722, 0.3502074, 120, 255, 1, 28768), -- Feuer (Area: 0 - Difficulty: 0)
(@OGUID+252, 177224, 0, 9734, 0, '0', '11292', 0, -1564.637, -3424.693, 49.28443, 0, 0, 0, 0, 1, 120, 255, 1, 28768), -- Troll Drum Sound Object (Area: 0 - Difficulty: 0)
(@OGUID+253, 180684, 0, 9734, 0, '0', '11292', 0, -1648.663, -3360.431, 24.11686, 3.141593, 0, 0, -1, 0, 120, 255, 1, 28768), -- Greater Sagefish School (Area: 0 - Difficulty: 0)
(@OGUID+254, 180684, 0, 9734, 0, '0', '11292', 0, -1639.83, -3347.45, 24.11686, 3.141593, 0, 0, -1, 0, 120, 255, 1, 28768), -- Greater Sagefish School (Area: 0 - Difficulty: 0)
(@OGUID+255, 177224, 0, 9734, 9753, '0', '11292', 0, -1675.509, -3389.889, 25.97141, 0, 0, 0, 0, 1, 120, 255, 1, 28768), -- Troll Drum Sound Object (Area: -Unknown- - Difficulty: 0)
(@OGUID+256, 2041, 0, 9734, 9753, '0', '11292', 0, -1663.233, -3430.517, 51.15871, 2.530723, 0, 0, 0.9537163, 0.3007079, 120, 255, 1, 28768), -- Liferoot (Area: -Unknown- - Difficulty: 0)
(@OGUID+257, 177224, 0, 9734, 9753, '0', '11292', 0, -1697.96, -3507.127, 60.17523, 0, 0, 0, 0, 1, 120, 255, 1, 28768), -- Troll Drum Sound Object (Area: -Unknown- - Difficulty: 0)
(@OGUID+258, 202879, 0, 9734, 9753, '0', '11292', 0, -1708.786, -3503.151, 60.2736, 2.741283, 0, 0, 0.9800358, 0.1988212, 120, 255, 1, 28768), -- Ritual Drum (Area: -Unknown- - Difficulty: 0)
(@OGUID+259, 1735, 0, 9734, 9753, '0', '11292', 0, -1738.941, -3477.406, 61.88559, 5.864307, 0, 0, -0.2079115, 0.9781476, 120, 255, 1, 28768), -- Iron Deposit (Area: -Unknown- - Difficulty: 0)
(@OGUID+260, 2041, 0, 9734, 9753, '0', '11292', 0, -1735.663, -3347.103, 26.15783, 5.585054, 0, 0, -0.34202, 0.9396927, 120, 255, 1, 28768), -- Liferoot (Area: -Unknown- - Difficulty: 0)
(@OGUID+261, 180684, 0, 9734, 9753, '0', '11292', 0, -1772.51, -3273.83, 24.11687, 3.141593, 0, 0, -1, 0, 120, 255, 1, 28768), -- Greater Sagefish School (Area: -Unknown- - Difficulty: 0)
(@OGUID+262, 1623, 0, 9734, 9753, '0', '11292', 0, -1917.493, -3337.014, 58.01579, 2.234018, 0, 0, 0.8987932, 0.4383728, 120, 255, 1, 28768), -- Wild Steelbloom (Area: -Unknown- - Difficulty: 0)
(@OGUID+263, 1735, 0, 9734, 9753, '0', '11292', 0, -1907.498, -3265.88, 74.21366, 4.939284, 0, 0, -0.6225138, 0.7826088, 120, 255, 1, 28768), -- Iron Deposit (Area: -Unknown- - Difficulty: 0)
(@OGUID+264, 1735, 0, 9734, 9753, '0', '11292', 0, -1898, -3252.609, 70.95932, 5.864307, 0, 0, -0.2079115, 0.9781476, 120, 255, 1, 28768), -- Iron Deposit (Area: -Unknown- - Difficulty: 0)
(@OGUID+265, 202879, 0, 9734, 9753, '0', '11292', 0, -1895.49, -3203.712, 54.28646, 2.046262, 0, 0, 0.8537426, 0.5206953, 120, 255, 1, 28768), -- Ritual Drum (Area: -Unknown- - Difficulty: 0)
(@OGUID+266, 177224, 0, 9734, 9753, '0', '11292', 0, -1890.481, -3197.7, 54.27744, 0, 0, 0, 0, 1, 120, 255, 1, 28768), -- Troll Drum Sound Object (Area: -Unknown- - Difficulty: 0)
(@OGUID+267, 299012, 0, 9734, 9753, '0', '11292', 0, -1804.717, -3206.635, 37.36467, 3.778642, 0, 0, -0.9496984, 0.3131659, 120, 255, 1, 28768), -- Lagerfeuer (Area: -Unknown- - Difficulty: 0)
(@OGUID+268, 177224, 0, 9734, 9753, '0', '11292', 0, -1801.99, -3206.953, 37.36522, 0, 0, 0, 0, 1, 120, 255, 1, 28768), -- Troll Drum Sound Object (Area: -Unknown- - Difficulty: 0)
(@OGUID+269, 1732, 0, 9734, 9753, '0', '11292', 0, -1848.266, -3141.722, 51.21503, 5.881761, 0, 0, -0.1993675, 0.9799248, 120, 255, 1, 28768), -- Tin Vein (Area: -Unknown- - Difficulty: 0)
(@OGUID+270, 2043, 0, 9734, 9753, '0', '11292', 0, -1680.115, -3190.538, 35.15001, 4.502952, 0, 0, -0.7771454, 0.6293211, 120, 255, 1, 28768), -- Khadgar's Whisker (Area: -Unknown- - Difficulty: 0)
(@OGUID+271, 177224, 0, 9734, 9753, '0', '11292', 0, -1666.55, -3233.226, 28.59443, 0, 0, 0, 0, 1, 120, 255, 1, 28768), -- Troll Drum Sound Object (Area: -Unknown- - Difficulty: 0)
(@OGUID+272, 299016, 0, 9734, 9753, '0', '11292', 0, -1667.217, -3235.927, 28.59383, 3.883358, 0, 0, -0.9320078, 0.3624383, 120, 255, 1, 28768), -- Lagerfeuer (Area: -Unknown- - Difficulty: 0)
(@OGUID+273, 202879, 0, 9734, 9753, '0', '11292', 0, -1671.153, -3224.184, 28.85069, 3.376004, 0, 0, -0.9931393, 0.1169375, 120, 255, 1, 28768), -- Ritual Drum (Area: -Unknown- - Difficulty: 0)
(@OGUID+274, 1735, 0, 9734, 9753, '0', '11292', 0, -1684.47, -2838.002, 43.96596, 4.468043, 0, 0, -0.7880106, 0.6156617, 120, 255, 1, 28768), -- Iron Deposit (Area: -Unknown- - Difficulty: 0)
(@OGUID+275, 1732, 0, 9734, 9746, '0', '11292', 0, -1709.397, -2137.954, 43.65903, 3.752462, 0, 0, -0.9537163, 0.3007079, 120, 255, 1, 28768), -- Tin Vein (Area: -Unknown- - Difficulty: 0)
(@OGUID+276, 1628, 0, 9734, 9746, '0', '11292', 0, -1487.936, -1978.031, 50.59102, 2.321287, 0, 0, 0.9170599, 0.3987495, 120, 255, 1, 28768); -- Grave Moss (Area: -Unknown- - Difficulty: 0)

DELETE FROM `gameobject_addon` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+364;
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`) VALUES
(@OGUID+1, 0, 0, 0.5000068, 0.8660215), -- -Unknown-
-- (@OGUID+17, 0, 0, 0.9999905, -0.004367381), -- Werkstatt - !!! might be temporary spawn !!!
-- (@OGUID+20, 0, 0, 0.999999, -0.001381202), -- Werkstatt - !!! might be temporary spawn !!!
-- (@OGUID+24, 0, 0, 0.00001144409, 1), -- Schloss - !!! might be temporary spawn !!!
-- (@OGUID+30, 0, 0, -0.7132454, 0.7009144), -- Altar der Könige - !!! might be temporary spawn !!!
-- (@OGUID+31, 0, 0, 0.9999619, -0.008734755), -- Kaserne - !!! might be temporary spawn !!!
-- (@OGUID+36, 0, 0, 0.952527, -0.3044541), -- Altar der Stürme - !!! might be temporary spawn !!!
-- (@OGUID+37, 0, 0, -0.3048639, 0.9523959), -- Tor von Ar'gorok - !!! might be temporary spawn !!!
-- (@OGUID+38, 0, 0, -0.593648, 0.8047249), -- Kriegswerkstatt - !!! might be temporary spawn !!!
-- (@OGUID+41, 0, 0, 0.6977912, 0.7163013), -- Arkaner Turm - !!! might be temporary spawn !!!
(@OGUID+42, 0, 0, 0.00001144409, 1), -- Stool
(@OGUID+43, 0, 0, 0.00001144409, 1), -- Stool
(@OGUID+44, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+45, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+46, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+47, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+48, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+49, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+50, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+52, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+53, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+54, 0, 0, 0.00001144409, 1), -- Bench
(@OGUID+55, 0, 0, 0.00001144409, 1), -- Bench
(@OGUID+56, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+57, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+58, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+59, 0, 0, 0.00001144409, 1), -- Bench
(@OGUID+60, 0, 0, 0.00001144409, 1), -- Bench
(@OGUID+61, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+62, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+63, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+64, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+65, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+66, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+67, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+68, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+69, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+70, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+71, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+72, 0, 0, 0.00001144409, 1), -- Stool
(@OGUID+73, 0, 0, 0.00001144409, 1), -- Stool
(@OGUID+74, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+75, 0, 0, 0.4539871, 0.8910083), -- Bench
(@OGUID+76, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+77, 0, 0, 0.4539871, 0.8910083), -- Stool
(@OGUID+78, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+79, 0, 0, 0.4539871, 0.8910083), -- Stool
(@OGUID+80, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+83, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+84, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+85, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+86, 0, 0, 0.00001144409, 1), -- Chair
(@OGUID+94, 0, 0, 0.4539871, 0.8910083), -- Anvil
(@OGUID+95, 0, 0, 0.4539871, 0.8910083), -- Anvil
(@OGUID+96, 0, 0, 0.4539871, 0.8910083), -- Doodad_6HU_BLACKSMITH_FLOORPLATE002
(@OGUID+103, 0, 0, 0.9999619, -0.008734755), -- Prison Door
(@OGUID+120, 0, 0, 0.9999619, -0.008734755), -- Chair
(@OGUID+121, 0, 0, 0.9999619, -0.008734755), -- Prison Door
(@OGUID+122, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+123, 0, 0, 0.9999619, -0.008734755), -- Chair
(@OGUID+124, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+125, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+127, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+128, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+129, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+130, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+131, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+132, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+133, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+134, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+135, 0, 0, 0.9999619, -0.008734755), -- Chair
(@OGUID+136, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+137, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+138, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+139, 0, 0, 0.9999619, -0.008734755), -- Woodbench
(@OGUID+140, 0, 0, 0.9999619, -0.008734755), -- Chair
(@OGUID+141, 0, 0, 0.9999619, -0.008734755), -- Chair
(@OGUID+142, 0, 0, -0.700909, 0.7132508), -- Chair
(@OGUID+143, 0, 0, -0.700909, 0.7132508), -- Chair
(@OGUID+144, 0, 0, -0.700909, 0.7132508), -- Chair
(@OGUID+145, 0, 0, -0.700909, 0.7132508), -- Chair
(@OGUID+146, 0, 0, -0.700909, 0.7132508), -- Chair
(@OGUID+147, 0, 0, -0.700909, 0.7132508), -- Chair
(@OGUID+148, 0, 0, -0.700909, 0.7132508), -- Stuhl
(@OGUID+149, 0, 0, -0.700909, 0.7132508), -- Chair
(@OGUID+150, 0, 0, -0.700909, 0.7132508), -- Stuhl
(@OGUID+151, 0, 0, -0.700909, 0.7132508), -- Stuhl
(@OGUID+152, 0, 0, -0.700909, 0.7132508), -- Stuhl
(@OGUID+153, 0, 0, -0.700909, 0.7132508), -- Stuhl
(@OGUID+154, 0, 0, -0.700909, 0.7132508), -- Chair
(@OGUID+155, 0, 0, -0.700909, 0.7132508), -- Chair
(@OGUID+156, 0, 0, -0.700909, 0.7132508), -- Stuhl
(@OGUID+157, 0, 0, -0.700909, 0.7132508), -- Stuhl
-- (@OGUID+160, 0, 0, -0.199153, 0.9799684), -- Sägewerk - !!! might be temporary spawn !!!
-- (@OGUID+161, 0, 0, 0.8671721, -0.4980085), -- Sägewerk - !!! might be temporary spawn !!!
(@OGUID+169, 0, 0, 0.04797129, 0.9988487), -- Chair
(@OGUID+170, 0, 0, 0.04797129, 0.9988487), -- Chair
-- (@OGUID+171, 0, 0, -0.6851826, 0.7283714), -- Ställe - !!! might be temporary spawn !!!
(@OGUID+173, 0, 0, 0.9440889, 0.3296909), -- Chair
(@OGUID+174, 0, 0, 0.9440889, 0.3296909), -- Chair
-- (@OGUID+182, 0, 0, 0.9167023, -0.399571), -- Sägewerk - !!! might be temporary spawn !!!
(@OGUID+194, 0, 0, 0.9153125, -0.4027443), -- Chair
(@OGUID+195, 0, 0, 0.9153125, -0.4027443), -- Chair
(@OGUID+201, 0, 0, -0.7283716, 0.6851823), -- Kiste
(@OGUID+202, 0, 0, 0.9999905, 0.004363988), -- Kiste
(@OGUID+211, 0, 0, 0.6977912, 0.7163013), -- Chair
(@OGUID+212, 0, 0, 0.6977912, 0.7163013), -- Chair
(@OGUID+213, 0, 0, 0.6977912, 0.7163013), -- Woodbench
-- (@OGUID+216, 0, 0, -0.7101858, 0.7040142), -- Turm - !!! might be temporary spawn !!!
(@OGUID+217, 0, 0, -0.669131, 0.7431445), -- 281861
(@OGUID+218, 0, 0, -0.669131, 0.7431445), -- 281862
(@OGUID+219, 0, 0, -0.669131, 0.7431445), -- 281857
(@OGUID+223, 0, 0, 0.6691245, 0.7431503), -- Chair
(@OGUID+224, 0, 0, -0.669131, 0.7431445), -- 281860
(@OGUID+225, 0, 0, 0.6691245, 0.7431503), -- Chair
(@OGUID+227, 0, 0, 0.9996571, 0.02618632), -- Chair
(@OGUID+228, 0, 0, 0.9996571, 0.02618632), -- Chair
(@OGUID+229, 0, 0, -0.669131, 0.7431445), -- 281859
(@OGUID+244, 0, 0, -0.008729737, 0.9999619), -- Chair
(@OGUID+245, 0, 0, -0.008729737, 0.9999619); -- Chair


DELETE FROM `creature_template_addon` WHERE `entry` IN (148922 /*148922*/, 143852 /*143852 - -Unknown-*/, 143853 /*143853 - -Unknown-*/, 142995 /*142995*/, 147206 /*147206*/, 142994 /*142994*/, 142998 /*142998*/, 142685 /*142685*/, 142700 /*142700*/, 142997 /*142997*/, 143005 /*143005*/, 140552 /*140552*/, 142993 /*142993*/, 142721 /*142721*/, 143498 /*143498*/, 143004 /*143004*/, 143402 /*143402*/, 143380 /*143380*/, 148927 /*148927*/, 147972 /*147972*/, 147973 /*147973*/, 143008 /*143008*/, 143007 /*143007*/, 143541 /*143541*/, 143420 /*143420*/, 142834 /*142834 (Genny)*/, 142734 /*142734 (Verteidiger von Arathor) - -Unknown-, -Unknown-, -Unknown-*/, 142709 /*142709 (Bestienreiter Kama) - -Unknown-, -Unknown-, -Unknown-*/, 142679 /*142679 (Fischer der Bleichborken) - -Unknown-*/, 142596 /*142596 (Axtwerfer der Bleichborken) - -Unknown-*/, 142681 /*142681 (Hexendoktor der Bleichborken) - -Unknown-, -Unknown-*/, 142675 /*142675 (Schattenjäger der Bleichborken) - -Unknown-*/, 142696 /*142696 (Räuber der Bleichborken) - -Unknown-, -Unknown-*/, 142692 /*142692 (Nimar der Töter) - -Unknown-, -Unknown-*/, 142676 /*142676 (Kopfjäger der Bleichborken) - -Unknown-*/, 142438 /*142438 (Venomarus) - -Unknown-*/, 142741 /*142741 (Verdammnisreiter Helgrim) - -Unknown-, -Unknown-, -Unknown-*/, 143901 /*143901 (Apotheker Jorell)*/, 142732 /*142732 (Schattenpriester der Entweihten) - -Unknown-, -Unknown-*/, 142747 /*142747 (Grunzer von Hammerfall)*/, 142717 /*142717 (Zetermordio) - Ghost State V2 (Blue)*/, 142716 /*142716 (Menschenjäger Rog) - -Unknown-, -Unknown-*/, 141942 /*141942 (Molok der Zermalmer) - -Unknown-, -Unknown-*/, 142021 /*142021 (Troll der Bleichborken) - -Unknown-, -Unknown-*/, 141649 /*141649 (Zidormi) - Aura Tall - Yellow*/, 141947 /*141947 (Schläger der Felsfäuste) - -Unknown-*/, 142340 /*142340 (Hochlandfleischpirscher)*/, 142333 /*142333 (Riesiger Ebenenkrabbler)*/, 142683 /*142683 (Ruul Zweistein) - -Unknown-, Fire Channeling*/, 142435 /*142435 (Seuchenfeder) - -Unknown-*/, 142337 /*142337 (Mesabussard)*/, 142339 /*142339 (Hochlandhauer)*/, 143318 /*143318 (Vorarbeiterin Tully)*/, 141620 /*141620 (Grollender Goliath) - -Unknown-, -Unknown-*/, 142006 /*142006 (Leitsteinausgräber)*/, 144047 /*144047 (Nordric Albrecht)*/, 144045 /*144045 (Greta Albrecht)*/, 144050 /*144050 (Willa)*/, 144048 /*144048 (Vaughn)*/, 142684 /*142684 (Kovork) - -Unknown-, -Unknown-*/, 142686 /*142686 (Faulbauch) - -Unknown-, -Unknown-*/, 141946 /*141946 (Magus der Felsfäuste) - -Unknown-*/, 142026 /*142026 (Getreuer des Heldenrufpasses) - -Unknown-, -Unknown-*/, 142027 /*142027 (Spruchwirker des Heldenrufpasses)*/, 142694 /*142694 (Vollstrecker der Felsfäuste) - -Unknown-*/, 142693 /*142693 (Oger der Felsfäuste) - -Unknown-*/, 142012 /*142012 (Initiand des Hochstands) - -Unknown-, -Unknown-*/, 142010 /*142010 (Verteidiger des Hochstands) - -Unknown-, -Unknown-, -Unknown-*/, 142009 /*142009 (Armbrustschütze des Hochstands) - -Unknown-, -Unknown-*/, 142034 /*142034 (Priester von Stromgarde) - -Unknown-, -Unknown-*/, 142011 /*142011 (Vorgezogener Aufklärer)*/, 40789 /*40789 (Generic Controller Bunny (CSA))*/, 142003 /*142003 (Flammenbinder der Wildhämmer) - -Unknown-*/, 142002 /*142002 (Spruchwirker des Zirkels) - Arcane Channeling*/, 142001 /*142001 (Lehrling des Zirkels) - Frost Armor*/, 142335 /*142335 (Junger Mesabussard)*/, 141737 /*141737 (Emily Jackson)*/, 141736 /*141736 (Hammon Karwn)*/, 144054 /*144054 (Androd Fadran)*/, 141770 /*141770 (Pferd)*/, 141735 /*141735 (Drovnar Starkbräu)*/, 141733 /*141733 (Narj Schnitzelschnitt)*/, 144055 /*144055 (Cedrik Prosa)*/, 144065 /*144065 (Samuel Falk)*/, 141738 /*141738 (Kommandantin Amaren)*/, 144063 /*144063 (Radulf Leder)*/, 141761 /*141761 (Targot Klingeltaschen)*/, 141734 /*141734 (Jannos Eisenwill)*/, 141757 /*141757 (Elitesoldat des Bundes von Arathor)*/, 141732 /*141732 (Vikki Lonsav)*/, 141756 /*141756 (Verteidiger der Zuflucht)*/, 142731 /*142731 (Fußsoldat der Entweihten) - -Unknown-, -Unknown-, -Unknown-*/, 141616 /*141616 (Donnernder Goliath) - -Unknown-, -Unknown-*/, 142730 /*142730 (Armbrustschütze der Entweihten) - -Unknown-, -Unknown-*/, 61704 /*61704 (Grasslands Cottontail)*/, 142437 /*142437 (Schädelreißer) - -Unknown-*/, 142566 /*142566 (Kobold der Trockenstoppel)*/, 144068 /*144068 (Tunkk)*/, 144139 /*144139 (Gastwirt Adegwa)*/, 144059 /*144059 (Jun'ha)*/, 144057 /*144057 (Graud)*/, 144066 /*144066 (Brenn)*/, 144061 /*144061 (Korin Teufel)*/, 144073 /*144073 (Drum Teufel)*/, 144072 /*144072 (Gor'mul)*/, 144140 /*144140 (Tharlidun)*/, 144060 /*144060 (Keena)*/, 141876 /*141876 (Peon von Hammerfall) - -Unknown-*/, 144058 /*144058 (Wächter von Hammerfall) - Revenge Trigger*/, 144070 /*144070 (Uttnar)*/, 144069 /*144069 (Urda)*/, 144062 /*144062 (Mu'uta)*/, 142569 /*142569 (Sleeby)*/, 142571 /*142571 (Feeboz)*/, 142570 /*142570 (Znort)*/, 142433 /*142433 (Fozruk) - -Unknown-*/, 141618 /*141618 (Überschäumender Goliath) - -Unknown-, -Unknown-*/, 141658 /*141658 (Überschäumender Wächter) - Frost Armor, -Unknown-*/, 141725 /*141725 (Brennender Verbannter) - -Unknown-*/, 141659 /*141659 (Grollender Wächter) - -Unknown-*/, 141663 /*141663 (Brennender Wächter) - -Unknown-*/, 141648 /*141648 (Donnernder Wächter) - -Unknown-*/, 141727 /*141727 (Rumpelnder Verbannter) - -Unknown-*/, 141726 /*141726 (Schäumender Verbannter) - Frost Armor, -Unknown-*/, 141724 /*141724 (Donnernder Verbannter) - -Unknown-*/, 141668 /*141668 (Echo von Myzrael) - -Unknown-*/, 142688 /*142688 (Darbel Montrose) - -Unknown-, -Unknown-*/, 142690 /*142690 (Sängerin) - -Unknown-, -Unknown-*/, 142729 /*142729 (Ernteschnitter des Syndikats) - -Unknown-*/, 143433 /*143433 (Ernteschredder des Syndikats) - -Unknown-*/, 142705 /*142705 (Pfadpirscher des Syndikats) - -Unknown-*/, 142704 /*142704 (Söldner des Syndikats) - -Unknown-*/, 142338 /*142338 (Hochlandschreiter)*/, 143599 /*143599 (Schlachtzauberer der Heulenden Verdammnis)*/, 143598 /*143598 (Ingenieur der Heulenden Verdammnis) - -Unknown-*/, 143597 /*143597 (Schreckensschild der Heulenden Verdammnis) - -Unknown-, -Unknown-, -Unknown-*/, 138123 /*138123 (Geschütz der Heulenden Verdammnis) - Ride Vehicle Hardcoded, -Unknown-*/, 138133 /*138133 (Kommandantin der Heulenden Verdammnis) - Ride Vehicle Hardcoded*/, 138122 /*138122 (Die Heulende Verdammnis)*/, 142423 /*142423 (Aufseher Krix) - Dual Wield, -Unknown-*/, 143372 /*143372 (Vorarbeiter Drogg)*/, 141615 /*141615 (Brennender Goliath) - -Unknown-, -Unknown-, -Unknown-*/, 142045 /*142045 (Buddler der Trockenstoppel)*/, 142041 /*142041 (Armbrustschütze des Nordhofs) - -Unknown-, -Unknown-*/, 142047 /*142047 (Feldvermesser der Trockenstoppel) - Frost Armor*/, 142038 /*142038 (Verteidiger des Nordhofs) - -Unknown-, -Unknown-, -Unknown-*/, 142039 /*142039 (Ritter des Nordhofs) - -Unknown-, -Unknown-, -Unknown-*/, 142725 /*142725 (Schreckliche Erscheinung) - -Unknown-, [DND] Shadowy Ghost Visual*/, 142723 /*142723 (Rachsüchtiger Geist) - -Unknown-*/, 50770 /*50770 (Zorn)*/, 142508 /*142508 (Zweigfürst Aldrus) - -Unknown-*/, 143373 /*143373 (Graul)*/, 142436 /*142436 (Zornschnabel) - -Unknown-*/, 142440 /*142440 (Yogursa) - -Unknown-*/, 142334 /*142334 (Ebenenkrabbler)*/, 137072 /*137072 (Timbet)*/, 137073 /*137073 (Prinzessin)*/, 142017 /*142017 (Kavallerist des Heldenrufpasses) - -Unknown-, -Unknown-, -Unknown-*/, 142018 /*142018 (Milizsoldat von Neuhof) - -Unknown-, -Unknown-*/, 142013 /*142013 (Hochlandarbeiter) - -Unknown-*/, 142014 /*142014 (Landarbeiter von Neuhof)*/, 142016 /*142016 (Hund von Neuhof)*/, 142015 /*142015 (Jäger von Neuhof) - -Unknown-, -Unknown-*/, 142342 /*142342 (Heimtückischer Schwarzbär)*/, 142343 /*142343 (Tobende Eulenbestie)*/, 143321 /*143321 (Bodo der Baumstampfer)*/, 142007 /*142007 (Hochlandholzfäller)*/, 142347 /*142347 (Wildpferd)*/, 142019 /*142019 (Schütze des Heldenrufpasses)*/, 142005 /*142005 (Verteidiger des Heldenrufpasses) - -Unknown-, -Unknown-, -Unknown-*/, 142036 /*142036 (Zauberer von Stromgarde)*/, 142835 /*142835 (Murrer)*/, 133890 /*133890 (Jonathan Flynn)*/, 133958 /*133958 (Tregan Hügelhub) - -Unknown-*/, 133582 /*133582 (Dorfbewohner aus Arathi)*/, 133711 /*133711 (Steinmetz von Stromgarde) - -Unknown-*/, 133530 /*133530 (Zwergeningenieur)*/, 60197 /*60197 (Training Dummy) - Training Dummy Marker*/, 143410 /*143410 (Greif der Allianz)*/, 142008 /*142008 (Grayson Bell)*/, 133779 /*133779 (Kürassier Wrenn) - -Unknown-, -Unknown-, -Unknown-*/, 143018 /*143018 (Hauptmann Roderick Bräustein)*/, 142033 /*142033 (Fußsoldat von Stromgarde) - -Unknown-, -Unknown-, -Unknown-*/, 133661 /*133661 (Brawley Steinbraue)*/, 127851 /*127851 (Belagerungsmaschine der Allianz) - -Unknown-*/, 133867 /*133867 (Balinda Dunkelstein)*/, 142131 /*142131 (Scharfschütze von Stromgarde)*/, 133932 /*133932 (Godrey Rotbart)*/, 133633 /*133633 (Geldrin)*/, 143172 /*143172 (Yvera Dämmerschwinge)*/, 142826 /*142826 (Altarit Jesse Taylor)*/, 142828 /*142828 (Gardist von Stromgarde)*/, 49999 /*49999 (Grasslands Cottontail)*/, 142718 /*142718 (Greifenreiter von Stromgarde)*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(148922, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 148922
(143852, 0, 0, 0, 1, 0, 0, 0, 0, '261444'), -- 143852 - -Unknown-
(143853, 0, 0, 0, 1, 0, 0, 0, 0, '261444'), -- 143853 - -Unknown-
(142995, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142995
(147206, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 147206
(142994, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142994
(142998, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142998
(142685, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142685
(142700, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142700
(142997, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142997
(143005, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143005
(140552, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 140552
(142993, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142993
(142721, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142721
(143498, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 143498
(143004, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143004
(143402, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 143402
(143380, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143380
(148927, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 148927
(147972, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 147972
(147973, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 147973
(143008, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143008
(143007, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143007
(143541, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 143541
(143420, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143420
(142834, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 142834 (Genny)
(142734, 0, 0, 7, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 142734 (Verteidiger von Arathor) - -Unknown-, -Unknown-, -Unknown-
(142709, 0, 14345, 0, 1, 0, 0, 0, 0, '287902 288015 288177'), -- 142709 (Bestienreiter Kama) - -Unknown-, -Unknown-, -Unknown-
(142679, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- 142679 (Fischer der Bleichborken) - -Unknown-
(142596, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- 142596 (Axtwerfer der Bleichborken) - -Unknown-
(142681, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288177'), -- 142681 (Hexendoktor der Bleichborken) - -Unknown-, -Unknown-
(142675, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- 142675 (Schattenjäger der Bleichborken) - -Unknown-
(142696, 0, 59537, 0, 1, 0, 0, 0, 0, '288015 288177'), -- 142696 (Räuber der Bleichborken) - -Unknown-, -Unknown-
(142692, 0, 0, 0, 1, 0, 0, 0, 0, '287910 288177'), -- 142692 (Nimar der Töter) - -Unknown-, -Unknown-
(142676, 0, 0, 0, 1, 0, 0, 0, 0, '288177'), -- 142676 (Kopfjäger der Bleichborken) - -Unknown-
(142438, 0, 0, 0, 1, 0, 0, 0, 0, '287965'), -- 142438 (Venomarus) - -Unknown-
(142741, 0, 87773, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 142741 (Verdammnisreiter Helgrim) - -Unknown-, -Unknown-, -Unknown-
(143901, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 143901 (Apotheker Jorell)
(142732, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288161'), -- 142732 (Schattenpriester der Entweihten) - -Unknown-, -Unknown-
(142747, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142747 (Grunzer von Hammerfall)
(142717, 0, 0, 0, 1, 0, 0, 0, 0, '193414'), -- 142717 (Zetermordio) - Ghost State V2 (Blue)
(142716, 0, 0, 0, 1, 0, 0, 0, 0, '287909 288178'), -- 142716 (Menschenjäger Rog) - -Unknown-, -Unknown-
(141942, 0, 0, 0, 1, 0, 0, 0, 0, '287958 288178'), -- 141942 (Molok der Zermalmer) - -Unknown-, -Unknown-
(142021, 0, 0, 1, 1, 0, 0, 0, 0, '288015 288177'), -- 142021 (Troll der Bleichborken) - -Unknown-, -Unknown-
(141649, 0, 0, 33554432, 1, 0, 0, 0, 0, '132482'), -- 141649 (Zidormi) - Aura Tall - Yellow
(141947, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- 141947 (Schläger der Felsfäuste) - -Unknown-
(142340, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142340 (Hochlandfleischpirscher)
(142333, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142333 (Riesiger Ebenenkrabbler)
(142683, 0, 0, 0, 1, 0, 0, 0, 0, '287911 170528'), -- 142683 (Ruul Zweistein) - -Unknown-, Fire Channeling
(142435, 0, 0, 50331648, 1, 0, 0, 0, 0, '287960'), -- 142435 (Seuchenfeder) - -Unknown-
(142337, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 142337 (Mesabussard)
(142339, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142339 (Hochlandhauer)
(143318, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143318 (Vorarbeiterin Tully)
(141620, 0, 0, 0, 1, 0, 0, 0, 0, '287962 288179'), -- 141620 (Grollender Goliath) - -Unknown-, -Unknown-
(142006, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142006 (Leitsteinausgräber)
(144047, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 144047 (Nordric Albrecht)
(144045, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 144045 (Greta Albrecht)
(144050, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 144050 (Willa)
(144048, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 144048 (Vaughn)
(142684, 0, 0, 0, 1, 0, 0, 0, 0, '287908 288178'), -- 142684 (Kovork) - -Unknown-, -Unknown-
(142686, 0, 0, 0, 1, 0, 0, 0, 0, '287904 288178'), -- 142686 (Faulbauch) - -Unknown-, -Unknown-
(141946, 0, 0, 0, 0, 0, 0, 0, 0, '288178'), -- 141946 (Magus der Felsfäuste) - -Unknown-
(142026, 0, 0, 0, 1, 0, 0, 0, 0, '288015 288161'), -- 142026 (Getreuer des Heldenrufpasses) - -Unknown-, -Unknown-
(142027, 0, 21939, 0, 1, 0, 0, 0, 0, ''), -- 142027 (Spruchwirker des Heldenrufpasses)
(142694, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- 142694 (Vollstrecker der Felsfäuste) - -Unknown-
(142693, 0, 0, 0, 1, 0, 0, 0, 0, '288178'), -- 142693 (Oger der Felsfäuste) - -Unknown-
(142012, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288161'), -- 142012 (Initiand des Hochstands) - -Unknown-, -Unknown-
(142010, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 142010 (Verteidiger des Hochstands) - -Unknown-, -Unknown-, -Unknown-
(142009, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- 142009 (Armbrustschütze des Hochstands) - -Unknown-, -Unknown-
(142034, 0, 0, 0, 0, 0, 0, 0, 0, '288015 288161'), -- 142034 (Priester von Stromgarde) - -Unknown-, -Unknown-
(142011, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142011 (Vorgezogener Aufklärer)
(40789, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 40789 (Generic Controller Bunny (CSA))
(142003, 0, 0, 0, 0, 0, 0, 0, 0, '259919'), -- 142003 (Flammenbinder der Wildhämmer) - -Unknown-
(142002, 0, 21939, 0, 0, 0, 0, 0, 0, '54219'), -- 142002 (Spruchwirker des Zirkels) - Arcane Channeling
(142001, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- 142001 (Lehrling des Zirkels) - Frost Armor
(142335, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 142335 (Junger Mesabussard)
(141737, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141737 (Emily Jackson)
(141736, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141736 (Hammon Karwn)
(144054, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144054 (Androd Fadran)
(141770, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 141770 (Pferd)
(141735, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141735 (Drovnar Starkbräu)
(141733, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141733 (Narj Schnitzelschnitt)
(144055, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144055 (Cedrik Prosa)
(144065, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144065 (Samuel Falk)
(141738, 0, 14338, 0, 257, 0, 0, 0, 0, ''), -- 141738 (Kommandantin Amaren)
(144063, 0, 14337, 0, 257, 0, 0, 0, 0, ''), -- 144063 (Radulf Leder)
(141761, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141761 (Targot Klingeltaschen)
(141734, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141734 (Jannos Eisenwill)
(141757, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141757 (Elitesoldat des Bundes von Arathor)
(141732, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141732 (Vikki Lonsav)
(141756, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141756 (Verteidiger der Zuflucht)
(142731, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 142731 (Fußsoldat der Entweihten) - -Unknown-, -Unknown-, -Unknown-
(141616, 0, 0, 0, 1, 0, 0, 0, 0, '287964 288179'), -- 141616 (Donnernder Goliath) - -Unknown-, -Unknown-
(142730, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- 142730 (Armbrustschütze der Entweihten) - -Unknown-, -Unknown-
(61704, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 61704 (Grasslands Cottontail)
(142437, 0, 0, 0, 1, 0, 0, 0, 0, '287963'), -- 142437 (Schädelreißer) - -Unknown-
(142566, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142566 (Kobold der Trockenstoppel)
(144068, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144068 (Tunkk)
(144139, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144139 (Gastwirt Adegwa)
(144059, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144059 (Jun'ha)
(144057, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144057 (Graud)
(144066, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144066 (Brenn)
(144061, 0, 0, 0, 256, 0, 0, 0, 0, ''), -- 144061 (Korin Teufel)
(144073, 0, 0, 0, 256, 0, 0, 0, 0, ''), -- 144073 (Drum Teufel)
(144072, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144072 (Gor'mul)
(144140, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144140 (Tharlidun)
(144060, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144060 (Keena)
(141876, 0, 0, 0, 1, 0, 0, 0, 0, '268945'), -- 141876 (Peon von Hammerfall) - -Unknown-
(144058, 0, 0, 0, 257, 0, 0, 0, 0, '5301'), -- 144058 (Wächter von Hammerfall) - Revenge Trigger
(144070, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144070 (Uttnar)
(144069, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 144069 (Urda)
(144062, 0, 0, 0, 258, 0, 0, 0, 0, ''), -- 144062 (Mu'uta)
(142569, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142569 (Sleeby)
(142571, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142571 (Feeboz)
(142570, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142570 (Znort)
(142433, 0, 0, 0, 1, 0, 0, 0, 0, '287957'), -- 142433 (Fozruk) - -Unknown-
(141618, 0, 0, 0, 1, 0, 0, 0, 0, '287955 288179'), -- 141618 (Überschäumender Goliath) - -Unknown-, -Unknown-
(141658, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- 141658 (Überschäumender Wächter) - Frost Armor, -Unknown-
(141725, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- 141725 (Brennender Verbannter) - -Unknown-
(141659, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- 141659 (Grollender Wächter) - -Unknown-
(141663, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- 141663 (Brennender Wächter) - -Unknown-
(141648, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- 141648 (Donnernder Wächter) - -Unknown-
(141727, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- 141727 (Rumpelnder Verbannter) - -Unknown-
(141726, 0, 0, 0, 1, 0, 0, 0, 0, '12544 288179'), -- 141726 (Schäumender Verbannter) - Frost Armor, -Unknown-
(141724, 0, 0, 0, 1, 0, 0, 0, 0, '288179'), -- 141724 (Donnernder Verbannter) - -Unknown-
(141668, 0, 0, 0, 1, 0, 0, 0, 0, '287956'), -- 141668 (Echo von Myzrael) - -Unknown-
(142688, 0, 0, 0, 1, 0, 0, 0, 0, '287903 288181'), -- 142688 (Darbel Montrose) - -Unknown-, -Unknown-
(142690, 0, 0, 0, 1, 0, 0, 0, 0, '287912 288181'), -- 142690 (Sängerin) - -Unknown-, -Unknown-
(142729, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- 142729 (Ernteschnitter des Syndikats) - -Unknown-
(143433, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- 143433 (Ernteschredder des Syndikats) - -Unknown-
(142705, 0, 0, 0, 2, 0, 0, 0, 0, '288181'), -- 142705 (Pfadpirscher des Syndikats) - -Unknown-
(142704, 0, 0, 0, 1, 0, 0, 0, 0, '288181'), -- 142704 (Söldner des Syndikats) - -Unknown-
(142338, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142338 (Hochlandschreiter)
(143599, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143599 (Schlachtzauberer der Heulenden Verdammnis)
(143598, 0, 0, 0, 1, 0, 0, 0, 0, '260824'), -- 143598 (Ingenieur der Heulenden Verdammnis) - -Unknown-
(143597, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 143597 (Schreckensschild der Heulenden Verdammnis) - -Unknown-, -Unknown-, -Unknown-
(138123, 0, 0, 0, 1, 0, 0, 0, 0, '46598 271121'), -- 138123 (Geschütz der Heulenden Verdammnis) - Ride Vehicle Hardcoded, -Unknown-
(138133, 0, 0, 0, 1, 0, 0, 0, 0, '46598'), -- 138133 (Kommandantin der Heulenden Verdammnis) - Ride Vehicle Hardcoded
(138122, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 138122 (Die Heulende Verdammnis)
(142423, 0, 0, 0, 1, 0, 0, 0, 0, '42459 287959'), -- 142423 (Aufseher Krix) - Dual Wield, -Unknown-
(143372, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143372 (Vorarbeiter Drogg)
(141615, 0, 0, 0, 1, 0, 0, 0, 0, '287954 259919 288179'), -- 141615 (Brennender Goliath) - -Unknown-, -Unknown-, -Unknown-
(142045, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142045 (Buddler der Trockenstoppel)
(142041, 0, 0, 0, 2, 0, 0, 0, 0, '288161 288015'), -- 142041 (Armbrustschütze des Nordhofs) - -Unknown-, -Unknown-
(142047, 0, 0, 0, 1, 0, 0, 0, 0, '12544'), -- 142047 (Feldvermesser der Trockenstoppel) - Frost Armor
(142038, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288161 288015'), -- 142038 (Verteidiger des Nordhofs) - -Unknown-, -Unknown-, -Unknown-
(142039, 0, 2410, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 142039 (Ritter des Nordhofs) - -Unknown-, -Unknown-, -Unknown-
(142725, 0, 0, 0, 1, 0, 0, 0, 0, '287906 144465'), -- 142725 (Schreckliche Erscheinung) - -Unknown-, [DND] Shadowy Ghost Visual
(142723, 0, 0, 0, 1, 0, 0, 0, 0, '288180'), -- 142723 (Rachsüchtiger Geist) - -Unknown-
(50770, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 50770 (Zorn)
(142508, 0, 0, 0, 1, 0, 0, 0, 0, '287953'), -- 142508 (Zweigfürst Aldrus) - -Unknown-
(143373, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143373 (Graul)
(142436, 0, 0, 0, 1, 0, 0, 0, 0, '287961'), -- 142436 (Zornschnabel) - -Unknown-
(142440, 0, 0, 0, 1, 0, 0, 0, 0, '287966'), -- 142440 (Yogursa) - -Unknown-
(142334, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142334 (Ebenenkrabbler)
(137072, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 137072 (Timbet)
(137073, 0, 0, 3, 1, 0, 0, 0, 0, ''), -- 137073 (Prinzessin)
(142017, 0, 29284, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 142017 (Kavallerist des Heldenrufpasses) - -Unknown-, -Unknown-, -Unknown-
(142018, 0, 0, 0, 1, 0, 0, 0, 0, '267930 260824'), -- 142018 (Milizsoldat von Neuhof) - -Unknown-, -Unknown-
(142013, 0, 0, 0, 0, 0, 0, 0, 0, '269149'), -- 142013 (Hochlandarbeiter) - -Unknown-
(142014, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142014 (Landarbeiter von Neuhof)
(142016, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142016 (Hund von Neuhof)
(142015, 0, 0, 0, 2, 0, 0, 0, 0, '288015 288161'), -- 142015 (Jäger von Neuhof) - -Unknown-, -Unknown-
(142342, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142342 (Heimtückischer Schwarzbär)
(142343, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142343 (Tobende Eulenbestie)
(143321, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143321 (Bodo der Baumstampfer)
(142007, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142007 (Hochlandholzfäller)
(142347, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142347 (Wildpferd)
(142019, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 142019 (Schütze des Heldenrufpasses)
(142005, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 142005 (Verteidiger des Heldenrufpasses) - -Unknown-, -Unknown-, -Unknown-
(142036, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142036 (Zauberer von Stromgarde)
(142835, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142835 (Murrer)
(133890, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 133890 (Jonathan Flynn)
(133958, 0, 0, 0, 257, 0, 0, 0, 0, '263076'), -- 133958 (Tregan Hügelhub) - -Unknown-
(133582, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 133582 (Dorfbewohner aus Arathi)
(133711, 0, 0, 0, 1, 0, 0, 0, 0, '263194'), -- 133711 (Steinmetz von Stromgarde) - -Unknown-
(133530, 0, 0, 8, 1, 0, 0, 0, 0, ''), -- 133530 (Zwergeningenieur)
(60197, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- 60197 (Training Dummy) - Training Dummy Marker
(143410, 0, 0, 50331648, 1, 0, 0, 0, 0, ''), -- 143410 (Greif der Allianz)
(142008, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142008 (Grayson Bell)
(133779, 0, 84687, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 133779 (Kürassier Wrenn) - -Unknown-, -Unknown-, -Unknown-
(143018, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143018 (Hauptmann Roderick Bräustein)
(142033, 0, 0, 0, 1, 0, 0, 0, 0, '260824 288015 288161'), -- 142033 (Fußsoldat von Stromgarde) - -Unknown-, -Unknown-, -Unknown-
(133661, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 133661 (Brawley Steinbraue)
(127851, 0, 0, 0, 1, 0, 0, 0, 0, '244971'), -- 127851 (Belagerungsmaschine der Allianz) - -Unknown-
(133867, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 133867 (Balinda Dunkelstein)
(142131, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 142131 (Scharfschütze von Stromgarde)
(133932, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 133932 (Godrey Rotbart)
(133633, 0, 0, 0, 256, 0, 0, 0, 0, ''), -- 133633 (Geldrin)
(143172, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 143172 (Yvera Dämmerschwinge)
(142826, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142826 (Altarit Jesse Taylor)
(142828, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 142828 (Gardist von Stromgarde)
(49999, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 49999 (Grasslands Cottontail)
(142718, 0, 24688, 50331648, 1, 0, 0, 0, 0, ''); -- 142718 (Greifenreiter von Stromgarde)

UPDATE `creature_template_addon` SET `auras`='269360 264071 263643' WHERE `entry`=137299; -- 137299
UPDATE `creature_template_addon` SET `auras`='269360 264071 263644' WHERE `entry`=137301; -- 137301
UPDATE `creature_template_addon` SET `auras`='269360 264071 263643' WHERE `entry`=137300; -- 137300
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=134722; -- 134722
UPDATE `creature_template_addon` SET `auras`='269360 264071 263843' WHERE `entry`=137315; -- 137315
UPDATE `creature_template_addon` SET `aiAnimKit`=0 WHERE `entry`=142167; -- 142167
UPDATE `creature_template_addon` SET `auras`='269360 264071 263784' WHERE `entry`=137268; -- 137268
UPDATE `creature_template_addon` SET `auras`='264071 269360 263784' WHERE `entry`=137317; -- 137317
UPDATE `creature_template_addon` SET `auras`='269360 264071 263784' WHERE `entry`=137265; -- 137265
UPDATE `creature_template_addon` SET `auras`='269360 264071 263843' WHERE `entry`=137266; -- 137266
UPDATE `creature_template_addon` SET `auras`='98892 278013 167385' WHERE `entry`=131992; -- 131992
UPDATE `creature_template_addon` SET `auras`='265675 263644 269360 264071' WHERE `entry`=137314; -- 137314
UPDATE `creature_template_addon` SET `bytes2`=256, `auras`='' WHERE `entry`=140350; -- 140350
UPDATE `creature_template_addon` SET `auras`='122729 123236' WHERE `entry`=62821; -- 62821 (Mystic Birdhat)
UPDATE `creature_template_addon` SET `auras`='122729 123240' WHERE `entry`=62822; -- 62822 (Cousin Slowhands)
UPDATE `creature_template_addon` SET `mount`=0 WHERE `entry`=139088; -- 139088
UPDATE `creature_template_addon` SET `auras`='163005' WHERE `entry`=143870; -- 143870
UPDATE `creature_template_addon` SET `bytes2`=0 WHERE `entry`=135678; -- 135678
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=120788; -- 120788
UPDATE `creature_template_addon` SET `bytes2`=0 WHERE `entry`=120599; -- 120599
UPDATE `creature_template_addon` SET `auras`='244971' WHERE `entry`=143844; -- 143844
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=136633; -- 136633
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=124316; -- 124316 (Schwein)
UPDATE `creature_template_addon` SET `auras`='236530' WHERE `entry`=62019; -- 62019 (Cat)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=8883; -- 8883 (Riding Horse)
UPDATE `creature_template_addon` SET `bytes1`=3, `auras`='42648' WHERE `entry`=24477; -- 24477 (Syndicate Thief)
UPDATE `creature_template_addon` SET `bytes1`=131072 WHERE `entry`=2588; -- 2588 (Syndicate Prowler)

DELETE FROM `creature_template_scaling` WHERE `Entry` IN (148922, 143852, 143853, 142995, 142994, 142998, 142685, 142700, 142997, 143005, 142993, 142721, 143498, 143004, 143402, 143380, 148927, 147972, 147973, 143008, 143007, 143541, 143420, 142834, 142734, 142709, 142679, 142596, 142681, 142675, 142696, 142692, 142676, 142438, 142741, 143901, 142732, 142747, 142717, 142716, 141942, 142021, 141947, 142340, 142333, 142683, 142435, 142337, 142339, 143318, 141620, 142006, 144047, 144045, 144050, 144048, 142684, 142686, 141946, 142026, 142027, 142694, 142693, 142012, 142010, 142009, 142034, 142011, 142003, 142002, 142001, 142335, 141737, 141736, 144054, 141735, 141733, 144055, 144065, 141738, 144063, 141761, 141734, 141757, 141732, 141756, 142731, 141616, 142730, 142437, 142566, 144068, 144139, 144059, 144057, 144066, 144061, 144073, 144072, 144140, 144060, 141876, 144058, 144070, 144069, 144062, 142569, 142571, 142570, 142433, 141618, 141658, 141725, 141659, 141663, 141648, 141727, 141726, 141724, 141668, 142688, 142690, 142729, 143433, 142705, 142704, 142338, 143599, 143598, 143597, 138123, 138133, 138122, 142423, 143372, 141615, 142045, 142041, 142047, 142038, 142039, 142725, 142723, 142508, 143373, 142436, 142440, 142334, 142017, 142018, 142013, 142014, 142016, 142015, 142342, 142343, 143321, 142007, 142347, 142019, 142005, 142036, 142835, 133890, 133958, 133582, 133711, 133530, 143410, 142008, 133779, 143018, 142033, 133661, 127851, 133867, 142131, 133932, 133633, 143172, 142826, 142828, 142718);
INSERT INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `VerifiedBuild`) VALUES
(148922, 110, 120, 0, 0, 28768),
(143852, 120, 120, 0, 0, 28768),
(143853, 120, 120, 0, 0, 28768),
(142995, 120, 120, 0, 0, 28768),
(142994, 120, 120, 0, 0, 28768),
(142998, 120, 120, 0, 0, 28768),
(142685, 120, 120, 0, 0, 28768),
(142700, 120, 120, 0, 0, 28768),
(142997, 120, 120, 0, 0, 28768),
(143005, 120, 120, 0, 0, 28768),
(142993, 120, 120, 0, 0, 28768),
(142721, 120, 120, 1, 1, 28768),
(143498, 120, 120, 0, 0, 28768),
(143004, 120, 120, 0, 0, 28768),
(143402, 120, 120, 0, 0, 28768),
(143380, 120, 120, 0, 0, 28768),
(148927, 120, 120, 0, 0, 28768),
(147972, 120, 120, 0, 0, 28768),
(147973, 120, 120, 0, 0, 28768),
(143008, 120, 120, 0, 0, 28768),
(143007, 120, 120, 0, 0, 28768),
(143541, 120, 120, 0, 0, 28768),
(143420, 120, 120, 0, 0, 28768),
(142834, 120, 120, 0, 0, 28768),
(142734, 120, 120, 0, 0, 28768),
(142709, 120, 120, 1, 1, 28768),
(142679, 120, 120, 0, 1, 28768),
(142596, 120, 120, -1, 0, 28768),
(142681, 120, 120, 0, 1, 28768),
(142675, 120, 120, 1, 1, 28768),
(142696, 120, 120, 1, 1, 28768),
(142692, 120, 120, 1, 1, 28768),
(142676, 120, 120, -1, 0, 28768),
(142438, 120, 120, 2, 2, 28768),
(142741, 120, 120, 1, 1, 28768),
(143901, 120, 120, 0, 0, 28768),
(142732, 120, 120, 0, 0, 28768),
(142747, 120, 120, -1, 0, 28768),
(142717, 120, 120, -1, 0, 28768),
(142716, 120, 120, 1, 1, 28768),
(141942, 120, 120, 2, 2, 28768),
(142021, 120, 120, 0, 0, 28768),
(141947, 120, 120, 1, 1, 28768),
(142340, 120, 120, -1, 1, 28768),
(142333, 120, 120, -1, 0, 28768),
(142683, 120, 120, 1, 1, 28768),
(142435, 120, 120, 2, 2, 28768),
(142337, 120, 120, -1, 0, 28768),
(142339, 120, 120, -1, 1, 28768),
(143318, 120, 120, 1, 1, 28768),
(141620, 120, 120, 2, 2, 28768),
(142006, 120, 120, 0, 0, 28768),
(144047, 120, 120, 0, 0, 28768),
(144045, 120, 120, 0, 0, 28768),
(144050, 120, 120, 0, 0, 28768),
(144048, 120, 120, 0, 0, 28768),
(142684, 120, 120, 1, 1, 28768),
(142686, 120, 120, 1, 1, 28768),
(141946, 120, 120, 1, 1, 28768),
(142026, 120, 120, 0, 0, 28768),
(142027, 120, 120, 0, 0, 28768),
(142694, 120, 120, 1, 1, 28768),
(142693, 120, 120, 0, 1, 28768),
(142012, 120, 120, 0, 0, 28768),
(142010, 120, 120, 0, 0, 28768),
(142009, 120, 120, 0, 0, 28768),
(142034, 120, 120, 0, 0, 28768),
(142011, 120, 120, 0, 0, 28768),
(142003, 120, 120, 1, 1, 28768),
(142002, 120, 120, 0, 0, 28768),
(142001, 120, 120, 0, 0, 28768),
(142335, 120, 120, -1, 0, 28768),
(141737, 120, 120, 0, 0, 28768),
(141736, 120, 120, 0, 0, 28768),
(144054, 120, 120, 0, 0, 28768),
(141735, 120, 120, 0, 0, 28768),
(141733, 120, 120, 0, 0, 28768),
(144055, 120, 120, 0, 0, 28768),
(144065, 120, 120, 0, 0, 28768),
(141738, 120, 120, 0, 0, 28768),
(144063, 120, 120, 0, 0, 28768),
(141761, 120, 120, 0, 0, 28768),
(141734, 120, 120, 0, 0, 28768),
(141757, 120, 120, 0, 0, 28768),
(141732, 120, 120, 0, 0, 28768),
(141756, 120, 120, 0, 0, 28768),
(142731, 120, 120, 0, 0, 28768),
(141616, 120, 120, 2, 2, 28768),
(142730, 120, 120, 0, 0, 28768),
(142437, 120, 120, 2, 2, 28768),
(142566, 120, 120, -1, -1, 28768),
(144068, 120, 120, 0, 0, 28768),
(144139, 120, 120, 0, 0, 28768),
(144059, 120, 120, 0, 0, 28768),
(144057, 120, 120, 0, 0, 28768),
(144066, 120, 120, 0, 0, 28768),
(144061, 120, 120, 0, 0, 28768),
(144073, 120, 120, 0, 0, 28768),
(144072, 120, 120, 0, 0, 28768),
(144140, 120, 120, 0, 0, 28768),
(144060, 120, 120, 0, 0, 28768),
(141876, 120, 120, 0, 0, 28768),
(144058, 120, 120, 0, 0, 28768),
(144070, 120, 120, 0, 0, 28768),
(144069, 120, 120, 0, 0, 28768),
(144062, 120, 120, 0, 0, 28768),
(142569, 120, 120, 0, 0, 28768),
(142571, 120, 120, 0, 0, 28768),
(142570, 120, 120, 0, 0, 28768),
(142433, 120, 120, 2, 2, 28768),
(141618, 120, 120, 2, 2, 28768),
(141658, 120, 120, 1, 1, 28768),
(141725, 120, 120, 0, 0, 28768),
(141659, 120, 120, 1, 1, 28768),
(141663, 120, 120, 1, 1, 28768),
(141648, 120, 120, 1, 1, 28768),
(141727, 120, 120, 0, 0, 28768),
(141726, 120, 120, 0, 0, 28768),
(141724, 120, 120, 0, 0, 28768),
(141668, 120, 120, 2, 2, 28768),
(142688, 120, 120, 1, 1, 28768),
(142690, 120, 120, 1, 1, 28768),
(142729, 120, 120, 1, 1, 28768),
(143433, 120, 120, 0, 1, 28768),
(142705, 120, 120, 0, 0, 28768),
(142704, 120, 120, 0, 0, 28768),
(142338, 120, 120, -1, 1, 28768),
(143599, 120, 120, 0, 0, 28768),
(143598, 120, 120, 0, 0, 28768),
(143597, 120, 120, 0, 0, 28768),
(138123, 120, 120, 3, 3, 28768),
(138133, 120, 120, 0, 0, 28768),
(138122, 120, 120, 3, 3, 28768),
(142423, 120, 120, 2, 2, 28768),
(143372, 120, 120, 1, 1, 28768),
(141615, 120, 120, 2, 2, 28768),
(142045, 120, 120, 0, 0, 28768),
(142041, 120, 120, 0, 0, 28768),
(142047, 120, 120, 0, 0, 28768),
(142038, 120, 120, 0, 0, 28768),
(142039, 120, 120, 1, 1, 28768),
(142725, 120, 120, 1, 1, 28768),
(142723, 120, 120, 0, 0, 28768),
(142508, 120, 120, 2, 2, 28768),
(143373, 120, 120, 1, 1, 28768),
(142436, 120, 120, 2, 2, 28768),
(142440, 120, 120, 2, 2, 28768),
(142334, 120, 120, -1, 0, 28768),
(142017, 120, 120, 1, 1, 28768),
(142018, 120, 120, 0, 0, 28768),
(142013, 120, 120, 0, 0, 28768),
(142014, 120, 120, 0, 0, 28768),
(142016, 120, 120, 0, 0, 28768),
(142015, 120, 120, 0, 0, 28768),
(142342, 120, 120, 0, 1, 28768),
(142343, 120, 120, -1, 0, 28768),
(143321, 120, 120, 1, 1, 28768),
(142007, 120, 120, 0, 0, 28768),
(142347, 120, 120, 0, 0, 28768),
(142019, 120, 120, 0, 0, 28768),
(142005, 120, 120, 0, 0, 28768),
(142036, 120, 120, 0, 0, 28768),
(142835, 120, 120, 0, 0, 28768),
(133890, 120, 120, 0, 0, 28768),
(133958, 120, 120, 0, 0, 28768),
(133582, 120, 120, 0, 0, 28768),
(133711, 120, 120, 0, 0, 28768),
(133530, 120, 120, 0, 0, 28768),
(143410, 120, 120, 0, 0, 28768),
(142008, 120, 120, 1, 1, 28768),
(133779, 120, 120, 1, 1, 28768),
(143018, 120, 120, 0, 0, 28768),
(142033, 120, 120, 0, 0, 28768),
(133661, 120, 120, 0, 0, 28768),
(127851, 120, 120, 0, 0, 28768),
(133867, 120, 120, 0, 0, 28768),
(142131, 120, 120, 0, 0, 28768),
(133932, 120, 120, 0, 0, 28768),
(133633, 120, 120, 0, 0, 28768),
(143172, 120, 120, 0, 0, 28768),
(142826, 120, 120, 0, 0, 28768),
(142828, 120, 120, 0, 0, 28768),
(142718, 120, 120, 0, 0, 28768);

UPDATE `creature_template_scaling` SET `LevelScalingDeltaMax`=0, `VerifiedBuild`=28768 WHERE `Entry`=2588;

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (90161, 89604, 89355, 89353, 88827, 88837, 90165, 89354, 89352, 88881);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(90161, 0.347222, 1.5, 0, 28768),
(89604, 0.6902447, 1.5, 0, 28768),
(89355, 0.3501, 1.35, 0, 28768),
(89353, 0.33065, 1.275, 0, 28768),
(88827, 0.2754, 1.35, 0, 28768),
(88837, 0.2754, 1.35, 0, 28768),
(90165, 0.347, 1.5, 0, 28768),
(89354, 0.2754, 1.35, 0, 28768),
(89352, 0.2754, 1.35, 0, 28768),
(88881, 0.3501, 1.35, 0, 28768);


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=142997 AND `ID`=1) OR (`CreatureID`=142993 AND `ID`=1) OR (`CreatureID`=142721 AND `ID`=1) OR (`CreatureID`=143498 AND `ID`=1) OR (`CreatureID`=143402 AND `ID`=1) OR (`CreatureID`=147972 AND `ID`=1) OR (`CreatureID`=147973 AND `ID`=1) OR (`CreatureID`=143541 AND `ID`=1) OR (`CreatureID`=142834 AND `ID`=1) OR (`CreatureID`=142679 AND `ID`=3) OR (`CreatureID`=142679 AND `ID`=2) OR (`CreatureID`=142709 AND `ID`=1) OR (`CreatureID`=142679 AND `ID`=1) OR (`CreatureID`=142596 AND `ID`=1) OR (`CreatureID`=142681 AND `ID`=1) OR (`CreatureID`=142675 AND `ID`=1) OR (`CreatureID`=142696 AND `ID`=1) OR (`CreatureID`=142692 AND `ID`=1) OR (`CreatureID`=142676 AND `ID`=1) OR (`CreatureID`=142741 AND `ID`=1) OR (`CreatureID`=143901 AND `ID`=1) OR (`CreatureID`=142732 AND `ID`=1) OR (`CreatureID`=142747 AND `ID`=1) OR (`CreatureID`=141876 AND `ID`=3) OR (`CreatureID`=142716 AND `ID`=1) OR (`CreatureID`=141942 AND `ID`=1) OR (`CreatureID`=141947 AND `ID`=1) OR (`CreatureID`=143318 AND `ID`=1) OR (`CreatureID`=142006 AND `ID`=1) OR (`CreatureID`=142684 AND `ID`=1) OR (`CreatureID`=142686 AND `ID`=1) OR (`CreatureID`=142026 AND `ID`=1) OR (`CreatureID`=142027 AND `ID`=1) OR (`CreatureID`=142694 AND `ID`=1) OR (`CreatureID`=142693 AND `ID`=1) OR (`CreatureID`=142012 AND `ID`=1) OR (`CreatureID`=142013 AND `ID`=2) OR (`CreatureID`=142010 AND `ID`=1) OR (`CreatureID`=142009 AND `ID`=1) OR (`CreatureID`=142034 AND `ID`=1) OR (`CreatureID`=142003 AND `ID`=1) OR (`CreatureID`=142002 AND `ID`=1) OR (`CreatureID`=141736 AND `ID`=1) OR (`CreatureID`=144054 AND `ID`=1) OR (`CreatureID`=141735 AND `ID`=1) OR (`CreatureID`=141733 AND `ID`=1) OR (`CreatureID`=144055 AND `ID`=1) OR (`CreatureID`=144065 AND `ID`=1) OR (`CreatureID`=141738 AND `ID`=1) OR (`CreatureID`=144063 AND `ID`=1) OR (`CreatureID`=141761 AND `ID`=1) OR (`CreatureID`=141734 AND `ID`=1) OR (`CreatureID`=141757 AND `ID`=1) OR (`CreatureID`=141732 AND `ID`=1) OR (`CreatureID`=141756 AND `ID`=1) OR (`CreatureID`=142731 AND `ID`=1) OR (`CreatureID`=142730 AND `ID`=1) OR (`CreatureID`=142566 AND `ID`=1) OR (`CreatureID`=144068 AND `ID`=1) OR (`CreatureID`=144139 AND `ID`=1) OR (`CreatureID`=144059 AND `ID`=1) OR (`CreatureID`=144057 AND `ID`=1) OR (`CreatureID`=144066 AND `ID`=1) OR (`CreatureID`=144061 AND `ID`=1) OR (`CreatureID`=144073 AND `ID`=1) OR (`CreatureID`=144072 AND `ID`=1) OR (`CreatureID`=144140 AND `ID`=1) OR (`CreatureID`=141876 AND `ID`=2) OR (`CreatureID`=144060 AND `ID`=1) OR (`CreatureID`=141876 AND `ID`=1) OR (`CreatureID`=144058 AND `ID`=1) OR (`CreatureID`=144070 AND `ID`=1) OR (`CreatureID`=144069 AND `ID`=1) OR (`CreatureID`=144062 AND `ID`=1) OR (`CreatureID`=142569 AND `ID`=1) OR (`CreatureID`=142571 AND `ID`=1) OR (`CreatureID`=142570 AND `ID`=1) OR (`CreatureID`=141668 AND `ID`=1) OR (`CreatureID`=142688 AND `ID`=1) OR (`CreatureID`=142690 AND `ID`=1) OR (`CreatureID`=142705 AND `ID`=1) OR (`CreatureID`=142704 AND `ID`=1) OR (`CreatureID`=143599 AND `ID`=1) OR (`CreatureID`=143598 AND `ID`=1) OR (`CreatureID`=143597 AND `ID`=1) OR (`CreatureID`=142423 AND `ID`=1) OR (`CreatureID`=143372 AND `ID`=1) OR (`CreatureID`=142047 AND `ID`=2) OR (`CreatureID`=142045 AND `ID`=1) OR (`CreatureID`=142041 AND `ID`=1) OR (`CreatureID`=142047 AND `ID`=1) OR (`CreatureID`=142038 AND `ID`=1) OR (`CreatureID`=142039 AND `ID`=1) OR (`CreatureID`=143373 AND `ID`=1) OR (`CreatureID`=142014 AND `ID`=3) OR (`CreatureID`=142017 AND `ID`=1) OR (`CreatureID`=142014 AND `ID`=2) OR (`CreatureID`=142018 AND `ID`=1) OR (`CreatureID`=142013 AND `ID`=1) OR (`CreatureID`=142014 AND `ID`=1) OR (`CreatureID`=142015 AND `ID`=1) OR (`CreatureID`=143321 AND `ID`=1) OR (`CreatureID`=142007 AND `ID`=2) OR (`CreatureID`=142007 AND `ID`=1) OR (`CreatureID`=142019 AND `ID`=1) OR (`CreatureID`=142005 AND `ID`=1) OR (`CreatureID`=142828 AND `ID`=2) OR (`CreatureID`=142036 AND `ID`=1) OR (`CreatureID`=142835 AND `ID`=1) OR (`CreatureID`=133779 AND `ID`=1) OR (`CreatureID`=142033 AND `ID`=1) OR (`CreatureID`=133661 AND `ID`=1) OR (`CreatureID`=133867 AND `ID`=1) OR (`CreatureID`=142131 AND `ID`=1) OR (`CreatureID`=133932 AND `ID`=1) OR (`CreatureID`=133633 AND `ID`=1) OR (`CreatureID`=142826 AND `ID`=1) OR (`CreatureID`=142828 AND `ID`=1) OR (`CreatureID`=142718 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(142997, 1, 1117, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(142993, 1, 2198, 0, 0, 3698, 0, 0, 0, 0, 0), -- -Unknown-
(142721, 1, 1899, 0, 0, 79347, 0, 0, 0, 0, 0), -- -Unknown-
(143498, 1, 158073, 0, 0, 143, 0, 0, 0, 0, 0), -- -Unknown-
(143402, 1, 158073, 0, 0, 143, 0, 0, 0, 0, 0), -- -Unknown-
(147972, 1, 165348, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(147973, 1, 0, 0, 0, 0, 0, 0, 165350, 0, 0), -- -Unknown-
(143541, 1, 158073, 0, 0, 143, 0, 0, 0, 0, 0), -- -Unknown-
(142834, 1, 1911, 0, 0, 0, 0, 0, 0, 0, 0), -- Genny
(142679, 3, 6229, 0, 0, 0, 0, 0, 0, 0, 0), -- Fischer der Bleichborken
(142679, 2, 6228, 0, 0, 0, 0, 0, 0, 0, 0), -- Fischer der Bleichborken
(142709, 1, 61305, 0, 0, 0, 0, 0, 0, 0, 0), -- Bestienreiter Kama
(142679, 1, 45120, 0, 0, 0, 0, 0, 0, 0, 0), -- Fischer der Bleichborken
(142596, 1, 163994, 0, 0, 163994, 0, 0, 69597, 0, 0), -- Axtwerfer der Bleichborken
(142681, 1, 106872, 0, 0, 0, 0, 0, 0, 0, 0), -- Hexendoktor der Bleichborken
(142675, 1, 17123, 0, 0, 95584, 0, 0, 0, 0, 0), -- Schattenjäger der Bleichborken
(142696, 1, 19962, 0, 0, 0, 0, 0, 0, 0, 0), -- Räuber der Bleichborken
(142692, 1, 95453, 0, 0, 0, 0, 0, 0, 0, 0), -- Nimar der Töter
(142676, 1, 110276, 0, 0, 0, 0, 0, 0, 0, 0), -- Kopfjäger der Bleichborken
(142741, 1, 14874, 0, 0, 12893, 0, 0, 0, 0, 0), -- Verdammnisreiter Helgrim
(143901, 1, 2200, 0, 0, 3695, 0, 0, 0, 0, 0), -- Apotheker Jorell
(142732, 1, 116615, 0, 0, 40699, 0, 0, 0, 0, 0), -- Schattenpriester der Entweihten
(142747, 1, 10612, 0, 0, 12453, 0, 0, 5260, 0, 0), -- Grunzer von Hammerfall
(141876, 3, 151606, 0, 0, 0, 0, 0, 0, 0, 0), -- Peon von Hammerfall
(142716, 1, 107134, 0, 0, 0, 0, 0, 108630, 0, 0), -- Menschenjäger Rog
(141942, 1, 163608, 0, 0, 0, 0, 0, 0, 0, 0), -- Molok der Zermalmer
(141947, 1, 107407, 0, 0, 0, 0, 0, 0, 0, 0), -- Schläger der Felsfäuste
(143318, 1, 160025, 0, 0, 160025, 0, 0, 0, 0, 0), -- Vorarbeiterin Tully
(142006, 1, 1910, 0, 0, 0, 0, 0, 0, 0, 0), -- Leitsteinausgräber
(142684, 1, 163930, 0, 0, 0, 0, 0, 0, 0, 0), -- Kovork
(142686, 1, 113606, 0, 0, 0, 0, 0, 0, 0, 0), -- Faulbauch
(142026, 1, 13220, 0, 0, 159838, 0, 0, 0, 0, 0), -- Getreuer des Heldenrufpasses
(142027, 1, 124085, 0, 0, 4836, 0, 0, 0, 0, 0), -- Spruchwirker des Heldenrufpasses
(142694, 1, 155539, 0, 0, 0, 0, 0, 0, 0, 0), -- Vollstrecker der Felsfäuste
(142693, 1, 107416, 0, 0, 0, 0, 0, 0, 0, 0), -- Oger der Felsfäuste
(142012, 1, 91849, 0, 0, 12743, 0, 0, 0, 0, 0), -- Initiand des Hochstands
(142013, 2, 1903, 0, 0, 0, 0, 0, 0, 0, 0), -- Hochlandarbeiter
(142010, 1, 158073, 0, 0, 117413, 0, 0, 0, 0, 0), -- Verteidiger des Hochstands
(142009, 1, 0, 0, 0, 0, 0, 0, 107953, 0, 0), -- Armbrustschütze des Hochstands
(142034, 1, 91849, 0, 0, 159838, 0, 0, 0, 0, 0), -- Priester von Stromgarde
(142003, 1, 159762, 0, 0, 12456, 0, 0, 0, 0, 0), -- Flammenbinder der Wildhämmer
(142002, 1, 9452, 0, 0, 0, 0, 0, 0, 0, 0), -- Spruchwirker des Zirkels
(141736, 1, 2184, 0, 0, 13609, 0, 0, 0, 0, 0), -- Hammon Karwn
(144054, 1, 0, 0, 0, 12870, 0, 0, 0, 0, 0), -- Androd Fadran
(141735, 1, 3699, 0, 0, 3697, 0, 0, 0, 0, 0), -- Drovnar Starkbräu
(141733, 1, 1292, 0, 0, 13406, 0, 0, 0, 0, 0), -- Narj Schnitzelschnitt
(144055, 1, 11424, 0, 0, 0, 0, 0, 0, 0, 0), -- Cedrik Prosa
(144065, 1, 12890, 0, 0, 0, 0, 0, 0, 0, 0), -- Samuel Falk
(141738, 1, 3361, 0, 0, 6434, 0, 0, 0, 0, 0), -- Kommandantin Amaren
(144063, 1, 21553, 0, 0, 0, 0, 0, 0, 0, 0), -- Radulf Leder
(141761, 1, 12856, 0, 0, 0, 0, 0, 0, 0, 0), -- Targot Klingeltaschen
(141734, 1, 2557, 0, 0, 0, 0, 0, 0, 0, 0), -- Jannos Eisenwill
(141757, 1, 13104, 0, 0, 12995, 0, 0, 0, 0, 0), -- Elitesoldat des Bundes von Arathor
(141732, 1, 12744, 0, 0, 0, 0, 0, 0, 0, 0), -- Vikki Lonsav
(141756, 1, 2178, 0, 0, 6434, 0, 0, 2551, 0, 0), -- Verteidiger der Zuflucht
(142731, 1, 14874, 0, 0, 12893, 0, 0, 0, 0, 0), -- Fußsoldat der Entweihten
(142730, 1, 0, 0, 0, 0, 0, 0, 43284, 0, 0), -- Armbrustschütze der Entweihten
(142566, 1, 2711, 0, 0, 0, 0, 0, 0, 0, 0), -- Kobold der Trockenstoppel
(144068, 1, 10619, 0, 0, 2081, 0, 0, 0, 0, 0), -- Tunkk
(144139, 1, 2717, 0, 0, 0, 0, 0, 0, 0, 0), -- Gastwirt Adegwa
(144059, 1, 5281, 0, 0, 0, 0, 0, 0, 0, 0), -- Jun'ha
(144057, 1, 2703, 0, 0, 13407, 0, 0, 0, 0, 0), -- Graud
(144066, 1, 2827, 0, 0, 0, 0, 0, 0, 0, 0), -- Brenn
(144061, 1, 1908, 0, 0, 0, 0, 0, 0, 0, 0), -- Korin Teufel
(144073, 1, 13631, 0, 0, 0, 0, 0, 0, 0, 0), -- Drum Teufel
(144072, 1, 12290, 0, 0, 0, 0, 0, 0, 0, 0), -- Gor'mul
(144140, 1, 10611, 0, 0, 0, 0, 0, 0, 0, 0), -- Tharlidun
(141876, 2, 3189, 0, 0, 0, 0, 0, 0, 0, 0), -- Peon von Hammerfall
(144060, 1, 2717, 0, 0, 13407, 0, 0, 0, 0, 0), -- Keena
(141876, 1, 118560, 0, 0, 0, 0, 0, 0, 0, 0), -- Peon von Hammerfall
(144058, 1, 10612, 0, 0, 12453, 0, 0, 5260, 0, 0), -- Wächter von Hammerfall
(144070, 1, 0, 0, 0, 13407, 0, 0, 0, 0, 0), -- Uttnar
(144069, 1, 5303, 0, 0, 0, 0, 0, 0, 0, 0), -- Urda
(144062, 1, 0, 0, 0, 0, 0, 0, 5262, 0, 0), -- Mu'uta
(142569, 1, 2176, 0, 0, 0, 0, 0, 0, 0, 0), -- Sleeby
(142571, 1, 2177, 0, 0, 0, 0, 0, 0, 0, 0), -- Feeboz
(142570, 1, 1905, 0, 0, 2052, 0, 0, 0, 0, 0), -- Znort
(141668, 1, 151027, 0, 0, 0, 0, 0, 0, 0, 0), -- Echo von Myzrael
(142688, 1, 2559, 0, 0, 0, 0, 0, 0, 0, 0), -- Darbel Montrose
(142690, 1, 5280, 0, 0, 5280, 0, 0, 0, 0, 0), -- Sängerin
(142705, 1, 1897, 0, 0, 0, 0, 0, 5261, 0, 0), -- Pfadpirscher des Syndikats
(142704, 1, 1899, 0, 0, 1896, 0, 0, 0, 0, 0), -- Söldner des Syndikats
(143599, 1, 124085, 0, 0, 4836, 0, 0, 0, 0, 0), -- Schlachtzauberer der Heulenden Verdammnis
(143598, 1, 18803, 0, 0, 0, 0, 0, 0, 0, 0), -- Ingenieur der Heulenden Verdammnis
(143597, 1, 160478, 0, 0, 32375, 0, 0, 0, 0, 0), -- Schreckensschild der Heulenden Verdammnis
(142423, 1, 160025, 0, 0, 160025, 0, 0, 0, 0, 0), -- Aufseher Krix
(143372, 1, 160025, 0, 0, 160025, 0, 0, 0, 0, 0), -- Vorarbeiter Drogg
(142047, 2, 1907, 0, 0, 0, 0, 0, 0, 0, 0), -- Feldvermesser der Trockenstoppel
(142045, 1, 1910, 0, 0, 0, 0, 0, 0, 0, 0), -- Buddler der Trockenstoppel
(142041, 1, 0, 0, 0, 0, 0, 0, 107953, 0, 0), -- Armbrustschütze des Nordhofs
(142047, 1, 1910, 0, 0, 0, 0, 0, 0, 0, 0), -- Feldvermesser der Trockenstoppel
(142038, 1, 158073, 0, 0, 117413, 0, 0, 0, 0, 0), -- Verteidiger des Nordhofs
(142039, 1, 92890, 0, 0, 143, 0, 0, 0, 0, 0), -- Ritter des Nordhofs
(143373, 1, 134635, 0, 0, 0, 0, 0, 0, 0, 0), -- Graul
(142014, 3, 3367, 0, 0, 0, 0, 0, 0, 0, 0), -- Landarbeiter von Neuhof
(142017, 1, 46069, 0, 0, 161069, 0, 0, 0, 0, 0), -- Kavallerist des Heldenrufpasses
(142014, 2, 1485, 0, 0, 0, 0, 0, 0, 0, 0), -- Landarbeiter von Neuhof
(142018, 1, 46841, 0, 0, 2051, 0, 0, 0, 0, 0), -- Milizsoldat von Neuhof
(142013, 1, 7736, 0, 0, 0, 0, 0, 0, 0, 0), -- Hochlandarbeiter
(142014, 1, 1292, 0, 0, 0, 0, 0, 0, 0, 0), -- Landarbeiter von Neuhof
(142015, 1, 0, 0, 0, 0, 0, 0, 13040, 0, 0), -- Jäger von Neuhof
(143321, 1, 133982, 0, 0, 0, 0, 0, 68608, 0, 0), -- Bodo der Baumstampfer
(142007, 2, 52532, 0, 0, 0, 0, 0, 0, 0, 0), -- Hochlandholzfäller
(142007, 1, 3189, 0, 0, 0, 0, 0, 0, 0, 0), -- Hochlandholzfäller
(142019, 1, 0, 0, 0, 0, 0, 0, 161448, 0, 0), -- Schütze des Heldenrufpasses
(142005, 1, 161447, 0, 0, 161069, 0, 0, 0, 0, 0), -- Verteidiger des Heldenrufpasses
(142828, 2, 0, 0, 0, 0, 0, 0, 2551, 0, 0), -- Gardist von Stromgarde
(142036, 1, 13078, 0, 0, 0, 0, 0, 0, 0, 0), -- Zauberer von Stromgarde
(142835, 1, 31824, 0, 0, 1911, 0, 0, 0, 0, 0), -- Murrer
(133779, 1, 6829, 0, 0, 13814, 0, 0, 0, 0, 0), -- Kürassier Wrenn
(142033, 1, 2178, 0, 0, 6434, 0, 0, 0, 0, 0), -- Fußsoldat von Stromgarde
(133661, 1, 0, 0, 0, 0, 0, 0, 116566, 0, 0), -- Brawley Steinbraue
(133867, 1, 5956, 0, 0, 0, 0, 0, 0, 0, 0), -- Balinda Dunkelstein
(142131, 1, 0, 0, 0, 0, 0, 0, 110178, 0, 0), -- Scharfschütze von Stromgarde
(133932, 1, 5956, 0, 0, 0, 0, 0, 0, 0, 0), -- Godrey Rotbart
(133633, 1, 2827, 0, 0, 0, 0, 0, 0, 0, 0), -- Geldrin
(142826, 1, 162452, 0, 0, 0, 0, 0, 0, 0, 0), -- Altarit Jesse Taylor
(142828, 1, 2178, 0, 0, 6434, 0, 0, 2551, 0, 0), -- Gardist von Stromgarde
(142718, 1, 2178, 0, 0, 6434, 0, 0, 2551, 0, 0); -- Greifenreiter von Stromgarde

UPDATE `creature_equip_template` SET `ItemID2`=18758 WHERE (`CreatureID`=137315 AND `ID`=1); -- -Unknown-
UPDATE `creature_equip_template` SET `ItemID1`=0 WHERE (`CreatureID`=135678 AND `ID`=3); -- -Unknown-
UPDATE `creature_equip_template` SET `ItemID2`=18202 WHERE (`CreatureID`=137266 AND `ID`=1); -- -Unknown-
UPDATE `creature_equip_template` SET `ItemID1`=1906 WHERE (`CreatureID`=135678 AND `ID`=1); -- -Unknown-

DELETE FROM `gossip_menu` WHERE (`MenuId`=22989 AND `TextId`=35565) OR (`MenuId`=23280 AND `TextId`=36077) OR (`MenuId`=23281 AND `TextId`=36079) OR (`MenuId`=23286 AND `TextId`=17711) OR (`MenuId`=23284 AND `TextId`=36737);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(22989, 35565, 28768), -- 141649 (Zidormi)
(23280, 36077, 28768), -- 143318 (Vorarbeiterin Tully)
(23281, 36079, 28768), -- 143321 (Bodo der Baumstampfer)
(23286, 17711, 28768), -- 143172 (Yvera Dämmerschwinge)
(23284, 36737, 28768); -- 143380

DELETE FROM `gossip_menu_option` WHERE (`MenuId`=22989 AND `OptionIndex`=0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(22989, 0, 0, 'Könnt Ihr mir zeigen, wie das Arathihochland aussah, bevor der Krieg ausbrach?', 0, 28768);


UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=125005; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=123642; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=131290; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=134921; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=137299; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=142169; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=137301; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=141033; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=137300; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=142160; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=126682; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=143254; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=134722; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=142238; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=134920; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=142174; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=142167; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=142189; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=142117; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=137267; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=135618; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=143709; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=139148; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=137316; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=131992; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=140313; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=135521; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=141115; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=141116; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=141114; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=139144; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=142163; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=143272; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=141117; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=140350; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `faction`=2908, `RangeAttackTime`=0 WHERE `entry`=142089; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=84, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=143852; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=142187; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=126434; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=131989; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=84, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=143853; -- -Unknown-
UPDATE `creature_template` SET `npcflag`=0, `RangeAttackTime`=0 WHERE `entry`=144635; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=135612; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=140473; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=139088; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=143842; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142995; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=143870; -- -Unknown-
UPDATE `creature_template` SET `npcflag`=0, `RangeAttackTime`=0 WHERE `entry`=139522; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=135678; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=131983; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142994; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `RangeAttackTime`=0 WHERE `entry`=120788; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=135677; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=126781; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=140472; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=135681; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=143856; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=123604; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142998; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `RangeAttackTime`=0, `unit_flags`=33536 WHERE `entry`=120599; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142685; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=135675; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=143844; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142700; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142997; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=124805; -- -Unknown-
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=40438; -- Steamwheedle Shyster
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143005; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=7, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67143680 WHERE `entry`=140552; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142993; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=2959, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142721; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143498; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143004; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143402; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143380; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143008; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143007; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=136633; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143541; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143420; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142834; -- Genny
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=32639; -- Gnimo
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=32638; -- Hakmud of Argus
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1000, `unit_flags`=33587200, `unit_flags2`=33556480 WHERE `entry`=142734; -- Verteidiger von Arathor
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=61071; -- Small Frog
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=654, `speed_run`=1.385714, `BaseAttackTime`=1333, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142709; -- Bestienreiter Kama
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=654, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142679; -- Fischer der Bleichborken
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=654, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142596; -- Axtwerfer der Bleichborken
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=654, `speed_run`=1.714286, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142681; -- Hexendoktor der Bleichborken
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=654, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142675; -- Schattenjäger der Bleichborken
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=654, `speed_run`=1.385714, `BaseAttackTime`=1333, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142696; -- Räuber der Bleichborken
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=654, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142692; -- Nimar der Töter
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=654, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142676; -- Kopfjäger der Bleichborken
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=22, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142438; -- Venomarus
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=2958, `speed_run`=1.385714, `BaseAttackTime`=1333, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142741; -- Verdammnisreiter Helgrim
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=83, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=143901; -- Apotheker Jorell
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2958, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142732; -- Schattenpriester der Entweihten
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=83, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142747; -- Grunzer von Hammerfall
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=61141; -- Prairie Dog
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=45, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142717; -- Zetermordio
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=45, `speed_walk`=1.6, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=142716; -- Menschenjäger Rog
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=45, `BaseAttackTime`=2700, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=141942; -- Molok der Zermalmer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2190, `speed_run`=1.714286, `BaseAttackTime`=1000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=142021; -- Troll der Bleichborken
UPDATE `creature_template` SET `gossip_menu_id`=22989, `minlevel`=110, `maxlevel`=110, `faction`=1779, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=141649; -- Zidormi
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=45, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=141947; -- Schläger der Felsfäuste
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=48, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142340; -- Hochlandfleischpirscher
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=22, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142333; -- Riesiger Ebenenkrabbler
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=45, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=142683; -- Ruul Zweistein
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=16, `unit_flags2`=2048, `HoverHeight`=3 WHERE `entry`=142435; -- Seuchenfeder
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=7, `BaseAttackTime`=2000, `unit_flags2`=2048, `HoverHeight`=3 WHERE `entry`=142337; -- Mesabussard
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=48, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142339; -- Hochlandhauer
UPDATE `creature_template` SET `gossip_menu_id`=23280, `minlevel`=121, `maxlevel`=121, `faction`=2959, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33556480 WHERE `entry`=143318; -- Vorarbeiterin Tully
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=91, `speed_walk`=1.2, `speed_run`=1.428571, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=141620; -- Grollender Goliath
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142006; -- Leitsteinausgräber
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=5, `faction`=12, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=144047; -- Nordric Albrecht
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=5, `faction`=12, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=144045; -- Greta Albrecht
UPDATE `creature_template` SET `minlevel`=3, `maxlevel`=3, `faction`=12, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=144050; -- Willa
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=5, `faction`=12, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=144048; -- Vaughn
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=45, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=142684; -- Kovork
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=45, `speed_walk`=1.6, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=142686; -- Faulbauch
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=45, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=141946; -- Magus der Felsfäuste
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142026; -- Getreuer des Heldenrufpasses
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142027; -- Spruchwirker des Heldenrufpasses
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=45, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=142694; -- Vollstrecker der Felsfäuste
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=45, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142693; -- Oger der Felsfäuste
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142012; -- Initiand des Hochstands
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142010; -- Verteidiger des Hochstands
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `npcflag`=35201551958016, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142009; -- Armbrustschütze des Hochstands
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142034; -- Priester von Stromgarde
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142011; -- Vorgezogener Aufklärer
UPDATE `creature_template` SET `RangeAttackTime`=0, `unit_flags2`=67110912 WHERE `entry`=40789; -- Generic Controller Bunny (CSA)
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=2959, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142003; -- Flammenbinder der Wildhämmer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142002; -- Spruchwirker des Zirkels
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142001; -- Lehrling des Zirkels
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=7, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142335; -- Junger Mesabussard
UPDATE `creature_template` SET `gossip_menu_id`=9821, `minlevel`=120, `maxlevel`=120, `faction`=12, `npcflag`=4194433, `BaseAttackTime`=1000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=141737; -- Emily Jackson
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=12, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=141736; -- Hammon Karwn
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `faction`=12, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144054; -- Androd Fadran
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=5, `faction`=35, `speed_run`=0.8571429, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=141770; -- Pferd
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=55, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=141735; -- Drovnar Starkbräu
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=55, `npcflag`=640, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=141733; -- Narj Schnitzelschnitt
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=12, `npcflag`=8193, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144055; -- Cedrik Prosa
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `faction`=1599, `npcflag`=4226, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=144065; -- Samuel Falk
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=123, `speed_run`=1.385714, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=141738; -- Kommandantin Amaren
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=210, `npcflag`=1048577, `speed_run`=1.385714, `BaseAttackTime`=2000, `unit_flags`=576, `unit_flags2`=2048 WHERE `entry`=144063; -- Radulf Leder
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=35, `npcflag`=640, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=141761; -- Targot Klingeltaschen
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=55, `npcflag`=4224, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=141734; -- Jannos Eisenwill
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1577, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=141757; -- Elitesoldat des Bundes von Arathor
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=12, `npcflag`=66177, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=141732; -- Vikki Lonsav
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=123, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=141756; -- Verteidiger der Zuflucht
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2958, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142731; -- Fußsoldat der Entweihten
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=91, `speed_walk`=1.2, `speed_run`=1.428571, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=141616; -- Donnernder Goliath
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2958, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142730; -- Armbrustschütze der Entweihten
UPDATE `creature_template` SET `faction`=31, `npcflag`=1073741824, `speed_run`=0.8571429, `RangeAttackTime`=0, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=61704; -- Grasslands Cottontail
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=48, `BaseAttackTime`=1500, `unit_flags2`=2048 WHERE `entry`=142437; -- Schädelreißer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=26, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142566; -- Kobold der Trockenstoppel
UPDATE `creature_template` SET `minlevel`=34, `maxlevel`=34, `faction`=29, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144068; -- Tunkk
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=29, `npcflag`=65665, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144139; -- Gastwirt Adegwa
UPDATE `creature_template` SET `minlevel`=31, `maxlevel`=31, `faction`=29, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144059; -- Jun'ha
UPDATE `creature_template` SET `minlevel`=31, `maxlevel`=31, `faction`=29, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144057; -- Graud
UPDATE `creature_template` SET `minlevel`=38, `maxlevel`=38, `faction`=29, `npcflag`=80, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144066; -- Brenn
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=125, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144061; -- Korin Teufel
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=125, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144073; -- Drum Teufel
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=29, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=144072; -- Gor'mul
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=29, `npcflag`=4194433, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144140; -- Tharlidun
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `faction`=29, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144060; -- Keena
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1074, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=141876; -- Peon von Hammerfall
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=85, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=144058; -- Wächter von Hammerfall
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=29, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144070; -- Uttnar
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=29, `npcflag`=8193, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144069; -- Urda
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=29, `npcflag`=4224, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=144062; -- Mu'uta
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=15, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142569; -- Sleeby
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=15, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142571; -- Feeboz
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=15, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142570; -- Znort
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=15, `speed_walk`=1.2, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=35653632 WHERE `entry`=142433; -- Fozruk
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=91, `speed_walk`=1.2, `speed_run`=1.428571, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=141618; -- Überschäumender Goliath
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=91, `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=141658; -- Überschäumender Wächter
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=91, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=141725; -- Brennender Verbannter
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=91, `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=141659; -- Grollender Wächter
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=91, `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=141663; -- Brennender Wächter
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=91, `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=141648; -- Donnernder Wächter
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=91, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=141727; -- Rumpelnder Verbannter
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=91, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=141726; -- Schäumender Verbannter
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=91, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=141724; -- Donnernder Verbannter
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=91, `speed_walk`=2.8, `speed_run`=1.285714, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2099200 WHERE `entry`=141668; -- Echo von Myzrael
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142688; -- Darbel Montrose
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=87, `BaseAttackTime`=1000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=142690; -- Sängerin
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=142729; -- Ernteschnitter des Syndikats
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=143433; -- Ernteschredder des Syndikats
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=87, `speed_run`=1.428571, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142705; -- Pfadpirscher des Syndikats
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=87, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142704; -- Söldner des Syndikats
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=48, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142338; -- Hochlandschreiter
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=83, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=143599; -- Schlachtzauberer der Heulenden Verdammnis
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=83, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=143598; -- Ingenieur der Heulenden Verdammnis
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=83, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags2`=2048 WHERE `entry`=143597; -- Schreckensschild der Heulenden Verdammnis
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=83, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=69208064 WHERE `entry`=138123; -- Geschütz der Heulenden Verdammnis
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=84, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=2048 WHERE `entry`=138133; -- Kommandantin der Heulenden Verdammnis
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `faction`=83, `speed_walk`=2.8, `speed_run`=2.285714, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2097152, `VehicleId`=5993 WHERE `entry`=138122; -- Die Heulende Verdammnis
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=26, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142423; -- Aufseher Krix
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=2958, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33556480 WHERE `entry`=143372; -- Vorarbeiter Drogg
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=91, `speed_walk`=1.2, `speed_run`=1.428571, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=141615; -- Brennender Goliath
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=26, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142045; -- Buddler der Trockenstoppel
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `npcflag`=35201551958016, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142041; -- Armbrustschütze des Nordhofs
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=26, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142047; -- Feldvermesser der Trockenstoppel
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142038; -- Verteidiger des Nordhofs
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=2959, `speed_walk`=2, `speed_run`=1.385714, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142039; -- Ritter des Nordhofs
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=16, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=33554432 WHERE `entry`=142725; -- Schreckliche Erscheinung
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=16, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=33554432 WHERE `entry`=142723; -- Rachsüchtiger Geist
UPDATE `creature_template` SET `minlevel`=28, `maxlevel`=28, `faction`=14, `RangeAttackTime`=0, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=50770; -- Zorn
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142508; -- Zweigfürst Aldrus
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=2958, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33556480 WHERE `entry`=143373; -- Graul
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142436; -- Zornschnabel
UPDATE `creature_template` SET `minlevel`=122, `maxlevel`=122, `faction`=44, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142440; -- Yogursa
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=22, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142334; -- Ebenenkrabbler
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.8571429, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=137072; -- Timbet
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.8571429, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=137073; -- Prinzessin
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=2959, `speed_walk`=2, `speed_run`=1.385714, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142017; -- Kavallerist des Heldenrufpasses
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=1933; -- Sheep
UPDATE `creature_template` SET `faction`=2575, `RangeAttackTime`=0, `unit_flags`=0, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=124316; -- Schwein
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=2442; -- Cow
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=385; -- Horse
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142018; -- Milizsoldat von Neuhof
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142013; -- Hochlandarbeiter
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142014; -- Landarbeiter von Neuhof
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=883; -- Deer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142016; -- Hund von Neuhof
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142015; -- Jäger von Neuhof
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=49778; -- Red-Tailed Chipmunk
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=44, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=142342; -- Heimtückischer Schwarzbär
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142343; -- Tobende Eulenbestie
UPDATE `creature_template` SET `gossip_menu_id`=23281, `minlevel`=122, `maxlevel`=122, `faction`=2959, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33556480 WHERE `entry`=143321; -- Bodo der Baumstampfer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142007; -- Hochlandholzfäller
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=13321; -- Small Frog
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=7, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142347; -- Wildpferd
UPDATE `creature_template` SET `RangeAttackTime`=0, `unit_flags`=0 WHERE `entry`=2620; -- Prairie Dog
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142019; -- Schütze des Heldenrufpasses
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142005; -- Verteidiger des Heldenrufpasses
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=61366; -- Rat
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.8571429, `RangeAttackTime`=0, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=62019; -- Cat
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142036; -- Zauberer von Stromgarde
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142835; -- Murrer
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=4224, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=133890; -- Jonathan Flynn
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=133958; -- Tregan Hügelhub
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=5, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=133582; -- Dorfbewohner aus Arathi
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=133711; -- Steinmetz von Stromgarde
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1733, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=133530; -- Zwergeningenieur
UPDATE `creature_template` SET `RangeAttackTime`=0, `unit_flags`=131584, `unit_flags3`=1 WHERE `entry`=60197; -- Training Dummy
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `speed_run`=1.714286, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048, `unit_flags3`=1, `VehicleId`=6256 WHERE `entry`=143410; -- Greif der Allianz
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=2959, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=142008; -- Grayson Bell
UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1333, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=133779; -- Kürassier Wrenn
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=143018; -- Hauptmann Roderick Bräustein
UPDATE `creature_template` SET `minlevel`=1, `RangeAttackTime`=0 WHERE `entry`=8883; -- Riding Horse
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_run`=1.714286, `BaseAttackTime`=1000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142033; -- Fußsoldat von Stromgarde
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=133661; -- Brawley Steinbraue
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2099200 WHERE `entry`=127851; -- Belagerungsmaschine der Allianz
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=4224, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=133867; -- Balinda Dunkelstein
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142131; -- Scharfschütze von Stromgarde
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=133932; -- Godrey Rotbart
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=121541; -- Ban-Lu
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=133633; -- Geldrin
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=114590; -- Generic Bunny
UPDATE `creature_template` SET `gossip_menu_id`=23286, `minlevel`=120, `maxlevel`=120, `faction`=1732, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=143172; -- Yvera Dämmerschwinge
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142826; -- Altarit Jesse Taylor
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142828; -- Gardist von Stromgarde
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=49999; -- Grasslands Cottontail
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `faction`=2959, `speed_walk`=3.2, `speed_run`=1.714286, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=142718; -- Greifenreiter von Stromgarde
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=2781; -- Caretaker Weston
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=2599; -- Otto
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=2597; -- Lord Falconcrest
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=2782; -- Caretaker Alaric
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=4075; -- Rat
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=2783; -- Marez Cowl
UPDATE `creature_template` SET `RangeAttackTime`=0 WHERE `entry`=24477; -- Syndicate Thief
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=2591; -- Syndicate Magus
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=2590; -- Syndicate Conjuror
UPDATE `creature_template` SET `maxlevel`=25, `RangeAttackTime`=0, `dynamicflags`=0 WHERE `entry`=2588; -- Syndicate Prowler
UPDATE `creature_template` SET `RangeAttackTime`=0, `dynamicflags`=128 WHERE `entry`=134849; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=140948; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=120, `RangeAttackTime`=0 WHERE `entry`=140944; -- -Unknown-

DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=250648 AND `Idx`=0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(250648, 0, 56804, 28768); -- Trollbanns Grabmal

DELETE FROM `npc_text` WHERE `ID` IN (35565 /*35565*/, 36077 /*36077*/, 36079 /*36079*/);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(35565, 1, 0, 0, 0, 0, 0, 0, 0, 159706, 0, 0, 0, 0, 0, 0, 0, 28768), -- 35565
(36077, 1, 0, 0, 0, 0, 0, 0, 0, 161547, 0, 0, 0, 0, 0, 0, 0, 28768), -- 36077
(36079, 1, 0, 0, 0, 0, 0, 0, 0, 161549, 0, 0, 0, 0, 0, 0, 0, 28768); -- 36079


DELETE FROM `terrain_swap_defaults` WHERE `TerrainSwapMap` = 1945;
INSERT INTO `terrain_swap_defaults` VALUES
(0, 1945, 'Arathi Highlands 2');

DELETE FROM `terrain_worldmap` WHERE `TerrainSwapMap` = 1945;
INSERT INTO `terrain_worldmap` VALUES
(1945, 11292, 'Arathi Highlands 2');

DELETE FROM `spell_target_position` WHERE (`ID`=279518 AND `EffectIndex`=0);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(279518, 0, 0, -1652.53, -1881.24, 80.01, 29139); -- Spell: Teleport to Stromgarde Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)

DELETE FROM `creature` WHERE `guid` = @CGUID+1586;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+1586, 142721, 1643, 8717, 8718, '0', '0', 0, 0, 0, 1021.981, -448.2413, 8.461424, 5.038664, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 29235);

UPDATE `creature_template` SET `minlevel`=121, `maxlevel`=121, `faction`=35, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `family` = 7, `npcflag` = 2 WHERE `entry`=142721; -- Ролстон Карн

-- Alliance World Front Arahti
DELETE FROM `phase_area` WHERE `AreaId` IN (324, 9734);
INSERT INTO `phase_area` VALUES
(324, 11292, 'WarFrontArahti_Main_alliance'),
(9734, 11292, 'WarFrontArahti_Main_alliance');

-- Alliance World Front Arahti
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 25 AND `SourceEntry` IN (1945); 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 26 AND `SourceEntry` IN (324, 9734); 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(26, 11292, 324, 0, 0, 8, 0, 53194, 0, 0, 1, 0, 0, '', 'If quest 53194  not rewarded'),
(26, 11292, 324, 0, 1, 8, 0, 53194, 0, 0, 0, 0, 0, '', 'If quest 53194  rewarded'),
(26, 11292, 9734, 0, 0, 8, 0, 53194, 0, 0, 1, 0, 0, '', 'If quest 53194  not rewarded'),
(26, 11292, 9734, 0, 1, 8, 0, 53194, 0, 0, 0, 0, 0, '', 'If quest 53194  rewarded'),
(25, 0, 1945, 0, 0, 8, 0, 53194, 0, 0, 1, 0, 0, '', 'TerrainSwap 53194 only when player has quest 53194 not rewarded'),
(25, 0, 1945, 0, 1, 8, 0, 53194, 0, 0, 0, 0, 0, '', 'TerrainSwap 53194 only when player has quest 53194  rewarded');


UPDATE `creature_template` SET `ScriptName` = 'npc_ralston_karn' WHERE `entry` = 142721;

UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 143018;

DELETE FROM `creature_queststarter` WHERE `id` = '143018';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('143018', '53197'),
('143018', '53198');

DELETE FROM `creature_questender` WHERE `id` = '143018';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('143018', '53194'),
('143018', '53197');
