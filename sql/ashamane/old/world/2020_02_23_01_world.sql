UPDATE `creature_template` SET `ScriptName` = 'npc_moira_thaurissan_bfa' WHERE `entry` = 144152;

DELETE FROM `creature` WHERE `guid` = 280009118;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(280009118, 133362, 0, 1519, 9171, '0', '0', 0, 0, 0, -8172.592, 801.0712, 74.05038, 3.948032, 120, 0, 0, 0, 0, 0, 0, 0, 0, 28768); -- Botschafter Moorgard (Area: -Unknown- - Difficulty: 0) (Auras: 262182 - -Unknown-)
