UPDATE `creature` SET `spawnDifficulties` = '2' WHERE `map` = 940;
UPDATE `creature` SET `spawnDifficulties` = '1,2' WHERE `map` = 643;
UPDATE `creature` SET `spawnDifficulties` = '0' WHERE `map` IN (0,1,646,648,730,860,870,1116,1191,1220,1464);

UPDATE `gameobject` SET `spawnDifficulties` = '14,15' WHERE `map` = 671;
UPDATE `gameobject` SET `spawnDifficulties` = '0' WHERE `map` = 1191;
UPDATE `gameobject` SET `spawnDifficulties` = '2' WHERE `map` = 940;
UPDATE `gameobject` SET `spawnDifficulties` = '1,2' WHERE `map` = 643;

DELETE FROM creature_addon WHERE guid NOT IN (SELECT guid FROM creature);
DELETE FROM gameobject_addon WHERE guid NOT IN (SELECT guid FROM gameobject);

UPDATE creature_template_model SET Probability = 1 WHERE Probability = 0;



