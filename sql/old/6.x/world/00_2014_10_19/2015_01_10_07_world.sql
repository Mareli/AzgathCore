ALTER TABLE `creature_classlevelstats`
  DROP `basehp0`,
  DROP `basehp1`,
  DROP `basehp2`,
  DROP `basehp3`,
  DROP `basehp4`,
  DROP `basehp5`;

DELETE FROM `creature_classlevelstats` WHERE `level` BETWEEN 101 AND 105;
INSERT INTO `creature_classlevelstats` (`level`, `class`, `basemana`, `basearmor`, `attackpower`, `rangedattackpower`, `damage_base`, `damage_exp1`, `damage_exp2`, `damage_exp3`, `damage_exp4`, `damage_exp5`, `comment`) VALUES
(101, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(101, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(101, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(101, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(102, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(102, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(102, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(102, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(103, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(103, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(103, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(103, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(104, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(104, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(104, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(104, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(105, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(105, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(105, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(105, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
