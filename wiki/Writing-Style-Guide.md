# Writing Style Guide

Narrative consistency guidelines for maintaining the voice, tone, and structure of Vigilans Nexum's story across all 32 chapters.

---

## 🎯 Core Narrative Principles

1. **Emotion Over Exposition** – Show feelings through action and dialogue, not internal monologues
2. **Grounded Fantasy** – Magic exists, but characters react to it realistically
3. **Every Character Has Agency** – No one is just "the healer" or "the tank" – they're people
4. **Battles Are Not Separate from Story** – Combat is a narrative tool, not a break from narrative
5. **German Language for Chapters** – All story chapters are written in German (Deutsch)

---

## 📝 Language & Style

### Primary Writing Language

**Story Chapters:** German (mandatory)  
**Game Design Docs:** English (for technical clarity)  
**Character Dialogue Style:** Natural, character-specific voice

### Tone Guidelines

**Overall Tone:** Cinematic, character-driven, emotionally grounded  
**Not:**
- ❌ Overly dramatic anime monologues
- ❌ Grimdark nihilism
- ❌ Generic high fantasy prose
- ❌ Fourth-wall breaking humor (save for chapter titles)

**Yes:**
- ✅ Fire Emblem: Three Houses emotional weight
- ✅ Personal stakes over world-ending threats (at first)
- ✅ Banter that reveals character
- ✅ Moments of quiet between battles

---

## 📖 Chapter Structure Template

### Standard Chapter Format

```markdown
## Scene 01: [Evocative Scene Name]

[Prose in German, 3-6 paragraphs]
- Set the scene with sensory details
- Character actions and dialogue
- Emotional beats

[Dialogue exchanges – natural, character-specific]

## Scene 02: [Next Scene Name]

[Continue narrative]

> **Level XX begins:**
>
> **Objectives:**
> - Victory: [Clear win condition]
> - Defeat: [Clear loss condition]
> - Secondary: [Optional bonus objective]
>
> **Mechanics:**
> - [New mechanics introduced this level]
> - [Tutorial prompts, if applicable]
>
> **Deployment:**
> - Required: [Character names]
> - Optional: [Number of slots]

[Post-battle scene]

## Scene 03: [Resolution]

[Wrap up emotional beats, set up next chapter]

**END OF CHAPTER XX**
```

### Scene Naming Conventions

**Good:** Evocative, thematic, memorable  
- ✅ "Spott und Herausforderung"  
- ✅ "Das Spiel der Helden"  
- ✅ "Flammen der Hoffnung"

**Avoid:** Generic, mechanical, spoilery  
- ❌ "Scene 1"  
- ❌ "The Battle"  
- ❌ "Dardan Defeats Varnel"

---

## 🗣️ Dialogue Guidelines

### Character Voice Consistency

Each character has a distinct way of speaking:

**Dardan (INFP):**
- Thoughtful, uses qualifiers ("maybe," "I think")
- Questions himself internally
- Speaks kindly but sometimes hesitantly
- Example: *"Vielleicht… sollten wir erst nachdenken, bevor wir handeln?"*

**Hasan (ESTP):**
- Direct, action-oriented
- Confident, sometimes brash
- Short sentences, straight to the point
- Example: *"Genug geredet. Lass uns das erledigen!"*

**Tifa (ISFJ):**
- Warm, caring, but not weak
- Polite but firm when needed
- Uses inclusive language ("we," "us")
- Example: *"Wir schaffen das zusammen. Ich glaube an euch."*

**Claude (INTJ):**
- Analytical, precise
- Dry humor, occasionally sarcastic
- Economical with words
- Example: *"Ineffizient. Wir brauchen einen besseren Plan."*

### Dialogue Formatting

**German Dialogue:**
```markdown
„Dialogue in deutsche Anführungszeichen," sagte Dardan.

Hasan grinste. „So machen wir das."
```

**English Dialogue (GDD only):**
```markdown
"Dialogue in English quotation marks," said Dardan.

Hasan grinned. "That's how we do it."
```

### Natural Dialogue Rules

✅ **Do:**
- Use contractions and natural speech patterns
- Let characters interrupt each other
- Include non-verbal reactions (smiled, frowned, looked away)
- Vary sentence length

❌ **Don't:**
- Have characters explain things they both already know (for the reader's benefit)
- Make every line profound – sometimes people just talk
- Use names in every line of dialogue ("Dardan, I think..." "Hasan, you're right...")

---

## 🎬 Prose Style

### Sensory Details

Start scenes with grounding details – what can be seen, heard, felt?

**Good:**
> Die Sonne hing hoch über Bellum und tauchte die Pflastersteine des Marktplatzes in goldenes Licht. Händler riefen ihre Waren aus, während fröhliches Stimmengewirr die Luft erfüllte.

**Avoid:**
> It was morning in Bellum. The market was busy.

### Pacing

**Action Scenes:** Short sentences. Quick cuts. Visceral verbs.  
**Emotional Scenes:** Longer sentences. Internal reactions. Subtext.  
**Transitions:** Bridge scenes smoothly – show time passing or location changing

### Show, Don't Tell

**Telling:**
> Dardan fühlte sich unsicher.

**Showing:**
> Dardan lächelte unsicher und kratzte sich am Kopf.

---

## ⚔️ Level Design Integration

### Embedding Levels in Story

Levels are **not breaks** in the narrative – they **are** the narrative.

**Before Level:**
- Establish stakes (what happens if we fail?)
- Show character motivation (why are we fighting?)
- Set the scene (where are we? what's the terrain?)

**During Level (via in-game text/dialogue):**
- Mid-battle banter
- Enemy commander taunts
- Environmental storytelling (burning buildings, civilians fleeing)

**After Level:**
- Show consequences (casualties, exhaustion, victory but at cost)
- Character reactions to what just happened
- Bridge to next story beat

### Level Box Format

```markdown
> **Level XX begins:**
>
> **Objectives:**
> - **Victory:** [e.g., Defeat all enemies]
> - **Defeat:** [e.g., Dardan or Hasan falls]
> - **Secondary:** [e.g., Protect all villagers – Reward: Elixir]
>
> **Mechanics:**
> - [Tutorial: Movement and Attack]
> - [Weapon Triangle introduced]
>
> **Deployment:**
> - **Required:** Dardan, Hasan
> - **Optional:** 4 units
```

---

## 🎭 Character Development Guidelines

### Character Arcs

Every character should have a **personal arc** across their chapters.

**Dardan's Arc:**
- Ch 1-8: Self-doubt → Realizes he can lead
- Ch 9-16: Grows in confidence, falls for Tifa
- Ch 17-24: Discovers his destiny as Champion, burden of power
- Ch 25-32: Learns his true identity, accepts who he is

**Supporting Character Arcs:**
- Should complement, not mirror, protagonist
- Can be smaller in scope (e.g., Maksimo learning to trust)
- Should resolve by their final appearance

### Character Consistency

**Reference character sheets before writing dialogue!**

- Check MBTI type
- Check backstory for relevant history
- Check relationships (who do they trust? who annoys them?)

**Inconsistency to avoid:**
- Shy character suddenly making speeches
- Analytical character acting impulsively (without setup)
- Characters forgetting major events from earlier chapters

---

## 📚 World-Building Integration

### Mythology & Religion

**Aurelys (Religion):**
- Should feel present but not preachy
- Characters reference "the Golden Path" naturally
- Not all characters are devout (diversity of belief)

**The Cult of Varnel:**
- Antagonists, but not cartoonishly evil
- Members believe they're right
- Explore *why* someone would join

### Locations

**When describing a new location:**
1. Visual anchor (what does it look like?)
2. Cultural detail (what makes it unique?)
3. Character reaction (how does POV character feel here?)

**Example:**
> Luenava erhob sich vor ihnen wie eine Krone aus weißem Stein – elegant, majestätisch, unnahbar. Dardan hatte noch nie ein Schloss gesehen, das so strahlte. Neben ihm pfiff Hasan leise. „Na, das nenne ich mal ein Zuhause."

---

## ✅ Chapter Writing Checklist

Before submitting a chapter, verify:

- [ ] Written in **German** (for story chapters)
- [ ] Scene headers are evocative and thematic
- [ ] Dialogue matches character voices (check character sheets)
- [ ] Level box is embedded where the battle occurs
- [ ] Sensory details ground the reader in the scene
- [ ] Emotional beats land (characters react to events)
- [ ] No info-dumping (characters don't explain lore to each other unnaturally)
- [ ] Chapter ends with `**END OF CHAPTER XX**`
- [ ] Cross-references to related content (level design, character sheets) are added

---

## 🎯 Specific Writing Scenarios

### Writing a Tutorial Level

**Do:**
- Introduce mechanics through in-world events (Dardan teaches Hasan to fight)
- Keep tutorial text minimal and diegetic when possible
- Make the "lesson" part of character growth

**Don't:**
- Break immersion with UI-heavy tutorials
- Over-explain – trust the player to experiment

### Writing a Boss Battle

**Before:**
- Build up the threat (previous chapters mention this enemy)
- Give the boss a personal connection to a character

**During:**
- Mid-battle dialogue (boss taunts, allies encourage)
- Environmental hazards or unique mechanics

**After:**
- Show cost of victory (injuries, exhaustion, loss)
- Let characters process what just happened

### Writing a Recruitment Scene

**New character should:**
- Have a clear reason to join (personal stake)
- Show their personality immediately (action or dialogue)
- Contrast with existing cast (don't duplicate archetypes)

---

## 📐 Consistency Tracking

### Continuity Checklist

- **Timeline:** Check [Calendar.md](Calendar.md) for in-game dates
- **Geography:** Check [Locations.md](Locations.md) for travel distances
- **Character Status:** Who's alive? Who's injured? Who knows what?
- **Items:** Don't forget about Chekhov's Gun (introduced items should matter)

### Cross-Referencing

At the end of each chapter, add:

```markdown
---

## 🔗 Related Content

- **Level:** [Level XX](../../levels/Level-XX.md)
- **Characters:** [Name](../../characters/Name.md), [Name](../../characters/Name.md)
- **Location:** [Place](../../locations/cities/Place.md)
- **Previous:** [Chapter XX-1](Chapter-XX-1.md)
- **Next:** [Chapter XX+1](Chapter-XX+1.md)
```

---

## 🌟 Inspiration Sources

**For Tone:**
- Fire Emblem: Three Houses (emotional character writing)
- Fire Emblem: Echoes (grounded fantasy, mature themes)
- Tactics Ogre (war is messy, morally complex)

**For Structure:**
- Fire Emblem: Awakening (chapter pacing)
- Advance Wars (mission briefings as storytelling)

**For German Writing:**
- Natural, modern German (not archaic unless character-specific)
- Avoid overly formal language unless it fits the speaker (e.g., Claude might be formal)

---

**Version:** 1.0  
**Last Updated:** 2026-05-10  
**For Questions:** Consult [Design Pillars](Design-Pillars.md) for thematic guidance
