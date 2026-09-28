# Chain Attack

The coordinated strike of three units against one Special enemy, opened by breaking its shield. This document covers the shield, its phases, the formation, the sequence of the chain and how elements build up inside it. It holds the rules, and its values are in its own [Balancing](#balancing) section – most of them not yet set. Which enemies are Special, and how many shield phases a boss has, is each level's (`levelcraft`).

> **Related files:** [Magic System](Magic-System.md) · [Combat Arts](Combat-Arts.md) · [Affinity](Affinity.md) – an executed chain attack is an affinity source for all three pairs among its attackers · [The Nexus](Nexus.md) · [Unit Classes](../catalog/Unit-Classes.md) · [Balancing](#balancing) · [Levels → Ch 01](../levels/README.md#part-01-path-of-liberation)

---

## Overview

A chain attack is a powerful coordinated attack by **three units against a single enemy**. It exists only against **Special enemies** – bosses and elite units – and has to be opened first: every Special enemy carries a **shield bar**, and only when it is broken can the three strike in sequence, each with full access to ordinary attacks, tomes and combat arts. Bosses carry several shield phases and change their behaviour after each break.

The purpose in one sentence: **the player decides how to break a boss's shield and which three units, in which order, stand ready to exploit the break – which elements they bring and who still has the MP for an art.**

|              | Chain Attack |
| ------------ | ------------ |
| Phase        | Player Phase |
| Trigger      | Manual – after a shield break, by three units in formation |
| Resource     | MP, for the tomes and arts used inside the chain |
| Core feature | Only against Special enemies; three strikes in sequence; elements build up across them |

---

## Prerequisites

| Condition | Rule |
| --------- | ---- |
| Enemy type | Only against Special enemies (bosses, elite units). Which enemies are Special is set per level |
| Shield | The enemy's current shield phase must be broken (*Core Rules → 1*) |
| Units | Exactly **three** player units in position |
| Formation | A triangle around the enemy (*Core Rules → 3*) |
| Units that cannot take part | Summoned beasts ([Beast Summon](Beast-Summon.md#interaction-with-other-mechanics)) |
| System active | From **Ch 01**, fight 3 (*Introduction*) |

---

## Cost

| What | Value |
| ---- | ----- |
| Resource | The **MP** of every tome attack and art used inside the chain. What a unit spends there is gone for the rest of the map |
| Action | Written in its conservative form: **all three units spend their action** on the chain, and none may have acted before it this turn (*Open Decisions → 1*) |
| Further cost | **The turns spent breaking the shield**, and **the formation**: three units drawn around one enemy are three units not holding anything else, and they stand where the boss's next phase will strike |
| Visible before use | The shield bar and its current phase are shown on the enemy; the forecast shows how much each attack will take off it and whether it will break. Before the chain starts, the three strikes are previewed in order with the elements and reactions they will produce |

---

## Core Rules

### 1 – Breaking the shield

Every Special enemy carries a **shield bar** that must be brought to zero before a chain attack is possible. Attacks wear it down by kind:

| Action | Effect on the shield bar |
| ------ | ------------------------ |
| Elemental reactions | High reduction – the most effective method |
| Critical hits | Medium reduction |
| Certain combat arts | Medium reduction |
| Ordinary attacks | Low reduction |

The **order** is the rule: reactions most, then critical hits and certain arts, then ordinary attacks. The **amounts** are tuning values in [Balancing](#balancing), and not yet set. Using the element system is therefore not optional: it is the fastest way into the chain.

**Ordinary attacks always wear the shield down a little.** The older wording allowed "low or no reduction"; the Ch 01 fight against the red soldier has to be breakable before magic exists, with crits, arts and ordinary attacks alone, and a Bronze weapon cannot crit ([Balancing Guide → Weapon Tier Progression](../Balancing-Guide.md#weapon-tier-progression)). Only the low reading leaves that fight winnable (*Open Decisions → 2*). Which arts count as *certain combat arts* is not marked in the catalog (*Open Decisions → 3*).

Two Nexus abilities keep out of this work by their own rules: a **Bloodoath** echo strike and a **Dawnbreak** strike do not wear the shield down ([The Nexus → Interaction](Nexus.md#interaction-with-other-mechanics)).

### 2 – Shield phases

Bosses have **several shield phases**. Each is harder to break than the one before.

| Phase | Difficulty | Boss reaction |
| ----- | ---------- | ------------- |
| Phase 1 | Normal | New attack patterns |
| Phase 2 | Raised | Stronger moves, a new element |
| Phase 3 *(if present)* | High | The dramatic close of the fight |

After each broken phase the boss changes its behaviour: new attack patterns, stronger moves, or a new element it applies. Bosses are visibly weakened with every phase, which strengthens the story moment at the end. How many phases a boss has is set in its level document ([Balancing](#balancing) for the range).

### 3 – Positioning

The range of the three units decides the formation:

| Range of the units | Positioning rule |
| ------------------ | ---------------- |
| Range 1 | All three must stand directly adjacent to the enemy |
| Range 2+ | The units may form the triangle at a distance |
| Mixed range | The lowest range among the three applies |

### 4 – Sequence

1. Break the current shield phase.
2. Bring three units into the triangle formation.
3. Start the chain attack.
4. Each unit attacks in turn – with full access to ordinary attacks, tomes and combat arts.
5. Elements build up across all three attacks (*→ 5*).

The order of the three strikes is chosen when the chain starts. Whether the enemy counters each strike is not written (*Open Decisions → 4*).

### 5 – Elemental build-up

The order of the attacks is a tactical decision of its own. Inside a chain, the elements of the three strikes **build up** on the target, so a **three-element reaction** is possible within a single chain attack. This is the one place where the [Magic System](Magic-System.md#4--how-reactions-are-triggered) writes that elements survive a reaction to meet a third.

| Attack | Action | Result |
| ------ | ------ | ------ |
| Unit 1 | Pyro tome / Pyro art | Pyro applied |
| Unit 2 | Hydro tome / Hydro art | Two-element reaction (Verdampfen) |
| Unit 3 | Aero tome / Aero art | Three-element reaction (Feuersbrunst) |

All three-element reactions: [Magic System → Three-element reactions](Magic-System.md#three-element-reactions). Before Ch 05 no element is applied, so a chain builds nothing up (*Introduction*).

### 6 – Who chains

The chain attack is a **player** mechanic: the shield is a Special enemy's, and no player unit carries one (*Open Decisions → 5*).

---

## Acquisition / Access

The chain attack is not learned. It is **universal**: every player unit can take part as soon as the conditions on the battlefield are met.

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| Universal | Open to any three player units in formation | Once the shield is broken and the formation stands |
| Shield break | Precondition: the shield bar must be brought to zero | Only against Special enemies |

A chain attack's own rules read no affinity – three strangers can chain ([Affinity](Affinity.md#interaction-with-other-mechanics)).

---

## Strategic Depth

The chain attack rewards preparation on several levels:

- **Before the fight:** which three units will stand in position, and which elements do they cover?
- **During the fight:** break the shield through reactions, not by hitting it. Every phase the boss changes, so the plan that broke phase 1 may not break phase 2.
- **Inside the chain:** plan the order of the strikes for the strongest reactions, and keep the MP budget in mind – who still has enough for an art?
- **After the chain:** three units stand around a boss that is about to change its pattern. Where they stand when the next phase begins is part of the decision.

---

## Design Pillars

*Proposed by Rulewright, pending Dardan's review (2026-09-29).*

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | **Yes.** It is the one attack that three units make together, and every executed chain is an affinity source for all three pairs among them – the richest per pair, and the rarest ([Affinity → Points per source](Affinity.md#points-per-source)). It reads no rank, so any three can chain, and chaining is how three become a bond |
| **Depth** | Easy to learn, hard to master? | **Yes.** "Break the shield, then three strike together" is seconds. Mastery is the order of three elements, the MP to afford it, and a boss that changes after every break |
| **Weight** | Do the decisions have long-term consequences? | **Partly.** A chain is a battle's decision, and its MP and positions are spent for that battle. The long-term weight is carried by the affinity it feeds and by who survives the boss's next phase |
| **Integration** | Does the mechanic tell a story? | **Yes.** It is introduced when the orphans, with sticks and a rusty dagger, face the red soldier together – the tutorial box already asks for "Kombo-Angriffe mit anderen Charakteren". Bosses that weaken visibly phase by phase carry the story moment at the end of the fight |
| **Fairness** | Is the challenge respectful of the player's time? | **Yes, with two conditions.** The shield bar, what each attack takes off it and the three strikes must all be previewed. And a **scripted** end, as in Ch 01, must read as story and not as a failure the player could have prevented – the chain there opens the fight's end, it does not decide it (*Open Decisions → 6*) |

**Anti-pillar check:** **No grinding:** nothing is earned outside the fight. **No power without a price:** the chain costs the shield break, three units' actions and their MP, and it leaves three units standing in the boss's reach. **Nothing that works only with over-trained units:** ordinary attacks always wear the shield, so a chain is reachable with weak units, as Ch 01 requires. **Nothing generic:** the shield-break into a party chain is borrowed from Xenoblade; what is this game's own is that it runs on the grid, needs a formation, and is where elements build up into three-element reactions.

---

## Introduction

**First chapter:** **Ch 01**, *Every End…*, in **fight 3** – the fight against the red soldier. Decided by Dardan (2026-09-29). The chapter's tutorial box for it announces a boss fight and gives the hint *"Nutze Kombo-Angriffe mit anderen Charakteren, um effektiv zu kämpfen!"* ([Ch 01](../../story/chapters/Part-01-Path-Of-Liberation/Chapter-01-Every-End.md)).

**How it is introduced:** the soldier is far stronger than the children, and nothing a single child does to him matters – the situation the chain exists for. Two things constrain it, and both are written here in their cautious form (*Open Decisions → 2, 6*):

- **No elements yet.** Reactions exist only from Ch 05 ([Magic System](Magic-System.md#introduction)). The soldier's shield must break without them: critical hits, combat arts and ordinary attacks. Ordinary attacks therefore always wear the shield down (*Core Rules → 1*). The arts the children have are the prologue arts from the prose – Dardan's *Leg Sweep* from fight 2 and Maksimo's *Sand in the Eyes* ([catalog](../catalog/Combat-Arts.md#prologue-combat-arts-ch-01-only)) – proposed to count as shield-wearing arts, and usable inside the chain. Ivan's *Distract* and Hasan's *Call Orders* ([catalog](../catalog/Abilities.md#prologue-abilities-ch-01-only)) help bring three children into formation around a soldier who would otherwise strike whoever he likes.
- **The fight is scripted.** In the chapter, the red soldier wounds Dardan and the silver knight kills the soldier. The chain has to fit that. **Conservative form:** the soldier has **one** shield phase; the player breaks it and executes **one** chain attack; the chain does not kill him; then the scripted end follows. What the chain *does* to him – damage that the scene then outweighs – and how the map hands over to the script are Level 01's (`levelcraft`).

**What the player must already know:** movement, attacking and items (fight 1), weapon advantage, terrain, combat arts and abilities (fight 2 of the same chapter).

**Level index.** Ch 01 carries *Chain Attack* in the *New Mechanics* column of the [level index](../levels/README.md#part-01-path-of-liberation) and in the [Progression System](../Progression-System.md#part-01-path-of-liberation-chapters-1-8). The box names it *Kombo-Angriffe*; whether it should name it *Kettenangriff* is a later Lorekeeper job, not this document's.

---

## Balancing

This section holds the chain attack's values. Created on 2026-09-29; **almost everything in it is not yet set**, and is listed so that the gaps are visible rather than filled.

| Parameter | Value |
| --------- | ----- |
| Units in a chain | 3 – a rule, not a tuning value (it is in *Core Rules*) |
| Shield phases per boss | 2–3; the number for each boss is set in its level document. The Ch 01 red soldier is written with 1 (*Introduction*) |
| Shield bar size per phase | *not yet set* |
| Reduction per elemental reaction | *not yet set* – must be the highest |
| Reduction per critical hit | *not yet set* – medium |
| Reduction per qualifying combat art | *not yet set* – medium |
| Reduction per ordinary attack | *not yet set* – low, never zero |
| How much harder each phase is than the one before | *not yet set* |

### What each value tunes

| Parameter | What it tunes |
| --------- | ------------- |
| Shield bar size, reductions | How many turns a break takes, and how much faster reactions make it than plain hitting |
| Phase step | How much the later phases demand a changed plan |
| Shield phases per boss | How long a boss fight is – set per level against its story weight |

**Rules, not tuning values**, and therefore in the rules above: only Special enemies; exactly three units; a triangle formation, whose spacing follows the lowest range; the order *reactions > crits = certain arts > ordinary attacks*, with ordinary attacks never at zero; elements build up across the three strikes; the chain is a player mechanic.

---

## Interaction with Other Mechanics

| Mechanic | Interaction |
| -------- | ----------- |
| **[Magic System](Magic-System.md)** | Reactions break the shield fastest, and the chain is where three elements build up into a three-element reaction |
| **[Combat Arts](Combat-Arts.md)** | All three units may use arts in the chain; certain arts wear down the shield on their own |
| **[Affinity](Affinity.md)** | An executed chain feeds all three pairs among the attackers ([Affinity → Points per source](Affinity.md#points-per-source)). The chain reads no rank |
| **[The Nexus](Nexus.md)** | Exchange may put Dardan into position; the swap is a command, the chain the action. Bloodoath echo strikes and Dawnbreak do not wear the shield down, and strikes inside a chain do not echo (conservative; [The Nexus → Open decisions → 38, 47](Nexus.md#open-decisions)) |
| **[Biorhythm](Biorythm.md)** | Each attacker reads its own rhythm on its own strike. Biorhythm does not touch the shield |
| **[Beast Summon](Beast-Summon.md)** | A summoned beast cannot take part; it can hold the enemy where the three need it |
| **Level design** (`levelcraft`) | Each level sets which enemies are Special and how many phases each boss has. A scripted end, as in Ch 01, must be designed so that the chain opens it rather than being overruled by it |

---

## UI & Display

- **On a Special enemy:** the shield bar and the current phase of the total.
- **In the forecast:** how much the attack will take off the shield, and whether it breaks it.
- **When the chain is offered:** the three units, the order, and each strike's element and reaction, before the player confirms.

---

## Open Decisions

Everything below is written into the rules above in its **cautious form**. Each is Dardan's to confirm or change.

**Decided by Dardan and therefore not listed:** three units, Special enemies only, the shield break as the gate, several phases per boss, elements building up inside the chain; the introduction in Ch 01, fight 3 (2026-09-29); in Ch 01 the children are Citizens at level 1 whose arts and abilities are improvised actions from the prose, and nothing of Ch 01 carries over (2026-09-29).

1. **What the chain costs in actions.** Conservative: all three units spend their action and none may have acted before it. The alternative – one unit's action starts it and the other two join without spending theirs – would make the chain far cheaper.
2. **Ordinary attacks against the shield.** The old table said "low or no reduction". Written as **low, never zero**, because the Ch 01 shield must break before magic exists and a Bronze weapon cannot crit. The alternative – no reduction – would leave Ch 01 fight 3 unbreakable unless its units hold arts that count.
3. **Which combat arts wear the shield down.** "Certain combat arts" are not marked in the catalog. Conservative for the regular arts: none until the catalog marks them. **Proposed for the prologue:** the two Ch 01 arts, *Leg Sweep* and *Sand in the Eyes*, count – so the Ch 01 shield breaks through arts and ordinary attacks, not ordinary attacks and rare crits alone. Dardan's to confirm.
4. **Counters inside the chain.** Not written. Conservative reading: the enemy counters each strike as it would any attack. The alternative – no counters during a chain – is a common genre choice and makes the chain safer.
5. **Enemies do not chain.** Player-only, because the shield exists only on Special enemies. Whether a boss's elite guard could ever chain a player unit is Dardan's.
6. **The Ch 01 scripted end.** Conservative form: one shield phase, one chain, the chain does not kill the red soldier, then the script (the soldier wounds Dardan, the silver knight kills him). How the map hands over to the script so that it does not read as a failure is Level 01's.

---

**Version:** 2.0
**Created:** 2026-06-09
**Last updated:** 2026-09-29 – converted to English on the mechanic template and renamed *Chain Attack*. Cost, Design Pillars (proposal), Introduction (Ch 01, fight 3 – decided by Dardan), Balancing (values not yet set) and Open Decisions added; ordinary attacks now always wear the shield down.
**Cross-references:** [Magic System](Magic-System.md) · [Combat Arts](Combat-Arts.md) · [Affinity](Affinity.md) · [The Nexus](Nexus.md) · [Biorhythm](Biorythm.md) · [Beast Summon](Beast-Summon.md) · [Levels](../levels/README.md)
