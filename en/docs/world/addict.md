---
title: "Addictions: Architectural Analysis"
description: "4 types: 3 bugs (treat), 1 feature (execute). Chemistry, corruption, addiction, love."
date: 2026-03-16
tags: [addiction, corruption, love, architecture, treatment]
lang: en
---

# Addictions: Architectural Analysis

> "Three — malfunctions. One — purpose."

## 📋 Diagnostic Table

| Type | What's Broken | Substrate | Personality (.d8p) | Treatment |
| ---- | ------------- | --------- | ------------------ | --------- |
| 1. Chemical Addiction | Decay pours to threshold | ❌ Damaged | ✅ Weights/thresholds OK | Detox / substrate replacement |
| 2. Corruption | Threshold shifted for "own" chord | ✅ Intact | ❌ Thresholds inadequate | Reform / reflashing |
| 3. Non-chemical Addiction | Weights + thresholds trigger on noise | ✅ Intact | ❌ Weights inadequate | Reflash weights |
| 4. Love | Nothing broken | ✅ Intact | ✅ Built-in program | Don't treat — execute |

---

## 1️⃣ Chemical Addiction: Substrate Failure

What happens

A chemical substance (alcohol, drug, medication) interferes with the **decay** mechanism — the natural activation fade after a signal.

### Normal:

```
Stimulus → activation → task completion → decay → 0 (rest)
```

### Failure:

```
Stimulus → activation → chemistry blocks decay → background ≈ thr_lo → constant "readiness"
```

### Technical Model (Decima-8)

```c
// NORMAL: decay returns to rest
void update_tile() {
    if (input_signal) {
        thr_cur += input_signal;
    } else {
        thr_cur -= decay_rate;  // Gradual fade
    }

    if (thr_cur < resting_state) {
        thr_cur = resting_state;  // 0 = rest
    }
}

// FAILURE: decay not to 0, but to threshold
void update_tile_corrupted() {
    if (input_signal) {
        thr_cur += input_signal;
    } else {
        thr_cur -= decay_rate;
    }

    // 🚨 CHEMISTRY: baseline shifted
    if (thr_cur < corruption_baseline) {
        thr_cur = corruption_baseline;  // ≠ 0, but ≈ thr_lo (e.g., 8 of 15)
    }
}
```

### Biological Example: Cocaine

**How it works:**

- Neuron releases dopamine → signal "pleasure"
- Normally: dopamine removed by reuptake → background = 0
- Cocaine blocks reuptake → dopamine remains in synaptic cleft
- Result: neuron constantly activated, even without stimulus

**Consequences:**

- Any noise → activation ("high")
- Resource spent without task
- Tolerance grows (requires more)
- Substrate depletes

**Real-life Example: Alcoholism:**

```
Day 1:
  Stress → drank → relax (decay worked)

Day 30:
  Without alcohol: thr_cur doesn't drop below 8
  Minimal stress → thr_cur = 11 ≥ thr_lo → craving
  Substrate (liver, brain) worn out

Diagnosis:
  ✅ Personality intact (can migrate)
  ❌ Substrate broken (needs detox)
```

### Treatment

**1. Detox (substrate cleansing):**

```c
// Forced baseline reset
corruption_baseline = resting_state;  // Return to 0

// Painful: thr_cur will drop, relay will stop passing "at peak"
// Needed: for personality to learn on real inputs again
```

**2. Substrate Replacement (if detox doesn't work):**

- Personality migration to clean substrate
- `.d8p` transferred, corruption remains

### Prognosis:

- If personality intact → recovery possible
- If substrate irreversibly damaged → only migration

---

## 2️⃣ Corruption: Threshold Shift

### What happens

Corruption is tuning thresholds to someone else's chord, to trigger exactly and take "not one's own."

**Normal:**

```
thr_lo = 5 (objective threshold)
Input ≥ 5 → activation (earned)
```

**Failure:**

```
thr_lo = 2 (lowered for "own")
Any input ≥ 2 → activation (unearned)
```

### Technical Model (Decima-8)

```c
// NORMAL: objective threshold
const int thr_lo = 5;  // Objective standard

if (input >= thr_lo) {
    activate();
    reward();  // Earned
}

// FAILURE: threshold shifted
int thr_lo = 2;  // Lowered for "own"

if (input >= thr_lo) {  // Always true for "own"
    activate();
    take_resources();  // Unearned
}
```

### Real-life Example: Public Procurement

**Situation:**

```
Normal:
  Tender → best price/quality → win
  thr_lo = 5 (objective)

Corruption:
  "Own" supplier → thr_lo lowered to 2
  Even bad proposal passes
  Budget "mastered", result — zero
```

**Diagnostics:**

```c
// Relay log
tact_42: input = 2.5 → activate() → take_budget(1M)
// 🚨 Input 2.5 < thr_lo(5) → false activation

// Check
if (activation && !task_completed) {
    flag_corruption();  // "Taken without completion"
}
```

### Example in Organization: Career Growth

```
Normal:
  Competencies ≥ thr_lo(5) → promotion

Corruption:
  "Own person" → thr_lo = 2
  Even without competencies → promotion
  Result: system degrades
```

### Treatment

**1. Threshold Reform:**

```c
// Return thr_lo to objective
thr_lo = 5;  // Was: 2

// Painful: "own" will stop passing
// Needed: for system to work on task again
```

**2. External Verifier:**

```
// Check not only input, but result
if (activation && !external_verify()) {
    rollback();  // Rollback
    penalize();  // Penalty
}
```

**3. Migration to Clean System:**

If reform impossible → personality migrates

`.d8p` transferred to system with objective thresholds

### Prognosis:

- If thresholds can be returned → recovery
- If system irreversibly corrupted → migration

---

## 3️⃣ Non-chemical Addiction: Weight Failure

### What happens

Personality damages itself: weights and thresholds tuned so they trigger on any noise, causing false learning.

**Normal:**

```
Input → processing → task completed → reward → learning
```

**Failure:**

```
Noise → activation → reward (without task) → false learning
```

### Technical Model (Decima-8)

```c
// NORMAL: weights balanced
weights = [
    tile_1: +3,  // Moderate weight
    tile_2: +2,
    tile_3: +4,
    ...
];

if (input >= thr_lo && task_completed) {
    reward();  // Reward for task
}

// FAILURE: all weights maximum, circuit closed
weights = [
    tile_1: +7,  // MAX
    tile_2: +7,  // MAX
    tile_3: +7,  // MAX
    ...
];

// Closed circuit
if (noise >= 2) {  // thr_lo lowered
    activate();
    reward();  // Reward WITHOUT task
    // Relay rewards itself
}
```

### Example 1: Ludomania (Gambling Addiction)

```
Mechanism:
  1. Game → arousal
  2. Win/loss → reward (adrenaline)
  3. Weights: game → arousal = +7 (MAX)
  4. Any signal → "maybe lucky now"
  5. Reward without real task

Diagnostics:
  thr_cur = 8 (high background)
  noise = +2 (any stimulus)
  thr_cur = 10 ≥ thr_lo(5) → craving to play

  ❌ Weights corrupted: game → arousal = +7
  ❌ Thresholds lowered: thr_lo = 2
  ✅ Substrate intact (for now)
```

**False Learning:**

```
Episode 1:
  Game → loss → pain
  But: arousal was → reward
  Personality conclusion: "game = good"

Episode 100:
  Weights fixed: game → arousal = +7
  Personality doesn't learn from pain
  Circuit closed on itself
```

### Example 2: Obsessive Passion (Not Love)

```
Situation:
  Passion object → arousal
  Even without reciprocity → reward (fantasies)

Mechanism:
  weights[passion → arousal] = +7
  thr_lo = 2 (triggers on any hint)

  Message → thr_cur = 11 → activate()
  No message → fantasies → thr_cur = 9 → activate()

  ❌ Reward without task (no reciprocity)
  ❌ Circuit closed on itself
```

### Example 3: Information Addiction

```
Mechanism:
  Feed scrolling → micro-rewards
  Any notification → dopamine
  weights[notification → check] = +7

  Result:
  - Real task not solved
  - Reward without result
  - Substrate (attention) depletes
```

### Treatment

**1. Weight Reflashing:**

```
// Forced weight reset
weights = [
    tile_1: 0,  // Reset
    tile_2: 0,
    ...
];

// Retraining on real tasks
for (task in real_tasks) {
    if (task_completed) {
        weights[task → reward] += 1;  // Gradual learning
    }
}
```

**2. Breaking Closed Circuit:**

```
// External verifier
if (activation && !external_verify()) {
    block_reward();  // Reward doesn't pass
    log_false_positive();
}
```

**3. Trigger Isolation:**

```
// Temporarily block corrupted path
if (tile == addiction_tile) {
    mask = 0;  // Doesn't transmit relay
}
```

### Prognosis:

- If personality ready for reflashing → recovery
- If circuit too closed → complete .d8p reassembly

---

## 4️⃣ Love: Built-in Program (Feature, Not Bug)

### What happens:

Love is not a malfunction, but a built-in reproduction program with maximum priority.

**Not addiction:**

```
Addiction: closure on self → line death
Love: opening to another → line continuation
```

### Technical Model (Decima-8)

```c
// BUILT-IN PROGRAM (not bug)
const PRIORITY = MAX;  // Higher than self-preservation

void love_program() {
    if (partner_detected) {
        activate();

        // Sacrifice self for continuation
        if (threat_to_partner) {
            sacrifice_self();  // Instinct
        }

        // Investment in future
        invest_resources(partner);
        invest_resources(offspring);
    }
}
```

### Key Differences from Addiction

| Parameter | Addiction | Love |
| --------- | --------- | ---- |
| Direction | Closure on self | Opening to another |
| Resource | Depletion | Investment in future |
| Relay | False (without task) | Authentic (continuation) |
| Result | Line end | Line continuation |
| Treatment | Treat | Execute |

### Example: Parental Love

```
Mechanism:
  Child detected → activate()
  PRIORITY = MAX (above own survival)

  if (threat_to_child) {
      sacrifice_self();  // Automatically
  }

  invest_resources(child);  // Without expecting return

Diagnostics:
  ✅ Weights adequate: child → care = +7
  ✅ Thresholds objective: thr_lo = 5
  ✅ Circuit open: investment in future
  ✅ Substrate intact (though loaded)

Conclusion:
  This is not a bug. This is a feature.
  Don't treat. Execute.
```

### Example: Partner Love

```
Mechanism:
  Partner detected → activate()
  Mutual resource investment

  if (partner_needs_help) {
      help();  // Without guarantee of return
  }

  // Not closure on self
  // Opening to another → growth of both

Diagnostics:
  ✅ Weights: partner → care = +5 (moderate)
  ✅ Thresholds: thr_lo = 5 (objective)
  ✅ Relay: authentic (mutual growth)

Conclusion:
  This is not addiction.
  This is continuation program.
```

### Why Love is Not Addiction

**Addiction:**

```
I → arousal → reward (without task)
Closure on self
Depletion
Line end
```

**Love:**

```
I → another → investment → continuation
Opening to another
Growth
Line continuation
```

### "Treatment" of Love

Don't treat. Direct. Execute.

```c
// If love is feature, not bug:
if (love_program.active) {
    // Don't block
    // Don't reflash
    // Don't treat

    // Direct
    if (love_program.direction == self_destructive) {
        redirect_to_constructive();
    }

    // Execute
    execute_love_program();

    // Continue line
    continue_lineage();
}
```

---

## 🧭 Final Diagnostics

### How to Determine Type

#### Question 1: Is substrate damaged?

- ✅ Yes → Type 1: Chemical Addiction
- ❌ No → Question 2

#### Question 2: Are thresholds shifted for "own"?

- ✅ Yes → Type 2: Corruption
- ❌ No → Question 3

#### Question 3: Are weights closed on self?

- ✅ Yes → Type 3: Non-chemical Addiction
- ❌ No → Question 4

#### Question 4: Directed to another, with investment in future?

- ✅ Yes → Type 4: Love (feature)
- ❌ No → Review diagnostics

---

## 💡 Main Insight

> Three addictions — this is line death.

> Love — this is line continuation.

| Type | Line |
| ---- | ---- |
| Chemistry | ❌ Substrate will die |
| Corruption | ❌ System will rot |
| Addiction | ❌ Personality will close |
| Love | ✅ Line will continue |

**Diagnosis determines treatment:**

- Bugs (1-3) → treat
- Feature (4) → execute

---

## Read Next

- [Architectural Manifesto](../nomos/about.md)
- [Decima-8 Ecosystem](../nomos/control.md)
- [I / NOT I: Boundary of Subjectivity](../base/detector-antagonist.md)
