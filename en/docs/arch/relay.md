---
title: "Relay Instead of Router"
description: "Locality scales: 8 neighbors, linear complexity, 0 jitter"
date: 2026-03-15
tags: [relay, routing, scalability]
lang: en
---

# Relay Instead of Router

> "Locality scales. Global connectivity creates chaos."

In a world where "more connections = better", we chose the path of constraints.
And precisely this gives Decima-8 an advantage where others choke on complexity.

## Essence

| Approach | Architecture | Consequence |
| -------- | ------------ | ----------- |
| Router (Loihi, traditional) | Neuron connects to any other | Exponential complexity growth, jitter, collisions |
| Relay (Decima-8) | Tile connects only to 8 neighbors (N/E/S/W/NE/SE/SW/NW) | Linear growth, 0 jitter, determinism |

Relay is not a "limitation".
It is an architectural filter that eliminates chaos at the topology level.

## Why Routing Doesn't Scale

| Problem | What Happens | Cost |
| ------- | ------------ | ---- |
| Packet collisions | Two signals want to pass through one node | Arbitration, delays, non-determinism |
| Routing | "Where to send this packet?" | Computational costs, logic |
| Buffering | Packet queue in router | Memory, delays, jitter |
| Verification | "Why did the packet arrive with delay?" | Impossible to trace all paths |

In biology this is acceptable (brain is asynchronous, jitter is not critical).
In engineering — no (HFT, robotics, medicine require predictability).

## In Code

```c
// Relay: each tile knows only 8 neighbors
typedef struct {
    uint8_t activation;
    uint8_t relay_mask;  // Bit mask: N=1, E=2, S=4, W=8
} Tile;

// Signal transmission — deterministic shift
void relay(Tile* tile, Tile* neighbors) {
    if (tile->relay_mask & NORTH) neighbors[0].input += tile->output;
    if (tile->relay_mask & EAST)  neighbors[1].input += tile->output;
```

Contrast with routing:

```c
// Router: where to send?
Route path = find_route(source, destination);  // Path finding
if (router.busy) { enqueue(packet); }          // Queue
if (collision) { resolve_conflict(); }         // Arbitration
send(packet, path);                            // Send

// Result: delay is unpredictable (jitter)
```

## Philosophically

> "Freedom of choice ≠ freedom of connections."

In biology, a neuron can connect to any other — this is **plasticity**.
In engineering, a tile connects only to neighbors — this is **predictability**.

| Principle | Biology | Engineering |
| --------- | ------- | ----------- |
| Connectivity | Global (through axons) | Local (8 neighbors) |
| Goal | Survival in chaos | Predictability in order |
| Scaling | Evolution filters out errors | Design excludes errors |

Relay is trust in the local.
Each tile knows only its neighbor. But the entire network knows the goal.

## Practically

| Advantage | How it helps in B2B |
| --------- | ------------------- |
| Scaling | Want more tiles? Just add them. Architecture doesn't change. |
| Energy | No router = no routing costs (up to 40% savings) |
| Verification | Every path is predictable → can prove correctness |
| Debugging | Signal passed through N→E→S→W. Tracing is unambiguous. |
| ASIC | Simple topology = fewer metal layers = cheaper chip |

## Scaling: Linear vs Exponential

| Number of Tiles | Router (complexity) | Relay (complexity) |
| --------------- | ------------------- | ------------------ |
| 256 | O(n log n) | O(n) |
| 4,096 | O(n²) | O(n) |
| 1,048,576 (1M) | Impractical | Linear |

This is not "simplification", but an architectural advantage that allows scaling to 1M+ tiles without complexity explosion.

## Real-World Analogy

| System | Approach | Result |
| ------ | -------- | ------ |
| Internet | Packet routing, routers | Flexible, but jitter, losses |
| Assembly Line | Part moves from machine to machine | Predictable, deterministic |
| Decima-8 | Relay between tiles | **Conveyor belt for patterns** |

For communication — you need the internet.
For manufacturing — you need an assembly line.

**We propose building personality manufacturing.**

## Read Further

- [Father and Bus: Control vs Data](father-bus.md)
- [Determinism as Ethics](determenism.md)
- [I / NOT I: Boundary of Subjectivity](../base/detector-antagonist.md)
