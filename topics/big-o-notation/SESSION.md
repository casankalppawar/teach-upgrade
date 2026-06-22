# Big-O Notation — Live Session

> Answer under **✍️ Your answer** below, save, then type **"go"** in the terminal.

## Progress
```
1  Why asymptotic analysis . CAN-TEACH  ✅
2  The notations (O/Ω/Θ) ... understands  (2.1 fluent · 2.4 aware)
3  Common classes .......... understands  (3.3 exponential/factorial aware)
4  Analyzing code .......... aware        ◀ here
5  Best/worst/amortized .... —
6  Space complexity ........ —
7  Recurrences ............. —
8  Practical judgment ...... —
```
Mastery ~30%  `███░░░░░░░`  ·  bar moves when an area clears its sub-areas.

---

## ▶ Session 3 — Area 4: reading complexity off the source

You can name the classes (Area 3) — now we read them off real code, which is the whole point of your mission. Last session's diagnostic found the one gap: **nesting multiplies, sequence adds.** That's what these reps lock.

Method here is **faded examples** — Area 4 is `aware`, so the scaffold exists; I give you a near-complete analysis and you finish it, rather than re-explaining from scratch.

### Worked (me) — warm-up
```python
def has_duplicate(items):          # n = len(items)
    for a in items:                # ← runs n times
        for b in items:            # ← runs n times, for each a
            if a is not b and a == b:
                return True
    return False
```
Two loops, **nested** → n × n → **O(n²)**. The `return True` early-exit changes the *best* case, not the Big-O (worst case = no duplicate = full n²).

---

### ▶ PROBLEM 1 — finish the analysis  *(faded)*
```python
def summarize(items):              # n = len(items)
    total = 0
    for x in items:                # loop A
        total += x
    biggest = items[0]
    for x in items:                # loop B
        if x > biggest:
            biggest = x
    return total, biggest
```

**Your task:**
1. What's the complexity of loop A alone? Of loop B alone?
2. The two loops run **one after another**, not nested. So what's the complexity of `summarize` — and state the rule you used (add or multiply?).
3. One line: if I wrapped this whole function in *another* loop over the same items, what would it become, and why?

#### ✍️ Your answer (1):

_(type here, save, then "go")_

---

## Thread (newest first)

**— Session 3 started · 2026-02-14** — Area 4 (analyzing code). Faded examples to lock sequential-vs-nested. Warm-up `has_duplicate` shown (O(n²) nested); Problem 1 served (sequential loops → should land O(n)).

**Session 2 closed · 2026-02-14** — Area 1 → **can-teach** (teach-back cleared *with* the small-n edge case, unprompted). Area 2 → understands (Θ landed; O now fluent). Area 3 → understands (five classes + canonical algorithms matched cleanly). RECAP.md written for Areas 1–3. Method: instruct-first on the brand-new Ω/Θ, worked→faded on Area 3 — guidance faded as the scaffold appeared.

**Session 1 closed · 2026-02-10** — Map built (8 areas, grounded in CLRS/Sedgewick/Skiena) and shown. Diagnostic sweep set the floor across Areas 1–4. Strong intuition on *why* asymptotics (Area 1), but only Big-O was known (Ω/Θ new), and sequential-vs-nested loops were confused (the Area 4 gap to fix). Deepened Area 1 to understands with one worked example.
