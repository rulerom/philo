---
title: "确定性需要完整上下文"
description: "相同帧并不足够：复现包括个性、状态、tape 与 reset"
date: 2026-07-25
tags: [确定性, replay, trace, 责任]
lang: zh
---

# 确定性需要完整上下文

> 被复现的是机器在 tape 上的一生，而不是对单帧的回答。

只有 `.d8p` 字节、runtime 算术、初始状态、完整有序 VSB tape、帧边界以及所有 reset 都一致时，trace 才一致。

```text
trace = run(personality, initial_state, tape, reset_schedule)
```

不同历史后的相同最后一帧可以产生不同状态。这是记忆，不是 nondeterminism。

可比较 FIRE 时间和 pattern id、domain winner 与 collision、BUS16、flags、accumulator/lock 状态，以及 tape 与个性的 hash。Wall-clock 不属于语义 trace。

确定性并不保证决定正确；它使责任精确：baker 对个性负责，press 所有者对 tape 语义负责，runtime 对执行负责，director 对动作与风险负责。
