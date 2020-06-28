ALTER TABLE `journal_instance_locale` ADD COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT '0' AFTER `Description_lang`;

ALTER TABLE `journal_instance_locale` CHARACTER SET=utf8mb4, COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `journal_instance_locale` MODIFY COLUMN `locale` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL AFTER `ID`;
ALTER TABLE `journal_instance_locale` MODIFY COLUMN `Name_lang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL AFTER `locale`;
ALTER TABLE `journal_instance_locale` MODIFY COLUMN `Description_lang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL AFTER `Name_lang`;
ALTER TABLE `journal_instance_locale` ADD INDEX `idx_locale`(`locale`);

ALTER TABLE `journal_instance` CHARACTER SET=utf8mb4, COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `journal_instance` MODIFY COLUMN `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL;
ALTER TABLE `journal_instance` MODIFY COLUMN `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL AFTER `Name`;

ALTER TABLE `journal_instance`
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`ID`,`VerifiedBuild`),
  ENGINE=InnoDB;

ALTER TABLE `journal_instance_locale`
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`),
  DROP INDEX `idx_locale`,
  ENGINE=InnoDB
  PARTITION BY LIST COLUMNS(`locale`)
  (PARTITION deDE VALUES IN ('deDE'),
   PARTITION esES VALUES IN ('esES'),
   PARTITION esMX VALUES IN ('esMX'),
   PARTITION frFR VALUES IN ('frFR'),
   PARTITION itIT VALUES IN ('itIT'),
   PARTITION koKR VALUES IN ('koKR'),
   PARTITION ptBR VALUES IN ('ptBR'),
   PARTITION ruRU VALUES IN ('ruRU'),
   PARTITION zhCN VALUES IN ('zhCN'),
   PARTITION zhTW VALUES IN ('zhTW'));
