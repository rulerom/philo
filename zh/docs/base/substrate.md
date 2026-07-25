---
title: "Substrate 执行，但不定义目的"
description: ".d8p 可移植性是 conformance 合约，不是任意硬件自动等价的承诺"
date: 2026-07-25
tags: [substrate, runtime, D8P, conformance]
lang: zh
---

# Substrate 执行，但不定义目的

baker 定义个性，substrate 实现其物理。今天可验证的参考是软件 runtime。FPGA 或 ASIC 只有通过 conformance 测试后才成为兼容 substrate。

可移植性要求 `.d8p` 解释、算术、clamp、phase 顺序、初始状态、完整 tape、reset 调度、事件 trace 与 readout 一致。

速度不同可以接受。行为不同意味着不同 runtime，而不是“同一个个性换了身体”。

有用的乐谱类比必须包含所有角色：

- `.d8p` 是反应乐谱；
- baker 是作曲家与乐器工程师；
- VSB tape 是演奏序列；
- runtime 是乐团；
- trace 是录音。

“substrate 次要”意味着意图不依赖某一 CPU，并不表示 FPGA、ASIC 或生物实现已经被证明等价。
