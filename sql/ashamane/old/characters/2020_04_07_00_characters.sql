ALTER TABLE `character_arena_data`
ADD ranking INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `seasonWins`;
ALTER TABLE `character_arena_data`
ADD dayGames INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `ranking`;
ALTER TABLE `character_arena_data`
ADD dayWins INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `dayGames`;
