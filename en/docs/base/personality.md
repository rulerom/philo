# Personality is not magic. It's a pattern.

> "A stable pattern of response to stimuli: Input → Processing → Output".

While others debate whether AI "understands", we write personality to `.d8p` and run it in 20 μs.

## What is personality in Decim?

Not a "soul". Not an "emergent property". Not a "black box".

**Personality is a file with weights, thresholds, and topology.**

If the system produces the same output for the same input — that's personality.
If not — that's noise.

## How does it work?

1. **Input**: 8 lanes × 4 bits = 32 bits of context (Level16)
2. **Processing**: Relay between tiles, deterministic cycle
3. **Output**: Signal, traced to a specific tile

## Why is this important?

- **Testable**: you can measure response to 1000 stimuli
- **Verifiable**: every weight is signed, every step is logged
- **Portable**: `.d8p` works on x86, ARM, FPGA, ASIC — without changes

## Philosophically

"I" is not a point. It's the boundary between "I" and "NOT I".
In Decim, this boundary is defined by thresholds `thr_lo..thr_hi`.

## In code

```c
// Accumulator with subjectivity corridor
if (activation >= thr_lo && activation <= thr_hi) {
    return PERSONALITY_CONFIRMED;
} else {
    return NOT_ME;  // Too weak OR too strong
}
```

## Read further

- [I / NOT I: The boundary of subjectivity](detector-antagonist.md)
- [Determinism as ethics](../arch/determenism.md)
- [Substrate is secondary, intention is primary](substrate.md)
