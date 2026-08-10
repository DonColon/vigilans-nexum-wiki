# Calendar

Der Kalender von Tridera – Monatsnamen, Wochentage und die Zählung der Imperialjahre. **Verbindlich für jeden Ingame-Geburtstag** auf einem Charakterbogen und für jede Zeitangabe in der Kapitelprosa.

Reale Datumsangaben (TT.MM.JJJJ) stehen daneben auf den Bögen; wo eine Figur im Text von Zeit spricht, gilt dieser Kalender.

---

## Month Names

| Number | In Game Name | Real Name |
| ------ | ------------ | --------- |
| 01     | Elyndar      | Januar    |
| 02     | Faerisil     | Februar   |
| 03     | Frostfall    | März      |
| 04     | Aeloria      | April     |
| 05     | Mirthan      | Mai       |
| 06     | Goldendawn   | Juni      |
| 07     | Skyblaze     | Juli      |
| 08     | Flamecrest   | August    |
| 09     | Mistfallen   | September |
| 10     | Hallowtide   | Oktober   |
| 11     | Shadowmire   | November  |
| 12     | Nightfallen  | Dezember  |

**Diese zwölf Namen sind vollständig.** Es gibt keinen dreizehnten Monat und keine Zweitnamen. Ein Monat, der hier nicht steht, existiert nicht – das gilt für Charakterbögen wie für Kapitelprosa.

---

## Years: Imperial ↔ Real

Tag und Monat sind identisch – nur das **Jahr** wird verschoben. Die Differenz ist fest:

```
Realjahr        = Imperialjahr + 660
Imperialjahr    = Realjahr − 660
```

Woher die 660 kommt: **Imperialjahr 1337 entspricht dem Realjahr 1997.** Der Ankerpunkt ist bewusst gewählt – 1337 ist *leet*, und das Realjahr ist Dardans Geburtsjahr. Aus diesem einen Paar folgt alles andere.

| Imperialjahr | Realjahr | |
| --- | --- | --- |
| 1337 | 1997 | der Ankerpunkt |
| 1357 | 2017 | **Spielstart** |
| 1335 | 1995 | |
| 1319 | 1979 | |

### So wird umgerechnet

Ein Charakterbogen führt beide Angaben. Sie beschreiben denselben Tag:

```
**Birthday:**         30.01.1997
**In-Game Birthday:** 30th of Elyndar, Imperial Year 1337
```

Schrittweise, vom Realdatum zum Ingame-Datum:

1. **Tag** unverändert übernehmen – 30 bleibt 30
2. **Monat** über die Tabelle oben ersetzen – 01 wird *Elyndar*
3. **Jahr** um 660 verringern – 1997 wird 1337
4. Formatieren als `{Tag}{th|st|nd|rd} of {Monat}, Imperial Year {Jahr}`

Rückwärts genauso, nur mit +660.

### Was daran hängt

**Das Alter einer Figur ist keine freie Angabe.** `charactercraft` legt fest, dass das Alter zum **Spielstart** gilt, und der Spielstart ist Imperialjahr 1357. Damit ist es ableitbar:

```
Alter = 1357 − Imperialjahr der Geburt
```

Wer vor seinem Geburtstag im Jahr steht, ist ein Jahr jünger – wenn ein Bogen davon abweicht, muss der Grund im Text stehen, sonst ist es ein Fehler.

**Beide Zeilen müssen sich entsprechen.** Steht im Feld *Birthday* ein Jahr unter 1900, ist dort versehentlich das Imperialjahr eingetragen worden statt des Realjahres. Das ist im Bestand mehrfach passiert.

**Zeitangaben in der Prosa sind immer imperial.** Eine Figur kennt kein Realjahr und nennt keines. Das Realdatum existiert nur als Dokumentation auf dem Bogen.