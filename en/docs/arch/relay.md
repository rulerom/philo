---
title: "Permission graph instead of router"
description: "Neighbour edges propagate permission to compute, not data"
date: 2026-07-25
tags: [topology, activation, permission, Decima]
lang: en
---

# Permission graph instead of router

The old word “relay” can be misread as one tile forwarding numerical output to another. v3 does not do this.

A locked ancestor permits a local descendant to become ACTIVE on the next tick. The descendant reads the **new common VSB frame** through its own weights.

```text
locked parent -> permission edge -> ACTIVE child -> common VSB
```

This is a causal permission graph, not a packet network.

A child cannot begin its response until an ancestor has recognized an earlier phase of history. A branch therefore encodes grammar:

```text
first A
then, while A is retained, test B
then permit C
```

No A data flows into B. A only opens B's ability to listen to the environment.

When the ancestor unlocks, the branch loses permission and inactive tiles clear runtime state. Topology provides both order memory and forgetting.

The baker constructs this graph; Decima executes it over the shared tape.
