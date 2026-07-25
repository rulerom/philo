---
title: "Reaction corridor"
description: "Two thresholds define a latching window for accumulated state, not a moral judgement of input"
date: 2026-07-25
tags: [thresholds, corridor, fuse, architect]
lang: en
---

# Reaction corridor

A tile latches when its signed accumulator enters:

```text
thr_lo <= thr_cur <= thr_hi
```

This is an engineering response window. Its bounds do not automatically mean “noise” and “foreign aggression.” Meaning belongs to the baker and the organ being built.

One threshold can only say “enough.” A corridor can isolate insufficient accumulation, a target combination, and overflow or another regime.

Decay matters: state may enter the corridor while falling back from overload and create FIRE. The corridor describes a phase of local dynamics, not a static threshold on one frame.

After latching, no new `delta` is added but decay continues. The tile unlocks after leaving the corridor or losing activation permission.

Philosophical boundary metaphors are useful only after this mechanism is kept intact: the corridor does not define good; it defines what the architect chose to recognize.
