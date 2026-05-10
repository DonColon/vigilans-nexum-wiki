# Templates

Standardisierte Vorlagen für konsistente Inhaltserstellung im Vigilans Nexum GDD.

---

## 📋 Verfügbare Templates

| Template | Verwendungszweck | Wann benutzen? |
|----------|------------------|----------------|
| [CHARACTER-TEMPLATE.md](CHARACTER-TEMPLATE.md) | Neue spielbare Charaktere | Wenn du eine neue Unit hinzufügst |
| [LEVEL-TEMPLATE.md](LEVEL-TEMPLATE.md) | Level-Design-Dokumente | Für jedes neue Kapitel/Level |
| [CHAPTER-TEMPLATE.md](CHAPTER-TEMPLATE.md) | Story-Kapitel (Deutsch) | Wenn du die Story weiterschreibst |
| [LOCATION-TEMPLATE.md](LOCATION-TEMPLATE.md) | Orte in Tridera | Neue Städte, Länder, Dungeons |
| [WEAPON-TEMPLATE.md](WEAPON-TEMPLATE.md) | Waffen im Katalog | Neue Waffen balancieren |

---

## 🚀 Wie benutze ich ein Template?

### 1. Template kopieren
Öffne die gewünschte Template-Datei und kopiere den gesamten Inhalt.

### 2. Neue Datei erstellen
Erstelle eine neue `.md`-Datei im passenden Ordner:
- **Characters:** `wiki/characters/[Name].md`
- **Levels:** `wiki/levels/Level-[XX]-[Name].md`
- **Chapters:** `wiki/chapters/Part-0X-[Part-Name]/Chapter-[XX]-[Name].md`
- **Locations:** `wiki/locations/[Type]/[Name].md` (z.B. `cities/`, `countries/`)
- **Weapons:** `wiki/catalog/weapons/[Type]/[Name].md` (oder direkt in `Weapons.md`)

### 3. Ausfüllen
Ersetze alle Platzhalter `[...]` mit echten Werten. Lösche die Instruktionen-Box am Anfang.

### 4. Querverweise hinzufügen
Verlinke verwandte Inhalte im "Related Content"-Bereich am Ende des Dokuments.

---

## 📐 Wichtige Regeln

### Konsistenz ist King
- **Dateinamen:** Verwende Kebab-Case (`Character-Name.md`, nicht `character name.md`)
- **Nummerierung:** Chapters/Levels: `01`, `02`, ... `32` (mit führenden Nullen)
- **Sprache:** Story-Kapitel auf **Deutsch**, GDD-Dateien auf **Englisch**

### Pflichtfelder
Jedes Template hat **Pflichtfelder** – fülle sie alle aus:
- Characters: Name, MBTI, Base Stats, Growth Rates
- Levels: Objectives, Enemy Composition, Victory/Defeat Conditions
- Chapters: Mindestens 2 Szenen + Level-Box + END OF CHAPTER

### Balancing beachten
Konsultiere immer den [Balancing Guide](../Balancing-Guide.md):
- **Waffen:** Folge den Tier-Progressionen (Iron → Steel → Silver)
- **Charaktere:** Growth Rates sollten 300-420% ergeben
- **Level:** Enemy Level = Player Level +2 (Normal Mode)

---

## 🎨 Template-Anpassung

Wenn ein Template nicht perfekt passt:
1. **Verwende es als Basis** – nicht jede Sektion ist zwingend
2. **Füge eigene Sektionen hinzu** – wenn sie Sinn machen
3. **Bleib konsistent** – wenn du etwas änderst, ändere es überall

---

## ✅ Checkliste vor dem Commit

Bevor du ein neues Dokument ins GDD einfügst:

- [ ] Template vollständig ausgefüllt (keine `[Platzhalter]` übrig)
- [ ] Querverweise zu anderen Dokumenten hinzugefügt
- [ ] Stats/Werte gemäß [Balancing Guide](../Balancing-Guide.md)
- [ ] Rechtschreibung/Grammatik geprüft
- [ ] Dateiname folgt Namenskonvention
- [ ] Datei im korrekten Ordner gespeichert

---

## 📚 Weiterführende Ressourcen

- **[Design Pillars](../Design-Pillars.md)** – Grundprinzipien jeder Design-Entscheidung
- **[Writing Style Guide](../Writing-Style-Guide.md)** – Wie man Story-Kapitel schreibt
- **[Balancing Guide](../Balancing-Guide.md)** – Numerisches Design
- **[Progression System](../Progression-System.md)** – Level-Kurven & Class-System

---

**Fragen?** Konsultiere die [Design Pillars](../Design-Pillars.md) oder frage im Team nach.

**Version:** 1.0  
**Last Updated:** 2026-05-10
