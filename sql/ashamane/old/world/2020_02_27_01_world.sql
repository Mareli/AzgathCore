DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (70296, 6306);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(70296, 46),
(6306, 196);

DELETE FROM `creature_default_trainer` WHERE `CreatureId`=7946;
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(7946, 10);
