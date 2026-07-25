---
title: "Determinism requires complete context"
description: "The same frame is insufficient: reproduction includes personality, state, tape, and reset"
date: 2026-07-25
tags: [determinism, replay, trace, responsibility]
lang: en
---

# Determinism requires complete context

> What reproduces is the machine's life on a tape, not an answer to one frame.

For a stateful system, “same input, same output” is incomplete.

The trace is identical only when `.d8p` bytes, runtime arithmetic, initial state, complete ordered VSB tape, frame boundaries, and all reset events match.

```text
trace = run(personality, initial_state, tape, reset_schedule)
```

The same final frame after different histories may correctly produce different state. That is memory, not nondeterminism.

Verification can compare FIRE time and pattern id, domain winners and collisions, BUS16, flags, accumulator/lock state, and hashes of tape and personality. Wall-clock is not semantic trace.

Determinism does not make a decision correct. It makes responsibility precise: baker for personality, press owner for tape semantics, runtime for execution, and director for action and risk.

Whaler live and offline replay are comparable only after feed, framing, warm-up, and reset match.
