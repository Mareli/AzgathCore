ALTER TABLE `character_stats`
ADD COLUMN `maxpower8` int(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `maxpower7`,
ADD COLUMN `maxpower9` int(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `maxpower8`,
ADD COLUMN `maxpower10` int(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `maxpower9`,
ADD COLUMN `maxpower11` int(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `maxpower10`;
