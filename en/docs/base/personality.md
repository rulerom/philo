---
title: "Personality as a designed reaction"
description: "What .d8p stores and why personality depends on baker, tape, and state"
date: 2026-07-25
tags: [personality, D8P, baker, memory]
lang: en
---

# Personality as a designed reaction

`.d8p` is not a soul, a complete application decision, or executable code. It is a frozen configuration of Decima sensitivity and memory.

## What `.d8p` contains

- signed `W[8][8]` matrices;
- `thr_lo..thr_hi` corridors;
- decay rates;
- the local permission graph;
- domains, priorities, and pattern ids;
- reset rules after events.

These parameters are defined by the [architect](architect.md). The environment does not rewrite them during ordinary runtime.

## Where current memory lives

The file stores personality structure, not lived history. Current state lives in `thr_cur` accumulators, `locked` latches, the active topology front, and the order of FIRE and reset.

One VSB frame is insufficient to reproduce an event. Reproduction needs `.d8p`, initial state, complete preceding tape, and reset schedule.

> A Decima personality is a baker-designed invariant of reaction to a class of sequences.

It appears through selective retention and cancellation, not through frequent FIRE.

## Not a classifier for every frame

A classifier asks “which class is this input?” Decima often asks “has the history reached the state this organ was built to detect?”

Silence can be the correct personality output.

## Boundary with the applied contour

Pattern id reports an event. Action belongs to an external system:

```text
Decima event -> context/risk director -> action or skip
```

In Whaler, one event family can open a short, close a position, or be skipped. Personality remains a sensor; application policy is not disguised as physics.
