#include "BattlegroundAF.h"
#include "Player.h"
#include "WorldStatePackets.h"

BattlegroundAF::BattlegroundAF(BattlegroundTemplate const* battlegroundTemplate) : Arena(battlegroundTemplate)
{
    BgObjects.resize(BG_AF_OBJECT_MAX);
}

void BattlegroundAF::StartingEventCloseDoors()
{
    for (uint32 i = BG_AF_OBJECT_DOOR_1; i <= BG_AF_OBJECT_DOOR_2; ++i)
        SpawnBGObject(i, RESPAWN_IMMEDIATELY);
}

void BattlegroundAF::StartingEventOpenDoors()
{
    for (uint32 i = BG_AF_OBJECT_DOOR_1; i <= BG_AF_OBJECT_DOOR_2; ++i)
        DoorOpen(i);

    for (uint32 i = BG_AF_OBJECT_BUFF_1; i <= BG_AF_OBJECT_BUFF_2; ++i)
        SpawnBGObject(i, 60);
}

bool BattlegroundAF::SetupBattleground()
{
    if (!AddObject(BG_AF_OBJECT_DOOR_1, BG_AF_OBJECT_TYPE_DOOR_1, 3548.342f, 5584.779f, 323.6123f, 1.544616f, 0.0f, 0.0f, 0.6977901f, 0.7163023f, RESPAWN_IMMEDIATELY) ||
        !AddObject(BG_AF_OBJECT_DOOR_2, BG_AF_OBJECT_TYPE_DOOR_2, 3539.870f, 5488.701f, 323.5819f, 1.553341f, 0.0f, 0.0f, 0.7009087f, 0.7132511f, RESPAWN_IMMEDIATELY) ||
        !AddObject(BG_AF_OBJECT_BUFF_1, BG_AF_OBJECT_TYPE_BUFF_1, 3579.075f, 5575.938f, 326.8913f, 2.460913f, 0.0f, 0.0f, 0.9426413f, 120) ||
        !AddObject(BG_AF_OBJECT_BUFF_2, BG_AF_OBJECT_TYPE_BUFF_2, 3579.075f, 5575.938f, 326.8913f, 2.460913f, 0.0f, 0.0f, 0.9426413f, 120))

    {
        TC_LOG_ERROR("sql.sql", "BatteGroundAF: Failed to spawn some object!");
        return false;
    }

    return true;
}
