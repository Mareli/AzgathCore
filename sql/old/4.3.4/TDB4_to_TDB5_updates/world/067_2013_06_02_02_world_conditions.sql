-- Add option conditions for Warlock trainers
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (15) AND `SourceGroup` IN (1503,1522,2381,2383,2384,4503,4504,4505,4566,4567,4603,4604,4609,4610,4641,4643,4655,4656,4667,4681,4682,6628,7437,7566,4642);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,1503,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,1503,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,1503,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,1522,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,1522,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,1522,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,2381,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,2381,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,2381,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,2383,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,2383,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,2383,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,2384,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,2384,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,2384,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4503,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4503,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4503,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4504,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4504,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4504,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4505,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4505,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4505,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4566,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4566,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4566,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4567,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4567,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4567,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4603,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4603,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4603,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4604,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4604,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4604,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4609,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4609,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4609,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4610,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4610,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4610,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4641,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4641,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4641,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4643,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4643,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4643,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4655,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4655,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4655,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4656,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4656,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4656,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4667,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4667,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4667,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4681,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4681,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4681,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4682,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4682,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4682,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,6628,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,6628,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,6628,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,7437,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,7437,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,7437,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,7566,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,7566,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,7566,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4642,0,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4642,1,0,15,256,0,0,0,'','Show gossip option if player is a Warlock'),
(15,4642,2,0,15,256,0,0,0,'','Show gossip option if player is a Warlock');
