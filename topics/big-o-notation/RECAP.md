# Recap: Big-O Notation & Algorithmic Complexity

_The distilled logic — read this to revisit. Trail of how it was learned: LOG.md._
_Updated: 2026-02-14_

## 1. Why asymptotic analysis  ·  `can-teach`

**The core:** Measure how an algorithm's work *grows with input size n*, not how many seconds it takes — because growth is a property of the algorithm, while seconds are a property of the machine.

**Why it works / the logic:** Two algorithms run on different laptops, compilers, and loads, so raw seconds can't compare them. But the *shape* of "work as a function of n" is the same everywhere — it's intrinsic to the algorithm. For large n one term dominates, so we keep only that term and drop constant factors and lower-order terms: in `3n² + 5n + 200`, once n is big enough the `n²` swamps the `5n` and the `200`, and even the `3` is just a fixed multiplier that doesn't change the *shape* of the growth. So we say O(n²).

**Canonical example:** `3n² + 5n + 200 → O(n²)`. At n = 1000, the n² term is 3,000,000 while 5n + 200 is 5,200 — a rounding error. The constants decided nothing.

**Where it breaks:** For *small* n, the constants you dropped can decide the real winner — an O(n²) algorithm with tiny constants can beat an O(n log n) one with large constants until n gets big. Asymptotics describe the *limit*, not every input. (This is the seed of Area 8.)

**Method that cracked it:** worked example (the 3n²+5n+200 walk-through) → unprompted teach-back that included the edge case.

---

## 2. The notations (O, Ω, Θ)  ·  `understands`

**The core:** **O** is an upper bound (grows *at most* this fast), **Ω** is a lower bound (*at least* this fast), **Θ** is both at once (grows *exactly* this fast). Big-O is the one used in practice because the worst-case ceiling is what we usually want to guarantee.

**Why it works / the logic:** A bound is a promise about large-n behaviour. Because O is only a *ceiling*, a loose ceiling is still technically true — binary search is "O(n!)" in the sense that n! is a true (absurd) upper bound. Θ removes the looseness: it pins the growth from above *and* below, so it's the honest "this is the rate." When people say "binary search is O(log n)" they usually mean the tight Θ(log n), but write O by convention.

**Canonical example:** Binary search is O(log n), Ω(1) (best case: found on the first probe), and Θ(log n) in the worst case. Saying it's "O(n!)" is true but useless — the giveaway that O alone permits loose statements.

**Where it breaks:** O describing the *worst case* is a convention, not a rule — O, Ω, Θ are about bounding a function, and you can apply any of them to best, worst, or average case. Conflating "Big-O" with "worst case" is the common misconception (resolved properly in Area 5). Little-o / little-ω (strict, non-tight bounds) not yet drilled.

**Method that cracked it:** direct instruction (Ω/Θ were brand-new — no scaffold to question against) → "true but loose" why-question to lock the upper-bound idea.

---

## 3. Common complexity classes  ·  `understands`

**The core:** Almost every algorithm you'll meet lands in one of a handful of growth rates. In order: **O(1) < O(log n) < O(n) < O(n log n) < O(n²) < O(2ⁿ) < O(n!)**. Knowing the canonical algorithm for each turns the abstract class into something you can recognise on sight.

**Why it works / the logic:** The classes come from *structural patterns* in algorithms. Halving the problem each step → log n (the depth of repeated halving). Touching every element once → n. Doing an n-work pass at each of log n levels → n log n (the sorting sweet spot). A loop inside a loop over the input → n². Branching into two choices per element → 2ⁿ (all subsets). Arranging all elements → n! (all orderings).

**Canonical example:**
- O(1) — hash-table lookup · O(log n) — binary search / balanced-BST lookup
- O(n) — linear scan · O(n log n) — mergesort / heapsort
- O(n²) — nested-loop comparison / bubble sort
- O(2ⁿ) — generate all subsets · O(n!) — brute-force travelling salesman (all orderings)

**Where it breaks:** The ordering is for *large* n — for small n the lines cross (Area 8). And a class is a ceiling on growth, not a verdict on speed: a well-tuned O(n²) can beat a sloppy O(n log n) at modest sizes. Exponential/factorial intuition (*why* subsets are 2ⁿ) not yet locked — `aware` only.

**Method that cracked it:** worked example (why binary search halves → log n) → faded to a near transfer (balanced BST) → learner built the ladder themselves (structure-building / encode) → matching drill across the classes (retrieve).
