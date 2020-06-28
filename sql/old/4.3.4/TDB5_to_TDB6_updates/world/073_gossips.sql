DELETE FROM `gossip_menu_option` WHERE `menu_id` = 421 AND `id` IN (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 435 AND `id` IN (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
-- Menu 421
(421, 0, 0, 'Alchemy', 1, 1, 422, 40, 0, 0, ''),
(421, 1, 0, 'Archaeology', 1, 1, 0, 0, 0, 0, ''),
(421, 2, 0, 'Blacksmithing', 1, 1, 423, 41, 0, 0, ''),
(421, 3, 0, 'Cooking', 1, 1, 424, 42, 0, 0, ''),
(421, 4, 0, 'Enchanting', 1, 1, 444, 43, 0, 0, ''),
(421, 5, 0, 'Engineering', 1, 1, 425, 44, 0, 0, ''),
(421, 6, 0, 'First Aid', 1, 1, 426, 45, 0, 0, ''),
(421, 7, 0, 'Fishing', 1, 1, 443, 46, 0, 0, ''),
(421, 8, 0, 'Flying', 1, 1, 0, 0, 0, 0, ''),
(421, 9, 0, 'Herbalism', 1, 1, 428, 47, 0, 0, ''),
(421, 10, 0, 'Inscription', 1, 1, 10010, 13, 0, 0, ''),
(421, 11, 0, 'Jewelcrafting', 1, 1, 0, 0, 0, 0, ''),
(421, 12, 0, 'Leatherworking', 1, 1, 428, 47, 0, 0, ''),
(421, 13, 0, 'Mining', 0, 0, 430, 48, 0, 0, ''),
(421, 14, 0, 'Riding', 0, 0, 0, 0, 0, 0, ''),
(421, 15, 0, 'Skinning', 0, 0, 431, 47, 0, 0, ''),
(421, 16, 0, 'Tailoring', 0, 0, 432, 49, 0, 0, ''),
-- Menu 435
(435, 0, 0, '|cFF0008E8NEW|r: Reforging', 1, 1, 0, 0, 0, 0, ''),
(435, 1, 0, '|cFF0008E8NEW|r: Transmogrification', 1, 1, 0, 0, 0, 0, ''),
(435, 2, 0, '|cFF0008E8NEW|r: Void Storage', 1, 1, 0, 0, 0, 0, ''),
(435, 3, 0, 'Auction House', 1, 1, 3102, 18, 0, 0, ''),
(435, 4, 0, 'Bank', 1, 1, 265, 19, 0, 0, ''),
(435, 5, 0, 'Barber', 1, 1, 10011, 30, 0, 0, ''),
(435, 6, 0, 'Class Trainer', 1, 1, 401, 0, 0, 0, ''),
(435, 7, 0, 'Flight Master', 1, 1, 382, 23, 0, 0, ''),
(435, 8, 0, 'Guild Master & Vendor', 1, 1, 383, 24, 0, 0, ''),
(435, 9, 0, 'Inn', 1, 1, 3126, 22, 0, 0, ''),
(435, 10, 0, 'Mailbox', 1, 1, 0, 0, 0, 0, ''),
(435, 11, 0, 'Points of Interest', 1, 1, 0, 0, 0, 0, ''),
(435, 12, 0, 'Portals', 1, 1, 0, 0, 0, 0, ''),
(435, 13, 0, 'Profession Trainer', 1, 1, 421, 0, 0, 0, ''),
(435, 14, 0, 'Stable Master', 1, 1, 4925, 26, 0, 0, ''),
(435, 15, 0, 'Vendor', 1, 1, 0, 0, 0, 0, '');
