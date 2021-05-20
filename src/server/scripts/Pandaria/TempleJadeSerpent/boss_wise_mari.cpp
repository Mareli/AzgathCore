#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum eBoss
{
    BOSS_WASE_MARI = 1,
};
enum eSpells
{
    SPELL_WATER_BUBBLE = 106062,
    SPELL_CALL_WATER = 106526,
    SPELL_CORRUPTED_FOUTAIN = 106518,
    SPELL_SHA_RESIDUE = 106653,
    SPELL_HYDROLANCE_PRECAST = 115220,
    SPELL_HYDROLANCE_DMG_BOTTOM = 106267,
    SPELL_HYDROLANCE_VISUAL = 106055,
    SPELL_HYDROLANCE_DMG = 106105,
    SPELL_WASH_AWAY = 106331,
    SPELL_BUBBLE_BURST = 106612,
};
enum eTexts
{
    TALK_AGGRO = 1,
    TALK_SPELL_CALL_WATER = 2,
    TALK_WATER = 3,
    TALK_DEATH = 4,
    TALK_PHASE_TWO = 5,
};
enum eEvents
{
    EVENT_CALL_WATER = 1,
    EVENT_HYDROLANCE = 2,
    EVENT_HYDROLANCE_START = 3,
    EVENT_SWITCH_PHASE_TWO = 4,
    EVENT_WASH_AWAY = 5,

    EVENT_CALL_WATER_2 = 6,
    EVENT_CALL_WATER_3 = 7,
    EVENT_CALL_WATER_4 = 8,

    EVENT_PHASE_TWO_SEARCHER = 9,
};
enum eCreatures
{
    CREATURE_FOUTAIN_TRIGGER = 56586,
    CREATURE_CORRUPT_DROPLET = 62358,
    CREATURE_HYDROLANCE_BOTTOM_TRIGGER = 56542,
    NPC_CORRUPTED_LIVING_WATER = 56511, // 59873
    NPC_CORRUPTED_WATER_TRIGGER = 999057,
};
enum eTimers
{
    TIMER_CALL_WATTER = 15000,
    TIMER_HYDROLANCE_START = 10000,
    TIMER_HYDROLANCE = 5500,
    //TIMER_SWITCH_PHASE_TWO = 15000,
    TIMER_WASH_AWAY = 125,
};
enum hydrolancePhase
{
    HYDROLANCE_BOTTOM = 1,
    HYDROLANCE_LEFT = 2,
    HYDROLANCE_RIGHT = 3,
};
static const float fountainTriggerPos[4][3] =
{
    { 1022.743f, -2544.295f, 173.7757f },
    { 1023.314f, -2569.695f, 176.0339f },
    { 1059.943f, -2581.648f, 176.1427f },
    { 1075.231f, -2561.335f, 173.8758f },
};
static const float hydrolanceLeftTrigger[5][3] =
{
    { 1061.411f, -2570.721f, 174.2403f },
    { 1058.921f, -2573.487f, 174.2403f },
    { 1055.910f, -2575.674f, 174.2403f },
    { 1052.511f, -2577.188f, 174.2403f },
    { 1048.871f, -2577.961f, 174.2403f },
};
static const float hydrolanceRightTrigger[5][3] =
{
    { 1035.333f, -2573.693f, 174.2403f },
    { 1032.795f, -2570.971f, 174.2403f },
    { 1030.878f, -2567.781f, 174.2403f },
    { 1029.667f, -2564.263f, 174.2403f },
    { 1029.213f, -2560.569f, 174.2403f },
};

class boss_wase_mari : public CreatureScript
{
public:
    boss_wase_mari() : CreatureScript("boss_wase_mari") { }
    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_wise_mari_AI(creature);
    }
    struct boss_wise_mari_AI : public ScriptedAI
    {
        boss_wise_mari_AI(Creature* creature) : ScriptedAI(creature), summons(me)
        {
            creature->AddUnitState(UNIT_STATE_ROOT | UNIT_STATE_CANNOT_TURN);
            me->SetReactState(REACT_PASSIVE);
            reset = false;
        }

        bool ennemyInArea;
        bool intro;
        uint8 phase;
        uint8 foutainCount;
        uint64 foutainTrigger[4];
        uint32 hydrolancePhase;
        SummonList summons;
        uint8 killcount;
        EventMap events;
        uint32 callWater;
        bool reset;

        void Reset()
        {
            summons.DespawnAll();
            events.Reset();
            killcount = 0;
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            DespawnDroplet();
            reset = true;
        }

        void EnterCombat(Unit* /*who*/)
        {
            reset = false;
            me->CastSpell(me, SPELL_WATER_BUBBLE);
            Talk(TALK_AGGRO);
            hydrolancePhase = HYDROLANCE_BOTTOM;
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
            events.ScheduleEvent(EVENT_CALL_WATER, 15000);
            events.ScheduleEvent(EVENT_HYDROLANCE_START, TIMER_HYDROLANCE_START);
        }


        void JustDied(Unit* /*killer*/)
        {
            Talk(TALK_DEATH);
            summons.DespawnAll();
            DespawnDroplet();
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void DespawnDroplet()
        {
            std::list<Creature*> cList;
            me->GetCreatureListWithEntryInGrid(cList, CREATURE_CORRUPT_DROPLET, 500.0f);
            if (!cList.empty())
                for (std::list<Creature*>::const_iterator itr = cList.begin(); itr != cList.end(); ++itr)
                    (*itr)->DespawnOrUnsummon();
        }

        void SummonedCreatureDies(Creature* summon, Unit* /*killer*/)
        {
            switch (summon->GetEntry())
            {
            case NPC_CORRUPTED_LIVING_WATER:
                ++killcount;

                if (killcount == 1)
                {
                    events.ScheduleEvent(EVENT_CALL_WATER_2, 1000);
                }

                if (killcount == 2)
                {
                    events.ScheduleEvent(EVENT_CALL_WATER_3, 1000);
                }

                if (killcount == 3)
                {
                    events.ScheduleEvent(EVENT_CALL_WATER_4, 1000);
                }

                if (killcount == 4)
                {
                    events.ScheduleEvent(EVENT_SWITCH_PHASE_TWO, 100);
                    events.ScheduleEvent(EVENT_WASH_AWAY, 300);
                    events.CancelEvent(EVENT_CALL_WATER);
                    events.CancelEvent(EVENT_CALL_WATER_2);
                    events.CancelEvent(EVENT_CALL_WATER_3);
                    events.CancelEvent(EVENT_CALL_WATER_4);
                    events.CancelEvent(EVENT_HYDROLANCE_START);
                    events.CancelEvent(EVENT_HYDROLANCE);
                    DoCast(SPELL_BUBBLE_BURST);
                    Talk(TALK_PHASE_TWO);
                }
            }
        }

        void UpdateAI(uint32 diff)
        {
            bool playerFound = false;
            Map::PlayerList const& playerList = me->GetMap()->GetPlayers();
            for (Map::PlayerList::const_iterator i = playerList.begin(); i != playerList.end(); ++i)
                if (Player* player = i->GetSource())
                    if (player->IsAlive() && !player->IsGameMaster())
                    {
                        playerFound = true;
                        break;
                    }
            if (!playerFound)
            {
                if (!me->IsInEvadeMode() && !reset)
                {
                    reset = true;
                    Reset();
                    _EnterEvadeMode();
                }
                return;
            }

            events.Update(diff);
            // Wise Mari don't rotate
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;
            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CALL_WATER:
                {
                    // here we will summon 56586 on next coords then wise mari will cast on it
                    me->SummonCreature(CREATURE_FOUTAIN_TRIGGER, 1022.743f, -2544.295f, 173.7757f, TEMPSUMMON_CORPSE_DESPAWN);
                    Talk(TALK_SPELL_CALL_WATER);
                    Talk(TALK_WATER);
                    if (Creature* trigger = me->FindNearestCreature(CREATURE_FOUTAIN_TRIGGER, 1000.0f))
                    {
                        me->CastSpell(trigger, SPELL_CALL_WATER);
                        trigger->DespawnOrUnsummon(6000);
                    }
                    break;
                }
                case EVENT_CALL_WATER_2:
                {
                    me->SummonCreature(CREATURE_FOUTAIN_TRIGGER, 1023.314f, -2569.695f, 176.0339f, TEMPSUMMON_CORPSE_DESPAWN);
                    Talk(TALK_SPELL_CALL_WATER);
                    Talk(TALK_WATER);
                    if (Creature* trigger = me->FindNearestCreature(CREATURE_FOUTAIN_TRIGGER, 1000.0f))
                    {
                        me->CastSpell(trigger, SPELL_CALL_WATER);
                        trigger->DespawnOrUnsummon(6000);
                    }
                    break;
                }
                case EVENT_CALL_WATER_3:
                {
                    me->SummonCreature(CREATURE_FOUTAIN_TRIGGER, 1059.943f, -2581.648f, 176.1427f, TEMPSUMMON_CORPSE_DESPAWN);
                    Talk(TALK_SPELL_CALL_WATER);
                    Talk(TALK_WATER);
                    if (Creature* trigger = me->FindNearestCreature(CREATURE_FOUTAIN_TRIGGER, 1000.0f))
                    {
                        me->CastSpell(trigger, SPELL_CALL_WATER);
                        trigger->DespawnOrUnsummon(6000);
                    }
                    break;
                }
                case EVENT_CALL_WATER_4:
                {
                    me->SummonCreature(CREATURE_FOUTAIN_TRIGGER, 1075.231f, -2561.335f, 173.8758f, TEMPSUMMON_CORPSE_DESPAWN);
                    Talk(TALK_SPELL_CALL_WATER);
                    Talk(TALK_WATER);
                    if (Creature* trigger = me->FindNearestCreature(CREATURE_FOUTAIN_TRIGGER, 1000.0f))
                    {
                        me->CastSpell(trigger, SPELL_CALL_WATER);
                        trigger->DespawnOrUnsummon(6000);
                    }
                    break;
                }
                case EVENT_HYDROLANCE_START:
                {
                    float facing = 0.00f;
                    events.ScheduleEvent(EVENT_HYDROLANCE, TIMER_HYDROLANCE);
                    switch (hydrolancePhase)
                    {
                    case HYDROLANCE_BOTTOM:
                    {
                        std::list<Creature*> trigger;
                        me->GetCreatureListWithEntryInGrid(trigger, CREATURE_HYDROLANCE_BOTTOM_TRIGGER, 50.0f);
                        for (auto itr : trigger)
                            itr->CastSpell(itr, SPELL_HYDROLANCE_PRECAST, true);
                        facing = 1.23f;
                        break;
                    }
                    case HYDROLANCE_RIGHT:
                        for (int i = 0; i < 5; i++)
                            me->CastSpell(hydrolanceRightTrigger[i][0], hydrolanceRightTrigger[i][1], hydrolanceRightTrigger[i][2], SPELL_HYDROLANCE_PRECAST, true);
                        facing = 3.55f;
                        break;
                    case HYDROLANCE_LEFT:
                        for (int i = 0; i < 5; i++)
                            me->CastSpell(hydrolanceLeftTrigger[i][0], hydrolanceLeftTrigger[i][1], hydrolanceLeftTrigger[i][2], SPELL_HYDROLANCE_PRECAST, true);
                        facing = 5.25f;
                        break;
                    }
                    me->CastSpell(me, SPELL_HYDROLANCE_VISUAL, false);
                    me->UpdatePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), facing);
                    me->SetFacingTo(facing);
                    break;
                }
                case EVENT_HYDROLANCE:
                {
                    switch (hydrolancePhase)
                    {
                    case HYDROLANCE_BOTTOM:
                    {
                        std::list<Creature*> trigger;
                        me->GetCreatureListWithEntryInGrid(trigger, CREATURE_HYDROLANCE_BOTTOM_TRIGGER, 50.0f);
                        for (auto itr : trigger)
                            itr->CastSpell(itr->GetPositionX(), itr->GetPositionY(), itr->GetPositionZ(), SPELL_HYDROLANCE_DMG_BOTTOM, true);
                        break;
                    }
                    case HYDROLANCE_RIGHT:
                        for (int i = 0; i < 5; i++)
                            me->CastSpell(hydrolanceRightTrigger[i][0], hydrolanceRightTrigger[i][1], hydrolanceRightTrigger[i][2], SPELL_HYDROLANCE_DMG, true);
                        break;
                    case HYDROLANCE_LEFT:
                        for (int i = 0; i < 5; i++)
                            me->CastSpell(hydrolanceLeftTrigger[i][0], hydrolanceLeftTrigger[i][1], hydrolanceLeftTrigger[i][2], SPELL_HYDROLANCE_DMG, true);
                        break;
                    }
                    if (hydrolancePhase == HYDROLANCE_RIGHT)
                        hydrolancePhase = HYDROLANCE_BOTTOM;
                    else
                        hydrolancePhase++;
                    events.ScheduleEvent(EVENT_HYDROLANCE_START, TIMER_HYDROLANCE_START);
                    break;
                }
                case EVENT_SWITCH_PHASE_TWO:
                {
                    me->RemoveAurasDueToSpell(SPELL_WATER_BUBBLE);
                    float facing = me->GetOrientation();
                    facing += 3.14f / 48.0f;
                    if (facing > 3.14f * 2.0f)
                        facing -= 3.14f * 2.0f;
                    //me->UpdatePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), facing);
                    me->SetOrientation(facing);
                    me->SetFacingTo(facing);
                    me->CastSpell(me, SPELL_WASH_AWAY, true);
                    //events.ScheduleEvent(EVENT_WASH_AWAY, TIMER_WASH_AWAY);
                    break;
                }
                case EVENT_WASH_AWAY:
                {
                    float facing = me->GetOrientation();
                    facing += 3.14f / 48.0f;
                    if (facing > 3.14f * 2.0f)
                        facing -= 3.14f * 2.0f;
                    me->SetOrientation(facing);
                    me->SetFacingTo(facing);
                    events.ScheduleEvent(EVENT_WASH_AWAY, TIMER_WASH_AWAY);
                    break;
                }
                }
            }
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);

            if (summon->GetEntry() == CREATURE_FOUTAIN_TRIGGER)
                summon->SetInCombatWithZone();
            if (summon->GetEntry() == NPC_CORRUPTED_LIVING_WATER)
                summon->SetInCombatWithZone();
        }
    };
};

class mob_corrupt_living_water : public CreatureScript
{
public:
    mob_corrupt_living_water() : CreatureScript("mob_corrupt_living_water") { }
    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_corrupt_living_water_AI(creature);
    }
    struct mob_corrupt_living_water_AI : public ScriptedAI
    {
        mob_corrupt_living_water_AI(Creature* creature) : ScriptedAI(creature)
        {
        }

        void Reset()
        {
        }

        void EnterCombat(Unit*)
        {
            Talk(TALK_WATER);
        }

        void JustDied(Unit* /*killer*/)
        {
            for (int i = 0; i < 3; i++)
            {
                Position pos = me->GetRandomNearPosition(4.0f);
                Creature* droplet = me->SummonCreature(CREATURE_CORRUPT_DROPLET, pos, TEMPSUMMON_TIMED_DESPAWN, 20000);
                if (!droplet)
                    continue;
                if (Unit* unit = SelectTarget(SELECT_TARGET_RANDOM))
                {
                    droplet->Attack(unit, true);
                    droplet->DespawnOrUnsummon(2000);
                }
            }
            me->CastSpell(me, SPELL_SHA_RESIDUE, true);
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;
            DoMeleeAttackIfReady();
        }

        void JustSummoed(Creature* summon)
        {
            if (summon->GetEntry() == CREATURE_CORRUPT_DROPLET)
            {
                summon->SetInCombatWithZone();
                summon->DespawnOrUnsummon(2000);
            }
        }
    };
};

class triggerCheck
{
public:
    explicit triggerCheck(Creature const* creature) : _me(creature) { }
    bool operator()(Unit* u)
    {
        if (u->GetExactDist2d(_me) > 1.0f)
            return false;
        return true;
    }

private:
    Creature const* _me;
    triggerCheck(triggerCheck const&);
};

// Corrupted Waters - 115167
class bfa_spell_wise_mari_corrupted_waters : public SpellScriptLoader
{
public:
    bfa_spell_wise_mari_corrupted_waters() : SpellScriptLoader("bfa_spell_wise_mari_corrupted_waters") { }

    class bfa_spell_wise_mari_corrupted_waters_SpellScript : public SpellScript
    {
        PrepareSpellScript(bfa_spell_wise_mari_corrupted_waters_SpellScript)

            void FilterTargets(std::list<WorldObject*>& unitList)
        {
            //correct way would be checking !target->IsInWater() but VMAP doesn't work for this zone

            std::list<WorldObject*> newTargets;

            for (auto it = unitList.begin(); it != unitList.end(); ++it)
            {
                Unit* target = (*it)->ToUnit();
                std::list<Creature*> creatureList;
                target->GetCreatureListWithEntryInGrid(creatureList, NPC_CORRUPTED_WATER_TRIGGER, 1.0f);
                bool triggerFound = false;
                for (auto trigger : creatureList)
                    if (target->GetExactDist2d(trigger) <= 1.0f)
                    {
                        triggerFound = true;
                        break;
                    }
                if (triggerFound)
                    newTargets.push_back(target);
            }
            unitList.clear();
            unitList.insert(unitList.begin(), newTargets.begin(), newTargets.end());
        }

        void Register()
        {
            for (int i = EFFECT_0; i <= EFFECT_2; i++)
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(bfa_spell_wise_mari_corrupted_waters_SpellScript::FilterTargets, i, TARGET_UNIT_SRC_AREA_ENTRY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new bfa_spell_wise_mari_corrupted_waters_SpellScript();
    }
};

void AddSC_boss_wise_mari()
{
    new boss_wase_mari();
    new mob_corrupt_living_water();
    new bfa_spell_wise_mari_corrupted_waters;
}
