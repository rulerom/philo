---
title: "Shared bus and local permission"
description: "BUS_R is a historical root flag, VSB is common input, and BUS16 is separate readout"
date: 2026-07-25
tags: [VSB, BUS16, BUS_R, readout]
lang: en
---

# Shared bus and local permission

The metaphor of a “father opening the bus for neighbours” does not match v3 runtime.

| Mechanism | Function |
| --- | --- |
| Shared `VSB_INGRESS16` | One input frame for all ACTIVE tiles |
| Local edges | Permission from locked ancestor to descendant |
| `BUS16` | Output sum of eligible BUS_W tile contributions |

`BUS_R` is a historical name. It does not read BUS16; it makes a tile an ACTIVE seed.

A better hydraulic image is a manifold:

```text
8 shared VSB pressures
  -> many local chambers
  -> latches open neighbouring attention contours
  -> selected chambers contribute to BUS16 output manifold
```

Input water need not flow serially through chambers. The common medium acts on all of them while topology decides which chambers may respond.

The baker places roots, continuation locks, and readout organs. Control belongs to the designed personality topology, not to a special “father” tile.
