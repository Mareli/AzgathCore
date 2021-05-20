#include "ScriptPCH.h"
#include "ScriptedCreature.h"

#define EVENT_LOREWALKER_STONESTEP_SUNS 0
#define EVENT_LOREWALKER_STONESTEP_TRIAL 1

enum Spells
{
    SPELL_SUNFIRE_RAYS = 107223,
    SPELL_HAUNTING_GAZE = 114646,
    SPELL_HELLFIRE_ARROWS = 113017,
    SPELL_EXTRACT_SHA = 111764,

    SPELL_SHA_MOVE_SPELL = 111807,
    SPELL_ROOT_SELF = 106822,
    SPELL_SUN_VISUAL = 107349,

    SPELL_ROOT_SUN = 93960,
    SPELL_ROOT_TRIAL_OF_YAUNGOL = 106649,

    SPELL_AGONY = 114571,
    SPELL_INTENSITY = 113315,
    SPELL_INTENSITY_TRIGGERED = 113316,
    SPELL_DISSIPATION = 113379,
    SPELL_ULTIMATE_POWER = 113309,
};

enum Events
{
    EVENT_SUNFIRE_RAYS = 1,
    EVENT_HAUNTING_GAZE = 2,
    EVENT_HELLFIRE_ARROWS = 3,

    EVENT_TALK_ONE = 4,
    EVENT_TALK_TWO = 5,
    EVENT_TALK_THREE = 6,
    EVENT_TALK_FOUR = 7,

    EVENT_YELL = 8, // osong

    EVENT_TALK_SUN_ONE = 9,
    EVENT_TALK_SUN_TWO = 10,
    EVENT_TALK_SUN_THREE = 11,
    EVENT_TALK_SUN_FOUR = 12,

    EVENT_TALK_YAUNGOL_FOUR = 13,
    EVENT_TALK_YAUNGOL_ONE = 14,
    EVENT_TALK_YAUNGOL_TWO = 15,
    EVENT_TALK_YAUNGOL_THREE = 16,
    EVENT_TALK_YAUNGOL_FIVE = 17,
    EVENT_TALK_YAUNGOL_SIX = 18,

    EVENT_AGONY,
    EVENT_DONT_STACK,

};

enum Creatures
{
    NPC_ZAO = 58826,
    NPC_SUN = 56915, //69460
    NPC_SHA_ADD_SUN = 58856,
    NPC_SHA_ADD_MOVE_TO_NPC = 58865,

    NPC_LOREWALKER = 56843,
    NPC_SCROLL = 57080,
    NPC_OSONG = 56872,
    NPC_LOREWALKER_SUN = 999606, // LOCAL 999563
    NPC_LOREWALKER_YAUNGOL = 999605, // LOCAL 999564
};

enum Phases
{
    PHASE_ONE = 1,
    PHASE_TWO = 2,
};

enum Talks
{
    TALK_INTRO_ONE = 1,
    TALK_INTRO_TWO = 2,
    TALK_INTRO_THREE = 3,
    TALK_INTRO_FOUR = 4,

    TALK_OSONG = 1,

    TALK_ZAO_COMBAT = 1,
    TALK_ZAO_CORRUPTED = 2,

    TALK_SUN_ONE = 1,
    TALK_SUN_TWO = 2,
    TALK_SUN_THREE = 3,
    TALK_SUN_FOUR = 4,

    TALK_YAUNGOL_ONE = 1,
    TALK_YAUNGOL_TWO = 2,
    TALK_YAUNGOL_THREE = 3,
    TALK_YAUNGOL_FOUR = 4,
    TALK_YAUNGOL_FIVE = 5,
    TALK_YAUNGOL_SIX = 6,
};

#define TIMER_INTENSITY 2000
#define TIMER_DISSIPATION 2000

class bfa_boss_five_suns : CreatureScript
{
public:
    bfa_boss_five_suns() : CreatureScript("bfa_boss_five_suns") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_boss_five_sunsAI(creature);
    }

    struct bfa_boss_five_sunsAI : public ScriptedAI
    {
        bfa_boss_five_sunsAI(Creature* creature) : ScriptedAI(creature), summons(me)
        {
        }

        EventMap events;
        SummonList summons;
        uint8 killcount;

        void EnterCombat(Unit*)
        {
            events.RescheduleEvent(EVENT_SUNFIRE_RAYS, 5000);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void Reset()
        {
            events.RescheduleEvent(EVENT_SUNFIRE_RAYS, 5000);
            summons.DespawnAll();
            killcount = 0;
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void EnterEvadeMode(EvadeReason w)
        {
            // resummon scroll
            if (!me->FindNearestCreature(57080, 1000.0f))
                me->SummonCreature(57080, 846.19f, -2455.66f, 175.04f, 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
            if (Creature* creature = me->FindNearestCreature(NPC_LOREWALKER_SUN, 100.0f))
                creature->DespawnOrUnsummon();
            if (Creature* creature = me->FindNearestCreature(NPC_ZAO, 100.0f))
                creature->DespawnOrUnsummon();
            if (!me->FindNearestCreature(NPC_LOREWALKER, 100.0f))
                me->SummonCreature(NPC_LOREWALKER, 845.41f, -2457.49f, 174.96f, 1.19f, TEMPSUMMON_CORPSE_DESPAWN);
            std::list<Creature*> creatureList;
            me->GetCreatureListWithEntryInGrid(creatureList, 58856, 100.0f);
            for (auto creature : creatureList)
                creature->DespawnOrUnsummon();
            me->DespawnOrUnsummon();
        }

        void JustDied(Unit*)
        {
            DoCast(SPELL_EXTRACT_SHA);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            if (!UpdateVictim())
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SUNFIRE_RAYS:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        me->CastSpell(target, SPELL_SUNFIRE_RAYS, true);
                    events.RescheduleEvent(EVENT_SUNFIRE_RAYS, 5000);
                    break;
                }
            }
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);

            if (summon->GetEntry() == NPC_SHA_ADD_SUN)
                summon->SetInCombatWithZone();
        }
    };
};

class bfa_npc_haunting_sha : public CreatureScript
{
public:
    bfa_npc_haunting_sha() : CreatureScript("bfa_npc_haunting_sha") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_npc_haunting_shaAI(creature);
    }

    struct bfa_npc_haunting_shaAI : public ScriptedAI
    {
        bfa_npc_haunting_shaAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        EventMap events;

        void EnterCombat(Unit* unit)
        {
            events.ScheduleEvent(EVENT_HAUNTING_GAZE, 1000);
        }

        void JustDied(Unit*)
        {
            me->CastSpell(me, SPELL_SHA_MOVE_SPELL, true);
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            if (!UpdateVictim())
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_HAUNTING_GAZE:
                    me->CastSpell(me->GetVictim(), 114646, false);
                    events.ScheduleEvent(EVENT_HAUNTING_GAZE, 2000);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

class bfa_npc_zao : public CreatureScript
{
public:
    bfa_npc_zao() : CreatureScript("bfa_npc_zao") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_npc_zaoAI(creature);
    }

    struct bfa_npc_zaoAI : public ScriptedAI
    {
        bfa_npc_zaoAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        EventMap events;
        bool nextphase;
        bool damaged;

        void EnterCombat(Unit*)
        {
            events.SetPhase(PHASE_ONE);
            me->SetUnitFlags(UNIT_FLAG_NON_ATTACKABLE);
            Talk(TALK_ZAO_COMBAT);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void Reset()
        {
            nextphase = false;
            damaged = false;
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void JustDied(Unit*)
        {
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void DamageTaken(Unit* who, uint32& damage)
        {
            if (me->HealthBelowPct(99) && !nextphase)
            {
                nextphase = true;
                events.SetPhase(PHASE_TWO);
                events.ScheduleEvent(EVENT_HELLFIRE_ARROWS, 2000, 0, PHASE_TWO);
                me->RemoveUnitFlag(UNIT_FLAG_NON_ATTACKABLE);
            }

            if (me->HealthBelowPct(99) && !damaged)
            {
                damaged = true;
                me->RemoveUnitFlag(UNIT_FLAG_NON_ATTACKABLE);
                Talk(TALK_ZAO_CORRUPTED);
            }
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            if (!UpdateVictim())
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_HELLFIRE_ARROWS:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        me->CastSpell(target, SPELL_HELLFIRE_ARROWS, true);
                    events.ScheduleEvent(EVENT_HELLFIRE_ARROWS, 2000, 0, PHASE_TWO);
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

class bfa_npc_haunting_sha_move : public CreatureScript
{
public:
    bfa_npc_haunting_sha_move() : CreatureScript("bfa_npc_haunting_sha_move") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_npc_haunting_sha_moveAI(creature);
    }

    struct bfa_npc_haunting_sha_moveAI : public ScriptedAI
    {
        bfa_npc_haunting_sha_moveAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        EventMap events;

        void UpdateAI(uint32 diff)
        {
            if (Creature* trigger = me->FindNearestCreature(NPC_ZAO, 100.0f))
                me->GetMotionMaster()->MovePoint(0, trigger->GetPositionX(), trigger->GetPositionY(), trigger->GetPositionZ());
            if (Creature* zaosunseeker = me->FindNearestCreature(NPC_ZAO, 1.0f))
            {
                me->DealDamage(zaosunseeker, 60000);
                me->DisappearAndDie();
            }
        }
    };
};

class bfa_npc_corrupted_scroll : public CreatureScript
{
public:
    bfa_npc_corrupted_scroll() : CreatureScript("bfa_npc_corrupted_scroll") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_npc_corrupted_scrollAI(creature);
    }

    struct bfa_npc_corrupted_scrollAI : public ScriptedAI
    {
        bfa_npc_corrupted_scrollAI(Creature* creature) : ScriptedAI(creature)
        {
            me->AddAura(111452, me);
        }

        uint8 eventChoosen;

        void JustDied(Unit*)
        {
            me->CastSpell(me, 111393);
            eventChoosen = urand(EVENT_LOREWALKER_STONESTEP_SUNS, EVENT_LOREWALKER_STONESTEP_TRIAL);

            if (eventChoosen == EVENT_LOREWALKER_STONESTEP_SUNS)
            {
                me->SummonCreature(NPC_SUN, 836.632f, -2467.159f, 178.139f, TEMPSUMMON_CORPSE_DESPAWN)->AI()->DoZoneInCombat();
                me->SummonCreature(NPC_SUN, 830.067f, -2466.660f, 179.240f, TEMPSUMMON_CORPSE_DESPAWN)->AI()->DoZoneInCombat();
                me->SummonCreature(NPC_SUN, 850.361f, -2474.320f, 178.196f, TEMPSUMMON_CORPSE_DESPAWN)->AI()->DoZoneInCombat();
                me->SummonCreature(NPC_SUN, 845.263f, -2469.179f, 178.209f, TEMPSUMMON_CORPSE_DESPAWN)->AI()->DoZoneInCombat();
                me->SummonCreature(NPC_ZAO, 846.877f, -2449.110f, 175.044f, TEMPSUMMON_CORPSE_DESPAWN)->AI()->DoZoneInCombat();
                me->SummonCreature(NPC_LOREWALKER_SUN, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation(), TEMPSUMMON_CORPSE_DESPAWN);
                if (Creature* lorewalker = me->FindNearestCreature(NPC_LOREWALKER_SUN, 100.0f))
                {
                    lorewalker->GetMotionMaster()->MovePoint(0, 833.37f, -2493.53f, 179.90f);
                }
                if (Creature* walker = me->FindNearestCreature(NPC_LOREWALKER, 1000.0f))
                {
                    walker->DespawnOrUnsummon();
                }
            }
            if (eventChoosen == EVENT_LOREWALKER_STONESTEP_TRIAL)
            {
                me->SummonCreature(59051, 847.51f, -2470.35f, 174.96f, 1.25f, TEMPSUMMON_CORPSE_DESPAWN)->AI()->DoZoneInCombat(); // strife
                me->SummonCreature(59726, 837.20f, -2466.96f, 174.96f, 1.25f, TEMPSUMMON_CORPSE_DESPAWN)->AI()->DoZoneInCombat(); // perfil
                me->SummonCreature(NPC_OSONG, 847.46f, -2451.13f, 174.96f, 4.39f, TEMPSUMMON_CORPSE_DESPAWN);
                me->SummonCreature(NPC_LOREWALKER_YAUNGOL, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation(), TEMPSUMMON_CORPSE_DESPAWN);
                if (Creature* lorewalker = me->FindNearestCreature(NPC_LOREWALKER_YAUNGOL, 100.0f))
                {
                    lorewalker->GetMotionMaster()->MovePoint(0, 833.37f, -2493.53f, 179.90f);
                }
                if (Creature* walker = me->FindNearestCreature(NPC_LOREWALKER, 1000.0f))
                {
                    walker->DespawnOrUnsummon();
                }

                // TO DO: ADD TEXTS LA NPCS AIA CUSTOM SI SPAWN
            }
        }
    };
};

class bfa_npc_lorewalker_stonestep : public CreatureScript
{
public:
    bfa_npc_lorewalker_stonestep() : CreatureScript("bfa_npc_lorewalker_stonestep") { }

    struct  bfa_npc_lorewalker_stonestepAI : public ScriptedAI
    {
        bfa_npc_lorewalker_stonestepAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        bool talkevents;
        EventMap events;

        void Reset()
        {
            talkevents = false;
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (!talkevents && who->GetTypeId() == TYPEID_PLAYER)
            {
                talkevents = true;
                events.ScheduleEvent(EVENT_TALK_ONE, 1000);
                events.ScheduleEvent(EVENT_TALK_TWO, 6000);
                events.ScheduleEvent(EVENT_TALK_THREE, 11000);
                events.ScheduleEvent(EVENT_TALK_FOUR, 16000);
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (Creature* scroll = me->FindNearestCreature(NPC_SCROLL, 100.0f))
                me->Attack(scroll, true);

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_TALK_ONE:
                    Talk(TALK_INTRO_ONE);
                    break;
                case EVENT_TALK_TWO:
                    Talk(TALK_INTRO_TWO);
                    break;
                case EVENT_TALK_THREE:
                    Talk(TALK_INTRO_THREE);
                    break;
                case EVENT_TALK_FOUR:
                    Talk(TALK_INTRO_FOUR);
                    break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_npc_lorewalker_stonestepAI(creature);
    }
};

class bfa_npc_osong : public CreatureScript
{
public:
    bfa_npc_osong() : CreatureScript("bfa_npc_osong") { }

    struct  bfa_npc_osongAI : public ScriptedAI
    {
        bfa_npc_osongAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        EventMap events;
        bool osong;

        void Reset()
        {
            osong = false;
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (!osong && who->GetTypeId() == TYPEID_PLAYER)
            {
                osong = true;
                events.ScheduleEvent(EVENT_YELL, 1000);
            }
        }

        void UpdateAI(uint32 diff)
        {
            if (Creature* strife = me->FindNearestCreature(59051, 100.0f))
            {
                me->GetMotionMaster()->MovePoint(0, strife->GetPositionX(), strife->GetPositionY() + 3.0f, strife->GetPositionZ(), false);
                me->Attack(strife, true);
            }

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_YELL:
                    Talk(TALK_OSONG);
                    break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_npc_osongAI(creature);
    }
};

class bfa_npc_lorewalker_sun : public CreatureScript
{
public:
    bfa_npc_lorewalker_sun() : CreatureScript("bfa_npc_lorewalker_sun") { }

    struct bfa_npc_lorewalker_sunAI : public ScriptedAI
    {
        bfa_npc_lorewalker_sunAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        bool suntalks;
        EventMap events;

        void Reset()
        {
            suntalks = false;
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (!suntalks && who->GetTypeId() == TYPEID_PLAYER)
            {
                suntalks = true;
                events.ScheduleEvent(EVENT_TALK_SUN_ONE, 1000);
                events.ScheduleEvent(EVENT_TALK_SUN_TWO, 6000);
                events.ScheduleEvent(EVENT_TALK_SUN_THREE, 11000);
                events.ScheduleEvent(EVENT_TALK_SUN_FOUR, 16000);
            }
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_TALK_SUN_ONE:
                    Talk(TALK_SUN_ONE);
                    break;
                case EVENT_TALK_SUN_TWO:
                    Talk(TALK_SUN_TWO);
                    break;
                case EVENT_TALK_SUN_THREE:
                    Talk(TALK_SUN_THREE);
                    break;
                case EVENT_TALK_SUN_FOUR:
                    Talk(TALK_SUN_FOUR);
                    break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_npc_lorewalker_sunAI(creature);
    }
};

class bfa_npc_lorewalker_yaungol : public CreatureScript
{
public:
    bfa_npc_lorewalker_yaungol() : CreatureScript("bfa_npc_lorewalker_yaungol") { }

    struct bfa_npc_lorewalker_yaungolAI : public ScriptedAI
    {
        bfa_npc_lorewalker_yaungolAI(Creature* creature) : ScriptedAI(creature)
        {
        }

        bool yaungoltalks;
        EventMap events;

        void Reset()
        {
            yaungoltalks = false;
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (!yaungoltalks && who->GetTypeId() == TYPEID_PLAYER)
            {
                yaungoltalks = true;
                events.ScheduleEvent(EVENT_TALK_YAUNGOL_ONE, 1000);
                events.ScheduleEvent(EVENT_TALK_YAUNGOL_TWO, 6000);
                events.ScheduleEvent(EVENT_TALK_YAUNGOL_THREE, 11000);
                events.ScheduleEvent(EVENT_TALK_YAUNGOL_FOUR, 14000);
                events.ScheduleEvent(EVENT_TALK_YAUNGOL_FIVE, 17000);
                events.ScheduleEvent(EVENT_TALK_YAUNGOL_SIX, 20000);
            }
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_TALK_YAUNGOL_ONE:
                    Talk(TALK_YAUNGOL_ONE);
                    break;
                case EVENT_TALK_YAUNGOL_TWO:
                    Talk(TALK_YAUNGOL_TWO);
                    break;
                case EVENT_TALK_YAUNGOL_THREE:
                    Talk(TALK_YAUNGOL_THREE);
                    break;
                case EVENT_TALK_YAUNGOL_FOUR:
                    Talk(TALK_YAUNGOL_FOUR);
                    break;
                case EVENT_TALK_YAUNGOL_FIVE:
                    Talk(TALK_YAUNGOL_FIVE);
                    break;
                case EVENT_TALK_YAUNGOL_SIX:
                    Talk(TALK_YAUNGOL_SIX);
                    break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_npc_lorewalker_yaungolAI(creature);
    }
};

class bfa_boss_strife : public CreatureScript
{
public:
    bfa_boss_strife() : CreatureScript("bfa_boss_strife") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_boss_strifeAI(creature);
    }

    struct bfa_boss_strifeAI : public ScriptedAI
    {
        bfa_boss_strifeAI(Creature* creature) : ScriptedAI(creature)
        {
            timer_intensity = TIMER_INTENSITY;
            timer_dissipation = TIMER_DISSIPATION;
            countIntensity = 0;
            hasBeenHit = false;
            me->RemoveUnitFlag(UNIT_FLAG_IN_COMBAT);
        }

        EventMap events;
        uint32 timer_dissipation;
        uint32 timer_intensity;
        int32 countIntensity;
        bool hasBeenHit;

        void EnterEvadeMode(EvadeReason w)
        {
            // resummon scroll
            if (!me->FindNearestCreature(57080, 1000.0f))
                me->SummonCreature(57080, 846.19f, -2455.66f, 175.04f, TEMPSUMMON_CORPSE_DESPAWN);
            if (Creature* osong = me->FindNearestCreature(56872, 100.0f))
                osong->DespawnOrUnsummon();
            if (Creature* creature = me->FindNearestCreature(999605, 100.0f))
                creature->DespawnOrUnsummon();
            // resummon lorewalker
            if (!me->FindNearestCreature(56843, 100.0f))
                me->SummonCreature(56843, 845.41f, -2457.49f, 174.96f, 1.19f, TEMPSUMMON_CORPSE_DESPAWN);
            me->DespawnOrUnsummon();
        }

        void Reset()
        {
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            me->RemoveUnitFlag(UNIT_FLAG_IN_COMBAT);
        }

        void JustDied(Unit*)
        {
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void DamageTaken(Unit* unit, uint32&)
        {
            timer_dissipation = TIMER_DISSIPATION;
            hasBeenHit = true;
        }

        void EnterCombat(Unit* unit)
        {
            events.RescheduleEvent(EVENT_AGONY, 2000);
            events.RescheduleEvent(EVENT_DONT_STACK, 100);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (timer_dissipation <= diff)
            {
                me->RemoveAuraFromStack(SPELL_INTENSITY);
                if (!me->HasAura(SPELL_INTENSITY))
                    me->AddAura(SPELL_DISSIPATION, me);
                timer_dissipation = TIMER_DISSIPATION;
                --countIntensity;
                if (countIntensity == -10)
                    countIntensity = -10;
            }
            else
                timer_dissipation -= diff;

            if (timer_intensity <= diff)
            {
                if (hasBeenHit)
                {
                    me->RemoveAuraFromStack(SPELL_DISSIPATION);
                    if (!me->HasAura(SPELL_DISSIPATION))
                        me->AddAura(SPELL_INTENSITY, me);
                    ++countIntensity;
                    if (countIntensity == 10)
                    {
                        me->CastSpell(me, SPELL_ULTIMATE_POWER);
                        me->RemoveAura(SPELL_INTENSITY);
                    }
                    if (countIntensity > 10)
                        countIntensity = 10;
                }
                hasBeenHit = false;
                timer_intensity = TIMER_INTENSITY;
            }
            else
                timer_intensity -= diff;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_AGONY:
                    me->CastSpell(me->GetVictim(), SPELL_AGONY, true);
                    events.RescheduleEvent(EVENT_AGONY, 2000);
                    break;
                case EVENT_DONT_STACK:
                    if (me->HasAura(SPELL_ULTIMATE_POWER))
                    {
                        me->RemoveAura(SPELL_DISSIPATION);
                    }
                    events.RescheduleEvent(EVENT_DONT_STACK, 100);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

class bfa_boss_peril : public CreatureScript
{
public:
    bfa_boss_peril() : CreatureScript("bfa_boss_peril") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new bfa_boss_perilAI(creature);
    }

    struct bfa_boss_perilAI : public ScriptedAI
    {
        bfa_boss_perilAI(Creature* creature) : ScriptedAI(creature)
        {
            timer_intensity = TIMER_INTENSITY;
            timer_dissipation = TIMER_DISSIPATION;
            countIntensity = 0;
            hasBeenHit = false;
        }

        EventMap events;
        uint32 timer_dissipation;
        uint32 timer_intensity;
        int32 countIntensity;
        bool hasBeenHit;

        void EnterEvadeMode(EvadeReason w)
        {
            // resummon scroll
            if (!me->FindNearestCreature(57080, 1000.0f))
                me->SummonCreature(57080, 846.19f, -2455.66f, 175.04f, 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
            if (Creature* osong = me->FindNearestCreature(56872, 100.0f))
                osong->DespawnOrUnsummon();
            if (Creature* creature = me->FindNearestCreature(999605, 100.0f))
                creature->DespawnOrUnsummon();
            // resummon lorewalker
            if (!me->FindNearestCreature(56843, 100.0f))
                me->SummonCreature(56843, 845.41f, -2457.49f, 174.96f, 1.19f, TEMPSUMMON_CORPSE_DESPAWN);
            me->DespawnOrUnsummon();
        }

        void Reset()
        {
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
        }

        void JustDied(Unit*)
        {
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
            if (Creature* osong = me->FindNearestCreature(56872, 100.0f))
                osong->DespawnOrUnsummon();
        }

        void DamageTaken(Unit* unit, uint32&)
        {
            timer_dissipation = TIMER_DISSIPATION;
            hasBeenHit = true;
        }

        void EnterCombat(Unit* unit)
        {
            events.RescheduleEvent(EVENT_AGONY, 2000);
            events.RescheduleEvent(EVENT_DONT_STACK, 100);
            me->GetInstanceScript()->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
        }

        void UpdateAI(uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (timer_dissipation <= diff)
            {
                me->RemoveAuraFromStack(SPELL_INTENSITY);
                if (!me->HasAura(SPELL_INTENSITY))
                    me->AddAura(SPELL_DISSIPATION, me);
                timer_dissipation = TIMER_DISSIPATION;
                --countIntensity;
                if (countIntensity == -10)
                    countIntensity = -10;
            }
            else
                timer_dissipation -= diff;

            if (timer_intensity <= diff)
            {
                if (hasBeenHit)
                {
                    me->RemoveAuraFromStack(SPELL_DISSIPATION);
                    if (!me->HasAura(SPELL_DISSIPATION))
                        me->AddAura(SPELL_INTENSITY, me);
                    ++countIntensity;
                    if (countIntensity == 10)
                    {
                        me->CastSpell(me, SPELL_ULTIMATE_POWER);
                        me->RemoveAura(SPELL_INTENSITY);
                    }
                    if (countIntensity > 10)
                        countIntensity = 10;
                }
                hasBeenHit = false;
                timer_intensity = TIMER_INTENSITY;
            }
            else
                timer_intensity -= diff;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_AGONY:
                    me->CastSpell(me->GetVictim(), SPELL_AGONY, true);
                    events.RescheduleEvent(EVENT_AGONY, 2000);
                    break;
                case EVENT_DONT_STACK:
                    if (me->HasAura(SPELL_ULTIMATE_POWER))
                    {
                        me->RemoveAura(SPELL_DISSIPATION);
                    }
                    events.RescheduleEvent(EVENT_DONT_STACK, 100);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_lorewalker_stonestep()
{
    new bfa_boss_five_suns();
    new bfa_npc_zao();
    new bfa_npc_haunting_sha();
    new bfa_npc_haunting_sha_move();
    new bfa_npc_corrupted_scroll();
    new bfa_npc_lorewalker_stonestep();
    new bfa_npc_osong();
    new bfa_npc_lorewalker_sun();
    new bfa_npc_lorewalker_yaungol();

    new bfa_boss_strife();
    new bfa_boss_peril();
}
