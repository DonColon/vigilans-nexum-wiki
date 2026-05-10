# Balancing Guide

Numerical design principles and formulas for maintaining game balance across all 32 chapters of Vigilans Nexum.

---

## 🎯 Core Balancing Philosophy

**Fire Emblem Principle:** *Choices should be meaningful, not obvious.*

- Every weapon/class/skill should have a **niche** where it excels
- No "strictly better" options – only situational advantages
- Early-game tools should remain viable with upgrades
- Player skill > optimal builds

---

## ⚔️ Weapon Balancing

### Base Stats Framework

| Stat | Description | Typical Range |
|------|-------------|---------------|
| **Might** | Base damage added to attack | 1-20 (Close), 3-15 (Ranged), 5-18 (Magic) |
| **Hit** | Base accuracy percentage | 70-95% (balanced), 60-70% (high-risk), 95-100% (low-damage) |
| **Critical** | Base critical hit chance | 0-10% (most weapons), 15-30% (killer weapons) |
| **Range** | Attack distance | 1 (melee), 2 (javelins/magic), 2-3 (bows), 3-10 (artillery) |
| **Weight** | Affects Attack Speed (AS) | 0-5 (light), 6-12 (medium), 13-20 (heavy) |
| **Uses** | Durability before breaking | 20-30 (iron), 30-40 (steel), 45-60 (silver), ∞ (legendary) |
| **Cost** | Purchase price in gold | 10× Might (rough estimate) |

### Weapon Triangle Bonuses

```
Advantage: +15 Hit, +1 Damage
Disadvantage: -15 Hit, -1 Damage
```

### Weapon Tier Progression

| Tier | Might Multiplier | Hit Modifier | Cost Multiplier | Example |
|------|------------------|--------------|-----------------|---------|
| **Iron** | 1.0× | Base | 1.0× | Iron Sword: 5 Might, 90 Hit, 50 Gold |
| **Steel** | 1.5× | -5 Hit | 3.0× | Steel Sword: 8 Might, 85 Hit, 150 Gold |
| **Silver** | 2.0× | -10 Hit | 10.0× | Silver Sword: 10 Might, 80 Hit, 500 Gold |
| **Legendary** | 2.5×+ | +5 Hit | Priceless | Hero's Blade: 13 Might, 95 Hit |

### Special Weapon Types

**Killer Weapons:** -5 Might, +30 Critical  
**Brave Weapons:** Standard Might, -10 Hit, 2× attacks  
**Effective Weapons:** +9 Might vs. specific enemy types (cavalry, armor, fliers)  
**Magic Weapons:** Use Magic stat instead of Strength

---

## 📊 Unit Stat Balancing

### Base Stats at Level 1 (Citizen Class)

| Stat | Minimum | Average | Maximum | Notes |
|------|---------|---------|---------|-------|
| **HP** | 16 | 18 | 22 | Tanks: +4, Glass Cannons: -2 |
| **Strength** | 3 | 5 | 8 | Physical attackers |
| **Magic** | 0 | 3 | 7 | Mages start higher |
| **Dexterity** | 3 | 5 | 8 | Affects Hit & Avoid |
| **Speed** | 3 | 5 | 9 | Fast units: 7-9 |
| **Luck** | 2 | 4 | 6 | Minor stat |
| **Defense** | 2 | 4 | 7 | Armored units: +3 |
| **Resistance** | 0 | 2 | 5 | Mages: +3-5 |

### Growth Rates (% chance per level)

| Stat | Low | Medium | High | Elite |
|------|-----|--------|------|-------|
| **HP** | 30% | 50% | 70% | 90% |
| **Str/Mag** | 20% | 40% | 60% | 80% |
| **Dex/Spd** | 25% | 45% | 65% | 85% |
| **Lck** | 20% | 35% | 50% | 65% |
| **Def/Res** | 15% | 30% | 50% | 70% |

**Total Growth Rate Budget per Unit:** 300-400%  
- Balanced units: ~350%  
- Min-maxed units: 280-320% (high in few stats, low in others)  
- Lord/Main characters: 380-420%

### Max Stats (Level 45, Master Class)

| Stat | Absolute Cap |
|------|--------------|
| HP | 80 |
| Str/Mag | 40 |
| Dex/Spd/Lck | 40 |
| Def/Res | 40 |

---

## 🏆 Class Balancing

### Class Tier Stat Modifiers

| Tier | HP | Str/Mag | Spd | Def/Res | Movement |
|------|-----|---------|-----|---------|----------|
| **Citizen** | +0 | +0 | +0 | +0 | 5 tiles |
| **Base** | +2 | +1 | +1 | +1 | 5-6 tiles |
| **Intermediate** | +4 | +2 | +2 | +2 | 6 tiles |
| **Advanced** | +6 | +3 | +3 | +3 | 6-7 tiles |
| **Master** | +10 | +5 | +4 | +4 | 7 tiles |
| **Unique** | +12 | +6 | +5 | +5 | Variable |

### Class Type Templates

**Physical Attacker:** High Str/Spd, Low Mag/Res  
**Magic User:** High Mag/Res, Low Str/Def  
**Tank:** High HP/Def, Low Spd  
**Speedy:** High Spd/Dex, Low HP/Def  
**Balanced:** Medium across the board

---

## 🎲 Damage Calculation Formula

```
Attack = (Weapon Might) + (Str or Mag) + (Triangle Bonus) + (Support Bonus)
Defense = (Enemy Def or Res) + (Terrain Bonus)

Damage = Attack - Defense
Minimum Damage = 0
```

### Attack Speed (AS) Calculation

```
AS = Speed - (Weapon Weight - Str/5)

If Attacker AS ≥ Enemy AS + 4:
  → Double Attack (2× damage)
```

### Hit Rate Calculation

```
Hit = (Weapon Hit) + (Dex × 2) + (Luck ÷ 2) + (Support Bonus) + (Triangle Bonus)
Avoid = (Speed × 2) + (Luck) + (Terrain Bonus)

True Hit% = Hit - Avoid
Display Hit% = True Hit% (capped at 0-100%)
```

**Note:** Consider implementing Fire Emblem's "True Hit" system (2RN) where displayed hit rates are more reliable.

### Critical Hit Calculation

```
Crit = (Weapon Crit) + (Dex ÷ 2)
Dodge = (Luck)

Crit% = Crit - Dodge (minimum 0%)

Critical Damage = Damage × 3
```

---

## 📈 Level Progression Curve

### Recommended Average Levels per Part

| Chapter Range | Part | Avg Player Level | Avg Enemy Level | Notes |
|---------------|------|------------------|-----------------|-------|
| 01-08 | Part 1 | 1 → 12 | 1 → 14 | Tutorial + base classes |
| 09-16 | Part 2 | 12 → 22 | 14 → 24 | Intermediate classes unlock |
| 17-24 | Part 3 | 22 → 32 | 24 → 35 | Advanced classes unlock |
| 25-32 | Part 4 | 32 → 45 | 35 → 50 | Master & unique classes |

### XP Gain Formula

```
Base XP = 10 (standard enemy kill)

Modifiers:
- Boss Kill: ×3 XP
- Level Difference: +1 XP per level below enemy, -1 per level above
- Class Tier Difference: +5 XP if enemy is promoted
- Healing: 10 XP per heal action
- Supporting: 5 XP per turn adjacent to fighting ally
```

---

## 💰 Economy Balancing

### Gold Income per Chapter

| Part | Gold per Chapter | Cumulative Total |
|------|------------------|------------------|
| Part 1 | 500-1,000 | ~6,000 |
| Part 2 | 1,000-2,000 | ~18,000 |
| Part 3 | 2,000-3,000 | ~36,000 |
| Part 4 | 3,000-5,000 | ~64,000 |

### Item Cost Guidelines

```
Consumables (Vulnerary, Antidote): 100-300 Gold
Iron Weapons: 400-600 Gold
Steel Weapons: 1,200-1,800 Gold
Silver Weapons: 4,000-6,000 Gold
Stat Boosters: 5,000-8,000 Gold
```

**Scarcity Principle:** Player should afford ~70% of what they want, forcing choices.

---

## 🎨 Difficulty Mode Scaling

| Mode | Enemy Stats | Enemy Numbers | Permadeath | Divine Pulse Uses |
|------|-------------|---------------|------------|-------------------|
| **Casual** | -10% | -20% | Off (Retreat) | Unlimited |
| **Normal** | Base | Base | Optional | 10 per battle |
| **Hard** | +15% | +30% | On | 5 per battle |
| **Maddening** | +30% | +50% | On | 3 per battle |

---

## ✅ Balancing Checklist

When creating new content, verify:

- [ ] **Weapon:** Follows tier progression (Iron → Steel → Silver)
- [ ] **Character:** Growth rates total 300-400%
- [ ] **Class:** Stat bonuses align with class archetype
- [ ] **Level Design:** Enemy level = Player level +2 on Normal
- [ ] **Economy:** Player can afford 70% of available items
- [ ] **Unique Items:** Have clear niche, not "strictly better"
- [ ] **Boss Units:** 1.5× stats of regular enemies, unique skills

---

**References:**  
- Fire Emblem: Three Houses stat curves  
- Fire Emblem: Engage weapon balancing  
- Advance Wars damage calculator logic  

**Version:** 1.0  
**Last Updated:** 2026-05-10
