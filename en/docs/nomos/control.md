# Decima-8 Ecosystem: Architectural Governance

> "Do not own everything. Own the essence. The rest — give to those who will multiply it."

```txt
                    ┌─────────────────────┐
                    │  decima8.org        │
                    │  • Patents          │
                    │  • ASIC / tapeout   │
                    │  • B2B Gateway      │
                    └─────────┬───────────┘
                              │
┌─────────────────────────────┼────────────────────────────────────┐
│                             │                                    │
│  ┌─────────────────┐  ┌─────▼──────────┐  ┌───────────────────┐  │
│  │ rulerom.com     │  │ rulerom.store  │  │ intent-garden.org │  │
│  │ • Philosophy    │  │ • Store        │  │ • Platform        │  │
│  │ • Codex         │  │ • .d8p catalog │  │ • Authors         │  │
│  │ • SEO (RU/EN/ZH)│  │ • Verification │  │ • Acquiring       │  │
│  └────────┬────────┘  └─────┬──────────┘  │ • Royalties       │  │
│           │                 │             └────────┬──────────┘  │
│           │                 │                      │             │
│           ▼                 ▼                      ▼             │
│  ┌──────────────────────────────────────────────────────────┐    │
│  │                  Architectural Governance                │    │
│  │         • Core Control  • Licenses  • Evolution          │    │
│  └──────────────────────────────────────────────────────────┘    │
└──────────────────────────────────────────────────────────────────┘
```

## 🔹 Four Layers: What, Where, and Why

### Layer 1: Personalities (.d8p) → [🌿 intent-garden.org](https://intent-garden.org/main/)

| Question | Answer |
| -------- | ------ |
| What is it? | Specific personalities: "whale-hunting trader", "ECG diagnostician", "drone pilot" — each as a `.d8p` file |
| What is given away? | Access to run these personalities: any user can buy, download, and run on their own hardware |
| What is retained? | • Authorship (via PKI signature: who created it)<br> • Royalties (author receives % for each use)<br> • Right to revoke license (if personality is compromised) |
| Why so? | So authors can create and earn income, while users can trust the source. Scaling through community, not centralized development. |

**Analogy:** YouTube for personalities. Author uploads video (`.d8p`), platform verifies (verification), viewer watches (runs), author gets monetization.

### Layer 2: Standard (.d8p spec) → [📜 rulerom.com](https://decima.rulerom.com/en/)

| Question | Answer |
| -------- | ------ |
| What is it? | .d8p format specification: how the file is structured, what fields, how to validate, how version evolves |
| What is given away? | The specification document itself — open, anyone can read, write their own loader, emulator, tool |
| What is retained? | • Version control (only Architectural Governance decides when to release v1.1, v2.0)<br> • Evolution (backward compatibility, migration of old .d8p) |
| Why so? | So the standard becomes common (like HTTP, USB, RISC-V), but evolution doesn't turn into chaos. Openness for compatibility, control for integrity. |

**Analogy:** USB specification. Anyone can make a flash drive, but only USB-IF decides what goes into version 4.0.

### Layer 3: Store (platform) → [🛒 rulerom.store](https://rulerom.store/en/)

| Question | Answer |
| -------- | ------ |
| What is it? | Personality marketplace: catalog, search, verification, purchase, download |
| What is given away? | Access for authors: after verification, anyone can publish their personality in the catalog |
| What is retained? | • Platform (infrastructure: hosting, search, payments)<br> • Audit (checking for weight corruption, spec compliance)<br> • Commissions (platform monetization model) |
| Why so? | So users trust: "verified, works". So authors have a distribution channel. So Architectural Governance can filter quality. |

**Analogy:** App Store. Any developer can publish an app, but only after review. User sees rating, reviews, warranty.

### Layer 4: ASIC (core) → [🐉 decima8.org](https://decima8.org/main/)

| Question | Answer |
| -------- | ------ |
| What is it? | Physical implementation of architecture: chip, specifications for manufacturers, patents |
| What is given away? | License to use the architecture: manufacturer can make chips if they comply with specification and pay royalties |
| What is retained? | • Patents (legal protection)<br> • Specifications (technical protection: only licensees get full docs)<br> • Royalties (income for each chip produced) |
| Why so? | So determinism is not compromised by cheap clones. So tapeout investments pay off. So architecture scales to hardware without quality loss. |

**Analogy:** ARM. Architecture is theirs, chips are Apple/Qualcomm/Samsung's, royalties flow to the source.

---

## 🔹 Three Levels of Control: How Architectural Governance Maintains Quality

### Level 1: Core

| What is controlled | Architecture, patents, specification evolution |
| ------------------ | ---------------------------------------------- |
| Instrument | • Patents (legal barrier)<br> • Licensing (contracts with manufacturers)<br> • Closed LLC (legal IP owner) |
| Goal | Protection from forks that "break determinism". If someone makes "Decima-8 Lite" with routers instead of relay — that's no longer Decima-8. Patents + licenses prevent this. |

**Example:** Manufacturer wants to make a chip, but "simplify" relay to 2 neighbors instead of 8. Architectural Governance says: "No, this violates the specification. Either build to spec, or don't use the brand."

### Level 2: Platform

| What is controlled | Who gets into Store, `.d8p` quality |
| ------------------ | ----------------------------------- |
| Instrument | • PKI signature (author must sign personality with their key)<br> • Weight corruption audit (detection of `weight=-7` or `7` across all cells — dependency)<br> • Spec compliance check (format validator) |
| Goal | Trust: user sees "Verified" badge and knows: this personality won't "break" in production. Author knows: if their personality passes audit — it will be in catalog with rating. |

**Example:** Author uploaded `.d8p` with "super-trader". Audit discovered 90% of weights stuck at +7 (aggression). Personality fails verification. Author receives report: "Fix corruption, try again."

### Level 3: Community

| What is controlled | Personality authors, royalty distribution |
| ------------------ | ----------------------------------------- |
| Instrument | • License agreement (rules of use, royalties, revocation)<br> • Transparent registry (who earned how much, who used how much)<br> • Feedback mechanism (ratings, reviews, bug reports) |
| Goal | Incentive: author sees their personality is bought → receives royalties → creates new one. User sees rating → chooses the best. Architectural Governance sees metrics → understands which directions to develop. |

**Example:** Author of "ECG Diagnostician" personality received 1000 launches → 500₽ royalties → decided to make "Ultrasound Diagnostician". User sees 4.9/5 rating → buys. Architectural Governance sees growth in "medicine" category → invests in corresponding pilots.

---

## 🔹 Value Flow: Step by Step

```
1. Author creates personality
   ↓
   • Writes code / configures weights
   • Signs with their PKI key
   ↓

2. intent-garden.org: registration + payment
   ↓
   • Author receives account, acquiring configured
   • Platform records authorship
   ↓

3. rulerom.store: verification → publication
   ↓
   • Audit checks: signature, weights, spec
   • If OK → personality in catalog with rating
   ↓

4. User purchases → runs
   ↓
   • Buys usage license
   • Runs on emulator (x86) or ASIC
   ↓

5. Royalties are distributed
   ↓
   • % → Author (via intent-garden.org)
   • % → Architectural Governance (platform support)
   ↓

6. ASIC manufacturer licenses core
   ↓
   • Receives specification from decima8.org
   • Pays royalties for each chip
   ↓

7. Cycle closes
   ↓
   • More chips → more launches → more royalties
   • More royalties → more investment in evolution
   • More evolution → more authors and users
```

---

## 🔹 Core Principle

> Openness without control = chaos.

> Control without openness = dictatorship.

> Layers = sustainability.

Architectural Governance does not choose between "open" and "closed".

Architectural Governance designs a system where:

- **Personalities** — open for creativity (community grows)
- **Standard** — open for compatibility (ecosystem doesn't fragment)
- **Store** — controlled for trust (quality guaranteed)
- **ASIC** — controlled for quality (determinism doesn't break)

**This is not a compromise. This is architecture.**

---

[🐝 JOIN THE SWARM](https://intent-garden.org/main/)
