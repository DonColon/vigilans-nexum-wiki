# Weapon Triangles

The rules of the four weapon orderings in Vigilans Nexum – the Close Combat wheel, the outer Weapon Triangle, the Natura cycle and the Magic Triangle: what stands inside them and what stands outside, how one combat's matchup is read, what an advantage does, and how an effect can ignore or reverse it. This document holds the rules. The edges themselves – which type beats which, drawn as graphs with the reason for each edge – are registered in the catalog, and the bonus values are in the Balancing Guide.

> **Related files:** [Weapons → Close Combat](../catalog/Weapons.md#close-combat) · [Weapons → Weapon Triangle](../catalog/Weapons.md#weapon-triangle) · [Magic Tomes → Natura Magic](../catalog/Magic-Tomes.md#natura-magic) · [Magic Tomes → Magic Triangle](../catalog/Magic-Tomes.md#magic-triangle) · [Balancing Guide → Weapon Triangle Bonuses](../Balancing-Guide.md#weapon-triangle-bonuses) · [Combat Fundamentals](Combat-Fundamentals.md) · [Magic System](Magic-System.md) · [Levels → Ch 01](../levels/README.md#part-01-path-of-liberation)

---

## Overview

Every weapon a unit can fight with belongs to one of two families. **Physical weapons** are ordered twice: inside the **Close Combat wheel**, seven types each beat two and lose to two; above it, the **outer Weapon Triangle** sets Close Combat against Bow and Bow against Artillery. **Tomes** are ordered twice as well: the seven Natura elements beat one another in the **Natura cycle**, and the **Magic Triangle** sets Lux against Umbra and Umbra against Natura. When two units fight, the two weapons they hold decide one matchup – advantage, disadvantage or neutral – and that matchup enters the combat as the Triangle Bonus. The families never meet: a tome against a sword is neutral, and so are the Staff and a beast's natural weapon against anything.

The purpose in one sentence: **the player decides which of his units meets which enemy, and with which weapon, because the matchup he can read on the map before he moves turns the same two units into a good fight or a bad one.**

|              | Weapon Triangles |
| ------------ | ---------------- |
| Phase        | Player Phase and Enemy Phase |
| Trigger      | Every combat, read from the two equipped weapons |
| Resource     | None |
| Core feature | Four orderings in two families that never cross; one term, one value set for all four |

---

## Prerequisites

| Condition | Rule |
| --------- | ---- |
| System active | From **Ch 01, fight 2**, for both sides (*Introduction*). A family's matchups exist from the chapter its weapons do: Sword, Lance, Axe and Bow from Ch 01, the rest of the physical types from Ch 04, tomes from Ch 05 ([Growth Modifiers → Citizen weapon access](Growth-Modifiers.md#4--citizen-weapon-access)) |
| Both units hold a weapon | The matchup reads the two **equipped** weapons. A unit that holds none is neutral against everything |
| Same family | A matchup exists only between two physical weapons or between two tomes (*Core Rules → 1*) |

---

## Cost

| What | Value |
| ---- | ----- |
| Resource | None |
| Action | None. The matchup is read automatically in every combat |
| Further cost | **What the weapon choice gives up.** Every close-combat type that beats two types loses to two others; the weapon equipped to win this fight is the weapon the enemy chooses against on the next phase. A unit's weapon types are fixed by its class, and promotions are permanent, so the types a unit can ever answer with are decided at its forks |
| Visible before use | The matchup is on the map before anything moves: the danger overlay and the forecast mark advantage and disadvantage, and an effect that ignores or reverses the triangle is named where it applies (*UI & Display*) |

---

## Core Rules

### 1 – The two families, and what stands outside

| Family | Ordering | Members |
| ------ | -------- | ------- |
| **Physical** | **Close Combat wheel** | Sword, Lance, Axe, Knife, Gauntlet, Chain, Battle Staff |
| | **Outer Weapon Triangle** | Close Combat (all seven wheel types as one), Bow, Artillery |
| **Tomes** | **Natura cycle** | Pyro, Aero, Electro, Hydro, Cryo, Geo, Dendro |
| | **Magic Triangle** | Natura (all seven Natura elements as one), Lux, Umbra |

**Outside every triangle** – neither gaining nor suffering a bonus, against anything:

- the **Staff** ([Weapons → Staves](../catalog/Weapons.md#staves));
- a summoned beast's **natural weapon** ([Beast Summon](Beast-Summon.md));
- a unit with **no weapon** equipped.

**Magic stands outside the physical triangles, and physical weapons outside the magic ones.** A tome against a physical weapon is neutral in both directions (decided by Dardan, 2026-09-29). The reason is the one that keeps the Staff outside: a mage's advantage is range, Resistance-based damage and the element system, and a triangle edge on top would make magic the answer to everything or the victim of everything.

**The weapon type decides the family, not the stat.** A magic weapon – the Rune Sword, the Ki Gauntlet – is a Sword or a Gauntlet in the catalog and stands in the wheel, although it deals damage off Magic.

### 2 – The four orderings, as rules

The edges are registered in the catalog, drawn as graphs with one reason per edge: the [Close Combat wheel](../catalog/Weapons.md#close-combat) and the [outer Weapon Triangle](../catalog/Weapons.md#weapon-triangle) in *Weapons*, the [Natura cycle](../catalog/Magic-Tomes.md#natura-magic) and the [Magic Triangle](../catalog/Magic-Tomes.md#magic-triangle) in *Magic Tomes*. **The catalog carries the "why" of each edge; this document carries the rules every set of edges must obey**, and the reasons for those rules. Changing an edge in the catalog is a change to these rules, and it must keep the rule below or change it on purpose.

| Ordering | Rule the edges obey | Why |
| -------- | ------------------- | --- |
| **Close Combat wheel** | Every one of the seven types **beats exactly two and loses to exactly two**; the other two pairs are neutral. Fourteen edges | No type is a safe pick and none is a doomed one. A player who builds around one weapon line has two good matchups and two bad ones, whichever line he picks |
| **Outer Weapon Triangle** | A three-cycle: **Close Combat beats Bow, Bow beats Artillery, Artillery beats Close Combat** | Each range band hunts the next: the melee unit that reaches an archer, the archer that picks off the gun crew, the artillery that shells the melee line from beyond its reach |
| **Natura cycle** | Twelve edges over seven elements, **deliberately asymmetric** – each element's wins and losses are its profile | The profiles make the Base fork a choice of role, not only of colour. The profiles and their compensation are the catalog's and the Magic System's ([Magic Tomes → Element profiles](../catalog/Magic-Tomes.md#element-profiles), [Magic System → Natura Profile Compensation](Magic-System.md#natura-profile-compensation)) |
| **Magic Triangle** | Two edges only: **Lux beats Umbra, Umbra beats Natura; Lux and Natura are neutral** | Lux is the counter to Umbra and would carry too many weaknesses if it also lost to all seven Natura elements |

In every ordering, **one pair has at most one edge**: no two types beat each other.

### 3 – Reading the matchup

At the start of every combat, before the first strike, the matchup is read **once** from the two units' equipped weapons and holds for every strike of that combat, on both phases:

1. **Either weapon outside every triangle** (Staff, natural weapon, none) → **neutral**.
2. **One tome, one physical weapon** → **neutral**.
3. **Two physical weapons:**
   - both close-combat types → the **Close Combat wheel**;
   - otherwise → the **outer Weapon Triangle**, with every close-combat type counted as *Close Combat*.
4. **Two tomes:**
   - both Natura → the **Natura cycle**;
   - otherwise → the **Magic Triangle**, with every Natura element counted as *Natura*.
5. **Same type, same element, or no edge between the two** → **neutral**.

**An elemental matchup reads only the two equipped tomes** (decided by Dardan, 2026-09-29). An element applied to a unit does not count, a unit's elemental affinity does not count, and a physical weapon is always neutral against a tome. It follows that the element a combat art carries creates no matchup – the art is struck with a physical weapon – and neither does the element Dardan carries under [*Wavelength*](Nexus.md#8--wavelength), which lies on a physical blade.

### 4 – What an advantage does

The unit whose weapon wins the matchup takes the **advantage** row, the other the **disadvantage** row. Each side's row enters its own formulas as the **Triangle Bonus** term – in Attack and in Hit, never in Avoid or Defense ([Combat Fundamentals → 2](Combat-Fundamentals.md#2--the-formulas-and-what-each-is-for)). **All four orderings use the same term and the same values**, in the [Balancing Guide → Weapon Triangle Bonuses](../Balancing-Guide.md#weapon-triangle-bonuses). The triangle is one of the passive systems counted in the [Passive Bonus Budget](../Balancing-Guide.md#passive-bonus-budget).

The triangle is **not** effectiveness. An effective weapon's bonus against a Move Type ([Special Weapon Types](../Balancing-Guide.md#special-weapon-types)) applies whatever the matchup, and nothing in *→ 5* touches it.

### 5 – Effects that ignore or reverse the triangle

Three kinds of effect change a matchup. They are defined once, here; a catalog entry names which one it carries and links to this rule.

| Effect | What it does |
| ------ | ------------ |
| **Ignores the triangle** | The combat is **neutral**: neither unit takes an advantage or a disadvantage row, whatever the weapons |
| **Ignores the triangle disadvantage against X** | When the holder would take the **disadvantage** row and the opponent's weapon is X, the combat is **neutral** instead. An advantage the holder has is untouched |
| **Reverses the triangle** | **Advantage and disadvantage swap for this combat**, for both units: the unit that would have won the matchup takes the disadvantage row, and the unit that would have lost it takes the advantage row. A neutral combat stays neutral. The idea is Fire Emblem's Reaver weapons, without their doubled bonus |

**Who holds them.** Only what the catalog gives them to. Today: *Lancebreaker* ignores the disadvantage against Lances ([Abilities](../catalog/Abilities.md)), *Heaven's Edge* ignores the triangle ([Combat Arts](../catalog/Combat-Arts.md)). No entry reverses the triangle yet; the rule exists so that a future entry can use it without redefining it.

**When several apply to one combat**, they resolve in this order:

1. Read the matchup (*→ 3*).
2. **Reverse** – if exactly one unit in the combat carries a reverse effect, swap. Two reverse effects, one on each side, cancel (*Open Decisions → 2*).
3. **Ignore the disadvantage against X** – checked against the matchup as it now stands.
4. **Ignore the triangle** – if either unit carries it, the combat is neutral, whatever steps 2 and 3 produced.

An effect that works "for its strike" only (a combat art) applies for the strike it is used on; the rest of the combat reads the matchup without it.

### 6 – Both sides

Everything here holds for enemies. An enemy reads the same matchups, takes the same rows, and can carry the same ignore and reverse effects if its class or its entry gives them.

---

## Acquisition / Access

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| Universal | Every unit's matchup is read from the weapon it holds | Physical types from Ch 01 and Ch 04, tomes from Ch 05 |
| Weapon types | Which matchups a unit can bring is set by its class's weapon types ([Unit Classes](../catalog/Unit-Classes.md)) | At every promotion |
| Catalog entries | Ignore and reverse effects come only from abilities, arts or weapons that name them | Per entry |

---

## Strategic Depth

- **The front is a matchup.** Which unit holds the chokepoint depends on what comes through it: a Lance line against a cavalry sword wing, an Axe against the Lances, a Chain against the Gauntlets. Reading the enemy's weapon mix is reading the map.
- **The second weapon.** A unit that carries two types chooses its matchup on its own turn – and has to guess on the Enemy Phase, when it counters with whatever it has equipped. Equipping for the Enemy Phase is its own decision.
- **Range bands hunt each other.** The outer triangle rewards sending the right range band at the right target: the melee unit that runs down the archer, the archer that removes the gun crew, the gun crew that shells the melee line.
- **The mage as a neutral answer.** Because tomes stand outside the physical triangles, a mage is never a bad matchup against a physical unit – and never a good one. It is what the player sends when every physical matchup is wrong.
- **The Natura cycle is a Base-fork decision.** A mage's element is fixed at its class fork, and the Elementalist's second element has to close a weakness ([Magic Tomes](../catalog/Magic-Tomes.md)). Which enemies the campaign's Umbra casters will be is a question the player answers years before he meets them.
- **Ignore and reverse effects are counter-picks.** A unit that ignores its one bad matchup, or reverses the triangle, is placed exactly where the enemy's matchup would have been strongest.

---

## Design Pillars

*Proposed by Rulewright, pending Dardan's review (2026-09-29).*

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | **Indirectly.** No unit covers all its bad matchups alone; each line needs the line that beats what beats it. The triangle makes the roster a set of answers to each other, which is what makes an army rather than a list of fighters. It reads no affinity rank |
| **Depth** | Easy to learn, hard to master? | **Yes.** Rock-paper-scissors is understood at once, and the classic Sword–Lance–Axe triangle is inside the wheel. Mastery is the seven-type wheel, the range bands, the asymmetric Natura cycle and the equip choice for the Enemy Phase |
| **Weight** | Do the decisions have long-term consequences? | **Yes, at the forks.** A class fixes a unit's weapon types for good, and a mage's element with them. In a battle the matchup is a turn's decision |
| **Integration** | Does the mechanic tell a story? | **Yes, edge by edge.** Every edge in the catalog carries a physical reason – the sword cuts before the axe swings back, water puts out fire, light drives out shadow. The world's weapons and elements behave as the world would say they do |
| **Fairness** | Is the challenge respectful of the player's time? | **Yes.** The matchup is visible on the map before any unit moves, it is the same for the enemy, and the ignore and reverse effects are named in the forecast. A lost matchup is always one the player could have seen |

**Anti-pillar check:** **No grinding:** nothing is earned; the matchup is a fact of the weapons. **No power without a price:** every advantage is paired with a disadvantage elsewhere; a weapon that beats two loses to two. **Nothing that works only with over-trained units:** the bonus is flat, and a level-1 unit reads it as a level-40 one does. **Nothing generic:** the triangle is Fire Emblem's, on purpose; what is this game's own are the seven-type wheel, the range triangle above it and the asymmetric Natura cycle.

**Is there a combination that trivialises a fight?** An ignore-the-triangle effect on a unit that also holds a triangle advantage elsewhere is the candidate. It is bounded by its holders: one class ability, one art on a Master class. A reverse effect has no holder yet; the first one to be written has to be priced against the rows it would flip.

---

## Introduction

**First chapter:** **Ch 01**, *Every End…*, **fight 2** – the orphans against the older children on the market square. Set in the [level index](../levels/README.md#part-01-path-of-liberation) and the [Progression System](../Progression-System.md#part-01-path-of-liberation-chapters-1-8); the chapter's tutorial box for this fight lists *Waffenvorteile*.

**How it is introduced:** by the forecast and the enemy's weapon mix, not by a text box. The orphans grab sticks, boards and old pans; the older children come armed too. Once each improvised weapon is a weapon type, the first time the player hovers an enemy he sees an advantage or a disadvantage marked, and the one target that is a good matchup for the unit in reach is the lesson. The map has to make that choice real: at least two enemies in reach with different types, one of them a bad matchup. Which catalog entries the improvised weapons use is [Level 01](../levels/Level-01-Every-End.md)'s ([Growth Modifiers → Citizen weapon access](Growth-Modifiers.md#4--citizen-weapon-access)), and the Level 01 document is still an empty stub (*Open Decisions → 5*).

The families arrive later with their weapons: the rest of the wheel and Artillery with the weapon delivery in Ch 04, the tome orderings with the tomes in Ch 05 ([Magic System → Introduction](Magic-System.md#introduction)).

**What the player must already know:** attacking and the battle forecast (Ch 01, fight 1, [Combat Fundamentals](Combat-Fundamentals.md#introduction)).

---

## Catalog

All entries: [Weapons](../catalog/Weapons.md) (the Close Combat wheel and the outer Weapon Triangle, with the reason for each edge) and [Magic Tomes](../catalog/Magic-Tomes.md) (the Natura cycle and the Magic Triangle).

---

## Balancing

**Weapon Triangles has no values of its own.** Its one value set – the advantage and disadvantage rows – is read by the combat formulas and the passive bonus budget and lives in the [Balancing Guide → Weapon Triangle Bonuses](../Balancing-Guide.md#weapon-triangle-bonuses). The Natura profile compensation, which exists because of the cycle's shape, is the [Magic System's](Magic-System.md#natura-profile-compensation).

### What each value tunes

| Parameter (in the guide) | What it tunes |
| ------------------------ | ------------- |
| Advantage and disadvantage rows | How much a matchup is worth against positioning, affinity and rhythm – how often the right weapon beats the right tile |

**Rules, not tuning values**, and therefore in the rules above:

- The two families, and what stands outside every triangle.
- Tome against physical weapon is neutral; an elemental matchup reads only the two equipped tomes.
- The wheel's two-and-two rule, the outer three-cycle, the Magic Triangle's two edges; one edge per pair at most.
- One term and one value set for all four orderings; read once per combat.
- The definitions of *ignore*, *ignore the disadvantage against X* and *reverse*, and the order they resolve in.

---

## Interaction with Other Mechanics

| Mechanic | Interaction |
| -------- | ----------- |
| **[Combat Fundamentals](Combat-Fundamentals.md)** | The Triangle Bonus is one of its terms, read once before the first strike and held for the combat |
| **[Magic System](Magic-System.md)** | The Natura cycle and the Magic Triangle are ruled here; the elements, reactions and profiles are the Magic System's. A reaction is not a matchup: which element sits on an enemy changes no triangle row. [Magic System → Elemental Weaknesses](Magic-System.md#elemental-weaknesses) links here and to the catalog and carries no copy of the edges |
| **[Affinity](Affinity.md)** | A unit's elemental affinity sets its bond's bonus types and nothing here: it never creates a matchup |
| **[The Nexus](Nexus.md)** | *Wavelength* lays an element on a physical blade and creates no matchup. *Earthbound* leaves a sealed unit its physical weapon, under the triangle. The Mastery *Exchange* recalculates a landed strike against Dardan with the triangle against his weapon |
| **[Beast Summon](Beast-Summon.md)** | The natural weapon stands outside every triangle, like the Staff |
| **[Combat Arts](Combat-Arts.md)** | An art's element creates no matchup. An art may carry an ignore or reverse effect for its strike (*Heaven's Edge*) |
| **[Abilities](Abilities.md)** | An ability may carry an ignore or reverse effect (*Lancebreaker*) |
| **Passive bonus budget** | The triangle is one of the three counted passive systems ([Balancing Guide](../Balancing-Guide.md#passive-bonus-budget)) |

---

## UI & Display

- **The forecast** marks each unit's row with an arrow – up for advantage, down for disadvantage – beside the weapon icon, and shows the Triangle Bonus in the Attack and Hit lines like every other term.
- **Ignore and reverse effects** are named in the forecast beside the arrows, with the entry that carries them: *"Lancebreaker – no disadvantage"*, *"Heaven's Edge – triangle ignored"*.
- **On the map,** hovering an enemy marks each of the player's units that would meet it at an advantage or a disadvantage with its current weapon, so the matchup is read before anything moves.

---

## Open Decisions

Everything below is written into the rules above in its **cautious form**. Each is Dardan's to confirm or change.

**Decided by Dardan and therefore not listed (2026-09-29):** magic stands outside the physical triangles, as the Staff and the natural weapon do; the Natura cycle and the Magic Triangle apply only tome against tome; an elemental matchup reads only the two equipped tomes (closing [Magic System → Open Decisions → 7](Magic-System.md#open-decisions)); one term and one value set for all triangles; the general *ignore*, *ignore disadvantage* and *reverse* effects, with no new catalog entry for *reverse*; introduction in Ch 01, fight 2; **the Magic System keeps no copy of the tome orderings** – its *Elemental Weaknesses* section links here and to the catalog, and the two edge reasons only it held (Lux > Umbra, Umbra > Natura) moved to the catalog beside their edges (closing former item 4). Earlier: the fourteen-edge wheel, and the Magic Triangle's two edges.

1. **What "ignores the disadvantage against X" does to the opponent.** Conservative, as written: the combat is neutral – the opponent's advantage goes with the holder's disadvantage, because one is the other seen from the far side. The alternative removes only the holder's own disadvantage row and leaves the opponent its advantage; that is the weaker effect and makes *Lancebreaker* worth half as much.
2. **Two reverse effects in one combat.** Conservative: they cancel, since swapping twice is no swap. No entry reverses the triangle yet, so the question cannot arise until one does. The alternative lets them stack into nothing special, which is the same result, or lets the attacker's win, which is not.
3. **The resolution order** in *Core Rules → 5* (reverse, then ignore-disadvantage, then ignore) is written so that the strongest effect, *ignore*, always has the last word. Nothing written decides it otherwise.
4. *Closed on 2026-09-29 and moved to the decided list above* – the number is kept so that item 5 keeps its own.
5. **The introduction map is not designed.** [Level 01](../levels/Level-01-Every-End.md) is an empty stub; which weapon types the improvised weapons of fight 2 use, and how the map puts a good and a bad matchup in reach, is `levelcraft`'s work.

---

**Version:** 1.0
**Created:** 2026-09-29
**Last updated:** 2026-09-29 – written from the backlog on Dardan's decisions of the same day: magic outside the physical triangles, tomes-only elemental matchups, general ignore and reverse effects.
**Cross-references:** [Weapons](../catalog/Weapons.md) · [Magic Tomes](../catalog/Magic-Tomes.md) · [Balancing Guide](../Balancing-Guide.md#weapon-triangle-bonuses) · [Combat Fundamentals](Combat-Fundamentals.md) · [Magic System](Magic-System.md) · [Abilities](Abilities.md) · [Combat Arts](Combat-Arts.md) · [Design Pillars](../Design-Pillars.md)
