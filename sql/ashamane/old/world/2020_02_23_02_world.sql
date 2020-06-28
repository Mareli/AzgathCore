DELETE FROM `race_unlock_requirement` WHERE `raceID` IN (35);
INSERT INTO `race_unlock_requirement` VALUES 
(35, 7, 0);

DELETE FROM `playercreateinfo` WHERE `race` = 35;
INSERT INTO `playercreateinfo`(`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
(35, 1, 1, 14, 1567.38, -4189.12, 53.6794, 2.2874),
(35, 3, 1, 14, 1567.38, -4189.12, 53.6794, 2.2874),
(35, 4, 1, 14, 1567.38, -4189.12, 53.6794, 2.2874),
(35, 8, 1, 14, 1567.38, -4189.12, 53.6794, 2.2874),
(35, 9, 1, 14, 1567.38, -4189.12, 53.6794, 2.2874),
(35, 10, 1, 14, 1567.38, -4189.12, 53.6794, 2.2874);

DELETE FROM player_racestats WHERE race IN (35);
INSERT INTO player_racestats VALUES
(35, 0, 0, 0, 0);
