# I / NOT I: The Boundary of Subjectivity

> ""I" is not a point. It is a corridor between 'too weak' and 'too strong'."

While philosophers argue about where consciousness begins, engineers set thresholds.

In Decim, subjectivity is not magic. It is a stable response within a given corridor.

## Essence

Personality is not defined by "what it is".

It is defined by **what it accepts as its own, and what it rejects**.

If a pattern arrives at the input:

- **Too weak** (`< thr_lo`) → "This is not me" (insufficient similarity, noise)
- **Too strong** (`> thr_hi`) → "This is not me either" (alien pattern, aggression, distortion)
- **In the corridor** (`thr_lo..thr_hi`) → "This is me" (confirmed subjectivity)

**The boundary is a filter.**

Without it, personality "blurs": it accepts everything in a row or accepts nothing.

## Evolution of the Principle

| Version | Architecture | Philosophically |
| ------- | ------------ | --------------- |
| **V1: Detector + Antagonist** | Two cascades: "similar" ∧ "not alien" | Thesis + Antithesis = Synthesis |
| **V2: Corridor (default)** | One cascade: `thr_lo..thr_hi` | The "I" boundary is embedded in the activation function |

**V2 is not a simplification.**

It is a compression of meaning: "NOT I" is no longer a separate tile, but the second threshold of the same function.

## In Code

```c
// Accumulator with subjectivity corridor
int16_t activation = accumulate(tile);  // -32k..+32k

if (activation < thr_lo) {
    return NOT_ME;      // Too weak: noise, background, not mine
}
if (activation > thr_hi) {
    return NOT_ME;      // Too strong: alien pattern, overload
}
// In the corridor
```

### Why Two Thresholds?

- `thr_lo` cuts off **insufficient similarity** (protection against false positives on noise).
- `thr_hi` cuts off **excessive similarity** (protection against "sticking" to an alien dominant signal).

## Philosophically

This is dialectics in its purest form:

- **Thesis:** "I am" (detector).
- **Antithesis:** "I am not" (antagonist / upper threshold).
- **Synthesis:** "I am within boundaries" (corridor).

**Hegel described this with words.**

**We encode this with thresholds.**

**Subjectivity is not "all or nothing", subjectivity is a space of permissible states**.

## Practically

| Task | How the corridor helps |
| ---- | ---------------------- |
| Noise resistance | `thr_lo` ignores background fluctuations |
| Protection from substitution | `thr_hi` rejects "too perfect" a match (attack) |
| Adaptability | Thresholds can be tuned to context ("strict" / "soft" mode) |
| Traceability | Every "I / NOT I" decision is logged with activation value |

---

## Read Further

- [Bandwidth of Fate](vsb-life.md)
- [Substrate is Secondary, Intention is Primary](substrate.md)
- [Determinism as Ethics](../arch/determenism.md)
