# Abilities

Catalog of every ability – the passive and active effects a unit gains from its class, from a scroll, or as a personal ability. **What** abilities are and by which rules they work is in [Game Mechanics](../mechanics/Abilities.md); **which** ones exist is here.

This list is referenced by the character sheet (*Abilities*, *Personal Ability*) and by the classes in [Unit Classes](Unit-Classes.md). A name in a class table without an entry here does not exist.

**Capacity** is the cost of *equipping* the ability, on the 1–4 scale in [Game Mechanics → Capacity](../mechanics/Abilities.md#capacity-system): 1 weak/passive, 2 medium, 3 strong/rare, 4 unique. A unit may learn far more than it can carry – Base classes hold 3, Master classes 9, a Lord Kit 11. Every class teaches one Class Ability on entry and one Mastery Ability later, and both are kept through every promotion, so the Capacity limit is the only thing that ever forces a choice.

**Trigger** says when the ability does anything. *Passive* means always on. *Dex-based* and *Luck-based* are the percentage triggers from [Game Mechanics → Trigger Types](../mechanics/Abilities.md#trigger-typen); their base chances belong in the [Balancing Guide](../Balancing-Guide.md) and are **not yet set there**.

Where an effect says "half", "double" or "equal to a stat", that is a rule and lives here. Where it would say a flat number, the number belongs in the Balancing Guide and is linked instead.

---

## Personal Abilities

**This section stays empty by design.** A personal ability belongs to one character and is set in the stat block of that character's sheet in `story/characters/`, next to the wound it translates into a rule. Listing it twice would create a second truth. The sheet is the source; this catalog only carries abilities that more than one unit can hold.

| Name | Capacity | Trigger | Effect | Character |
| ---- | -------- | ------- | ------ | --------- |
| *(none – see the character sheets)* | | | | |

---

## Class Abilities

Granted the moment a unit enters the class. Never lost.

### Citizen

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Adaptability | 1 | Active (free) | The unit may change its equipped weapon once per turn without spending its action. The Citizen can hold every weapon type (staged over Ch 01 / 04 / 05, see [Growth Modifiers](../mechanics/Growth-Modifiers.md#core-rules)); this is what makes that more than a list. | Citizen |
| Discipline | 1 | Passive | Weapon experience gained by this unit is doubled. A Citizen starts at rank F, one rank below everyone else – Discipline is how the eight Vigilant Knights close that gap. | Citizen |
| Aptitude | 2 | Passive | Every growth rate of this unit is raised by a flat amount – the value is in the [Balancing Guide → Aptitude](../Balancing-Guide.md#aptitude), the rule in [Growth Modifiers](../mechanics/Growth-Modifiers.md). Kept for the whole campaign, this is the mechanical form of the design intent that the Bellum orphans overtake the veterans who joined ahead of them. | Citizen |

### Base

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Speed +2 | 1 | Passive | +2 Speed. | Swordsman |
| Defense +2 | 1 | Passive | +2 Defense. | Lancer |
| Strength +2 | 1 | Passive | +2 Strength. On the Tamer it feeds both the heavy hit at range 2 and the Strength gate on Ensnare – a Base ability adds to what the weapon does, it never patches what it lacks. | Axe Fighter, Tamer |
| Dexterity +2 | 1 | Passive | +2 Dexterity. | Thief |
| Hit Rate +10 | 1 | Passive | +10 Hit. | Archer, Artillerist |
| Avoid +10 | 1 | Passive | +10 Avoid. | Martial Artist |
| MP +10 | 1 | Passive | +10 maximum MP. | Acolyte, all nine mancer classes |
| Steal | 2 | Active (action) | Take one unequipped item from an adjacent enemy. Fails if the thief's Speed is not above the target's. | Thief |
| Lock Pick | 1 | Active (action) | Open an adjacent door or chest without a key. | Thief |

### Intermediate

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Vantage | 2 | Enemy Phase | When attacked at range 1, this unit strikes first. | Myrmidon |
| Canto | *see [Canto](#canto)* | After an action | Use the movement left over from this turn to move again. Held by every Cavalry and Flying class at every tier, from Sword / Lance / Axe / Bow Cavalier upward. | Sword Cavalier, Lance Cavalier, Axe Cavalier, Bow Cavalier and every mounted or flying class above them |
| Hold Fast | 2 | Passive | While adjacent to at least one allied unit, this unit takes half damage from attacks at range 1. A soldier's strength is the man beside him. | Soldier |
| Cleave | 2 | On defeating an enemy | When this unit defeats an enemy on the Player Phase, every enemy adjacent to the defeated one takes damage equal to this unit's Strength minus its own Defense. | Warrior |
| Pinpoint | 2 | Passive | This unit's attacks ignore the target's terrain Avoid bonus. The answer to enemies camping in forests. | Sniper |
| Shadowstep | 2 | Passive | This unit may move through tiles occupied by enemies. It may not end its move on one. | Rogue |
| Grapple | 2 | On hit | An enemy damaged by this unit at range 1 cannot move on its next turn. It may still act. | Brawler |
| Inner Peace | 2 | Passive | This unit regenerates MP passively each turn at the caster rate in [Magic System](../mechanics/Magic-System.md#magier--passiv) instead of building it through attacks. The Brawler punches to pay for his arts; the Monk breathes. | Martial Monk |
| Braced Shot | 2 | Situational | If this unit has not moved this turn, its Artillery attack cannot miss. | Gunner |
| Scatter Shot | 2 | Passive | This unit's Artillery attacks also deal half damage to every enemy adjacent to the target. | Bombardier |
| Leash | 2 | On hit | An enemy damaged by this unit cannot end its next move on a tile farther from this unit than the one it stands on. It may still act. The chilling wind: the prey may close in or hold its ground, but it can no longer run. | Dompteur |
| Harpoon | 2 | Passive | Every Lance this unit holds is a thrown weapon: its Lance attacks and counter-attacks reach range 1–2, whatever the weapon's listed Range. Together with the Chain this makes the line the only close-combat unit that answers at both ranges with everything it carries. | Harpooner |
| Live to Serve | 2 | On healing | When this unit heals an ally, it recovers the same amount of HP itself. | Cleric |
| Consecration | 2 | On healing | Healing performed by this unit also removes one status effect from the target. | Priest |
| Conflagration | 2 | Passive | A Burning Field created by this unit spreads to one adjacent flammable tile at the start of each turn, for as long as the field lasts (see [Terrain Effects](../mechanics/Magic-System.md#geländeeffekte)). | Pyro Sage |
| Updraft | 2 | On hit | This unit's Aero attacks push the target one tile directly away. | Aero Sage |
| Conduction | 2 | Passive | This unit's Electro attacks against a target standing on a Flooded or Frozen Field trigger the matching reaction even if no element has been applied to the target. | Electro Sage |
| Mending Rain | 2 | Active (action) | This unit may target an allied unit with a Hydro tome; the attack becomes healing for the damage it would otherwise have dealt. The only healer in the game that carries no Staff. | Hydro Sage |
| Cold Snap | 2 | Passive | Enemies adjacent to this unit have their Movement halved on their next turn. | Cryo Sage |
| Stonewright | 2 | Situational | If this unit ends its turn without having moved, it raises a stone barrier on one adjacent empty tile (see [Terrain Effects](../mechanics/Magic-System.md#geländeeffekte)). The barrier is permanent. | Geo Sage |
| Entangle | 2 | On hit | An enemy damaged by this unit's Dendro attack while standing on grass or forest cannot move on its next turn. | Dendro Sage |
| Beacon | 2 | Passive | The tile this unit occupies is a Light Field (see [Special Fields](../mechanics/Magic-System.md#spezialfelder)). It moves with her. | Lux Sage |
| Blight | 2 | Passive | An enemy carrying Umbra applied by this unit cannot be healed while the Umbra remains. | Umbra Sage |

### Advanced

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Sol | 3 | Dex-based | On a triggered attack, this unit recovers HP equal to the damage it dealt. | Sword Master |
| Duel | 2 | Situational | In a combat in which neither this unit nor its target is adjacent to any other unit, this unit's attacks cannot be countered. | Duelist |
| Pierce | 3 | Dex-based | On a triggered attack, the target's Defense is halved. | Halberdier |
| Ironhide | 2 | Dex-based | Halves the damage of a physical attack against this unit. | Armored Knight |
| Bloodlust | 2 | Passive | This unit's Critical rate is increased by the percentage of its maximum HP it is currently missing. | Berserker |
| Pit Fighter | 2 | Situational | While this unit is adjacent to two or more enemies, its attacks cannot be countered. The mirror of the Duelist's Duel: one fights best alone, the other in the press. | Gladiator |
| Beast Call | 3 | Active (action) | Spends MP to summon a Solmare beast – the beasts of Ch 22/23 – on an adjacent empty tile as an Other-faction AI unit that this unit can give orders to within its Chain's reach. Three summons per Bestiarius per map. The beast earns no XP, gives none, counts for no objective, and stays until it falls. Full rules in [Beast Summon](../mechanics/Beast-Summon.md); the MP cost is in the [Balancing Guide → Beast Summon](../Balancing-Guide.md#beast-summon), not yet set. | Bestiarius |
| Cast Net | 3 | On hit | An enemy damaged by this unit's Chain is netted until the end of the next Player Phase: attacks against it cannot miss. The net does not kill – it holds the target still for the trident, and for everyone else. | Retiarius |
| Point Blank | 2 | Passive | This unit may attack adjacent enemies with a Bow, and counter-attacks normally at range 1. | Marksman |
| Pathfinder | 2 | Passive | This unit ignores the extra movement cost of forest, grass, sand and other difficult terrain. | Ranger |
| Vanish | 2 | Situational | If this unit did not attack on its previous turn, it cannot be targeted by attacks from range 2 or more. | Assassin |
| Sleight of Hand | 2 | Active (action) | This unit's Steal may take the target's equipped weapon, not only unequipped items. | Trickster |
| Stagger | 2 | On critical hit | A critical hit by this unit cancels the target's action on its next turn. | Bruiser |
| Chi Transfer | 2 | Active (action) | This unit may give an adjacent ally any amount of its own MP. The only way in the game to move MP between units. | Martial Saint |
| Counter-Battery | 2 | Enemy Phase | When an enemy attacks this unit or an ally within this unit's range from range 3 or more, this unit attacks the attacker after that combat resolves. | Cannoneer |
| Incendiary | 2 | On hit | The tile of any target damaged by this unit's Artillery becomes a Burning Field. | Grenadier |
| Sanctify | 2 | On healing | An ally healed by this unit leaves its tile a Light Field (see [Special Fields](../mechanics/Magic-System.md#spezialfelder)). | Bishop |
| Resonance | 3 | On triggering a reaction | An elemental reaction this unit triggers also affects every enemy adjacent to the target. | Elementalist |
| Radiance | 3 | Passive | Every tile within range 1 of this unit is a Light Field. | Luminary |
| Umbral Edge | 3 | Passive | This unit's Sword attacks apply Umbra. The only class that applies an element with a physical weapon without spending a Combat Art. | Tenebrae |

### Master

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Aether | 3 | Dex-based | On a triggered attack, this unit strikes twice: the first strike recovers HP equal to the damage dealt, the second ignores the target's Defense. | Sword Saint |
| Whirl | 3 | Active (action) | Instead of attacking a single target, this unit attacks every adjacent enemy. A Combat Art cannot be used with Whirl. | Blade Dancer |
| Wall of Spears | 3 | Situational | While this unit has not moved this turn, enemies cannot move through the tiles adjacent to it. | Sentinel |
| Unbreakable | 3 | Passive | This unit cannot be critically hit and cannot be pushed, pulled or displaced by any effect. | Armored General |
| Rend | 3 | Passive | This unit's attacks ignore half the target's Defense. | Warmonger |
| Shield Brother | 3 | Passive | While this unit is adjacent to another allied unit, neither of them can be doubled. | Spartan |
| Killshot | 3 | On critical hit | This unit's critical hits ignore the target's Defense and Resistance entirely. | Deadeye |
| Twin Draw | 3 | Passive | This unit fights with its Bow at range 2 or more and its Sword at range 1 without an equip action, and counter-attacks at every range. | Hunterblade |
| Unseen | 3 | Situational | This unit cannot be targeted by an enemy attack unless it is the only allied unit within that attacker's range. | Nightveil |
| Sabotage | 3 | Active (action) | Instead of attacking, disable an enemy within range 2: it cannot use Combat Arts, magic or abilities until the end of the next Enemy Phase. | Saboteur |
| Chokehold | 3 | Passive | An enemy adjacent to this unit cannot be healed and cannot use a Staff. | Enforcer |
| Open Palm | 3 | On healing | Staff healing performed by this unit also restores the target's MP by the same amount. | Divine Monk |
| Barrage | 3 | Situational | If this unit does not move on its turn, it may attack twice with Artillery. | Warfire Vanguard |
| Wallbreaker | 3 | Passive | This unit's Artillery attacks destroy walls, gates and barricades in a single shot and are effective against Armored targets (see [Effective Weapons](../Balancing-Guide.md#special-weapon-types)). | Siege Breaker |
| Apex Predator | 3 | Passive | An enemy adjacent to this unit, or to a beast this unit summoned, cannot move to a tile that is not adjacent to that unit. It may still act. Leash without the hit: nothing the pack has closed on gets away. | Behemoth |
| Wake | 3 | Passive | Every tile within range 1 of this unit is a Flooded Field (see [Terrain Effects](../mechanics/Magic-System.md#geländeeffekte)). It moves with him, it does not spare his allies, and he alone is unaffected by it. The sea around the sailor – and the water an Electro art turns live. | Leviathan |
| Sanctuary | 3 | Passive | Allied units within range 2 of this unit are immune to status effects and cannot be critically hit. | Arch Bishop |
| Convergence | 3 | Active (free) | This unit may apply two of its three elements with a single attack, triggering a 2-element reaction on its own. | Arcanist |
| Corona | 3 | Passive | Every tile within range 2 of this unit is a Light Field, and any Umbra applied to an enemy standing on one is removed. | Radiant Monarch |
| Umbral Dominion | 3 | Passive | Every tile within range 2 of this unit is a Shadow Field (see [Special Fields](../mechanics/Magic-System.md#spezialfelder)). | Shadow Monarch |

### Lord Kit

A Lord Kit is not a class; its abilities sit on top of a Master class. See [Unit Classes → Special Classes](Unit-Classes.md#special-classes).

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Nexus Mastery | 4 | Passive | The Exchange has no cooldown. Unlocked at Lv 45 – see the [ability timeline](../Progression-System.md#sample-ability-timeline-dardan). | Lord Kit: Dardan |
| Bond of Souls | 4 | Passive | Allies adjacent to this unit gain a bonus to every stat; the value is in the [ability timeline](../Progression-System.md#sample-ability-timeline-dardan). Unlocked at Lv 54. | Lord Kit: Dardan |

---

## Mastery Abilities

Learned late, while the unit stays in the class. The reward for not rushing the next seal – and kept after promotion, so a unit that lingers arrives at Master with more to choose from than one that did not.

### Base – positional

The Base tier's masteries are all movement tools. They are what a fresh army learns first: where a unit stands matters more than what it swings.

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Swap | 1 | Active (action) | Trade places with an adjacent ally. | Swordsman, Thief |
| Shove | 1 | Active (action) | Push an adjacent unit – ally or enemy – one tile directly away. Against an enemy it fails if the target's Strength is above this unit's. | Lancer, Axe Fighter |
| Reposition | 1 | Active (action) | Pull an adjacent ally to the tile directly behind this unit. | Archer, Martial Artist |
| Knockback | 1 | Active (action) | Push an adjacent unit – ally or enemy – two tiles directly away. Against an enemy it fails if the target's Strength is above this unit's. | Artillerist |
| Draw Back | 1 | Active (action) | Move one tile away from an adjacent ally and bring the ally into the tile this unit left. | Acolyte |
| Mystic Pull | 1 | Active (action) | Pull an ally within range 2 to the tile adjacent to this unit. | All nine mancer classes |
| Ensnare | 1 | Active (action) | Pull a unit within range 2 – ally or enemy – to the tile adjacent to this unit. Against an enemy it fails if the target's Strength is above this unit's. Mystic Pull with a chain instead of a spell, and with teeth: the one Base mastery that moves an enemy toward the army. Pulling *on hit* is combat-art territory (Riptide Lash, Net Cast) – this is a command, paid with the action and gated by Strength like Shove. | Tamer |
| Bellum's Will | 2 | – | *Open – not yet specified.* The name carries narrative weight (Bellum), so the effect is a decision, not a gap to be filled by a designer. | Citizen |

### Intermediate

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Wrath | 2 | Situational | After this unit takes damage, its attacks are guaranteed critical hits until the end of its next turn. | Myrmidon |
| Momentum | 2 | Passive | This unit's attack gains damage in proportion to the distance it moved this turn before attacking. *The damage per tile is not yet in the [Balancing Guide](../Balancing-Guide.md) – open.* | Sword Cavalier |
| Brace | 2 | Enemy Phase | When attacked at range 1 by a Cavalry or Flying unit, this unit strikes first. What a lance is for. | Soldier |
| Unhorse | 2 | Passive | This unit's Lance attacks are effective against Cavalry and Flying targets, and cancel the target's Canto for that turn. | Lance Cavalier |
| Sunder | 2 | On hit | Each hit by this unit costs the target one extra Use of its equipped weapon. | Warrior |
| Trample | 2 | On hit | An enemy damaged by this unit is pushed one tile directly away. | Axe Cavalier |
| Overwatch | 2 | Enemy Phase | If this unit has not moved this turn, it strikes first when attacked from range 2 or more. | Sniper |
| Harrying Fire | 2 | On hit | An enemy damaged by this unit has its Movement halved on its next turn. | Bow Cavalier |
| Flanker | 2 | Situational | When the target is adjacent to another allied unit, this unit's attack ignores the target's terrain Defense bonus and cannot be countered. | Rogue |
| Counterpunch | 2 | Enemy Phase | This unit counter-attacks attacks made from range 2. | Brawler |
| Wide Guard | 2 | Situational | While this unit has a Battle Staff equipped and has not moved this turn, the [Battle Staff Guard](../Balancing-Guide.md#battle-staff-guard) penalty applies at every range and also to attacks against adjacent allies. | Martial Monk |
| Crack Shot | 2 | On critical hit | Critical hits with Artillery ignore the target's Defense. | Gunner |
| Demolition | 2 | On hit | This unit's Artillery destroys walls, gates and barricades in a single shot, and the tiles they stood on become Burning Fields. | Bombardier |
| Bring Down | 2 | On hit | A Flying enemy damaged by this unit is grounded until the end of its next turn: it pays terrain costs like Infantry and cannot use Canto. It remains a Flying target for effective weapons. Snatched out of the air – and the Snare Chain is what does the snatching. | Dompteur |
| Receive Charge | 2 | Enemy Phase | When a Cavalry enemy moves into a tile within this unit's Lance range, this unit attacks it once with its Lance before it acts. Once per Enemy Phase. Brace waits to be attacked; the harpooner strikes the moment the rider comes into reach, whoever the rider was going for. | Harpooner |
| Miracle | 2 | Luck-based | When this unit would be reduced to 0 HP, it survives with 1 HP instead. | Cleric |
| Intercession | 3 | Enemy Phase | When an adjacent ally would take lethal damage, this unit takes that damage instead. | Priest |
| Backdraft | 2 | Enemy Phase | An enemy that attacks this unit from range 1 has Pyro applied to it. | Pyro Sage |
| Wind Walk | 2 | After an action | This unit may move again with any Movement it has left. Canto for a mage, earned rather than given. | Aero Sage |
| Overcharge | 2 | Active (free) | This unit may pay double MP for an attack to make that attack twice. | Electro Sage |
| Undertow | 2 | On triggering a reaction | This unit recovers MP equal to the cost of the attack that triggered the reaction. | Hydro Sage |
| Shatter | 2 | Situational | This unit's attacks against a frozen enemy are automatic critical hits. | Cryo Sage |
| Crystallize | 2 | On triggering a reaction | A Kristallisieren shield triggered by this unit is also granted to every ally adjacent to the target. | Geo Sage |
| Verdant Grasp | 2 | Passive | An enemy immobilised by a reaction this unit triggered takes damage equal to this unit's Magic at the start of each of its turns. | Dendro Sage |
| Aureole | 2 | On healing | When this unit heals or buffs an ally, the same effect also applies to one ally adjacent to the target. | Lux Sage |
| Siphon | 2 | On hit | This unit recovers HP equal to half the damage its Umbra attacks deal. | Umbra Sage |

### Advanced

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Swordfaire | 2 | Passive | This unit deals additional damage with Swords. *The value is not yet in the [Balancing Guide](../Balancing-Guide.md) – open, and shared by the whole faire family.* | Sword Master |
| Lancefaire | 2 | Passive | As Swordfaire, for Lances. | Halberdier |
| Axefaire | 2 | Passive | As Swordfaire, for Axes. | Berserker |
| Bowfaire | 2 | Passive | As Swordfaire, for Bows. | Marksman |
| Riposte | 2 | Enemy Phase | When an attack against this unit misses, this unit immediately strikes the attacker. | Duelist |
| Lancebreaker | 2 | Passive | This unit suffers no [weapon triangle](../Balancing-Guide.md#weapon-triangle-bonuses) disadvantage against Lances. A rider's answer to the wall of spears built to stop him. | Sword Paladin |
| Talons | 2 | Passive | This unit's attacks are effective against Flying targets. The griffon hunts what else is in the sky. | Griffon Knight |
| Ward | 2 | Dex-based | Halves the damage of a magical or ranged attack against this unit. The companion to Ironhide. | Armored Knight |
| Interpose | 3 | Enemy Phase | When an adjacent ally is attacked at range 1, this unit may trade places with it before the attack resolves. Once per Enemy Phase. | Lance Paladin |
| Uplift | 2 | Active (free) | Once per turn, this unit may carry one adjacent ally with it as it moves and set it down on an empty tile adjacent to its destination. | Pegasus Knight |
| Disarm | 2 | On critical hit | A critical hit by this unit destroys the target's equipped weapon; the target fights unarmed for the rest of the battle. | Gladiator |
| Breakthrough | 3 | On defeating an enemy | When this unit defeats an enemy, its Movement is restored in full for its Canto. | Axe Paladin |
| Dragon's Dive | 2 | Passive | This unit's attacks are effective against Armored targets. | Wyvern Knight |
| Hunter's Mark | 3 | On hit | An enemy damaged by this unit is marked until the end of the next Player Phase. Every allied attack against a marked enemy ignores its terrain Avoid and terrain Defense bonuses. | Ranger |
| Covering Fire | 3 | Enemy Phase | When an enemy attacks an ally within this unit's weapon range, this unit attacks it first. | Bow Paladin |
| Skyfall | 2 | Passive | This unit's Bow attacks ignore the target's terrain Defense bonus. It shoots from above. | Kinshi Knight |
| Lethality | 3 | Dex-based | On a triggered attack, the target is defeated outright. | Assassin |
| Misdirection | 2 | Enemy Phase | When an attack against this unit at range 1 misses, this unit and the attacker trade places. | Trickster |
| Second Wind | 2 | On defeating an enemy | This unit recovers HP equal to half the damage it dealt. | Bruiser |
| Pressure Point | 2 | On hit | An enemy damaged by this unit cannot use Combat Arts or magic on its next turn. | Martial Saint |
| Piercing Shot | 2 | Passive | This unit's Artillery attack also strikes every enemy on the straight line between it and the target. | Cannoneer |
| Smoke Screen | 2 | Active (action) | Instead of attacking, fire a shell that turns the target tile and its neighbours into a Sandstorm field: ranged attacks cannot cross it (see [Tactical Reactions](../mechanics/Magic-System.md#taktische-reaktionen-grid-spezifisch)). | Grenadier |
| Hurl | 3 | Active (action) | Throw an adjacent unit – ally or enemy – onto any empty tile within range 2 of this unit; what lies between does not stop the throw. Against an enemy it fails if the target's Strength is above this unit's. Knockback chooses a direction; the Bestiarius chooses the tile – over a wall, across a river, into the beast's reach. | Bestiarius |
| Breakwater | 2 | Enemy Phase | When a Cavalry enemy attacks this unit, this unit's counter-attack with a Lance deals additional damage equal to the number of tiles the attacker moved this turn. The charge's own speed, spent on the point set against it. | Retiarius |
| Grace | 2 | On healing | An ally healed by this unit may immediately move up to half its Movement. | Valkyrie |
| Blessing | 2 | On healing | An ally healed by this unit cannot be critically hit until the end of the next turn. | Bishop |
| Cascade | 3 | On triggering a reaction | When this unit triggers a 2-element reaction, the element it applied stays on the target instead of being consumed – the doorway to 3-element reactions outside a chain attack. | Elementalist |
| Revelation | 2 | Passive | Hidden units within this unit's range are revealed, and its attacks against enemies standing on a Shadow Field deal double damage. | Luminary |
| Shadowmeld | 3 | Situational | While this unit stands on a Shadow Field, it cannot be targeted from range 2 or more and its attacks cannot be countered. | Tenebrae |

### Master

| Name | Capacity | Trigger | Effect | Class |
| ---- | -------- | ------- | ------ | ----- |
| Foresight | 3 | Enemy Phase | This unit always strikes first when attacked at range 1, regardless of Speed, and cannot be doubled. | Sword Saint |
| Encore | 3 | On defeating an enemy | After defeating an enemy on the Player Phase, this unit may act again. Once per turn. | Blade Dancer |
| Astra | 3 | Dex-based | On a triggered attack, this unit strikes five times at half damage each. | Astra Knight |
| Stoop | 3 | Situational | If this unit used its full Movement before attacking, the attack cannot be countered. | Griffon Lord |
| Impale | 3 | On critical hit | A critical hit by this unit deals the same damage again to the enemy standing directly behind the target. | Sentinel |
| Bulwark | 3 | Passive | Allies adjacent to this unit take half damage from attacks made at range 2 or more. | Armored General |
| Sworn Shield | 3 | Enemy Phase | While adjacent to this unit, a chosen ally's incoming attacks are redirected to this unit instead. | Aegis Knight |
| Wings of Mercy | 3 | Active (free) | Once per turn, this unit may move to any empty tile adjacent to any allied unit anywhere on the map. | Pegasus Lord |
| Last Roar | 3 | Situational | When this unit is reduced to 0 HP, it makes one final attack against an adjacent enemy before it falls. | Warmonger |
| Unyielding | 3 | Enemy Phase | This unit's counter-attacks never miss. | Spartan |
| Juggernaut | 3 | Passive | This unit may move through enemy-occupied tiles; every enemy whose tile it passes through takes damage equal to this unit's Strength minus its own Defense. | Colossus Knight |
| Drakebreath | 3 | Active (action) | Instead of attacking, apply Pyro to every enemy within range 1. A flier that sets the board up for everyone else. | Wyvern Lord |
| Heartseeker | 3 | Situational | This unit's attacks against a target that has not moved since the start of the Player Phase cannot miss and cannot be countered. | Deadeye |
| Run Down | 3 | On defeating an enemy | After defeating an enemy at range 2 or more, this unit may move up to half its Movement. | Hunterblade |
| Pavise | 3 | Dex-based | Halves the damage of an attack against an ally adjacent to this unit; the ally takes the reduced damage. | Pavise Warden |
| Wind's Blessing | 3 | Passive | Allied units that begin their turn within range 2 of this unit gain [Canto](#canto) for that turn. | Kinshi Lord |
| Deathmark | 3 | Situational | This unit's first attack against an enemy at full HP is an automatic critical hit. | Nightveil |
| Cut the Strings | 3 | On stealing | An enemy this unit steals from loses its action on its next turn. | Saboteur |
| Retribution | 3 | Enemy Phase | This unit's counter-attack deals the damage it just took in addition to its own damage. | Enforcer |
| Stillness | 3 | Situational | If this unit neither moves nor attacks on its turn, every ally within range 2 recovers HP equal to this unit's Magic and is cured of one status effect. | Divine Monk |
| Scorched Earth | 3 | Passive | This unit's Artillery attacks apply Pyro. | Warfire Vanguard |
| Bastion | 3 | Situational | While this unit has not moved this turn, allies adjacent to it take no damage from attacks made at range 3 or more. | Siege Breaker |
| Snatch | 3 | On hit | This unit may throw an enemy it damaged up to three tiles directly away from it; a Flying target thrown this way is also grounded as by Bring Down. Optional on every hit, both phases – the Behemoth decides whether the prey lands in the pack's jaws or off the cliff. Never toward this unit: pulling on hit stays a combat art. | Behemoth |
| Deep Water | 3 | Passive | Cavalry enemies cannot end their move on a tile adjacent to this unit. They may still pass through. A horse does not step into the sea; a rider who wants the Leviathan must throw from range 2 – where the Leviathan throws back with everything it holds. | Leviathan |
| Second Breath | 3 | On healing | Once per turn, an ally healed by this unit may immediately act again. | Celestial Valkyrie |
| Litany | 3 | Passive | An ally that begins its turn on a Light Field within range 2 of this unit recovers HP equal to this unit's Magic. | Arch Bishop |
| Trinity | 3 | On triggering a reaction | When this unit triggers a 2-element reaction, it may immediately apply its third element to the same target and complete a [3-element reaction](../mechanics/Magic-System.md#3-element-reaktionen). | Arcanist |
| Aurelian Ward | 3 | Passive | Allies within range 2 of this unit are immune to curses and debuffs and cannot be reduced below 1 HP by Umbra damage. | Radiant Monarch |
| Harvest | 3 | Situational | When any enemy within range 2 of this unit is defeated, this unit recovers HP and MP equal to half its Magic. | Shadow Monarch |

---

## General Abilities

Scroll abilities. Not tied to any class – any unit may learn one, and scrolls are rare enough that giving one away is a decision (see [Game Mechanics → Scroll Abilities](../mechanics/Abilities.md#scroll-abilities-vs-klassen-abilities)). They are deliberately kept few: a pool this small keeps every scroll a real choice.

| Name | Capacity | Trigger | Effect |
| ---- | -------- | ------- | ------ |
| Adept | 3 | Speed-based | This unit strikes a second time immediately after its first attack. |
| Renewal | 2 | Situational | This unit recovers HP equal to its Luck at the start of each of its turns. |
| Resolve | 2 | Situational | While at or below half HP, this unit cannot be doubled. |
| Nullify | 2 | Passive | Effective weapons deal no bonus damage against this unit (see [Effective Weapons](../Balancing-Guide.md#special-weapon-types)). |
| Guard | 1 | Situational | While adjacent to an allied unit, this unit cannot be critically hit. |
| Pursuit | 1 | On defeating an enemy | After defeating an enemy on the Player Phase, this unit may move one tile. |
| Hexward | 2 | Passive | This unit is immune to the status effects of Umbra reactions. |

---

## Canto

| Name  | Capacity | Trigger         | Effect                                    |
| ----- | -------- | --------------- | ----------------------------------------- |
| Canto | 3        | After an action | Use your remaining movement to move again |

Canto is the Class Ability of every Cavalry and Flying class, at every tier. It is listed separately because it is the only ability shared by more than a dozen classes, and because it is what those classes *are*: a mounted unit that cannot withdraw after striking is only an infantry unit that arrives sooner. It is therefore never the thing that distinguishes two mounted classes from each other – that job belongs to their Mastery Abilities.
