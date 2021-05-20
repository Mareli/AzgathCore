#include "AreaTriggerAI.h"
#include "tomb_of_sargeras.h"
#include "AreaTrigger.h"
#include "AreaTriggerTemplate.h"
#include "SpellAuraDefines.h"
#include "SpellAuraEffects.h"

enum Says
{
    SAY_AGGRO = 0,
    SAY_THUNDERING_SHOCK = 1,
    SAY_HYDRA_SHOT_WARN = 2,
    SAY_SLICING_TORNADO = 3,
    SAY_SLICING_TORNADO_WARN = 4,
    SAY_PHASE_2 = 5,
    SAY_CALL_VELLIUS = 6,
    SAY_BECKON_SARUKEL = 7,
    SAY_BECKON_SARUKEL_WARN = 8,
    SAY_PHASE_3 = 9,
    SAY_DEATH = 10,
};

enum Spells
{
    SPELL_BURDEN_OF_PAIN = 230201,
    SPELL_BURDEN_OF_PAIN_SHARE_DMG = 230214,
    SPELL_FROM_THE_ABYSS = 230227,
    SPELL_HYDRA_SHOT_FILTER = 232753,
    SPELL_HYDRA_SHOT_MARK = 230139,
    SPELL_HYDRA_SHOT_DMG = 230143,
    SPELL_HYDRA_ACID = 232754,
    SPELL_HYDRA_ACID_STUN = 234332,
    SPELL_SLICING_TORNADO_FILTER = 232722,
    SPELL_SLICING_TORNADO_AT_1 = 232723, //unk
    SPELL_SLICING_TORNADO_AT_2 = 234809, //Aura
    SPELL_THUNDERING_SHOCK_FILTER = 230358,
    SPELL_THUNDERING_SHOCK_SUMMON = 230360,
    SPELL_CONSUMING_HUNGER_FILTER = 230384, //Set VehicleID to Player
    SPELL_CONSUMING_HUNGER_SUMMON = 230855,
    SPELL_CONSUMING_HUNGER_RIDE_VEH = 230920,
    SPELL_BECKON_SARUKEL = 232746,
    SPELL_SUMMON_OSSUNET = 232756,
    SPELL_CALL_VELLIUS = 232757,
    SPELL_BERSERK = 47008,

    //Mythic
    SPELL_DELICIOUS_BUFFERFISH_DUMMY = 239369,
    SPELL_DELICIOUS_BUFFERFISH_ENERGIZE = 239362, //Only Healer
    SPELL_DELICIOUS_BUFFERFISH_MOD_DMG = 239375, //Only Damage Dealer
    SPELL_DELICIOUS_BUFFERFISH_AT = 239388,
    SPELL_DELICIOUS_BUFFERFISH_DROP = 239403, //Player drop Bufferfish
    SPELL_SLIPPERY = 239420, //Debuff Penalty
    SPELL_DREAD_SHARK_DUMMY = 239423,
    SPELL_DREAD_SHARK_FILTER_1 = 239434, //Find Player
    SPELL_DREAD_SHARK_FILTER_2 = 239435, //Find Npc
    SPELL_DREAD_SHARK_DMG = 239436,

    //Abyss Stalker
    SPELL_CONCEALING_MURK_AT = 230950,
    SPELL_DARK_DEPTHS_FILTER = 230273, //Heroic+
    SPELL_DARK_DEPTHS_TELEPORT = 230274,
    SPELL_DARK_DEPTHS_DMG = 230276, //Native name: "Jaws from the Deep"

    //Electrifying Jellyfish
    SPELL_THUNDERING_SHOCK = 230362,

    //Razorjaw Waverunner
    SPELL_WATER_BLAST = 241509,
    SPELL_MURLOC_MASH = 242946, //Mythic

    //Sarukel
    SPELL_DEVOURING_MAW_MOVEMENT_AT = 232745, //Force movement. Dmg Spell: 234621
    SPELL_DEVOURING_MAW_CIRCLE_AT = 232886, //Remove Spell: Befouling Ink - 232918
    SPELL_DEVOURING_MAW_CIRCLE_AT_2 = 232884, //Killing players

    //Ossunet
    SPELL_OSSUNET_VISUAL = 234178,
    SPELL_BEFOULING_INK_FILTER = 232903,
    SPELL_BEFOULING_INK_MISSILE = 232902,
    SPELL_BEFOULING_INK_MISSILE_2 = 233302, //Player casting
    SPELL_BEFOULING_INK_AT = 232905,
    SPELL_BEFOULING_DMG = 232913,
    SPELL_BEFOULING_REMOVE = 232918,

    //Piranhado
    SPELL_CRASHING_WAVE_AT = 240759,
    SPELL_CRASHING_WAVE_DMG = 232827,
};

enum eEvents
{
    EVENT_BURDEN_OF_PAIN = 1,
    EVENT_HYDRA_SHOT = 2,
    EVENT_SLICING_TORNADO = 3,
    EVENT_THUNDERING_SHOCK = 4,
    EVENT_CONSUMING_HUNGER = 5,
    EVENT_BECKON_SARUKEL = 6,
    EVENT_SUMMON_OSSUNET = 7,
    EVENT_CALL_VELLIUS = 8,
};

enum Achievement
{
    A_SAUCE,
    A_HYDRA,
    A_TARTAR,
    A_MURLOC,
    A_PLAYER,
};

Position const centrPos = { 5799.70f, -1248.48f, 2786.24f };

Position const sarukelPos[3] =
{
    {5771.40f, -1218.03f, 2785.67f, 5.48f},
    {5826.77f, -1275.80f, 2785.67f, 2.32f},
    {5770.53f, -1275.34f, 2785.67f, 0.76f}
};

Position const ossunetPos[3] =
{
    {5833.75f, -1260.85f, 2785.67f, 2.78f},
    {5762.73f, -1233.02f, 2785.67f, 5.91f},
    {5784.01f, -1282.96f, 2785.67f, 1.17f}
};

Position const piranhadoPos[8] =
{
    {5813.55f, -1211.53f, 2785.97f, 4.35f},
    {5833.01f, -1227.46f, 2785.97f, 3.70f},
    {5781.11f, -1212.40f, 2786.33f, 5.19f},
    {5761.98f, -1231.07f, 2786.33f, 5.84f},
    {5837.62f, -1261.57f, 2786.33f, 2.81f},
    {5818.79f, -1283.59f, 2786.33f, 2.06f},
    {5763.95f, -1267.11f, 2786.33f, 0.47f},
    {5784.16f, -1286.02f, 2786.33f, 1.17f},
};

enum Misc
{
    ACTION_1 = 1,
    ACTION_2,
    ACTION_3,
    ACTION_4,
    ACTION_5,

    EVENT_1,
};

//115767
struct boss_mistress_sasszine : BossAI
{
    explicit boss_mistress_sasszine(Creature* creature) : BossAI(creature, DATA_MISTRESS_SASSZINE) {}

    uint8 phase = 0;
    uint8 healthPct = 0;
    uint8 dreadSharkHealthPct = 0;
    uint32 spawnFishTimer = 0;
    uint32 berserkTimer = 0;
    bool inkSauce = false;
    bool hydra = false;
    bool tartar = false;
    bool murloc = false;
    bool playerS = false;
    std::list<uint32> thunderingShockTimer;
    std::list<uint32> consumingHungerTimer;
    std::list<uint32> slicingTornadoTimer;
    std::list<uint32> summonOssunetTimer;
    std::list<uint32> callVelliusTimer;

    void Reset() override
    {
        _Reset();
        me->SetReactState(REACT_DEFENSIVE);
        phase = 0;
        healthPct = 71;
        dreadSharkHealthPct = 86;

        for (uint8 i = 0; i < 3; ++i)
        {
            me->SummonCreature(NPC_SARUKEL_TRIGGER, sarukelPos[i]);
            me->SummonCreature(NPC_OSSUNET_TRIGGER, ossunetPos[i]);
        }

        for (uint8 i = 0; i < 8; ++i)
            me->SummonCreature(NPC_PIRANHADO_TRIGGER, piranhadoPos[i]);
    }

    void DoAction(int32 const action) override
    {
        switch (action)
        {
        case ACTION_1:
            inkSauce = true;
            break;
        case ACTION_2:
            hydra = true;
            break;
        case ACTION_3:
            tartar = true;
            break;
        case ACTION_4:
            murloc = true;
            break;
        case ACTION_5:
            playerS = true;
            break;
        }
    }

    uint32 GetData(uint32 type) const override
    {
        if (type == A_SAUCE)
            return inkSauce ? 1 : 0;
        if (type == A_HYDRA)
            return hydra ? 1 : 0;
        if (type == A_TARTAR)
            return tartar ? 1 : 0;
        if (type == A_MURLOC)
            return murloc ? 1 : 0;
        if (type == A_PLAYER)
            return playerS ? 1 : 0;
        return 0;
    }

    void EnterCombat(Unit* /*who*/) override
    {
        Talk(SAY_AGGRO);
        _EnterCombat();

        ChangePhase();

        if (IsMythicRaid())
            spawnFishTimer = 12000;

        if (!IsLFR())
            berserkTimer = 8 * MINUTE * IN_MILLISECONDS;
    }

    void JustDied(Unit* /*killer*/) override
    {
        Talk(SAY_DEATH);
        _JustDied();

        DoCast(me, 240056, true);
    }

    void EnterEvadeMode(EvadeReason w)
    {
        //BossAI::EnterEvadeMode();
        me->InterruptNonMeleeSpells(false);
        me->NearTeleportTo(me->GetHomePosition());
        instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_HYDRA_SHOT_MARK);
    }

    void ChangePhase()
    {
        ++phase;
        events.Reset();

        switch (phase)
        {
        case 1:
            events.RescheduleEvent(EVENT_THUNDERING_SHOCK, 10000);
            events.RescheduleEvent(EVENT_CONSUMING_HUNGER, IsHeroicPlusRaid() ? 20000 : 64000);
            if (!IsLFR())
                events.RescheduleEvent(EVENT_HYDRA_SHOT, 26000);

            if (IsHeroicRaid())
            {
                thunderingShockTimer = { 36000, 38000, 32000 };
                consumingHungerTimer = { 34000, 38000 };
                slicingTornadoTimer = { 45000, 45000 };
                events.RescheduleEvent(EVENT_BURDEN_OF_PAIN, 15000);
                events.RescheduleEvent(EVENT_SLICING_TORNADO, 30000);
            }
            else if (IsMythicRaid())
            {
                thunderingShockTimer = { 36000, 32000 };
                consumingHungerTimer = { 36000, 34000 };
                slicingTornadoTimer = { 34000, 38000 };
                events.RescheduleEvent(EVENT_BURDEN_OF_PAIN, 16000);
                events.RescheduleEvent(EVENT_SLICING_TORNADO, 30000);
            }
            else
            {
                thunderingShockTimer = { 44000, 32000 };
                consumingHungerTimer = { 34000 };
                slicingTornadoTimer = { 54000, 45000 };
                events.RescheduleEvent(EVENT_BURDEN_OF_PAIN, 19000);
                events.RescheduleEvent(EVENT_SLICING_TORNADO, 36000);
            }
            break;
        case 2:
            Talk(SAY_PHASE_2);
            events.RescheduleEvent(EVENT_BURDEN_OF_PAIN, IsHeroicPlusRaid() ? 26000 : 28000);
            events.RescheduleEvent(EVENT_BECKON_SARUKEL, IsHeroicPlusRaid() ? 40000 : 42000);
            events.RescheduleEvent(EVENT_SUMMON_OSSUNET, 10000);
            callVelliusTimer = { 42000, 44000 };

            if (IsHeroicRaid())
            {
                summonOssunetTimer = { 42000 };
                events.RescheduleEvent(EVENT_HYDRA_SHOT, 16000);
                events.RescheduleEvent(EVENT_CALL_VELLIUS, 30000);
            }
            else if (IsMythicRaid())
            {
                summonOssunetTimer = { 42000 };
                events.RescheduleEvent(EVENT_HYDRA_SHOT, 16000);
                events.RescheduleEvent(EVENT_CALL_VELLIUS, 30000);
            }
            else
            {
                summonOssunetTimer = { 50000, 38000, 42000 };
                events.RescheduleEvent(EVENT_CALL_VELLIUS, 36000);

                if (!IsLFR())
                    events.RescheduleEvent(EVENT_HYDRA_SHOT, 18000);
            }
            break;
        case 3:
            Talk(SAY_PHASE_3);
            events.RescheduleEvent(EVENT_BURDEN_OF_PAIN, IsHeroicPlusRaid() ? 26000 : 28000);
            events.RescheduleEvent(EVENT_SUMMON_OSSUNET, 10000);

            if (IsHeroicRaid())
            {
                consumingHungerTimer = { 32000, 48000, 42000 };
                slicingTornadoTimer = { 46000, 48000, 44000 };
                summonOssunetTimer = { 38000, 32000, 34000, 32000, 34000 };
                callVelliusTimer = { 56000, 38000, 44000, 32000 };
                events.RescheduleEvent(EVENT_CONSUMING_HUNGER, 40000);
                events.RescheduleEvent(EVENT_HYDRA_SHOT, 16000);
                events.RescheduleEvent(EVENT_SLICING_TORNADO, 58000);
                events.RescheduleEvent(EVENT_CALL_VELLIUS, 32000);
            }
            else if (IsMythicRaid())
            {
                consumingHungerTimer = { 70000, 36000, 32000 };
                slicingTornadoTimer = { 34000, 36000, 34000 };
                summonOssunetTimer = { 28000, 32000, 34000, 28000, 34000 };
                callVelliusTimer = { 32000, 34000, 46000, 32000 };
                events.RescheduleEvent(EVENT_CONSUMING_HUNGER, 46000);
                events.RescheduleEvent(EVENT_HYDRA_SHOT, 16000);
                events.RescheduleEvent(EVENT_SLICING_TORNADO, 52000);
                events.RescheduleEvent(EVENT_CALL_VELLIUS, 30000);
            }
            else
            {
                consumingHungerTimer = { 32000 };
                slicingTornadoTimer = { 82000, 44000, 46000 };
                summonOssunetTimer = { 34000, 34000, 32000, 32000, 34000 };
                callVelliusTimer = { 56000, 76000, 44000, 32000 };
                events.RescheduleEvent(EVENT_CONSUMING_HUNGER, 52000);
                events.RescheduleEvent(EVENT_SLICING_TORNADO, 52000);
                events.RescheduleEvent(EVENT_CALL_VELLIUS, 36000);

                if (!IsLFR())
                    events.RescheduleEvent(EVENT_HYDRA_SHOT, 18000);
            }
            break;
        }
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage)
    {
        if (phase < 3 && me->HealthBelowPct(healthPct))
        {
            healthPct -= 30;
            ChangePhase();

            if (!IsMythicRaid())
                me->CastSpell(me, SPELL_DREAD_SHARK_DUMMY, true);
        }

        if (IsMythicRaid())
        {
            if (me->HealthBelowPct(dreadSharkHealthPct))
            {
                dreadSharkHealthPct -= 15;
                spawnFishTimer = 22000;
                me->CastSpell(me, SPELL_DREAD_SHARK_DUMMY, true);
            }
        }
    }

    void SummonedCreatureDies(Creature* summon, Unit* /*killer*/) override
    {
        switch (summon->GetEntry())
        {
        case NPC_ABYSS_STALKER:
            summon->CastSpell(summon, SPELL_CONCEALING_MURK_AT, true, nullptr, nullptr, me->GetGUID());
            break;
        }
    }

    void SpellFinishCast(const SpellInfo* spell)
    {
        switch (spell->Id)
        {
        case SPELL_BURDEN_OF_PAIN:
        {
            for (uint8 i = 0; i < 3; ++i)
                DoCast(me, SPELL_FROM_THE_ABYSS, true);
            break;
        }
        case SPELL_BECKON_SARUKEL:
            if (auto sarukel = me->FindNearestCreature(NPC_SARUKEL_TRIGGER, 90.0f))
                sarukel->GetAI()->DoAction(ACTION_2);
            break;
        }
    }

    void SpellHitTarget(Unit* target, SpellInfo const* spell) override
    {
        switch (spell->Id)
        {
        case SPELL_HYDRA_SHOT_FILTER:
            DoCast(target, SPELL_HYDRA_SHOT_MARK, true);
            break;
        case SPELL_SLICING_TORNADO_FILTER:
        {
            float x, y;
            float dist = 2.5f;
            float angle = 4.71f;
            float orientation = centrPos.GetAngle(target) - M_PI;

            for (uint8 i = 0; i < 12; ++i)
            {
                if (i == 6)
                {
                    angle = 1.57f;
                    dist = 2.5f;
                }

                target->GetNearPoint2D(x, y, dist, angle + orientation);
                me->SummonCreature(NPC_TORNADO_TRIGGER, x, y, target->GetPositionZ(), orientation);
                dist += 8.0f;
            }
            break;
        }
        case SPELL_THUNDERING_SHOCK_FILTER:
            DoCast(target, SPELL_THUNDERING_SHOCK_SUMMON, true);
            break;
        case SPELL_CONSUMING_HUNGER_FILTER:
            if (auto summon = me->SummonCreature(NPC_RAZORJAW_WAVERUNNER, target->GetPosition()))
            {
                ObjectGuid targetGuid = target->GetGUID();
                AddDelayedEvent(200, [summon, targetGuid]() -> void
                {
                    if (summon)
                        if (Unit* target = ObjectAccessor::GetUnit(*summon, targetGuid))
                            summon->CastSpell(target, SPELL_CONSUMING_HUNGER_RIDE_VEH, true);
                });
            }
            break;
        case SPELL_DREAD_SHARK_FILTER_1:
        case SPELL_DREAD_SHARK_FILTER_2:
            target->CastSpell(target, SPELL_DREAD_SHARK_DMG, true);
            break;
        }
    }

    void OnRemoveAuraTarget(Unit* target, uint32 spellId, AuraRemoveMode mode)
    {
        if (me->IsInCombat() && mode == AURA_REMOVE_BY_EXPIRE && target)
        {
            switch (spellId)
            {
            case SPELL_HYDRA_SHOT_MARK:
                DoCast(target, SPELL_HYDRA_SHOT_DMG, true);
                break;
            case SPELL_DREAD_SHARK_DUMMY:
                DoCast(me, SPELL_DREAD_SHARK_FILTER_1, true);
                DoCast(me, SPELL_DREAD_SHARK_FILTER_2, true);
                break;
            }
        }
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (spawnFishTimer)
        {
            if (spawnFishTimer <= diff)
            {
                spawnFishTimer = 0;

                Position pos;
                float angle = 0.0f;
                for (uint8 i = 0; i < 5; ++i)
                {
                    //centrPos.SimplePosXYRelocationByAngle(pos, 25.0f, angle);
                    me->SummonCreature(NPC_DELICIOUS_BUFFERFISH, pos);
                    angle += 1.256f;
                }
            }
            else
                spawnFishTimer -= diff;
        }

        if (berserkTimer)
        {
            if (berserkTimer <= diff)
            {
                berserkTimer = 0;
                DoCast(me, SPELL_BERSERK, true);
            }
            else
                berserkTimer -= diff;
        }

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;


        if (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_BURDEN_OF_PAIN:
                me->CastSpell(me->GetVictim(), SPELL_BURDEN_OF_PAIN);
                events.RescheduleEvent(EVENT_BURDEN_OF_PAIN, phase == 1 ? 28000 : (IsHeroicPlusRaid() ? 30000 : 40000));
                break;
            case EVENT_HYDRA_SHOT:
                Talk(SAY_HYDRA_SHOT_WARN);
                DoCast(me, SPELL_HYDRA_SHOT_FILTER, true);
                events.RescheduleEvent(EVENT_HYDRA_SHOT, IsMythicRaid() ? 30000 : 40000);
                break;
            case EVENT_SLICING_TORNADO:
                Talk(SAY_SLICING_TORNADO);
                Talk(SAY_SLICING_TORNADO_WARN);
                DoCast(SPELL_SLICING_TORNADO_FILTER);
                events.RescheduleEvent(EVENT_SLICING_TORNADO, slicingTornadoTimer.front());
                if (slicingTornadoTimer.size() > 1)
                    slicingTornadoTimer.pop_front();
                break;
            case EVENT_THUNDERING_SHOCK:
                Talk(SAY_THUNDERING_SHOCK);
                DoCast(SPELL_THUNDERING_SHOCK_FILTER);
                events.RescheduleEvent(EVENT_THUNDERING_SHOCK, thunderingShockTimer.front());
                if (thunderingShockTimer.size() > 1)
                    thunderingShockTimer.pop_front();
                break;
            case EVENT_CONSUMING_HUNGER:
                DoCast(SPELL_CONSUMING_HUNGER_FILTER);
                events.RescheduleEvent(EVENT_CONSUMING_HUNGER, consumingHungerTimer.front());
                if (consumingHungerTimer.size() > 1)
                    consumingHungerTimer.pop_front();
                break;
            case EVENT_BECKON_SARUKEL:
            {
                Talk(SAY_BECKON_SARUKEL);
                Talk(SAY_BECKON_SARUKEL_WARN);
                EntryCheckPredicate pred(NPC_SARUKEL_TRIGGER);
                summons.DoAction(ACTION_1, pred);
                DoCast(SPELL_BECKON_SARUKEL);
                events.RescheduleEvent(EVENT_BECKON_SARUKEL, 42000);
                break;
            }
            case EVENT_SUMMON_OSSUNET:
                DoCast(SPELL_SUMMON_OSSUNET);
                events.RescheduleEvent(EVENT_SUMMON_OSSUNET, summonOssunetTimer.front());
                if (summonOssunetTimer.size() > 1)
                    summonOssunetTimer.pop_front();
                break;
            case EVENT_CALL_VELLIUS:
                Talk(SAY_CALL_VELLIUS);
                DoCast(SPELL_CALL_VELLIUS);
                events.RescheduleEvent(EVENT_CALL_VELLIUS, callVelliusTimer.front());
                if (callVelliusTimer.size() > 1)
                    callVelliusTimer.pop_front();
                break;
            }
        }
        DoMeleeAttackIfReady();
    }
};

//115795
struct npc_sasszine_abyss_stalker : public ScriptedAI
{
    explicit npc_sasszine_abyss_stalker(Creature* creature) : ScriptedAI(creature) {}

    EventMap events;

    void Reset() override {}

    void IsSummonedBy(Unit* summoner) override
    {
        if (IsHeroicPlusRaid())
            events.RescheduleEvent(EVENT_1, 10000); //Dark Depths
    }

    void SpellHitTarget(Unit* target, SpellInfo const* spell) override
    {
        switch (spell->Id)
        {
        case SPELL_DARK_DEPTHS_FILTER:
            me->CastSpell(target, SPELL_DARK_DEPTHS_TELEPORT, true);
            me->CastSpell(target, SPELL_DARK_DEPTHS_DMG, true);
            break;
        }
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        if (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_1:
                DoCast(SPELL_DARK_DEPTHS_FILTER);
                events.RescheduleEvent(EVENT_1, 14000);
                break;
            }
        }
        DoMeleeAttackIfReady();
    }
};

//118286
struct npc_sasszine_slicing_tornado : public ScriptedAI
{
    explicit npc_sasszine_slicing_tornado(Creature* creature) : ScriptedAI(creature)
    {
        me->SetDisplayId(78177);
        me->SetReactState(REACT_PASSIVE);
        //me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC | UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
        //me->SetFloatValue(UNIT_FIELD_COMBAT_REACH, 1.0f);
        me->SetSpeed(MOVE_FLIGHT, 0.75f);
    }

    uint32 startTimer = 0;

    void Reset() override {}

    void IsSummonedBy(Unit* summoner) override
    {
        DoCast(me, SPELL_SLICING_TORNADO_AT_2, true);
        startTimer = 1000;
    }

    void MovementInform(uint32 type, uint32 id) override
    {
        if (type == POINT_MOTION_TYPE && id == 1)
            me->DespawnOrUnsummon();
    }

    void UpdateAI(uint32 diff) override
    {
        if (startTimer)
        {
            if (startTimer <= diff)
            {
                startTimer = 0;
                float x, y;
                me->GetNearPoint2D(x, y, 80.0f, me->GetOrientation());
                me->GetMotionMaster()->MovePoint(1, x, y, me->GetPositionZ(), false);
            }
            else
                startTimer -= diff;
        }
    }
};

//115896
struct npc_sasszine_electrifying_jellyfish : public ScriptedAI
{
    explicit npc_sasszine_electrifying_jellyfish(Creature* creature) : ScriptedAI(creature)
    {
        me->SetReactState(REACT_PASSIVE);
    }

    void Reset() override {}

    void IsSummonedBy(Unit* summoner) override
    {
        me->CastSpell(me, SPELL_THUNDERING_SHOCK, false);
    }

    void SpellFinishCast(const SpellInfo* spell)
    {
        if (spell->Id == SPELL_THUNDERING_SHOCK)
        {
            AddDelayedEvent(1000, [this]() -> void
            {
                me->SetVisible(false);
            });
        }
    }

    void UpdateAI(uint32 diff) override {}
};

//115902
struct npc_sasszine_razorjaw_waverunner : public ScriptedAI
{
    explicit npc_sasszine_razorjaw_waverunner(Creature* creature) : ScriptedAI(creature)
    {
        me->SetReactState(REACT_PASSIVE);
       // me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC | UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
    }

    EventMap events;
    uint32 checkVehicleTimer = 0;

    void Reset() override {}

    void IsSummonedBy(Unit* summoner) override
    {
        checkVehicleTimer = 3000;
    }

    void UpdateAI(uint32 diff) override
    {
        if (checkVehicleTimer)
        {
            if (checkVehicleTimer <= diff)
            {
                checkVehicleTimer = 2000;

                if (!me->IsOnVehicle())
                {
                    checkVehicleTimer = 0;
                    //me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_NPC | UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    DoZoneInCombat(me, 100.0f);

                    if (IsMythicRaid())
                        DoCast(me, SPELL_MURLOC_MASH, true);
                }
            }
            else
                checkVehicleTimer -= diff;
        }

        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        DoSpellAttackIfReady(SPELL_WATER_BLAST);
    }
};

//116843
struct npc_sasszine_sarukel : public ScriptedAI
{
    explicit npc_sasszine_sarukel(Creature* creature) : ScriptedAI(creature)
    {
        instance = me->GetInstanceScript();
        me->SetReactState(REACT_PASSIVE);
    }

    uint32 checkTimer = 300;
    InstanceScript* instance;

    void Reset() override {}

    void DoAction(int32 const actionID)
    {
        if (actionID == ACTION_1)
        {
            me->RemoveAllAreaObjects();
            me->RemoveAllAuras();
            KillAllDelayedCombats();
        }

        if (actionID == ACTION_2)
        {
            me->CastSpell(me, SPELL_DEVOURING_MAW_MOVEMENT_AT, true);
            me->CastSpell(me, SPELL_DEVOURING_MAW_CIRCLE_AT, true);
            me->CastSpell(me, SPELL_DEVOURING_MAW_CIRCLE_AT_2, true);
        }
    }

    void OnAreaTriggerDespawn(uint32 spellId, Position pos, bool duration)
    {
        if (spellId == SPELL_DEVOURING_MAW_CIRCLE_AT)
        {
            DoAction(ACTION_1);
        }
    }

    void UpdateAI(uint32 diff) override
    {
        if (!me->HasAura(SPELL_DEVOURING_MAW_CIRCLE_AT_2))
            return;

        if (checkTimer <= diff)
        {
            if (auto stalker = me->FindNearestCreature(NPC_ABYSS_STALKER, 3.0f))
            {
                if (auto sasszine = instance->instance->GetCreature(instance->GetGuidData(DATA_MISTRESS_SASSZINE)))
                {
                    if (sasszine->IsAIEnabled)
                    {
                        if (sasszine->IsAIEnabled)
                        {
                            sasszine->AI()->DoAction(ACTION_3);
                            stalker->ToCreature()->DespawnOrUnsummon(500);
                        }
                    }
                }
            }

            if (auto waverunner = me->FindNearestCreature(NPC_RAZORJAW_WAVERUNNER, 3.0f))
            {
                if (auto sasszine = instance->instance->GetCreature(instance->GetGuidData(DATA_MISTRESS_SASSZINE)))
                {
                    if (sasszine->IsAIEnabled)
                    {
                        sasszine->AI()->DoAction(ACTION_4);
                        waverunner->ToCreature()->DespawnOrUnsummon(500);
                    }
                }
            }

            if (me->SelectNearestPlayer(3.5f))
            {
                if (auto sasszine = instance->instance->GetCreature(instance->GetGuidData(DATA_MISTRESS_SASSZINE)))
                {
                    if (sasszine->IsAIEnabled)
                    {
                        sasszine->AI()->DoAction(ACTION_5);
                    }
                }
            }

            if (auto player = me->SelectNearestPlayer(7.0f))
                if (player->HasAura(SPELL_HYDRA_ACID))
                    if (auto sasszine = instance->instance->GetCreature(instance->GetGuidData(DATA_MISTRESS_SASSZINE)))
                        if (sasszine->IsAIEnabled)
                            sasszine->AI()->DoAction(ACTION_2);

            checkTimer = 300;
        }
        else checkTimer -= diff;
    }
};

//116881
struct npc_sasszine_ossunet : public ScriptedAI
{
    explicit npc_sasszine_ossunet(Creature* creature) : ScriptedAI(creature)
    {
        me->SetReactState(REACT_PASSIVE);
    }

    void Reset() override {}

    void SpellHit(Unit* caster, SpellInfo const* spell) override
    {
        if (spell->Id == SPELL_SUMMON_OSSUNET)
        {
            DoCast(me, SPELL_OSSUNET_VISUAL, true);
            DoCast(me, SPELL_BEFOULING_INK_FILTER, true);
        }
    }

    void SpellHitTarget(Unit* target, SpellInfo const* spell) override
    {
        if (spell->Id == SPELL_BEFOULING_INK_FILTER)
        {
            if (auto owner = me->GetOwner())
                me->CastSpell(target, SPELL_BEFOULING_INK_MISSILE, true, nullptr, nullptr, owner->GetGUID());
        }
    }

    void UpdateAI(uint32 diff) override {}
};

//116841
struct npc_sasszine_piranhado : public ScriptedAI
{
    explicit npc_sasszine_piranhado(Creature* creature) : ScriptedAI(creature)
    {
        me->SetReactState(REACT_PASSIVE);
    }

    void Reset() override {}

    void SpellHit(Unit* caster, SpellInfo const* spell) override
    {
        if (spell->Id == SPELL_CALL_VELLIUS)
        {
            me->CastSpell(me, SPELL_CRASHING_WAVE_AT, true, nullptr, nullptr, caster->GetGUID());
            me->CastSpell(me, SPELL_CRASHING_WAVE_DMG, false);
        }
    }

    void UpdateAI(uint32 diff) override {}
};

//119791
struct npc_sasszine_delicious_bufferfish : public ScriptedAI
{
    explicit npc_sasszine_delicious_bufferfish(Creature* creature) : ScriptedAI(creature)
    {
        me->SetReactState(REACT_PASSIVE);
    }

    void Reset() override {}

    void IsSummonedBy(Unit* summoner) override
    {
        DoCast(me, SPELL_DELICIOUS_BUFFERFISH_AT, true);
    }

    void OnAreaTriggerCast(Unit* caster, Unit* target, uint32 spellId, uint32 createATSpellId)
    {
        if (spellId == SPELL_DELICIOUS_BUFFERFISH_DUMMY)
            me->DespawnOrUnsummon(100);
    }

    void SpellFinishCast(const SpellInfo* spell)
    {
        if (spell->Id == SPELL_DREAD_SHARK_DMG)
        {
            me->RemoveAurasDueToSpell(SPELL_DELICIOUS_BUFFERFISH_AT);
            me->DespawnOrUnsummon(500);
        }
    }

    void UpdateAI(uint32 diff) override {}
};

//230143
class spell_sasszine_hydra_shot_filter : public SpellScript
{
    PrepareSpellScript(spell_sasszine_hydra_shot_filter);

    uint32 targetsSize = 1;

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        if (!targets.empty())
            targetsSize = targets.size();
    }

    void HandleDamage(SpellEffIndex /*effectIndex*/)
    {
        SetHitDamage(GetHitDamage() / targetsSize);

        if (GetCaster() && GetHitUnit())
        {
            GetCaster()->CastSpell(GetHitUnit(), SPELL_HYDRA_ACID, true);

            if (GetHitUnit()->GetAuraCount(SPELL_HYDRA_ACID) >= 2)
                GetHitUnit()->CastSpell(GetHitUnit(), SPELL_HYDRA_ACID_STUN, true);
        }
    }

    void Register()
    {
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sasszine_hydra_shot_filter::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        OnEffectHitTarget += SpellEffectFn(spell_sasszine_hydra_shot_filter::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

//230201
class spell_sasszine_burden_of_pain : public AuraScript
{
    PrepareAuraScript(spell_sasszine_burden_of_pain);

    void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
    {
        amount = -1;
    }

    void Absorb(AuraEffect* /*AuraEffect**/, DamageInfo& dmgInfo, uint32& absorbAmount)
    {
        absorbAmount = 0;

        auto target = GetUnitOwner();
        auto attacker = dmgInfo.GetAttacker();
        if (!target || !attacker || target->GetGUID() == attacker->GetGUID())
            return;
    }

    void Register() override
    {
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_sasszine_burden_of_pain::CalculateAmount, EFFECT_1, SPELL_AURA_SCHOOL_ABSORB);
        OnEffectAbsorb += AuraEffectAbsorbFn(spell_sasszine_burden_of_pain::Absorb, EFFECT_1);
    }
};

//239369
class spell_sasszine_delicious_bufferfish : public AuraScript
{
    PrepareAuraScript(spell_sasszine_delicious_bufferfish);

    bool specHealer = false;

    void OnApply(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        if (auto player = GetTarget()->ToPlayer())
        {
            specHealer = player->GetRoleForGroup() == ROLE_HEALER;

            if (specHealer)
                player->CastSpell(player, SPELL_DELICIOUS_BUFFERFISH_ENERGIZE, true);
            else
                player->CastSpell(player, SPELL_DELICIOUS_BUFFERFISH_MOD_DMG, true);
        }
    }

    void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        if (GetTarget())
        {
            GetTarget()->RemoveAurasDueToSpell(SPELL_DELICIOUS_BUFFERFISH_ENERGIZE);
            GetTarget()->RemoveAurasDueToSpell(SPELL_DELICIOUS_BUFFERFISH_MOD_DMG);

            if (InstanceScript* instance = GetTarget()->GetInstanceScript())
            {
                if (Creature* sasszine = instance->instance->GetCreature(instance->GetGuidData(DATA_MISTRESS_SASSZINE)))
                    GetTarget()->CastSpell(GetTarget(), SPELL_DELICIOUS_BUFFERFISH_DROP, true, nullptr, nullptr, sasszine->GetGUID());
            }
        }
    }

    void OnTick(AuraEffect const* /*aurEff*/)
    {
        if (Unit* target = GetUnitOwner())
        {
            if (auto aura = target->GetAura(specHealer ? SPELL_DELICIOUS_BUFFERFISH_ENERGIZE : SPELL_DELICIOUS_BUFFERFISH_MOD_DMG))
            {
                if (aura->GetStackAmount() < 50)
                    aura->ModStackAmount(1);
            }
        }
    }

    void Register()
    {
        OnEffectApply += AuraEffectApplyFn(spell_sasszine_delicious_bufferfish::OnApply, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);
        OnEffectRemove += AuraEffectRemoveFn(spell_sasszine_delicious_bufferfish::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_sasszine_delicious_bufferfish::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
    }
};

//232913
class spell_sasszine_befouling_ink : public AuraScript
{
    PrepareAuraScript(spell_sasszine_befouling_ink);

    void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
    {
        AuraRemoveMode mode = GetTargetApplication()->GetRemoveMode();

        if (mode != AURA_REMOVE_BY_EXPIRE)
            return;

        if (GetTarget())
        {
            if (auto instance = GetTarget()->GetInstanceScript())
            {
                if (instance->GetBossState(DATA_MISTRESS_SASSZINE) == IN_PROGRESS)
                {
                    if (auto sasszine = instance->instance->GetCreature(instance->GetGuidData(DATA_MISTRESS_SASSZINE)))
                        GetTarget()->CastSpell(GetTarget(), SPELL_BEFOULING_INK_MISSILE_2, true, nullptr, nullptr, sasszine->GetGUID());
                }
            }
        }
    }

    void Register()
    {
        OnEffectRemove += AuraEffectRemoveFn(spell_sasszine_befouling_ink::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
    }
};


// 36143
class achievement_sasszine_hydra : public AchievementCriteriaScript
{
public:
    achievement_sasszine_hydra() : AchievementCriteriaScript("achievement_sasszine_hydra") { }

    bool OnCheck(Player* /*player*/, Unit* target) override
    {
        if (!target)
            return false;

        if (Creature* boss = target->ToCreature())
            if (boss->GetAI()->GetData(A_HYDRA))
                return true;

        return false;
    }
};

// 36144
class achievement_sasszine_tartar : public AchievementCriteriaScript
{
public:
    achievement_sasszine_tartar() : AchievementCriteriaScript("achievement_sasszine_tartar") { }

    bool OnCheck(Player* /*player*/, Unit* target) override
    {
        if (!target)
            return false;

        if (Creature* boss = target->ToCreature())
            if (boss->GetAI()->GetData(A_HYDRA))
                return true;

        return false;
    }
};

// 36146
class achievement_sasszine_sauce : public AchievementCriteriaScript
{
public:
    achievement_sasszine_sauce() : AchievementCriteriaScript("achievement_sasszine_sauce") { }

    bool OnCheck(Player* /*player*/, Unit* target) override
    {
        if (!target)
            return false;

        if (Creature* boss = target->ToCreature())
            if (boss->GetAI()->GetData(A_SAUCE))
                return true;

        return false;
    }
};

// 36145
class achievement_sasszine_murloc : public AchievementCriteriaScript
{
public:
    achievement_sasszine_murloc() : AchievementCriteriaScript("achievement_sasszine_murloc") { }

    bool OnCheck(Player* /*player*/, Unit* target) override
    {
        if (!target)
            return false;

        if (Creature* boss = target->ToCreature())
            if (boss->GetAI()->GetData(A_MURLOC))
                return true;

        return false;
    }
};

// 36147
class achievement_sasszine_player : public AchievementCriteriaScript
{
public:
    achievement_sasszine_player() : AchievementCriteriaScript("achievement_sasszine_player") { }

    bool OnCheck(Player* /*player*/, Unit* target) override
    {
        if (!target)
            return false;

        if (Creature* boss = target->ToCreature())
            if (boss->GetAI()->GetData(A_PLAYER))
                return true;

        return false;
    }
};

void AddSC_boss_sasszine()
{
    RegisterCreatureAI(boss_mistress_sasszine);
    RegisterCreatureAI(npc_sasszine_abyss_stalker);
    RegisterCreatureAI(npc_sasszine_slicing_tornado);
    RegisterCreatureAI(npc_sasszine_electrifying_jellyfish);
    RegisterCreatureAI(npc_sasszine_razorjaw_waverunner);
    RegisterCreatureAI(npc_sasszine_sarukel);
    RegisterCreatureAI(npc_sasszine_ossunet);
    RegisterCreatureAI(npc_sasszine_piranhado);
    RegisterCreatureAI(npc_sasszine_delicious_bufferfish);
    RegisterSpellScript(spell_sasszine_hydra_shot_filter);
    RegisterAuraScript(spell_sasszine_burden_of_pain);
    RegisterAuraScript(spell_sasszine_delicious_bufferfish);
    RegisterAuraScript(spell_sasszine_befouling_ink);
    new achievement_sasszine_hydra();
    new achievement_sasszine_tartar();
    new achievement_sasszine_sauce();
    new achievement_sasszine_murloc();
    new achievement_sasszine_player();
}
