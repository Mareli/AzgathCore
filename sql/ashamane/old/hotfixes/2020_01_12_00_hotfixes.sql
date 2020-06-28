ALTER TABLE `azerite_tier_unlock` MODIFY COLUMN `AzeriteTierUnlockSetID` int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AzeriteLevel`;

ALTER TABLE `battle_pet_ability_state` MODIFY COLUMN `BattlePetAbilityID` int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Value`;

ALTER TABLE `battle_pet_species_x_ability` MODIFY COLUMN `BattlePetSpeciesID` int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SlotEnum`;

ALTER TABLE `garr_mission` MODIFY COLUMN `GarrMissionSetId` int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;

