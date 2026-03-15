# Architectural Manifesto: Why We Are Open (and Why Not)

> "Openness is not a dogma. Openness is a tool.

> We open what should be common. We control what should be quality."

## Decima-8 is not an "open source project".

Decima-8 is **an ecosystem with a hybrid model**, where openness and control reinforce each other.

This is not a compromise. This is **an architectural decision**.

## The Essence

| What is open | What is controlled | Why |
| ------------ | ------------------ | --- |
| Emulator (Pure C) | IDE | Emulator = standard. IDE = quality of experience |
| .d8p Specification | Store (verification) | Format = common. Trust = verifiable |
| Philosophy / Codex | ASIC Roadmap | Knowledge = free. Strategy = responsibility |
| Libraries (BSL-1.0) | Characters (.d8p) with PKI | Tools = free. Identities = signed |

**Not "semi-open,"** but **architecturally pragmatic.**

## Lessons We Learned

| Project | What we took | What we rejected |
| ------- | ------------ | ---------------- |
| Linux (Torvalds) | Open core, contributor meritocracy | Full decentralization (critical systems require accountability) |
| Bitcoin (Nakamoto) | Protocol = law, trust through verification | Anonymity (we require signatures and accountability) |
| OpenAI / Anthropic | Quality through control | Closed knowledge (we open Philosophy and Codex) |
| RISC-V | Open specification = standard | Fragmentation of implementations (we control the reference) |

**We don't copy, but extract principles and adapt them to the task.**

## Why Hybrid? (Architecturally)

| Problem | Pure Open Source | Pure Closed Source | Hybrid (Decima-8) |
| ------- | ---------------- | ------------------ | ----------------- |
| Distribution | ✅ Fast | ❌ Slow | ✅ Fast (emulator is open) |
| Quality | ⚠️ Depends on community | ✅ Controlled | ✅ Controlled (IDE, Store) |
| Security | ⚠️ "Many eyes" ≠ guarantee | ✅ Accountability | ✅ PKI-signature + audit |
| Monetization | ❌ Difficult | ✅ Direct | ✅ Store, B2B, ASIC |
| Trust | ✅ Transparent | ⚠️ "Trust us" | ✅ Verifiable (code + specification) |

**Hybrid is not "the best of both worlds," it is the only thing that works for critical systems.**

---

## What Is Open (and Why)

### ✅ Emulator (Pure C)

- Zero dependencies
- Compiles anywhere
- Anyone can run, verify, fork

**Why:** A standard must be verifiable. If `.d8p` doesn't work on your hardware — it's a bug, not a "feature."

### ✅ .d8p Specification

- File format is documented
- PKI-signature is part of the spec
- Anyone can write their own loader

**Why:** Identity must be portable. Substrate is secondary, intention is primary.

### ✅ Philosophy / Codex

- All principles in open access
- In three languages (RU / EN / ZH)
- Anyone can read, quote, debate

**Why:** Knowledge must scale. Hidden philosophy = cult.

### ✅ Libraries (libwui, libdecima)

- BSL-1.0 / MIT
- Can be used in commerce
- Can be forked, modified

**Why:** Tools must be free. Free tool = more adoption.

## What Is Controlled (and Why)

### 🔒 IDE

- Single UX for all platforms
- Integration with Store
- Visualization, debugging, profiling

**Why:** Quality of experience is trust. If IDE is "whatever happens" — users will leave.

### 🔒 Store (identity verification)

- Only signed `.d8p` get into Store
- Audit for weight corruption
- Royalties for authors

**Why:** Security. An identity with "stuck memristors" should not reach production.

### 🔒 ASIC Roadmap

- Strategy is determined by the architect
- MPW shuttles, fab selection, specifications

**Why:** Accountability. An ASIC error = millions of dollars and years of delay.

### 🔒 B2B Pilots

- Integration with client
- Support, SLA, guarantees

**Why:** Trust. The client pays not for code, but for results and accountability.

## How to Contribute (Rules)

```markdown
## Want to help?

### ✅ What you can do without coordination:
• Fix bugs in the emulator (PR → review → merge)
• Suggest improvements to documentation
• Write tutorials, examples, reviews
• Test on your hardware, report issues

### ⚠️ What requires coordination:
• Changes to `.d8p` specification (discussion in Issues)
• New lanes, activation levels (architectural decision)
• Changes in the cycle (determinism — not negotiable)

### ❌ What is not accepted:
• Changes that break determinism
• Dependencies on third-party libraries (zero deps — a principle)
• Code without tests (benchmarks — mandatory)
```

**This is not "rejecting contributions." We just filter by the principle: "Do no harm to the architecture."**

## Monetization: Why This Is Ethical

| Criticism | Response |
| --------- | -------- |
| "Opened the code, but IDE is paid" | IDE is free for personal projects. B2B — paid (support, SLA). |
| "Store is trading souls" | Store is an expertise marketplace. Author receives royalties, user — verified identity. |
| "Will ASIC be closed?" | Specification is open. Implementation — requires investment. Investors demand return. |
| "Why isn't everything free?" | Free doesn't scale. Development resources must come from somewhere. |

**This is not "exploitation," but a sustainable model where all participants win:**

- **Identity Author** → royalties for usage
- **User** → verified identity with guarantee
- **Architecture Management** → resources for ecosystem development
- **Community** → open emulator, documents, standard

## Philosophically: Trust vs Control

| Principle | Architecturally | Philosophically |
| --------- | --------------- | --------------- |
| Openness | Emulator, specs, documents | Knowledge must be free |
| Control | IDE, Store, ASIC | Quality requires accountability |
| Trust | PKI-signature, verification | Trust ≠ blind faith. Trust = verifiable |
| Community | Contributors, contributions | Swarm grows through contribution, not consumption |

**We are not building a "cult"! We are building an ecosystem where trust is in the architecture, not in ideology.**

## Real-World Analogy

| System | Open | Controlled | Why |
| ------ | ---- | ---------- | --- |
| HTTP / TLS | Protocol | Certificates (CA) | Standard = common. Trust = verifiable |
| USB / PCIe | Specification | Device certification | Compatibility = open. Quality = certified |
| RISC-V | ISA | Implementations (chips) | Architecture = free. Chip = requires investment |
| Decima-8 | .d8p, emulator | Store, IDE, ASIC | Identity = portable. Trust = verified |

**We are not "reinventing the wheel," but applying proven principles to a new domain.**

## The Main Insight

> Openness without control = chaos.

> Control without openness = dictatorship.

> Hybrid = sustainability.

**We are not "choosing sides," but building a system where openness and control are not enemies, but partners.**

## Read Further

- [Architectural Control](control.md)
- [Determinism as Ethics](../arch/determenism.md)
- [Digitization of Mastery](../world/piano14.md)
