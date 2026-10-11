# Combat Fundamentals

How one combat between two units resolves in Vigilans Nexum: the exchange of strikes, what each combat formula decides, the 2RN hit roll, counters, doubling, Brave weapons, criticals, minimum damage and the battle forecast. This document holds the rules. The formulas and their values are cross-system numbers and live in the [Balancing Guide → Damage Calculation Formula](../Balancing-Guide.md#-damage-calculation-formula) and the sections after it. The weapons and tomes that feed the formulas are in the catalog.

> **Related files:** [Balancing Guide → formulas](../Balancing-Guide.md#-damage-calculation-formula) · [Weapon Triangles](Weapon-Triangles.md) · [Weapons](../catalog/Weapons.md) · [Magic Tomes](../catalog/Magic-Tomes.md) · [Affinity](Affinity.md) · [Biorhythm](Biorythm.md) · [Magic System](Magic-System.md) · [Combat Arts](Combat-Arts.md) · [Abilities](Abilities.md) · [The Nexus](Nexus.md) · [Levels → Ch 01](../levels/README.md#part-01-path-of-liberation)

---

## Overview

A **combat** begins when a unit attacks an enemy within its weapon's range. The two units then exchange **strikes** in a fixed order: the attacker strikes, the defender counters if it can reach, and the faster unit strikes a second time if it is fast enough. Each strike rolls to hit and, if it hits, rolls for a critical, and deals its damage on its own. Before the player commits, the **battle forecast** shows everything the exchange will do except the outcome of the rolls.

The rules follow **Fire Emblem: Path of Radiance and Radiant Dawn (Tellius)**. Where the two disagree, Radiant Dawn wins, because Vigilans Nexum has no Constitution stat and Radiant Dawn is the Tellius game that works without one. On top of the Tellius shapes sit only this game's own terms: the [Triangle Bonus](Weapon-Triangles.md), the [Affinity Bonus](Affinity.md#4--the-combat-bonus), [Biorhythm](Biorythm.md#7--what-the-states-do), the Terrain Bonus and the element ([reaction damage bonus](Magic-System.md#reaction-damage-bonus)). Decided by Dardan, 2026-09-29.

The purpose in one sentence: **the player decides which unit attacks which enemy, from which tile and with which weapon, having read before he commits what each side will deal, how often each side will strike and how likely each strike is to land.**

|              | Combat Fundamentals |
| ------------ | ------------------- |
| Phase        | Player Phase and Enemy Phase |
| Trigger      | A unit attacks an enemy within its weapon's range |
| Resource     | None of its own. The weapon's Uses or the tome's MP, per their owners |
| Core feature | A fixed strike order, counters on both phases, doubling as a separate strike, a 2RN hit roll behind a displayed Hit |

---

## Prerequisites

| Condition | Rule |
| --------- | ---- |
| System active | From **Ch 01, fight 1**, for every unit on both sides. It is the base every other combat system modifies |
| Attacker | Has an equipped weapon that can attack: a physical weapon, a tome with Might, or a natural weapon ([Beast Summon](Beast-Summon.md)). A mage must hold the tome's MP cost. A staff, a tome without Might (`–` in the catalog) or no weapon cannot attack |
| Target | An enemy unit whose tile lies within the attacker's weapon range, minimum and maximum |
| Counter | The defender's own conditions are in *Core Rules → 4* |

---

## Cost

| What | Value |
| ---- | ----- |
| Resource | **The weapon's running cost.** A physical weapon spends Uses ([Durability](README.md#backlog--not-yet-documented), backlog); a tome spends MP ([Magic System → Two MP regimes](Magic-System.md#1--two-mp-regimes)). Whether a cost is paid per strike or per combat is *Open Decisions → 1* |
| Action | **The unit's action.** Attacking ends the unit's turn, as in Fire Emblem |
| Further cost | **The counter and the position.** An attack inside the defender's range is answered, and the attacker ends its turn on the tile it attacked from, where the Enemy Phase will find it |
| Visible before use | Everything except the dice: damage per strike, number of strikes on each side, displayed Hit and displayed Crit on each side, whether the defender can counter, and every term that moved a number (*UI & Display*). What is not shown is the real probability behind the displayed Hit (*Core Rules → 7*) |

---

## Core Rules

### 1 – Terms

| Term | Meaning |
| ---- | ------- |
| **Combat** | One exchange between one attacker and one defender, from the first strike until the last strike or until one of the two falls |
| **Strike** | One blow inside a combat. Every strike has its own hit roll, its own critical roll and its own damage |
| **Attacker / defender** | The unit that started the combat, and the unit it targeted. On the Enemy Phase the enemy is the attacker |
| **Counter** | The defender's strike back inside the same combat |
| **Follow-up** | The second strike a unit earns by Attack Speed (*→ 5*) |

Other specifications say "attack" where they mean either a combat or a strike. Which one each of them means is *Open Decisions → 1*.

### 2 – The formulas and what each is for

Every formula lives in the [Balancing Guide](../Balancing-Guide.md#-damage-calculation-formula). This table says what each one decides, not what it is.

| Formula | Decides | In the guide |
| ------- | ------- | ------------ |
| **Attack** against **Defense** | The damage of one strike | [Damage Calculation Formula](../Balancing-Guide.md#-damage-calculation-formula) |
| **Attack Speed (AS)** | Who strikes twice (*→ 5*), and how hard a unit is to hit, since Avoid reads AS | [Attack Speed (AS) Calculation](../Balancing-Guide.md#attack-speed-as-calculation) |
| **Hit** against **Avoid** | The displayed Hit of one strike (*→ 7*) | [Hit Rate Calculation](../Balancing-Guide.md#hit-rate-calculation) |
| **Crit** against **Dodge** | The displayed Crit of one strike, and what a critical does to its damage (*→ 8*) | [Critical Hit Calculation](../Balancing-Guide.md#critical-hit-calculation) |

**Where the shapes come from.** Hit, Crit and Damage keep the structure they had; **Dexterity plays the role Tellius gives Skill**. Attack Speed takes **Radiant Dawn's** form, where a weapon's Weight is offset point for point by Strength: Path of Radiance offsets it by Constitution, a stat this game does not have. Avoid reads **Attack Speed**, not Speed, as in Tellius: a heavy weapon costs its wielder evasion as well as the follow-up.

**The terms this game adds.** Each is its own term in the formulas and has its own owner:

| Term | Enters | Owner |
| ---- | ------ | ----- |
| Triangle Bonus | Attack, Hit | [Weapon Triangles](Weapon-Triangles.md) |
| Affinity Bonus | Attack, Defense, Hit, Avoid, Crit, Dodge | [Affinity](Affinity.md#4--the-combat-bonus) |
| Biorhythm | Attack, Hit, Avoid, Crit | [Biorhythm](Biorythm.md#7--what-the-states-do) |
| Terrain Bonus | Defense, Avoid | Movement ([backlog](README.md#backlog--not-yet-documented)) |
| Element | The damage of a strike that triggers a reaction | [Magic System](Magic-System.md#5--what-a-reaction-does) |

How much the three passive terms may add together is capped by the [Passive Bonus Budget](../Balancing-Guide.md#passive-bonus-budget). Situational modifiers written on a catalog entry – the [Battle Staff Guard](../Balancing-Guide.md#battle-staff-guard), an ability, an art – enter the term they name.

### 3 – The exchange

One combat runs in this order, and only in this order:

1. **The attacker strikes.**
2. **The defender counters**, if it can (*→ 4*).
3. **The faster unit's follow-up**, if either unit has earned one (*→ 5*).

If a unit falls, the combat ends at once and every strike still to come lapses.

| Case | Strikes, in order (A = attacker, D = defender) |
| ---- | ---------------------------------------------- |
| Nobody doubles | A · D |
| Attacker doubles | A · D · A |
| Defender doubles | A · D · D |
| Defender cannot counter, attacker doubles | A · A |
| Attacker Brave, attacker doubles | A A · D · A A |
| Defender Brave | A · D D |

**Exceptions are written where they live.** Abilities that change the order (*Vantage*, *Brace*, *Overwatch*, *Foresight*), add a strike (*Aether*, *Adept*) or forbid a counter or a follow-up are rows in the [ability catalog](../catalog/Abilities.md); a combat art does what its [catalog](../catalog/Combat-Arts.md) row says. The order above is the rule they depart from. A strike added outside the combat – the [Bloodoath](Nexus.md#9--bloodoath) Echo, [Dawnbreak](Nexus.md#10--dawnbreak) – follows its own rules in The Nexus.

### 4 – Counters

The defender counters **on both phases, whenever the attacker's tile lies within its equipped weapon's range**, minimum and maximum. There is no choice: a player unit attacked on the Enemy Phase counters automatically, as an enemy does on the Player Phase.

A defender does **not** counter when:

- the attacker stands outside its weapon's range. The range gaps in the catalog are deliberate: a **bow** cannot answer at range 1, **artillery** and **siege tomes** cannot answer inside their minimum range, and a **tome** reaches exactly the range its Range column gives – 1–2 for a standard tome, so a mage answers an adjacent attacker as well as one at range 2 ([Weapons](../catalog/Weapons.md), [Magic Tomes](../catalog/Magic-Tomes.md));
- it holds nothing that can attack: a staff, a tome without Might, no weapon;
- it is a mage without the MP its tome costs;
- an effect forbids it – a catalog row (*Jolt*, *Duel*, *Pit Fighter*, *Flanker*, *Stoop*, *Heartseeker*, *Shadowmeld* …) or a Nexus rule.

**A counter is always an ordinary strike.** Combat arts are never used to counter ([Combat Arts → Core Rules → 1](Combat-Arts.md#1--what-an-art-is)).

### 5 – Doubling

A unit whose Attack Speed exceeds its opponent's by at least the doubling threshold ([Attack Speed (AS) Calculation](../Balancing-Guide.md#attack-speed-as-calculation)) earns a **follow-up**: a **second, separate strike** at the end of the exchange. It is **not** double damage. The follow-up rolls its own Hit and its own Crit and deals its own damage, with Defense subtracted again, exactly like the first strike. It can miss when the first hit, and crit when the first did not.

Doubling works **on both phases**: an attacker doubles, and so does a defender that counters. Since the threshold is above zero, at most one of the two units can double in a combat. Effects that say "cannot be doubled" (*Shield Brother*, *Resolve*, *Foresight*) take the follow-up away from the opponent and nothing else.

### 6 – Brave

A **Brave** weapon strikes **twice in a row** each time its wielder's turn to strike comes in the exchange: twice for the first strike, twice for the counter, twice for the follow-up. It works on both phases, attacking and countering. A Brave wielder who also doubles strikes four times. Each of those strikes is a strike under *→ 5*, with its own rolls.

Brave is a property of the weapon: the Brave variants ([Variant Rules](../Balancing-Guide.md#variant-rules)) and every gauntlet through *Flurry* ([Weapons → Gauntlets](../catalog/Weapons.md#gauntlets)). The Crushing Gauntlet gives it up.

### 7 – The hit roll: 2RN

**Displayed Hit** is the formula's result, clamped to 0–100 ([Hit Rate Calculation](../Balancing-Guide.md#hit-rate-calculation)). It is the only accuracy number the player ever sees.

**The roll behind it is 2RN** – the average of two random numbers, Fire Emblem's "true hit" from the Game Boy Advance games and Tellius (decided by Dardan, 2026-09-29):

1. Draw two random integers, each from 0 to 99, each uniformly.
2. The strike **hits if their sum is less than twice the displayed Hit** – that is, if their average is below the displayed Hit.

A displayed Hit of 0 never hits and a displayed Hit of 100 always does.

**What this does, stated openly.** 2RN **favours high displayed values and punishes low ones.** A strike shown above 50 lands more often than its number; a strike shown below 50 lands less often. Near 50 the two agree. The table follows from the rule above; it is not a tuning value:

| Displayed Hit | 10 | 20 | 30 | 40 | 50 | 60 | 70 | 80 | 90 |
| ------------- | -- | -- | -- | -- | -- | -- | -- | -- | -- |
| Real chance (%) | 2.1 | 8.2 | 18.3 | 32.4 | 50.5 | 68.4 | 82.3 | 92.2 | 98.1 |

The rule works the same for enemies. The player's reliable attacks become more reliable, and so do the enemy's; the long shot on either side becomes longer. **The battle forecast shows only the displayed Hit, never the real chance** (decided by Dardan). The tension this creates with [Pillar 5](../Design-Pillars.md) is written out in *Design Pillars* below.

**Only the hit roll is 2RN.** The critical roll is a single roll (*→ 8*). What other percentage chances roll is *Open Decisions → 6*.

### 8 – Criticals

This section is the whole of the critical-hit system; the former *Critical Hits* backlog item was merged into it (decided by Dardan, 2026-09-29). Every number is in [Critical Hit Calculation](../Balancing-Guide.md#critical-hit-calculation).

1. **Crit rate.** The attacking side's **Crit** reads the weapon's Critical, the unit's Dexterity, its Affinity Bonus and its Biorhythm. The defending side's **Dodge** reads its Luck and its Affinity Bonus. **Displayed Crit** is Crit minus Dodge, clamped to 0–100. Where a weapon's Critical comes from – the Knife line's native value, the Killer variants' fixed value, zero on every Bronze weapon – is the catalog's and [Variant Rules](../Balancing-Guide.md#variant-rules)'.
2. **Only on a hit.** A critical is checked **only on a strike that hits**. A strike that misses never crits, whatever its Crit.
3. **A single roll**, as in Tellius, not 2RN: one integer from 0 to 99, and the strike crits if it is less than the displayed Crit. A displayed Crit of 0 never crits. Unlike Hit, the displayed Crit is the real chance of a critical on a strike that has already hit.
4. **Every strike rolls.** The first strike, the counter, the follow-up and each strike of a Brave weapon roll their own critical, independently. A counter can crit on the Enemy Phase exactly as an attack can on the Player Phase.
5. **What a critical does.** The strike's damage after Defense – Attack minus Defense, with the minimum damage applied – is multiplied by the **critical multiplier**. A critical on a strike that deals no damage deals none.
6. **What stops a critical** is written where it lives: an ability such as *Guard* ("cannot be critically hit") in the [ability catalog](../catalog/Abilities.md); a Nexus ability that strikes without a roll (*Dawnbreak*) cannot crit.

### 9 – Damage

A strike that hits deals **Attack minus Defense**, and never less than the minimum damage, both in the [Damage Calculation Formula](../Balancing-Guide.md#-damage-calculation-formula). A strike that hits for no damage has still hit: everything that happens "on hit" – an applied element, an on-hit ability – still happens. Weapons that call Magic are answered by Resistance, everything else by Defense ([Variant Rules → Magic](../Balancing-Guide.md#variant-rules)). **Effectiveness multiplies Might.** Against a unit of the Move Type a weapon, ability or art is effective against, the weapon's Might is multiplied by the effective multiplier **first, before Strength or Magic and every other term is added** – it scales the weapon, not the unit. The multiplier is in [Variant Rules](../Balancing-Guide.md#variant-rules) and enters the [damage formula](../Balancing-Guide.md#-damage-calculation-formula) as *Effectiveness*.

A strike that triggers an elemental reaction deals its damage raised by the [reaction damage bonus](Magic-System.md#reaction-damage-bonus). How that bonus and the critical multiplier combine is *Open Decisions → 4*.

### 10 – Both sides

Every rule here holds identically for enemies. An enemy counters, doubles, strikes Brave and rolls 2RN exactly as a player unit does. There is no hidden enemy bonus to hit or to crit; difficulty changes the enemy's stats and numbers ([Difficulty Mode Scaling](../Balancing-Guide.md#-difficulty-mode-scaling)), never the rules of the exchange.

### 11 – The battle forecast

Before any attack is confirmed, the forecast shows, for **both** units:

- HP now, and HP after the exchange if every strike hits;
- damage per strike, and the number of strikes (×2 for a follow-up, Brave marked, ×4 for both);
- displayed Hit and displayed Crit;
- whether the defender can counter at all, and why not if it cannot;
- the weapon matchup ([Weapon Triangles → UI & Display](Weapon-Triangles.md#ui--display)) and effectiveness;
- every other term that moved a number, each by name – the affinity partner, the biorhythm state, terrain, an ability, an art, a reaction ([Magic System → UI & Display](Magic-System.md#ui--display), [Affinity](Affinity.md), [Biorhythm](Biorythm.md));
- the MP or Uses the attack will cost.

The forecast is complete by rule: a term that changes the exchange and is not in the forecast is a bug, not a feature.

---

## Acquisition / Access

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| Universal | Every unit, player or enemy, that can attack fights under these rules | From Ch 01, fight 1 |

---

## Strategic Depth

- **Who strikes twice.** Attack Speed turns Weight into a real choice: the heavy weapon hits harder once, the light one may hit twice. Whether a unit doubles – or is doubled – decides most exchanges before damage does.
- **Who can answer.** A counter only reaches the tiles its weapon reaches. Attacking a lancer with a bow from range 2, an archer from anywhere adjacent, a gun crew from inside its minimum range: the range gaps in the catalog are the first thing a player learns to exploit, and the first thing the enemy exploits back.
- **The Enemy Phase as a weapon.** Counters work on both phases, so a well-placed unit fights the Enemy Phase for the player: the wall that doubles every attacker back, the unit baited into a position where it counters everything that reaches it.
- **Two strikes, not double damage.** Defense is subtracted from each strike. A follow-up against armour adds little; a Brave weapon against plate adds almost nothing; four strikes against an unarmoured target end it. Choosing between one heavy strike and several light ones is a reading of the target's Defense.
- **Reading 2RN.** A displayed 80 is safer than it looks and a displayed 30 is a worse gamble than it looks. The player who knows this plans on high numbers and does not stake a life on a low one; the enemy's low numbers are safer to stand in front of than their face value says.

---

## Design Pillars

*Proposed by Rulewright, pending Dardan's review (2026-09-29), except where marked as decided.*

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | **Not by itself, and it does not need to.** The exchange is between two units. Its bond is where it reads others: the Affinity Bonus in six of its terms, the Bloodoath Echo that joins it, Lifeline's split of its damage. Combat Fundamentals is the surface the bond systems write on |
| **Depth** | Easy to learn, hard to master? | **Yes.** "I hit, he hits back, the faster one hits again" is understood on the first attack. Mastery is AS thresholds against weapon weight, counter ranges, both phases, and 2RN |
| **Weight** | Do the decisions have long-term consequences? | **Yes, through what the exchange can take.** A combat can kill, and under permadeath that is final. Weapons wear out and tomes cost MP. The single decision is a turn's; its worst outcome is permanent |
| **Integration** | Does the mechanic tell a story? | **Partly.** The formulas are the least narrative part of the game, and deliberately so. What the introduction gives them is the frame of Ch 01's first fight: strength against cleverness. The forecast is where the player first reads that one unit hits harder and another hits more often |
| **Fairness** | Is the challenge respectful of the player's time? | **Yes, with one deliberate exception.** Every term, every strike count, every counter and every modifier is in the forecast before the attack. The exception is the hit roll (below) |

**The tension with Pillar 5 – a deliberate choice by Dardan (2026-09-29).** Pillar 2 promises *No Hidden Information: all chances are displayed*, and Pillar 5 promises *Transparent Systems: all hit rates … displayed*. Under 2RN the displayed Hit is not the probability of hitting: a displayed 80 lands 92 times in 100, a displayed 30 only 18. The forecast still shows only the displayed Hit. **This is a known departure from the letter of the pillar, accepted on purpose.** The reasoning: the displayed number keeps its meaning as an order – a higher number is always the safer strike, the same number means the same thing for both sides, and nothing about the order is hidden. What 2RN changes is how much the extremes can hurt. It is the long-shot miss on an 85 and the lucky 25 that kills a unit which were "never the player's fault", and they are exactly what Pillar 5's *"Difficult, but never unfair"* exists to prevent. The game trades the literal accuracy of the number for outcomes that feel like the player's own decisions. The rule is stated openly in this document; whether it is stated to the player anywhere is *Open Decisions → 7*.

**Anti-pillar check:** **No grinding:** nothing here is earned by repetition. **No power without a price:** every strike can be answered where the defender's weapon reaches, and the heavy weapon pays in AS and Avoid. **Nothing that works only with over-trained units:** doubling depends on the gap to this opponent, not on absolute level. **Nothing generic:** the exchange is Tellius on purpose; what makes it this game's own are the terms laid on top, above all the bond.

**Is there a combination that trivialises a fight?** A Brave weapon on a unit that doubles strikes four times, and a Killer weapon rolls crit on each. Both are bounded where they are priced: Brave by its Might line and by Defense subtracted from every strike, Killer by the [Critical cap](../Balancing-Guide.md#passive-bonus-budget) sitting below it. The weights that were meant to keep Brave users from doubling were set against the old Attack Speed formula; whether they still do is flagged for review, not retuned here (*Open Decisions → 8*).

---

## Introduction

**First chapter:** **Ch 01**, *Every End…*, **fight 1** – the children's duel on the market square. The chapter's first tutorial box lists *Bewegung, Attackieren, Gegenstände*, and the [level index](../levels/README.md#part-01-path-of-liberation) and the [Progression System](../Progression-System.md#part-01-path-of-liberation-chapters-1-8) carry Movement, Attack, Items for fight 1.

**How it is introduced:** by the first forecast, not by a text box. The prose frames the duel as a question – *"War es rohe Kraft oder kluge Taktik, die einen Helden ausmachte?"* – with Hasan the stronger of the two and Dardan the cleverer. That is exactly what the forecast can show: one side's damage per strike against the other side's hit, strikes and counters. The player's first attack is the lesson – he sees what he will deal and what comes back, attacks, and watches the exchange play out in the order the forecast promised. How the duel is set up on the map, and which stats and weapons carry the "stronger against cleverer" frame, is [Level 01](../levels/Level-01-Every-End.md)'s and the two character sheets' – all three still empty (*Open Decisions → 9*).

**What the player must already know:** nothing. This is the first system of the game.

---

## Catalog

All entries: [Weapons](../catalog/Weapons.md) and [Magic Tomes](../catalog/Magic-Tomes.md) – every Might, Hit, Critical, Range and Weight these rules read. Combat Fundamentals has no entries of its own.

---

## Balancing

**Combat Fundamentals has no values of its own.** Every number it uses is read by more than one system and lives in the [Balancing Guide](../Balancing-Guide.md): the formulas, the doubling threshold, the critical multiplier and the minimum damage under [Damage Calculation Formula](../Balancing-Guide.md#-damage-calculation-formula) and the sections after it; the triangle's values under [Weapon Triangle Bonuses](../Balancing-Guide.md#weapon-triangle-bonuses); the cap on passive terms under [Passive Bonus Budget](../Balancing-Guide.md#passive-bonus-budget). The values in the guide were kept when the formula shapes changed to Tellius (decided by Dardan, 2026-09-29).

### What each value tunes

| Parameter (in the guide) | What it tunes |
| ------------------------ | ------------- |
| Doubling threshold | How large a speed gap has to be before it wins a second strike – and so how much Weight matters |
| Critical multiplier | How decisive a critical is |
| Effective multiplier (Variant Rules, proposal) | How much a weapon, ability or art built against one Move Type is worth against it, and how that grows with the weapon's Might |
| Minimum damage | Whether a strike against a wall can still do something |
| Weapon Weight (catalog) | How much a weapon costs its wielder in AS and Avoid, against the wielder's Strength |

**Rules, not tuning values**, and therefore in the rules above:

- The strike order: attacker, counter, follow-up.
- Doubling is a second, separate strike with its own rolls, never double damage.
- Counters on both phases whenever the attacker is in range; the range gaps stand; arts never counter.
- A Brave weapon strikes twice in a row each time it strikes.
- The hit roll is 2RN; the forecast shows the displayed Hit only; the critical roll is single.
- A critical is checked only on a hit, on every strike – counters, follow-ups and each Brave strike included.
- Effectiveness multiplies the weapon's Might before the other terms are added.
- AS reads Weight against Strength; Avoid reads AS.
- The rules hold for both sides.

---

## Interaction with Other Mechanics

| Mechanic | Interaction |
| -------- | ----------- |
| **[Weapon Triangles](Weapon-Triangles.md)** | Supplies the Triangle Bonus term for one combat, read from the two equipped weapons before the first strike |
| **[Affinity](Affinity.md)** | Supplies the Affinity Bonus in six terms, from the strongest partner in range. Avoid now reads AS, so an Avoid bonus adds to a base that a heavy weapon lowers |
| **[Biorhythm](Biorythm.md)** | Supplies the Biorhythm term for this round. The state is fixed for the whole round, so it is the same on every strike of a combat |
| **[Magic System](Magic-System.md)** | A mage's attack applies its element on a strike that lands. With doubling, two strikes can land: the second follows the Magic System's rule for an element already on the target (*Open Decisions → 1*) |
| **[Combat Arts](Combat-Arts.md)** | An art is chosen on the Player Phase and never counters. Whether an art is countered and whether it can be followed up is *Open Decisions → 5* |
| **[Abilities](Abilities.md)** | Several abilities change the strike order, add a strike, forbid a counter or a follow-up, or fix a strike to hit. They are exceptions written in their catalog rows (*Core Rules → 3*) |
| **[Chain Attack](Chain-Attack.md)** | Whether the enemy counters inside a chain is [Chain Attack → Open Decisions → 4](Chain-Attack.md#open-decisions), not decided here |
| **[The Nexus](Nexus.md)** | *Bloodoath*'s echo strike is one ordinary strike with the ordinary rolls and cannot be countered. *Dawnbreak* strikes without a roll, without a counter and without a follow-up. *Earthbound* leaves a sealed unit its plain weapon strike under these rules. The Mastery *Exchange* recalculates a landed strike against Dardan with the rolls standing |
| **[Beast Summon](Beast-Summon.md)** | The natural weapon has no Weight, so a beast's AS is its Speed. It counters at range 1 like any unit |
| **Movement** (backlog) | Owns the Terrain Bonus to Defense and Avoid |
| **Durability** (backlog) | Owns what a strike costs a physical weapon (*Open Decisions → 1*) |
| **Critical Hits** | No longer a separate system: merged into *Core Rules → 8* (decided by Dardan, 2026-09-29), its numbers in the guide |

---

## UI & Display

- **The battle forecast** as in *Core Rules → 11*: both units side by side, the strike count as a multiplier next to the damage, a greyed counter column with its reason when the defender cannot answer.
- **Displayed Hit only.** No real-chance figure anywhere in the forecast (decided).
- **The exchange plays out in the order the forecast listed**, strike by strike, so a player can follow which roll failed him.
- **The danger overlay** shows every tile the enemy can attack on its next phase; it is how the player reads which counters he will face before he moves.

---

## Open Decisions

Everything below is written into the rules above in its **cautious form**. Each is Dardan's to confirm or change.

**Decided by Dardan and therefore not listed (2026-09-29):** Tellius as the formula base, Radiant Dawn over Path of Radiance because there is no Con; only this game's own terms added on top; the Tellius shapes of AS and Avoid; the tuning values kept (triangle, passive budget, Affinity and Biorhythm values, doubling threshold, critical multiplier); Dex in Skill's role; the strike order; doubling as two separate strikes; counters on both phases within range, the catalog's range gaps kept; Brave as two strikes in a row; 2RN for the hit roll with the displayed Hit only in the forecast, and the accepted tension with Pillar 5; a single critical roll; minimum damage 0. Later the same day: the *Critical Hits* backlog item merged into *Core Rules → 8*; effectiveness multiplies Might instead of adding a flat value (the multiplier's size is a proposal in the guide); standard tomes reach 1–2, so mages counter adjacent attackers.

1. **"Attack" in other specifications: a strike or a combat?** Several rules count "an attack" and were written before doubling was two strikes. Conservative reading, until each owner decides: **per strike** wherever something happens because a strike lands or is made – a Use spent, a tome's MP paid (Tellius spends a use per strike), an element applied ([Magic System → 3](Magic-System.md#3--how-elements-are-applied)), a *Wavelength* count spent ([The Nexus → Open decisions → 30](Nexus.md#open-decisions)); **per combat** wherever something is earned for acting – a non-mage's MP gain ([Combat Arts → Balancing](Combat-Arts.md#balancing)), the *Bloodoath* Echo (already "one per combat"), affinity deeds. The reason for the split: costs and on-hit effects follow the strike, as in Tellius; rewards per strike would let a Brave weapon or a follow-up multiply income. The alternative is one reading for everything.
2. **Negative Attack Speed.** `Spd − max(0, Wt − Str)` goes below zero when Weight exceeds Strength plus Speed – a Citizen with Speed 3 and Strength 3 under a Bronze Cannon (Weight 14) has AS −8, and his Avoid starts below his Luck. Conservative: the formula as decided, with no floor. The alternative is to floor AS at 0 for Avoid, for doubling, or for both.
3. **AS without an attacking weapon.** A unit holding only a staff, only an effect tome or nothing has no Weight in the formula. Conservative, the Tellius convention: Weight 0, so AS equals Speed. The alternative counts the staff's Weight, which would make the healer the one unit whose tool slows it without letting it fight.
4. **The critical multiplier and the reaction bonus in one strike.** Neither the guide nor the Magic System says how they combine. Conservative: both multiply the strike's damage after Defense, and fractions are rounded down once, at the end. The alternative adds the percentages before multiplying.
5. **Combat arts in the exchange.** An art is never a counter (decided). Whether the target counters an art, and whether an art earns a follow-up, is not written. Conservative: the target counters as it would any attack unless the art's row says otherwise, and an art is a single strike with no follow-up (the *Three Houses* convention). The alternative lets an art double like an ordinary attack. The owner is [Combat Arts](Combat-Arts.md).
6. **Other percentage rolls.** Only the hit roll is 2RN, and the critical roll is single. Ability triggers ([Abilities → Trigger types](Abilities.md#3--trigger-types)) and any other chance are not stated. Conservative: a single roll, as the critical. The alternative puts every chance on 2RN.
7. **Does the game tell the player about 2RN?** The forecast shows only the displayed Hit (decided). Whether a help text, a manual page or an in-world source says that high numbers are safer than they look is not decided. Conservative: nothing beyond the forecast; this document states the rule. The alternative is a single line of help text, which would close most of the Pillar 5 gap without changing the forecast.
8. **Weights set against the old AS formula.** The catalog's weights and several of their rationales ("heavy enough that almost nobody doubles with it", Brave's +4 Weight "means a Brave user rarely doubles on top of it") were derived when Strength offset only a fifth of Weight. Under `max(0, Wt − Str)` a unit whose Strength reaches the weapon's Weight carries it for free. Nothing was retuned; the review is Dardan's.
9. **The Ch 01 introduction has no level document yet.** [Level 01](../levels/Level-01-Every-End.md) is an empty stub and Dardan's and Hasan's stat blocks are empty, so nothing yet makes fight 1 show "stronger against cleverer" in the forecast. That is `levelcraft`'s and `statcraft`'s work.

---

**Version:** 1.0
**Created:** 2026-09-29
**Last updated:** 2026-09-29 – written from the backlog on Dardan's decisions of the same day: Tellius formula shapes, the Tellius exchange, 2RN. Follow-up the same day: Critical Hits merged in, effectiveness as a Might multiplier, tomes at range 1–2.
**Cross-references:** [Balancing Guide](../Balancing-Guide.md) · [Weapon Triangles](Weapon-Triangles.md) · [Weapons](../catalog/Weapons.md) · [Magic Tomes](../catalog/Magic-Tomes.md) · [Affinity](Affinity.md) · [Biorhythm](Biorythm.md) · [Magic System](Magic-System.md) · [Combat Arts](Combat-Arts.md) · [Abilities](Abilities.md) · [The Nexus](Nexus.md) · [Design Pillars](../Design-Pillars.md)
