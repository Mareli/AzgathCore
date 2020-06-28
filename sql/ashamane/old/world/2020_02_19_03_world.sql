DELETE FROM `race_unlock_requirement` WHERE `raceID` IN (37);
INSERT INTO `race_unlock_requirement` VALUES 
(37, 7, 0);

DELETE FROM `playercreateinfo` WHERE `race` IN (37);
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
('37','3','0','1','-8177.66','792.195','73.9964','0.781548'),
('37','8','0','1','-8177.66','792.195','73.9964','0.781548'),
('37','10','0','1','-8177.66','792.195','73.9964','0.781548'),
('37','5','0','1','-8177.66','792.195','73.9964','0.781548'),
('37','4','0','1','-8177.66','792.195','73.9964','0.781548'),
('37','9','0','1','-8177.66','792.195','73.9964','0.781548'),
('37','1','0','1','-8177.66','792.195','73.9964','0.781548');


DELETE FROM `player_racestats` WHERE `race` IN (37);
INSERT INTO `player_racestats` VALUES
(37, 0, 0, 0, 0);
