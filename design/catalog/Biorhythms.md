# Biorhythms

The catalog of every biorhythm type: its tier, and the rule or sequence that decides its Resonance rounds. The rules that read these types (single and double resonance, Dissonance, Chaos's roll, the Wavelength copy) are in [Biorhythm](../mechanics/Biorythm.md). What each tier and each Unique type is worth is in the [Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm).

Two other places refer to this list:

- A **playable unit's** type is on its character sheet, in the `**Biorhythm:**` field.
- An **enemy's** type is its class row in [Unit Classes](Unit-Classes.md).

This page lists the types and assigns them to nobody. A name that is not on this page is not a biorhythm type.

---

## Standard

Regular sequences that are easy to read ahead. Most units carry one.

| Name | Sequence | Resonance rounds |
| ---- | -------- | ---------------- |
| **Geminus** | Even numbers | 2, 4, 6, 8, 10, 12 … |
| **Solus** | Odd numbers | 1, 3, 5, 7, 9, 11 … |
| **Trinus** | Multiples of 3 | 3, 6, 9, 12, 15, 18 … |
| **Quintus** | Multiples of 5 | 5, 10, 15, 20, 25 … |

## Rare

Irregular mathematical sequences. They take more attention to read and give less predictable windows.

| Name | Sequence | Resonance rounds |
| ---- | -------- | ---------------- |
| **Natura** | Fibonacci numbers | 1, 2, 3, 5, 8, 13, 21, 34 … |
| **Primus** | Prime numbers | 2, 3, 5, 7, 11, 13, 17, 19, 23 … |
| **Quadratus** | Square numbers | 1, 4, 9, 16, 25, 36 … |
| **Triangulus** | Triangular numbers | 1, 3, 6, 10, 15, 21, 28, 36 … |
| **Duplex** | Powers of 2 | 1, 2, 4, 8, 16, 32 … |

## Unique

Reserved for main characters. A Unique type is **never assigned to a class**, and each belongs to exactly one person, whose sheet names it. Each Unique type is a tier of its own. It has no single or double resonance, and the fixed-sequence ones (every Unique type except Chaos) have no Dissonance ([Biorhythm → Core Rules → 4](../mechanics/Biorythm.md#4--the-three-fixed-sequence-unique-types)).

| Name | Sequence or rule | Resonance rounds |
| ---- | ---------------- | ---------------- |
| **Crescendo** | Factorials (n!) | 1, 2, 6, 24 … |
| **Mersenne** | Mersenne numbers (2ⁿ − 1, from n = 2) | 3, 7, 15, 31 … |
| **Perfectus** | Perfect numbers | 6, 28 … |
| **Chaos** | **Random per battle.** When the battle begins it rolls one Standard or Rare type and follows that type's rounds for this battle. The roll is visible from turn 1. It carries a stronger Dissonance of its own ([Biorhythm → Core Rules → 5](../mechanics/Biorythm.md#5--chaos)) | Those of the rolled type |
| **Animado** | Central polygonal numbers, the "Lazy Caterer's Sequence" (OEIS A000124): n·(n+1)/2 + 1. Each is a triangular number plus one, so Animado resonates exactly one round after *Triangulus*, and the two share only round 1 | 1, 2, 4, 7, 11, 16, 22, 29, 37 … |

**Design note on Animado (not player-facing).** The name is coined from *animus*: spirit, courage, will. The sequence is its meaning. The gaps between its beats grow by one every time. He gives everything, eases off because it gets to be too much, and still comes back, a little later each time. That is the sheet's line *"steht immer einmal mehr auf als er hinfällt"* made into a number: humanity and willpower together. It beats densest early (1, 2, 4, 7) and thins out later, and that is where [Wavelength](../mechanics/Nexus.md#8--wavelength) lets him lean on a friend's rhythm. He carries too much alone and learns not to.

This heartbeat is **the Niveli family's inheritance**. **Nothing player-facing may name that before the Part 04 reveal.** No tooltip, codex entry, type description or dialogue may connect Animado to the family, and the type's name deliberately does not contain *Niveli*, because Dardan's family appears in Ch 12, long before the reveal. The inheritance is a design fact recorded here for whoever writes the reveal, not information for the player.

The Unique type called *Nexus* in earlier versions no longer exists. It was replaced by *Animado* on 2026-09-27.

---

**Version:** 1.0
**Created:** 2026-09-27
**Cross-references:** [Biorhythm](../mechanics/Biorythm.md) · [Balancing Guide → Biorhythm](../Balancing-Guide.md#biorhythm) · [Unit Classes](Unit-Classes.md) · [Game Catalog](README.md)
