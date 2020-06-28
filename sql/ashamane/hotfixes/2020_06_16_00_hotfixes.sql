ALTER TABLE `battle_pet_species_x_ability` CHARACTER SET=utf8mb4, COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `battle_pet_species_x_ability`
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`ID`,`VerifiedBuild`),
  ENGINE=InnoDB;

