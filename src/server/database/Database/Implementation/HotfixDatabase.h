/*
 * Copyright (C) 2008-2019 TrinityCore <https://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

// DO NOT EDIT!
// Autogenerated from DB2Structure.h

#ifndef _HOTFIXDATABASE_H
#define _HOTFIXDATABASE_H

#include "MySQLConnection.h"

enum HotfixDatabaseStatements : uint32
{
    /*  Naming standard for defines:
        {DB}_{SEL/INS/UPD/DEL/REP}_{Summary of data changed}
        When updating more than one field, consider looking at the calling function
        name for a suiting suffix.
    */

    HOTFIX_SEL_ACHIEVEMENT,
    HOTFIX_SEL_ACHIEVEMENT_MAX_ID,
    HOTFIX_SEL_ACHIEVEMENT_LOCALE,

    HOTFIX_SEL_ADVENTURE_JOURNAL,
    HOTFIX_SEL_ADVENTURE_JOURNAL_MAX_ID,
    HOTFIX_SEL_ADVENTURE_JOURNAL_LOCALE,

    HOTFIX_SEL_ADVENTURE_MAP_POI,
    HOTFIX_SEL_ADVENTURE_MAP_POI_MAX_ID,
    HOTFIX_SEL_ADVENTURE_MAP_POI_LOCALE,

    HOTFIX_SEL_ANIMATION_DATA,
    HOTFIX_SEL_ANIMATION_DATA_MAX_ID,

    HOTFIX_SEL_ANIM_KIT,
    HOTFIX_SEL_ANIM_KIT_MAX_ID,

    HOTFIX_SEL_AREA_GROUP_MEMBER,
    HOTFIX_SEL_AREA_GROUP_MEMBER_MAX_ID,

    HOTFIX_SEL_AREA_TABLE,
    HOTFIX_SEL_AREA_TABLE_MAX_ID,
    HOTFIX_SEL_AREA_TABLE_LOCALE,

    HOTFIX_SEL_AREA_TRIGGER,
    HOTFIX_SEL_AREA_TRIGGER_MAX_ID,

    HOTFIX_SEL_ARMOR_LOCATION,
    HOTFIX_SEL_ARMOR_LOCATION_MAX_ID,

    HOTFIX_SEL_ARTIFACT,
    HOTFIX_SEL_ARTIFACT_MAX_ID,
    HOTFIX_SEL_ARTIFACT_LOCALE,

    HOTFIX_SEL_ARTIFACT_APPEARANCE,
    HOTFIX_SEL_ARTIFACT_APPEARANCE_MAX_ID,
    HOTFIX_SEL_ARTIFACT_APPEARANCE_LOCALE,

    HOTFIX_SEL_ARTIFACT_APPEARANCE_SET,
    HOTFIX_SEL_ARTIFACT_APPEARANCE_SET_MAX_ID,
    HOTFIX_SEL_ARTIFACT_APPEARANCE_SET_LOCALE,

    HOTFIX_SEL_ARTIFACT_CATEGORY,
    HOTFIX_SEL_ARTIFACT_CATEGORY_MAX_ID,

    HOTFIX_SEL_ARTIFACT_POWER,
    HOTFIX_SEL_ARTIFACT_POWER_MAX_ID,

    HOTFIX_SEL_ARTIFACT_POWER_LINK,
    HOTFIX_SEL_ARTIFACT_POWER_LINK_MAX_ID,

    HOTFIX_SEL_ARTIFACT_POWER_PICKER,
    HOTFIX_SEL_ARTIFACT_POWER_PICKER_MAX_ID,

    HOTFIX_SEL_ARTIFACT_POWER_RANK,
    HOTFIX_SEL_ARTIFACT_POWER_RANK_MAX_ID,

    HOTFIX_SEL_ARTIFACT_QUEST_XP,
    HOTFIX_SEL_ARTIFACT_QUEST_XP_MAX_ID,

    HOTFIX_SEL_ARTIFACT_TIER,
    HOTFIX_SEL_ARTIFACT_TIER_MAX_ID,

    HOTFIX_SEL_ARTIFACT_UNLOCK,
    HOTFIX_SEL_ARTIFACT_UNLOCK_MAX_ID,

    HOTFIX_SEL_AUCTION_HOUSE,
    HOTFIX_SEL_AUCTION_HOUSE_MAX_ID,
    HOTFIX_SEL_AUCTION_HOUSE_LOCALE,

    HOTFIX_SEL_AZERITE_EMPOWERED_ITEM,
    HOTFIX_SEL_AZERITE_EMPOWERED_ITEM_MAX_ID,

    HOTFIX_SEL_AZERITE_ESSENCE,
    HOTFIX_SEL_AZERITE_ESSENCE_MAX_ID,
    HOTFIX_SEL_AZERITE_ESSENCE_LOCALE,

    HOTFIX_SEL_AZERITE_ESSENCE_POWER,
    HOTFIX_SEL_AZERITE_ESSENCE_POWER_MAX_ID,
    HOTFIX_SEL_AZERITE_ESSENCE_POWER_LOCALE,

    HOTFIX_SEL_AZERITE_ITEM,
    HOTFIX_SEL_AZERITE_ITEM_MAX_ID,

    HOTFIX_SEL_AZERITE_ITEM_MILESTONE_POWER,
    HOTFIX_SEL_AZERITE_ITEM_MILESTONE_POWER_MAX_ID,

    HOTFIX_SEL_AZERITE_KNOWLEDGE_MULTIPLIER,
    HOTFIX_SEL_AZERITE_KNOWLEDGE_MULTIPLIER_MAX_ID,

    HOTFIX_SEL_AZERITE_LEVEL_INFO,
    HOTFIX_SEL_AZERITE_LEVEL_INFO_MAX_ID,

    HOTFIX_SEL_AZERITE_POWER,
    HOTFIX_SEL_AZERITE_POWER_MAX_ID,

    HOTFIX_SEL_AZERITE_POWER_SET_MEMBER,
    HOTFIX_SEL_AZERITE_POWER_SET_MEMBER_MAX_ID,

    HOTFIX_SEL_AZERITE_TIER_UNLOCK,
    HOTFIX_SEL_AZERITE_TIER_UNLOCK_MAX_ID,

    HOTFIX_SEL_AZERITE_TIER_UNLOCK_SET,
    HOTFIX_SEL_AZERITE_TIER_UNLOCK_SET_MAX_ID,

    HOTFIX_SEL_AZERITE_UNLOCK_MAPPING,
    HOTFIX_SEL_AZERITE_UNLOCK_MAPPING_MAX_ID,

    HOTFIX_SEL_BANK_BAG_SLOT_PRICES,
    HOTFIX_SEL_BANK_BAG_SLOT_PRICES_MAX_ID,

    HOTFIX_SEL_BANNED_ADDONS,
    HOTFIX_SEL_BANNED_ADDONS_MAX_ID,

    HOTFIX_SEL_BARBER_SHOP_STYLE,
    HOTFIX_SEL_BARBER_SHOP_STYLE_MAX_ID,
    HOTFIX_SEL_BARBER_SHOP_STYLE_LOCALE,

    HOTFIX_SEL_BATTLE_PET_ABILITY,
    HOTFIX_SEL_BATTLE_PET_ABILITY_MAX_ID,
    HOTFIX_SEL_BATTLE_PET_ABILITY_LOCALE,

    HOTFIX_SEL_BATTLE_PET_ABILITY_EFFECT,
    HOTFIX_SEL_BATTLE_PET_ABILITY_EFFECT_MAX_ID,

    HOTFIX_SEL_BATTLE_PET_ABILITY_STATE,
    HOTFIX_SEL_BATTLE_PET_ABILITY_STATE_MAX_ID,

    HOTFIX_SEL_BATTLE_PET_ABILITY_TURN,
    HOTFIX_SEL_BATTLE_PET_ABILITY_TURN_MAX_ID,

    HOTFIX_SEL_BATTLE_PET_BREED_QUALITY,
    HOTFIX_SEL_BATTLE_PET_BREED_QUALITY_MAX_ID,

    HOTFIX_SEL_BATTLE_PET_BREED_STATE,
    HOTFIX_SEL_BATTLE_PET_BREED_STATE_MAX_ID,

    HOTFIX_SEL_BATTLE_PET_SPECIES,
    HOTFIX_SEL_BATTLE_PET_SPECIES_MAX_ID,
    HOTFIX_SEL_BATTLE_PET_SPECIES_LOCALE,

    HOTFIX_SEL_BATTLE_PET_SPECIES_STATE,
    HOTFIX_SEL_BATTLE_PET_SPECIES_STATE_MAX_ID,

    HOTFIX_SEL_BATTLE_PET_SPECIES_X_ABILITY,
    HOTFIX_SEL_BATTLE_PET_SPECIES_X_ABILITY_MAX_ID,

    HOTFIX_SEL_BATTLEMASTER_LIST,
    HOTFIX_SEL_BATTLEMASTER_LIST_MAX_ID,
    HOTFIX_SEL_BATTLEMASTER_LIST_LOCALE,

    HOTFIX_SEL_BROADCAST_TEXT,
    HOTFIX_SEL_BROADCAST_TEXT_MAX_ID,
    HOTFIX_SEL_BROADCAST_TEXT_LOCALE,

    HOTFIX_SEL_CFG_REGIONS,
    HOTFIX_SEL_CFG_REGIONS_MAX_ID,

    HOTFIX_SEL_CHARACTER_FACIAL_HAIR_STYLES,
    HOTFIX_SEL_CHARACTER_FACIAL_HAIR_STYLES_MAX_ID,

    HOTFIX_SEL_CHAR_BASE_SECTION,
    HOTFIX_SEL_CHAR_BASE_SECTION_MAX_ID,

    HOTFIX_SEL_CHAR_SECTIONS,
    HOTFIX_SEL_CHAR_SECTIONS_MAX_ID,

    HOTFIX_SEL_CHAR_START_OUTFIT,
    HOTFIX_SEL_CHAR_START_OUTFIT_MAX_ID,

    HOTFIX_SEL_CHAR_TITLES,
    HOTFIX_SEL_CHAR_TITLES_MAX_ID,
    HOTFIX_SEL_CHAR_TITLES_LOCALE,

    HOTFIX_SEL_CHAT_CHANNELS,
    HOTFIX_SEL_CHAT_CHANNELS_MAX_ID,
    HOTFIX_SEL_CHAT_CHANNELS_LOCALE,

    HOTFIX_SEL_CHR_CLASSES,
    HOTFIX_SEL_CHR_CLASSES_MAX_ID,
    HOTFIX_SEL_CHR_CLASSES_LOCALE,

    HOTFIX_SEL_CHR_CLASSES_X_POWER_TYPES,
    HOTFIX_SEL_CHR_CLASSES_X_POWER_TYPES_MAX_ID,

    HOTFIX_SEL_CHR_RACES,
    HOTFIX_SEL_CHR_RACES_MAX_ID,
    HOTFIX_SEL_CHR_RACES_LOCALE,

    HOTFIX_SEL_CHR_SPECIALIZATION,
    HOTFIX_SEL_CHR_SPECIALIZATION_MAX_ID,
    HOTFIX_SEL_CHR_SPECIALIZATION_LOCALE,

    HOTFIX_SEL_CINEMATIC_CAMERA,
    HOTFIX_SEL_CINEMATIC_CAMERA_MAX_ID,

    HOTFIX_SEL_CINEMATIC_SEQUENCES,
    HOTFIX_SEL_CINEMATIC_SEQUENCES_MAX_ID,

    HOTFIX_SEL_CONTENT_TUNING,
    HOTFIX_SEL_CONTENT_TUNING_MAX_ID,

    HOTFIX_SEL_CONTENT_TUNING_X_EXPECTED,
    HOTFIX_SEL_CONTENT_TUNING_X_EXPECTED_MAX_ID,

    HOTFIX_SEL_CONVERSATION_LINE,
    HOTFIX_SEL_CONVERSATION_LINE_MAX_ID,

    HOTFIX_SEL_CORRUPTION_EFFECTS,
    HOTFIX_SEL_CORRUPTION_EFFECTS_MAX_ID,

    HOTFIX_SEL_CREATURE_DISPLAY_INFO,
    HOTFIX_SEL_CREATURE_DISPLAY_INFO_MAX_ID,

    HOTFIX_SEL_CREATURE_DISPLAY_INFO_EXTRA,
    HOTFIX_SEL_CREATURE_DISPLAY_INFO_EXTRA_MAX_ID,

    HOTFIX_SEL_CREATURE_FAMILY,
    HOTFIX_SEL_CREATURE_FAMILY_MAX_ID,
    HOTFIX_SEL_CREATURE_FAMILY_LOCALE,

    HOTFIX_SEL_CREATURE_MODEL_DATA,
    HOTFIX_SEL_CREATURE_MODEL_DATA_MAX_ID,

    HOTFIX_SEL_CREATURE_TYPE,
    HOTFIX_SEL_CREATURE_TYPE_MAX_ID,
    HOTFIX_SEL_CREATURE_TYPE_LOCALE,

    HOTFIX_SEL_CRITERIA,
    HOTFIX_SEL_CRITERIA_MAX_ID,

    HOTFIX_SEL_CRITERIA_TREE,
    HOTFIX_SEL_CRITERIA_TREE_MAX_ID,
    HOTFIX_SEL_CRITERIA_TREE_LOCALE,

    HOTFIX_SEL_CURRENCY_TYPES,
    HOTFIX_SEL_CURRENCY_TYPES_MAX_ID,
    HOTFIX_SEL_CURRENCY_TYPES_LOCALE,

    HOTFIX_SEL_CURVE,
    HOTFIX_SEL_CURVE_MAX_ID,

    HOTFIX_SEL_CURVE_POINT,
    HOTFIX_SEL_CURVE_POINT_MAX_ID,

    HOTFIX_SEL_DESTRUCTIBLE_MODEL_DATA,
    HOTFIX_SEL_DESTRUCTIBLE_MODEL_DATA_MAX_ID,

    HOTFIX_SEL_DIFFICULTY,
    HOTFIX_SEL_DIFFICULTY_MAX_ID,
    HOTFIX_SEL_DIFFICULTY_LOCALE,

    HOTFIX_SEL_DUNGEON_ENCOUNTER,
    HOTFIX_SEL_DUNGEON_ENCOUNTER_MAX_ID,
    HOTFIX_SEL_DUNGEON_ENCOUNTER_LOCALE,

    HOTFIX_SEL_DURABILITY_COSTS,
    HOTFIX_SEL_DURABILITY_COSTS_MAX_ID,

    HOTFIX_SEL_DURABILITY_QUALITY,
    HOTFIX_SEL_DURABILITY_QUALITY_MAX_ID,

    HOTFIX_SEL_EMOTES,
    HOTFIX_SEL_EMOTES_MAX_ID,

    HOTFIX_SEL_EMOTES_TEXT,
    HOTFIX_SEL_EMOTES_TEXT_MAX_ID,

    HOTFIX_SEL_EMOTES_TEXT_SOUND,
    HOTFIX_SEL_EMOTES_TEXT_SOUND_MAX_ID,

    HOTFIX_SEL_EXPECTED_STAT,
    HOTFIX_SEL_EXPECTED_STAT_MAX_ID,

    HOTFIX_SEL_EXPECTED_STAT_MOD,
    HOTFIX_SEL_EXPECTED_STAT_MOD_MAX_ID,

    HOTFIX_SEL_FACTION,
    HOTFIX_SEL_FACTION_MAX_ID,
    HOTFIX_SEL_FACTION_LOCALE,

    HOTFIX_SEL_FACTION_TEMPLATE,
    HOTFIX_SEL_FACTION_TEMPLATE_MAX_ID,

    HOTFIX_SEL_GAMEOBJECT_DISPLAY_INFO,
    HOTFIX_SEL_GAMEOBJECT_DISPLAY_INFO_MAX_ID,

    HOTFIX_SEL_GAMEOBJECTS,
    HOTFIX_SEL_GAMEOBJECTS_MAX_ID,
    HOTFIX_SEL_GAMEOBJECTS_LOCALE,

    HOTFIX_SEL_GARR_ABILITY,
    HOTFIX_SEL_GARR_ABILITY_MAX_ID,
    HOTFIX_SEL_GARR_ABILITY_LOCALE,

    HOTFIX_SEL_GARR_BUILDING,
    HOTFIX_SEL_GARR_BUILDING_MAX_ID,
    HOTFIX_SEL_GARR_BUILDING_LOCALE,

    HOTFIX_SEL_GARR_BUILDING_PLOT_INST,
    HOTFIX_SEL_GARR_BUILDING_PLOT_INST_MAX_ID,

    HOTFIX_SEL_GARR_CLASS_SPEC,
    HOTFIX_SEL_GARR_CLASS_SPEC_MAX_ID,
    HOTFIX_SEL_GARR_CLASS_SPEC_LOCALE,

    HOTFIX_SEL_GARR_FOLLOWER,
    HOTFIX_SEL_GARR_FOLLOWER_MAX_ID,
    HOTFIX_SEL_GARR_FOLLOWER_LOCALE,

    HOTFIX_SEL_GARR_FOLLOWER_LEVEL_XP,
    HOTFIX_SEL_GARR_FOLLOWER_LEVEL_XP_MAX_ID,

    HOTFIX_SEL_GARR_FOLLOWER_QUALITY,
    HOTFIX_SEL_GARR_FOLLOWER_QUALITY_MAX_ID,

    HOTFIX_SEL_GARR_FOLLOWER_TYPE,
    HOTFIX_SEL_GARR_FOLLOWER_TYPE_MAX_ID,

    HOTFIX_SEL_GARR_FOLLOWER_X_ABILITY,
    HOTFIX_SEL_GARR_FOLLOWER_X_ABILITY_MAX_ID,

    HOTFIX_SEL_GARR_MISSION,
    HOTFIX_SEL_GARR_MISSION_MAX_ID,
    HOTFIX_SEL_GARR_MISSION_LOCALE,

    HOTFIX_SEL_GARR_PLOT,
    HOTFIX_SEL_GARR_PLOT_MAX_ID,

    HOTFIX_SEL_GARR_PLOT_BUILDING,
    HOTFIX_SEL_GARR_PLOT_BUILDING_MAX_ID,

    HOTFIX_SEL_GARR_PLOT_INSTANCE,
    HOTFIX_SEL_GARR_PLOT_INSTANCE_MAX_ID,

    HOTFIX_SEL_GARR_SITE_LEVEL,
    HOTFIX_SEL_GARR_SITE_LEVEL_MAX_ID,

    HOTFIX_SEL_GARR_SITE_LEVEL_PLOT_INST,
    HOTFIX_SEL_GARR_SITE_LEVEL_PLOT_INST_MAX_ID,

    HOTFIX_SEL_GEM_PROPERTIES,
    HOTFIX_SEL_GEM_PROPERTIES_MAX_ID,

    HOTFIX_SEL_GLOBAL_STRINGS,
    HOTFIX_SEL_GLOBAL_STRINGS_MAX_ID,
    HOTFIX_SEL_GLOBAL_STRINGS_LOCALE,

    HOTFIX_SEL_GLYPH_BINDABLE_SPELL,
    HOTFIX_SEL_GLYPH_BINDABLE_SPELL_MAX_ID,

    HOTFIX_SEL_GLYPH_PROPERTIES,
    HOTFIX_SEL_GLYPH_PROPERTIES_MAX_ID,

    HOTFIX_SEL_GLYPH_REQUIRED_SPEC,
    HOTFIX_SEL_GLYPH_REQUIRED_SPEC_MAX_ID,

    HOTFIX_SEL_GUILD_COLOR_BACKGROUND,
    HOTFIX_SEL_GUILD_COLOR_BACKGROUND_MAX_ID,

    HOTFIX_SEL_GUILD_COLOR_BORDER,
    HOTFIX_SEL_GUILD_COLOR_BORDER_MAX_ID,

    HOTFIX_SEL_GUILD_COLOR_EMBLEM,
    HOTFIX_SEL_GUILD_COLOR_EMBLEM_MAX_ID,

    HOTFIX_SEL_GUILD_PERK_SPELLS,
    HOTFIX_SEL_GUILD_PERK_SPELLS_MAX_ID,

    HOTFIX_SEL_HEIRLOOM,
    HOTFIX_SEL_HEIRLOOM_MAX_ID,
    HOTFIX_SEL_HEIRLOOM_LOCALE,

    HOTFIX_SEL_HOLIDAYS,
    HOTFIX_SEL_HOLIDAYS_MAX_ID,

    HOTFIX_SEL_IMPORT_PRICE_ARMOR,
    HOTFIX_SEL_IMPORT_PRICE_ARMOR_MAX_ID,

    HOTFIX_SEL_IMPORT_PRICE_QUALITY,
    HOTFIX_SEL_IMPORT_PRICE_QUALITY_MAX_ID,

    HOTFIX_SEL_IMPORT_PRICE_SHIELD,
    HOTFIX_SEL_IMPORT_PRICE_SHIELD_MAX_ID,

    HOTFIX_SEL_IMPORT_PRICE_WEAPON,
    HOTFIX_SEL_IMPORT_PRICE_WEAPON_MAX_ID,

    HOTFIX_SEL_ITEM,
    HOTFIX_SEL_ITEM_MAX_ID,

    HOTFIX_SEL_ITEM_APPEARANCE,
    HOTFIX_SEL_ITEM_APPEARANCE_MAX_ID,

    HOTFIX_SEL_ITEM_ARMOR_QUALITY,
    HOTFIX_SEL_ITEM_ARMOR_QUALITY_MAX_ID,

    HOTFIX_SEL_ITEM_ARMOR_SHIELD,
    HOTFIX_SEL_ITEM_ARMOR_SHIELD_MAX_ID,

    HOTFIX_SEL_ITEM_ARMOR_TOTAL,
    HOTFIX_SEL_ITEM_ARMOR_TOTAL_MAX_ID,

    HOTFIX_SEL_ITEM_BAG_FAMILY,
    HOTFIX_SEL_ITEM_BAG_FAMILY_MAX_ID,
    HOTFIX_SEL_ITEM_BAG_FAMILY_LOCALE,

    HOTFIX_SEL_ITEM_BONUS,
    HOTFIX_SEL_ITEM_BONUS_MAX_ID,

    HOTFIX_SEL_ITEM_BONUS_LIST_LEVEL_DELTA,
    HOTFIX_SEL_ITEM_BONUS_LIST_LEVEL_DELTA_MAX_ID,

    HOTFIX_SEL_ITEM_BONUS_TREE_NODE,
    HOTFIX_SEL_ITEM_BONUS_TREE_NODE_MAX_ID,

    HOTFIX_SEL_ITEM_CHILD_EQUIPMENT,
    HOTFIX_SEL_ITEM_CHILD_EQUIPMENT_MAX_ID,

    HOTFIX_SEL_ITEM_CLASS,
    HOTFIX_SEL_ITEM_CLASS_MAX_ID,
    HOTFIX_SEL_ITEM_CLASS_LOCALE,

    HOTFIX_SEL_ITEM_CURRENCY_COST,
    HOTFIX_SEL_ITEM_CURRENCY_COST_MAX_ID,

    HOTFIX_SEL_ITEM_DAMAGE_AMMO,
    HOTFIX_SEL_ITEM_DAMAGE_AMMO_MAX_ID,

    HOTFIX_SEL_ITEM_DAMAGE_ONE_HAND,
    HOTFIX_SEL_ITEM_DAMAGE_ONE_HAND_MAX_ID,

    HOTFIX_SEL_ITEM_DAMAGE_ONE_HAND_CASTER,
    HOTFIX_SEL_ITEM_DAMAGE_ONE_HAND_CASTER_MAX_ID,

    HOTFIX_SEL_ITEM_DAMAGE_TWO_HAND,
    HOTFIX_SEL_ITEM_DAMAGE_TWO_HAND_MAX_ID,

    HOTFIX_SEL_ITEM_DAMAGE_TWO_HAND_CASTER,
    HOTFIX_SEL_ITEM_DAMAGE_TWO_HAND_CASTER_MAX_ID,

    HOTFIX_SEL_ITEM_DISENCHANT_LOOT,
    HOTFIX_SEL_ITEM_DISENCHANT_LOOT_MAX_ID,

    HOTFIX_SEL_ITEM_EFFECT,
    HOTFIX_SEL_ITEM_EFFECT_MAX_ID,

    HOTFIX_SEL_ITEM_EXTENDED_COST,
    HOTFIX_SEL_ITEM_EXTENDED_COST_MAX_ID,

    HOTFIX_SEL_ITEM_LEVEL_SELECTOR,
    HOTFIX_SEL_ITEM_LEVEL_SELECTOR_MAX_ID,

    HOTFIX_SEL_ITEM_LEVEL_SELECTOR_QUALITY,
    HOTFIX_SEL_ITEM_LEVEL_SELECTOR_QUALITY_MAX_ID,

    HOTFIX_SEL_ITEM_LEVEL_SELECTOR_QUALITY_SET,
    HOTFIX_SEL_ITEM_LEVEL_SELECTOR_QUALITY_SET_MAX_ID,

    HOTFIX_SEL_ITEM_LIMIT_CATEGORY,
    HOTFIX_SEL_ITEM_LIMIT_CATEGORY_MAX_ID,
    HOTFIX_SEL_ITEM_LIMIT_CATEGORY_LOCALE,

    HOTFIX_SEL_ITEM_LIMIT_CATEGORY_CONDITION,
    HOTFIX_SEL_ITEM_LIMIT_CATEGORY_CONDITION_MAX_ID,

    HOTFIX_SEL_ITEM_MODIFIED_APPEARANCE,
    HOTFIX_SEL_ITEM_MODIFIED_APPEARANCE_MAX_ID,

    HOTFIX_SEL_ITEM_NAME_DESCRIPTION,
    HOTFIX_SEL_ITEM_NAME_DESCRIPTION_MAX_ID,
    HOTFIX_SEL_ITEM_NAME_DESCRIPTION_LOCALE,

    HOTFIX_SEL_ITEM_PRICE_BASE,
    HOTFIX_SEL_ITEM_PRICE_BASE_MAX_ID,

    HOTFIX_SEL_ITEM_SEARCH_NAME,
    HOTFIX_SEL_ITEM_SEARCH_NAME_MAX_ID,
    HOTFIX_SEL_ITEM_SEARCH_NAME_LOCALE,

    HOTFIX_SEL_ITEM_SET,
    HOTFIX_SEL_ITEM_SET_MAX_ID,
    HOTFIX_SEL_ITEM_SET_LOCALE,

    HOTFIX_SEL_ITEM_SET_SPELL,
    HOTFIX_SEL_ITEM_SET_SPELL_MAX_ID,

    HOTFIX_SEL_ITEM_SPARSE,
    HOTFIX_SEL_ITEM_SPARSE_MAX_ID,
    HOTFIX_SEL_ITEM_SPARSE_LOCALE,

    HOTFIX_SEL_ITEM_SPEC,
    HOTFIX_SEL_ITEM_SPEC_MAX_ID,

    HOTFIX_SEL_ITEM_SPEC_OVERRIDE,
    HOTFIX_SEL_ITEM_SPEC_OVERRIDE_MAX_ID,

    HOTFIX_SEL_ITEM_X_BONUS_TREE,
    HOTFIX_SEL_ITEM_X_BONUS_TREE_MAX_ID,

    HOTFIX_SEL_JOURNAL_ENCOUNTER,
    HOTFIX_SEL_JOURNAL_ENCOUNTER_MAX_ID,
    HOTFIX_SEL_JOURNAL_ENCOUNTER_LOCALE,

    HOTFIX_SEL_JOURNAL_ENCOUNTER_ITEM,
    HOTFIX_SEL_JOURNAL_ENCOUNTER_ITEM_MAX_ID,

    HOTFIX_SEL_JOURNAL_INSTANCE,
    HOTFIX_SEL_JOURNAL_INSTANCE_MAX_ID,
    HOTFIX_SEL_JOURNAL_INSTANCE_LOCALE,

    HOTFIX_SEL_KEYCHAIN,
    HOTFIX_SEL_KEYCHAIN_MAX_ID,

    HOTFIX_SEL_LFG_DUNGEONS,
    HOTFIX_SEL_LFG_DUNGEONS_MAX_ID,
    HOTFIX_SEL_LFG_DUNGEONS_LOCALE,

    HOTFIX_SEL_LIGHT,
    HOTFIX_SEL_LIGHT_MAX_ID,

    HOTFIX_SEL_LIQUID_TYPE,
    HOTFIX_SEL_LIQUID_TYPE_MAX_ID,

    HOTFIX_SEL_LOCK,
    HOTFIX_SEL_LOCK_MAX_ID,

    HOTFIX_SEL_MAIL_TEMPLATE,
    HOTFIX_SEL_MAIL_TEMPLATE_MAX_ID,
    HOTFIX_SEL_MAIL_TEMPLATE_LOCALE,

    HOTFIX_SEL_MAP,
    HOTFIX_SEL_MAP_MAX_ID,
    HOTFIX_SEL_MAP_LOCALE,

    HOTFIX_SEL_MAP_CHALLENGE_MODE,
    HOTFIX_SEL_MAP_CHALLENGE_MODE_MAX_ID,
    HOTFIX_SEL_MAP_CHALLENGE_MODE_LOCALE,

    HOTFIX_SEL_MAP_DIFFICULTY,
    HOTFIX_SEL_MAP_DIFFICULTY_MAX_ID,
    HOTFIX_SEL_MAP_DIFFICULTY_LOCALE,

    HOTFIX_SEL_MODIFIER_TREE,
    HOTFIX_SEL_MODIFIER_TREE_MAX_ID,

    HOTFIX_SEL_MOUNT,
    HOTFIX_SEL_MOUNT_MAX_ID,
    HOTFIX_SEL_MOUNT_LOCALE,

    HOTFIX_SEL_MOUNT_CAPABILITY,
    HOTFIX_SEL_MOUNT_CAPABILITY_MAX_ID,

    HOTFIX_SEL_MOUNT_TYPE_X_CAPABILITY,
    HOTFIX_SEL_MOUNT_TYPE_X_CAPABILITY_MAX_ID,

    HOTFIX_SEL_MOUNT_X_DISPLAY,
    HOTFIX_SEL_MOUNT_X_DISPLAY_MAX_ID,

    HOTFIX_SEL_MOVIE,
    HOTFIX_SEL_MOVIE_MAX_ID,

    HOTFIX_SEL_NAME_GEN,
    HOTFIX_SEL_NAME_GEN_MAX_ID,

    HOTFIX_SEL_NAMES_PROFANITY,
    HOTFIX_SEL_NAMES_PROFANITY_MAX_ID,

    HOTFIX_SEL_NAMES_RESERVED,
    HOTFIX_SEL_NAMES_RESERVED_MAX_ID,

    HOTFIX_SEL_NAMES_RESERVED_LOCALE,
    HOTFIX_SEL_NAMES_RESERVED_LOCALE_MAX_ID,

    HOTFIX_SEL_NUM_TALENTS_AT_LEVEL,
    HOTFIX_SEL_NUM_TALENTS_AT_LEVEL_MAX_ID,

    HOTFIX_SEL_OVERRIDE_SPELL_DATA,
    HOTFIX_SEL_OVERRIDE_SPELL_DATA_MAX_ID,

    HOTFIX_SEL_PHASE,
    HOTFIX_SEL_PHASE_MAX_ID,

    HOTFIX_SEL_PHASE_X_PHASE_GROUP,
    HOTFIX_SEL_PHASE_X_PHASE_GROUP_MAX_ID,

    HOTFIX_SEL_PLAYER_CONDITION,
    HOTFIX_SEL_PLAYER_CONDITION_MAX_ID,
    HOTFIX_SEL_PLAYER_CONDITION_LOCALE,

    HOTFIX_SEL_POWER_DISPLAY,
    HOTFIX_SEL_POWER_DISPLAY_MAX_ID,

    HOTFIX_SEL_POWER_TYPE,
    HOTFIX_SEL_POWER_TYPE_MAX_ID,

    HOTFIX_SEL_PRESTIGE_LEVEL_INFO,
    HOTFIX_SEL_PRESTIGE_LEVEL_INFO_MAX_ID,
    HOTFIX_SEL_PRESTIGE_LEVEL_INFO_LOCALE,

    HOTFIX_SEL_PVP_DIFFICULTY,
    HOTFIX_SEL_PVP_DIFFICULTY_MAX_ID,

    HOTFIX_SEL_PVP_ITEM,
    HOTFIX_SEL_PVP_ITEM_MAX_ID,

    HOTFIX_SEL_PVP_TALENT,
    HOTFIX_SEL_PVP_TALENT_MAX_ID,
    HOTFIX_SEL_PVP_TALENT_LOCALE,

    HOTFIX_SEL_PVP_TALENT_CATEGORY,
    HOTFIX_SEL_PVP_TALENT_CATEGORY_MAX_ID,

    HOTFIX_SEL_PVP_TALENT_SLOT_UNLOCK,
    HOTFIX_SEL_PVP_TALENT_SLOT_UNLOCK_MAX_ID,

    HOTFIX_SEL_QUEST_FACTION_REWARD,
    HOTFIX_SEL_QUEST_FACTION_REWARD_MAX_ID,

    HOTFIX_SEL_QUEST_MONEY_REWARD,
    HOTFIX_SEL_QUEST_MONEY_REWARD_MAX_ID,

    HOTFIX_SEL_QUEST_V2_CLI_TASK,
    HOTFIX_SEL_QUEST_V2_CLI_TASK_MAX_ID,
    HOTFIX_SEL_QUEST_V2_CLI_TASK_LOCALE,

    HOTFIX_SEL_QUEST_PACKAGE_ITEM,
    HOTFIX_SEL_QUEST_PACKAGE_ITEM_MAX_ID,

    HOTFIX_SEL_QUEST_SORT,
    HOTFIX_SEL_QUEST_SORT_MAX_ID,
    HOTFIX_SEL_QUEST_SORT_LOCALE,

    HOTFIX_SEL_QUEST_V2,
    HOTFIX_SEL_QUEST_V2_MAX_ID,

    HOTFIX_SEL_QUEST_XP,
    HOTFIX_SEL_QUEST_XP_MAX_ID,

    HOTFIX_SEL_QUEST_POI_BLOB,
    HOTFIX_SEL_QUEST_POI_BLOB_MAX_ID,

    HOTFIX_SEL_QUEST_POI_POINT,
    HOTFIX_SEL_QUEST_POI_POINT_MAX_ID,

    HOTFIX_SEL_RAND_PROP_POINTS,
    HOTFIX_SEL_RAND_PROP_POINTS_MAX_ID,

    HOTFIX_SEL_RESEARCH_BRANCH,
    HOTFIX_SEL_RESEARCH_BRANCH_MAX_ID,
    HOTFIX_SEL_RESEARCH_BRANCH_LOCALE,

    HOTFIX_SEL_RESEARCH_PROJECT,
    HOTFIX_SEL_RESEARCH_PROJECT_MAX_ID,
    HOTFIX_SEL_RESEARCH_PROJECT_LOCALE,

    HOTFIX_SEL_RESEARCH_SITE,
    HOTFIX_SEL_RESEARCH_SITE_MAX_ID,
    HOTFIX_SEL_RESEARCH_SITE_LOCALE,

    HOTFIX_SEL_REWARD_PACK,
    HOTFIX_SEL_REWARD_PACK_MAX_ID,

    HOTFIX_SEL_REWARD_PACK_X_CURRENCY_TYPE,
    HOTFIX_SEL_REWARD_PACK_X_CURRENCY_TYPE_MAX_ID,

    HOTFIX_SEL_REWARD_PACK_X_ITEM,
    HOTFIX_SEL_REWARD_PACK_X_ITEM_MAX_ID,

    HOTFIX_SEL_SCALING_STAT_DISTRIBUTION,
    HOTFIX_SEL_SCALING_STAT_DISTRIBUTION_MAX_ID,

    HOTFIX_SEL_SCENARIO,
    HOTFIX_SEL_SCENARIO_MAX_ID,
    HOTFIX_SEL_SCENARIO_LOCALE,

    HOTFIX_SEL_SCENARIO_STEP,
    HOTFIX_SEL_SCENARIO_STEP_MAX_ID,
    HOTFIX_SEL_SCENARIO_STEP_LOCALE,

    HOTFIX_SEL_SCENE_SCRIPT,
    HOTFIX_SEL_SCENE_SCRIPT_MAX_ID,

    HOTFIX_SEL_SCENE_SCRIPT_GLOBAL_TEXT,
    HOTFIX_SEL_SCENE_SCRIPT_GLOBAL_TEXT_MAX_ID,

    HOTFIX_SEL_SCENE_SCRIPT_PACKAGE,
    HOTFIX_SEL_SCENE_SCRIPT_PACKAGE_MAX_ID,

    HOTFIX_SEL_SCENE_SCRIPT_TEXT,
    HOTFIX_SEL_SCENE_SCRIPT_TEXT_MAX_ID,

    HOTFIX_SEL_SKILL_LINE,
    HOTFIX_SEL_SKILL_LINE_MAX_ID,
    HOTFIX_SEL_SKILL_LINE_LOCALE,

    HOTFIX_SEL_SKILL_LINE_ABILITY,
    HOTFIX_SEL_SKILL_LINE_ABILITY_MAX_ID,

    HOTFIX_SEL_SKILL_RACE_CLASS_INFO,
    HOTFIX_SEL_SKILL_RACE_CLASS_INFO_MAX_ID,

    HOTFIX_SEL_SOUND_KIT,
    HOTFIX_SEL_SOUND_KIT_MAX_ID,

    HOTFIX_SEL_SPECIALIZATION_SPELLS,
    HOTFIX_SEL_SPECIALIZATION_SPELLS_MAX_ID,
    HOTFIX_SEL_SPECIALIZATION_SPELLS_LOCALE,

    HOTFIX_SEL_SPEC_SET_MEMBER,
    HOTFIX_SEL_SPEC_SET_MEMBER_MAX_ID,

    HOTFIX_SEL_SPELL_AURA_OPTIONS,
    HOTFIX_SEL_SPELL_AURA_OPTIONS_MAX_ID,

    HOTFIX_SEL_SPELL_AURA_RESTRICTIONS,
    HOTFIX_SEL_SPELL_AURA_RESTRICTIONS_MAX_ID,

    HOTFIX_SEL_SPELL_CAST_TIMES,
    HOTFIX_SEL_SPELL_CAST_TIMES_MAX_ID,

    HOTFIX_SEL_SPELL_CASTING_REQUIREMENTS,
    HOTFIX_SEL_SPELL_CASTING_REQUIREMENTS_MAX_ID,

    HOTFIX_SEL_SPELL_CATEGORIES,
    HOTFIX_SEL_SPELL_CATEGORIES_MAX_ID,

    HOTFIX_SEL_SPELL_CATEGORY,
    HOTFIX_SEL_SPELL_CATEGORY_MAX_ID,
    HOTFIX_SEL_SPELL_CATEGORY_LOCALE,

    HOTFIX_SEL_SPELL_CLASS_OPTIONS,
    HOTFIX_SEL_SPELL_CLASS_OPTIONS_MAX_ID,

    HOTFIX_SEL_SPELL_COOLDOWNS,
    HOTFIX_SEL_SPELL_COOLDOWNS_MAX_ID,

    HOTFIX_SEL_SPELL_DURATION,
    HOTFIX_SEL_SPELL_DURATION_MAX_ID,

    HOTFIX_SEL_SPELL_EFFECT,
    HOTFIX_SEL_SPELL_EFFECT_MAX_ID,

    HOTFIX_SEL_SPELL_EQUIPPED_ITEMS,
    HOTFIX_SEL_SPELL_EQUIPPED_ITEMS_MAX_ID,

    HOTFIX_SEL_SPELL_FOCUS_OBJECT,
    HOTFIX_SEL_SPELL_FOCUS_OBJECT_MAX_ID,
    HOTFIX_SEL_SPELL_FOCUS_OBJECT_LOCALE,

    HOTFIX_SEL_SPELL_INTERRUPTS,
    HOTFIX_SEL_SPELL_INTERRUPTS_MAX_ID,

    HOTFIX_SEL_SPELL_ITEM_ENCHANTMENT,
    HOTFIX_SEL_SPELL_ITEM_ENCHANTMENT_MAX_ID,
    HOTFIX_SEL_SPELL_ITEM_ENCHANTMENT_LOCALE,

    HOTFIX_SEL_SPELL_ITEM_ENCHANTMENT_CONDITION,
    HOTFIX_SEL_SPELL_ITEM_ENCHANTMENT_CONDITION_MAX_ID,

    HOTFIX_SEL_SPELL_LEARN_SPELL,
    HOTFIX_SEL_SPELL_LEARN_SPELL_MAX_ID,

    HOTFIX_SEL_SPELL_LEVELS,
    HOTFIX_SEL_SPELL_LEVELS_MAX_ID,

    HOTFIX_SEL_SPELL_MISC,
    HOTFIX_SEL_SPELL_MISC_MAX_ID,

    HOTFIX_SEL_SPELL_NAME,
    HOTFIX_SEL_SPELL_NAME_MAX_ID,
    HOTFIX_SEL_SPELL_NAME_LOCALE,

    HOTFIX_SEL_SPELL_POWER,
    HOTFIX_SEL_SPELL_POWER_MAX_ID,

    HOTFIX_SEL_SPELL_POWER_DIFFICULTY,
    HOTFIX_SEL_SPELL_POWER_DIFFICULTY_MAX_ID,

    HOTFIX_SEL_SPELL_PROCS_PER_MINUTE,
    HOTFIX_SEL_SPELL_PROCS_PER_MINUTE_MAX_ID,

    HOTFIX_SEL_SPELL_PROCS_PER_MINUTE_MOD,
    HOTFIX_SEL_SPELL_PROCS_PER_MINUTE_MOD_MAX_ID,

    HOTFIX_SEL_SPELL_RADIUS,
    HOTFIX_SEL_SPELL_RADIUS_MAX_ID,

    HOTFIX_SEL_SPELL_RANGE,
    HOTFIX_SEL_SPELL_RANGE_MAX_ID,
    HOTFIX_SEL_SPELL_RANGE_LOCALE,

    HOTFIX_SEL_SPELL_REAGENTS,
    HOTFIX_SEL_SPELL_REAGENTS_MAX_ID,

    HOTFIX_SEL_SPELL_SCALING,
    HOTFIX_SEL_SPELL_SCALING_MAX_ID,

    HOTFIX_SEL_SPELL_SHAPESHIFT,
    HOTFIX_SEL_SPELL_SHAPESHIFT_MAX_ID,

    HOTFIX_SEL_SPELL_SHAPESHIFT_FORM,
    HOTFIX_SEL_SPELL_SHAPESHIFT_FORM_MAX_ID,
    HOTFIX_SEL_SPELL_SHAPESHIFT_FORM_LOCALE,

    HOTFIX_SEL_SPELL_TARGET_RESTRICTIONS,
    HOTFIX_SEL_SPELL_TARGET_RESTRICTIONS_MAX_ID,

    HOTFIX_SEL_SPELL_TOTEMS,
    HOTFIX_SEL_SPELL_TOTEMS_MAX_ID,

    HOTFIX_SEL_SPELL_VISUAL_KIT,
    HOTFIX_SEL_SPELL_VISUAL_KIT_MAX_ID,

    HOTFIX_SEL_SPELL_X_SPELL_VISUAL,
    HOTFIX_SEL_SPELL_X_SPELL_VISUAL_MAX_ID,

    HOTFIX_SEL_SUMMON_PROPERTIES,
    HOTFIX_SEL_SUMMON_PROPERTIES_MAX_ID,

    HOTFIX_SEL_TACT_KEY,
    HOTFIX_SEL_TACT_KEY_MAX_ID,

    HOTFIX_SEL_TALENT,
    HOTFIX_SEL_TALENT_MAX_ID,
    HOTFIX_SEL_TALENT_LOCALE,

    HOTFIX_SEL_TAXI_NODES,
    HOTFIX_SEL_TAXI_NODES_MAX_ID,
    HOTFIX_SEL_TAXI_NODES_LOCALE,

    HOTFIX_SEL_TAXI_PATH,
    HOTFIX_SEL_TAXI_PATH_MAX_ID,

    HOTFIX_SEL_TAXI_PATH_NODE,
    HOTFIX_SEL_TAXI_PATH_NODE_MAX_ID,

    HOTFIX_SEL_TOTEM_CATEGORY,
    HOTFIX_SEL_TOTEM_CATEGORY_MAX_ID,
    HOTFIX_SEL_TOTEM_CATEGORY_LOCALE,

    HOTFIX_SEL_TOY,
    HOTFIX_SEL_TOY_MAX_ID,
    HOTFIX_SEL_TOY_LOCALE,

    HOTFIX_SEL_TRANSMOG_HOLIDAY,
    HOTFIX_SEL_TRANSMOG_HOLIDAY_MAX_ID,

    HOTFIX_SEL_TRANSMOG_SET,
    HOTFIX_SEL_TRANSMOG_SET_MAX_ID,
    HOTFIX_SEL_TRANSMOG_SET_LOCALE,

    HOTFIX_SEL_TRANSMOG_SET_GROUP,
    HOTFIX_SEL_TRANSMOG_SET_GROUP_MAX_ID,
    HOTFIX_SEL_TRANSMOG_SET_GROUP_LOCALE,

    HOTFIX_SEL_TRANSMOG_SET_ITEM,
    HOTFIX_SEL_TRANSMOG_SET_ITEM_MAX_ID,

    HOTFIX_SEL_TRANSPORT_ANIMATION,
    HOTFIX_SEL_TRANSPORT_ANIMATION_MAX_ID,

    HOTFIX_SEL_TRANSPORT_ROTATION,
    HOTFIX_SEL_TRANSPORT_ROTATION_MAX_ID,

    HOTFIX_SEL_UI_MAP,
    HOTFIX_SEL_UI_MAP_MAX_ID,
    HOTFIX_SEL_UI_MAP_LOCALE,

    HOTFIX_SEL_UI_MAP_ASSIGNMENT,
    HOTFIX_SEL_UI_MAP_ASSIGNMENT_MAX_ID,

    HOTFIX_SEL_UI_MAP_LINK,
    HOTFIX_SEL_UI_MAP_LINK_MAX_ID,

    HOTFIX_SEL_UI_MAP_X_MAP_ART,
    HOTFIX_SEL_UI_MAP_X_MAP_ART_MAX_ID,

    HOTFIX_SEL_UNIT_POWER_BAR,
    HOTFIX_SEL_UNIT_POWER_BAR_MAX_ID,
    HOTFIX_SEL_UNIT_POWER_BAR_LOCALE,

    HOTFIX_SEL_VEHICLE,
    HOTFIX_SEL_VEHICLE_MAX_ID,

    HOTFIX_SEL_VEHICLE_SEAT,
    HOTFIX_SEL_VEHICLE_SEAT_MAX_ID,

    HOTFIX_SEL_WMO_AREA_TABLE,
    HOTFIX_SEL_WMO_AREA_TABLE_MAX_ID,
    HOTFIX_SEL_WMO_AREA_TABLE_LOCALE,

    HOTFIX_SEL_WORLD_EFFECT,
    HOTFIX_SEL_WORLD_EFFECT_MAX_ID,

    HOTFIX_SEL_WORLD_MAP_OVERLAY,
    HOTFIX_SEL_WORLD_MAP_OVERLAY_MAX_ID,

    HOTFIX_SEL_WORLD_STATE_EXPRESSION,
    HOTFIX_SEL_WORLD_STATE_EXPRESSION_MAX_ID,

    MAX_HOTFIXDATABASE_STATEMENTS
};

class TC_DATABASE_API HotfixDatabaseConnection : public MySQLConnection
{
public:
    typedef HotfixDatabaseStatements Statements;

    //- Constructors for sync and async connections
    HotfixDatabaseConnection(MySQLConnectionInfo& connInfo);
    HotfixDatabaseConnection(ProducerConsumerQueue<SQLOperation*>* q, MySQLConnectionInfo& connInfo);
    ~HotfixDatabaseConnection();

    //- Loads database type specific prepared statements
    void DoPrepareStatements() override;
};

#endif
