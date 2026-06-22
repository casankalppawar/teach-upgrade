# Map: Big-O Notation & Algorithmic Complexity

_Grounded in: CLRS Ch. 3–4, Sedgewick & Wayne §1.4, Skiena Ch. 2 (see RESOURCES.md)._
_Updated: 2026-02-14_

## Legend
untouched · aware · understands · fluent · can-teach

## Areas

### 1. Why asymptotic analysis — `can-teach`
The big question: why measure growth instead of seconds? Machine-independent, input-size-driven comparison of algorithms.
- 1.1 Running time as a function of input size *n* — `can-teach`
- 1.2 Why we drop constants and lower-order terms — `can-teach`
- 1.3 Growth rate vs wall-clock time (machine independence) — `can-teach`

### 2. The notations — `understands`
The big question: what exactly do O, Ω, Θ mean, and how do they differ?
- 2.1 Big-O as an upper bound (≤) — `fluent`
- 2.2 Big-Ω as a lower bound (≥) — `understands`
- 2.3 Big-Θ as a tight bound (=) — `understands`
- 2.4 Little-o / little-ω (strict bounds) — `aware`

### 3. Common complexity classes — `understands`
The big question: what are the handful of growth rates almost everything falls into, and what does each feel like?
- 3.1 O(1), O(log n), O(n), O(n log n) — `understands`
- 3.2 O(n²), O(n³) — polynomial — `understands`
- 3.3 O(2ⁿ), O(n!) — exponential / factorial — `aware`
- 3.4 The canonical algorithm for each class — `understands`

### 4. Analyzing code — `aware`
The big question: given a function, how do you read its complexity off the source?
- 4.1 Counting operations; sequential vs nested — `aware`
- 4.2 Loops over the input; the multiplication rule for nesting — `aware`
- 4.3 Dropping constants & lower-order terms in practice — `understands`
- 4.4 Complexity of standard library / data-structure operations — `untouched`

### 5. Best / worst / average / amortized case — `untouched`
The big question: which case does Big-O describe, and when does the "average" or "amortized" cost matter more?
- 5.1 Best / worst / average case — `untouched`
- 5.2 Amortized analysis (e.g. dynamic-array append) — `untouched`

### 6. Space complexity — `untouched`
The big question: the same analysis applied to memory, not time — and the time/space trade-off.
- 6.1 Auxiliary vs total space — `untouched`
- 6.2 Recursion stack as space cost — `untouched`

### 7. Recurrences — `untouched`
The big question: how do you analyze a recursive algorithm whose cost is defined in terms of itself?
- 7.1 Recursion trees — `untouched`
- 7.2 The Master Theorem — `untouched`

### 8. Practical judgment — `untouched`
The big question: when does the asymptotically-better algorithm lose in the real world?
- 8.1 Constants & small *n* — when O(n²) beats O(n log n) — `untouched`
- 8.2 Cache, memory hierarchy, and real hardware — `untouched`
- 8.3 Choosing an algorithm from a complexity budget — `untouched`

## Next
**4.1 — counting operations (sequential vs nested).** Area 3 is `understands` (the learner can name the classes and their canonical algorithms); the highest-leverage next step toward the mission (read a function, state its complexity) is now applying that to actual code. Diagnostic showed Area 4 at `aware` — the scaffold exists, so move to faded examples here rather than re-instructing. Spaced-retrieval check on 2.2/2.3 (Ω/Θ) is also due.
