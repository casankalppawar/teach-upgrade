# MAP.md Format

`MAP.md` lives at `topics/<slug>/MAP.md`. It is the breadth of the topic decomposed into areas and sub-areas, each tagged with a mastery status. It is the **syllabus and the progress tracker at once** — the single source of truth for what is covered and what is left. On resume, this file (plus `LOG.md`) is read first.

## Template

```md
# Map: {Topic}

_Grounded in: {1-line — which sources in RESOURCES.md the breadth is drawn from}_
_Updated: {YYYY-MM-DD}_

## Legend
untouched · aware · understands · fluent · can-teach

## Areas

### 1. {Area name} — `understands`
The big question this area answers / why it's in the map.
- 1.1 {Sub-area} — `fluent`
- 1.2 {Sub-area} — `untouched`
- 1.3 {Sub-area} — `aware`

### 2. {Area name} — `untouched`
...
- 2.1 {Sub-area} — `untouched`

## Next
{The single area or sub-area to work next, and why it's the right zone-of-proximal-development pick.}
```

## Rules

- **Every node carries exactly one status** from the ladder: `untouched` → `aware` → `understands` → `fluent` → `can-teach`. An area's status is the honest floor of its sub-areas, not an average.
- **Build the breadth from real sources, not memory.** The decomposition must reflect how the field actually carves itself up (see RESOURCES.md). A map invented from parametric guessing teaches the wrong shape.
- **Update statuses every session.** A stale map is worse than none — it will misroute the next session.
- **Keep it scannable.** The map is a compass, not a textbook. If an area needs explanation, that lives in lessons and the log, not here.
- **The `## Next` line is mandatory after any work** — it is what lets the next session resume cold.
- **Add areas as they surface.** The first map is a hypothesis; refine it as deeper sources reveal sub-structure.
