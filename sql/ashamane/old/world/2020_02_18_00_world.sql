DELETE FROM `playercreateinfo` WHERE `race` = 34;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(34, 1, 2081, 0, 1621.13, 536.649, 201.48, 0),
(34, 2, 2081, 0, 1621.13, 536.649, 201.48, 0),
(34, 3, 2081, 0, 1621.13, 536.649, 201.48, 0),
(34, 4, 2081, 0, 1621.13, 536.649, 201.48, 0),
(34, 5, 2081, 0, 1621.13, 536.649, 201.48, 0),
-- (34, 6, Dead King), patch 8.3 DK
(34, 7, 2081, 0, 1621.13, 536.649, 201.48, 0),
(34, 8, 2081, 0, 1621.13, 536.649, 201.48, 0),
(34, 9, 2081, 0, 1621.13, 536.649, 201.48, 0),
(34, 10, 2081, 0, 1621.13, 536.649, 201.48, 0);

-- Intro Cinematic Scene Templates
-- DarkIron
DELETE FROM `scene_template` WHERE (`SceneId`=2137 AND `ScriptPackageID`=2086);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(2137, 9, 2086);
