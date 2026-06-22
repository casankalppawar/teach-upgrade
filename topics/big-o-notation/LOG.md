# Log: Big-O Notation & Algorithmic Complexity

## Session 1 — 2026-02-10 — frame + source + map + diagnostic sweep (areas 1–4)

- **Q** [open] Before we measure anything: if function A takes 2 seconds and function B takes 5 seconds on your laptop, is A the better algorithm?
  **A** "Yes, A is faster." → ~ partial — equated wall-clock with algorithmic quality. Corrected: depends on input size and machine; A might be O(n²) and only winning because *n* was tiny. This is *why* asymptotic analysis exists. → Area 1 set `aware`.
- **Q** [why] So why do we describe running time as a function of *n* instead of in seconds?
  **A** "Because the time depends on how much data you give it, and seconds depend on the computer." → ✓ correct — got both halves (input-size dependence + machine independence). Promoted after worked example below. → 1.1, 1.3 `understands`.
- **Q** [open] In `3n² + 5n + 200`, which term decides how it scales for large *n*, and what happens to the 3 and the 200?
  **A** "The n² term dominates; the constants stop mattering as n grows." → ✓ correct, unprompted, with the right reason (lower-order terms and constant factors are dwarfed by the dominant term). → 1.2 `understands`.
- **Q** [mcq] Big-O describes which kind of bound? (a) exact (b) upper (c) lower (d) average.
  **A** (b) upper → ✓ correct. → 2.1 `understands`.
- **Q** [open] What's the difference between Big-O and Big-Θ then?
  **A** "Not sure — I've only ever seen Big-O." → ✗ gap — only Big-O was in their head. Noted; Ω/Θ are `aware` at best. Diagnostic, not taught yet. → 2.2, 2.3 `aware`, 2.4 `untouched`.
- **Q** [recall] Name as many complexity classes as you can, fastest-growing last.
  **A** "O(1), O(n), O(n²)… and O(log n) somewhere, and exponential." → ~ partial — has the common ones but unsure where O(log n) and O(n log n) sit, and shaky on exponential/factorial. → Area 3 `aware`.
- **Q** [apply] Here's a function with a loop inside a loop, each running *n* times. What's its complexity?
  **A** "n times n, so n²." → ✓ correct for the nested case. Follow-up on a loop *after* another loop (not nested) → answered "n²" → ✗ wrong (it's O(n), sequential adds, nesting multiplies). → Area 4 `aware`; the sequential-vs-nested distinction is the gap.

**Session summary:** Map built (8 areas, grounded in CLRS/Sedgewick/Skiena) and shown. Diagnostic sweep set the floor: Area 1 `aware`→`understands` (strong intuition), Area 2 `aware` (only Big-O known), Area 3 `aware`, Area 4 `aware` (nesting vs sequence confused). Deepened Area 1 with one worked example to `understands` across sub-areas.
**Next:** Deepen Area 1 to `can-teach` (teach-back), then Area 2 notations.

## Session 2 — 2026-02-14 — deepen Area 1 → can-teach; Area 2 notations; Area 3 classes

- **Q** [teach-back] Explain to a smart colleague who's never heard of Big-O: what it is, why seconds aren't enough, and why we throw away the constants. Where does this *not* help you?
  **A** Clean, unprompted: "Big-O describes how an algorithm's work grows with input size, not how many seconds it takes — so the comparison survives a faster laptop. We drop constants and small terms because for large *n* the biggest term swamps everything. Where it breaks: for small *n* the constants you dropped can decide the real winner." → ✓ cleared teach-back, *including* the where-it-breaks edge unprompted. → **Area 1 (1.1–1.3) marked `can-teach`**. Distilled to RECAP.md.
- **Q** [open] (Area 2, instruct-first since Ω/Θ were never installed) After explaining O as "≤ for large n", Ω as "≥", Θ as "both": which one means "I've pinned the growth exactly"?
  **A** "Theta — it's both an upper and lower bound." → ✓ correct. → 2.3 `understands`.
- **Q** [why] Why is it technically true (but useless) to say binary search is O(n!)?
  **A** "Because O is just an upper bound, and n! is way above log n, so it's a true ceiling — just an absurdly loose one." → ✓ correct, got the "true but loose" insight. → 2.1 `fluent`. (Little-o for *strict* bounds mentioned but not drilled → 2.4 stays `aware`.)
- **Q** [open] (Area 3, worked example → faded) I'll walk through *why* binary search is O(log n) — halving the search space each step. Now you: why is a balanced binary-search-tree lookup also O(log n)?
  **A** "Same reason — each step down the tree halves the remaining nodes, so depth is log n." → ✓ correct, transferred the halving intuition. → 3.1 `understands`.
- **Q** [encode] (structure-building, *before* drilling) Don't recall — *build the ladder*: order O(1), O(log n), O(n), O(n log n), O(n²), O(2ⁿ), O(n!) fastest→slowest, and for each say in a few words the *structural move* that produces it.
  **A** Ordered correctly and tied most to a mechanism: "log n = halving, n = touch each once, n log n = a full pass at each of log n levels, n² = loop inside a loop, 2ⁿ = two choices per item, n! = all orderings." → ✓ strong — the *structure* now exists (the why, not just the names), so retrieval has something to consolidate. (2ⁿ/n! mechanism still hesitant → 3.3 stays `aware`.)
- **Q** [apply] Match each to its canonical algorithm: O(1), O(log n), O(n), O(n log n), O(n²).
  **A** "O(1) hash lookup, O(log n) binary search, O(n) linear scan, O(n log n) good sorting like mergesort, O(n²) nested-loop / bubble sort." → ✓ correct across all five. → 3.4 `understands`, 3.2 `understands`.
- **Q** [recall] Where do O(2ⁿ) and O(n!) show up?
  **A** "Exponential — trying all subsets? And factorial — all orderings, like brute-force travelling salesman." → ~ partial — right examples, but hesitant and couldn't say *why* subsets are 2ⁿ. → 3.3 stays `aware`.

**Session summary:** Area 1 → `can-teach` (teach-back cleared with the edge case). Area 2 → `understands` (Θ landed; Big-O now `fluent`; little-o/ω still `aware`). Area 3 → `understands` (classes + canonical algorithms solid; exponential/factorial still `aware`). Method log: instruct-first on Ω/Θ (brand-new), worked→faded on Area 3 — guidance faded as the scaffold appeared.
**Next:** Area 4.1 — counting operations (sequential vs nested), the gap from the S1 diagnostic. Use faded examples (Area 4 is `aware`, scaffold exists). Spaced-retrieval check due on 2.2/2.3.
