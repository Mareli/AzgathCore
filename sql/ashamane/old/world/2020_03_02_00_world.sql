delete from `creature_loot_template` where `Entry`=702;
insert into `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) values
('702','60291','0','100','1','1','0','1','1',''),
('702','60272','0','40','1','1','0','1','1',''),
('702','60271','0','40','1','1','0','1','1',''),
('702','60270','0','40','1','1','0','1','1',''),
('702','57990','0','0.49','1','1','0','1','1',''),
('702','4306','0','30.9144','0','1','0','1','2',''),
('702','2589','0','32','0','1','0','1','3',''),
('702','3770','0','4.9799','0','1','0','1','1','');

DELETE FROM `gameobject` WHERE `guid` = '20360687'; 

DELETE FROM `creature_queststarter` WHERE `id` = '2077' AND `quest` = '28713'; 
DELETE FROM `creature_questender` WHERE `id` = '2077' AND `quest` = '28713'; 


