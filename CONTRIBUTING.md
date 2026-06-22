# Contributing

Thanks for wanting to make `/teach` better. This skill is a set of Markdown instructions plus file-format specs — there's no build step, so contributing is mostly editing prose and testing it live.

## What lives where

- `teach/SKILL.md` — the operational skill. This is what Claude reads and follows. Most behaviour changes happen here.
- `teach/formats/*.md` — the spec for each file the skill writes (`MAP`, `LOG`, `RECAP`, `GLOSSARY`, `RESOURCES`, `MISSION`, `CONNECTIONS`). Change these when you change the *shape* of what gets written.
- `teach/templates/board.html` — the optional visual surface.
- `topics/big-o-notation/` — the worked-example demo. If you change a format, update this so it stays a faithful illustration.
- `docs/why-this.html` — the design-rationale slide.

## How to test a change

1. Edit the source here.
2. Re-install: `./install.sh` (or `./install.ps1` on Windows).
3. Restart Claude Code.
4. Run `/teach <some topic>` and put the change through a real session — including a **resume** (stop, start a new session, confirm it picks up from `MAP.md` + `LOG.md`) and a **recap** (`/teach <topic> recap`). Most regressions show up at the resume/recap boundary.

## Principles to preserve

These are the spine of the skill — a change that weakens one of them probably isn't the right change:

- **Method fits the moment.** The method-by-mastery selector is the core idea. Don't collapse it back into "always ask Socratic questions" or "always lecture."
- **Teach-back is the bar.** Nothing reaches `can-teach` without an unprompted explanation that includes where it breaks.
- **Grounded, not guessed.** Breadth and facts trace to `RESOURCES.md`. Don't add behaviour that invents the shape of a field from parametric memory.
- **Stateful resume.** A cold session must be able to continue from the files alone. Any new state must be written down.
- **Keep the terminal thin.** Depth goes in the files/board; chat replies stay short.

## Adding a demo topic

The `big-o-notation` demo is intentionally the only committed topic (see `.gitignore`). If you add another demo, keep it generic and synthetic — no personal learning data — and make sure every file matches its format spec.

## PRs

Small, focused PRs are easiest to review. In the description, say what behaviour changed and paste a short transcript of the live session you used to verify it.
