#include "ScriptPCH.h"
#include "ScriptedCreature.h"

enum Spells
{
    //LIU FLAMEHEART Event:
    SPELL_POSSESSED_BY_SHA = 110164, //On Spawn
    SPELL_DUST_VISUAL = 110518, //On Spawn
    SPELL_SERPENT_DANCE_TRIGGER = 106878,
    SPELL_SERPENT_STRIKE = 106823, //2 24 24 - 5 25 38 419912664 419923538 every 10 seconds
    SPELL_SERPENT_WAVE_SUMMON_CONTROLLER = 106982, // 1 or 2 seconds after serpent strike
    SPELL_SERPENT_KICK = 106856, // 419913710 419924520, every 10 seconds
    SPELL_JADE_ESSENCE = 106797, //AddAura on phase 2
    SPELL_JADE_SERPENT_DANCE_TRIGGER = 106882,
    SPELL_JADE_SERPENT_STRIKE = 106841,
    SPELL_JADE_SERPENT_WAVE_SUMMON_CONTROLLER = 106995,
    SPELL_JADE_SERPENT_KICK = 106864,
    SPELL_DEATH_SIPHON = 116783,
    SPELL_SUMMON_JADE_SERPENT = 106895,
    SPELL_JADE_SOUL = 106909,

    SPELL_JADE_SERPENT_HEALTH = 106924,
    SPELL_SHARED_HEALTH = 114711,
    SPELL_TRANSFORM_VISUAL = 74620, //When the dragon is dead, cast this and remove the possess aura.
    SPELL_JADE_FIRE = 107045,
    SPELL_JADE_FIRE_MISSILE = 107098,
    SPELL_JADE_FIRE_SUMMON = 107103,
    SPELL_CLEANSING_BREATH = 132387,

    SPELL_JADE_SERPENT_WAVE_DMG = 118540,

    SPELL_SERPENT_WAVE_SUMMON = 118551,
    SPELL_SERPENT_WAVE_SUMMON_N = 118549,
    SPELL_SERPENT_WAVE_SUMMON_E = 106930,
    SPELL_SERPENT_WAVE_SUMMON_S = 106928,
    SPELL_SERPENT_WAVE_SUMMON_W = 106931,

    SPELL_JADE_SERPENT_WAVE_VISUAL = 107002,
    SPELL_SERPENT_WAVE_VISUAL = 106939,
    SPELL_SERPENT_WAVE_PERIODIC = 106959,
    SPELL_JADE_SERPENT_WAVE_PERIODIC = 107054,
    SPELL_JADE_SERPENT_WAVE_STALKER_PERIODIC = 106879,
    SPELL_JADE_SERPENT_WAVE = 119508,
    SPELL_SERPENT_WAVE = 106938,

    SPELL_JADE_FIRE_PERIODIC = 107108,
};

enum Phases
{
    PHASE_ONE = 1,
    PHASE_TWO = 2,
    PHASE_THREE = 3,
};

enum Events
{
    EVENT_SERPENT_STRIKE = 1,
    EVENT_SERPENT_KICK = 2,
    EVENT_SERPENT_WAVE = 3,

    EVENT_JADE_SERPENT_STRIKE = 4,
    EVENT_JADE_SERPENT_KICK = 5,
    EVENT_JADE_SERPENT_WAVE = 6,

    EVENT_SUMMON_YULON = 7,
    EVENT_JADE_FIRE = 8,
    EVENT_JADE_TARGET = 9,
    EVENT_ADD_AURA = 10,
    EVENT_SUMMON_MOVE = 11,
    EVENT_REACH_TRIGGER = 12,
};

enum Texts
{
    TALK_AGGRO = 1,
    TALK_PHASE_TWO = 2,
    TALK_PHASE_THREE = 3,
    TALK_DEATH_LIU = 4,
    TALK_DEATH_YULON = 5,
};

enum Creatures
{
    NPC_TRIGGER_JADE_FIRE_PERIODIC = 56893,
    NPC_LIU_FLAMEHEART = 56732,
    NPC_WAVE_CONTROLER = 56789,
    NPC_YULON = 56762,
    NPC_TRIGGER_TARGET = 999564, // local 999561
    NPC_MINION_OF_DOUBT = 57109,
};

class bfa_boss_yu_lon : public CreatureScript
{
public:
    bfa_boss_yu_lon() : CreatureScript("bfa_boss_yu_lon") { }

    struct bfa_boss_yu_lon_AI : public ScriptedAI
    {
        bfa_boss_yu_lon_AI(Creature* creature) : ScriptedAI(creature), summons(me)
        {
        }

        EventMap events;
        SummonList summons;
        bool texts;

        void EnterCombat(Unit*)
        {
            events.RescheduleEvent(EVENT_JADE_FIRE, 10000);
            events.RescheduleEvent(EVENT_JADE_TARGET, 500);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void JustDied(Unit*)
        {
            summons.DespawnAll();
            if (Creature* liu = me->FindNearestCreature(NPC_LIU_FLAMEHEART, 100.0f))
                me->DealDamage(liu, 10000000);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void Reset()
        {
            summons.DespawnAll();
            texts = false;
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void DamageTaken(Unit* who, uint32& damage)
        {
            if (me->HealthBelowPct(2) && !texts)
            {
                texts = true;
                Talk(TALK_DEATH_YULON);
                me->DespawnOrUnsummon(1000);
                if (Creature* liu = me->FindNearestCreature(NPC_LIU_FLAMEHEART, 100.0f))
                    me->DealDamage(liu, 10000000);
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
                case EVENT_JADE_FIRE:
                    if (Unit* player = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    {
                        me->CastSpell(player, SPELL_JADE_FIRE, true);
                        me->CastSpell(player, SPELL_JADE_FIRE_MISSILE, true);
                        me->CastSpell(player, SPELL_JADE_FIRE_SUMMON, true);
                    }
                    events.RescheduleEvent(EVENT_JADE_FIRE, 10000);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);

            if (summon->GetEntry() == NPC_TRIGGER_JADE_FIRE_PERIODIC)
                summon->DespawnOrUnsummon(22000);
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_boss_yu_lon_AI(creature);
    }
};

class bfa_boss_liu_flameheart : public CreatureScript
{
public:
    bfa_boss_liu_flameheart() : CreatureScript("bfa_boss_liu_flameheart") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_boss_liu_flameheart_AI(creature);
    }

    struct bfa_boss_liu_flameheart_AI : public ScriptedAI
    {
        bfa_boss_liu_flameheart_AI(Creature* creature) : ScriptedAI(creature), summons(me)
        {
        }

        EventMap events;
        SummonList summons;
        bool phase2;
        bool yulon;
        uint8 killcount;

        void SummonedCreatureDies(Creature* summon, Unit* /*killer*/)
        {
            switch (summon->GetEntry())
            {
            case NPC_MINION_OF_DOUBT:
                ++killcount;

                if (killcount == 3)
                {
                    me->NearTeleportTo(929.55f, -2560.75f, 180.06f, 1.23f, false);
                }
            }
        }

        void Reset()
        {
            events.RescheduleEvent(EVENT_SERPENT_STRIKE, 10000, 0, PHASE_ONE);
            events.RescheduleEvent(EVENT_SERPENT_WAVE, 13000, 0, PHASE_ONE);
            phase2 = false;
            yulon = false;
            me->SetFullHealth();
            if (Creature* yulon = me->FindNearestCreature(NPC_YULON, 1000.0f))
                yulon->DespawnOrUnsummon(1000);
            me->ClearUnitState(UNIT_STATE_ROOT);
            me->RemoveUnitFlag(UNIT_FLAG_NOT_SELECTABLE);
            summons.DespawnAll();
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            killcount = 0;
            me->SummonCreature(NPC_MINION_OF_DOUBT, 923.47f, -2578.48f, 179.82f, 1.43f, TEMPSUMMON_CORPSE_DESPAWN);
            me->SummonCreature(NPC_MINION_OF_DOUBT, 951.59f, -2548.52f, 179.82f, 5.97f, TEMPSUMMON_CORPSE_DESPAWN);
            me->SummonCreature(NPC_MINION_OF_DOUBT, 917.33f, -2538.43f, 179.82f, 5.71f, TEMPSUMMON_CORPSE_DESPAWN);
        }

        void JustDied(Unit*)
        {
            summons.DespawnAll();
            Talk(TALK_DEATH_LIU);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            me->RemoveUnitFlag(UNIT_FLAG_NOT_SELECTABLE);
        }

        void EnterCombat(Unit*)
        {
            events.SetPhase(PHASE_ONE);
            events.RescheduleEvent(EVENT_SERPENT_STRIKE, 10000, 0, PHASE_ONE);
            events.RescheduleEvent(EVENT_SERPENT_WAVE, 13000, 0, PHASE_ONE);
            Talk(TALK_AGGRO);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void DamageTaken(Unit* who, uint32& damage)
        {
            if (me->HealthBelowPct(70) && !phase2)
            {
                phase2 = true;
                events.SetPhase(PHASE_TWO);
                events.RescheduleEvent(EVENT_JADE_SERPENT_STRIKE, 10000, 0, PHASE_TWO);
                events.RescheduleEvent(EVENT_JADE_SERPENT_WAVE, 13000, 0, PHASE_TWO);
                me->AddAura(SPELL_JADE_ESSENCE, me);
                Talk(TALK_PHASE_TWO);
            }

            if (me->HealthBelowPct(30) && !yulon)
            {
                events.SetPhase(PHASE_THREE);
                yulon = true;
                DoCast(SPELL_SUMMON_JADE_SERPENT);
                //me->GetMotionMaster()->MoveTargetedHome();
                me->AddUnitState(UNIT_STATE_ROOT);
                Talk(TALK_PHASE_THREE);
                me->SetUnitFlags(UNIT_FLAG_NOT_SELECTABLE);
                me->NearTeleportTo(929.55f, -2560.75f, 180.06f, 1.23f, false);
                me->SetReactState(REACT_PASSIVE);
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SERPENT_STRIKE: // visual is handled on creature_template_addon
                    me->CastSpell(me->GetVictim(), SPELL_SERPENT_STRIKE, true);
                    events.RescheduleEvent(EVENT_SERPENT_STRIKE, 10000, 0, PHASE_ONE);
                    break;
                case EVENT_SERPENT_WAVE:
                    /*DoCast(SPELL_SERPENT_WAVE_SUMMON);
                    if (Creature* wave = me->FindNearestCreature(NPC_WAVE_CONTROLER, 100.0f))
                    me->AddAura(SPELL_SERPENT_WAVE_PERIODIC, wave);*/
                {
                    TempSummon* wave = nullptr;
                    wave = me->SummonCreature(NPC_WAVE_CONTROLER, me->GetPositionX() - 5.0f, me->GetPositionY(), me->GetPositionZ(), TEMPSUMMON_CORPSE_DESPAWN);
                    {
                        wave->GetMotionMaster()->MovePoint(0, me->GetPositionX() - 50.0f, me->GetPositionY(), me->GetPositionZ());
                    }

                    wave = me->SummonCreature(NPC_WAVE_CONTROLER, me->GetPositionX() + 5.0f, me->GetPositionY(), me->GetPositionZ(), TEMPSUMMON_CORPSE_DESPAWN);
                    {
                        wave->GetMotionMaster()->MovePoint(0, me->GetPositionX() + 50.0f, me->GetPositionY(), me->GetPositionZ());
                    }

                    wave = me->SummonCreature(NPC_WAVE_CONTROLER, me->GetPositionX(), me->GetPositionY() + 5.0f, me->GetPositionZ(), TEMPSUMMON_CORPSE_DESPAWN);
                    {
                        wave->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY() + 50.0f, me->GetPositionZ());
                    }

                    wave = me->SummonCreature(NPC_WAVE_CONTROLER, me->GetPositionX(), me->GetPositionY() - 5.0f, me->GetPositionZ(), TEMPSUMMON_CORPSE_DESPAWN);
                    {
                        wave->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY() - 50.0f, me->GetPositionZ());
                    }
                }
                events.RescheduleEvent(EVENT_SERPENT_WAVE, 13000, 0, PHASE_ONE);
                break;
                case EVENT_JADE_SERPENT_STRIKE:
                    me->CastSpell(me->GetVictim(), SPELL_JADE_SERPENT_STRIKE, true);
                    me->CastSpell(me->GetVictim(), SPELL_JADE_SERPENT_KICK, true);
                    events.RescheduleEvent(EVENT_JADE_SERPENT_STRIKE, 10000, 0, PHASE_TWO);
                    break;
                case EVENT_JADE_SERPENT_WAVE:
                    /*DoCast(SPELL_SERPENT_WAVE_SUMMON);
                    if (Creature* wave = me->FindNearestCreature(NPC_WAVE_CONTROLER, 100.0f))
                    me->AddAura(SPELL_JADE_SERPENT_WAVE_PERIODIC, wave);*/
                {
                    TempSummon* wave = nullptr;
                    wave = me->SummonCreature(NPC_WAVE_CONTROLER, me->GetPositionX() - 5.0f, me->GetPositionY(), me->GetPositionZ(), TEMPSUMMON_CORPSE_DESPAWN);
                    {
                        wave->GetMotionMaster()->MovePoint(0, me->GetPositionX() - 50.0f, me->GetPositionY(), me->GetPositionZ());
                    }

                    wave = me->SummonCreature(NPC_WAVE_CONTROLER, me->GetPositionX() + 5.0f, me->GetPositionY(), me->GetPositionZ(), TEMPSUMMON_CORPSE_DESPAWN);
                    {
                        wave->GetMotionMaster()->MovePoint(0, me->GetPositionX() + 50.0f, me->GetPositionY(), me->GetPositionZ());
                    }

                    wave = me->SummonCreature(NPC_WAVE_CONTROLER, me->GetPositionX(), me->GetPositionY() + 5.0f, me->GetPositionZ(), TEMPSUMMON_CORPSE_DESPAWN);
                    {
                        wave->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY() + 50.0f, me->GetPositionZ());
                    }

                    wave = me->SummonCreature(NPC_WAVE_CONTROLER, me->GetPositionX(), me->GetPositionY() - 5.0f, me->GetPositionZ(), TEMPSUMMON_CORPSE_DESPAWN);
                    {
                        wave->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY() - 50.0f, me->GetPositionZ());
                    }
                }
                events.RescheduleEvent(EVENT_JADE_SERPENT_WAVE, 13000, 0, PHASE_TWO);
                }
            }
            DoMeleeAttackIfReady();
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);

            if (summon->GetEntry() == NPC_WAVE_CONTROLER)
            {
                me->AddAura(SPELL_SERPENT_WAVE_VISUAL, summon);
            }

            if (me->HasAura(SPELL_JADE_ESSENCE))
            {
                if (summon->GetEntry() == NPC_WAVE_CONTROLER)
                {
                    summon->RemoveAura(SPELL_SERPENT_WAVE_VISUAL);
                    me->AddAura(SPELL_JADE_SERPENT_WAVE_VISUAL, summon);
                    summon->SetInCombatWithZone();
                }
            }

            if (summon->GetEntry() == NPC_YULON)
                summon->SetInCombatWithZone();
            if (summon->GetEntry() == NPC_TRIGGER_JADE_FIRE_PERIODIC)
            {
                summon->SetReactState(REACT_PASSIVE);
                summon->SetInCombatWithZone();
            }
            //summon->DespawnOrUnsummon(10000);
            if (summon->GetEntry() == NPC_MINION_OF_DOUBT)
                summon->SetFaction(14);
        }
    };
};

class bfa_mob_movement_controler : public CreatureScript
{
public:
    bfa_mob_movement_controler() : CreatureScript("bfa_mob_movement_controler") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_mob_movement_controler_AI(creature);
    }

    struct bfa_mob_movement_controler_AI : public ScriptedAI
    {
        bfa_mob_movement_controler_AI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetReactState(REACT_PASSIVE);
            events.Reset();
            events.ScheduleEvent(EVENT_SUMMON_MOVE, 100);
            me->DespawnOrUnsummon(10000);
        }

        float orientation;
        float x, y, z;
        EventMap events;

        void Reset()
        {
            events.Reset();
            events.ScheduleEvent(EVENT_SUMMON_MOVE, 100);
            me->DespawnOrUnsummon(10000);
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SUMMON_MOVE:
                    if (me->HasAura(SPELL_JADE_SERPENT_WAVE_VISUAL))
                    {
                        //me->CastSpell(me, SPELL_JADE_FIRE_PERIODIC);
                        me->SummonCreature(NPC_TRIGGER_JADE_FIRE_PERIODIC, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 22000);
                    }
                    events.ScheduleEvent(EVENT_SUMMON_MOVE, 1000);
                    break;
                }
            }
        }
    };
};

void AddSC_boss_liu_flameheat()
{
    new bfa_boss_yu_lon();
    new bfa_boss_liu_flameheart();
    new bfa_mob_movement_controler();
}
