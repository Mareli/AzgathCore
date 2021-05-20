#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum eSpells
{
    SPELL_WITHER_WILL = 106736,
    SPELL_TOUCH_OF_NOTHINGNESS = 106113,
    SPELL_FIGMENT_OF_DOUBT = 106937,
    SPELL_BOUNDS_OF_REALITY = 131498,
    SPELL_BOUNDS_OF_REALITY_2 = 117665, //pastram
    SPELL_CHI_WAVE = 132464,
    SPELL_CHI_WAVE_2 = 132466,

    SPELL_FIGMENT_OF_DOUBT_2 = 106935,
    SPELL_FIGMENT_OF_DOUBT_3 = 106936, // pastram
    SPELL_COPY_WEAPON = 41054,
    SPELL_COPY_WEAPON_2 = 41055,
    SPELL_GROW = 104921,
    SPELL_DROWNED_STATE = 117509,
    SPELL_DRAW_DOUBT = 106290,
    SPELL_KNOCK_BACK_SELF = 117525,
    SPELL_GATHERING_DOUBT = 117570, // pastram
    SPELL_GATHERING_DOUBT_2 = 117571,
    SPELL_INVISIBILITY_DETECTION = 126839,
    SPELL_WEAKENED_BLOWS = 115798,
    SPELL_RELEASE_DOUBT = 106112,
    SPELL_SCREEN_PHASE = 106290,
    SPELL_CLONE_PLAYER = 45204,
    SPELL_CLONE_WEAPON = 41055,

    SPELL_PURIFIED_WATER = 118714,
};

enum eEvents
{
    EVENT_WITHER_WILL = 1,
    EVENT_TOUCH_OF_NOTHINGNESS = 2,
    EVENT_BOUNDS_OF_REALITY = 3,

    EVENT_GATHERING_DOUBT = 4,

    EVENT_SPELL_PHANTOM_STRIKE = 5,
    EVENT_SPELL_ARMOR_BUFF = 6,
    EVENT_SPELL_FURY = 7,
    EVENT_SANCTUARY = 8,
    EVENT_SIPHON_ESSENCE = 9,
    EVENT_STUN = 10,
    EVENT_BLADE_SONG = 11,
    EVENT_UNTAMED_FURY = 12,
    EVENT_GLIMPSE_OF_MADNESS = 13,
    EVENT_UPDATE_ENERGY = 14,
    EVENT_EXPLODE = 15,
    EVENT_PHASE_TWO = 16,
    EVENT_SEARCH_FIGMENTS = 17,
    EVENT_SCREEN = 18,
    EVENT_COPY_PLAYER = 19,
};

enum Creatures
{
    NPC_SHA_OF_DOUBT = 56439,
    NPC_FIGMENTS_OF_DOUBT = 56792,
};

enum Phases
{
    PHASE_ONE = 1,
};

enum Talks
{
    TALK_AGGRO = 1,
    TALK_FIGMENTS = 2,
    TALK_DEATH = 3,
    TALK_WIPE = 4,
};

class bfa_boss_sha_of_doubt : public CreatureScript
{
public:
    bfa_boss_sha_of_doubt() : CreatureScript("bfa_boss_sha_of_doubt") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_boss_sha_of_doubt_AI(creature);
    }

    struct bfa_boss_sha_of_doubt_AI : public ScriptedAI
    {
        bfa_boss_sha_of_doubt_AI(Creature* creature) : ScriptedAI(creature), summons(me)
        {
        }

        EventMap events;
        SummonList summons;

        void Reset()
        {
            summons.DespawnAll();
            RemoveNothingness();
            events.Reset();
            Talk(TALK_WIPE);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void JustDied(Unit*)
        {
            summons.DespawnAll();
            RemoveNothingness();
            Talk(TALK_DEATH);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void EnterCombat(Unit*)
        {
            events.ScheduleEvent(EVENT_WITHER_WILL, 5000, 0, PHASE_ONE);
            events.ScheduleEvent(EVENT_TOUCH_OF_NOTHINGNESS, 13000, 0, PHASE_ONE);
            events.RescheduleEvent(EVENT_BOUNDS_OF_REALITY, 45000, 0, 0);
            events.RescheduleEvent(EVENT_SEARCH_FIGMENTS, 1000, 0, 0);
            events.RescheduleEvent(EVENT_PHASE_TWO, 500, 0, 0);
            events.SetPhase(PHASE_ONE);
            Talk(TALK_AGGRO);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);

            if (summon->GetEntry() == NPC_FIGMENTS_OF_DOUBT)
            {
                summon->SetInCombatWithZone();
                //summon->CastSpell(summon, SPELL_CLONE_PLAYER, true);
            }
            //me->AddAura(SPELL_GATHERING_DOUBT, summon);
        }

        void RemoveNothingness()
        {
            Map::PlayerList const& PlayerList = me->GetMap()->GetPlayers();
            if (!PlayerList.isEmpty())
                for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                    i->GetSource()->RemoveAura(SPELL_TOUCH_OF_NOTHINGNESS);
        }


        void CastWitherWill()
        {
            std::list<Unit*> targets;
            SelectTargetList(targets, 2, SELECT_TARGET_RANDOM, 100.0f, true);
            if (!targets.empty())
                for (std::list<Unit*>::iterator itr = targets.begin(); itr != targets.end(); ++itr)
                    DoCast(*itr, SPELL_WITHER_WILL);
        }

        void CastFigments()
        {
            std::list<Unit*> targets;
            SelectTargetList(targets, 5, SELECT_TARGET_RANDOM, 100.0f, true);
            if (!targets.empty())
                for (std::list<Unit*>::iterator itr = targets.begin(); itr != targets.end(); ++itr)
                    DoCast(SPELL_FIGMENT_OF_DOUBT_3);
        }

        void RemoveScreenPhase()
        {
            Map::PlayerList const& PlayerList = me->GetMap()->GetPlayers();
            if (!PlayerList.isEmpty())
                for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                    i->GetSource()->RemoveAura(SPELL_SCREEN_PHASE);
        }

        void FigmentsDead()
        {
            std::list<Creature*> creatures;
            GetCreatureListWithEntryInGrid(creatures, me, NPC_FIGMENTS_OF_DOUBT, 1000.0f);
            if (creatures.empty())
                return;
            for (std::list<Creature*>::iterator iter = creatures.begin(); iter != creatures.end(); ++iter)
                me->RemoveAura(SPELL_BOUNDS_OF_REALITY_2);
        }

        void SummonPosition()
        {
            Map::PlayerList const& players = me->GetMap()->GetPlayers();
            if (!players.isEmpty())
                for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                {
                    Player* player = itr->GetSource();
                    Creature* npc = me->SummonCreature(NPC_FIGMENTS_OF_DOUBT, player->GetPositionX(), player->GetPositionY(), player->GetPositionZ(), 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
                    npc->AddThreat(player, 99999999.0f);
                    npc->AI()->AttackStart(player);
                }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_WITHER_WILL:
                    //CastWitherWill();
                    DoCast(SPELL_WITHER_WILL);
                    events.RescheduleEvent(EVENT_WITHER_WILL, 5000, 0, PHASE_ONE);
                    break;
                case EVENT_TOUCH_OF_NOTHINGNESS:
                    if (Unit* player = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        me->CastSpell(player, SPELL_TOUCH_OF_NOTHINGNESS, true);
                    events.RescheduleEvent(EVENT_TOUCH_OF_NOTHINGNESS, 13000, 0, PHASE_ONE);
                    break;
                case EVENT_BOUNDS_OF_REALITY:
                    //me->CastSpell(me, SPELL_BOUNDS_OF_REALITY_2, true);
                    me->AddAura(SPELL_BOUNDS_OF_REALITY_2, me);
                    //CastFigments();
                    Talk(TALK_FIGMENTS);
                    SummonPosition();
                    events.RescheduleEvent(EVENT_BOUNDS_OF_REALITY, 60000, 0, 0);
                    break;
                case EVENT_PHASE_TWO:
                    if (me->HasAura(SPELL_BOUNDS_OF_REALITY_2))
                    {
                        events.CancelEvent(EVENT_TOUCH_OF_NOTHINGNESS);
                        events.CancelEvent(EVENT_WITHER_WILL);
                    }
                    else
                    {
                        events.ScheduleEvent(EVENT_WITHER_WILL, 5000, 0, PHASE_ONE);
                        events.ScheduleEvent(EVENT_TOUCH_OF_NOTHINGNESS, 13000, 0, PHASE_ONE);
                        events.SetPhase(PHASE_ONE);
                    }
                    events.RescheduleEvent(EVENT_PHASE_TWO, 500, 0, 0);
                    break;
                case EVENT_SEARCH_FIGMENTS:
                    if (Creature* figments = me->FindNearestCreature(NPC_FIGMENTS_OF_DOUBT, 1000.0f, true))
                        me->AddAura(SPELL_BOUNDS_OF_REALITY_2, me);
                    else
                    {
                        me->RemoveAura(SPELL_BOUNDS_OF_REALITY_2);
                        RemoveScreenPhase();
                    }
                    if (!me->HasAura(SPELL_BOUNDS_OF_REALITY_2))
                    {
                        summons.DespawnAll();
                        RemoveScreenPhase();
                    }
                    events.RescheduleEvent(EVENT_SEARCH_FIGMENTS, 1000, 0, 0);
                    break;
                }
            }
            if (!me->HasAura(SPELL_BOUNDS_OF_REALITY_2))
                DoMeleeAttackIfReady();
        }
    };
};

class bfa_npc_figments_of_doubt : public CreatureScript
{
public:
    bfa_npc_figments_of_doubt() : CreatureScript("bfa_npc_figments_of_doubt") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_npc_figments_of_doubt_AI(creature);
    }

    struct bfa_npc_figments_of_doubt_AI : public ScriptedAI
    {
        bfa_npc_figments_of_doubt_AI(Creature* creature) : ScriptedAI(creature)
        {
        }

        EventMap events;
        bool exploded;

        void EnterCombat(Unit*)
        {
            events.ScheduleEvent(EVENT_UPDATE_ENERGY, 3000);
            events.ScheduleEvent(EVENT_EXPLODE, 500);
            events.ScheduleEvent(EVENT_SCREEN, 100);
            me->SetPowerType(POWER_ENERGY);
            me->SetMaxPower(POWER_ENERGY, 100);
            events.ScheduleEvent(EVENT_COPY_PLAYER, 1000);
            exploded = false;
        }

        void JustDied(Unit*)
        {
            me->DespawnOrUnsummon(1000);
        }

        void CopyPlayer()
        {
            Map::PlayerList const& players = me->GetMap()->GetPlayers();
            if (!players.isEmpty())
                for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                {
                    Player* player = itr->GetSource();

                    player->CastSpell(player, SPELL_CLONE_PLAYER);
                }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (!me->HasAura(SPELL_CLONE_PLAYER))
                if (Unit* target = me->GetVictim())
                    target->CastSpell(me, SPELL_CLONE_PLAYER, true);

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SCREEN:
                    if (Unit* players = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        me->AddAura(SPELL_SCREEN_PHASE, players);
                    events.ScheduleEvent(EVENT_SCREEN, 100);
                    break;
                case EVENT_UPDATE_ENERGY:
                    me->SetPower(POWER_ENERGY, me->GetPower(POWER_ENERGY) + 5);
                    events.ScheduleEvent(EVENT_UPDATE_ENERGY, 3000);
                    break;
                case EVENT_EXPLODE:
                    if (exploded)
                        break;
                    if (me->GetPower(POWER_ENERGY) == 100)
                    {
                        exploded = true;
                        DoCast(SPELL_RELEASE_DOUBT);
                        me->DespawnOrUnsummon(500);
                    }
                    events.ScheduleEvent(EVENT_EXPLODE, 400);
                    break;
                case EVENT_COPY_PLAYER:
                {
                    // me->CastSpell(me->GetVictim(), SPELL_CLONE_PLAYER, true);
                    // CopyPlayer();
                }
                break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_sha_of_doubt()
{
    new bfa_boss_sha_of_doubt();
    new bfa_npc_figments_of_doubt();
}
