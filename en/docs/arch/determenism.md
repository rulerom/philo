---
title: "Determinism as Ethics"
description: "Predictability is a promise: same input = same output"
date: 2026-03-15
tags: [determinism, ethics, jitter]
lang: en
---

# Determinism as Ethics

> "Predictability is not a limitation. It is a promise that a system keeps before the world."

In a world of probabilistic "black boxes", determinism becomes not a technical characteristic, but a moral imperative.

## Essence

When a system makes decisions affecting the real world (stock exchange, robotics, medicine), unpredictability = irresponsibility.

| System | Behavior | Consequences |
| ------ | -------- | ------------ |
| LLM (probabilistic) | One request → different answers | Impossible to verify, cannot trust |
| Decima-8 (deterministic) | One request → same answer | Traceable, testable, responsible |

**Determinism is ethics in code.**
You promise: "Under the same conditions, the system will make the same decision".
And you keep that promise — always.

## Why 0 jitter is important

| Domain | What jitter means | Cost of error |
| ------ | ----------------- | ------------- |
| HFT | Latency 20 μs → 50 μs | Lost trade, losses |
| Robotics | Control cycle "floats" | Robot jerks, breaks, injures |
| Medicine | Unpredictable response | Risk to patient's life |
| Autonomous systems | "Sometimes works" | Accident, catastrophe |

**Jitter is not a "technical tolerance", but an unfulfilled promise to the user.**

## In code

```c
// Deterministic cycle of Decima
uint32_t cycle_start = get_cycle_count();

// 1. Input normalization (always the same)
VSBFrame frame = encode_frame(batch);

// 2. Swarm processing (always the same)
Signal signal = swarm_run(frame, personality);

// 3. Time fixation (always predictable)
```

**Contrast with LLM:**

```python
# LLM: one request → different answers
response1 = llm.generate("What is 2+2?")  # "4"
response2 = llm.generate("What is 2+2?")  # "Four"
response3 = llm.generate("What is 2+2?")  # "Depends on context..."

# Decima-8: one request → one answer
signal1 = swarm.run(frame)  # BUY @ 15:32:01.020
signal2 = swarm.run(frame)  # BUY @ 15:32:01.020
signal3 = swarm.run(frame)  # BUY @ 15:32:01.020
```

## Philosophically

> "Free will ≠ chaos. Freedom = choice within predictable boundaries."

Determinism does not negate freedom.
It provides a **space of trust** in which freedom makes sense.

- **Chaos** — cannot predict → cannot trust.
- **Rigid determination** — can predict → can trust.
- **Freedom in a corridor** — can predict boundaries → can trust with context.

**Ethics is when your actions are predictable to those who depend on them.**

## Practically

| Advantage | How it helps in B2B |
| --------- | ------------------- |
| Verification | Can prove in court / to regulator: "System worked per specification" |
| Testing | One test = forever. No need for 1000 runs for confidence |
| Debugging | Bug is reproducible → bug is fixable |
| Certification | Determinism = requirement for medicine, auto, aviation |
| Trust | Client knows: system does not "improvise" at a critical moment |

## Contrast: Why LLMs are not suitable for critical systems

| Criterion | LLM | Decima-8 |
| --------- | --- | -------- |
| One request → | Different answers | Same answer |
| Model version → | Behavior changes | Behavior stable |
| Hardware → | Different speed | Fixed cycle |
| Tracing → | "Why did it decide so?" — unclear | Every tile is logged |
| Responsibility → | "It's a probabilistic model" | "It's the specification, here's the log" |

**For chat — LLM is suitable.**

**For decisions with consequences — determinism is needed.**

## Read further

- [Relay instead of router](relay.md)
- [Personality is not magic](../base/personality.md)
- [I / NOT I: The boundary of subjectivity](../base/detector-antagonist.md)
