-- underrot
DELETE FROM `instance_encounters` WHERE `entry` IN (2112, 2118, 2111, 2123);
INSERT INTO `instance_encounters` (`entry`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES 
(2112, 0, 131383, 0, 'Sporecaller Zancha'),
(2118, 0, 131817, 0, 'Cragmaw the Infested'),
(2111, 0, 131318, 0, 'Elder Leaxa'),
(2123, 0, 133007, 1711, 'Unbound Abomination');

-- ataldazar
DELETE FROM `instance_encounters` WHERE `entry` IN (2084, 2085, 2086, 2087);
INSERT INTO `instance_encounters` (`entry`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES 
(2084, 0, 122967, 0, 'Priestess Alun\'za'),
(2085, 0, 122965, 0, 'Vol\'kaal'),
(2086, 0, 122963, 0, 'Rezan'),
(2087, 0, 122968, 1772, 'Yazma');

-- shrineofthestorm
DELETE FROM `instance_encounters` WHERE `entry` IN (2130, 2131, 2132, 2133);
INSERT INTO `instance_encounters` (`entry`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES 
(2132, 0, 134060, 0, 'Lord Stormsong'),
(2133, 0, 134069, 1709, 'Vol\'zith the Whisperer'),
(2130, 0, 134056, 0, 'Aqu\'sirr'),
(2131, 0, 134063, 0, 'Tidesage Council');
