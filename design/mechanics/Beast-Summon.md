# Beast Summon

How the Bestiarius' class ability *Beast Call* puts a Solmare beast on the map as a unit of its own – what the beast is, what it costs, how it is ordered, and what it can and cannot take part in. This document holds the rules; every value lives in the [Balancing Guide](../Balancing-Guide.md#beast-summon). The same unit definition serves the wild beasts the player fights as enemies in Ch 22 and Ch 23.

> **Related files:** [Abilities → Beast Call](../catalog/Abilities.md#advanced) · [Unit Classes](../catalog/Unit-Classes.md) · [Balancing Guide → Beast Summon](../Balancing-Guide.md#beast-summon) · [Progression System](../Progression-System.md) · [Magic System](Magic-System.md) · [Chain Attack](Chain-Attack.md) · [Ch 22](../../story/chapters/Part-03-The-Champions-Road/Chapter-22-The-Desert-Knows-No-Kings.md) · [Ch 23](../../story/chapters/Part-03-The-Champions-Road/Chapter-23-Death-Or-Glory.md)

---

## Overview

A Bestiarius – and the Behemoth above it, which keeps the ability – can spend its action and MP to call a Solmare beast onto an adjacent tile. The beast is a **unit, not an effect**: it has a stat block, it takes a tile, it attacks and is attacked, it stays on the map until it falls. It belongs to the **Other faction** (the yellow units the player already knows from NPC allies) and acts on its own during the Other Phase – the player never moves it directly. What the summoner has instead is a **leash**: within the reach of its Chain it can give the beast an order, and the beast keeps that order until it is given another.

The purpose in one sentence: **the player decides where to spend a life that is not one of his people – three times per map, and never further from the tamer than the chain reaches.**

|              | Beast Summon |
| ------------ | ------------ |
| Phase        | Summoned on the Player Phase; the beast acts on the Other Phase |
| Trigger      | *Beast Call* – Active (action). Orders – Active (free), see *Core Rules → 3* |
| Resource     | MP for the summon; the Bestiarius' action; one of three summons per map |
| Core feature | An allied-side AI unit under a short leash: orders only within the Chain's reach, the beast runs wild beyond it |

The reference Dardan named is Tanith's *Reinforce* in *Path of Radiance* – allied units appear and act on their own. Only that much is taken from it: the summon produces units the AI moves, not extra turns for the player. Its numbers are not.

---

## Prerequisites

| Condition | Rule |
| --------- | ---- |
| Class | The unit holds *Beast Call* – the Bestiarius class ability, kept by the Behemoth. No other class, scroll or item grants it |
| Capacity | *Beast Call* must be **equipped** (Capacity 3, [Abilities](../catalog/Abilities.md#advanced)). A Bestiarius that has unequipped it to make room cannot summon and cannot give orders |
| Summons left | The summoner has at least one of its three summons for this map unspent |
| MP | The summoner holds at least the summon's MP cost ([Balancing Guide](../Balancing-Guide.md#beast-summon), not yet set) |
| Tile | At least one **empty, passable tile adjacent** to the summoner. The player chooses which; if there is none, the ability cannot be used |
| Action | The summoner has not yet acted this turn. Summoning is the action – it cannot attack, use a staff or use another action ability in the same turn. It may still move first, and it may give an order afterwards (orders are free) |

---

## Cost

| What | Value |
| ---- | ----- |
| Resource | **MP** – a fixed cost per summon, value in the [Balancing Guide](../Balancing-Guide.md#beast-summon), not yet set. A Bestiarius is a non-mage and builds MP by attacking ([Magic System](Magic-System.md#nicht-magier--aktiv)); every summon is therefore paid with attacks it made earlier, and competes with its Combat Arts for the same pool |
| Action | **The summoner's action.** A turn spent calling a beast is a turn the Bestiarius did not attack with a Chain that reaches two tiles. Giving an order costs nothing (*Core Rules → 3*) |
| Further cost | **One of three summons per map**, never refunded – not when the beast falls, not when it is dismissed, not when the map ends early. **Position**: an order needs the beast within the Chain's reach, so a tamer who wants to keep control stays with its beast instead of where its own Chain would be most useful. **Risk**: a beast beyond the leash acts on its own AI, and that AI attacks enemies – including an enemy the player intended to recruit |
| Visible before use | The MP cost and the number of summons left are shown on the summoner at all times; the target tile is chosen on a highlighted grid like any placement; the beast's stat block is shown before the summon is confirmed, derived from the summoner's current stats (*Core Rules → 1*). Nothing about the beast is revealed only after it exists |

Nothing is lost when a beast dies except the beast. That is deliberate: the summoner already paid the action, the MP and one of three summons at the moment of calling. Charging it again on the beast's death would punish the use the beast is *for* – standing where the player's own units should not.

---

## Core Rules

### 1 – The beast as a unit

**Faction.** A summoned beast belongs to the **Other faction** and is shown in that faction's colour. It is hostile to the enemy and not hostile to the player. It is not a member of the player's army: it is not deployed, does not count against the deployment limit, has no inventory, no affinity ([Affinity](Affinity.md)), no sheet and no name.

**Ally, enemy, beast.** Ability and art texts in the catalog say *ally* / *allied unit* for units of the **player's faction** and *enemy* for units hostile to the acting unit. A summoned beast is **neither**, and a rule reaches it only where the rule says so – *beast* (Apex Predator) or *unit* (Ensnare, Shove, Hurl, Knockback: "a unit – ally or enemy"). Where a rule names units *ally or enemy* and asks which side the beast is on, it is on the side of whoever it is not hostile to: the summoner's positional commands move it without the Strength gate, an enemy's Shove against it is gated like any enemy displacement. Everything else – auras, staves, the Exchange, chain attacks – it gets **only if a rule gives it**, and the table under *Interaction* lists which do. This is the conservative reading and it is Dardan's to widen.

**Stat block – the derivation rule.** A beast has no level and no growth. Its stats are **derived from its summoner's stats at the moment it is called** and never change afterwards:

| Beast stat | Derived from | Rule |
| ---------- | ------------ | ---- |
| HP | Summoner's max HP | Summoner's stat × the beast factor for HP |
| Str | Summoner's Str | Summoner's stat × the beast factor for Str |
| Spd | Summoner's Spd | Summoner's stat × the beast factor for Spd |
| Dex | Summoner's Dex | Summoner's stat × the beast factor for Dex |
| Lck | Summoner's Lck | Summoner's stat × the beast factor for Lck |
| Def | Summoner's Def | Summoner's stat × the beast factor for Def |
| Res | Summoner's Res | Summoner's stat × the beast factor for Res |
| Mag, MP | – | **None.** A beast has no Mag and no MP: it casts nothing, uses no arts, builds no MP and can be given none (Chi Transfer has no legal target in it) |
| Movement | – | A fixed value per beast, not derived – the beast does not get faster because the tamer did |

The factors and the Movement are tuning values in the [Balancing Guide → Beast Summon](../Balancing-Guide.md#beast-summon), **not yet set**. The design intent they must express, so that the table is not filled arbitrarily: the beast is a **body** – HP and Str at or above the summoner's own, Def near it, Spd and Dex below it, Res and Lck well below. A beast should hit hard and take hits; it should not double, dodge or shrug off magic. Shira drives the beasts back with wind in Ch 23, and the numbers should let a mage do that.

The beast is summoned at **full HP** and is never healed (*Interaction → Staves*).

**Natural weapon.** The beast attacks with fangs and claws: a natural weapon with **Range 1**, **Critical 0**, no Uses, no Rank, no Weight. Its Might and Hit are in the Balancing Guide (not yet set). The natural weapon is **not an item**: it cannot be stolen, disarmed, sundered or destroyed, and it stands **outside both weapon triangles** – like the Staff, it neither gains nor suffers a triangle bonus. It applies no element.

**Move Type.** The beast is **Infantry**. It pays terrain costs like any Infantry unit and no effective weapon in the catalog targets it. Whether the beasts warrant a Move Type of their own is an open decision (*Open decisions → 1*); until it is made, Infantry carries the mechanic and nothing here depends on the answer.

**Progression.** A beast **earns no XP, and gives none** when it is defeated – not to the enemy that kills it and not to a player unit that kills a *summoned* beast by any indirect effect. Wild beasts are different (*Core Rules → 5*).

**Objectives.** A summoned beast **counts for no objective**: it is not counted in a rout, it cannot seize, escape, visit, talk or open anything, it is not one of the units an "all allies survive" condition watches, and its death **never** contributes to a defeat condition. The beast is a life the player spends, and the game does not hold it against him.

**Permanence.** The beast stays on the map **until it falls** – it is not recalled at the end of a turn, it does not vanish when its summoner dies, and it does not carry over to the next map. Every map starts every Bestiarius at three summons and no beasts.

### 2 – Summoning

1. The summoner chooses *Beast Call* as its action, pays the MP, and chooses an empty passable tile adjacent to itself.
2. The beast appears on that tile at full HP, with its stat block derived from the summoner as it stands at that moment (class ability bonuses such as Strength +2 included, temporary buffs and debuffs not).
3. The summoner's action is spent. It may still give the new beast an order in the same turn (*→ 3*).
4. The beast acts for the first time on the **following Other Phase** of the same round. Turn order is the Fire Emblem convention – Player Phase → Enemy Phase → Other Phase – so a beast summoned on the Player Phase is exposed to the Enemy Phase before it ever acts. That is a property the player can use: a fresh beast is a body between the enemy and the healer.

**Three summons per Bestiarius per map**, one beast per summon. Every Bestiarius and Behemoth on the field has its own three. There is no limit on how many beasts stand on the map at once other than that – two Bestiarii can field six. Summons are never restored during a map.

**Dismissal.** A summoner may dismiss a beast within its leash as a free action; the beast leaves the map, the summon is not refunded. This exists so that a beast holding a tile the player needs is never a soft-lock.

**If the summoner falls**, its beasts stay on the map, lose every order and fall back to *Roam* (*→ 4*). No other unit can take up their leash. The beast is not turned against the player – it was never loyal to anyone, only leashed.

### 3 – Orders: the leash

A beast does what it is told, and nothing that it was not told. Orders are the whole difference between a tool and a liability, and they are deliberately few.

| Order | The beast … | Holds until |
| ----- | ----------- | ----------- |
| **Halt** | does not move. It attacks an enemy in its reach, otherwise it waits | Replaced |
| **Roam** | acts on its own AI (*→ 4*). **The default**: a beast with no order roams | Replaced |
| **Go to tile** | moves toward a chosen tile by the shortest path it can take. If an enemy is in its reach where its move ends, it attacks; it does not leave the path to hunt. On reaching the tile it **halts** there | Tile reached, then *Halt* |
| **Follow** | stays with its summoner: each Other Phase it moves to the nearest empty tile adjacent to the summoner it can reach, and attacks an enemy in its reach from there. If it cannot reach one, it moves as close as it can | Replaced, or the summoner falls |
| **Attack target** | moves toward a chosen enemy and attacks it when it is in reach, ignoring every other enemy unless one blocks the path. When the target falls or leaves the map, the beast **halts** | Target gone, then *Halt* |

**Who may order.** Only the beast's **own summoner**. A second Bestiarius on the field can neither order nor dismiss another's beasts, and no other unit – Dardan and the Exchange included – can. The bond is between the tamer and the animal it called, not between the animal and the army.

**Reach.** An order can be given only while the beast is **within the reach of the summoner's Chain – range 1–2**. This is the leash, and it is the rule that gives the summon its shape: a beast sent away with *Go to tile* is beyond the leash the moment it is more than two tiles off, and it stays on that order until the tamer catches up with it – or it comes back on its own, because its path happens to lead past. A tamer who wants control keeps its beasts close; a tamer who wants the far flank held sends a beast there and accepts that it is on its own. *Follow* is how a beast is kept on the leash without the player managing it every turn.

**Cost and timing.** Giving an order is **Active (free)**, in the catalog's vocabulary: it does not spend the summoner's action, and it can be given before or after the action, in the same turn as the summon. **One order per beast per turn**; the summoner may order each of its beasts. *This is the reading consistent with the catalog's Active (free) / Active (action) split – the summon costs the action because it creates a unit; an order costs nothing because it only chooses what an existing unit will do, like Adaptability chooses what an existing unit holds. Dardan has not ruled on it – see Open decisions → 2.*

**No hidden order.** The beast's current order is shown over it at all times (*UI & Display*), and a *Go to tile* or *Attack target* order shows its destination on inspection. A player who forgot what he told a beast can always look.

### 4 – The beast's own behaviour

On the Other Phase every beast acts once, in the order they were summoned, according to its order. Under *Roam* – and for the "attacks an enemy in its reach" clause of every other order – the AI is this, and no more than this:

- The beast **attacks the nearest enemy it can reach and strike this turn**. If several are equally near, it takes the one with the **lowest current HP**.
- If it can reach no enemy, it **moves toward the nearest enemy** as far as its Movement allows.
- It never attacks a player unit or another Other-faction unit, never enters a tile it cannot end on, and never uses terrain deliberately – it does not seek forests or avoid sand.
- It counter-attacks on every phase like any unit, within its Range 1.

Enemy AI treats a summoned beast as a legitimate target like any Other-faction unit. An enemy that would rather kill the beast than reach the archer behind it is the beast doing its job.

### 5 – Wild beasts: the enemy of Ch 22 and Ch 23

The beasts the player fights at the oasis in Ch 22 and that come through the arena's middle gate in Ch 23 are **this unit, in the enemy faction**: the same natural weapon, Move Type, no Mag, no MP, no items, the same behaviour rules under *Roam* with the enemy's targets. Two things differ because they are a property of being *summoned*, not of being a beast:

- A wild beast is a **generic enemy**: it gives XP when defeated and it counts for a rout objective like any enemy. There is no sheet for it; its stats are set in the level document of the battle it appears in, like every generic enemy.
- A wild beast is **not derived from anyone**. Its stats are set against the enemy level band of its chapter; that scaling is `levelcraft`'s and is written when Level 22 and Level 23 are designed – the level index currently stops at Level 08. This document only fixes that the unit is the same, so that what the player learned about the beast in the desert is still true when the Bestiarius calls one.

---

## Acquisition / Access

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| Class ability | *Beast Call* is the class ability of the **Bestiarius** (Advanced, on the Tamer → Dompteur line) and is kept by the **Behemoth** | From the promotion to Bestiarius – Advanced opens at Lv 30, i.e. from Ch 25 per the [Progression System](../Progression-System.md#promotion-requirements). The Harpooner branch of the Tamer never gets it |
| Enemy | Wild beasts are placed by the level design | Ch 22, Ch 23; any later level that calls for them |
| Not available | No scroll, item, staff or Lord Kit grants a summon. Nothing else in the game puts a unit on the map that the player did not deploy | – |

---

## Strategic Depth

- **Three lives, spent on purpose.** A beast can be a wall in a corridor (*Halt*), a body between the enemy line and the healer (summon and leave it), a plug thrown on a far chokepoint (*Go to tile*), a hunter sent after the enemy healer (*Attack target*), or the tamer's shadow (*Follow*). The player who summons all three on turn one has three bodies for the whole map and nothing left for the boss; the player who saves them may never use them. Neither is wrong.
- **The leash is a positioning problem.** Orders reach two tiles. A Bestiarius that wants its beast obedient stands where a Chain unit would rather not – in the press, next to the animal – and one that wants its Chain on the flank lets the beast off the leash. The Behemoth's *Apex Predator* is written for the first choice: beasts adjacent to it pin what they stand beside.
- **The beast is a unit for every rule that says *unit*.** *Ensnare* pulls it, *Hurl* throws it over a wall onto the enemy's side, *Shove* and *Knockback* push it into the tile the player needs blocked. A Bestiarius can summon, then hurl the beast two tiles further – the beast is placed where the summon alone could not reach. The enemy gets the same tools: a beast can be shoved out of its corridor.
- **A decoy that costs no one anything.** Because the beast never contributes to defeat and gives no XP to the enemy, spending it to draw the Enemy Phase onto itself has no downside beyond the summon – which is what makes the decision about *when* to spend the summon the real one.
- **Unleashed means unleashed.** A beast beyond the leash attacks the nearest enemy. If that enemy is the one Dardan needed to talk to, the beast has recruited nobody. A player who sends a beast toward a recruitable unit has read the map wrong, and can see that he has, because the order and the beast's targets are always shown.
- **Two summoners, six beasts.** A roster that promotes two Dompteurs to Bestiarius fields a pack – but every beast is derived from the tamer that called it, and each tamer still has to be within two tiles to order its own.

---

## Design Pillars

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | Yes, by contrast. Every other unit on the field is a person with a bond that the game measures; the beast is the one thing that has none. It obeys within two tiles and runs wild beyond, it holds no affinity with anyone, cannot be healed or exchanged, and when it dies nobody mourns it. The tamer keeps it close or lets it go – and the game about trust shows, in one unit, what obedience without a bond looks like. |
| **Depth** | Easy to learn, hard to master? | Yes. "Call a beast, tell it what to do, it fights on its own" is one sentence, and the player has already met the unit as an enemy. Mastering it means deciding across a whole map when to spend three summons, which of five orders, and whether to hold the leash or drop it. |
| **Weight** | Do the decisions have long-term consequences? | Yes. A summon is never refunded; three per map is the budget for the map. Above that, the beast is reached by a permanent fork – Dompteur to Bestiarius, not Harpooner – chosen ten chapters earlier. |
| **Integration** | Does the mechanic tell a story? | Yes. The beasts are the Solmare beasts of Ch 22, silent and sand-coloured, that the player fought at the oasis, and that came through the colosseum's middle gate in Ch 23 – somebody in Thysia keeps and looses them. The Bestiarius is the class that learned to. |
| **Fairness** | Is the challenge respectful of the player's time? | Yes, by construction: every cost (MP, action, summons left) is shown before the call, the beast's stats are shown before it exists, its order is always visible, its AI is three sentences the player can predict, and its death never loses the map. The one way to be hurt by a beast – letting it kill a unit you meant to recruit – is visible in advance and only happens beyond the leash the player chose to drop. |

**Anti-pillar check:** No grinding – a summoned beast gives no XP in either direction, so there is no beast farm and no beast-fed level-up. No power without price – action, MP and one of three summons, plus the tamer's position. Nothing that only works with over-trained units – the beast scales with the summoner, so an ordinary Bestiarius fields an ordinary beast. Nothing generic – it is the only summon in the game and the only Other-faction unit the player has a say over.

---

## Introduction

**First chapter:** **Ch 22** as an enemy; **Ch 23** as an enemy again; the summon itself from **Ch 25 at the earliest**, on whichever map the player first promotes a Dompteur to Bestiarius (Advanced opens at Lv 30, Ch 25). There is no fixed chapter for the first summon, and there does not need to be: by then the unit is known.

**How it is introduced:** In the order the player meets it, which is the reverse of the usual – the unit first, the ability second.

- *Ch 22, The Desert Knows No Kings.* The beasts come out of the sand at the oasis, silent, from every direction, with a coordination the chapter says animals should not have. The player fights the unit – its Range 1, its weight, that wind pushes it (Ch 23 shows Shira doing exactly that) – and learns its behaviour: it goes for the nearest thing it can reach. In the same battle **Rohan Ashveil appears as an NPC ally** – a yellow unit acting on its own that the player cannot move. Both halves of the summon are taught here, as an enemy and as a friend, before either is his.
- *Ch 23, Death or Glory.* The same beasts come through the colosseum's **middle gate** in the first wave, beside the mercenaries. Somebody in Thysia keeps these animals and releases them on command. The player sees that beasts can be *used*.
- *Ch 25 or later.* The promotion preview shows *Beast Call* on the Bestiarius branch and not on the Retiarius branch. The first summon on the map places a unit the player has fought twice, on his own side, with an order menu of five words. The situation that teaches it is any map with a corridor or a healer to cover – the beast is the obvious thing to put there, and the leash teaches itself the first time the player tries to re-order a beast three tiles away and cannot.

**What the player must already know:** Other-faction units and the Other Phase (Rohan, Ch 22), the beast's own stats and behaviour (Ch 22, Ch 23), MP as a non-mage resource built by attacking and spent on arts (Ch 19), positional commands that move units (the Base masteries, Ch 06 onward), and the Bestiarius' own Ensnare and Hurl for placing the beast where the summon cannot.

**Level index.** The *New Mechanics* column exists only for Part 01; Ch 22 and Ch 23 carry level boxes in their chapters and no design document yet. When Level 22 is designed it introduces the beast as a unit and nothing else new – the one-mechanic-per-level rule is kept, because the summon is not on that map. **Gap, not filled:** neither chapter names who keeps the colosseum's beasts. If the Bestiarius is to be learned from a Thysian beast-handler in the story, that person does not exist yet and is Lorekeeper's to write.

---

## Catalog

All entries: [Abilities](../catalog/Abilities.md#advanced) – *Beast Call* is the only entry this system has; the beast itself is a unit definition, not a catalog item, and has no row anywhere.

---

## Balancing Guidelines

Every value lives in the [Balancing Guide → Beast Summon](../Balancing-Guide.md#beast-summon), all of them **not yet set**:

| Parameter | What it tunes |
| --------- | ------------- |
| Beast Call MP cost | How many attacks a Bestiarius must land before it can summon; how often it summons across a map |
| Beast factor per stat (HP, Str, Spd, Dex, Lck, Def, Res) | How much beast a given tamer fields – the multipliers on the summoner's stats |
| Natural weapon Might and Hit | The beast's bite |
| Beast Movement | How far the beast goes beyond the leash in a turn |

Three things are **rules, not tuning values**, and stay here: three summons per Bestiarius per map; the order reach of range 1–2 (the Chain's reach – change it and the leash is a different system); Mag and MP at none.

Wild-beast stats for Ch 22 and Ch 23 are set in those level documents against their chapter's enemy band, per the existing rule that generic enemies carry the stats of one battle.

---

## Interaction with Other Mechanics

| Mechanic | Interaction |
| -------- | ----------- |
| **Ensnare, Shove, Knockback, Hurl** (positional commands, "a unit – ally or enemy") | A beast is a unit for all of them. Used by its summoner or any player unit, the Strength gate does not apply (the beast is not their enemy); used by an enemy, it does. *Hurl* is the intended pairing: summon adjacent, throw the beast onto the tile the summon could not reach. |
| **Apex Predator** (Behemoth) | Extends to "a beast this unit summoned" by its own text – the only ability in the catalog that names beasts. It does not extend to another Bestiarius' beasts or to wild ones. |
| **Leash, Bring Down, Snatch, Cast Net** and every other **on-hit** ability | Trigger on the beast's *summoner's* hits, not on the beast's. A beast has no abilities and no Capacity. |
| **Wall of Spears** (Sentinel) | "Enemies cannot move through." A player's Sentinel does not block a summoned beast; an enemy Sentinel does. |
| **Shadowstep** (Rogue), **Juggernaut** (Colossus Knight) | The beast is a body on the map. A player unit may move *through* a summoned beast's tile as through an ally's and may not end on it; an enemy may not pass it at all – except an enemy Rogue (Shadowstep) or an enemy Colossus Knight, whose Juggernaut damages the beast on the way through like any enemy. |
| **Sanctuary, Bulwark, Shield Brother, Hold Fast, Guard, Wind's Blessing, Litany** and every aura or condition worded on *allies* / *allied units* | **Do not cover the beast**, in either direction: a beast does not count as the adjacent ally that switches Hold Fast on, and an Armored General's Bulwark does not halve damage against it. Conservative reading; *Open decisions → 4*. |
| **Staves and healing** (Heal, Physic, Fortify, Rescue, Warp, Mending Rain, Live to Serve …) | **Cannot target a beast.** Staves heal allies; the beast is not one. A beast is summoned at full HP and fights until it falls – the second and third summon are the healing. *Open decisions → 3*. |
| **[The Nexus](The-Nexus.md)** | **A beast cannot be exchanged, linked, healed by Heartpulse or sealed.** The Nexus is Dardan's bond with a person, and the beast is nobody's. The Nexus specification states the same from its side. |
| **[Affinity](Affinity.md)** | **A beast has no affinity.** It earns none, gives none, is never a partner for the combat bonus, and its damage or kills never count toward a shared kill. Stated from Affinity's side as well. |
| **Chain Attack** | A beast **cannot take part.** The chain attack is a manual Player-Phase action by three player units; the beast acts only on the Other Phase and takes no orders of that kind. It may, however, be one of the bodies that keeps the enemy where the three need it. |
| **Steal, Sleight of Hand, Cutpurse** (enemy thieves) | Nothing to take. The beast has no inventory and its natural weapon is not an item; the ability fails against it. |
| **Disarm, Sunder, Unmaking, Ruin** | The natural weapon cannot be destroyed or lose Uses – it has none. The damage of those arts applies normally. |
| **Weapon and Close Combat triangles** | The natural weapon stands outside both, like the Staff: no bonus for or against it. The beast's Def and Res are the whole of its defence. |
| **Effective weapons** | None – the beast is Infantry. Changes if a *Beast* Move Type is decided (*Open decisions → 1*). |
| **Elements and reactions** ([Magic System](Magic-System.md)) | A beast is a target like any other: elements are applied to it, reactions trigger on it, Updraft pushes it, Entangle and freezing hold it, Burning Fields damage it. It applies no element itself. Enemy mages can set a beast up for a reaction exactly as the player's can set up a wild one. |
| **Terrain** (Movement, backlog) | Infantry terrain rules. The beast's AI does not seek or avoid terrain. |
| **Status effects** (backlog) | Whatever the system decides for units in general applies to the beast; nothing here exempts it. |
| **Permadeath / Casual** (backlog) | Irrelevant to the beast – it never returns between maps in any mode, and its death is never a loss the mode would have to soften. |
| **Deployment** (backlog) | A beast is not deployed and does not occupy a deployment slot. |
| **XP and leveling** (backlog) | The summoned beast is outside the system entirely: no XP earned, none given. The wild beast is a generic enemy inside it. |
| **Growth Modifiers** | Not applied. The beast has no growth; its stats are a snapshot of the summoner's, and the summoner's growth is what improves the next beast. |

---

## UI & Display

- **On the summoner:** the summons remaining for this map, next to the MP bar, at all times. Greyed when *Beast Call* is unequipped.
- **Before the summon:** the target tiles highlighted; the beast's full stat block shown in the confirmation, with the summoner's stat it was derived from on inspection. The MP cost shown in the same place as an art's.
- **On each beast:** the faction colour of Other units, a marker that it is *this* summoner's beast (distinct from an NPC ally such as Rohan), and its **current order** as an icon. *Go to tile* and *Attack target* show their destination or target when the beast is inspected.
- **When ordering:** the order menu opens on any of the summoner's beasts within reach; beasts beyond the leash are shown as out of reach, with the reach drawn – so the player sees *why* he cannot order, not merely that he cannot.
- **In the forecast:** a beast's attack and an attack on a beast use the normal battle forecast. No hidden numbers – a beast is a unit.
- **Objectives:** the beast is not listed among the units an objective counts, so a rout counter or a survival list never shows it.

---

## Open Decisions

Everything below is written into the rules above in its **conservative form** – the beast gets nothing it was not explicitly given – so that the document is playable as it stands. Each is Dardan's to confirm or widen; none was decided by him.

1. **A *Beast* Move Type.** The mechanic runs on Infantry. A Move Type of its own would let a *Beastslayer* weapon exist and would add a column to the effective-weapon table in the Balancing Guide – which is why it is not added here.
2. **Orders are free and one per beast per turn.** Chosen for consistency with the catalog's *Active (free)* vocabulary (the summon creates a unit and costs the action; an order only chooses what an existing unit does). The alternatives are an order costing the action, or one order per *summoner* per turn.
3. **Staves cannot heal a beast.** The beast is Other faction and "ally" in staff and ability texts means the player's faction. The alternative – staves may target summoned beasts – would make a beast a renewable wall instead of three lives.
4. **Auras worded on allies do not cover a beast**, and a beast does not switch on an ally-conditioned ability (Hold Fast, Guard, Shield Brother). The alternative is to count a summoned beast as an ally for every such rule.
5. **The order reach is the Chain's reach, range 1–2.** Set as a rule (it is the leash), not as a tuning value. The alternative – orders at any distance – makes the beast a remote-controlled unit and removes the tamer's positioning cost.
6. **Dismissal exists**, free, within the leash, without refund. Added so a beast can never block a tile the player needs; not in Dardan's list.
7. **When the summoner falls, its beasts stay, drop to *Roam* and can no longer be ordered.** The alternatives are that they vanish, or that another Bestiarius may take them up.
8. **Player units may move through a summoned beast's tile** (as through an ally's), enemies may not. Fire Emblem convention for Other units; not stated anywhere in this project's Movement rules, which are on the backlog.
9. **A wild beast is a generic enemy that gives XP and counts for a rout;** only the summoned beast is outside XP and objectives. Required for Level 22's rout to work at all, but stated here rather than by Dardan.
10. **The stat snapshot includes the summoner's class-ability stat bonuses (Strength +2) and excludes temporary buffs and debuffs.** A line had to be drawn; this one keeps a Bestiarius' beast predictable across a map.

---

**Version:** 1.0
**Created:** 2026-09-19
**Last updated:** 2026-09-19
**Cross-references:** [Abilities](../catalog/Abilities.md) · [Unit Classes](../catalog/Unit-Classes.md) · [Balancing Guide](../Balancing-Guide.md) · [Progression System](../Progression-System.md) · [Magic System](Magic-System.md) · [Chain Attack](Chain-Attack.md) · [Growth Modifiers](Growth-Modifiers.md)
