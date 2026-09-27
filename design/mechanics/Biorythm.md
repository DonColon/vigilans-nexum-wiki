# Biorhythm

The rhythm every unit carries into battle. This document covers what a biorhythm is, how the round number puts a unit into Resonance, Neutral or Dissonance, the one type that follows no fixed sequence (*Chaos*), Dardan's own type (*Animado*), and what happens to his rhythm when *Wavelength* carries a friend's. It holds the rules only. Every value lives in the [Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm), every type in the [catalog → Biorhythms](../catalog/Biorhythms.md), and which unit carries which type is on its character sheet, or, for an enemy, on its class row.

> **Related files:** [Biorhythms (catalog)](../catalog/Biorhythms.md) · [Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm) · [The Nexus → Wavelength](Nexus.md#8--wavelength) · [Affinity](Affinity.md) · [Unit Classes](../catalog/Unit-Classes.md) · [Progression System](../Progression-System.md) · [Design Pillars](../Design-Pillars.md) · [Levels → Ch 02](../levels/README.md#part-01-path-of-liberation) · [Ch 02](../../story/chapters/Part-01-Path-Of-Liberation/Chapter-02-Is-A-New-Beginning.md)

---

## Overview

Everyone has a biorhythm, whether a playable unit or an enemy. It is the rhythm of a person's life, like a heartbeat. It was there before the battle and it will be there after. It does not change with a class or a level. On some rounds it beats with the fight and on others against it. In play, each unit carries one **biorhythm type**. For every unit and every round, the **round number** decides one of three states:

- **Resonance:** the unit fights better.
- **Neutral:** nothing changes.
- **Dissonance:** the unit fights worse.

**Every type reads the round number.** Most follow a fixed sequence, such as even rounds, multiples of three or the Fibonacci numbers, and the whole map can be read from them on turn one. The one type without a fixed sequence is **Chaos**. It rolls its sequence when the battle begins and shows it from the first turn, so it too is read off the round counter from then on.

Dardan's type is **Animado**. It resonates on the rounds n·(n+1)/2 + 1: 1, 2, 4, 7, 11, 16, 22, 29 … The gaps between his beats grow by one each time. He gives everything, eases off because it gets to be too much, and still comes back, a little later each time. His own rhythm is densest at the start of a map and thins out as the map goes on.

The Nexus reaches into the system at one point. When Dardan borrows a friend's element through [Wavelength](Nexus.md#8--wavelength), he also takes on **that friend's whole biorhythm** for as long as the element lasts, and his own is suspended for that time. He carries either his own heartbeat or a friend's, never both. Borrowing early costs him his densest beats. Later, as they thin, he leans on his friends' rhythm. That is his arc: he carries too much alone, and learns not to.

The purpose in one sentence: **the player decides who fights in which round – whom to send in on a round that belongs to them, whom to hold back on a round that drowns them out, and which enemy to take on while its own rhythm is against it – and, for Dardan alone, when to trade his own heartbeat for a friend's.**

|              | Biorhythm |
| ------------ | --------- |
| Phase        | Both phases. The state is set per **round** and holds for the Player Phase and the Enemy Phase of that round |
| Trigger      | Automatic. The round number for every fixed-sequence type, and the round number against the battle-start roll for *Chaos*. The only player action that touches it is *Wavelength* (Dardan) |
| Resource     | None. It is a passive state |
| Core feature | Every unit has one type, and it never changes. Three states per round, readable ahead. Enemies have it too, one type per class. Wavelength can swap Dardan's rhythm for a friend's for the length of a loan |

**A name to keep apart:** *Resonance* is also the name of the Elementalist's class ability in [Abilities](../catalog/Abilities.md), which is unrelated. The collision is flagged under *Open decisions → 14*.

---

## Prerequisites

| Condition | Rule |
| --------- | ---- |
| Units | **Every playable unit and every enemy unit.** Several kinds of unit have **no type** and are Neutral in every round. This is the conservative reading of "everyone" (*Open decisions → 11*). They are: summoned Solmare beasts ([Beast Summon](Beast-Summon.md)), Other-faction units, and enemies whose class row carries no type. That last group includes wild beasts, which have no class row |
| Where the type comes from | **Playable unit:** the `**Biorhythm:**` field on its character sheet, directly below `**Elemental Affinity:**`. The type is fixed and can never be changed. **Enemy unit:** the *Biorhythm* column of its class row in [Unit Classes](../catalog/Unit-Classes.md). An enemy's type follows its class, and a promoted enemy takes the type of its new class. **Unique types never go to a class.** They are reserved for main characters |
| System active | From **Ch 02**, for both sides. In **Ch 01** no unit has a biorhythm. Nothing is shown and nothing applies (*Introduction*) |
| Mode | Every mode. Only the strength of Dissonance changes by difficulty ([Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm)) |
| Band | Biorhythm is not a Nexus ability, and a black band does not touch it. Only *Wavelength*, and with it the rhythm copy, is locked with the rest of the kit |

---

## Cost

| What | Value |
| ---- | ----- |
| Resource | **None.** Nobody pays anything to have a rhythm |
| Action | **None.** The state is set by the round, not by a command. The one exception is Dardan's *Wavelength*, whose price is a command and a cooldown and is paid for the element anyway ([The Nexus → Cost](Nexus.md#cost)). The rhythm comes with the element at no extra cost |
| Further cost | **Timing.** The price of the system is the round in which the player cannot wait. A unit sent into a fight on a Dissonance round fights worse, and an enemy engaged on its Resonance round fights better. The cost is the tempo the player gives up by holding a unit back for one round, or the risk he accepts by not holding it back. **His own heartbeat, for Wavelength.** While a borrowed rhythm runs, Animado is suspended. Every one of his own resonance rounds the loan covers is given up, and the donor's Dissonance comes with the donor's Resonance (*Core Rules → 8*). The price is highest early in a map, where Animado's beats cluster |
| Visible before use | Every unit's type and its state this round are on the unit and in every battle forecast, for enemies as well. The coming rounds are previewed per unit, so a Dissonance round is seen before it arrives. *Chaos*'s roll is shown from the first turn. *Wavelength*'s preview shows each donor's type and state beside the element it lends, and which of Dardan's own resonance rounds the loan would cover (*UI & Display*). Nothing about a rhythm is learned after the fact |

---

## Core Rules

### 1 – The round

A **round** is one Player Phase plus the Enemy Phase that follows it. This is the definition [Affinity → Core Rules → 2](Affinity.md#2--earning-points-deeds-never-proximity) uses for the shared kill. Any phase of another faction that falls between them belongs to the same round. Rounds are numbered from **1**, the first Player Phase of the map, and the numbering restarts on every map.

A unit's state is set **at the start of each round**. It holds for every combat the unit fights in that round, on either phase, attacking or defending. It does not change mid-round, with one exception: a *Wavelength* copy begins and ends when the element does (*→ 8*).

### 2 – Types and tiers

Every type belongs to one of three **tiers**: **Standard**, **Rare** and **Unique**. The list of types, the tier of each and the sequence each one follows are in the [catalog](../catalog/Biorhythms.md).

- **Fixed-sequence types** are a set of round numbers: their sequence. Every Standard and Rare type is one. So is every Unique type except Chaos: *Crescendo*, *Mersenne*, *Perfectus* and *Animado*.
- **Chaos** is the one type without a fixed sequence. It rolls one when the battle begins (*→ 5*).

When a rule below says "**the other types of its tier**", it means the fixed-sequence types listed in the catalog under that tier. Chaos's roll never counts as another type for anyone. Neither does any Unique type, because each Unique type is a tier of one: *Animado* never counts toward *Triangulus*'s overlaps, however close their sequences sit (*Open decisions → 4*).

### 3 – The three states: Standard and Rare types

For a unit whose type is a Standard or Rare type, in round *n*:

| State | Condition |
| ----- | --------- |
| **Resonance – single** | *n* belongs to the unit's own sequence, and to the sequence of **no** other type of its tier |
| **Resonance – double** | *n* belongs to the unit's own sequence **and** to the sequence of **at least one** other type of its tier |
| **Dissonance** | *n* does **not** belong to the unit's own sequence, **and** it belongs to the sequences of **at least two** other types of its tier |
| **Neutral** | Every other round |

The in-world reading is short. On your own beat you are strong. Your beat is stronger when another rhythm of your kind joins it. When two other rhythms of your kind beat together without you, you are drowned out.

**The rule is precise on purpose.** The old wording ("Dissonance: the round belongs to *another* sequence") could not be applied. Between them, the two parity types cover every round there is, so almost every round belongs to *some* other sequence. That wording would have put every unit in Dissonance on every round in which it did not resonate, and Neutral would never have existed. The same problem hit "double". If every type in the game counted, every Rare type's resonance round would also be a Standard parity round, and Rare-single would never occur. Counting only the unit's **own tier** and requiring **two** others for Dissonance is the narrowest reading that gives all four states a place. It is written in its conservative form under *Open decisions → 1–2*.

**Consequences to read off the rule, not exceptions to it:**

- **Parity types.** Every round is either even or odd, so every resonance round of the other two Standard types (multiples of three, of five) is also a parity round. Those two types always resonate **double**, on fewer rounds.
- **The parity types themselves.** They resonate on every other round, mostly single. They are double only where a multiple of three or five falls on their parity.
- **Rare rounds.** Across the Rare tier, the low rounds are crowded with overlaps and the later ones thin out. A Rare type resonates double early in a map and mostly single late.

That is the intended texture: frequent but weak against rare but strong. Whether every Standard type still comes out fair is *Open decisions → 1*.

### 4 – The fixed-sequence Unique types

*Crescendo*, *Mersenne*, *Perfectus* and *Animado* resonate in every round that belongs to their sequence, at **their own value**. A Unique type has **no single or double**: its row in the Balancing Guide is one value. A Unique type is **never in Dissonance** (conservative; *Open decisions → 3*). Each Unique type is a tier of one, so no "other types of its tier" exist to drown it out. Every other round is Neutral.

For the first three, the price is scarcity: their sequences are the sparsest in the game. **Animado is not sparse.** It resonates on 8 rounds up to round 30, where the others manage 2 to 4. Its price is where those beats fall: four of them in the first seven rounds, and then ever further apart. Its value is tuned against that frequency, not against its tier-mates' ([Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm); *Open decisions → 7*).

### 5 – Chaos

Chaos stays **random per battle**.

1. **When the battle begins**, before the first Player Phase, Chaos rolls **one Standard or Rare type**, each equally likely (conservative; *Open decisions → 8*). The rolled type is Chaos's sequence **for this battle**.
2. **It is shown from turn 1.** The rolled type sits on the unit like any other type, and the coming rounds are previewed as they are for everyone ([Pillar 5](../Design-Pillars.md)). From that moment Chaos is exactly as legible as any fixed type. The randomness lies in which map the player gets, not in which round.
3. **States.** Resonance and Dissonance follow the rolled type's rounds, read inside the rolled type's tier by *→ 3*. The **strengths are Chaos's own**. Resonance takes the Chaos row of the Unique tier, with no single or double. Dissonance takes the **Chaos Dissonance** row, which is stronger than ordinary Dissonance on every difficulty that has Dissonance at all ([Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm)). This is the gamble: a unique-strength resonance, paid for with a heavier Dissonance.
4. The roll is not a type for anyone else. It never counts toward another unit's single, double or Dissonance.

### 6 – Animado

Animado is Dardan's type, as his sheet records. It is a round-number sequence like every other type. Dardan did not want his rhythm to be the one exception.

1. **The sequence.** Resonance in the rounds **n·(n+1)/2 + 1**, for n = 0, 1, 2 …: **1, 2, 4, 7, 11, 16, 22, 29, 37 …** Each is a triangular number plus one, so Animado resonates exactly one round after *Triangulus*. The two share only round 1. The mathematical origin is in the [catalog](../catalog/Biorhythms.md#unique).
2. **Tier.** Unique, reserved for Dardan. It has one value, no single or double, and no Dissonance (*→ 4*).
3. **The shape.** The gaps grow by one each time: 1, 2, 3, 4, 5, 6, 7 … In the first seven rounds Dardan resonates four times, and after that less and less often. On the maps where the opening matters most, his own heartbeat carries him. On long maps it thins, and that is where [Wavelength](Nexus.md#8--wavelength) lets him lean on a friend's (*→ 8*).
4. **Suspended under Wavelength.** While a borrowed rhythm runs, Animado neither resonates nor applies (*→ 8*).

### 7 – What the states do

Resonance and Dissonance change four things in combat: **Attack, Hit, Avoid and Critical**. Which terms each tier touches, and by how much, is in the [Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm).

- The change enters the [combat formulas](../Balancing-Guide.md#-damage-calculation-formula) as its own term, **Biorhythm**, next to the *Affinity Bonus* term. The two are **separate terms and stack** (*Interaction → Affinity*).
- It changes nothing else. It does not touch Def, Res, Dodge, movement, the amount a heal restores, or MP.
- Old wording spoke of "damage". It enters as a change to **Attack**, before Defense is subtracted (conservative; *Open decisions → 13*).
- Dissonance applies **the row of the difficulty being played** to every unit, player and enemy alike (*Open decisions → 12*). On the easiest difficulty that row is empty.

### 8 – Wavelength carries the rhythm

When Dardan borrows an element through [Wavelength](Nexus.md#8--wavelength), he takes on **the donor's whole biorhythm** with it. Decided by Dardan.

1. **What is copied.** The donor's **type**, with its **Resonance and its Dissonance**, and its **tier strength**. For the whole loan, Dardan is read **as a unit of that type**, against the **current round**, by *→ 3–5*:
   - A copied Standard or Rare type resonates single or double and falls into Dissonance on exactly the rounds the donor does.
   - A copied Unique type resonates at its Unique value.
   - A copied **Chaos** is the donor's roll for this battle, **with the stronger Chaos Dissonance**. Whoever copies Chaos copies the whole gamble.

   The state is read round by round while the loan lasts, so a loan that runs into the next round meets that round's state. The donor keeps its own rhythm unchanged, because lending costs it nothing.
2. **How long.** **Exactly as long as the borrowed element.** The copy starts at the moment of the command and ends when the Wavelength count is spent, when Dardan falls, when the map ends, or when a second Wavelength replaces the element. In that last case the second donor's rhythm replaces the first. What becomes of the loan if the donor falls is [The Nexus → Open decisions → 26](Nexus.md#open-decisions), and the rhythm follows the element there too. **Nothing new is counted and nothing new is displayed:** the attacks left on the element are the attacks left on the rhythm.
3. **Animado is suspended while it runs.** That is the price: Dardan carries either his own heartbeat or a friend's.
   - Every Animado resonance round the loan covers is **lost**. It is not banked and not made up afterwards (decided by Dardan, 2026-09-28).
   - When the loan runs out, Animado is **reactivated immediately**, read against the current round. If the loan ends mid-round in one of Animado's rounds, Dardan resonates for the rest of that round (decided by Dardan, 2026-09-28).
   - **The tension this creates is the design.** Animado's beats are densest early (1, 2, 4, 7). A loan on round 2 costs him a beat of his own. A loan on round 13 costs him nothing, because his next beat is round 16. Early in a map, borrowing is the expensive choice. Later, as his own beats thin, it becomes the natural one. He learns to lean on his friends at exactly the point where he can no longer carry it alone.
4. **Where no rhythm comes from.** Only a living Wavelength donor lends a rhythm:
   - The **Soulcairn** partner is not a donor ([The Nexus → Open decisions → 25](Nexus.md#open-decisions)), so no rhythm comes from the fallen. This holds even during a Nexus Mastery Soulcairn call. The call gives an element, not a rhythm, and Animado keeps running under it.
   - A **summoned beast** is never a donor and has no rhythm to give.
   - A donor with **no type** gives none. This happens only where the sheet has no type yet (*Open decisions → 16*). Dardan is then Neutral for the loan, and Animado is still suspended.
5. **Still no affinity.** Wavelength earns the pair no affinity points ([The Nexus → 8](Nexus.md#8--wavelength)), and carrying a rhythm changes nothing about that.

**Why the rhythm may cross the band.** It is argued in full at [Affinity → What Affinity is not](Affinity.md#what-affinity-is-not-skill-links-rejected). In short, the element and the rhythm are both **traits of the person**, not parts of a build. Both sit on the sheet, neither is chosen, and neither changes with class, level or seal. The rhythm crosses **whole**, with its bad rounds as well as its good ones. It is not a bonus picked out of someone's build.

### 9 – What a biorhythm is not

- **Not an ability.** It takes no Capacity, cannot be learned, unequipped or swapped, and is not changed by any class, seal, scroll or item.
- **Not reached by Earthbound.** The seal removes abilities, arts, magic and auras, which is the explicit list in [The Nexus → 5](Nexus.md#5--earthbound). A sealed enemy keeps its heartbeat.
- **Not a deed.** Resonance earns no affinity points (*Interaction → Affinity*).
- **Not chosen.** A playable unit's type is set on the sheet as part of who the person is. An enemy's type is set by its class.
- **Not steered.** No player action changes which rounds a type resonates on. The only lever is Wavelength's, and it swaps whose rhythm Dardan carries. It does not move anyone's rhythm.

---

## Acquisition / Access

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| Universal | Every playable unit and every enemy has a type from Ch 02 on. There is nothing to acquire, and a unit cannot be without one except for the units listed under *Prerequisites* | From Level 02 |
| Character sheet | A playable unit's type is the `**Biorhythm:**` field on its sheet. It is fixed and never changes, even across promotions | With the sheet |
| Class row | An enemy's type is its class's entry in the *Biorhythm* column of [Unit Classes](../catalog/Unit-Classes.md). It follows the class, so a promoted enemy takes the new class's type. Named bosses follow their class too (conservative; *Open decisions → 10*). Unique types never appear there | With the class |
| Battle start – Chaos | The Chaos holder rolls a Standard or Rare type at the start of each battle (*Core Rules → 5*) | Every battle |
| Wavelength – Dardan only | For the length of a loan, Dardan carries the donor's type in place of his own (*Core Rules → 8*) | From the chapter that introduces Wavelength, which is not yet decided ([The Nexus → Open decisions → 31](Nexus.md#open-decisions)) |
| Not available | No item, class, seal or story event changes a type. A promotion changes a playable unit's class, never its rhythm | – |

---

## Strategic Depth

- **The round counter is a map.** Every unit's good and bad rounds for the whole map can be read on turn one. A turn plan becomes a timetable: the Trinus lancer opens on round 3, the Geminus archer waits for round 4, and the Quintus fighter is not sent across the bridge on round 6.
- **The enemy has a rhythm too.** A class resonating this round is the class to avoid this Enemy Phase. A class in Dissonance is the one to strike now. Because enemies take their type from their class, a whole squad of one class shares a heartbeat. Reading one enemy reads the squad, and an enemy wave that resonates together is a wave to hold a line against, not to meet in the open.
- **Holding back is a move.** With a Dissonance round coming, a unit can be kept one tile back, sent to shove or heal instead of fight, or swapped out of the front. The system rewards tempo: the player who lets a unit sit out its bad round and brings it back on its good one is spending turns, and the map decides whether he can afford them.
- **Dardan's rhythm front-loads him.** Animado resonates on rounds 1, 2, 4 and 7, so the opening of a map is when Dardan's own heartbeat is strongest, with no Dissonance to fear at any point. On a short map, that is most of the fight. On a long one, the player sees the gaps widen on the round preview (11, 16, 22, 29) and knows that from mid-map on Dardan's own rhythm will rarely carry him.
- **Wavelength asks whose heartbeat.** Borrowing an element now also means borrowing a rhythm, so the choice of donor has two columns: the element the next two turns need, and the rhythm the next rounds hold. A friend whose type resonates this round lends a strong round with the element. A friend whose type falls into Dissonance next round lends a problem if the loan lasts that long. And a loan that covers one of Animado's own rounds gives that round up. Early in a map this is a real price. Later it is often free, and that is when leaning on a friend becomes the natural play.
- **Example.** Round 6, which is not an Animado round (his last was 4, his next is 7).
  - **A Perfectus ally.** Perfectus resonates on round 6, so borrowing its element also gives Dardan Perfectus's Unique resonance for as long as the element lasts. If the count survives into round 7, he is Neutral there, because Perfectus has no Dissonance, and he has also given up Animado's round 7.
  - **A Trinus ally.** Borrowing on round 6 gives a double Standard resonance.
  - **A Quintus ally.** Borrowing on round 6 brings Dissonance with the element: six is a multiple of three and not of five, so two other Standard types beat together without Quintus.
  - **The same choice on round 13.** It costs Dardan nothing of his own, because his next beat is round 16.
- **Chaos is a battle-start question.** The roll is visible before the first move. A Chaos unit that rolled a parity type resonates half the map at Unique strength. One that rolled a sparse Rare type waits for a few big rounds and risks heavier Dissonance between them. The player adapts the unit's role to this map, not to the campaign.

---

## Design Pillars

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | **Partly – through the Nexus.** A rhythm is a person's own and on its own connects nobody. Through Wavelength, one person can carry another's heartbeat, bad rounds included, which is a literal form of the pillar: for a few strikes, Dardan's strength follows a friend's rhythm instead of his own. The bond decides how long, because the count is read from the affinity rank. And Animado's shape makes that bond a need, not a luxury: his own beats thin as the map goes on, and his friends' rhythms are what he has left to lean on. The pillar is served where the system meets the band, not everywhere, which is honest for a trait of the person |
| **Depth** | Easy to learn, hard to master? | **Yes.** "Each unit has good rounds and bad rounds, and you can see which" is ten seconds. Mastering it means reading a dozen types against the round counter, the enemy classes' rhythms against your own, and weighing a friend's rhythm, and Dardan's own thinning beats, against the element a loan comes with |
| **Weight** | Do the decisions have long-term consequences? | **Partly, and deliberately so.** A single round's decision is a round's decision, and nothing about a rhythm is irreversible within a map. The long-term weight is in what cannot be changed: a unit's type is fixed for the whole campaign, so which units the player deploys, pairs and promotes is also a choice of which rhythms the army carries. A roster of Quintus units plays a different game from a roster of parity types |
| **Integration** | Does the mechanic tell a story? | **Yes.** Everyone has a heartbeat, the enemy too, and Dardan can read an opponent's. That is how Ch 02 introduces it. Animado is Dardan's character as a number: "steht immer einmal mehr auf als er hinfällt". He comes back every time, a little later each time, and the rhythm that carries him alone at the start is the one he has to supplement with his friends' later. Chaos is its holder's rhythm, different every time. Wavelength carrying the rhythm is the band doing what the story says it does, carrying what a person is from one to another |
| **Fairness** | Is the challenge respectful of the player's time? | **Yes, by construction.** Every state is visible before it matters. The type and state of every unit, the enemy's included, the coming rounds, Chaos's roll from turn 1, and the copied rhythm and the Animado rounds a loan would cover in the Wavelength preview are all on screen. It adds no roll. It changes hit, avoid and attack by values the forecast shows. A player who loses a unit to an enemy on its Resonance round saw the gold marker on that enemy before he moved |

**Anti-pillar check:** **No grinding:** it reads rounds, never levels or experience. **No power without price:** fixed-sequence types pay for their Resonance with Dissonance rounds, or, for the Unique types, with scarcity or, in Animado's case, with where the beats fall. Chaos pays with a heavier Dissonance. A borrowed rhythm costs Dardan his own. **Nothing that works only with over-trained units:** the values are flat and read nothing of a unit's stats, so an under-levelled unit resonates exactly as hard as a capped one. **Nothing generic:** round-number rhythms exist nowhere in the genre, and one that Dardan can swap for a friend's through the band is this game's own.

**The trap check.** No trap options arise, because no option is chosen: the type is set on the sheet or by the class. The one choice the system adds is **Wavelength's**, Dardan's own rhythm against a friend's, and both answers have their situation. Keep his own when the loan would cover one of Animado's rounds and the donors offer less. Borrow when it would not, or when the donor resonates stronger, or when the element is worth more than the round he gives up. Either answer can be read off the screen before the command. A value high enough to make Animado's early cluster decisive would turn early borrowing into a trap. The Balancing Guide tunes against exactly that.

*Is there a combination that trivialises a fight?* The candidates, and why they stop:

- **Animado's own frequency.** Eight resonance rounds up to 30 with no Dissonance is the strongest rhythm a single unit carries. It is bounded by its value, which is proposed **below** the Unique tier's common row and flagged ([Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm)).
- **Borrowing a Unique rhythm on its round.** Bounded by the Wavelength cooldown, the count and the donor's range, and by Animado being suspended for the loan.
- **Biorhythm on top of the Affinity bonus.** Two separate terms. Biorhythm reads no position, so the stack pays nothing for clumping (*Interaction → Affinity*).

---

## Introduction

**First chapter:** **Ch 02**, *…Is A New Beginning*, alongside the weapon triangle. No rule caps how many mechanics a level introduces, but the map must carry each one (`levelcraft`). Biorhythm does nothing before Ch 02, for either side: **Ch 01 has none**.

**How it is introduced:** in the chapter's beats, before any screen names the system. Lorekeeper is revising the chapter text accordingly. The beats below are Dardan's decision, and this document does not write the prose.

- *Training, at the start.* Dardan tells Hasan that he can **read an opponent's rhythm**. This is the in-world sentence the rest of the system hangs on, and the moment the rhythm marker appears on units for the first time.
- *The thieves attack.* Dardan tells Hasan that **"we have the advantage"**. So the thieves must be **weak early**, not strong, and the map shows it. **Decided by Dardan (2026-09-28): the Thief class is *Quintus*** ([Unit Classes](../catalog/Unit-Classes.md)). Under the Dissonance rule (*Core Rules → 3*), a Quintus unit's opening reads:
  - **Neutral** on rounds 1, 2 and 4.
  - **In Dissonance** on round 3, where Solus and Trinus beat together without it.
  - **In Resonance** from round 5.

  The thieves' leader follows his class (*Open decisions → 10*) and is Quintus as well.
- *Dardan's own rhythm on the same map.* Animado resonates on **rounds 1, 2 and 4**. On the first map that has the system, Dardan carries gold on the opening turns while the enemy is grey, and red on round 3. The round preview shows the thieves turning gold on round 5. **The tutorial's lesson: use your own rhythm before the enemy finds theirs.** The same preview shows Dardan's gaps widening after round 4, which teaches that rhythms have gaps.
- *The objective carries the lesson.* **Level 02 is Defeat Boss: the thieves' leader** (decided by Dardan, 2026-09-28). When he falls, the remaining thieves flee. That matches the prose: his orders stop, and the gang no longer knows where to go. As a side objective, every thief caught before then raises the reward, and a thief who reaches the map edge with the loot is lost. The rhythm reading is framing, not an added rule: **the leader sets the gang's beat, and taking him out breaks it.** The player who strikes at him in rounds 1–4, while Animado beats and the gang's rhythm has not yet arrived, ends the map before round 5 turns the thieves gold. Every round spent chasing loot instead brings that round closer.
- *In the fight.* Dardan is hit, gets back up with a dry remark and hits harder afterwards. **This moment is story, not rule.** It belongs to the chapter's prose and to who Dardan is. No mechanic is tied to it, and the level does not need to arrange it.

Hasan's Chaos is on the map from the same moment, rolled at the start of the battle. The chapter does not need to explain it. The marker on him is different on the next map, and the player finds out why.

**What the player must already know:** movement, attack and the battle forecast (Ch 01), and that turns are counted, since the round counter becomes information here.

**Level index.** Ch 02 carries *Weapon Triangle* and *Biorhythm* in the *New Mechanics* column of `design/levels/README.md`, and the [Progression System](../Progression-System.md#part-01-path-of-liberation-chapters-1-8) carries both at Ch 02.

---

## Catalog

All types: [Biorhythms](../catalog/Biorhythms.md). Which type a playable unit carries is on its character sheet. Which type an enemy carries is its class row in [Unit Classes](../catalog/Unit-Classes.md).

---

## Balancing Guidelines

Every value lives in the [Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm):

| Parameter | What it tunes |
| --------- | ------------- |
| Resonance by tier – Standard single / double, Rare single / double | What a unit's own beat is worth. Rarer beats are worth more |
| Resonance of each Unique type | The strength of the sparsest sequences, of Chaos, and of Animado, which is the one Unique type that is not sparse and is tuned against its frequency |
| Dissonance by difficulty | How much the bad rounds cost on each mode. The easiest mode has none |
| Chaos Dissonance by difficulty | The heavier price of the Chaos gamble |

**Rules, not tuning values**, and therefore here:

- Every unit has one type, which never changes. Enemies take theirs from their class, and Unique types never go to a class.
- Every type reads the round number, Chaos through its battle-start roll.
- The round is the Player Phase plus the Enemy Phase that follows.
- Single, double and Dissonance are read inside the unit's own tier. Unique types are tiers of one, with no single or double.
- Unique fixed-sequence types have no Dissonance.
- Chaos rolls a Standard or Rare type per battle, shows it from turn 1 and takes its own, stronger Dissonance.
- Animado resonates on n·(n+1)/2 + 1.
- Wavelength copies the donor's whole rhythm for exactly as long as the element and suspends Animado.
- The Biorhythm term changes Attack, Hit, Avoid and Critical only, and stacks with the Affinity Bonus as a separate term.
- Resonance earns no affinity.
- The system starts in Ch 02.

---

## Interaction with Other Mechanics

| Mechanic | Interaction |
| -------- | ----------- |
| **[Affinity](Affinity.md)** | **Resonance earns no affinity points.** Being in rhythm is not a deed, and a bond is made of what two people do for each other ([Affinity → 2](Affinity.md#2--earning-points-deeds-never-proximity)). **The two combat effects stack as separate terms:** the *Affinity Bonus* and the *Biorhythm* term both enter the [formulas](../Balancing-Guide.md#-damage-calculation-formula). **Does the stack pay for clumping?** No. Affinity already refuses to pay for clumping by counting only the strongest partner in range ([Affinity → 4](Affinity.md#4--the-combat-bonus)), and Biorhythm reads no position at all: a unit resonates the same alone as in a knot. Adding the second term therefore makes no formation worth more than it was. The only place position enters is Wavelength's donor range, which is the Nexus's rank-range through everything, not adjacency. **What crosses the band:** Wavelength reads the rank for who may lend and for how long, and the rhythm now crosses with the element. Both are traits of the person, which is why Skill Links stay rejected ([Affinity → What Affinity is not](Affinity.md#what-affinity-is-not-skill-links-rejected)) |
| **[The Nexus → Wavelength](Nexus.md#8--wavelength)** | Copies the donor's whole biorhythm for exactly as long as the element, and suspends Animado while it runs (*Core Rules → 8*). No new count, no new display. The Nexus Mastery spread of the element to adjacent enemies spreads **no rhythm**: a rhythm is Dardan's state, not something applied to an enemy |
| **[The Nexus](Nexus.md) – every other ability** | None of them touch a rhythm, because every type reads the round number and nothing on the band changes the round. **Bloodoath**: each echo strike is the partner's own attack and reads **the partner's** rhythm. **Dawnbreak** uses the damage formula unchanged ([The Nexus → Open decisions → 41](Nexus.md#open-decisions)), so Dardan's Biorhythm Attack term is in every strike on the line. It rolls no hit, so the Hit term is moot there. **Earthbound** does not seal a rhythm (*Core Rules → 9*). A **black band** locks Wavelength and therefore the rhythm copy, but not Biorhythm itself |
| **[The Nexus → Soulcairn](Nexus.md#7--soulcairn)** | Not a Wavelength donor, so **no rhythm comes from the fallen**, including during the Mastery call, whose element carries no rhythm. Animado keeps running under the call. Once a Wavelength element replaces the fallen element, the Wavelength donor's rhythm applies until its count is spent |
| **[Beast Summon](Beast-Summon.md)** | A summoned beast has **no type**, is Neutral in every round, and is never a donor (conservative; *Open decisions → 11*). A **wild** beast is an enemy but has no class row, so in the conservative reading it has no type either |
| **[Chain Attack](Chain-Attack.md)** | Each attacker in a chain reads its own rhythm on its own strike. Biorhythm does not touch the shield |
| **[Combat Arts](Combat-Arts.md), [Magic System](Magic-System.md)** | An art's or a spell's attack reads the Biorhythm term like any attack, including magical Attack. Elements, reactions and weaknesses are untouched. The rhythm Wavelength carries is not an element, applies nothing and triggers nothing |
| **Battle forecast and formulas** | A **Biorhythm** term on Attack, Hit, Avoid and Critical ([Balancing Guide → Damage Calculation](../Balancing-Guide.md#-damage-calculation-formula)), shown per side in every forecast |
| **Difficulty modes** (backlog) | Dissonance and Chaos Dissonance scale by mode. The rows are in the Balancing Guide's Biorhythm section, and the difficulty table points there |
| **Level design** (`levelcraft`) | A level's enemy roster is also a set of rhythms: its classes decide which rounds the enemy is strong. Levels whose objective turns on a round count (survive N rounds, reinforcements on round R) should be read against the rhythms of the classes involved, and against Animado's early cluster and later gaps. Level 02 must meet the requirement in *Introduction* |
| **Part 05 / Part 06** | Nothing changes between the strands. On Hasan's strand Dardan is absent, so neither Animado nor Wavelength exists there. Chaos works as everywhere |
| **Abilities – *Resonance* (Elementalist)** | Unrelated, but the same word. See *Open decisions → 14* |

---

## UI & Display

- **On every unit, player and enemy:** the type's symbol next to the portrait, and the state as a colour: **Gold** for Resonance, **Grey** for Neutral, **Red** for Dissonance. For Standard and Rare types, Resonance double is marked distinctly from single. Shown from Ch 02 on. In Ch 01 nothing is shown.
- **Round preview:** on inspection, a strip of the coming rounds with each unit's state, far enough ahead to plan a map's opening. It is the same strip for enemies, so the player reads the enemy's rhythm as he reads his own. For Animado it shows the widening gaps directly.
- **Battle forecast:** a *Biorhythm* line on each side, showing the state, the type and the change per term actually applied, next to the *Affinity* line and separate from it.
- **Chaos:** the rolled type is shown on the unit from turn 1, labelled as this battle's roll.
- **Type names and descriptions:** a type's player-facing description names its sequence and nothing else. For **Animado** in particular, nothing player-facing may connect it to Dardan's family before the Part 04 reveal ([catalog → design note](../catalog/Biorhythms.md#unique)).
- **Wavelength, before the command:** each selectable donor shows **its type and its state this round and in the coming ones**, beside the element it lends. This is what the donor already shows on its own unit, not a new symbol. The preview also marks which of **Dardan's own Animado rounds** the loan would cover and suspend, if any.
- **Wavelength, while it runs:** Dardan's ordinary biorhythm indicator shows the **copied type**, with the donor's name, in its current state. The attacks left on the element are the attacks left on the rhythm, and nothing else is counted or displayed.

---

## Open Decisions

Everything below is written into the rules above in its **conservative form**, so that the document is playable as it stands. Each is Dardan's to confirm or widen.

**Decided by Dardan (2026-09-27) and therefore not listed:**

- **Scope and principle.** Everyone has a biorhythm, every playable unit and every enemy, like a heartbeat. The round number decides Resonance, Neutral or Dissonance, and the Standard, Rare and fixed Unique types keep their sequences, with only their numbers moved to the Balancing Guide.
- **The old *Nexus* type is removed.** **Dardan's type is Animado**, a round-number sequence like every other type, resonating on n·(n+1)/2 + 1, Unique tier, reserved for him. The name is coined from *animus*. It is the Niveli family's inheritance, and nothing player-facing may say so before the Part 04 reveal.
- **Wavelength copies the donor's whole biorhythm.** That means type, Resonance, Dissonance and tier strength, read against the current round, for exactly as long as the element. Animado is suspended while it runs.
- **Chaos stays random per battle.** It is rolled at the start and visible from turn 1, and copying it copies its stronger Dissonance.
- **Enemies take their type per class.** The column in the class catalog is left empty for now, and Unique types never go to a class.
- **Where the data lives.** The type list is in the catalog, and each character's type is on the sheet, which closes finding E1 of `notes/Mechanics-Drift.md`.
- **Introduction.** Ch 02, with no cap on mechanics per level.

**Decided by Dardan (2026-09-28) and therefore not listed:**

- **Animado under Wavelength.** It is deactivated while a loan runs. When the loan runs out, it is reactivated immediately and read against the current round. Animado rounds covered by a loan are lost and never made up (*Core Rules → 8.3*). This closes former items 5 and 6.
- **The Thief class is Quintus.** The Ch 02 thieves are weak early: Neutral on rounds 1, 2 and 4, in Dissonance on round 3, in Resonance from round 5. Their leader follows the class.
- **Level 02 is Defeat Boss (the leader).** The rest of the gang flees when he falls. Every thief caught before then raises the reward, and a thief who reaches the map edge with the loot is lost (*Introduction*).

1. **Dissonance: at least two other types of the unit's own tier, and not its own.** The old definition ("the round belongs to another sequence") put every unit in Dissonance on nearly every round it did not resonate, because the two parity types cover every round. The rule written here is the narrowest reading that leaves Neutral a real state.
   - **Consequence to be aware of:** in the Standard tier, the multiples-of-five type is drowned out on every multiple of three that is not a multiple of five. It therefore meets Dissonance more often than the multiples-of-three type meets its own, and resonates less often, which makes it the weakest Standard type under this reading.
   - **Alternatives:** Dissonance only when *every* other type of the tier resonates, which is rarer. Or an explicit Dissonance sequence per type in the catalog, which is a new rule per type.
2. **Double resonance: at least one other type of the unit's own tier shares the round.** Counting every type in the game would make every Rare resonance round double, because every round is a parity round, so Rare-single would never occur. Counting the own tier is the narrower reading. The old overlap table crossed tiers inconsistently and is not kept. **Consequence:** the Standard types that are not parity types always resonate double. The alternative, counting across tiers, is stronger for every Rare type.
3. **Crescendo, Mersenne, Perfectus and Animado have no Dissonance.** Each is a tier of one, so the tier rule gives them none. For the first three the price is scarcity. For Animado, which is not scarce, the price has to come from its value (*→ 7*). The alternative gives the Unique fixed types, or Animado alone, the ordinary Dissonance on some defined set of rounds. For Animado that set could be, for example, the round just before each beat. It would need a rule this document does not have.
4. **Animado stays out of the Rare tier's overlaps.** Its sequence sits one round after *Triangulus* and could be read as a Rare-like neighbour, but as a Unique type it is a tier of one. It never makes a Rare round double, never contributes to a Rare unit's Dissonance, and is never drowned out itself. The alternative, counting it alongside the Rare tier, would put Animado into the Rare overlaps and give it Dissonance rounds.
5. *Decided – closed.* When a loan ends, Animado is reactivated immediately (Dardan, 2026-09-28; see the decided list above). The number is kept so that the items after it keep theirs.
6. *Decided – closed.* Animado rounds covered by a loan are lost (Dardan, 2026-09-28; see the decided list above). The number is kept so that the items after it keep theirs.
7. **Animado's value.** Unique tier, one value. The Balancing Guide's row is a **proposal**, set **below** the tier's common value at the Rare-double level, because Animado resonates on 8 rounds up to 30 where the other Unique types have 2–4, and it has no Dissonance. Dardan has not decided the numbers. Every Biorhythm value was lowered on 2026-09-27 to sit clearly below Affinity and the weapon triangle. All of them are proposals.
8. **What Chaos rolls.** One Standard or Rare type, each **equally likely**, rolled once when the battle begins. Unique types cannot be rolled. The alternatives are weighted odds, or a roll per round, which would break "visible from turn 1". **A related edge:** a map restarted from its beginning is a new battle and rolls again. Whether a Classic reset after a defeat re-rolls belongs with Permadeath & Retreat (backlog).
9. **The enemy column is empty except for Thief.** Until a class's cell is filled, units of that class have **no type** and are Neutral in every round. The column is a backlog item. **Thief is filled: Quintus** (decided by Dardan, 2026-09-28, so that the Ch 02 thieves are weak early; see *Introduction*). The earlier note here, which asked for a type that resonates in round 1, had the requirement backwards and is withdrawn.
10. **Named bosses: no type of their own.** They take their class's type like every enemy. The alternative is a boss-specific type written in the level document. Unique types would still stay reserved for main characters.
11. **Units without a type.** Summoned beasts, Other-faction units, and enemies without a class row (wild beasts) have none. The alternative gives beasts their summoner's type, or a fixed Standard type.
12. **Dissonance by difficulty applies to enemies too.** Read literally from the old rule, the table does not distinguish sides. **Flag:** this means harder modes also weaken enemies more in their Dissonance rounds, which runs against the mode's intent. The alternative is that enemies always take one fixed row whatever the mode.
13. **"Damage" enters as Attack.** The old wording gave Resonance and Dissonance "+/- damage". It is written as a change to the Attack term, before Defense. The two readings differ only when Attack does not exceed Defense.
14. **The name *Resonance*.** The Elementalist's class ability in [Abilities](../catalog/Abilities.md) carries the same word as the biorhythm state. Neither is a Nexus name, so the priority rule does not decide it. Renaming either is Dardan's call. Until then the ability is always written with its class and the state always with *biorhythm*.
15. **Wavelength's introduction chapter.** It is not decided ([The Nexus → Open decisions → 31](Nexus.md#open-decisions)). Until it is, the rhythm copy exists in the rules and on no map.
16. **Gaps, not decisions.** Fourteen playable sheets do not yet name a type. Until they do, the unit has no type in play, and as a Wavelength donor it lends no rhythm. This includes Elena, who is a player-faction unit on Level 08. Filling the sheets is Lorekeeper's, the person first and the type second.

---

**Version:** 2.0
**Created:** 2026-06-08
**Last updated:** 2026-09-27.
- Rewritten in English on the mechanic template.
- All numbers moved to the [Balancing Guide](../Balancing-Guide.md#biorhythm), the type list to the [catalog](../catalog/Biorhythms.md) and the character assignments to the sheets.
- The *Nexus* type was replaced by *Animado*, a round-number sequence like every other type, and Wavelength now copies the donor's rhythm (decided by Dardan).
- Dissonance and double resonance were given a precise definition.

**Cross-references:** [Biorhythms](../catalog/Biorhythms.md) · [Balancing Guide](../Balancing-Guide.md#biorhythm) · [The Nexus](Nexus.md) · [Affinity](Affinity.md) · [Unit Classes](../catalog/Unit-Classes.md) · [Progression System](../Progression-System.md) · [Levels](../levels/README.md) · [Design Pillars](../Design-Pillars.md)
