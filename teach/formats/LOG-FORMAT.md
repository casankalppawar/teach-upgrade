# LOG.md Format

`LOG.md` lives at `topics/<slug>/LOG.md`. It is the chronological record of every question asked, the user's answer, and your verdict. It is the audit trail of what was actually tested (not just covered) and the resume trail for picking up mid-area.

Append-only within a session. Newest session at the bottom.

## Template

```md
# Log: {Topic}

## Session {N} — {YYYY-MM-DD} — area: {area worked}

- **Q** [mcq] {question}
  **A** {what the user answered} → ✓ correct
- **Q** [open] {question}
  **A** {user's answer} → ~ partial — {what was missing}
- **Q** [why] {question}
  **A** {user's answer} → ✗ wrong — {the correction, briefly}
- **Q** [teach-back] {prompt}
  **A** {summary of their explanation} → ✓ cleared teach-back → 2.1 marked `can-teach`

**Session summary:** {1 line — what moved, what status changed}
**Next:** {the area/sub-area to resume on}
```

## Rules

- **Log every question.** The point is to know precisely what has and hasn't been tested. Coverage in a lesson is not a test; only a logged Q&A is.
- **Tag the question type** in brackets: `[mcq]`, `[open]`, `[why]`, `[teach-back]`, `[recall]`, `[apply]`. This lets you see at a glance whether an area was truly stress-tested or only recognised.
- **Record the verdict, not a transcript.** ✓ correct / ~ partial / ✗ wrong, plus the one-line correction. Keep the user's answer to a summary — this is a record, not a recording.
- **Tie status changes to evidence.** When an answer moves an area up the ladder, note it inline (`→ 2.1 marked fluent`). Every `MAP.md` status should be traceable to a line here.
- **End each session with `Session summary` and `Next`.** These mirror the MAP's `## Next` and are the cold-start hooks.
- **Don't prune.** The history of what was asked — including the wrong answers — is the signal for spacing and for spotting recurring misconceptions.
