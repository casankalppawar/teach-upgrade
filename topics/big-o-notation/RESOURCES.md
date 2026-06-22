# Big-O Notation Resources

## Core literature
- [Book: _Introduction to Algorithms_ (CLRS), 4th ed. — Cormen, Leiserson, Rivest, Stein](https://mitpress.mit.edu/9780262046305/introduction-to-algorithms/)
  Chapter 3 ("Characterizing Running Times") is the canonical formal treatment of O, Ω, Θ, o, ω. Chapter 4 is the recurrence/Master-Theorem source. Use for: the formal definitions and recurrences (Areas 2, 7).
- [Book: _Algorithms_, 4th ed. — Sedgewick & Wayne](https://algs4.cs.princeton.edu/home/)
  Section 1.4 ("Analysis of Algorithms") — the practical, measurement-grounded view: order-of-growth, the tilde (~) notation, doubling experiments. Use for: analyzing real code and why constants sometimes matter (Areas 4, 8).
- [Book: _The Algorithm Design Manual_, 3rd ed. — Steven Skiena](https://www.algorist.com/)
  Chapter 2 ("Algorithm Analysis"). The most intuition-first of the three; great for the "what does each class *feel* like" framing. Use for: common complexity classes and judgment (Areas 3, 8).

## Supporting
- [Course: MIT 6.006 "Introduction to Algorithms" — open lecture notes](https://ocw.mit.edu/courses/6-006-introduction-to-algorithms-spring-2020/)
  Lecture 1–2 cover the model of computation and asymptotics with worked examples. Use for: worked-example pacing on Areas 1, 4.
- [Reference: "Big-O Cheat Sheet" — Eric Rowell](https://www.bigocheatsheet.com/)
  A lookup table of common data-structure and sorting complexities. Use for: spaced-retrieval drills only — it is a reference, not a teacher. Do not build understanding from it.

## Communities (for real-world testing)
- [r/algorithms](https://www.reddit.com/r/algorithms/)
  Where to pressure-test an analysis against practitioners once the learner can produce one unprompted.

## Gaps
- No single great source yet for the *judgment* layer (Area 8 — when asymptotics mislead: cache effects, small-n constants, real hardware). Skiena Ch. 2 touches it; supplement with Sedgewick's doubling experiments. Search for a good "galactic algorithms / when Big-O lies" treatment before deepening Area 8.
