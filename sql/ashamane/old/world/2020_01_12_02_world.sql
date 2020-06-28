-- Wardruid Loti 134132 SAI
SET @ENTRY := 134132;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,263510,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Just Summoned - Cast 'Spell Id263510'"),
(@ENTRY,0,1,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Just Summoned - Say Line 0"),
(@ENTRY,0,3,7,40,0,100,0,46,134132,0,0,28,46598,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Waypoint 46 Reached - Remove Aura 'Ride Vehicle Hardcoded 46598'"),
(@ENTRY,0,4,0,40,0,100,0,48,134132,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Waypoint 48 Reached - Despawn Instant"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,62,1642,0,0,0,0,0,1,0,0,0,-773.13,1093.22,321.146,0,"Wardruid Loti 134132 - On Just Summoned - Teleport"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-768.591,1116.03,321.494,0,"Wardruid Loti 134132 - On Just Summoned - Move To Position"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,33,129740,0,0,0,0,0,21,5,0,0,0,0,0,0,"Wardruid Loti 134132 - On Waypoint 0 Reached - Quest Credit 'Gonk 129740'"),
(@ENTRY,0,8,10,73,0,100,0,0,0,0,0,85,259567,0,0,0,0,0,7,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Spellclick - Invoker Cast 'Spell Id259567'"),
(@ENTRY,0,10,0,38,0,100,0,0,1,0,0,53,1,134132,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Data Set 0 1 - Start Waypoint");

-- Disciple of Zul 129504 SAI
SET @ENTRY := 129504;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,256652,0,0,0,0,0,19,55370,21,0,0,0,0,0,"Disciple of Zul 129504 - On Respawn - Cast 'Spell Id256652'"),
(@ENTRY,0,1,0,0,0,100,0,4000,6000,5000,9000,11,266146,0,0,0,0,0,2,0,0,0,0,0,0,0,"Disciple of Zul 129504 - In Combat - Cast 'Spell Id266146'"),
(@ENTRY,0,2,0,2,0,100,0,0,60,15000,20000,11,15586,0,0,0,0,0,1,0,0,0,0,0,0,0,"Disciple of Zul 129504 - Between 0-60% Health - Cast 'Heal 15586'");

-- Rezan 131049 SAI
SET @ENTRY := 131049;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,49426,0,0,0,85,274060,0,0,0,0,0,7,0,0,0,0,0,0,0,"Rezan 131049 - On Quest '' Taken - Invoker Cast 'Spell Id274060'");

-- Zayoos 131476 SAI
SET @ENTRY := 131476;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zayoos 131476 - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,6000,9000,5000,15000,11,263692,0,0,0,0,0,2,0,0,0,0,0,0,0,"Zayoos 131476 - In Combat - Cast 'Spell Id263692'"),
(@ENTRY,0,2,0,0,0,100,0,16000,19000,15000,25000,11,263696,0,0,0,0,0,5,0,0,0,0,0,0,0,"Zayoos 131476 - In Combat - Cast 'Spell Id263696'"),
(@ENTRY,0,3,0,0,0,100,0,10000,25000,15000,30000,11,263684,0,0,0,0,0,5,0,0,0,0,0,0,0,"Zayoos 131476 - In Combat - Cast 'Spell Id263684'");

-- King Da'ka 130948 SAI
SET @ENTRY := 130948;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Da'ka 130948 - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,15000,19000,18000,22000,11,263991,0,0,0,0,0,2,0,0,0,0,0,0,0,"King Da'ka 130948 - In Combat - Cast 'Spell Id263991'"),
(@ENTRY,0,2,0,0,0,100,0,9000,19000,15000,22000,11,262069,0,0,0,0,0,5,0,0,0,0,0,0,0,"King Da'ka 130948 - In Combat - Cast 'Spell Id262069'");

-- Rokhan 126549 SAI
SET @ENTRY := 126549;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,1,5,0,0,15,47103,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-- Paku'ai Rokota 122689 SAI
SET @ENTRY := 122689;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,22290,1,0,0,33,122689,0,0,0,0,0,7,0,0,0,0,0,0,0,"Paku'ai Rokota 122689 - On Gossip Option 1 Selected - Quest Credit 'Paku'ai Rokota 122689'"),
-- todo fix wrong taxi and add dialouge (need sniffs)
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,52,2043,0,0,0,0,0,7,0,0,0,0,0,0,0,"Paku'ai Rokota 122689 - On Gossip Option 0 Selected - Activate Taxi Path 2043");

-- Princess Talanji 120904 SAI
SET @ENTRY := 120904;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,1,10,0,0,33,120904,0,0,0,0,0,7,0,0,0,0,0,0,0,"Princess Talanji 120904 - Within 1-10 Range Out of Combat LoS - Quest Credit 'Princess Talanji 120904'"),
(@ENTRY,0,1,0,19,0,100,0,47105,0,0,0,85,241832,0,0,0,0,0,7,0,0,0,0,0,0,0,"Princess Talanji 120904 - On Quest '' Taken - Invoker Cast 'Spell Id241832'");

-- Princess Talanji 121241 SAI
SET @ENTRY := 121241;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,75,0,100,1,0,121437,10,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 121241 - On Distance To Creature - Run Script (No Repeat)"),
(@ENTRY,0,1,3,19,0,100,0,47262,0,0,0,53,1,@ENTRY*100+00,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 121241 - On Quest '' Taken - Start Waypoint"),
(@ENTRY,0,2,0,58,0,100,0,19,@ENTRY*100+00,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 121241 - On Waypoint Finished - Despawn Instant"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 121241 - On Quest Taken - Say Line 1");

-- Actionlist SAI
SET @ENTRY := 12124100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 121241 - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,53,1,121241,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 121241 - On Script - Start Waypoint"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,33,121437,0,0,0,0,0,23,0,0,0,0,0,0,0,"Princess Talanji 121241 - On Script - Quest Credit 'Entered First Camp 121437'"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 121241 - On Script - Say Line 1"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 121241 - On Script - Despawn Instant");

-- Blood Troll Brutalizer 120607 SAI
SET @ENTRY := 120607;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,6000,5000,9000,11,256607,0,0,0,0,0,2,0,0,0,0,0,0,0,"Blood Troll Brutalizer 120607 - In Combat - Cast 'Spell Id256607'"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,28,281885,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Troll Brutalizer 120607 - On Aggro - Remove Aura 'Spell Id281885'");

-- Dead Zandalari 121296 SAI
SET @ENTRY := 121296;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,241992,0,0,0,33,121296,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dead Zandalari 121296 - On Spellhit 'Spell Id241992' - Quest Credit 'Dead Zandalari 121296'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dead Zandalari 121296 - On Spellhit - Despawn In 2000 ms");

-- Blood Troll Hexxer 120606 SAI
SET @ENTRY := 120606;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,9000,15000,20000,11,255366,0,0,0,0,0,2,0,0,0,0,0,0,0,"Blood Troll Hexxer 120606 - In Combat - Cast 'Spell Id255366'");

-- Grand Ma'da Ateena 121504 SAI
SET @ENTRY := 121504;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,500,1000,2000,2000,11,256099,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grand Ma'da Ateena 121504 - In Combat - Cast 'Spell Id256099'"),
(@ENTRY,0,1,0,0,0,100,0,1500,21000,20000,23000,11,272672,1,0,0,0,0,2,0,0,0,0,0,0,0,"Grand Ma'da Ateena 121504 - In Combat - Cast 'Spell Id272672'"),
(@ENTRY,0,2,3,2,0,100,0,0,65,0,0,33,121504,0,0,0,0,0,18,50,0,0,0,0,0,0,"Grand Ma'da Ateena 121504 - Between 0-65% Health - Quest Credit 'Grand Ma'da Ateena 121504'"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Ma'da Ateena 121504 - Between 0-0% Health - Despawn Instant"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,129730,50,0,0,0,0,0,"Grand Ma'da Ateena 121504 - Between 0-0% Health - Set Data 0 1");

-- Actionlist SAI
SET @ENTRY := 12973000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 129730 - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,5000,5000,0,0,69,1,0,0,0,0,0,8,0,0,0,1039.10,1071.56,26.74,0,"Princess Talanji 129730 - On Script - Move To Position"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 129730 - On Script - Say Line 1");

-- Princess Talanji 129730 SAI
SET @ENTRY := 129730;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,74,0,100,0,0,50,0,0,11,271670,0,0,0,0,0,21,60,0,0,0,0,0,0,"Princess Talanji 129730 - On Friendly Between 0-50% Health - Cast 'Spell Id271670'"),
(@ENTRY,0,1,0,38,0,100,0,0,1,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 129730 - On Data Set 0 1 - Run Script"),
(@ENTRY,0,2,0,11,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 129730 - On Respawn - Set Run On"),
(@ENTRY,0,3,0,34,0,100,0,8,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 129730 - On Reached Point 1 - Despawn Instant");

-- Princess Talanji 130844 SAI
SET @ENTRY := 130844;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,47263,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 130844 - On Quest '' Taken - Say Line 0"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,1,130844,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 130844 - On Quest Taken - Start Waypoint"),
(@ENTRY,0,2,3,58,0,100,0,0,130844,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 130844 - On Waypoint Finished - Say Line 1"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Princess Talanji 130844 - On Waypoint Finished - Despawn Instant");

-- Princess Talanji 131146 SAI
SET @ENTRY := 131146;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,21814,0,0,0,85,257255,0,0,0,0,0,7,0,0,0,0,0,0,0,"Princess Talanji 131146 - On Gossip Option 0 Selected - Invoker Cast 'Spell Id257255'");

UPDATE `creature_template` SET `npcflag` = 16777216,`VehicleId` = 5390, `unit_flags` = 33554440, `unit_flags2` = 133120 WHERE (entry = 121530);#
-- todo check correct speed
UPDATE `creature_template` SET `speed_run` = 1.5 WHERE (entry = 121530);

-- Actionlist SAI
SET @ENTRY := 12153000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,500,500,0,0,85,46598,2,0,0,0,0,1,0,0,0,0,0,0,0,"Tze'na 121530 - On Script - Invoker Cast 'Ride Vehicle Hardcoded 46598'"),
(@ENTRY,9,1,0,0,0,100,0,500,500,0,0,75,263750,0,0,0,0,0,7,0,0,0,0,0,0,0,"Tze'na 121530 - On Script - Add Aura 'Spell Id263750'");

-- Tze'na 121530 SAI
SET @ENTRY := 121530;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Tze'na 121530 - On Just Summoned - Run Script"),
(@ENTRY,0,1,3,27,0,100,513,0,0,0,0,53,1,121530,0,0,0,0,1,0,0,0,0,0,0,0,"Tze'na 121530 - On Passenger Boarded - Start Waypoint (No Repeat) (While Charmed)"),
(@ENTRY,0,2,3,58,0,100,0,0,121530,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tze'na 121530 - On Waypoint Finished - Despawn Instant");

-- Princess Talanji 130717 SAI
SET @ENTRY := 130717;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,11,46598,1,0,0,0,0,23,0,0,0,0,0,0,0,"Princess Talanji 130717 - On Just Summoned - Cast 'Ride Vehicle Hardcoded 46598'");

UPDATE `creature_template` SET `speed_walk` = 1, `speed_run` = 2.1 WHERE (entry = 134132);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=121530 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (121530, 46598, 1, 0);

DELETE FROM `spell_script_names` WHERE `spell_id`=257255 AND `ScriptName`='spell_play_chapter_1';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (257255, 'spell_play_chapter_1');

INSERT IGNORE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(121241, 0, 0, 'My people... slaughtered! You see now de evil we are fighting, $n. De blood trolls are monsters!', 12, 0, 100, 22, 0, 101779, 130485, 'Princess Talanji to Player'),
(121241, 1, 0, 'Best if I stay hidden until de time comes to strike. We will bring down Ateena together!', 12, 0, 100, 0, 0, 101748, 140936, 'Princess Talanji to Player');

DELETE FROM `waypoints` WHERE `entry` = 12124100;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,1,908.3568,1048.32,6.887704,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,2,908.8568,1048.32,7.137704,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,3,909.3568,1048.57,7.137704,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,4,910.6068,1048.57,6.887704,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,5,910.8568,1048.57,7.137704,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,6,914.3568,1048.32,7.137704,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,7,914.6068,1048.32,7.137704,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,8,915.3568,1048.32,7.137704,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,9,918.8568,1048.07,7.387704,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,10,922.8568,1048.07,7.637704,null);

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,11,919.0225,1048.188,7.650141,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,12,923.2725,1048.188,7.900141,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,13,923.7725,1047.938,7.900141,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,14,924.7725,1048.188,8.150141,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,15,926.5225,1048.938,8.150141,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,16,927.2725,1049.188,8.400141,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,17,929.2725,1049.938,8.650141,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,18,932.0225,1050.688,8.900141,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (12124100,19,933.0225,1051.188,9.150141,null);

DELETE FROM `waypoints` WHERE `entry` = 130844;

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,1,1041.435,1071.668,27.01378,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,2,1043.435,1071.418,27.26378,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,3,1051.435,1071.418,27.01378,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,4,1054.435,1071.418,26.76378,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,5,1056.435,1071.418,26.51378,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,6,1058.435,1071.418,26.26378,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,7,1062.185,1071.418,26.01378,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,8,1084.185,1071.418,26.26378,null);

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,9,1091.168,1069.14,25.87381,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,10,1093.168,1068.64,25.37381,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,11,1094.168,1068.39,25.12381,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,12,1096.668,1067.39,24.87381,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,13,1098.418,1066.89,24.87381,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,14,1101.668,1063.39,24.62381,null);

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,15,1101.969,1063.128,24.5108,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,16,1103.969,1060.878,24.2608,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,17,1107.719,1059.878,24.0108,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,18,1110.719,1059.378,24.0108,null);

INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,19,1107.903,1059.764,24.17693,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,20,1110.903,1059.014,23.92693,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,21,1114.403,1058.264,23.67693,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,22,1116.903,1056.514,23.42693,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,23,1119.403,1055.014,23.42693,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (130844,24,1121.903,1053.264,23.17693,null);

DELETE FROM `waypoints` WHERE `entry` = 130844;

DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 1, 1122.47, 1052.72, 23.1423, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 2, 1111.22, 1061.97, 24.1423, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 3, 1111.14, 1080.17, 17.7855, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 4, 1112.08, 1091.22, 14.6626, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=5;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 5, 1110.44, 1098.12, 14.2489, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=6;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 6, 1107.74, 1105.59, 13.8983, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=7;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 7, 1098.74, 1113.09, 14.1483, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=8;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 8, 1092.58, 1117.96, 13.9784, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=9;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 9, 1078.31, 1131.72, 12.8417, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=10;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 10, 1068.43, 1138.76, 11.3178, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=11;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 11, 1056.92, 1145.95, 9.63842, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=12;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 12, 1043.74, 1153.49, 8.43429, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=13;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 13, 1031.85, 1165.15, 7.21017, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=14;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 14, 1020.55, 1183.61, 5.22663, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=15;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 15, 1003.14, 1202.12, 1.80339, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=16;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 16, 998.615, 1207.75, 1.58124, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=17;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 17, 987.493, 1224.03, 1.72253, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=18;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 18, 980.694, 1234.52, 0.982649, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=19;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 19, 976.07, 1241.02, 0.429828, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=20;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 20, 973.807, 1244.14, 0.177309, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=21;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 21, 958.334, 1266.94, 0.0652942, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=22;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 22, 949.73, 1278.95, 1.88866, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=23;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 23, 939.419, 1295.46, 0.463457, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=24;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 24, 936.97, 1299.33, 0.1512, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=25;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 25, 916.002, 1333.51, 0.172559, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=26;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 26, 902.868, 1350.47, 1.57322, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=27;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 27, 884.811, 1367.28, 2.38494, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=28;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 28, 872.666, 1375.37, 5.41949, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=29;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 29, 860.386, 1377.64, 8.09631, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=30;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 30, 841.711, 1376.09, 15.2707, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=31;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 31, 836.548, 1359.42, 16.1635, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=32;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 32, 832.151, 1349.72, 16.0522, NULL);
DELETE FROM `waypoints` WHERE `entry`=121530 AND `pointid`=33;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121530, 33, 830.481, 1347.78, 15.9612, NULL);

DELETE FROM `waypoints` WHERE `entry` = 121241;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,1,714.027,993.678,1.124916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,2,712.277,992.928,1.124916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,3,715.527,985.678,0.874916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,4,716.527,983.928,0.624916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,5,718.027,980.178,0.624916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,6,719.527,979.178,1.124916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,7,721.027,977.928,1.374916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,8,723.527,975.928,1.624916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,9,727.777,972.178,1.624916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,10,728.527,971.428,2.374916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,11,729.277,970.928,2.624916,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (121241,12,734.777,966.428,2.624916,null);


DELETE FROM `waypoints` WHERE `entry` = 139649;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (139649,1,-739.1703,2156.17,705.6909,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (139649,2,-743.9203,2140.67,706.1909,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (139649,3,-742.9203,2129.17,706.6909,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (139649,4,-742.4203,2120.67,710.6909,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (139649,5,-742.6703,2109.92,717.4409,null);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (139649,6,-739.4203,2096.42,717.4409,null);


-- Conducting Rod 132155 SAI
SET @ENTRY := 132155;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Conducting Rod 132155 - On Respawn - Set Reactstate Passive");

-- Jao-Ti the Thunderous 128474 SAI
SET @ENTRY := 128474;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jao-Ti the Thunderous 128474 - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,28,255625,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jao-Ti the Thunderous 128474 - On Aggro - Remove Aura 'Spell Id255625'"),
(@ENTRY,0,2,0,0,0,100,0,4000,4500,20000,25000,11,259750,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jao-Ti the Thunderous 128474 - In Combat - Cast 'Spell Id259750'"),
(@ENTRY,0,3,0,0,0,100,0,6000,6500,8000,10000,11,259744,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jao-Ti the Thunderous 128474 - In Combat - Cast 'Spell Id259744'"),
(@ENTRY,0,4,0,0,0,100,0,9000,13000,18000,20000,11,224839,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jao-Ti the Thunderous 128474 - In Combat - Cast 'Spell Id224839'"),
(@ENTRY,0,5,0,6,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jao-Ti the Thunderous 128474 - On Just Died - Say Line 1");

-- Subjugator Zheng 128472 SAI
SET @ENTRY := 128472;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Subjugator Zheng 128472 - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,4000,5000,9000,90000,11,260065,0,0,0,0,0,2,0,0,0,0,0,0,0,"Subjugator Zheng 128472 - In Combat - Cast 'Spell Id260065'"),
(@ENTRY,0,2,0,0,0,100,0,7000,8000,11000,13000,11,224664,0,0,0,0,0,2,0,0,0,0,0,0,0,"Subjugator Zheng 128472 - In Combat - Cast 'Spell Id224664'"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Subjugator Zheng 128472 - On Just Died - Say Line 1");

-- Zolani 129088 SAI
SET @ENTRY := 129088;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,1,3,0,30000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zolani 129088 - Within 1-3 Range Out of Combat LoS - Say Line 0");

-- Warlord Kao 127766 SAI
SET @ENTRY := 127766;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,143253,50,0,0,0,0,0,"Warlord Kao 127766 - On Aggro - Set Data 0 1"),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,11000,23000,11,260068,0,0,0,0,0,2,0,0,0,0,0,0,0,"Warlord Kao 127766 - In Combat - Cast 'Spell Id260068'"),
(@ENTRY,0,2,0,0,0,100,0,8000,10000,11000,23000,11,260075,0,0,0,0,0,2,0,0,0,0,0,0,0,"Warlord Kao 127766 - In Combat - Cast 'Spell Id260075'"),
(@ENTRY,0,3,0,38,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Kao 127766 - On Data Set 0 0 - Say Line 0");

-- Warlord Kao 127766 SAI
SET @ENTRY := 127766;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,143253,50,0,0,0,0,0,"Warlord Kao 127766 - On Aggro - Set Data 0 1"),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,11000,23000,11,260068,0,0,0,0,0,2,0,0,0,0,0,0,0,"Warlord Kao 127766 - In Combat - Cast 'Spell Id260068'"),
(@ENTRY,0,2,0,0,0,100,0,8000,10000,11000,23000,11,260075,0,0,0,0,0,2,0,0,0,0,0,0,0,"Warlord Kao 127766 - In Combat - Cast 'Spell Id260075'"),
(@ENTRY,0,3,0,38,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Kao 127766 - On Data Set 0 0 - Say Line 0");

UPDATE `creature_template` SET `npcflag` = 16777216 WHERE (entry = 133960);
UPDATE `creature_template` SET `vehicleId` = 5664 WHERE (entry = 133961);
UPDATE `creature_template` SET  `unit_flags` = 33544 WHERE (entry = 133961);

-- Scarbeak 133960 SAI
SET @ENTRY := 133960;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,0,0,0,28,263139,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarbeak 133960 - Out of Combat - Remove Aura 'Spell Id263139'"),
(@ENTRY,0,1,2,73,0,100,0,0,0,0,0,33,129417,0,0,0,0,0,7,0,0,0,0,0,0,0,"Scarbeak 133960 - On Spellclick - Quest Credit 'Scarbeak 129417'"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,28,263139,0,0,0,0,0,7,0,0,0,0,0,0,0,"Scarbeak 133960 - On Spellclick - Remove Aura 'Spell Id263139'");

-- Scarbeak 133961 SAI
SET @ENTRY := 133961;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,2,54,0,100,0,0,0,0,0,85,98709,1,0,0,0,0,1,0,0,0,0,0,0,0,"Scarbeak 133961 - On Just Summoned - Invoker Cast 'Spell Id98709'"),
(@ENTRY,0,1,0,27,0,100,0,0,0,0,0,53,1,133961,0,0,0,0,1,0,0,0,0,0,0,0,"Scarbeak 133961 - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarbeak 133961 - On Just Summoned - Set Fly On"),
(@ENTRY,0,3,4,58,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarbeak 133961 - On Waypoint Finished - Despawn Instant"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,28,263139,0,0,0,0,0,18,5,0,0,0,0,0,0,"Scarbeak 133961 - On Waypoint Finished - Remove Aura 'Spell Id263139'");

UPDATE `creature_template` SET `entry` = 133961, `speed_walk` = 2.5, `speed_run` = 8 WHERE (entry = 133961);

DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 1, -2242.6, 1527.34, 15.0698, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 2, -2225.31, 1522.4, 15.0698, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 3, -2194.33, 1511.87, 21.6117, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 4, -2158.52, 1501.64, 29.7292, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=5;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 5, -2112.52, 1492.55, 36.0286, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=6;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 6, -2013.65, 1481.48, 54.0446, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=7;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 7, -1963.06, 1483.59, 73.7169, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=8;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 8, -1916.49, 1476.05, 96.3743, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=9;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 9, -1889.59, 1465.87, 105.721, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=10;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 10, -1857.63, 1448.34, 115.601, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=11;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 11, -1832.53, 1433.81, 118.448, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=12;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 12, -1803.18, 1416.15, 116.585, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=13;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 13, -1786.04, 1404.96, 118.021, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=14;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 14, -1772.33, 1388.12, 127.616, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=15;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 15, -1744.64, 1362.45, 147.626, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=16;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 16, -1688.59, 1345.11, 168.853, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=17;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 17, -1589.64, 1286.68, 185.118, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=18;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 18, -1530.24, 1257.01, 203.959, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=19;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 19, -1486.32, 1248.11, 226.798, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=20;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 20, -1383.78, 1224.38, 281.397, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=21;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 21, -1283.09, 1197.68, 325.787, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=22;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 22, -1144.13, 1157.42, 346.133, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=23;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 23, -1035.17, 1126.89, 356.808, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=24;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 24, -972.366, 1095.21, 362.017, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=25;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 25, -891.332, 1040.89, 369.093, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=26;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 26, -824.085, 978.347, 378.584, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=27;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 27, -762.58, 887.812, 391.428, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=28;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 28, -744.488, 781.505, 405.236, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=29;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 29, -760.132, 667.755, 415.373, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=30;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 30, -833.08, 583.342, 431.165, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=31;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 31, -947.087, 564.804, 448.502, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=32;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 32, -1046.23, 614.658, 461.802, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=33;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 33, -1078.71, 670.373, 480.255, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=34;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 34, -1088.3, 711.221, 492.627, NULL);
DELETE FROM `waypoints` WHERE `entry`=133961 AND `pointid`=35;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (133961, 35, -1091.13, 750.035, 491.156, NULL);

DELETE FROM `spell_script_names` WHERE `spell_id`=224839 AND `ScriptName`='spell_call_the_storm';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (224839, 'spell_call_the_storm');
DELETE FROM `spell_script_names` WHERE `spell_id`=260075 AND `ScriptName`='spell_lightning_rod';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (260075, 'spell_lightning_rod');
DELETE FROM `spell_script_names` WHERE `spell_id`=254904 AND `ScriptName`='spell_quest_revitalize_spirit_obelisk';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (254904, 'spell_quest_revitalize_spirit_obelisk');
DELETE FROM `spell_script_names` WHERE `spell_id`=263018 AND `ScriptName`='spell_rastari_skull_whistle';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (263018, 'spell_rastari_skull_whistle');


update `creature_template` set `VehicleId` = 5421 where `entry` = 127417;
update `creature_template` set `VehicleId` = 5846 where `entry` = 134132;

-- Wardruid Loti 134132 SAI
SET @ENTRY := 134132;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,11,263510,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Just Summoned - Cast 'Spell Id263510'"),
(@ENTRY,0,1,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Just Summoned - Say Line 0"),
(@ENTRY,0,2,0,27,0,100,0,0,0,0,0,53,1,134132,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,3,7,40,0,100,0,46,134132,0,0,28,46598,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Waypoint 46 Reached - Remove Aura 'Ride Vehicle Hardcoded 46598'"),
(@ENTRY,0,4,0,40,0,100,0,48,134132,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti 134132 - On Waypoint 48 Reached - Despawn Instant"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,62,1642,0,0,0,0,0,1,0,0,0,-773.1302,1093.222,321.1463,0,"Wardruid Loti 134132 - On Just Summoned - Teleport"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-768.591,1116.03,321.494,0,"Wardruid Loti 134132 - On Just Summoned - Move To Position"),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,33,129740,0,0,0,0,0,21,5,0,0,0,0,0,0,"Wardruid Loti 134132 - On Waypoint 0 Reached - Quest Credit 'Gonk 129740'");

-- King Rastakhan 129491 SAI
SET @ENTRY := 129491;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,0,0,0,0,85,259522,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Rastakhan 129491 - On Quest Taken - Invoker Cast 'Spell Id259522'");

update `gameobject_template` set `Data1` = 49424 where `entry` in (280349, 280350, 280348);

update `creature_template` set `npcflag` = 16777216 where `entry` = 129701;
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` = 129701;

update `creature_template` set `VehicleId` = 5754 where `entry` = 129702;

update `creature_template` set `spell1` = 263083 where `entry` = 129702;
update `creature_template` set `InhabitType` = 4 where `entry` = 129702;

-- Ata the Winglord 129702 SAI
SET @ENTRY := 129702;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,85,46598,1,0,0,0,0,1,0,0,0,0,0,0,0,"Ata the Winglord 129702 - On Just Summoned - Invoker Cast 'Ride Vehicle Hardcoded 46598'"),
(@ENTRY,0,1,2,27,0,100,512,0,0,0,0,53,1,129702,0,0,0,0,1,0,0,0,0,0,0,0,"Ata the Winglord 129702 - On Passenger Boarded - Start Waypoint (While Charmed)"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ata the Winglord 129702 - On Passenger Boarded - Set Fly On (While Charmed)"),
(@ENTRY,0,3,0,40,0,100,0,20,129702,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ata the Winglord 129702 - On Waypoint 20 Reached - Despawn Instant");

-- Ata the Winglord 129701 SAI
SET @ENTRY := 129701;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,73,0,100,0,0,0,0,0,33,129701,0,0,0,0,0,7,0,0,0,0,0,0,0,"Ata the Winglord 129701 - On Spellclick - Quest Credit 'Ata the Winglord 129701'");

-- King Rastakhan 131070 SAI
SET @ENTRY := 131070;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,21916,0,0,0,85,259090,0,0,0,0,0,7,0,0,0,0,0,0,0,"King Rastakhan 131070 - On Gossip Option 0 Selected - Invoker Cast 'Spell Id259090'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,129491,0,0,0,0,0,7,0,0,0,0,0,0,0,"King Rastakhan 131070 - On Gossip Option 0 Selected - Quest Credit 'King Rastakhan 129491'");

-- King Rastakhan 139633 SAI
SET @ENTRY := 139633;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,22734,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"King Rastakhan 139633 - On Gossip Option 0 Selected - Activate Gameobject"),
(@ENTRY,0,1,0,10,0,100,0,1,5,60000,60000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Rastakhan 139633 - Within 1-5 Range Out of Combat LoS - Say Line 0");

DELETE FROM `creature_questender` WHERE `id`=132041 AND `quest`=49424;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (132041, 49424);
DELETE FROM `creature_questender` WHERE `id`=129561 AND `quest`=49424;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (129561, 49424);

DELETE FROM `quest_poi_points` WHERE `QuestID`=47915 AND `Idx1`=0 AND `Idx2`=0;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (47915, 0, 0, -595, 986, 0);

DELETE FROM `quest_poi` WHERE `QuestID`=47915 AND `BlobIndex`=0 AND `Idx1`=0;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (47915, 0, 0, 0, 291131, 156923, 1642, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_area` WHERE `spell`=260328 AND `area`=8732 AND `quest_start`=49424 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES (260328, 8732, 49424, 49965, 0, -1, 0, 2, 3, 43, 64);

DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 1, -460.875, 706.677, 282.8, 0, '-460.875 Y: 706.6771 Z: 282.8003');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 2, -448.547, 656.818, 258.4, 0, 'X: -448.5469 Y: 656.8177 Z: 258.4043 O: 4.954785');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 3, -443.538, 605.217, 254.061, 0, '[0] Points: X: -443.5382 Y: 605.217 Z: 254.0606');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 4, -253.689, 549.368, 189.683, 0, '[1] Points: X: -253.6892 Y: 549.368 Z: 189.6833');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 5, 172.016, 541.812, 129.326, 0, 'X: 172.0156 Y: 541.8125 Z: 129.3259');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 6, 244.892, 624.127, 113.18, 0, '244.8924 Y: 624.1268 Z: 113.1798');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 7, 273.879, 845.462, 114.704, 0, '273.8785 Y: 845.4618 Z: 114.7044');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 8, 240.891, 986.153, 144.453, 0, '240.8906 Y: 986.1528 Z: 144.4529');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 9, 227.042, 1155.24, 167.157, 0, '227.0417 Y: 1155.241 Z: 167.1574');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 10, 177.175, 1384.76, 194.245, 0, '177.1754 Y: 1384.76 Z: 194.2447');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 11, 108.78, 1241.74, 238.563, 0, '108.7795 Y: 1241.745 Z: 238.5629');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=12;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 12, 68.2118, 1203.55, 257.019, 0, '68.21181 Y: 1203.545 Z: 257.0192');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=13;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 13, -12.8507, 1086.94, 251.028, 0, '-12.85069 Y: 1086.939 Z: 251.0278');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=14;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 14, 41.4392, 819.055, 191.632, 0, '41.43924 Y: 819.0555 Z: 191.6324');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=15;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 15, 50.1892, 661.427, 157.624, 0, '50.18924 Y: 661.4271 Z: 157.6243');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=16;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 16, -94.7483, 654.273, 156.692, 0, '-94.74827 Y: 654.2726 Z: 156.6922');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=17;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 17, -227.115, 679.455, 178.999, 0, '-227.1146 Y: 679.4549 Z: 178.9987');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=18;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 18, -294.432, 651.59, 204.662, 0, '-294.4323 Y: 651.5903 Z: 204.6623');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=19;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 19, -384.918, 654.066, 201.629, 0, '-384.9184 Y: 654.066 Z: 201.6293');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=20;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 20, -501.273, 649.484, 217.171, 0, '-501.2726 Y: 649.4844 Z: 217.1709');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=21;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 21, -615.741, 707.684, 259.643, 0, '-615.7413 Y: 707.684 Z: 259.6428');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=22;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 22, -686.014, 715.337, 249.916, 0, '-686.0139 Y: 715.3368 Z: 249.9156');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=23;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 23, -680.467, 661.253, 280.884, 0, '-680.467 Y: 661.2535 Z: 280.8842');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=24;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 24, -686.16, 622.842, 292.098, 0, '-686.1597 Y: 622.842 Z: 292.0975');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=25;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 25, -674.09, 569.333, 279.179, 0, '-674.0903 Y: 569.3333 Z: 279.1787');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=26;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 26, -597.995, 574.318, 231.387, 0, '-597.9948 Y: 574.3177 Z: 231.3867');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=27;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 27, -537.274, 574.615, 232.883, 0, '-537.2743 Y: 574.6146 Z: 232.8826');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=28;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 28, -487.078, 604.75, 256.092, 0, '-487.0781 Y: 604.75 Z: 256.0919');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=29;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 29, -485.414, 718.029, 309.124, 0, '');

DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=0;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 0, -1389.22, -252.576, 415.536, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 1, -1372.77, -216.823, 418.518, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 2, -1317, -199.705, 420.038, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 3, -1282.57, -161.286, 402.313, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 4, -1188.48, -57.7917, 323.56, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 5, -1076.06, 56.4097, 319.328, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 6, -1047.8, 120.035, 302.861, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 7, -1117.65, -12.4896, 321.935, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 8, -965.332, 213.743, 291.572, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 9, -718.479, 586.028, 325.199, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 10, -628.882, 769.759, 311.06, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 11, -475.514, 778.773, 311.169, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=12;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 12, -375.189, 773.707, 327.754, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=13;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 13, -286.177, 826.127, 404.923, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=14;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 14, -353.34, 929.023, 441.357, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=15;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 15, -432.655, 1012.84, 443.619, 0, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=16;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 16, -451.75, 1014.85, 444.693, 0, NULL);

DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=0;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 0, -1416.78, -345.217, 405.235, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 1, -1426.8, -328.604, 417.691, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 2, -1398.25, -292.62, 416.463, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 3, -1365.54, -305.797, 442.17, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 4, -1397.02, -335.429, 445.609, 10000, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 5, -1380.04, -324.538, 429.699, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 6, -1329.19, -259.941, 451.584, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 7, -1261.56, 10.6667, 450.163, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 8, -969.198, 583.274, 391.463, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 9, -919.358, 715.596, 395.38, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 10, -919.099, 795.734, 382.379, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 11, -905.177, 802.983, 374.656, 1, '');

DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 1, -768.591, 1116.03, 321.494, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 2, -788.812, 1134.63, 321.591, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 3, -799.719, 1144.71, 321.584, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 4, -811.984, 1157.53, 321.241, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=5;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 5, -829.406, 1173.63, 321.216, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=6;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 6, -855.678, 1199.98, 321.501, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=7;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 7, -866.049, 1210.18, 321.552, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=8;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 8, -875.071, 1219.28, 321.594, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=9;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 9, -887.712, 1230.31, 321.03, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=10;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 10, -900.971, 1244.15, 320.547, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=11;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 11, -916.232, 1251.45, 319.867, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=12;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 12, -940.845, 1251.91, 319.953, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=13;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 13, -950.394, 1252.21, 319.991, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=14;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 14, -973.159, 1252.49, 319.991, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=15;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 15, -994.402, 1252.57, 319.994, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=16;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 16, -1003.48, 1252.94, 319.991, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=17;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 17, -1015.72, 1253.56, 319.991, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=18;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 18, -1041.43, 1253.59, 319.198, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=19;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 19, -1052.28, 1253.58, 318.585, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=20;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 20, -1075.86, 1259.78, 315.938, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=21;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 21, -1087.57, 1273.16, 313.213, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=22;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 22, -1093.36, 1291.3, 311.375, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=23;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 23, -1094.5, 1310.86, 312.533, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=24;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 24, -1094.12, 1324.58, 315.138, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=25;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 25, -1093.62, 1335.97, 317.294, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=26;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 26, -1105.2, 1363.91, 324.176, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=27;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 27, -1111.54, 1374.61, 327, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=28;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 28, -1119.85, 1382.18, 330.767, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=29;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 29, -1130.45, 1392.75, 334.679, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=30;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 30, -1143.11, 1402.36, 338.554, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=31;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 31, -1168.9, 1407.92, 345.322, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=32;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 32, -1179.26, 1409.43, 348.606, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=33;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 33, -1197.94, 1409.51, 354.943, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=34;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 34, -1211.71, 1411.81, 358.48, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=35;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 35, -1231.85, 1423.18, 363.891, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=36;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 36, -1237.61, 1433.15, 366.275, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=37;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 37, -1227.69, 1454.27, 372.186, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=38;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 38, -1214.02, 1460.74, 375.683, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=39;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 39, -1198.59, 1467.82, 379.363, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=40;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 40, -1189.83, 1475.13, 381.877, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=41;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 41, -1181.03, 1487.66, 387.566, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=42;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 42, -1177.23, 1513.58, 398.634, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=43;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 43, -1174.56, 1526.25, 404.055, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=44;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 44, -1165.9, 1538.43, 408.762, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=45;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 45, -1157.84, 1545.44, 411.193, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=46;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 46, -1148.01, 1547.01, 413.642, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=47;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 47, -1129.48, 1536.4, 417.356, NULL);
DELETE FROM `waypoints` WHERE `entry`=134132 AND `pointid`=48;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (134132, 48, -1124.18, 1534.72, 418.567, NULL);

DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 1, -774.113, 1507.56, 427.278, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=2;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 2, -809.752, 1513.88, 447.15, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=3;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 3, -856.958, 1570.18, 476.936, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=4;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 4, -865.608, 1620.07, 491.882, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=5;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 5, -844.88, 1628.24, 499.545, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=6;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 6, -790.667, 1619.97, 517.786, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=7;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 7, -721.738, 1585.74, 530.781, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=8;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 8, -660.55, 1653.17, 569.443, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=9;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 9, -643.378, 1721.67, 592.41, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=10;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 10, -563.707, 1769.78, 623.359, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=11;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 11, -569.753, 1840.17, 664.232, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=12;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 12, -624.793, 1846.99, 684.158, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=13;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 13, -669.035, 1841.12, 689.815, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=14;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 14, -709.323, 1796.5, 675.91, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=15;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 15, -711.564, 1845.49, 695.102, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=16;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 16, -738.689, 1870.91, 707.07, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=17;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 17, -767.505, 1923.79, 714.371, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=18;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 18, -789.759, 1946.76, 724.44, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=19;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 19, -820.82, 1987.5, 738.339, NULL);
DELETE FROM `waypoints` WHERE `entry`=129702 AND `pointid`=20;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (129702, 20, -825.771, 2005.66, 725.214, NULL);

-- Zul the Prophet 129907 SAI
SET @ENTRY := 129907;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,49905,0,0,0,206,6504,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zul the Prophet 129907 - On Quest '' Taken"),
(@ENTRY,0,1,2,10,0,100,0,1,5,30000,30000,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zul the Prophet 129907 - Within 1-5 Range Out of Combat LoS - Say Line 3"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,130344,10,0,0,0,0,0,"Zul the Prophet 129907 - Within 0-0 Range Out of Combat LoS - Set Data 0 1");

-- Vol'jamba 130344 SAI
SET @ENTRY := 130344;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,67,1,3000,3000,0,0,0,1,0,0,0,0,0,0,0,"Vol'jamba 130344 - On Data Set 0 1 - Create Timed Event"),
(@ENTRY,0,1,0,59,0,100,0,1,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jamba 130344 - On Timed Event 1 Triggered - Say Line 4");

-- Jambani Spirit Twister 129513 SAI
SET @ENTRY := 129513;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,100,0,0,0,0,0,11,257922,0,0,0,0,0,7,0,0,0,0,0,0,0,"Jambani Spirit Twister 129513 - On Just Died - Cast 'Spell Id257922'"),
(@ENTRY,0,1,0,11,0,100,0,0,0,0,0,11,258689,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jambani Spirit Twister 129513 - On Respawn - Cast 'Spell Id258689'"),
(@ENTRY,0,2,0,0,0,100,0,4000,6000,3000,6000,11,260162,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jambani Spirit Twister 129513 - In Combat - Cast 'Spell Id260162'"),
(@ENTRY,0,3,0,6,0,10,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jambani Spirit Twister 129513 - On Just Died - Say Line 0"),
(@ENTRY,0,4,0,6,0,10,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jambani Spirit Twister 129513 - On Just Died - Say Line 1");

-- Jambani Crusher 129487 SAI
SET @ENTRY := 129487;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,6,0,100,0,0,0,0,0,11,257923,0,0,0,0,0,7,0,0,0,0,0,0,0,"Jambani Crusher 129487 - On Just Died - Cast 'Spell Id257923'"),
(@ENTRY,0,1,0,0,0,100,0,4000,6000,3000,9000,11,260177,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jambani Crusher 129487 - In Combat - Cast 'Spell Id260177'");

-- Howling Voodoo Mask 128933 SAI
SET @ENTRY := 128933;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,11,257924,0,0,0,0,0,7,0,0,0,0,0,0,0,"Howling Voodoo Mask 128933 - On Just Died - Cast 'Spell Id257924'"),
(@ENTRY,0,2,0,0,0,100,0,3000,9000,4000,8000,11,260205,0,0,0,0,0,2,0,0,0,0,0,0,0,"Howling Voodoo Mask 128933 - In Combat - Cast 'Spell Id260205'");


-- Izita's Spirit 130706 SAI
SET @ENTRY := 130706;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,49491,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Izita's Spirit 130706 - On Quest '' Finished - Run Script");

-- Izita's Spirit 130706 SAI
SET @ENTRY := 130706;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,49491,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Izita's Spirit 130706 - On Quest '' Finished - Run Script");

-- Actionlist SAI
SET @ENTRY := 13070600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Izita's Spirit 130706 - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,45,0,1,0,0,0,0,10,210404337,130866,0,0,0,0,0,"Izita's Spirit 130706 - On Script - Set Data 0 1"),
(@ENTRY,9,2,0,0,0,100,0,2000,2000,0,0,45,0,1,0,0,0,0,10,210404338,130866,0,0,0,0,0,"Izita's Spirit 130706 - On Script - Set Data 0 1"),
(@ENTRY,9,3,0,0,0,100,0,1000,1000,0,0,45,0,1,0,0,0,0,10,210404336,130866,0,0,0,0,0,"Izita's Spirit 130706 - On Script - Set Data 0 1"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,45,0,1,0,0,0,0,10,210404334,130866,0,0,0,0,0,"Izita's Spirit 130706 - On Script - Set Data 0 1"),
(@ENTRY,9,5,0,0,0,100,0,1000,1000,0,0,114,0,0,0,0,0,0,1,0,0,0,0,0,10,0,"Izita's Spirit 130706 - On Script"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Izita's Spirit 130706 - On Script - Despawn In 2000 ms");

-- Gurubashi Spirit 130866 SAI
SET @ENTRY := 130866;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,0,1,0,0,114,0,0,0,0,0,0,1,0,0,0,0,0,10,0,"Gurubashi Spirit 130866 - On Data Set 0 1"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gurubashi Spirit 130866 - On Data Set 0 0 - Despawn In 2000 ms");

-- Jambani Chosen 130221 SAI
SET @ENTRY := 130221;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,1500,1500,11,243575,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jambani Chosen 130221 - In Combat - Cast 'Spell Id243575'"),
(@ENTRY,0,1,0,6,0,10,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jambani Chosen 130221 - On Just Died - Say Line 0");

-- Mindslaved Gurubashi 129752 SAI
SET @ENTRY := 129752;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,257795,0,0,0,33,129752,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mindslaved Gurubashi 129752 - On Spellhit 'Spell Id257795' - Quest Credit 'Mindslaved Gurubashi 129752'"),
(@ENTRY,0,1,0,8,0,100,0,257795,0,0,0,28,257998,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mindslaved Gurubashi 129752 - On Spellhit 'Spell Id257795' - Remove Aura 'Spell Id257998'"),
(@ENTRY,0,2,0,8,0,100,0,257795,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mindslaved Gurubashi 129752 - On Spellhit 'Spell Id257795' - Set Faction 35"),
(@ENTRY,0,3,0,8,0,100,0,257795,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-240.64,267.005,239.631,0,"Mindslaved Gurubashi 129752 - On Spellhit 'Spell Id257795' - Move To Position"),
(@ENTRY,0,4,0,8,0,100,0,257795,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mindslaved Gurubashi 129752 - On Spellhit 'Spell Id257795' - Despawn In 10000 ms"),
(@ENTRY,0,5,0,0,0,100,0,0,3000,4000,9000,11,214575,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mindslaved Gurubashi 129752 - In Combat - Cast 'Spell Id214575'");

-- Mindslaved Berserker 130219 SAI
SET @ENTRY := 130219;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,257795,0,0,0,33,129752,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mindslaved Berserker 130219 - On Spellhit 'Spell Id257795' - Quest Credit 'Mindslaved Gurubashi 129752'"),
(@ENTRY,0,1,0,8,0,100,0,257795,0,0,0,28,257998,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mindslaved Berserker 130219 - On Spellhit 'Spell Id257795' - Remove Aura 'Spell Id257998'"),
(@ENTRY,0,2,0,8,0,100,0,257795,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mindslaved Berserker 130219 - On Spellhit 'Spell Id257795' - Set Faction 35"),
(@ENTRY,0,3,0,8,0,100,0,257795,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-240.64,267.005,239.631,0,"Mindslaved Berserker 130219 - On Spellhit 'Spell Id257795' - Move To Position"),
(@ENTRY,0,4,0,8,0,100,0,257795,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mindslaved Berserker 130219 - On Spellhit 'Spell Id257795' - Despawn In 10000 ms"),
(@ENTRY,0,5,0,0,0,100,0,6000,9000,11000,13000,11,214575,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mindslaved Berserker 130219 - In Combat - Cast 'Spell Id214575'");

update `creature_template` set `faction` = 7 where `entry` = 132213;

-- Zuvembi Brewer Zekal 130260 SAI
SET @ENTRY := 130260;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuvembi Brewer Zekal 130260 - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zuvembi Brewer Zekal 130260 - On Just Died - Say Line 2"),
(@ENTRY,0,2,0,0,0,100,0,0,3000,5000,9000,11,260684,0,0,0,0,0,2,0,0,0,0,0,0,0,"Zuvembi Brewer Zekal 130260 - In Combat - Cast 'Spell Id260684'"),
(@ENTRY,0,3,0,0,0,100,0,20000,25000,30000,60000,11,260617,1,0,0,0,0,19,132213,50,0,0,0,0,0,"Zuvembi Brewer Zekal 130260 - In Combat - Cast 'Spell Id260617'");

-- Weakened Sacrifice 132213 SAI
SET @ENTRY := 132213;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,34,0,100,0,8,1,0,0,11,260626,0,0,0,0,0,1,0,0,0,0,0,0,0,"Weakened Sacrifice 132213 - On Reached Point 1 - Cast 'Spell Id260626'"),
(@ENTRY,0,1,0,31,0,100,0,0,0,0,0,51,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Weakened Sacrifice 132213 - On Target Spellhit - Kill Target"),
(@ENTRY,0,2,4,8,0,100,0,260617,0,0,0,69,1,0,0,0,0,0,8,0,0,0,-139.135,219.572,234.312,0,"Weakened Sacrifice 132213 - On Spellhit 'Spell Id260617' - Move To Position"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Weakened Sacrifice 132213 - MISSING LINK - Despawn In 1000 ms"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Weakened Sacrifice 132213 - On Spellhit - Set Reactstate Passive");

-- Bubbling Cauldron 132217 SAI
SET @ENTRY := 132217;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Spellhit - Run Script");

-- Actionlist SAI
SET @ENTRY := 13221700;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'"),
(@ENTRY,9,1,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'"),
(@ENTRY,9,2,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'"),
(@ENTRY,9,3,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'"),
(@ENTRY,9,4,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'"),
(@ENTRY,9,5,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'"),
(@ENTRY,9,6,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'"),
(@ENTRY,9,7,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'"),
(@ENTRY,9,8,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'"),
(@ENTRY,9,9,0,0,0,100,0,1500,1500,0,0,11,260674,0,0,0,0,0,18,50,0,0,0,0,0,0,"Bubbling Cauldron 132217 - On Script - Cast 'Spell Id260674'");

-- Vol'jamba 130294 SAI
SET @ENTRY := 130294;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,259228,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vol'jamba 130294 - On Respawn - Cast 'Spell Id259228'");

-- Table `creature_template`
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_voljamba' WHERE (entry = 131241);

-- Zul the Prophet 129907 SAI
SET @ENTRY := 129907;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,49905,0,0,0,206,6504,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zul the Prophet 129907 - On Quest '' Taken"),
(@ENTRY,0,1,2,10,0,100,0,1,5,30000,30000,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zul the Prophet 129907 - Within 1-5 Range Out of Combat LoS - Say Line 3"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,130344,10,0,0,0,0,0,"Zul the Prophet 129907 - Within 0-0 Range Out of Combat LoS - Set Data 0 1"),
(@ENTRY,0,3,4,19,0,100,0,49905,0,0,0,12,131241,4,15000,0,0,0,8,0,0,0,-372.61,150.864,257.285,0,"Zul the Prophet 129907 - On Quest '' Taken - Summon Creature 'Vol'jamba 131241'"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,33,130294,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zul the Prophet 129907 - On Quest Taken - Quest Credit 'Vol'jamba 130294'");

-- Howling Voodoo Mask 133375 SAI
SET @ENTRY := 133375;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,5000,9000,11,260205,0,0,0,0,0,2,0,0,0,0,0,0,0,"Howling Voodoo Mask 133375 - In Combat - Cast 'Spell Id260205'");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=258689 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130706 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 258689, 0, 0, 31, 0, 5, 130706, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=258689 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130029 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 258689, 0, 1, 31, 0, 5, 130029, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=258689 AND `SourceId`=0 AND `ElseGroup`=2 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130707 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 258689, 0, 2, 31, 0, 5, 130707, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=258689 AND `SourceId`=0 AND `ElseGroup`=3 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=134156 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 258689, 0, 3, 31, 0, 5, 134156, 0, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=258689 AND `SourceId`=0 AND `ElseGroup`=4 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=128933 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 258689, 0, 4, 31, 0, 5, 128933, 0, 0, 0, 0, '', NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=259228 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130308 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 259228, 0, 0, 31, 0, 5, 130308, 0, 0, 0, 0, '', NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=2 AND `SourceEntry`=129907 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=49490 AND `ConditionValue2`=42 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 2, 129907, 0, 0, 47, 0, 49490, 42, 0, 0, 0, 0, '', NULL);

DELETE FROM `creature_text` WHERE `CreatureID`=129907 AND `GroupID`=3 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (129907, 3, 0, 'Quit hiding behind your masks. You\'re only buying time, and not much at dat.', 12, 0, 100, 0, 0, 106237, 143195, 0, 'Zul the Prophet to Player');
DELETE FROM `creature_text` WHERE `CreatureID`=130344 AND `GroupID`=4 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (130344, 4, 0, 'If you had seen what I have, you would do de same. Come inside. I will show you!', 12, 0, 100, 0, 0, 103520, 146601, 0, 'Vol\'jamba to Player');

DELETE FROM `spell_script_names` WHERE `spell_id`=264007 AND `ScriptName`='spell_soul_jaunt';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (264007, 'spell_soul_jaunt');

-- remove not handled phasing phaseid50
-- Add correct phasing back once phasing is fixed for Zuldazar
update creature set PhaseId = 0 where guid = 210440913;

-- https://www.wowhead.com/quest=51248/productive-pests#videos:id=143536

update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` = 137200;
update `creature_template` set `npcflag` = 16777216 where entry = 137200;

-- Mosquito SAI
SET @ENTRY := 137200;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,272498,0,0,0,33,137200,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mosquito - On Spellhit '' - Quest Credit ''"),
(@ENTRY,0,1,0,8,0,100,0,272498,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mosquito - On Spellhit '' - Despawn Instant");

-- https://www.wowhead.com/quest=51286/stop-the-evacuation#videos:id=143539

-- Alliance Boat SAI
SET @ENTRY := 137418;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,269982,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Alliance Boat - On Spellhit 'Ping spell' - Run Script");


-- Actionlist SAI
SET @ENTRY := 13741800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,3000,3000,0,0,11,62987,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alliance Boat - On Script - Cast 'Explosion'"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,33,137418,0,0,0,0,0,21,50,0,0,0,0,0,0,"Alliance Boat - On Script - Quest Credit ''"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alliance Boat - On Script - Despawn Instant");

-- https://www.wowhead.com/quest=51680/in-bwonsamdis-shadow#videos:id=139003

-- Jamil Abul'housin SAI
SET @ENTRY := 132637;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,2,62,0,100,0,22681,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jamil Abul'housin - On Gossip Option 0 Selected - Say Line 0"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,33,132637,0,0,0,0,0,7,0,0,0,0,0,0,0,"Jamil Abul'housin - On Gossip Option 0 Selected - Quest Credit ''");

-- Jol the Ancient SAI
SET @ENTRY := 124063;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,2,62,0,100,0,21283,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jol the Ancient - On Gossip Option 0 Selected - Say Line 0"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,33,124063,0,0,0,0,0,7,0,0,0,0,0,0,0,"Jol the Ancient - On Gossip Option 0 Selected - Quest Credit ''");

-- https://www.wowhead.com/quest=50235/no-safe-haven#videos:id=139007

update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` in (132717, 132708, 132706, 132709);
update `creature_template` set `npcflag` = 16777216 where `entry` in (132717, 132708, 132706, 132709);

-- Zeb'ahari Fishermon SAI
SET @ENTRY := 132706;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,33,132709,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zeb'ahari Fishermon - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Fishermon - On Spellhit - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Fishermon - On Spellhit - Set Npc Flag "),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Fishermon - On Spellhit - Despawn In 3000 ms");

-- Zeb'ahari Villager SAI
SET @ENTRY := 132709;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,33,132709,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zeb'ahari Villager - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Villager - On Spellhit - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Villager - On Spellhit - Set Npc Flag "),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Villager - On Spellhit - Despawn In 3000 ms");


-- Zeb'ahari Mender SAI
SET @ENTRY := 132708;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,33,132709,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zeb'ahari Mender - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Mender - On Spellhit - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Mender - On Spellhit - Set Npc Flag "),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Mender - On Spellhit - Despawn In 3000 ms");

-- Zeb'ahari Beastkeeper SAI
SET @ENTRY := 132717;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,33,132709,0,0,0,0,0,7,0,0,0,0,0,0,0,"Zeb'ahari Beastkeeper - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Beastkeeper - On Spellhit - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Beastkeeper - On Spellhit - Set Npc Flag "),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zeb'ahari Beastkeeper - On Spellhit - Despawn In 3000 ms");

-- https://www.wowhead.com/quest=47735/ancient-tortollan-remedies#videos:id=139004
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` in (132681, 133159);

-- Laelani SAI
SET @ENTRY := 132681;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,0,0,0,0,56,156824,1,0,0,0,0,7,0,0,0,0,0,0,0,"Laelani - On Spellhit - Add Item '' 1 Time"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Laelani - On Spellhit - Set Orientation Invoker"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,261539,0,0,0,0,0,7,0,0,0,0,0,0,0,"Laelani - On Spellhit - Cast '<Spell not found!>'");

-- Spiny Puffer SAI
SET @ENTRY := 133159;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,261891,0,0,0,56,156809,1,0,0,0,0,7,0,0,0,0,0,0,0,"Spiny Puffer - On Spellhit '<Spell not found!>' - Add Item '' 1 Time");

-- https://www.wowhead.com/quest=48404/the-scamps
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` in (126034);

-- https://www.wowhead.com/quest=51679/a-strange-port-of-call#videos:id=139013
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` in (139838);

-- Street Scamp SAI
SET @ENTRY := 126034;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,250261,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Spellhit '<Spell not found!>' - Run Script"),
(@ENTRY,0,1,0,11,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Respawn - Set Run On");

-- Actionlist SAI
SET @ENTRY := 12603400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,33,126034,0,0,0,0,0,7,0,0,0,0,0,0,0,"Street Scamp - On Script - Quest Credit ''"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,28,250265,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Remove Aura '<Spell not found!>'"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Set Npc Flag "),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Start Random Movement"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Say Line 0"),
(@ENTRY,9,5,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Street Scamp - On Script - Despawn Instant");

-- after https://www.wowhead.com/quest=47915/rescuing-the-taken add aura 260329

-- Wardruid Loti SAI
SET @ENTRY := 123335;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,47915,0,0,0,85,260329,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wardruid Loti - On Quest '' Finished - Invoker Cast ''");

-- Druid of Gonk SAI
SET @ENTRY := 132041;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,29,0,0,0,0,0,0,21,0,0,0,0,0,0,0,"Druid of Gonk - On Respawn - Start Follow Closest Player"),
(@ENTRY,0,1,0,11,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Druid of Gonk - On Respawn - Set Npc Flag Questgiver");

DELETE FROM `creature_queststarter` WHERE `id`=132041 AND `quest`=47520;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (132041, 47520);
DELETE FROM `creature_queststarter` WHERE `id`=132041 AND `quest`=47518;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (132041, 47518);

DELETE FROM `creature_questender` WHERE `id`=132041 AND `quest`=47520;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (132041, 47520);
DELETE FROM `creature_questender` WHERE `id`=132041 AND `quest`=47518;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (132041, 47518);

DELETE FROM `creature_summoner_entry` WHERE `CreatureId`=132041;
INSERT INTO `creature_summoner_entry` (`CreatureId`, `SummonerVisibleCreatureId`) VALUES (132041, 123335);

-- https://www.wowhead.com/quest=48400/grand-theft-telemancy visuals no scripted (already implemented 263079?) (263071 server side script triggers teleports) (263072 actual teleport spell)
update `creature_template` set `unit_flags` = 33344 where `entry` = 132189;

-- https://www.wowhead.com/quest=48317/a-nose-for-magic#videos:id=139139


-- https://www.wowhead.com/quest=50178/trouble-in-the-rootway

update `creature_template` set `faction` = 17 where entry = 123135;

-- Feathered Viper Egg SAI
SET @ENTRY := 132413;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feathered Viper Egg - On Respawn - Set Reactstate Passive"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,12,132412,8,3000,1,0,0,1,0,0,0,0,0,0,0,"Feathered Viper Egg - On Just Died - Summon Creature 'Feathered Viper Hatchling'");

-- make already spawned hatchlings appear dead while the new ones are alive and fight
update `creature` set `unit_flags` = 537166592 where guid in (210405955, 210415318, 210415331);
update `creature` set `unit_flags2` = 2049 where guid in (210405955, 210415318, 210415331);
update `creature` set `unit_flags2` = 8193 where guid in (210405955, 210415318, 210415331);
update `creature_addon` set `auras` = 130966 and `bytes1` = 0 where guid in (210405955, 210415318, 210415331);

update `creature_template_addon` set `auras` = 0 where entry = 132412;
update `creature_template_addon` set `bytes1` = 0 where entry = 132412;
update `creature_template` set `unit_flags` = 0 where entry = 132412;
update `creature_template` set `unit_flags2` = 0 where entry = 132412;
update `creature_template` set `unit_flags3` = 0 where entry = 132412;

-- https://www.wowhead.com/quest=49871/against-the-tide needs a core script

-- Warlord Xiar SAI
SET @ENTRY := 130742;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,1,2000,3500,0,0,11,269234,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Xiar - In Combat - Cast '<Spell not found!>' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,6000,7000,11000,14000,11,80576,0,0,0,0,0,2,0,0,0,0,0,0,0,"Warlord Xiar - In Combat - Cast 'Shadowstep'"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Xiar - On Aggro - Say Line 2"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Xiar - On Aggro - Say Line 3");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=275677 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=140618 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 275677, 0, 0, 31, 0, 5, 140618, 0, 0, 0, 0, '', 'Igniting');

-- Fire Bunny SAI
SET @ENTRY := 140618;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,275677,0,0,0,33,140618,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fire Bunny - On Spellhit '<Spell not found!>' - Quest Credit ''");

update `creature_template` set `npcflag` = 2 where `entry` = 130750;

-- https://www.wowhead.com/quest=49785/destroy-the-weapon#videos:id=139104  Add rp scripting when waypoints work
update `creature_template` set `KillCredit1` = 130725 where `entry` = 130725;

-- Gentle Ben'jin SAI
SET @ENTRY := 130921;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,259144,0,0,0,33,131080,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gentle Ben'jin - On Spellhit - Quest Credit ''"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,11,259143,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gentle Ben'jin - On Spellhit - Cast");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=259144 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130921 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 259144, 0, 0, 31, 0, 5, 130921, 0, 0, 0, 0, '', NULL);

-- Cala Cruzpot SAI
SET @ENTRY := 130905;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,21905,0,0,0,33,133060,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cala Cruzpot - On Gossip Option 0 Selected - Quest Credit ''"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cala Cruzpot - On Gossip Option 0 Selected - Say Line 0"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cala Cruzpot - On Gossip Option 0 Selected - Close Gossip");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=261926 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=131832 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 261926, 0, 0, 31, 0, 5, 131832, 0, 0, 0, 0, '', NULL);

-- Raging Ben'jin SAI
SET @ENTRY := 133152;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,1,10,0,0,33,131833,0,0,0,0,0,7,0,0,0,0,0,0,0,"Raging Ben'jin - Within 1-10 Range Out of Combat LoS - Quest Credit ''"),
(@ENTRY,0,1,0,26,0,100,0,1,10,0,0,33,131833,0,0,0,0,0,7,0,0,0,0,0,0,0,"Raging Ben'jin - In Combat LoS - Quest Credit ''");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=258950 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130922 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 258950, 0, 1, 31, 0, 5, 130922, 0, 0, 0, 0, '', 'Igniting');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=258950 AND `SourceId`=0 AND `ElseGroup`=2 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=5 AND `ConditionValue2`=130921 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (13, 1, 258950, 0, 2, 31, 0, 5, 130921, 0, 0, 0, 0, '', 'Igniting');

DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=0;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 0, -460.875, 706.677, 282.8, 1, '-460.875 Y: 706.6771 Z: 282.8003');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 1, -448.547, 656.818, 258.4, 1, 'X: -448.5469 Y: 656.8177 Z: 258.4043 O: 4.954785');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 2, -443.538, 605.217, 254.061, 1, '[0] Points: X: -443.5382 Y: 605.217 Z: 254.0606');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 3, -253.689, 549.368, 189.683, 1, '[1] Points: X: -253.6892 Y: 549.368 Z: 189.6833');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 4, 172.016, 541.812, 129.326, 1, 'X: 172.0156 Y: 541.8125 Z: 129.3259');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 5, 244.892, 624.127, 113.18, 1, '244.8924 Y: 624.1268 Z: 113.1798');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 6, 273.879, 845.462, 114.704, 1, '273.8785 Y: 845.4618 Z: 114.7044');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 7, 240.891, 986.153, 144.453, 1, '240.8906 Y: 986.1528 Z: 144.4529');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 8, 227.042, 1155.24, 167.157, 1, '227.0417 Y: 1155.241 Z: 167.1574');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 9, 177.175, 1384.76, 194.245, 1, '177.1754 Y: 1384.76 Z: 194.2447');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 10, 108.78, 1241.74, 238.563, 1, '108.7795 Y: 1241.745 Z: 238.5629');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 11, 68.2118, 1203.55, 257.019, 1, '68.21181 Y: 1203.545 Z: 257.0192');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=12;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 12, -12.8507, 1086.94, 251.028, 1, '-12.85069 Y: 1086.939 Z: 251.0278');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=13;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 13, 41.4392, 819.055, 191.632, 1, '41.43924 Y: 819.0555 Z: 191.6324');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=14;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 14, 50.1892, 661.427, 157.624, 1, '50.18924 Y: 661.4271 Z: 157.6243');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=15;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 15, -94.7483, 654.273, 156.692, 1, '-94.74827 Y: 654.2726 Z: 156.6922');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=16;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 16, -227.115, 679.455, 178.999, 1, '-227.1146 Y: 679.4549 Z: 178.9987');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=17;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 17, -294.432, 651.59, 204.662, 1, '-294.4323 Y: 651.5903 Z: 204.6623');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=18;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 18, -384.918, 654.066, 201.629, 1, '-384.9184 Y: 654.066 Z: 201.6293');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=19;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 19, -501.273, 649.484, 217.171, 1, '-501.2726 Y: 649.4844 Z: 217.1709');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=20;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 20, -615.741, 707.684, 259.643, 1, '-615.7413 Y: 707.684 Z: 259.6428');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=21;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 21, -686.014, 715.337, 249.916, 1, '-686.0139 Y: 715.3368 Z: 249.9156');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=22;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 22, -680.467, 661.253, 280.884, 1, '-680.467 Y: 661.2535 Z: 280.8842');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=23;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 23, -686.16, 622.842, 292.098, 1, '-686.1597 Y: 622.842 Z: 292.0975');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=24;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 24, -674.09, 569.333, 279.179, 1, '-674.0903 Y: 569.3333 Z: 279.1787');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=25;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 25, -597.995, 574.318, 231.387, 1, '-597.9948 Y: 574.3177 Z: 231.3867');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=26;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 26, -537.274, 574.615, 232.883, 1, '-537.2743 Y: 574.6146 Z: 232.8826');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=27;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 27, -487.078, 604.75, 256.092, 1, '-487.0781 Y: 604.75 Z: 256.0919');
DELETE FROM `script_waypoint` WHERE `entry`=126808 AND `pointid`=28;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (126808, 28, -486.4, 726.78, 300, 1, '');

update `creature_template` set `VehicleId` = 5564 where `entry` = 126808;
update `creature_template` set `ScriptName` = "npc_ata_the_winglord_offensively_defence" where `entry` = 126808;
update `creature_template` set `spell1` = "251899" where `entry` = 126808;


update `creature_template` set `npcflag` = 16777216 where `entry` = 126822;
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` = 126822;

-- Scouting Target 126876 SAI
SET @ENTRY := 126876;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,251899,0,0,0,33,126876,0,0,0,0,0,7,0,0,0,0,0,0,0,"Scouting Target 126876 - On Spellhit 'Spell Id251899' - Quest Credit 'Scouting Target 126876'"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scouting Target 126876 - On Spellhit - Despawn Instant"),
(@ENTRY,0,2,0,11,0,100,0,0,0,0,0,75,260601,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scouting Target 126876 - On Respawn - Add Aura 'Spell Id260601'");

-- Hexlord Raal 126564 SAI
SET @ENTRY := 126564;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,21492,0,0,0,33,126564,0,0,0,0,0,7,0,0,0,0,0,0,0,"Hexlord Raal 126564 - On Gossip Option 0 Selected - Quest Credit 'Hexlord Raal 126564'");


DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=0;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 0, -451.75, 1014.85, 444.69, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 1, -432.65, 1012.84, 443.61, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 2, -353.34, 929.02, 441.35, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 3, -286.17, 826.12, 404.92, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 4, -375.18, 773.7, 327.75, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 5, -475.51, 778.77, 311.16, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 6, -628.88, 769.75, 311.06, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 7, -718.47, 586.02, 325.19, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 8, -965.33, 213.74, 291.57, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 9, -1117.65, -12.48, 321.93, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 10, -1047.8, 120.035, 302.86, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 11, -1076.06, 56.4, 319.32, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=12;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 12, -1188.48, -57.79, 323.56, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=13;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 13, -1282.57, -161.28, 402.31, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=14;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 14, -1317, -199.7, 420.03, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=15;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 15, -1372.77, -216.82, 418.51, 1, 'Ata the Winglord Quest 47440 Escort 1');
DELETE FROM `script_waypoint` WHERE `entry`=127417 AND `pointid`=16;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (127417, 16, -1389.22, -252.57, 415.53, 1, 'Ata the Winglord Quest 47440 Escort 1');

update `creature_template` set `VehicleId` = 5564 where `entry` = 127414;
update `creature_template` set `ScriptName` = "npc_ata_the_winglord_paku_master_of_winds" where `entry` = 127417;
update `creature_template` set `npcflag` = 16777216 where `entry` = 127414;
update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` = 127414;

update `creature_template` set `ScriptName` = "npc_pterrordax_paku_master_of_winds" where `entry` = 144161;
update `creature_template` set `VehicleId` = 6281 where `entry` = 144161;

update `creature_template` set `InhabitType` = 4 where `entry` = 122114;

update `creature_template` set `ScriptName` = "npc_paku" where `entry` = 127377;

DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=0;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 0, -1416.78, -345.217, 405.235, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=1;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 1, -1426.8, -328.604, 417.691, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=2;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 2, -1398.25, -292.62, 416.463, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=3;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 3, -1365.54, -305.797, 442.17, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=4;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 4, -1397.02, -335.429, 445.609, 10000, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=5;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 5, -1380.04, -324.538, 429.699, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=6;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 6, -1329.19, -259.941, 451.584, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=7;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 7, -1261.56, 10.6667, 450.163, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=8;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 8, -969.198, 583.274, 391.463, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=9;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 9, -919.358, 715.596, 395.38, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=10;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 10, -919.099, 795.734, 382.379, 1, '');
DELETE FROM `script_waypoint` WHERE `entry`=144161 AND `pointid`=11;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES (144161, 11, -905.177, 802.983, 374.656, 1, '');

