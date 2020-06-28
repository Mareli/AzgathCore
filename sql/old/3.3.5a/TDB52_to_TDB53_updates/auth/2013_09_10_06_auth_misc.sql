/* cs_npc.cpp */

SET @id = 570;

-- Add new permissions
DELETE FROM `rbac_permissions` WHERE `id` BETWEEN @id AND @id+31;
INSERT INTO `rbac_permissions` (`id`, `name`) VALUES
(@id+0, 'npc'),
(@id+1, 'npc add'),
(@id+2, 'npc add formation'),
(@id+3, 'npc add item'),
(@id+4, 'npc add move'),
(@id+5, 'npc add temp'),
(@id+6, 'npc add delete'),
(@id+7, 'npc add delete item'),
(@id+8, 'npc add follow'),
(@id+9, 'npc add follow stop'),
(@id+10, 'npc set'),
(@id+11, 'npc set allowmove'),
(@id+12, 'npc set entry'),
(@id+13, 'npc set factionid'),
(@id+14, 'npc set flag'),
(@id+15, 'npc set level'),
(@id+16, 'npc set link'),
(@id+17, 'npc set model'),
(@id+18, 'npc set movetype'),
(@id+19, 'npc set phase'),
(@id+20, 'npc set spawndist'),
(@id+21, 'npc set spawntime'),
(@id+22, 'npc set data'),
(@id+23, 'npc info'),
(@id+24, 'npc near'),
(@id+25, 'npc move'),
(@id+26, 'npc playemote'),
(@id+27, 'npc say'),
(@id+28, 'npc textemote'),
(@id+29, 'npc whisper'),
(@id+30, 'npc yell'),
(@id+31, 'npc tame');

-- Add permissions to "corresponding Commands Role"
DELETE FROM `rbac_role_permissions` WHERE `permissionId` BETWEEN @id AND @id+31;
INSERT INTO `rbac_role_permissions` (`roleId`, `permissionId`) VALUES
(2, @id+0),
(3, @id+1),
(3, @id+2),
(3, @id+3),
(3, @id+4),
(3, @id+5),
(3, @id+6),
(3, @id+7),
(3, @id+8),
(3, @id+9),
(3, @id+10),
(4, @id+11),
(4, @id+12),
(3, @id+13),
(3, @id+14),
(3, @id+15),
(3, @id+16),
(3, @id+17),
(3, @id+18),
(3, @id+19),
(3, @id+20),
(3, @id+21),
(4, @id+22),
(4, @id+23),
(3, @id+24),
(3, @id+25),
(4, @id+26),
(2, @id+27),
(2, @id+28),
(2, @id+29),
(2, @id+30),
(3, @id+31);
