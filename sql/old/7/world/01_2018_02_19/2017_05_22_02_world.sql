--
DELETE FROM `spell_group` WHERE `spell_id` IN (469,6673,57933);
DELETE FROM `spell_proc_event` WHERE `entry` IN (324,974,6346,16961,20164,20165,24905,30823,32409,44549,49222,51530,51701,52127,52798,55440,55610,56218,56249,56364,56835,58372,58647,58677,59327,63335,56375,50034,54821,56800,58375,63320,46916,92364,88766,10400);
DELETE FROM `spell_learn_spell` WHERE `entry` IN (2098,33873);
DELETE FROM `spell_threat` WHERE `entry` IN (78,8056,23455,33619,33745);
DELETE FROM `item_template_addon` WHERE `Id` = 17733;
