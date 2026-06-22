# RESOURCES.md Format

`RESOURCES.md` lives at `topics/<slug>/RESOURCES.md`. It is the curated set of trusted sources the topic is grounded in. The breadth map and every factual claim must trace back to here — not to parametric guessing. This file is populated **before** the map is built, and grows as deeper areas demand deeper sources.

## Structure

```md
# {Topic} Resources

## Core literature
- [Book: _A Philosophy of Software Design_ — John Ousterhout](https://example.com)
  The canonical text on deep vs shallow modules. Use for: anything on boundaries, interfaces, complexity.
- [Paper: "On the Criteria To Be Used in Decomposing Systems into Modules" — Parnas, 1972](https://example.com)
  The origin of information hiding. Use for: why decomposition by secret beats decomposition by flowchart.

## Supporting
- [Article: "{Title}" — {Author / Publication}](https://example.com)
  {What it covers and when to reach for it.}

## Communities (for real-world testing)
- [{Forum / subreddit / group}](https://example.com)
  {Where the user can pressure-test understanding against practitioners.}

## Gaps
- {An area the map needs but no good source has been found for yet — drives future search.}
```

## Rules

- **High-trust only.** Prefer primary sources, recognised experts, peer-reviewed work, and standard texts. If a source is marketing dressed as education, leave it out.
- **Annotate every entry.** A bare link is useless in three months. One line: what it covers, when to reach for it.
- **Core vs supporting.** The core literature is what the breadth map is built from. Supporting sources fill specific areas.
- **Surface gaps explicitly.** If the map needs an area no good source covers, list it under `## Gaps`. An honest gap drives the next search; a quiet one becomes parametric guessing.
- **Prune ruthlessly.** A source that proved wrong, shallow, or off-topic is removed, not buried. Five sharp sources beat thirty mediocre ones.
- **Communities are for wisdom.** Knowledge comes from the literature; judgment comes from testing against practitioners. List communities only if the user wants real-world practice.
