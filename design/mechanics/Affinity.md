# Affinity

The bond system of Vigilans Nexum – how a bond between two playable units is earned by acting together, how it rises through five ranks, what it pays out in combat, what it opens between chapters, and how the Nexus reads it. This document holds the rules; every value lives in the [Balancing Guide → Affinity](../Balancing-Guide.md#affinity). It replaces the *Support System* entry of the backlog and is the system the [Design Pillars](../Design-Pillars.md) call *Affinity* under Pillar 1.

> **Related files:** [The Nexus](Nexus.md) · [Chain Attack](Chain-Attack.md) · [Beast Summon](Beast-Summon.md) · [Magic System → Die 9 Elemente](Magic-System.md#die-9-elemente) · [Balancing Guide → Affinity](../Balancing-Guide.md#affinity) · [Balancing Guide → The Nexus](../Balancing-Guide.md#nexus) · [Progression System](../Progression-System.md) · [Design Pillars](../Design-Pillars.md) · [Levels → Ch 06](../levels/README.md#part-01-path-of-liberation) · [Ch 06](../../story/chapters/Part-01-Path-Of-Liberation/Chapter-06-Heroes-Are-Made-By-The-Path-They-Choose.md) · [Ch 08](../../story/chapters/Part-01-Path-Of-Liberation/Chapter-08-The-Vigilant-Knights.md)

---

## Overview

Every two playable units share one **affinity** – a single value that grows when the two of them *do something together* and never shrinks. It is earned by chain attacks, shared kills, healing and rescuing each other, Dardan's Nexus abilities, short conversations on the map and the long ones between chapters. It is **not** earned by standing next to each other: what the Fire Emblem community calls *tainting* – end the turn adjacent, collect points – does not exist here. A bond in this game is made of what two people did for each other, not of where they happened to be standing.

Affinity runs on five ranks, **D → C → B → A → S**, and rises at most one rank per unit per chapter. It pays out three ways: a **combat bonus** when a partner is near, whose *kind* comes from the two units' elemental affinities and whose *size* from the rank; the **reach of the Nexus**, because Exchange, Lifeline and Heartpulse read the rank between Dardan and the unit ([The Nexus](Nexus.md#core-rules)); and **Heart-to-Hearts**, the conversations that open as a bond deepens. S is only the top of the scale – a unit may hold S with as many partners as it earned it with; there is no exclusivity, no marriage and no paired ending.

The purpose in one sentence: **the player decides, every chapter, whose bond with whom he deepens – by whom he sends into a fight together, whom he heals, whom Dardan carries – and pays for it with the actions that could have gone elsewhere and with the bonds he did not raise.**

|              | Affinity |
| ------------ | -------- |
| Phase        | Points are earned on any phase, in battle and between chapters; ranks rise at chapter end |
| Trigger      | Shared actions in battle (*Core Rules → 2*), map talks (*→ 5*), Heart-to-Hearts (*→ 6*) |
| Resource     | No resource. Actions, positions and the once-per-chapter rank-up are the price |
| Core feature | Bond by deed, never by proximity; one rank-up per unit per chapter; combat bonus by element pair and rank; the Nexus reads the rank; the Affinity Chart shows every bond |

Two references, taken deliberately and only in part. **Xenoblade Chronicles 1** gives the leading idea – affinity is earned by fighting together, healing and helping, and paid out in the Affinity Chart and in Heart-to-Hearts placed by emotional weight rather than one per rank – together with the five-colour scale. **Fire Emblem: Path of Radiance** gives the throttle: however many points wait, a unit rises with one partner per chapter. **Fire Emblem 7 / Path of Radiance** give the elemental affinity – an element per character that decides which stats a pair strengthens. What is *not* taken from any of them: XC1's Skill Links (see *What Affinity is not* below), FE's tainting, gifts, dialogue choices with ± and paired endings.

---

## Prerequisites

| Condition | Rule |
| --------- | ---- |
| Units | **Playable units only.** Affinity exists between two units of the player's roster. Enemy units have none, Other-faction units have none, a summoned Solmare beast has none ([Beast Summon](Beast-Summon.md#core-rules)). The rule that every player system must be usable against the player is set aside with a written reason in *Core Rules → 7* |
| Element | Every playable unit carries **one elemental affinity** from the nine elements of the [Magic System](Magic-System.md#die-9-elemente). It is set on the unit's sheet (*Core Rules → 7*) |
| Combat bonus | Both units of a pair are on the map, alive, and within the bonus range of each other ([Balancing Guide](../Balancing-Guide.md#affinity)); the pair holds at least rank D. A pair without a rank gives nothing |
| Rank-up | The pair's points have reached the next threshold, and neither unit has already risen with another partner this chapter (*Core Rules → 3*) |
| Map talk | Both units adjacent, the level document lists the pair for this chapter, the pair has not talked this chapter, the initiating unit has not yet acted (*Core Rules → 5*) |
| Heart-to-Heart | The pair holds the rank the conversation is bound to; if it is story-gated, the gating chapter has been played; both units alive (*Core Rules → 6*) |
| System active | From **Ch 06**. Nothing is earned, shown or applied before it (*Introduction*) |

---

## Cost

| What | Value |
| ---- | ----- |
| Resource | **None.** No item, no gold, no MP. Affinity is deliberately not a currency the player can buy – a bond that can be purchased says the wrong thing about trust |
| Action | **Every point source costs an action or a risk.** A heal is the healer's action; a Shove out of danger is the shover's action; a map talk is the talker's action on a map where enemies are still standing; a shared kill means two units committed to one enemy; a chain attack needs three units in formation against a shielded enemy; Exchange and Lifeline cost Dardan his position, his cooldown or his HP ([The Nexus → Cost](Nexus.md#cost)). There is no source that costs nothing |
| Further cost | **The rank-up not taken.** A unit rises with one partner per chapter (*Core Rules → 3*); raising Leona with Dardan this chapter is not raising her with Maksimo. **Position.** The combat bonus needs the partner within the bonus range, so a line built for affinity is a line built in pairs – and a unit sent alone to the far flank fights alone. **Permadeath.** A bond dies with the unit, and every Heart-to-Heart it had not yet reached is gone with it |
| Visible before use | The pair's points and the next threshold are shown on every unit's affinity list at all times (*UI & Display*). An action that will earn affinity says so in its preview – the heal preview, the positional-command preview and the battle forecast each carry an *Affinity* line naming the pair. The combat bonus is in every battle forecast with the partner's name. The rank-up screen at chapter end lists every eligible pair before the player picks. Nothing about a bond is learned after the fact |

---

## Core Rules

### 1 – The pair and the rank

**One value per pair.** Affinity is symmetric: Dardan–Leona and Leona–Dardan are the same pair with the same points and the same rank. A unit therefore has one affinity value with every other playable unit, and the sum of those is its half of the Affinity Chart.

**Points and ranks.** A pair accumulates **affinity points**. Points **never decrease** – no action, choice or story event takes them away. The **rank** is read from the points against the thresholds in the [Balancing Guide → Rank thresholds](../Balancing-Guide.md#rank-thresholds), on the scale:

| Rank | Colour | Meaning |
| ---- | ------ | ------- |
| *(no rank)* | – | The two have not yet acted for each other. No combat bonus; not reachable by Exchange or Lifeline; not healed by Heartpulse |
| **D** | Yellow | The bond exists. Lowest bonus; the Nexus reaches the unit |
| **C** | Green | |
| **B** | Blue | |
| **A** | Lavender | |
| **S** | Pink | The maximum. Nothing above it; a unit may hold S with any number of partners |

The colours are XC1's and are used for the rank everywhere it is shown (*UI & Display*). Points stop counting at the S threshold; there is nothing past S to count toward.

**Rank rises only at chapter end** (*→ 3*). During a map the points climb and the gauge fills, but the rank – and with it the bonus and the Nexus reach – is what the pair held when the map began. This is why the throttle is a chapter rule and not a turn rule: a bond deepens between the fights, not inside one.

### 2 – Earning points: deeds, never proximity

Points are earned by the actions below and by nothing else. Ending a turn adjacent, being deployed together, standing in a formation, surviving a map together – none of it counts. Every value is in the [Balancing Guide → Points per source](../Balancing-Guide.md#points-per-source).

| Source | Who gains | Condition |
| ------ | --------- | --------- |
| **Chain Attack** | All three pairs among the three attackers | A chain attack is executed ([Chain Attack](Chain-Attack.md)). Only possible against Special enemies after a shield break, so this is the rarest and, per pair, the richest source |
| **Shared kill** | Each unit that damaged the enemy, with the unit that defeated it | Within one **round** – the Player Phase and the Enemy Phase that follows it – unit A deals damage to an enemy (attack, art, spell, or a reaction A completed) and unit B later defeats that enemy, on either phase. A pairs with B. Several damagers each pair with the killer; damagers do not pair with each other. Damage or a kill by a summoned beast counts for nobody |
| **Help – heal** | Healer ↔ healed | A staff, art or ability of the healer restores HP to an ally, and at least one point was restored. A heal that restores nothing earns nothing. Multi-target heals count once per unit they actually healed |
| **Help – cure** | Curer ↔ cured | A status effect is removed from an ally by the curer's staff, art or ability (the Status Effects system, backlog, defines what a status is). Removing nothing earns nothing |
| **Help – out of danger** | Mover ↔ moved | A positional command, ability or staff of the mover places an ally on a tile that is **threatened by fewer enemies** than the tile it left. *Threatened by* means the number of enemy units that could attack that tile on the coming Enemy Phase – the same count the danger overlay draws. *Interpose* (Lance Paladin), which trades places before a blow, counts by definition |
| **Nexus – Exchange** | Dardan ↔ the swapped ally | Each Exchange ([The Nexus → 2](Nexus.md#2--exchange)). Counted as Nexus, not additionally as *out of danger* |
| **Nexus – Lifeline** | Dardan ↔ the linked ally | Once per round in which Dardan actually carried a share of the ally's damage or took a status in its place ([The Nexus → 3](Nexus.md#3--lifeline)). Placing the line alone earns nothing – the band pays when it carries |
| **Nexus – Heartpulse** | Dardan ↔ every unit that recovered HP | Each unit that was healed by at least one point by the pulse ([The Nexus → 4](Nexus.md#4--heartpulse)). Units at full HP and units without a rank – which the pulse does not reach – earn nothing |
| **Map talk** | The two talkers | *→ 5* |
| **Heart-to-Heart** | The two | *→ 6* |

*Earthbound* earns nothing – it targets an enemy, and there is no bond with an enemy to feed. *Wavelength* earns nothing either, although it touches an ally: the donor performs no deed – it is Dardan who takes, and a bond is made of what two people **do** for each other ([The Nexus → 8](Nexus.md#8--wavelength)). *Soulcairn* earns nothing, because the dead do no deeds.

**Why every source is an action with a cost.** A point that could be farmed by a free repeatable action would turn the bond into a chore, which the anti-pillar on grinding forbids. Each source above costs the acting unit its action, its position or its HP, and the throttle (*→ 3*) bounds what a chapter of deliberate farming can buy: at most the one rank-up the unit could have taken anyway. Whether a per-chapter cap on battle points is also needed is an open decision (*Open decisions → 4*).

**Benched units earn nothing.** A unit not deployed earns no points that chapter – there is no bench, base or convoy source. It may still *rise* at chapter end on points it earned earlier, and it may still view Heart-to-Hearts.

**Separate strands earn nothing across the split.** In Ch 33–40 the roster is divided ([Progression System](../Progression-System.md#part-05--part-06-the-parallel-strands-chapters-33-40)); a unit on Dardan's strand and a unit on Hasan's are never on the same map, the level documents of one strand list no talks with units of the other, and no Heart-to-Heart between them can be viewed until the reunion in Ch 41. This follows from the rules above and is written down so that no one looks for a special case. Dardan is absent from Part 06 entirely, so on Hasan's strand no Nexus source exists.

### 3 – Rising: the throttle

Ranks rise at the end of a chapter, in the between-chapter selection, under one rule:

> **Every unit rises at most one rank, with at most one partner, per chapter.**

1. At chapter end, every pair whose points have reached the next threshold is **eligible**.
2. In the between-chapter selection the player confirms rank-ups **pair by pair**. Confirming Dardan–Leona spends both Dardan's and Leona's rank-up for this chapter; every other eligible pair that contains either of them waits.
3. A pair that waits **keeps its surplus**. Points are never lost to the throttle; an eligible pair stays eligible until it is chosen, and points earned in the meantime keep counting toward the threshold after next.
4. Rank-ups are confirmed **before** Heart-to-Hearts are viewed in the same selection (*→ 6*), so a conversation unlocked by tonight's rise can be watched tonight, and its points count toward the rise after next – never toward tonight's.
5. The rule holds in the epilogue (Ch 53–56) as everywhere else: four chapters, four rank-ups per unit, no combat. That is what the [Progression System](../Progression-System.md#the-epilogue-chapters-53-56--no-progression) means when it says affinity ranks reach their maximum there – the surplus that waited all campaign is spent, one partner per chapter, on the bonds the player chooses to finish. That S is already reachable in Part 07–08 for the pairs the player invested in, and that the epilogue closes the rest, is Dardan's decision (*Open decisions*, decided list; the throttle in the epilogue itself is *→ 2*).

**Why a throttle at all, and why per unit.** Without it, a healer who healed everyone would reach A with the whole roster by Part 03 and the bond would mean nothing. With a cap on *points* instead, every extra deed after the cap would be wasted, and the player would stop acting together – the opposite of the intent. The Path of Radiance throttle keeps every deed worth doing and moves the scarcity to the one place where it creates a decision: *whom* this unit deepens with, this chapter. Per unit rather than per pair, because the choice is a person's – Leona can only be present for one of her bonds tonight.

**Why the player chooses** (and not, say, the pair with the most surplus): the choice is the system's decision. Dardan raising Tifa instead of Leona is a decision about Exchange range in the next map and about which Heart-to-Heart opens tonight; an automatic rule would make it a spreadsheet outcome. A simpler alternative is listed under *Open decisions → 1*.

**Starting ranks.** A pair starts at *no rank* unless the [Balancing Guide → Starting ranks](../Balancing-Guide.md#starting-ranks) says otherwise. Decided by Dardan: the **eight Vigilant Knights start at C with Dardan and at C among each other** – the orphanage and Ch 01–05 are priced into that rank – and **Elena holds B with Dardan in Ch 08**, the one map on which she is a player-faction unit before her recruitment ([The Nexus → Introduction](Nexus.md#introduction)); the rank and any points earned on that map are kept and are hers when she joins the roster in Ch 25. A starting rank sets the pair's points to that rank's threshold exactly.

### 4 – The combat bonus

When a unit fights – attacks or is attacked, on either phase – it gets a bonus from **the strongest affinity partner within the bonus range** ([Balancing Guide → Affinity](../Balancing-Guide.md#affinity); Dardan set it at three tiles). Distance is counted in tiles at the moment the combat begins; nothing in between matters. The partner must be a playable unit on the map, alive; it does not need to be able to act.

**Kind from the elements, size from the rank.** Each of the nine elements stands for **two of six bonus types** – Attack, Defense, Hit, Avoid, Critical, Dodge (critical avoid). A pair's bonus is the **sum of both units' element mixes**, and each type's value is read from the pair's **rank**. The mix per element and the value per rank are in the [Balancing Guide → Element mixes](../Balancing-Guide.md#element-mixes) and [→ Combat bonus by rank](../Balancing-Guide.md#combat-bonus-by-rank). A same-element pair doubles one mix; a cross-element pair spreads across up to four types. Both units of the pair receive the same bonus when the partner is in range – it is one bond, felt from both ends.

**Only the strongest partner counts.** If several partners are within range, the unit takes the bonus of the pair with the **highest rank**; on a tie, the pair with more points; on a full tie, the pair listed first on the unit's affinity list (*UI & Display* – the order is visible, so the outcome is predictable). Bonuses from several partners **do not stack**. *Why:* stacking pays the player for clumping – four units in a square, each drawing three bonuses – and clumping is exactly what area magic, reactions and Burning Fields are built to punish; a system that rewards it would fight the rest of the game. One partner also keeps the forecast readable: one line, one name, one set of numbers.

The bonus enters the [damage, hit and critical formulas](../Balancing-Guide.md#-damage-calculation-formula) as the *Affinity Bonus* term and is shown in every battle forecast with the partner's name.

**One partner is not a living unit: Dardan's *Soulcairn*.** In Classic, the fallen together form one partner on his list, and it pays this same bonus for its own rank – but only in a combat in which **no** living ranked partner of his is within the bonus range. It is a gate, not a tie-break: a living partner at D beats Soulcairn at S, and the rule above is unchanged. The rules of that partner are [Nexus → Core Rules → 7](Nexus.md#7--soulcairn); nothing about it changes how any other pair's bonus is read.

### 5 – Map talks

A short conversation between two adjacent units during a battle.

1. The **level document** of the chapter lists which pairs can talk on this map ([Levels](../levels/README.md)); the lines themselves are the chapter's and Lorekeeper's. A pair not listed cannot talk on this map.
2. Either unit may initiate. The initiator must not have acted yet; *Talk* is its **action** for the turn. The partner's state is irrelevant – it may have acted, it may be asleep.
3. A pair talks **once per chapter**. The dialogue plays on the map, a few lines, and the pair gains the talk's points.
4. A talk is optional and never missable within its map as long as both units are deployed and adjacent at some point – but a map ends when its objective is met, and a talk not held is not held.

Map talks are the level designer's tool for placing a bond where the story wants it: the pair who should grow closer in this chapter is the pair the map lists. They are also the one source that does not need an enemy – a bond can be built on a map that goes badly.

### 6 – Heart-to-Hearts

The long conversations of a pair, and the only source that lives outside a battle.

1. **Three per pair** that has them, written by Lorekeeper on the character sheets. Not every pair has Heart-to-Hearts; a pair without them still ranks up through play and still gives its combat bonus.
2. Each is bound to a **fixed rank** – reached, it becomes available. The three ranks are **placed per pair**, not one per rank-up: a pair's conversations may sit at D, B and S, another's at C, A and S. That is XC1's principle – a conversation happens where the relationship has something to say, not on a schedule. Some are additionally gated behind a **story event**: they become available only once the gating chapter has been played, however high the rank.
3. **Never missable.** An available Heart-to-Heart stays available until it is viewed – across any number of chapters, and across the strand split once the two are reunited. The only way to lose one is to lose one of the two.
4. Viewed **between chapters, at a place in the world** – a campfire, the base, a harbour, whatever the chapter that just ended provides. Viewing grants the Heart-to-Heart's points to the pair (*→ 3, step 4* for the timing).
5. Heart-to-Hearts change nothing in the rules – no ability, no stat, no ending. What they change is the two people, which is the point.

**Requirement handed to Base Management** (backlog): a **between-chapter selection** in which the available Heart-to-Hearts are listed and can be viewed, after the rank-up step and before the next deployment. This is the first thing Base Management has to provide; everything else it may do is its own.

### 7 – Elemental affinity, and who has none

**One element per playable unit**, from the nine of the [Magic System](Magic-System.md#die-9-elemente) – Pyro, Cryo, Hydro, Electro, Aero, Geo, Dendro, Lux, Umbra. The element is a **trait of the person**, in the FE7 sense: it says what the unit brings to a bond, not what magic it wields. A Pyro affinity on an archer is normal. It is set on the **story half** of the character sheet and never changes; Rulewright checks only that the element exists. Every playable unit has its element on its sheet (decided by Dardan, 2026-09-20 – see *Open decisions → 6*); the list is the sheets, not this document. It is also the one property that can be **lent**: Dardan's [Wavelength](Nexus.md#8--wavelength) carries a living ally's element on his blade for a counted number of attacks, which is why the element is worth reading as *what the unit brings* rather than as a stat.

**Enemies have no affinity**, and neither do Other-faction units or summoned beasts. The rule that a player system must also be usable against the player is set aside here, with the reason: affinity is what the player *built*, over fifty chapters of deeds, and the enemy cannot have built it. The enemy's version of a bond exists and it is the Dajjal's chain – a bond turned into a leash, which is a boss mechanic of Level 52 and not a stat bonus ([The Nexus → 6](Nexus.md#6--earthbound-and-the-dajjal)). Whether a level may give a named enemy pair a fixed bonus of the same shape is a level-design question and is listed under *Open decisions → 7*.

### 8 – What the Nexus reads

Exchange range, Lifeline range, Heartpulse strength and – with [Wavelength](Nexus.md#8--wavelength) – both **who may lend Dardan an element** and **for how many attacks** are read from the **affinity rank between Dardan and the unit** at the moment of use; the per-rank tables are in the [Balancing Guide → The Nexus](../Balancing-Guide.md#nexus). Three consequences, fixed here so that both documents agree:

- **Any rank from D reaches.** A unit with no rank cannot be exchanged, linked, pulsed or asked for its element. The first deed opens the band.
- **Heartpulse heals nothing it does not reach.** A unit with no rank recovers zero from the pulse and earns no affinity from it – the open decision in [The Nexus](Nexus.md#open-decisions) is answered this way because the alternative (a lowest-row heal for strangers) would make Heartpulse the one Nexus ability that ignores the bond it is named for.
- **The rank is the one the pair holds when the map begins.** Points earned on this map do not raise the reach mid-battle (*→ 1*).

### What Affinity is not: Skill Links, rejected

Xenoblade Chronicles 1 lets a character borrow skills from partners it has affinity with – *Skill Links*. **Not taken**, on purpose. XC1 needed Skill Links because its characters have no class choice; the links were its customization layer. Vigilans Nexum already has that layer several times over: a class tree with a fork at every tier ([Unit Classes](../catalog/Unit-Classes.md)), [Growth Modifiers](Growth-Modifiers.md), [Combat Arts](Combat-Arts.md), ability Capacity ([Abilities](Abilities.md)), and a personal ability that `statcraft` derives as the mechanical translation of who the character is. A borrowed ability would blur exactly that translation – Leona with Hasan's ability is less Leona. And Affinity already pays out three times: the combat bonus, the Nexus reach and the Heart-to-Hearts. A fourth payout would make the bond the best stat in the game, and the anti-pillar on power without price would follow.

**The one thing that does cross the band, and why it is not a Skill Link.** Dardan's [Wavelength](Nexus.md#8--wavelength) lets him carry a living ally's **elemental affinity** on his blade for a counted number of attacks. That is not a borrowed ability: no ability, combat art, stat, growth, weapon rank or class trait moves between the two, and the donor loses nothing. What moves is the **element** – the property *→ 7* already defines as *what the unit brings to a bond*, a trait of the person rather than a piece of its build. The rejection above stands on the boundary between those two things, so the boundary is worth naming: if anything beyond the element is ever lent, Skill Links are back on the table and have to be argued again.

---

## Acquisition / Access

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| Universal – Ch 06 | Affinity is switched on for the whole roster in **Ch 06**: points are earned from that map on, the Affinity Chart opens, the first map talks are listed, the first Heart-to-Hearts follow the map. Nothing before it – Ch 01–05 carry no affinity, and the Knights' starting rank is what those chapters were | From Level 06 |
| Starting ranks | Vigilant Knights at C with Dardan and among each other; Elena at B with Dardan from Ch 08 ([Balancing Guide → Starting ranks](../Balancing-Guide.md#starting-ranks)). Everyone else joins with no rank and earns every bond | Ch 06 / Ch 08 |
| New recruits | A unit joining later starts at no rank with everyone (unless the starting-rank table says otherwise) and is subject to the same throttle: a Part 07 recruit has twelve chapters of rank-ups, and that is the intended shape of a late bond | On joining |
| Elemental affinity | On the sheet, set by Lorekeeper; assignment for the existing roster is a follow-up task, not part of this specification | With the sheet |
| Not available | No item, seal, class, gold or difficulty setting changes affinity. No enemy has it | – |

---

## Strategic Depth

- **Deeds are placement.** A heal builds the bond between the healer and the wounded, so *whom the healer stands behind* is a long-term decision. A Shove that pulls an archer out of a cavalier's reach is a rescue and a point; the same Shove onto a threatened tile is just a Shove. The player who wants Ivan and Leona bonded sends them at the same enemy – one to chip, one to finish – and that is a formation decided by the bond, not by the map.
- **The throttle is the decision.** Every chapter end asks, for each unit with more than one eligible pair, which bond deepens tonight. Dardan's answer is Nexus range: the partner he raises is the one he can reach further next map. A healer's answer is who she heals most anyway. The bench's answer is the surplus it earned before it was benched.
- **Elements decide what a pair is for.** A Pyro–Electro pair is a crit engine; Geo–Hydro is a wall; Aero–Lux lands everything. Because the element is on the sheet and not chosen, the depth lies in *reading* the roster: which pairs the player deepens is also which bonus mixes the front line carries. The forecast shows the numbers; the chart shows the elements; the player builds the pairs.
- **One partner in range – so spread.** With no stacking, the best formation is pairs two or three tiles apart, not a clump. A unit with three partners nearby gains no more than with one, and a Burning Field under the clump punishes all three. The system rewards the same shape the magic system does.
- **The bond is the Nexus.** Dardan's affinity list is a tactical map: at S he reaches across a room, at D across a corridor. Building the bond over forty chapters is building the range the Dajjal fight is won with ([The Nexus → Strategic Depth](Nexus.md#strategic-depth)).
- **Loss is permanent twice.** A fallen unit takes its bonds, its bonus and its unwatched Heart-to-Hearts with it. In Classic, the chart is a record of who was there.

---

## Design Pillars

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | Yes – it *is* the connection between units, measured. And it measures the right thing: not proximity, but what the two did for each other. The unit you healed, rescued and finished enemies with is the unit that fights better beside you and the one Dardan can reach. Every point is a deed, so every rank is a history. |
| **Depth** | Easy to learn, hard to master? | Yes. "Do things together, the bond grows; one rank-up per person per chapter; a partner nearby helps you fight" is thirty seconds. Mastering it is reading nine elements across thirty units, deciding whose heal goes where, shaping a front line into pairs, and spending fifty-six rank-up nights on the bonds that pay – for the Nexus, for the line, for the conversations. |
| **Weight** | Do the decisions have long-term consequences? | Yes. Points never fall, ranks never fall, and a rank-up taken is a rank-up not taken with someone else – for the whole campaign. Dardan's reach in the Tower is the sum of the choices made from Ch 06. A dead unit's bonds are gone. Nothing here can be reset. |
| **Integration** | Does the mechanic tell a story? | Yes. The Knights start at C because they grew up together and the player is told so by the number. Elena's B in Ch 08 is "wie eine Mutter". The chart draws the band Dardan has felt since the orphanage – the *Nexus* of the title – and puts the antagonists on it with a half-sentence and no rank, because the story decides those links, not the player. Heart-to-Hearts are placed where the relationship has something to say, and the epilogue, where the game stops fighting, is where the bonds finish. |
| **Fairness** | Is the challenge respectful of the player's time? | Yes, by construction. Nothing is missable but by death; every point source is shown before the action; the gauge and the next threshold are always visible; the throttle screen lists every eligible pair; the combat bonus is in the forecast with the partner's name; only one partner counts, so the number is one number. No bond is farmed – every source is an action with a price – and no bond is punished for being on the bench. |

**Anti-pillar check:** No grinding – every source costs an action, and the throttle caps what a chapter's farming can buy at the single rank-up the unit could have taken anyway. No power without price – the combat bonus is bought with formation, the Nexus reach with fifty chapters of choices, and every rank-up with the one not taken. Nothing that works only with over-trained units – affinity reads deeds, not levels; a Lv 10 pair at B gets the B bonus. Nothing generic – no support system in the genre is fed by *rescue* and by a Lord's shared wounds, and none puts the villains on the chart.

---

## Introduction

**First chapter:** **Ch 06**, *Heroes Are Made By The Path They Choose…* – the chapter the [Progression System](../Progression-System.md#part-01-path-of-liberation-chapters-1-8) and the [level index](../levels/README.md#part-01-path-of-liberation) already reserve for it, and the last new system before the base-class choice at the chapter's end, so that the first irreversible decision is made with every Part 01 system seen.

**How it is introduced:** by the map, not by a popup – in three steps that Level 06 must carry.

- *On the map.* Level 06 is the first level document that **lists map talks** (*Core Rules → 5*): a handful of Knight pairs who can talk when adjacent, on a map whose objective (defend an NPC) leaves turns to do it. The *Talk* command appearing on a unit next to a friend is the first the player sees of the system, and its cost – the action – is the first thing it teaches. The **battle forecast** in this map shows the *Affinity* line for the first time, for the Knights at C with Dardan: the player sees a bonus with Dardan's name beside it and looks for why.
- *After the map.* The between-chapter selection shows the first **rank-up** screen (which may list no eligible pair yet – one map rarely fills a threshold – and says so) and the first **Heart-to-Hearts**, for any Knight pair with Dardan whose first conversation is bound at C. The **Affinity Chart** opens in the menu from here.
- *The in-world hook.* **Open – Dardan's decision.** The Ch 06 text does not yet contain the scene that carries the system: the moment at which the band between the Knights becomes something the player is shown, and the place where the first Heart-to-Hearts are held. This specification does not invent it. Like the band states in [The Nexus](Nexus.md#open-decisions), it is a **pending story revision**; the chapter's level box and its prose are where the answer will appear, and Level 06 is designed once they do.

**What the player must already know:** the action economy – that a unit acts once (Ch 01); staves and healing (Ch 01, the Acolyte line); positional commands as actions (Ch 01–05, Citizen access); the battle forecast (Ch 01); and the nine elements by name (Ch 05, one tome per element), so that "Pyro" on a character means something before it means a bonus mix.

**Level index.** Ch 06 carries *Affinity* in the *New Mechanics* column of `design/levels/README.md`; one mechanic for that level, as `levelcraft` requires. Ch 08 – Exchange – is the first map on which the Nexus reads a rank.

---

## Catalog

Affinity leads no catalog entries of its own. The element pool is the Magic System's – all nine: [Magic System → Die 9 Elemente](Magic-System.md#die-9-elemente). A unit's elemental affinity and its Heart-to-Hearts live on its character sheet; a chapter's map talks live in its level document.

---

## Balancing Guidelines

Every value lives in the [Balancing Guide → Affinity](../Balancing-Guide.md#affinity) and, for the Nexus tables, in [→ The Nexus](../Balancing-Guide.md#nexus). All of them are proposals until Dardan confirms them:

| Parameter | What it tunes |
| --------- | ------------- |
| Rank thresholds (D, C, B, A, S) | How many deeds a rank costs; how far apart the ranks sit. XC1's 0 / 1000 / 2000 / 3000 / 5000 is the reference shape |
| Points per source | The weight of each deed – a chain attack against a shared kill against a heal against a talk against a Heart-to-Heart |
| Bonus range | How near the partner must stand – set by Dardan at three tiles |
| Combat bonus by rank | How much a rank is worth in each of the six bonus types |
| Element mixes | Which two of the six types each of the nine elements carries |
| Starting ranks | Which pairs begin above *no rank* |
| Exchange range, Lifeline range, Heartpulse heal by rank | What the bond is worth to the Nexus ([The Nexus → Balancing Guidelines](Nexus.md#balancing-guidelines)) |

**Rules, not tuning values**, and therefore here: five ranks; points never fall; one rank-up per unit per chapter, chosen by the player; only the strongest partner in range counts; each element carries two of six types and a pair sums both; three Heart-to-Hearts per pair at pair-specific ranks, never missable; map talks once per pair per chapter, listed by the level; no source for proximity; enemies and beasts have none; any rank from D is reachable by the Nexus and no rank is reached by nothing.

---

## Interaction with Other Mechanics

| Mechanic | Interaction |
| -------- | ----------- |
| **[The Nexus](Nexus.md)** | The dependency in both directions. Exchange range, Lifeline range and Heartpulse strength read the affinity rank between Dardan and the unit (*Core Rules → 8*); Exchange, Lifeline and Heartpulse feed the same bond back (*→ 2*). Earthbound neither reads nor feeds. **Soulcairn** reads the frozen points of the fallen pairs and pays this system's combat bonus where no living ranked partner is in range (*Core Rules → 4*, *Open decisions → 5*); it feeds nothing and changes no living pair. **Wavelength** reads the rank for who may lend Dardan an element and for how long the loan lasts (*Core Rules → 8*); it is **no affinity source** – the donor performs no deed – and it lends the element only, which is why Skill Links stay rejected (*What Affinity is not*). On a map whose level box locks the band (band black) no Nexus source exists, and the rest of Affinity is untouched. |
| **[Chain Attack](Chain-Attack.md)** | A chain attack feeds all three pairs among its attackers. It needs a Special enemy and a broken shield, so it is the rarest source; its per-pair value is set accordingly. A chain attack's own rules do not read affinity – three strangers can chain. |
| **[Beast Summon](Beast-Summon.md)** | A summoned beast has no affinity: it earns none, gives none, is not a partner for the bonus, and its damage or kills never make a shared kill. The same is stated on the beast's side. |
| **Staves and healing** (Heal, Physic, Fortify, Mending Rain, Stillness, Live to Serve, *on healing* abilities) | Every heal that restores HP is a *Help* source, once per unit healed. A heal on a full-HP ally earns nothing, so no healer farms the line. Heartpulse is not a staff and is counted as a Nexus source instead. |
| **Status effects** (backlog) and every cure (Restore, Consecration, Cleansing Palm, Aurevian Rite, Stillness) | Removing a status from an ally is a *Help* source. The Status Effects system decides what counts as a status; Affinity only needs the hook "a status was removed from unit X by unit Y". |
| **Positional commands and abilities** (Shove, Swap, Reposition, Draw Back, Mystic Pull, Uplift, Hurl, Ensnare, Rescue, Warp, Interpose) | A *Help* source when – and only when – the ally lands on a tile threatened by fewer enemies than it left. The danger count is the overlay's; the preview shows whether the move will count. Moving an enemy earns nothing. |
| **Battle forecast, damage and hit formulas** | The *Affinity Bonus* term in the [formulas](../Balancing-Guide.md#-damage-calculation-formula) is this system's combat bonus – Attack, Defense, Hit, Avoid, Critical and Dodge – from the strongest partner in range. It is shown in the forecast with the partner's name. |
| **Bond of Souls** (Dardan's Lord Kit, Lv 54) | A flat bonus to adjacent allies, independent of rank. It stacks with the affinity bonus because it is a different thing – an ability with a Capacity cost, not a bond. |
| **XP – "Supporting: 5 XP per turn adjacent to fighting ally"** ([Balancing Guide → XP](../Balancing-Guide.md#xp-gain-formula)) | Not affinity. That entry is XP for adjacency and belongs to the Experience & Leveling system (backlog); it grants no affinity points. It is the one place in `design/` that still rewards proximity, which sits oddly beside this system – flagged, not changed here (*Open decisions → 8*). |
| **Deployment** (backlog) | Only deployed units earn; every unit may rise and may view Heart-to-Hearts. The deployment screen should show, per unit, the eligible pairs and the partners on the map, so that a deployment can be built for a bond. |
| **Base Management** (backlog) | Affinity hands it its first requirement: the between-chapter selection with rank-ups and Heart-to-Hearts (*Core Rules → 6*). The *place* where a Heart-to-Heart is held is the chapter's. |
| **Level design** (`levelcraft`) | Each level document lists its map talks – the pairs, not the lines. Level 08 must place the hostage Elena within Dardan's Exchange range at rank B ([Balancing Guide → The Nexus](../Balancing-Guide.md#nexus)). Level 06 lists the first talks. |
| **Part 05 / Part 06** | No cross-strand source exists in Ch 33–40 (*Core Rules → 2*). Both strands earn within themselves; the chart shows the other strand's units unchanged. No catch-up rule is needed: the throttle is per chapter, and both strands are eight chapters. |
| **Permadeath / Casual** (backlog) | In Classic a fallen unit's bonds are frozen: no points, no rank-ups, no Heart-to-Hearts, no bonus from the unit itself – and the chart keeps its links greyed at their last rank (*decided*, Dardan 2026-09-21; *Open decisions → 5*). **The frozen pair with Dardan is read by [Soulcairn](Nexus.md#7--soulcairn)**, which sums the frozen points of every fallen unit's pair with him into one partner on his affinity list and pays the ordinary combat bonus for that pool's rank – only when no living ranked partner is within the [bonus range](../Balancing-Guide.md#bonus-range), never stacked, and in Classic only. Affinity's own rules are unchanged by it: the pool earns no points, takes no rank-up, holds no Heart-to-Hearts and is on no rank-up screen. In Casual a retreated unit is back next chapter, nothing is lost, and Soulcairn does not exist. |
| **Difficulty modes** (backlog) | No affinity value is scaled by difficulty. If a mode ever changes thresholds or the bonus, the column belongs in the Balancing Guide's difficulty table, not here. |
| **[Biorhythm](Biorythm.md)** | Unrelated. Neither reads the other. |
| **Growth Modifiers, class tree, Capacity, Combat Arts** | Untouched – the reason Skill Links were rejected (*Core Rules → What Affinity is not*). Affinity changes no growth, no class, no slot. |

---

## UI & Display

- **Rank colours everywhere:** D Yellow · C Green · B Blue · A Lavender · S Pink. The rank is always shown as its letter *and* its colour, so that the chart, the unit list and the forecast read the same.
- **On each unit – the affinity list:** every partner, in a fixed order (Dardan first, then by recruitment), with rank, points, the next threshold as a gauge, the partner's element and the pair's bonus mix. This is the order the tie-break in *Core Rules → 4* reads. Partners on the map are marked; partners within bonus range are marked again.
- **In the battle forecast:** an *Affinity* line – partner's name, rank colour, the bonus per type actually applied to this fight. If no partner is in range, the line says so. If the fight would create a shared kill, a heal or a rescue, the same line names the pair that will gain.
- **Action previews:** the heal preview, the cure preview and every positional-command preview carry the *Affinity* line – "Leona ↔ Lina" – or "no affinity: target not in danger", "no affinity: nothing to heal". The *Talk* command appears on a unit only when the adjacent partner is listed for this map and the pair has not talked yet.
- **When a point is earned:** a small marker on both units, in the pair's rank colour, and the gauge on the affinity list moves. No hidden totals.
- **At chapter end – the rank-up screen:** every eligible pair, with current and next rank, points and surplus; picking one greys every other pair that contains either unit, with the reason ("Leona has already risen this chapter"). A unit with no eligible pair is not listed. Skipping is allowed – an eligible pair waits.
- **Between chapters – Heart-to-Hearts:** the available conversations, each with the pair, its rank and – if story-gated and not yet open – the lock and its reason. Viewed ones are marked; the list is never empty of what is owed.
- **The Affinity Chart** – the main-menu web, XC1's model, in-game only:
  - **Nodes** are characters. A playable unit is on the chart from the moment it joins; a **story character** – antagonist, family, mentor – is registered the moment it is named in the story, whether or not it ever fights.
  - **Playable ↔ playable links** show the rank as its symbol in its colour. No link is drawn for a pair with no rank. On selection: the pair's points, gauge, element mix and Heart-to-Hearts (viewed, available, locked).
  - **Story links** – a playable unit or a story character to a story character – carry a **subtitle**: half a sentence that names the relationship ("the aunt who burned his home", "his brother, whom he never knew"). **No rank and no colour.** A story link appears, or its subtitle changes, only through a **story event** – a chapter – never through anything the player does. *Decided by Dardan – no mood colour:* the chart's colour channel is already the rank scale, and a red-to-blue scale on story links would read Blue and Lavender as B and A; the subtitle carries the mood more precisely than a hue ("the aunt who burned his home" does not need a red line), and it is the subtitle, not a colour, that a story event rewrites. Story links are drawn in one neutral style, distinct from every rank colour.
  - **Content** – which story character appears when, and with which subtitle – is story, written per chapter by Lorekeeper. The chart's rules end at the display.
  - **The other strand** in Ch 33–40 is shown as it was at the split; its links do not move until Ch 41.
  - A fallen unit stays on the chart with its links greyed, at their last rank (*decided*, Dardan 2026-09-21; *Open decisions → 5*). **On Dardan's side those greyed links visibly run into one node named *Soulcairn***, the fallen taken together ([Nexus → Core Rules → 7](Nexus.md#7--soulcairn)); selecting it shows the pool's points, rank and element and the frozen points feeding it.
- **Soulcairn on Dardan's affinity list** (Classic only, from the first loss): its own row named *Soulcairn*, with rank in the rank colour, points and element – the element of the heaviest fallen unit, with that unit's name beside it – placed after every living partner, so that the list's fixed order reads it last and the tie-break of *Core Rules → 4* can never hand it a fight a living partner is in. No row while the pool is empty, and none in Casual. **In the battle forecast** the *Affinity* line names *Soulcairn* and the heaviest fallen unit whenever the bonus applies – that is, whenever Dardan fights with no living ranked partner within the bonus range; with a living partner in range the line names the living partner as always.
- **Elemental affinity** is shown on the unit's status screen next to its name, as the element's icon – the same icon the Magic System uses, so the player never learns a second symbol.

---

## Open Decisions

Everything below is written into the rules above in its **conservative form** so that the document is playable as it stands. Each is Dardan's to confirm or widen; none was decided by him unless marked *decided*. **Decided by Dardan and not listed:** the name; the XC1 leading idea and the PoR throttle; five ranks D–S with XC1's colours; S as maximum without exclusivity; the six point sources and the exclusion of tainting, gifts, dialogue choices and formation; the bonus range of three tiles; kind-by-element and size-by-rank; three Heart-to-Hearts per pair at pair-specific ranks, some story-gated, never missable, viewed between chapters; the Knights at C with Dardan **and with each other**, and Elena at B with Dardan; any rank from D as the Exchange threshold; the Affinity Chart with story characters by subtitle and without rank; Skill Links rejected; enemies and beasts without affinity; Ch 06 as the introduction. **Proposed here and confirmed by Dardan (2026-09-20):** S is reachable in Part 07–08 for pairs the player invested in, and the epilogue finishes the rest – not a hard gate at Ch 53, which would leave the S combat bonus and the S row of every Nexus table dead in every fight, the Dajjal's included; Affinity switches on in Ch 06 and Ch 01–05 accumulate nothing – the Knights' starting C *is* those chapters; story links on the Affinity Chart carry a subtitle and no mood colour, because the chart's colour channel is the rank scale; the eight Vigilant Knights start at C among each other, for the same reason as their C with Dardan.

1. **The player chooses the rank-up** at chapter end, pair by pair. The simpler alternative is automatic: the eligible pair with the most surplus rises. Rejected here because the choice is where the system's weight lives (Dardan's Nexus reach depends on it); Dardan may prefer the automatic rule if the screen proves tedious with thirty units.
2. **The throttle holds in the epilogue.** Four chapters, four rank-ups per unit. The alternative is to lift it in Ch 53–56 so that every eligible pair caps – more bonds finished, fewer decisions.
3. **The step from *no rank* to D is throttled like every other.** Consequence: a late recruit bonds slowly, with one unit per chapter. The alternative exempts the first step so that a recruit opens a band with everyone it acts with in its first map – faster for the Nexus, weaker as a statement about strangers.
4. **No per-chapter cap on battle points.** The throttle bounds what farming can buy; each source costs an action. If stalling a map to heal for points turns out to be worth it, a cap per pair per chapter is a tuning value for the Balancing Guide, not a rule change.
5. **A fallen unit's links stay on the chart, greyed, at their last rank** – *decided* (Dardan, 2026-09-21), and now **load-bearing**. In Classic the pair's points are frozen at the moment of the unit's death and the link is greyed rather than removed. This is no longer only a display choice: [Soulcairn](Nexus.md#7--soulcairn), the fifth Nexus ability, sums exactly those frozen points into one partner on Dardan's list. Removing the links would remove the ability. Kept because the chart is the band, and the band remembers.
6. **Which unit carries which element** – *decided* (Dardan, 2026-09-20). All 28 playable sheets carry their element; the combat bonus is computable for every pair. Person first, element second, per `charactercraft`. The one deliberate mechanical anchor: Dardan is **Dendro** (Attack, Defense), one of only two elements that doubles a type with Hasan's Pyro *and* with Tifa's Hydro – with Hasan he hits, with Tifa he holds – and the other, Umbra, is not who he is. Distribution: Pyro 4, Geo 4, Cryo 4, Electro 3, Aero 3, Dendro 3, Umbra 3, Hydro 2, Lux 2 – uneven by choice; the sheets fall where they fall. No story pairing reaches doubled Avoid; that role is left for the player to build (Kassandra–Shira, Tifa–Maksimo).
7. **A named enemy pair with a fixed bonus.** Not in the rules. If a level wants two bosses to fight better together (the seven sisters, Gentian and Kresnik), the level may give them an aura of the same shape; that is `levelcraft`'s and would be written as a boss ability, not as affinity.
8. **The XP entry "Supporting: 5 XP per turn adjacent to fighting ally"** rewards proximity in the one place this system refuses to. It belongs to Experience & Leveling (backlog) and is not changed here; left standing by Dardan's decision for the XP specification to settle knowingly.
9. **What counts as *Help* beyond heal, cure and out-of-danger.** Shields, buffs, Chi Transfer and *Live to Serve* are not sources. Adding buffs would let a mage farm the line with a free-ish action; adding shields is the nearer case and is Dardan's to widen.
10. **Shared kill spans the round**, not only the Player Phase: a unit that chipped on the Player Phase pairs with the unit whose counter kills on the Enemy Phase. The narrower reading (Player Phase only) would leave Enemy-Phase play – half of Fire Emblem – without a bond.

---

**Version:** 1.3
**Created:** 2026-09-20
**Last updated:** 2026-09-22 – *Open decisions → 5* decided (Dardan, 2026-09-21): a fallen unit's links stay greyed and frozen, which [Soulcairn](Nexus.md#7--soulcairn) now rests on; [Wavelength](Nexus.md#8--wavelength) added as a second reader of the rank and as the boundary that keeps Skill Links rejected
**Cross-references:** [The Nexus](Nexus.md) · [Chain Attack](Chain-Attack.md) · [Beast Summon](Beast-Summon.md) · [Magic System](Magic-System.md) · [Balancing Guide](../Balancing-Guide.md) · [Progression System](../Progression-System.md) · [Design Pillars](../Design-Pillars.md) · [Abilities](../catalog/Abilities.md) · [Levels](../levels/README.md)
