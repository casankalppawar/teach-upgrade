# Big-O Notation Glossary

Canonical terms for algorithmic complexity. A term earns its place here only once the learner used it correctly — so this list lags the lessons.

## Bounds

**Big-O — O(f(n))**:
An upper bound on growth: the algorithm's work grows *at most* as fast as f(n) for large n. The one used by default, because it states a worst-case ceiling you can promise.
_Avoid_: "the speed", "the running time" (it's a bound on growth, not a time)

**Big-Omega — Ω(f(n))**:
A lower bound on growth: the work grows *at least* as fast as f(n) for large n.

**Big-Theta — Θ(f(n))**:
A tight bound: O and Ω at once — the work grows *exactly* as fast as f(n). The honest "this is the rate."

## Growth

**Order of growth**:
The dominant term of a running-time function once constants and lower-order terms are dropped — what actually determines scaling. `3n² + 5n + 200` has order of growth n².
_Avoid_: complexity (used loosely; reserve for the whole subject)

**Asymptotic analysis**:
Studying how cost behaves as n → ∞ — i.e. the limit behaviour, which is where the order of growth is all that survives.

**Logarithmic — O(log n)**:
Growth that rises by a constant amount only when n *doubles*. The signature of repeatedly halving the problem (binary search, balanced-tree descent).

**Linearithmic — O(n log n)**:
An n-sized pass done at each of log n levels. The practical floor for comparison-based sorting.
_Avoid_: "n log n time" as if it were linear

## Cases

**Worst case**:
The input that makes the algorithm do the most work. What Big-O most often describes by convention — though O/Ω/Θ can each be applied to any case.
