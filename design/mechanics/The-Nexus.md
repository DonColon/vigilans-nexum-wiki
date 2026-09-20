# The Nexus

Dardan's Lord-Kit system – the four abilities that run over the band between him and his allies: *Exchange*, *Lifeline*, *Heartpulse* and *Earthbound* – what each one does, what it costs, when the band is open and when it is locked, and how the system reads the support rank it depends on. This document holds the rules; every value lives in the [Balancing Guide → The Nexus](../Balancing-Guide.md#the-nexus). It is the specification the game is named after.

> **Related files:** [Abilities → Lord Kit](../catalog/Abilities.md#lord-kit) · [Unit Classes → Special Classes](../catalog/Unit-Classes.md#special-classes) · [Balancing Guide → The Nexus](../Balancing-Guide.md#the-nexus) · [Progression System](../Progression-System.md) · [Design Pillars](../Design-Pillars.md) · [Beast Summon](Beast-Summon.md) · [Biorhythm](Biorythm.md) · [Ch 01](../../story/chapters/Part-01-Path-Of-Liberation/Chapter-01-Every-End.md) · [Ch 05](../../story/chapters/Part-01-Path-Of-Liberation/Chapter-05-A-Heart-Of-Gold.md) · [Ch 08](../../story/chapters/Part-01-Path-Of-Liberation/Chapter-08-The-Vigilant-Knights.md) · [Ch 21](../../story/chapters/Part-03-The-Champions-Road/Chapter-21-Seek-The-Light-Within.md) · [Ch 35](../../story/chapters/Part-05-Divided-We-Face-Our-Sins/Chapter-35-Where-Brilliance-Burns-Itself-Out.md) · [Ch 43](../../story/chapters/Part-07-Before-The-Storm/Chapter-43-She-Who-Judges-All.md) · [Ch 44](../../story/chapters/Part-07-Before-The-Storm/Chapter-44-Must-Face-The-One-Who-Refuses-To-Fall.md) · [Ch 48](../../story/chapters/Part-07-Before-The-Storm/Chapter-48-End-Of-The-World.md)

---

## Overview

The Nexus is the band Dardan has felt since the orphanage – the invisible line between him and every person he trusts. In play it is **a set of four abilities that only Dardan has, and that all act along that line**: he trades places with an ally (*Exchange*), he takes a share of an ally's wounds onto himself (*Lifeline*), he sends strength down every line at once (*Heartpulse*), and – the one ability that reaches the other side – he closes an enemy's access to the band (*Earthbound*). Three of the four read the **support rank** between Dardan and the unit they touch: the closer the bond, the further and the stronger the Nexus reaches. That is the design in one line – the mechanic the game is named after is powered by the relationships the player built.

The purpose in one sentence: **the player decides whose burden Dardan carries this turn – whose place he takes, whose wound he shares, when he spends the one pulse – and pays for it with Dardan's own position and HP.**

|              | The Nexus |
| ------------ | --------- |
| Phase        | Player Phase, on Dardan's turn |
| Trigger      | *Exchange* and *Lifeline* – commands (end movement, not the action); *Heartpulse* and *Earthbound* – actions. See *Cost* |
| Resource     | No MP, no item. A global turn cooldown on *Exchange* and *Earthbound*; one use per chapter on *Heartpulse*; Dardan's own HP on *Lifeline* |
| Core feature | Range and strength scale with support rank; the band is golden (open) or black (locked) per chapter; Dardan is the only unit that has it |

Two things share the name and are **not** this system: the *Nexus* biorhythm type in [Biorhythm](Biorythm.md) is a separate per-round performance rule that happens to be Dardan's, and *Geo* in the [Magic System](Magic-System.md) is the earth element – *Earthbound* is a seal on the band, not Geo magic, and applies no element.

The reference Dardan named for *Earthbound* is *EarthBound* (Mother 2): its final boss does not fall to damage but to what the player built over the whole game – Paula's prayer reaching everyone the party ever met. Only that principle is taken: the Dajjal is beaten through the band, and the band is what the player has been building since Ch 01. The form of the fight is not taken; it belongs to Level 52.

---

## Prerequisites

| Condition | Rule |
| --------- | ---- |
| Unit | **Dardan only.** No class, scroll, item or story event gives the Nexus to anyone else. No enemy has it – see *Core Rules → 1* for why the mechanic-without-enemy rule is set aside here |
| Held | Dardan holds the ability in question (*Acquisition*): *Exchange* from Ch 08, *Heartpulse* from Ch 21, *Earthbound* from Ch 44, *Lifeline* from a chapter not yet decided |
| Band open | The band is **golden** on this map. A chapter whose level box locks the Nexus shows the band **black**, and none of the four abilities can be used (*Core Rules → 1*) |
| Target | *Exchange*, *Lifeline*: one unit of the **player's faction** with which Dardan holds a support rank at or above the ability's threshold. *Heartpulse*: no target – every unit of the player's faction on the map. *Earthbound*: one **enemy** unit. A summoned Solmare beast is never a target of any Nexus ability (*Interaction*) |
| Turn state | Commands (*Exchange*, *Lifeline*) require that Dardan has not yet used his action this turn; actions (*Heartpulse*, *Earthbound*) require that he has neither acted nor used a command that ends his turn. Movement may come first in every case |
| Cooldown / uses | *Exchange* and *Earthbound*: their cooldown is at 0. *Heartpulse*: not yet used this chapter |

---

## Cost

| What | Value |
| ---- | ----- |
| Resource | **None of the usual ones.** No MP – Dardan's sword line does not grow Mag, and a signature move priced in a stat its owner never builds would be a trap. No uses per map for three of the four – a stock gets hoarded for the boss, and the Nexus is meant to be used. Instead: a **global turn cooldown** on *Exchange* and *Earthbound* (one counter each, flat, independent of rank – values in the [Balancing Guide](../Balancing-Guide.md#the-nexus)), **once per chapter** on *Heartpulse* (fixed by [Ch 21](../../story/chapters/Part-03-The-Champions-Road/Chapter-21-Seek-The-Light-Within.md) and the one place where uses-per-map is right: a map-wide heal without a limit would replace every healer), and **Dardan's own HP** on *Lifeline* |
| Action | *Exchange* and *Lifeline* are **commands**: they end Dardan's movement for the turn but not his action – he may still attack or use an item afterwards, from the tile he now stands on. *Heartpulse* and *Earthbound* are **actions**: they are Dardan's turn |
| Further cost | **Position.** After an *Exchange* Dardan stands where the ally stood – inside whatever reach the ally was in – and cannot move away. That is the price built into the form, and it is why the cooldown is flat: the swap is already paid in exposure. **Risk.** *Lifeline* has no floor – Dardan can be killed by damage dealt to someone else – and every status the ally would have received lands on Dardan instead: he can be put to sleep by an arrow aimed at someone else. **Rhythm.** A cooldown spent now is a cooldown not available two turns from now; each use is a timing decision, not a stock decision |
| Visible before use | Cooldown counters and the Heartpulse use are shown on Dardan at all times. The band's colour is shown on Dardan from the first turn of the map. *Exchange* and *Lifeline* highlight the **allies** Dardan can reach (range differs per ally, so tiles are not the unit of display); an ally out of rank-range is shown with the reason. The *Lifeline* share is shown in every battle forecast that involves the linked ally – "Dardan takes X" – before the player commits to the fight. The *Earthbound* forecast lists what the target will lose. Nothing about the Nexus is learned after the fact (*UI & Display*) |

---

## Core Rules

### 1 – The band

**Whose it is.** The Nexus is Dardan's alone. The Nexus-Seers who could touch the band are gone – Aurevia sealed the power ([Ch 35](../../story/chapters/Part-05-Divided-We-Face-Our-Sins/Chapter-35-Where-Brilliance-Burns-Itself-Out.md)) – and the one other being that reaches it, the Dajjal, uses it **as a chain, not as a band**. So the rule that every player system must also be usable against the player is set aside here with a written reason: the enemy's version of the Nexus exists, it is the Dajjal's chain, and it is a boss mechanic of Level 52 (*Core Rules → 6*), not an ability on a class. No generic enemy exchanges, links, pulses or seals.

**Whom it reaches.** Nexus abilities target **units of the player's faction only**, in the vocabulary [Beast Summon](Beast-Summon.md#core-rules) fixed: *ally* means the player's faction, not the Other faction. **Earthbound is the one explicit exception** – it targets an enemy. A summoned Solmare beast is excluded from every Nexus ability: it cannot be exchanged, linked, healed by Heartpulse or sealed – the beast is nobody's, and the Nexus is a bond with a person. Other-faction NPC allies are not reached either. The one case where that mattered – Elena, the hostage of Ch 08, who joins the roster only in Ch 25 – is resolved on the level's side: for Level 08 she is deployed as a player-faction unit (*Introduction*). The rule does not bend.

**Support rank.** *Exchange* range, *Lifeline* range and *Heartpulse* strength are read from the **support rank between Dardan and the unit** at the moment of use. The rank scale itself does not exist yet – it belongs to the Support System (backlog). This document is written in terms of "support rank" and the per-rank tables in the [Balancing Guide → The Nexus](../Balancing-Guide.md#the-nexus) have their rank rows left empty until that system defines the scale. **Two requirements the Support System must honour, decided by Dardan:** the eight Vigilant Knights do not start at rank zero with him – they grew up together; and in Ch 08 Dardan already holds a rank with Elena high enough for *Exchange* ("sie ist ja wie eine Mutter für sie"). A unit with which Dardan holds **no** rank cannot be reached by *Exchange* or *Lifeline* at all; whether *Heartpulse* still reaches it at the lowest strength is the table's to say (*Open decisions → 2*).

**State: golden or black.** On every map the band is in one of two states, shown on Dardan from turn one:

| Band | Meaning | Set by |
| ---- | ------- | ------ |
| **Golden** | The Nexus is available – every ability Dardan holds can be used | Default |
| **Black** | The Nexus is **locked for this chapter** – no Nexus ability can be used, cooldowns do not matter, and *Heartpulse*'s chapter use is not spent | The chapter's **level box**, written by Lorekeeper. The rule is that a chapter may lock the band; which chapters do is the story's decision and is not listed here |

A third condition is not a state: before Ch 08 the player does not hold the Nexus yet, and nothing is shown – Ch 01 and Ch 05 perform the swap in prose, and Level 05 in particular must **not** offer it (*Introduction*). The story currently shows the band grey at the end of Ch 40A, black from Ch 41 and golden again in Ch 44 after the trial, and Ch 30's box already switches the Exchange off. **The list of black chapters is not a gap in this specification – it is a pending story revision:** the chapters were written before the band had a state, and Dardan will revise them; the level boxes are the place where the answer will appear (*Open decisions → 1*). Dardan is absent from Part 06 (Hasan's strand), so the Nexus does not exist in Levels 33B–40B at all.

**Nexus Mastery** (Lord Kit, [Abilities](../catalog/Abilities.md#lord-kit)) is the kit's late payoff, unlocked **in Part 08** (Ch 49–52) – the exact trigger is open (*Open decisions → 4*). It does two things: **every Nexus cooldown is removed** – Exchange and Earthbound – and **the support-rank ranges grow**: Exchange range and Lifeline range at every rank increase by the Nexus Mastery range bonus in the [Balancing Guide](../Balancing-Guide.md#the-nexus). Heartpulse stays once per chapter; Lifeline's share does not change. The Tower is where the band reaches furthest and is never on cooldown – which is what the Dajjal fight is built on (*Core Rules → 6*).

### 2 – Exchange

Dardan and one allied unit **trade places**.

1. On his turn – before or after moving, but before his action – Dardan chooses *Exchange* while its cooldown is at 0.
2. He chooses an allied unit whose distance from him is within the **Exchange range for the support rank he holds with that unit** ([Balancing Guide → Exchange range by support rank](../Balancing-Guide.md#the-nexus)). Distance is counted in tiles and **nothing in between matters** – enemies, walls, doors, magical barriers. The band goes through everything; in [Ch 05](../../story/chapters/Part-01-Path-Of-Liberation/Chapter-05-A-Heart-Of-Gold.md) it goes through the Guardian's barrier.
3. **Both landing tiles must be legal for the unit that lands on them** – Move Type against terrain, as the Movement rules (backlog) define it. An Infantry Dardan cannot take a Flying ally's tile over water; a Cavalry ally cannot take Dardan's tile if a horse may not stand there. If either tile is illegal, the swap is not offered.
4. **The ally's condition is irrelevant.** A sleeping, paralysed, netted or otherwise status-bound ally can be swapped. An ally that has already acted this turn can be swapped.
5. The two trade places. **Dardan's movement for the turn is over** – he may still attack or use an item from the new tile, he may not move, and no post-action movement (Canto, Wind Walk or any effect worded as "move again") applies to him this turn. **The ally keeps its own action** if it has not used it yet, and may move and act normally from Dardan's old tile.
6. The *Exchange* cooldown starts. It is **one global counter, flat** – the same number of turns whoever was swapped, whatever the rank. It counts down by one at the start of each of Dardan's Player Phases. Rank scales range; nothing scales the cooldown. That is the single-lever design: the bond decides how far the band reaches, never how often.

*Exchange* is a Player-Phase command. Dardan never swaps on the Enemy Phase; the involuntary swap of Ch 01 is prose, not a rule. Once per turn even with *Nexus Mastery* (conservative; *Open decisions → 3*).

### 3 – Lifeline

Dardan ties the band to one ally and **carries a share of every wound that ally takes – and every affliction, whole**.

1. On his turn, before his action, Dardan chooses *Lifeline* and an allied unit within the **Lifeline range for the support rank he holds with that unit** ([Balancing Guide](../Balancing-Guide.md#the-nexus)); range is counted as for *Exchange*, through everything. Placing it is a command: Dardan's movement ends, his action remains.
2. **Damage is shared.** Whenever the linked ally **takes damage from an attack** – either phase, any attacker – the damage is split at the moment it is dealt: the **Lifeline share** ([Balancing Guide](../Balancing-Guide.md#the-nexus)) is taken from Dardan's HP, the remainder from the ally's. The damage is computed once, against the ally's Def or Res and terrain, with every reduction the ally has (Pavise, Bulwark, a shield); the split is applied to the result. Dardan's own Def and Res are **not** applied to his share – the wound already happened, he is only carrying it. Dardan's share is rounded down and the remainder stays on the ally (conservative; *Open decisions → 5*).
3. **Status effects are not shared – they go to Dardan instead.** Whenever the linked ally **would receive a status effect** – poison, sleep, a debuff, anything the Status Effects system (backlog) calls a status – the ally does not receive it; **Dardan does, alone and in full.** Not both, not a share: the affliction lands on him as if he had been the target. Whatever the status does from then on – a poison tick each round, a turn lost to sleep, −4 Def for three rounds – it does to Dardan, and the ally is untouched. A status Dardan is immune to (Sanctuary, Hexward, Aurelian Ward, any immunity) **fizzles** – it reaches neither of them (conservative; *Open decisions → 9*). An **applied element** in the Magic System's sense is not a status and stays on the ally (conservative; *Open decisions → 10*).
4. **There is no floor.** If Dardan's share is his remaining HP or more, Dardan falls, with everything permadeath means. That is the point: a burden that cannot kill him is not a decision. Conversely, a blow that would have killed the ally may not, because part of it is Dardan's now. Poison redirected to him keeps the [poison floor](../Balancing-Guide.md#5--poison) like any poison – it softens him, it does not kill him; the attack that follows might.
5. **It lasts until Dardan lifts it.** Lifting is a free action on Dardan's turn, any time, no range. It also ends when Dardan falls, when the ally falls, or when the map ends – Lifeline never carries over to the next chapter. A status Dardan took on stays on him after the line is lifted; the band moved it, it does not move it back.
6. **One Lifeline at a time.** Placing it on a second ally is not offered while the first stands; lift first (conservative; *Open decisions → 6*).
7. **Distance after placement is irrelevant.** Once placed, the line holds wherever the two units go – the rank-range is checked only when it is placed (conservative; *Open decisions → 7*).

Damage that is neither an attack nor a status – a Burning Field the ally stands on, Juggernaut's passage, any effect worded as "takes damage" outside a combat and outside a status – stays with the ally (conservative; *Open decisions → 8*). Lifeline has no cooldown and no use limit: its whole price is Dardan's HP, his condition, and the command (*Open decisions → 11*).

### 4 – Heartpulse

A wave from Dardan that **heals every allied unit on the map** at once.

1. On his turn, Dardan chooses *Heartpulse* as his action, once per chapter. No target is chosen.
2. **Every unit of the player's faction on the map** recovers HP – regardless of distance, line of sight, walls or the state the unit is in. Range does not scale; the pulse reaches "jeden den das Band kannte".
3. **How much each unit recovers is read from that unit's support rank with Dardan** – per unit, not from an average ([Balancing Guide → Heartpulse strength by support rank](../Balancing-Guide.md#the-nexus)). A unit Dardan is close to is healed more than one he barely knows; in the labyrinth of [Ch 21](../../story/chapters/Part-03-The-Champions-Road/Chapter-21-Seek-The-Light-Within.md) the lines run "von Dardan aus in alle Richtungen … jeder führte zu einem Paar", each its own. Per-unit is the conservative reading of the scene (*Open decisions → 12*).
4. Dardan himself is included, at the value the table sets for him (conservative; *Open decisions → 13*). Overheal is lost. Heartpulse cures nothing and grants nothing but HP.
5. *Heartpulse* is Dardan's action for the turn. It does not touch the *Exchange* or *Earthbound* cooldown and is not touched by *Nexus Mastery*.

The single use per chapter is a **rule, not a tuning value**: it is what the chapter's level box fixed, and it is the boundary that keeps healers in the game. A second use would be a different system.

### 5 – Earthbound

Dardan **closes one enemy's access to the band**.

1. On his turn, Dardan chooses *Earthbound* as his action while its cooldown is at 0, and one enemy unit within its **fixed range** ([Balancing Guide](../Balancing-Guide.md#the-nexus) – proposed 1–2). No rank exists with an enemy, so nothing scales.
2. **No hit roll.** The seal is set; it is a cooldown ability, and a cooldown that can whiff is a turn lost to dice, which [Pillar 5](../Design-Pillars.md) forbids.
3. For the **seal duration** ([Balancing Guide](../Balancing-Guide.md#the-nexus)) the sealed unit loses **everything that runs through the Nexus**:
   - every **ability** it holds – class, mastery, personal, scroll; passive ones stop working for the duration, including flat stat passives and Canto (conservative; *Open decisions → 14*);
   - every **combat art**;
   - every **tome and staff** – it cannot cast, it cannot heal, it cannot use a staff of any kind;
   - every **aura** it projects – Sanctuary, Bulwark, Wall of Spears, a Light or Shadow Field it carries – stops at its tile. Auras that *other* enemies project still cover it.
   
   What remains is the **plain weapon strike**: it moves, it attacks and counter-attacks with a physical weapon at that weapon's range, the weapon triangle applies, it may use items. A sealed bishop cannot heal, a sealed Bestiarius cannot call and cannot order the beasts it already called, a sealed boss loses its mastery – but it still stands, and it still hits. A unit whose only weapons are tomes or staves cannot attack at all while sealed.
4. The seal lasts **N rounds**: set on round R, it expires at the start of the Player Phase of round R + N. The turns remaining are shown on the unit.
5. The *Earthbound* cooldown starts – one global counter, flat, counted down like the Exchange's. Nothing an enemy does can lift a seal early; nothing on the enemy side touches the band.

*Earthbound* **closes; it never controls.** The Guru's line in [Ch 44](../../story/chapters/Part-07-Before-The-Storm/Chapter-44-Must-Face-The-One-Who-Refuses-To-Fall.md) – "dem Band vertrauen statt es zu kontrollieren" – is the boundary of the design: the seal is not a hold (Tripwire, Ensnare, Grapple and Maike's binding already hold), not a charm, not a command over the enemy's action. It takes away what the enemy reaches through the band and leaves the enemy itself. In-world it is what Aurevia did to the Nexus-Seers – "Sie hat die Kraft aus dem Nexus genommen und eingeschlossen" ([Ch 35](../../story/chapters/Part-05-Divided-We-Face-Our-Sins/Chapter-35-Where-Brilliance-Burns-Itself-Out.md)) – done to one unit, for a short time. It is not Geo magic: no element is applied, no reaction is triggered, Res is not consulted.

### 6 – Earthbound and the Dajjal

The Dajjal holds his units on the band **as a chain**: "die Verbindung zwischen allem Leben als Kette statt als Band" ([Ch 35](../../story/chapters/Part-05-Divided-We-Face-Our-Sins/Chapter-35-Where-Brilliance-Burns-Itself-Out.md)); his will "floss durch sie alle wie ein einziger Gedanke" ([Ch 48](../../story/chapters/Part-07-Before-The-Storm/Chapter-48-End-Of-The-World.md)). Dardan's decision for the fight, written here so that Level 52 is designed against it:

- **Every unit the Dajjal holds on the chain transfers its life to his.** Damage dealt to the Dajjal is healed immediately from the chained units, and **the chained reinforcements never stop.** Killing the chained units is a treadmill – the chain is *Lifeline* turned the wrong way round, a bond that feeds the master instead of carrying the follower.
- **Earthbound cuts the chain for its duration.** A sealed Dajjal has no access to the band: nothing flows to him from his units, and the window in which he is vulnerable is exactly the seal's duration. The fight is won inside that window, by the tool the player has been building since Ch 08.

How many units hang on the chain, how much of each wound is healed, how often the reinforcements come, whether the fight ends by damage inside the window or by a final seal, and whether the Dajjal can be sealed at all before some condition is met – **all of that is Level 52** and belongs to `levelcraft`, not here. This document fixes only the two sentences above.

---

## Acquisition / Access

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| Story – Ch 08 | **Exchange.** Dardan has swapped twice before in prose (Ch 01, Ch 05); the cult leader taking Elena hostage is the first time the player does it | From Level 08 |
| Story – Ch 21 | **Heartpulse.** Born and named in the labyrinth under the northern temple, the turn before the Guardian strikes | From Level 21 |
| Story – Ch 43 / Ch 44 | **Earthbound.** The trial in Ch 43 opens Dardan's access to the Nexus and Varnel names the task – "Das Siegel setzen. Das was gebrochen wurde – es wieder schließen." In Ch 44 Dardan says he can set it and learns with the monks that he needs the place first | From Level 44 |
| Story – *not decided* | **Lifeline.** The chapter is open. Until it is set, Lifeline is specified but has no map that carries it – a proposal in the sense of `mechanicraft`, not a decision | *open* |
| Lord Kit – Part 08 | **Nexus Mastery** removes every Nexus cooldown and lengthens the rank-ranges ([Abilities → Lord Kit](../catalog/Abilities.md#lord-kit)) | Part 08, Ch 49–52 (Lv 54–60); the exact chapter or level is open (*Open decisions → 4*). *Bond of Souls* (Lv 54) is the kit's other Part 08 unlock |
| Not available | No seal, scroll, class or item. Nobody but Dardan; no enemy. A chapter may take the whole kit away by locking the band | – |

The Nexus abilities are **not equipped and take no Capacity**: they are Dardan's nature, not a slot. This has to be so – *Exchange* arrives at Ch 08, when Dardan is in a Base class with Capacity 3 and three Citizen abilities already competing for it (*Open decisions → 15*).

---

## Strategic Depth

- **The swap is a position bought with a position.** Exchange pulls the wounded archer out of the press – and puts Dardan into it, unable to step back. Or it puts Dardan on the far side of a wall no one else can cross – and the ally where Dardan stood. Every use is two moves in one, and the second is always Dardan's exposure. The player who reads it as "free rescue" loses Dardan; the player who reads it as "Dardan advances through an ally" finds the aggressive use: swap forward with the flier, attack from the new tile.
- **Rank is reach.** The unit Dardan can reach at range 5 is the unit he has supported most. That turns the support grid into a tactical map: who Dardan stands near across the campaign decides whom he can save from across the room in Part 07. Building the bond is building the range.
- **Lifeline is a bet placed before the dice.** Put it on the unit that has to hold the corridor and Dardan bleeds with him from a safe tile – until the corridor holds too many attackers and the shares add up to Dardan's HP. The forecast shows the share on every enemy attack; the decision is whether to lift it before the Enemy Phase or to trust the numbers. Lifted too early, the ally dies; held too long, Dardan does. And the band carries afflictions whole: a linked healer cannot be silenced or put to sleep, because the sleep lands on Dardan – who then cannot use the Nexus at all until he wakes. The player who links the healer against an enemy with a sleep staff has bought her safety with the whole kit.
- **Heartpulse is one decision per map.** Turn three, when the whole line is scratched, or turn twelve, when three units are one hit from death – and it heals most where the bond is strongest, so the units it saves are the ones the player invested in. Spending it is spending the only map-wide heal the game has.
- **Earthbound picks the enemy that matters.** The healer behind the line, the Sentinel whose Wall of Spears closes the corridor, the boss whose mastery is the whole fight – sealed, each one is a plain fighter for N rounds. It does nothing to a unit that has nothing to lose but a weapon, so the seal is never wasted on a grunt by accident: the forecast lists what will be lost, and "nothing" is a legible answer.
- **Cooldowns are a rhythm, not a stock.** With a flat cooldown, the question is never "should I save it" but "is this the turn". A swap on turn 2 is back on turn 2 + N; the player learns the cadence of the map and places the Exchange where the cadence puts it.
- **The Dajjal is the thesis.** Every chained unit heals him; every seal opens a window. The fight is not won by the biggest number on the roster but by the timing of the one ability that runs on trust – and by the bonds that give Exchange and Heartpulse their reach inside the window.

---

## Design Pillars

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | Yes – it is the pillar's first gameplay expression by name ([Design Pillars](../Design-Pillars.md)). Three of the four abilities read the support rank, so the bond is not flavour on the mechanic, it is the range and the strength of it. The fourth, Earthbound, exists to sever a bond that was turned into a chain. The system says: trust reaches further than control. |
| **Depth** | Easy to learn, hard to master? | Yes. "Swap places", "share the damage", "heal everyone once", "seal one enemy" are each one sentence, and Ch 08 teaches the first with one hostage. Mastering it is reading rank-ranges across fourteen deployed units, deciding whose burden Dardan carries on the Enemy Phase, timing two cooldowns against the map's cadence and holding one pulse for the right turn. |
| **Weight** | Do the decisions have long-term consequences? | Yes. Lifeline can kill Dardan – permanently, in Classic. Heartpulse is spent for the chapter. Exchange leaves Dardan where he cannot walk away from. And the reach of every ability is the sum of support decisions made over fifty chapters, which cannot be re-rolled. |
| **Integration** | Does the mechanic tell a story? | Yes, more than any other. The swap of Ch 01 is Dardan's essence – he takes the blow meant for Leona – and the player performs it in Ch 08 for Elena. Heartpulse is born in Ch 21's darkness. The seal is Aurevia's own act, learned in the trial of Ch 43 and set on the Dajjal in Ch 52. The band's colour on the HUD is the state of the story. |
| **Fairness** | Is the challenge respectful of the player's time? | Yes, by construction: every cost is visible before use (cooldowns, the chapter use, the band's colour, the Lifeline share in the forecast, the list of what Earthbound will remove), no Nexus ability rolls to hit, a locked chapter shows the lock from turn one, and the Ch 05 scene keeps the Exchange out of the player's hands so the level never asks the player to have been trapped by a rule he had. A player who loses Dardan to Lifeline saw the share on every forecast. |

**Anti-pillar check:** No grinding – nothing in the Nexus is fed by kills or levels; it is fed by support ranks, which the Support System must therefore not make grindable. No power without price – position (Exchange), HP with no floor (Lifeline), the only use of the chapter (Heartpulse), a full action and a cooldown (Earthbound). Nothing that works only with over-trained units – the Nexus reads rank, not stats, so an under-levelled Dardan has the same reach as a capped one. Nothing generic – no other game's Lord has it, and it is the name on the box.

---

## Introduction

**First chapter:** **Ch 08** for the system (Exchange); **Ch 21** for Heartpulse; **Ch 44** for Earthbound; Lifeline *open*. Ch 01 and Ch 05 show the swap in prose before the player has it.

**How it is introduced:** In four situations, each of which makes the new ability the obvious answer.

- *Ch 01, Every End.* The child Dardan, without knowing what he does, stands where Leona stood and takes the sword. The player sees the swap once, involuntary, and pays for it with the whole first chapter's weight. No rule yet.
- *Ch 05, A Heart of Gold.* The first conscious swap – Dardan calls the memory of Ch 01 back and trades places with Leona through the Guardian's barrier. The player sees that it goes through walls. **Level 05 does not offer the Exchange**: Dardan is meant to be trapped inside the barrier with the Guardian, and a swap out would destroy the scene the level is built on. The chapter's level box and the Ch 08 prose were aligned to this on 2026-09-20.
- *Ch 08, The Vigilant Knights.* The cult leader takes Elena hostage with a blade at her throat; the level begins; the player must perform the Exchange with Elena himself. The tutorial is the hostage: there is one ally the band can reach, one tile the player wants Dardan on, and a wall of cultists in between that the band ignores. The player learns range-through-everything, the position price (Dardan is now next to the man with the knife) and the cooldown – all from one swap. **Elena is reachable because, for Level 08 only, she is a unit of the player's faction** – forced deployment, that one map – **and she can only heal**: a staff user with no attack. Decided by Dardan; the "own units only" rule stands unchanged. She joins the roster properly in Ch 25 as her sheet says. Her battle-local data for that map – class as deployed, staff, starting position – is `levelcraft`'s and belongs in the Level 08 document, not here and not on her sheet.
- *Ch 21, Seek the Light Within.* Dardan and Tifa in the centre of the labyrinth, wounded, the other pairs scattered in the dark corridors. Heartpulse is born the turn before the Guardian strikes, and the level box says it is usable from here, once per chapter. The map teaches it by shape: the pairs are too far apart for any staff, and one pulse reaches all of them.
- *Ch 43 – Ch 44, She Who Judges All / …Must Face the One Who Refuses to Fall.* The trial opens Dardan's access to the Nexus; Varnel names the seal; in Ch 44 Dardan says he can set it. Level 44 is the first map on which an enemy can be sealed – the level should put one enemy on the map whose abilities are the problem (a healer, an aura, a caster), so that the seal is the obvious answer.
- *Lifeline –* no chapter. Until Dardan sets one, no map carries it and no level box announces it.

**What the player must already know:** Movement and terrain by Move Type (Ch 01, Ch 03), that abilities and commands are different things (Base masteries, Ch 06 onward), the battle forecast (Ch 01), staves and healing (Ch 01, the Acolyte line) before Heartpulse, and the ability catalog's vocabulary of what an enemy can do – auras, arts, staves – before Earthbound means anything.

**Level index.** Ch 08 carries *The Nexus / Exchange* in `design/levels/README.md`; Ch 07 carries the first chapter played in the chosen classes, as the [Progression System](../Progression-System.md#part-01-path-of-liberation-chapters-1-8) already said. The *New Mechanics* column exists only for Part 01; Ch 21 and Ch 44 are annotated in their status cells. The [Progression System](../Progression-System.md#part-03-the-champions-road-chapters-17-24) carries Heartpulse at Ch 21 and the desert with Rohan at Ch 22, matching the chapters.

---

## Catalog

All entries: [Abilities → Lord Kit](../catalog/Abilities.md#lord-kit) – *Exchange*, *Lifeline*, *Heartpulse*, *Earthbound*, and *Nexus Mastery*, which modifies them.

---

## Balancing Guidelines

Every value lives in the [Balancing Guide → The Nexus](../Balancing-Guide.md#the-nexus). The rank rows wait for the Support System's scale; the rest is open or proposed:

| Parameter | What it tunes |
| --------- | ------------- |
| Exchange range by support rank | How far the bond reaches for each ally; the minimum rank at which Exchange is possible at all |
| Exchange cooldown | How often Dardan can swap across a map – the cadence of the signature move |
| Lifeline range by support rank | How far away Dardan can place the line |
| Lifeline share | How much of the ally's wound Dardan carries – the size of the bet |
| Heartpulse strength by support rank | How much each unit recovers, per its rank with Dardan; Dardan's own value |
| Earthbound range | Proposed 1–2 – whom Dardan can seal without walking into the press |
| Earthbound duration | How long the window is |
| Earthbound cooldown | How often the window opens; its relation to the duration decides whether two enemies can be sealed at once |
| Nexus Mastery range bonus | How much further Exchange and Lifeline reach at every rank once the kit is complete in Part 08 |

**Rules, not tuning values**, and therefore here: the cooldown is flat and does not scale with rank; Heartpulse is once per chapter; Lifeline has no floor and moves statuses whole; Earthbound has no hit roll and no rank scaling; range goes through everything; one Lifeline at a time; Nexus Mastery removes every cooldown.

---

## Interaction with Other Mechanics

| Mechanic | Interaction |
| -------- | ----------- |
| **Support System** (backlog) | The dependency. Exchange range, Lifeline range and Heartpulse strength read the support rank between Dardan and the unit. The Support System must define the scale, must let the eight Vigilant Knights start above zero with Dardan, and must give Elena a rank with Dardan in Ch 08 at or above the Exchange threshold. The Support System's own *stat bonuses* for adjacency (the "Support Bonus" in the [damage and hit formulas](../Balancing-Guide.md#-damage-calculation-formula)) are a separate effect and are not touched here. |
| **Beast Summon** | A summoned beast **cannot be exchanged, linked, healed by Heartpulse or sealed** – it is not an ally in the Nexus' sense and not an enemy of Dardan's. The Nexus side of what [Beast Summon](Beast-Summon.md#interaction-with-other-mechanics) already states. A **wild** beast is an enemy and can be sealed; having no abilities, it loses nothing but – in Ch 52 – its chain. |
| **Swap, Reposition, Draw Back, Mystic Pull, Ensnare, Hurl, Uplift, Interpose** (positional commands and abilities) | Exchange is the only one that goes through everything and reaches beyond adjacency by rank; the rest stay adjacent or range 2 and are blocked by what stands between. Exchange does not replace them – it is on one unit, on a cooldown, and costs that unit its mobility. Interpose (Lance Paladin) is the Enemy-Phase mirror: a trade of places before the blow, which Dardan never gets. |
| **Pressure Point** (Martial Saint), **Chokehold** (Enforcer), **Palm of Stillness** (Divine Monk art) | The nearest neighbours of Earthbound, all narrower: Pressure Point removes arts and magic for one turn, on hit; Chokehold denies healing and staves by adjacency, passively; Palm of Stillness stops move, attack and abilities for one turn at Master-art MP. Earthbound is longer (N rounds), silences auras too, is Dardan's alone, and is the only thing that cuts the Dajjal's chain. None of the three reaches a boss's mastery for a whole window. The former Saboteur ability *Sabotage* – a range-2 disable of arts, magic and abilities – was the one real overlap and has been **replaced by *Disarray*** (see the next row); an Advanced class no longer holds a stronger disable than the Lord's seal. |
| **Disarray** (Saboteur) | No overlap with the Nexus. Disarray scatters the enemies around a target; Earthbound closes one enemy's band. The two are complementary on a boss: Disarray strips the bodyguards off him, Earthbound strips his mastery. Its overlaps lie elsewhere – with Shove, Knockback and Earthshaker – and are noted on its catalog row. |
| **Staves and healing** | Heartpulse is not a staff: it grants no weapon XP, is not gated by rank, is not affected by staff rules, and reaches units no staff could. It is limited to one use per chapter precisely so that it does not replace them. Blessing, Grace, Second Breath, Sanctify and every other *on healing* trigger are worded on the **healer's** staff heal and do not fire on Heartpulse. |
| **Miracle, Intercession, Sworn Shield, Pavise, Bulwark, shields** | Reductions and redirections that act on the *ally's* incoming damage resolve **first**; Lifeline splits what is left. Miracle then checks each unit's own HP separately – a Cleric with Miracle survives her remainder at 1 HP while Dardan takes his share in full. Intercession's redirection to a Priest removes the damage from the linked ally entirely, so nothing reaches Dardan. Sworn Shield on Dardan does not cover his Lifeline share – it is not an attack on him. |
| **Status effects** (backlog) | **Lifeline redirects them:** any status the linked ally would receive lands on Dardan instead, whole. The Status Effects system therefore needs one hook – "would receive a status" – that Lifeline can intercept before the status is applied. Poison redirected to Dardan ticks on Dardan under the normal [poison floor](../Balancing-Guide.md#5--poison). A sleeping Dardan cannot use the Nexus that turn, like any unit that cannot act – so a sleep arrow aimed at the linked ally can switch the whole kit off for a turn; the forecast shows it. Irrelevant to Exchange's target (a sleeping ally can be swapped). A status on a sealed enemy is unaffected by the seal. |
| **Sanctuary, Hexward, Aurelian Ward** and every status immunity | An immunity on the **ally** never matters under Lifeline – the status was never going to land on the ally. An immunity on **Dardan** makes the redirected status fizzle: it reaches neither unit (conservative; *Open decisions → 9*). An Arch Bishop standing by Dardan therefore protects everyone Dardan is linked to. |
| **Consecration, Cleansing Palm, Aurevian Rite, Stillness** and every status cure | Cure Dardan like any unit. A status the band moved onto him is his; lifting the line does not return it. |
| **Burning Fields, Juggernaut** and every damage that is neither an attack nor a status | Not split by Lifeline; stays with the ally (conservative; *Open decisions → 8*). |
| **Canto, Wind Walk** and every "move again" effect | Never after an Exchange – the swap ends Dardan's movement. A sealed enemy loses Canto with its other abilities (conservative; *Open decisions → 14*). |
| **Unbreakable** (Armored General) | "Cannot be pushed, pulled or displaced" – it is an ability, so a *sealed* Armored General has lost it; an unsealed one is an enemy and Exchange never targets enemies anyway. No interaction on the player's side: an allied Armored General can be exchanged, because the Exchange is a trade both parties consent to, not a displacement. |
| **Tripwire, Cast Net, Grapple, Entangle** and every hold | A held ally can still be exchanged (its condition is irrelevant). A held *Dardan* cannot use commands or actions the hold forbids – the hold's own rule decides. Earthbound is not a hold and stacks with any of them. |
| **Chain Attack** | Independent. Dardan may be one of the three after an Exchange put him adjacent to the target; the swap is a command, the chain attack is the action. |
| **Biorhythm** | Unrelated. The *Nexus* biorhythm type is a separate rule that happens to be Dardan's; nothing there reads the band's state, and nothing here reads resonance. |
| **Difficulty modes** (backlog) | No Nexus value is scaled by difficulty in this document. If a mode ever changes the cooldowns or the Lifeline share, the column belongs in the Balancing Guide's difficulty table, not here. |
| **Permadeath / Casual** (backlog) | Lifeline's floorlessness is the same in every mode; what Casual changes is what Dardan's fall means, not whether it happens. |
| **Deployment** | Nexus abilities reach only deployed units; a unit in the convoy has no tile to swap or heal. |
| **Level 52 – the Dajjal** | Sealed for the duration = chain cut for the duration. Everything else is `levelcraft`'s (*Core Rules → 6*). |

---

## UI & Display

- **On Dardan, always:** the band as an icon in its current colour – golden or black – from the first turn of the map; the *Exchange* and *Earthbound* cooldown counters; the *Heartpulse* use (available / spent). A black band greys every Nexus command and says why.
- **Exchange and Lifeline targeting:** because the range differs per ally, the UI highlights **units**, not tiles – every ally Dardan can reach is lit; every ally he cannot is shown with the reason ("rank too low for this distance", "landing tile not passable for Dardan", "landing tile not passable for the ally"). The two landing tiles are previewed before confirmation.
- **After an Exchange:** Dardan's movement is shown as spent; his remaining options (attack, item) stay lit.
- **Lifeline, while active:** a visible line between Dardan and the linked ally, on both units, at any distance. **In every battle forecast** involving the linked ally the damage is shown split: "ally takes X · Dardan takes Y", with Dardan's resulting HP – including a red state when Y would kill him – and any status the attack carries shown **on Dardan's side** of the forecast, since that is where it will land. No Dardan dies to a share the player did not see, and no Dardan falls asleep to an arrow the forecast showed hitting someone else.
- **Heartpulse preview:** before confirmation, every unit that will be healed is shown with its amount, so the player sees the rank-shape of the pulse and can decide whether this is the turn.
- **Earthbound preview:** the target's abilities, arts, tomes, staves and auras that the seal will remove are listed before confirmation; a target that would lose nothing shows "nothing to seal". **On a sealed enemy:** a seal icon with the rounds remaining; its greyed abilities on inspection; its auras no longer drawn on the map.
- **Locked chapter:** the black band is visible in the deployment screen, before the first turn, so that the player plans the map without the Nexus rather than discovering the lock on turn one.

---

## Open Decisions

Everything below is written into the rules above in its **conservative form** so that the document is playable as it stands. Each is Dardan's to confirm or widen; the ones marked *confirm* were proposed to him and not contradicted, the rest were not raised. **Decided and removed from this list:** Elena on Level 08 is a player-faction unit for that map, heal-only (*Introduction*); Nexus Mastery removes every cooldown and lengthens the ranges (*Core Rules → 1*); Lifeline shares attack damage and moves status effects whole onto Dardan (*Core Rules → 3*).

1. **Which chapters lock the band – a pending story revision, not a spec gap.** The rule is fixed: a chapter locks the Nexus in its level box, and the band shows black. Which chapters do is Dardan's, and he has said the chapters were written before the band had a state and will be revised. What the story shows today, as the note for that revision: the band greys at the end of Ch 40A, is black in Ch 41–43, and is golden again from Ch 44 after the trial; Ch 30's box says "Exchange funktioniert in diesem Chapter nicht" while the prose describes the band as golden and refusing – whether that is a black chapter, an Exchange-only lock or a third thing is part of the same revision.
2. **A unit with no support rank** cannot be exchanged or linked; whether Heartpulse reaches it at the lowest table value or at zero is the table's row to fill.
3. **Exchange once per turn** even with Nexus Mastery. The alternative – no cooldown meaning unlimited swaps in a turn – lets Dardan relay through the whole line in one Player Phase.
4. **Nexus Mastery's trigger.** It unlocks in **Part 08** (Ch 49–52, Lv 54–60) – that much is decided. Whether it comes at a chapter (the first Tower battle, the Dajjal's) or at a level (Bond of Souls is the kit's other Part 08 unlock, at Lv 54) is open.
5. **Lifeline rounding:** Dardan's share rounded down, remainder on the ally. Any rule works; this one favours Dardan by at most one point.
6. **One Lifeline at a time.** The alternative – several lines – multiplies the risk in a way the forecast can still show, but makes "whose burden" a list instead of a choice.
7. **Lifeline holds at any distance once placed;** rank-range is checked only when it is set. The alternative – the line breaks when the two move out of rank-range – adds a state the player must track every move.
8. **Damage that is neither an attack nor a status stays with the ally** – Burning Fields, Juggernaut's passage. The alternative is that every HP loss the ally suffers is split; the line drawn here keeps "attack" and "status" as the two things the band carries.
9. **A status Dardan is immune to fizzles** – it reaches neither unit. The alternative is that an immune Dardan lets it fall back on the ally, which would make Sanctuary on Dardan worse for the ally than no Sanctuary at all.
10. **Applied elements are not status effects and stay on the ally.** The Magic System keeps the two apart (Cleansing Palm removes "every applied element and status effect"); if Dardan decides an applied Umbra or Cryo is an affliction the band carries, it moves to him like a status.
11. **Lifeline has no cooldown and lifting is free** (*confirm*). Its cost is Dardan's HP, his condition and the command. The alternative is a cooldown on placing it.
12. **Heartpulse heals per unit by that unit's rank**, not by Dardan's average rank (*confirm* – the reading of Ch 21's "jeder führte zu einem Paar").
13. **Heartpulse is a full action and includes Dardan** at a value of its own in the table. The alternatives: a command that leaves his action; Dardan excluded.
14. **Earthbound removes every ability**, flat stat passives and Canto included. The alternative is a narrower list – arts, magic, auras and triggered abilities, leaving +2 Speed and Canto in place – which is a different reading of "everything that runs through the Nexus".
15. **Nexus abilities take no Capacity and cannot be unequipped.** Forced by Ch 08 (Base class, Capacity 3); listed so it is a decision and not an accident.
16. **Lifeline's action cost is a command like Exchange – Dardan may still attack afterwards** (*confirm*).
17. **Lifeline's introduction chapter** – not decided; Dardan is still deciding. Until set, the ability is a proposal in `mechanicraft`'s sense.
18. **Earthbound cooldown versus duration.** If the cooldown is at least the duration, at most one enemy is sealed at a time; if shorter, two can be. Design intent proposed: one at a time. The values are the Balancing Guide's; the relation is Dardan's. Moot once Nexus Mastery removes the cooldown in Part 08 – from then on the duration alone limits how many enemies are sealed, which is a reason to keep the duration short.
19. **Seal immunity.** Nothing here makes any enemy immune to Earthbound, the Dajjal included. Whether Level 52 gates the seal behind a condition is the level's.

---

**Version:** 1.0
**Created:** 2026-09-20
**Last updated:** 2026-09-20
**Cross-references:** [Abilities](../catalog/Abilities.md) · [Unit Classes](../catalog/Unit-Classes.md) · [Balancing Guide](../Balancing-Guide.md) · [Progression System](../Progression-System.md) · [Design Pillars](../Design-Pillars.md) · [Beast Summon](Beast-Summon.md) · [Biorhythm](Biorythm.md) · [Chain Attack](Chain-Attack.md)
