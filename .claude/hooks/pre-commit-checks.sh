#!/usr/bin/env bash
# Vigilans Nexum – Prüfungen vor dem Commit.
#
# Arbeitet ausschließlich auf dem Index (git diff --cached), nie auf dem
# Arbeitsverzeichnis. Prüft drei Invarianten aus CLAUDE.md:
#   1. Kein {{PLATZHALTER}} aus einem Template  -> blockiert den Commit
#   2. Neue Datei ohne Indexeintrag             -> warnt
#   3. design/ oder story/ ohne CHANGELOG       -> warnt
#
# ZWEI MODI, dieselben Prüfungen:
#   --json   für den Claude-Code-Hook: gibt JSON auf stdout, Exit immer 0.
#            Blockiert über permissionDecision "deny".
#   (ohne)   für den Git-Hook .githooks/pre-commit: gibt Text auf stderr,
#            Exit 1 blockiert den Commit. Das ist der Standard, damit ein
#            versehentlicher Direktaufruf nicht stumm JSON ausgibt.
#
# Meldungen sind bewusst EINZEILIG: Damit braucht die JSON-Ausgabe kein
# Escaping von Zeilenumbrüchen, was unter Git Bash unzuverlässig ist.
# Die einzigen eingesetzten Werte sind Git-Pfade (Vorwärts-Slashes, unter
# Windows dürfen sie kein " enthalten) und Platzhalternamen aus [A-Za-z0-9_-].
#
# Manuell testen:  bash .claude/hooks/pre-commit-checks.sh
set -uo pipefail

mode="text"
[ "${1:-}" = "--json" ] && mode="json"

emit_block() { # $1 = Begründung
  if [ "$mode" = "json" ]; then
    printf '{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"deny","permissionDecisionReason":"%s"}}' "$1"
    exit 0
  fi
  printf 'COMMIT GESTOPPT: %s\n' "$1" >&2
  printf 'Umgehen mit: git commit --no-verify\n' >&2
  exit 1
}

emit_warn() { # $1 = Warnungen
  if [ "$mode" = "json" ]; then
    printf '{"systemMessage":"%s"}' "$1"
  else
    printf 'Hinweis: %s\n' "$1" >&2
  fi
  exit 0
}

root=$(git rev-parse --show-toplevel 2>/dev/null) || exit 0
cd "$root" || exit 0

staged=$(git diff --cached --name-only --diff-filter=ACM 2>/dev/null)
[ -z "$staged" ] && exit 0

warnings=""
add_warning() {
  if [ -z "$warnings" ]; then warnings="$1"; else warnings="$warnings  |  $1"; fi
}

# ── 1. Platzhalter ───────────────────────────────────────────────────────────
# Template-Platzhalter der Form {{FELDNAME}} in neu hinzugefügten Zeilen.
#
# Zwei Ausnahmen, beide notwendig:
#   *_TEMPLATE.md  – Templates SOLLEN Platzhalter enthalten, das ist ihr Zweck
#   `...`          – Text in Backticks redet ÜBER Platzhalter, statt einen zu
#                    benutzen. Skills und CHANGELOG tun das ständig.
SCOPE=(-- '*.md' ':(exclude)*_TEMPLATE.md')
strip_code() { sed 's/`[^`]*`//g'; }

placeholders=$(git diff --cached -U0 --diff-filter=ACM "${SCOPE[@]}" 2>/dev/null \
  | grep '^+' | strip_code | grep -oE '\{\{[A-Za-z0-9_-]+\}\}' | sort -u | head -6 | tr '\n' ' ')

if [ -n "$placeholders" ]; then
  files=$(git diff --cached --name-only --diff-filter=ACM "${SCOPE[@]}" 2>/dev/null \
    | while read -r f; do
        [ -f "$f" ] && strip_code < "$f" | grep -qE '\{\{[A-Za-z0-9_-]+\}\}' && echo "$f"
      done | head -4 | tr '\n' ' ')
  emit_block "Platzhalter im Commit: ${placeholders}in ${files}-- ein aus einem Template kopierter Wert ist noch nicht ersetzt. Ausfuellen oder den Abschnitt loeschen; kein Platzhalter bleibt stehen."
fi

# ── 2. Neue Datei ohne Indexeintrag ──────────────────────────────────────────
# "Neue Datei ohne Indexeintrag existiert nicht." Der Index ist die README.md
# im eigenen Ordner oder im uebergeordneten (playable/ -> characters/README.md).
missing=""
while read -r f; do
  [ -z "$f" ] && continue
  case "$f" in
    */README.md|*/_TEMPLATE.md) continue ;;
    story/characters/*|story/locations/*|design/levels/*|design/mechanics/*|design/catalog/*) ;;
    *) continue ;;
  esac
  base=$(basename "$f" .md)
  dir=$(dirname "$f")
  found=""
  for readme in "$dir/README.md" "$(dirname "$dir")/README.md"; do
    if [ -f "$readme" ] && grep -qF "$base" "$readme"; then found=1; break; fi
  done
  [ -z "$found" ] && missing="${missing}${f} "
done <<< "$(git diff --cached --name-only --diff-filter=A -- '*.md' 2>/dev/null)"

[ -n "$missing" ] && add_warning "Ohne Indexeintrag: ${missing}-- eine neue Datei, die in keiner README.md verlinkt ist, existiert fuer die naechste Sitzung nicht."

# ── 3. CHANGELOG nicht angefasst ─────────────────────────────────────────────
if echo "$staged" | grep -qE '^(design|story)/' && ! echo "$staged" | grep -qx 'CHANGELOG.md'; then
  add_warning "design/ oder story/ geaendert, CHANGELOG.md nicht. War es eine Entscheidung, gehoert sie unter [Unreleased]; Tippfehler und Formulierungen brauchen keinen Eintrag."
fi

# ── Ausgabe ──────────────────────────────────────────────────────────────────
[ -n "$warnings" ] && emit_warn "$warnings"
exit 0
