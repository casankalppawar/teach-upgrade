# RECAP.md Format

`RECAP.md` lives at `topics/<slug>/RECAP.md`. It is the **distilled spine** of a topic — the clean logic of everything mastered, free of the Q&A scaffolding that produced it. `LOG.md` is the messy chronological trail of how the learning happened; `RECAP.md` is the finished structure, written in the clean order of the map. It is what the user reads to **revisit a topic** (see Recap mode in `SKILL.md`).

Write an area's entry only once it reaches `understands` or higher — distil it when it lands, not before. Order entries by the map (1, 2, 3…), never chronologically.

## Template

```md
# Recap: {Topic}

_The distilled logic — read this to revisit. Trail of how it was learned: LOG.md._
_Updated: {YYYY-MM-DD}_

## {1. Area name}  ·  `{status}`

**The core:** {the principle in 1–2 tight sentences — the thing that, if you remember nothing else, carries the rest.}

**Why it works / the logic:** {the reasoning chain. The "because" behind the core — what makes it true, not just what it is.}

**Canonical example:** {the one example that proves it — ideally the user's own, from their domain.}

**Where it breaks:** {the edge cases, the misconception that was corrected, when the rule does NOT apply.}

**Method that cracked it:** {1 line — e.g. "worked example → generative rep in his domain". Useful for the next topic and for recap pacing.}

---

## {2. Area name}  ·  `{status}`
...
```

## Rules

- **Distil, don't transcribe.** This is the compressed truth of the area, not a replay of the questions. If it reads like a log, it's wrong.
- **The "core" must be carryable.** One or two sentences the user could hold in their head. If you can't compress it that far, the area isn't really mastered yet.
- **Capture the logic, not just the claim.** The "why it works" line is what makes recap *teaching* rather than flashcards. Always include the reasoning.
- **Prefer the user's own example.** A generative rep from their domain (their GST tool, their invoice flow) re-fires better than a textbook one.
- **Always include "where it breaks."** The edge is what separates revisiting from re-memorising, and it's where decay shows up first on a retrieval pass.
- **Map order, not learn order.** Recap reads as a clean structure; the chronological story lives in `LOG.md`.
- **Grounded.** Same rule as everywhere — every claim traces to `RESOURCES.md`. Recap reorganises mastered material; it never extends the syllabus.
- **Keep it current.** Fold newly mastered areas in at session close. If a retrieval pass shows an area decayed, the recap entry stays but the status tag drops to match `MAP.md`.
