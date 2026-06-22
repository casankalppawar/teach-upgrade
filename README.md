# `/teach` — an adaptive mastery coach for Claude Code

A learning skill for [Claude Code](https://claude.com/claude-code). Run `/teach <topic>` and Claude assesses what you already know, maps the whole territory, then teaches you area by area — **picking the teaching method that fits where you are** — until you can **teach the topic to someone else**. Everything is written to disk, so you can stop and resume across weeks without losing the thread, and **recap any topic cleanly** later.

> **New here?** Skim a real session first: [`topics/big-o-notation/`](./topics/big-o-notation/) is a complete worked example — the [breadth map](./topics/big-o-notation/MAP.md), the [move-by-move log](./topics/big-o-notation/LOG.md), the [distilled recap](./topics/big-o-notation/RECAP.md), and a printable [cheat sheet](./topics/big-o-notation/CHEATSHEET.html) rendered from it. That folder *is* the documentation of what the skill produces.
>
> **Coming from another teaching skill?** See [why this design](./docs/why-this.html) — a one-slide comparison with the artifact-generator approach.

## How it differs from "explain it to me"

The default way to learn from an LLM is to ask it to explain things. You read fluent prose, feel like you understood it, and retain almost none of it — recognition masquerading as knowledge. This skill inverts that: most of the time **you** do the producing, and effortful retrieval plus teach-back is what builds durable memory.

But it does not grill you with questions on things you've never seen — that's the other failure. It **picks the teaching method by where you are on the ladder**: instruct and worked examples when a concept is brand-new, Socratic Q&A once you have a scaffold to pull on, teach-back at the top. Guidance fades as your mastery rises (the *expertise-reversal effect*). Socratic is one tool, not the whole skill.

## The loop

1. **Frame** — one or two questions on why you want the topic and how deep you're going.
2. **Source** — Claude finds the canonical books, papers, and core literature for the field. The map and every fact are grounded in these, not in parametric guessing.
3. **Map the breadth** — the topic is decomposed into its areas and sub-areas. You see the whole landscape before drilling into any corner.
4. **Diagnose** — a calibrated sweep to find what you already know, so no time is wasted re-teaching it.
5. **Deepen** — area by area. First **encode** (you build the structure — group, connect, place it in the big picture), *then* **retrieve** (it drills and teach-backs the structure you built). Testing something you never encoded is drilling an empty bucket. The method is chosen per piece (see below), until you clear the teach-back bar.
6. **Connect** — as topics accumulate, synthesis questions link concepts across areas and across topics.

One move at a time. Immediate feedback after every response. Calibrated to the edge of your ability.

## How it picks the method

The method is chosen by where you are on the mastery ladder — **guidance fades as you rise**:

| Where you are | What it does |
|---|---|
| brand-new | instruct + worked example + analogy — install the scaffold, no Q&A yet |
| fuzzy | faded examples + contrast cases — you fill the gap |
| understands | Socratic Q&A + problem-based — now you produce |
| fluent | generate-your-own + find-where-it-breaks |
| can-teach (revisit) | spaced retrieval, interleaved across sessions |

Plus a **content-type axis** — it matches the process to what the information *is*: procedural → practice early; analogical → build the analogy then critique it; conceptual → structure it before questioning; evidence → store now, use later; reference → flashcards/spaced; judgment → contrast pairs and cases. And live signals — fail twice and it drops to instruction; cruise and it raises the bar. You can also ask for a method directly ("just explain this", "stop quizzing me") and it switches.

**Knowledge vs skill.** The mastery ladder measures *understanding*. When you're learning a *performance* skill (coding, a language, an instrument), it switches to a four-stage acquisition track — Relevance → Awareness → Iteration → Lifelong — where mistakes-fast and *consistency before speed* are the rules, and it balances new theory against practice so you never overload.

## Recap / revisit

Run `/teach <topic> recap` (or just say "recap" / "refresh me on X") to go back through a topic's **logic** cleanly — the distilled spine in `RECAP.md`, in map order, free of the Q&A trail — then an optional short retrieval pass to lock it back in. Built once from your history if it doesn't exist yet.

## Mastery ladder

Each area carries a status, tracked in its `MAP.md`:

`untouched` → `aware` → `understands` → `fluent` → `can-teach`

`can-teach` — you can explain it to someone who doesn't know it, including where it breaks — is the goal. A topic is mastered when every area the mission cares about reaches it.

## What gets written

```
your-workspace/
  teach/
    SKILL.md           ← the operational skill (what Claude follows)
    formats/           ← the file formats the skill writes to
    templates/         ← board.html, the optional visual surface
  topics/
    <topic-slug>/
      MAP.md           ← breadth decomposed, status per area — "what's covered, what's left"
      LOG.md           ← every move, your response, the verdict — the resume trail
      RECAP.md         ← the distilled spine — clean logic for revisiting, free of the Q&A trail
      GLOSSARY.md      ← canonical terms, added once you can use them
      RESOURCES.md     ← the trusted sources everything is grounded in
      MISSION.md       ← optional: why you're learning it and target depth
      SESSION.md       ← the live MD-mode surface (or board.html for the visual mode)
      CHEATSHEET.html  ← optional: a printable reference card rendered from RECAP + GLOSSARY
  CONNECTIONS.md       ← cross-topic links, built as you learn more topics
```

`MAP.md` and `LOG.md` are the heart of the resume: between them, a cold session knows exactly where you are. See all of these populated in [`topics/big-o-notation/`](./topics/big-o-notation/).

## Install

Claude Code loads skills from `~/.claude/skills/`. Copy the `teach/` folder there.

**macOS / Linux (bash):**
```bash
./install.sh
# or manually:
rm -rf ~/.claude/skills/teach
cp -R teach ~/.claude/skills/teach
```

**Windows (PowerShell):**
```powershell
./install.ps1
# or manually:
Remove-Item -Recurse -Force "$HOME\.claude\skills\teach" -ErrorAction SilentlyContinue
Copy-Item -Recurse "teach" "$HOME\.claude\skills\teach"
```

Removing first clears any stale format files so deletions in the source propagate. **Restart Claude Code afterwards** — skills load at startup. Then run `/teach <topic>` from any directory; your `topics/` workspace is created wherever you run it.

## Using it

- **Start or resume a topic:** `/teach systems thinking`
- **Resume** is automatic — if a `topics/<slug>/` already exists, Claude reads the map and log and tells you the state of play before continuing.
- **Multiple topics in flight** is the intended mode — that's what makes the cross-topic connections valuable.
- **Two surfaces:** MD mode (default, low-token — you read and answer in `SESSION.md`) or board mode (`board.html`, a richer visual journey). Pick whichever fits.

## Design principles

- **Method fits the moment.** Guidance fades as mastery rises — instruct a novice, question someone with a scaffold, demand teach-back from an expert. Retrieval builds memory, but only once there's something to retrieve.
- **Encode before you test.** You build the structure first (grouping, connecting, placing) — that act *is* the learning; the drilling comes after. Retrieval consolidates a memory; it can't create one.
- **Breadth before depth.** See the map before drilling, so each piece has a place to sit.
- **Teach-back is the bar — and it's the last of four.** Mastery is depth × independence × transfer × teach: can you reason *with* it (not just recall it), unprompted, in a context you weren't taught in, and explain it to someone else? Fluency at recall is the trap.
- **Grounded, not guessed.** The shape of the field and every fact trace to real literature, never to parametric memory.
- **Stateful by default.** Stop anytime; the map and log carry the thread.

## Influences & credits

This skill implements ideas from learning science, in its own framing. Worth crediting:

- **Academic roots** — cognitive load theory and the expertise-reversal effect (Sweller, Kirschner, Clark); desirable difficulties and storage-vs-retrieval strength (Robert Bjork); retrieval practice and the testing effect (Roediger & Karpicke); Bloom's and SOLO taxonomies; the four-stages-of-competence model.
- **Practitioner syntheses** — Dr. Justin Sun / [I Can Study](https://www.youtube.com/@JustinSung) for the PACER content-type router, the RAIL skill-acquisition stages, and the encoding-over-cramming, structure-building note-taking principles this skill's *encode → retrieve* loop draws on.
- **Comparison** — Matt Pocock's [skills](https://github.com/mattpocock/skills) `teach`, the lesson-artifact design this one is contrasted against (see [docs/why-this.html](./docs/why-this.html)).

Frameworks are implemented as principles in the skill's own language, not as branded drop-ins. Credit to the originators; mistakes in adaptation are ours.

## License

[MIT](./LICENSE) — use it, fork it, teach with it. Contributions welcome; see [CONTRIBUTING.md](./CONTRIBUTING.md).
