# Abilities

The abilities of Vigilans Nexum: what an ability is, how a unit learns many and equips few, the kinds of trigger, and where abilities come from. This document holds the rules, and its values – Capacity per tier, Capacity cost, trigger chances – are in its own [Balancing](#balancing) section. Which abilities exist is in the [catalog → Abilities](../catalog/Abilities.md).

> **Related files:** [Abilities (catalog)](../catalog/Abilities.md) · [Combat Arts](Combat-Arts.md) · [Magic System](Magic-System.md) · [The Nexus](Nexus.md) · [Growth Modifiers](Growth-Modifiers.md) · [Unit Classes](../catalog/Unit-Classes.md) · [Balancing](#balancing) · [Levels → Ch 01](../levels/README.md#part-01-path-of-liberation)

---

## Overview

Abilities give every unit its **combat identity**. Most are passive and fire on their own – on the Enemy Phase above all, when the player cannot act – by a chance, a condition or an event, and cost no MP. Some are active: an action, a free command or a free swap the player chooses. A unit **learns** far more abilities over a campaign than it can **equip**, and the limit is its **Capacity**, which rises with its class tier.

The purpose in one sentence: **the player decides which few of the abilities a unit has learned it carries into this battle, and which unit receives a rare scroll.**

|           | Abilities |
| --------- | --------- |
| Phase     | Mostly the Enemy Phase; active abilities on the Player Phase |
| Trigger   | Automatic (passive, chance-based, situational, event) or chosen (active) |
| Resource  | No MP. The price of equipping is Capacity |
| Focus     | Reactive – offensive and defensive |

---

## Prerequisites

| Condition | Rule |
| --------- | ---- |
| Learned | The ability must have been acquired first – by class, level, scroll, quest or sheet (*Acquisition*) |
| Equipped | Only equipped abilities work. The sum of their Capacity costs may not exceed the Capacity of the unit's current class tier (*Core Rules → 1*) |
| Class abilities | Learnable only in their class; kept after leaving it |
| Nexus abilities | Take no Capacity and cannot be unequipped ([The Nexus → Open decisions → 15](Nexus.md#open-decisions)) |
| System active | From **Ch 01** (*Introduction*) |

---

## Cost

| What | Value |
| ---- | ----- |
| Resource | **Capacity.** Every equipped ability occupies Capacity; every slot spent on one ability is a slot not spent on another ([Balancing](#balancing)). No MP |
| Action | Passive, chance-based, situational and event abilities: **none**. Active abilities: an **action**, a **command** (movement ends, the action remains) or **free**, as the catalog row says |
| Further cost | **What is left at home.** A unit that has learned eight abilities and carries three leaves five behind. **Scrolls** are rare items: the unit that gets one is the unit that does not get the next |
| Visible before use | The loadout screen shows every learned ability with its Capacity cost against the unit's Capacity. A chance-based ability's trigger chance is shown on the unit and in the battle forecast, for enemies as well (*UI & Display*) – an ability that decides a fight by a chance the player could not see would break Pillar 5 |

---

## Core Rules

### 1 – Learning and equipping

A unit can **learn** any number of abilities, but only **equip** as many as its Capacity allows. Capacity belongs to the **class tier** the unit is in and rises with each promotion; each ability has a **Capacity cost** by its strength. Both tables are tuning values and live in [Balancing](#balancing).

- Only equipped abilities work.
- A promotion raises the Capacity at once; nothing is unequipped by a promotion.
- The **Nexus abilities** sit outside Capacity: they take none and cannot be unequipped. That is forced by Ch 08, where Dardan is in a Base class ([The Nexus → Open decisions → 15](Nexus.md#open-decisions)). Whether *Nexus Mastery*, listed in the catalog with a Capacity cost, follows the same rule is [The Nexus → Open decisions → 50](Nexus.md#open-decisions).
- When the loadout may be changed is not yet written (*Open Decisions → 2*).
- **Capacity does not apply in the Ch 01 prologue.** The Ch 01 loadout is fixed by the chapter: every child carries the Citizen class abilities and the prologue abilities the chapter gives it, all at once, and no loadout screen is offered. There is nothing to choose, so there is nothing for Capacity to limit (decided form, 2026-09-29; *Balancing → Capacity by tier*).

**Prologue abilities.** In Ch 01 the Vigilant Knights are children, mechanically Citizens at level 1, and they hold **improvised abilities taken from the chapter's prose** – each held by the child or children the text shows doing it (decided by Dardan, 2026-09-29). They take no Capacity, are held from the start of the fight that shows them to the end of the chapter, and then disappear; no unit ever has them again. They are listed in the [catalog → Prologue Abilities](../catalog/Abilities.md#prologue-abilities-ch-01-only).

### 2 – Categories

| Category | Examples |
| -------- | -------- |
| **Defensive** | Reduce damage, dodge, raise a shield, ward off a status |
| **Offensive** | Automatic counter, counter with an element, retaliation damage |
| **Hybrid** | Absorb damage and turn it into a counter; dodge and counter at once |

### 3 – Trigger types

The *Trigger* column of every catalog row names one of these.

| Trigger type | Description | Scales with |
| ------------ | ----------- | ----------- |
| **Passive** | Always on while equipped | – |
| **Luck-based** | A chance, rising with Luck ([Balancing → Trigger chances](#trigger-chances)) | Luck |
| **Dex-based** | A chance, rising with Dexterity – often under a condition, such as on a critical hit | Dexterity |
| **Speed-based** | A chance, rising with Speed | Speed |
| **Situational** | Fires under a fixed condition (e.g. HP at or below half) | Fixed – no stat |
| **Combined** | A chance plus a situational condition | Luck, Dex or Speed, plus the situation |
| **Event** | Fires when a named event happens: *On hit*, *On critical hit*, *On defeating an enemy*, *On healing*, *On triggering a reaction*, *On stealing*, *After an action*, *Enemy Phase* | Fixed – no stat |
| **Active (action)** | Chosen by the player; it is the unit's action for the turn | Fixed – no stat |
| **Active (command)** | Chosen by the player; it ends the unit's movement for the turn, and the action remains (Exchange, Lifeline, Wavelength – [The Nexus](Nexus.md)) | Fixed – no stat |
| **Active (free)** | Chosen by the player; it costs neither movement nor action, and its row says how often it may be used | Fixed – no stat |

Luck, Dexterity and Speed therefore matter beyond their own formulas: they decide how reliably a unit reacts on the Enemy Phase. The older version of this table named a **Skill**-based trigger; no Skill stat exists, and the catalog has always used *Dex-based*, so the row is named for the stat that exists.

### 4 – Class abilities and scroll abilities

| Pool | Acquired by | Available to |
| ---- | ----------- | ------------ |
| **Class abilities** (Class, Mastery) | Entering the class; the Mastery Ability later, by staying in it | Only in the corresponding class |
| **Scroll abilities** (General) | Scrolls – rare items and quest rewards | Every class, every character |

Scrolls are **rare resources**: the player must decide deliberately which character gets one.

### 5 – Permanence

Every learned ability – class or scroll – is kept **permanently**, through every promotion. The one exception is the prologue abilities: Ch 01 is self-contained and nothing carries over from it ([Progression System](../Progression-System.md#part-01-path-of-liberation-chapters-1-8)). Capacity decides only what is equipped at once. A unit that stays longer in a class before promoting ends with more abilities to choose from than one that rushes through; two units on the same class path play differently when their scroll abilities differ.

### 6 – Both sides

Enemies hold abilities under the same rules. The Nexus presumes it: [Earthbound](Nexus.md#5--earthbound) seals an enemy's abilities, and *Unbreakable* is written as an enemy Armored General's. The chance of an enemy's chance-based ability is shown like a player unit's.

---

## Acquisition / Access

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| Promotion | Class abilities, learned automatically on entering the class | Only in the corresponding class |
| Level-up / staying in the class | The class's Mastery Ability, and occasionally smaller abilities | Per class |
| Scrolls | General abilities (e.g. *Adept*) | Every class, every character |
| Quests / story | Unique abilities | Exclusive – not learnable otherwise |
| Character sheet | Personal abilities | Per sheet, set by `statcraft` after the story half |
| Ch 01 prologue | Improvised abilities taken from the prose, each for the child or children the text shows doing it; no Capacity | Ch 01 only; gone afterwards ([catalog](../catalog/Abilities.md#prologue-abilities-ch-01-only)) |
| Lord Kit | Dardan's and Hasan's kit abilities; Dardan's Nexus abilities by chapter, outside Capacity | Dardan and Hasan ([Progression System](../Progression-System.md#class-tiers--requirements)) |

---

## Strategic Depth

- **The loadout is a plan for this map.** Three slots in a Base class force a real choice: the class ability, a scroll ability, or a Citizen ability kept from Ch 01. A map full of archers asks for a different loadout than a corridor.
- **Lingering pays in abilities.** Promoting the moment the gate opens is better for growth ([Growth Modifiers](Growth-Modifiers.md)); staying teaches the class's Mastery Ability, which the unit keeps forever.
- **Scrolls are allocation.** A rare scroll given to one unit is a scroll not given to another, and the choice cannot be taken back.
- **The Enemy Phase is where abilities play.** The player positions on his own turn for what his units' abilities will do on the enemy's – and reads the enemy's abilities the same way.

---

## Design Pillars

*Proposed by Rulewright, pending Dardan's review (2026-09-29).*

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | **Partly.** Several class abilities read an ally – *Hold Fast*, *Guard*, *Intercession*, *Sworn Shield* – and reward standing together. The Capacity system itself is per unit and reads no affinity. The band's own abilities, the Nexus kit, deliberately sit outside it |
| **Depth** | Easy to learn, hard to master? | **Yes.** "Each unit carries a few passives" is seconds. Mastery is choosing the loadout per map from a growing pool, and reading the enemy's abilities before walking into them |
| **Weight** | Do the decisions have long-term consequences? | **Yes.** The class forks decide which class abilities a unit can ever learn; a scroll given away is gone; staying in a class for its Mastery Ability costs growth. The loadout itself can be changed and is a per-battle decision |
| **Integration** | Does the mechanic tell a story? | **Yes.** A personal ability is the mechanical translation of the person on the sheet. The Citizen's *Aptitude* is the orphans overtaking the veterans; *Adaptability* is a child who picks up whatever lies in reach |
| **Fairness** | Is the challenge respectful of the player's time? | **Yes, on one condition:** every chance-based ability's chance – the enemy's too – is shown before the player commits. Without it, a Luck trigger on an enemy would be a random blow from nowhere. Today the chances themselves are not yet set (*Open Decisions → 3*) |

**Anti-pillar check:** **No grinding:** abilities come from classes, tiers and rare scrolls, not from repetition; the only thing staying longer buys is a Mastery Ability, paid for in growth. **No power without a price:** every ability costs Capacity, and the strongest cost the most. **Nothing that works only with over-trained units:** chances scale with a stat, but situational and event abilities work at any level. **Nothing generic:** the ability pool is Fire Emblem's; what is this game's own is the Capacity budget that forces the choice at every tier, and the band kept outside it.

---

## Introduction

**First chapter:** **Ch 01**, *Every End…*, in **fight 2** – the fight against the older children, objective *Besiege den Anführer*. Decided by Dardan (2026-09-29).

**How it is introduced:** through an **improvised action the prose already shows** (decided by Dardan, 2026-09-29). In fight 2 the orphans "deckten einander, halfen sich auf, lockten die feindlichen Kinder in die Enge zwischen den Ständen" – that is *Cover Each Other* ([catalog](../catalog/Abilities.md#prologue-abilities-ch-01-only)): standing next to another orphan makes a child harder to hit, and it fires by itself, which is exactly what an ability is as against an art. Fight 2 also teaches terrain, and the same line has them drawing the enemy into the narrows between the stalls. In fight 3, Ivan's *Distract* and Hasan's *Call Orders* follow as the first active abilities. Every Knight also holds the Citizen class abilities *Adaptability*, *Discipline* and *Aptitude* ([catalog → Citizen](../catalog/Abilities.md#citizen)). The loadout is fixed and Capacity does not apply (*Core Rules → 1*). How the map places it is Level 01's (`levelcraft`).

**The prologue abilities do not last.** Ch 01 is a self-contained prologue, and nothing carries over into Ch 02. The first loadout choice under Capacity comes after it. **The chapter's tutorial box for fight 2 does not list abilities** – it names *Waffenvorteile*, *Umgebungsvorteile* and *Kampfkünste*. Whether it should is a later Lorekeeper job, not this document's; this document does not change chapter text.

**What the player must already know:** movement, attacking and items – fight 1 of the same chapter.

**Level index.** Ch 01 carries *Abilities* in the *New Mechanics* column of the [level index](../levels/README.md#part-01-path-of-liberation) and in the [Progression System](../Progression-System.md#part-01-path-of-liberation-chapters-1-8).

---

## Catalog

All entries: [Abilities](../catalog/Abilities.md) – personal, class, mastery, Lord Kit, general and Canto. The character sheet (*Abilities*, *Personal Ability*) and the classes in [Unit Classes](../catalog/Unit-Classes.md) point to the same list. An ability that stood only here would exist for neither.

---

## Balancing

This section holds the values of the ability system: Capacity per tier, Capacity cost per ability strength, and the trigger chances. Converted to English on 2026-09-29; the Luck formula moved here out of the trigger table.

**Why Capacity stays here and not in the Balancing Guide.** Capacity is read by the ability loadout and by nothing else: the Nexus abilities sit *outside* it by rule, the Lord Kit is simply the top row of the table, and the catalog prices each ability on the cost scale. Changing a Capacity value changes how many abilities a unit carries – the strength of this one system – and no formula, cap or budget of another system. The texts that quote a Capacity value elsewhere ([Growth Modifiers → Cost](Growth-Modifiers.md#cost), [The Nexus → Open decisions → 15](Nexus.md#open-decisions)) quote it as an example and should link here.

### Capacity by tier

| Class tier | Capacity |
| ---------- | -------- |
| Citizen – Ch 01 prologue | Does not apply: the loadout is fixed (*Core Rules → 1*) |
| Citizen – Ch 02 to Ch 06 | *not yet set* (*Open Decisions → 1*) |
| Base | 3 |
| Intermediate | 5 |
| Advanced | 7 |
| Master | 9 |
| Lord Kit | 11 |

### Capacity cost

| Ability strength | Capacity cost |
| ---------------- | ------------- |
| Weak / passive ability | 1 |
| Medium ability | 2 |
| Strong / rare ability | 3 |
| Unique / character-specific | 4 |

### Trigger chances

```
Luck-based chance = base chance + (Luck ÷ 2) %
```

| Parameter | Value |
| --------- | ----- |
| Base chance of each Luck-based ability | *not yet set* |
| Dex-based chance formula and base chances | *not yet set* |
| Speed-based chance formula and base chance | *not yet set* |

**Why a rule and not a number for Ch 01.** Capacity exists to force a choice of loadout. In the prologue there is none: the chapter fixes what each child carries, and nothing of Ch 01 carries into Ch 02. A Citizen value set for Ch 01 would be a number that limits nothing in the chapter it was set for, and would pre-empt the real question – what a Citizen carries in Ch 02–06, where the choice exists. So Capacity is switched off for the prologue and the Citizen row for the real game stays open.

### Prologue values

*Proposal (2026-09-29).* The values of the Ch 01 prologue abilities ([catalog](../catalog/Abilities.md#prologue-abilities-ch-01-only)). They exist in Ch 01 only.

| Parameter | Value | Why |
| --------- | ----- | --- |
| Hit lost by attacks against a unit with *Cover Each Other* | −10 | The same size as the [Battle Staff Guard](../Balancing-Guide.md#battle-staff-guard), the existing situational Hit penalty; below the triangle swing of 15, so in the fight that teaches weapon advantage, standing together never outweighs picking the right weapon |
| Hit gained through *Call Orders* | +10 | The size of *Hit Rate +10*, the smallest Hit bonus in the ability catalog |
| Range of *Call Orders* | 2 tiles | The reach of the widest positional commands in the catalog (range 2); a voice carries a little further than an arm |

### What each value tunes

| Parameter | What it tunes |
| --------- | ------------- |
| Prologue values | How much the children's improvised abilities help them in Ch 01 |
| Capacity by tier | How many abilities a unit carries at each point of the campaign – how hard the loadout choice is |
| Capacity cost | What a strong ability displaces |
| Trigger chances | How reliable a chance-based ability is, and how much Luck, Dex and Speed are worth beyond their own formulas |

**Rules, not tuning values**, and therefore in the rules above:

- Learn many, equip up to Capacity; only equipped abilities work.
- Capacity belongs to the class tier and rises with it.
- Nexus abilities take no Capacity and cannot be unequipped.
- Learned abilities are permanent; scrolls are the only way to a General ability.
- Chance-based triggers scale with a stat; situational and event triggers read no stat.

---

## Interaction with Other Mechanics

| Mechanic | Interaction |
| -------- | ----------- |
| **[Combat Arts](Combat-Arts.md)** | Complementary: arts are chosen on the Player Phase and cost MP; abilities fire on their own and cost Capacity |
| **[The Nexus](Nexus.md)** | The Nexus abilities are Lord Kit abilities outside Capacity. *Earthbound* removes an enemy's abilities for its duration |
| **[Growth Modifiers](Growth-Modifiers.md)** | *Aptitude* is a Citizen ability and works only while equipped, so keeping it costs a slot in every later class |
| **[Magic System](Magic-System.md)** | Several abilities fire on triggering a reaction or create terrain and fields; they read the Magic System's reactions and fields |
| **[Affinity](Affinity.md)** | No ability is lent or shared between units – the reason Skill Links stay rejected |
| **Passive bonus budget** | Class abilities that add a flat value always (*Hit Rate +10*, *Avoid +10* …) are listed as *not counted yet* in the [passive bonus budget](../Balancing-Guide.md#passive-bonus-budget); whether they belong in it is open there |
| **Biorhythm** | The Elementalist's *Resonance* shares its name with a biorhythm state ([Biorhythm → Open decisions → 14](Biorythm.md#open-decisions)) |

---

## UI & Display

- **The loadout screen** lists every learned ability with its Capacity cost, the equipped ones marked, against the unit's Capacity.
- **On the unit and in the forecast:** every equipped ability, and for a chance-based one its current chance – for enemies as well.
- **When an ability fires**, it is named on screen, so the player knows which rule changed the result.

---

## Open Decisions

Everything below is written into the rules above in its **cautious form**. Each is Dardan's to confirm or change.

**Decided by Dardan and therefore not listed:** learn many, equip by Capacity; permanence through promotion; scrolls as the rare route to General abilities; Nexus abilities outside Capacity; abilities introduced in Ch 01, fight 2 (2026-09-29); **the Ch 01 abilities are improvised actions taken from the prose, the children are Citizens at level 1, and the abilities exist in Ch 01 only – nothing carries over from the prologue** (2026-09-29).

1. **The Citizen's Capacity in Ch 02–06.** For Ch 01 it is settled by rule: the prologue loadout is fixed and Capacity does not apply (*Core Rules → 1*). What remains is the real game before the class choice. The three Citizen abilities cost 1 + 1 + 2 = 4 together. At 3, the Base value, a Citizen chooses from Ch 02 on; at 4 it carries all three and the first choice comes at the Ch 06 promotion, where [Growth Modifiers](Growth-Modifiers.md#cost) already assumes a Knight in a Base class keeps *Aptitude* with one slot left. No value is written in.
2. **When the loadout can change.** Not written. Conservative reading: in the preparations before a battle, not during it. The alternative – swapping between turns – would make Capacity a much weaker constraint.
3. **Trigger chances.** Only the Luck formula exists; the base chances, and the Dex- and Speed-based formulas, are not set. Until they are, no chance-based ability can be shown in a forecast, which Pillar 5 requires.
4. **Nexus Mastery's Capacity.** The catalog lists it at Capacity 4, although every Nexus ability takes none. Tracked as [The Nexus → Open decisions → 50](Nexus.md#open-decisions); not resolved here.
5. **Enemies' abilities.** Written as symmetric (*Core Rules → 6*). Which enemies carry which abilities is the class catalog's and the level documents'.

---

**Version:** 2.0
**Created:** 2026-06-09
**Last updated:** 2026-09-29 – converted to English on the mechanic template. Cost, Design Pillars (proposal), Introduction (Ch 01, fight 2 – decided by Dardan) and Open Decisions added; the Luck formula moved into [Balancing](#balancing); the trigger table now names every trigger the catalog uses, and *Skill-based* is named *Dex-based* after the stat that exists; Capacity checked and kept here as a value of this system alone. Same day: the Ch 01 prologue abilities (decided by Dardan) and the rule that Capacity does not apply in the prologue.
**Cross-references:** [Abilities (catalog)](../catalog/Abilities.md) · [Combat Arts](Combat-Arts.md) · [Magic System](Magic-System.md) · [The Nexus](Nexus.md) · [Growth Modifiers](Growth-Modifiers.md) · [Unit Classes](../catalog/Unit-Classes.md)
