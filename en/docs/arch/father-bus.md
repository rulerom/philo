---
title: "Father and Bus: Control vs Data"
description: "Access control binary, data gradational. Father is a role"
date: 2026-03-15
tags: [bus, control, data]
lang: en
---

# Father and Bus: Control vs Data

> "Father is not an entity. Father is a role. Just an input tile that opens the bus."

In Decima, there are two levels that never mix:

- **Access control** — binary (Open/Closed)
- **Data** — gradational (Level16, 0..15)

"Father" is not metaphysics.
It's simply a convenient name for an input tile that controls access to a shared bus.

## Essence

| Component | What it actually is | Function |
| --------- | ------------------- | -------- |
| Father | Input tile with BUS_R flag | Opens/closes access to the bus (0/1) |
| Sons | 8 neighboring tiles (Moore neighborhood) | Contribute activation to the bus (0..15) |
| Bus | Shared signal accumulator | Sums contributions from active tiles |

Father is not "smarter" or "higher".
He is simply first in the chain. The one who receives external stimulus and decides: "Time to work".

## Topology: 8 neighbors, one bus

```
        [N]
    [NW]   [NE]
[W]   [Father]   [E]   ← Bus: shared signal
    [SW]   [SE]
        [S]
```

**How it works:**

1. External stimulus arrives at the "Father" tile.
2. Father checks the condition: `if (stimulus > threshold)`.
3. If yes → opens the bus (`bus_enabled = true`).
4. 8 neighbors contribute their activation (0..15) to the shared bus.
5. The total signal is processed by the next cascade.

This is not routing. This is an orchestra.
The conductor (Father) doesn't play for the musicians. He sets the beat.

## In code

```c
// Any tile can be a "Father" — just a role flag
typedef struct {
    uint8_t activation;      // 0..15 (Level16)
    uint8_t neighbors[8];    // Neighbor indices: N,NE,E,SE,S,SW,W,NW
    bool is_gate;            // Role: does this tile control the bus?
} Tile;

// Bus — shared resource
typedef struct {
    uint16_t signal;         // Total signal from neighbors
```

**Key points:**

- "Father" is not a separate type. It's a role that any tile can perform.
- Bus is a shared resource, not point-to-point.
- Control (binary) is separated from data (gradational).

## Philosophically (without mysticism)

> "Power is not about being special. Power is about being first in the chain."

| Principle | Architecturally | Philosophically |
| --------- | --------------- | --------------- |
| Role > Entity | Any tile can be "Father" | Leadership is a function, not nature |
| Access > Content | Father decides "when", neighbors — "what" | Freedom of speech ≠ freedom to speak always |
| Locality > Globality | 8 neighbors, not the whole network | Influence spreads in waves, not jumps |

**"Father" is not a god, but the first domino in the chain.**

## Why separation of control and data is important

| Problem | If mixed | If separated |
| ------- | -------- | ------------ |
| Tracing | "Who decided?" — unclear | Log: "Father opened bus at 15:32:01.020" |
| Debugging | Control affects data | Control and data — independent logs |
| Verification | Need to check everything together | Can check access separately from content |
| Security | Data failure = control failure | Data failure ≠ access control failure |
| Scaling | Each tile = its own controller | One "Father" per tile cluster |

**Separation of responsibility = system resilience.**

## Practically

| Advantage | How it helps in B2B |
| --------- | ------------------- |
| Energy | Bus is off when not needed → savings |
| Security | "Father" can block a "faulty neighbor" |
| Tracing | Access log + data log = complete picture |
| Debugging | Can test control without data and vice versa |
| ASIC | One bus per chip → fewer metal layers |

## Real-world analogy

| System | "Father" | "Sons" | Bus |
| ------ | -------- | ------ | --- |
| Family | Parent starts the conversation | Children say what they think | Family council |
| Orchestra | Conductor sets the beat | Musicians play the notes | Sound in the hall |
| Network | Router opens the channel | Devices transmit packets | Shared cable |
| Decima-8 | "Father" tile opens the bus | 8 neighbors contribute activation | Shared signal |

**"Father" doesn't speak for others, but enables others to speak.**

## Read further

- [Earth as Training Phase: Theodicy in Architecture](../world/earth.md)
- [Determinism as Ethics](determenism.md)
- [I / NOT I: The Boundary of Subjectivity](../base/detector-antagonist.md)
