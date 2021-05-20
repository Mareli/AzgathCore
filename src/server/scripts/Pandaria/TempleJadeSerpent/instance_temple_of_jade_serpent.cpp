#include "ScriptPCH.h"

#define ENCOUNTERS 4

enum datas
{
    DATA_WISE = 0,
    DATA_LOREWALKER,
    DATA_LIU,
    DATA_SHA,
};

enum bosses
{
    BOSS_WISE = 56448,
    BOSS_LOREWALKER = 56843,
    BOSS_LIU = 56732,
    BOSS_SHA = 56439,
};

class instance_temple_of_jade_serpent : public InstanceMapScript
{
public:
    instance_temple_of_jade_serpent() : InstanceMapScript("instance_temple_of_jade_serpent", 960) { }

    InstanceScript* GetInstanceScript(InstanceMap* map) const
    {
        return new instance_temple_of_jade_serpent_InstanceMapScript(map);
    }

    struct instance_temple_of_jade_serpent_InstanceMapScript : public InstanceScript
    {
        instance_temple_of_jade_serpent_InstanceMapScript(InstanceMap* map) : InstanceScript(map) { }

        ObjectGuid bossGuids[ENCOUNTERS];

        void OnCreatureCreate(Creature* creature)
        {
            switch (creature->GetEntry())
            {
            case BOSS_WISE:
                bossGuids[DATA_WISE] = creature->GetGUID();
                break;
            case BOSS_LOREWALKER:
                bossGuids[DATA_LOREWALKER] = creature->GetGUID();
                break;
            case BOSS_LIU:
                bossGuids[DATA_LIU] = creature->GetGUID();
                break;
            case BOSS_SHA:
                bossGuids[DATA_SHA] = creature->GetGUID();
                break;
            }
        }

        ObjectGuid GetObjectGuid(uint32 identifier) const
        {
            if (identifier < ENCOUNTERS)
                return bossGuids[identifier];
        }
    };
};

void AddSC_instance_temple_of_jade_serpent()
{
    new instance_temple_of_jade_serpent();
};
