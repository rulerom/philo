---
title: "个性是一种被设计的反应"
description: ".d8p 保存什么，以及个性为何依赖 baker、tape 与状态"
date: 2026-07-25
tags: [个性, D8P, baker, 记忆]
lang: zh
---

# 个性是一种被设计的反应

`.d8p` 不是灵魂、完整应用决定或可执行代码。它是 Decima 敏感性与记忆结构的冻结配置。

它包含 signed `W[8][8]`、`thr_lo..thr_hi` 区间、decay、局部许可图、domain、priority、pattern id 与 reset 规则。这些由[架构师](architect.md)定义。

文件保存个性结构，而不是已经经历的历史。当前记忆存在于 `thr_cur`、`locked`、ACTIVE 拓扑前沿，以及 FIRE/reset 的顺序中。

因此一个 VSB 帧不足以复现事件。需要 `.d8p`、初始状态、完整先前 tape 和 reset 调度。

> Decima 个性是 baker 为一类序列设计的反应不变量。

普通分类器问“这个输入属于哪一类？” Decima 更常问“历史是否到达了这个器官要识别的状态？”

沉默可以是正确输出。

Pattern id 只报告事件。动作属于外部系统：

```text
Decima event -> context/risk director -> action or skip
```

在 Whaler 中，同一事件系列可能开 short、平仓或被跳过。个性保持 sensor 身份，应用政策不会伪装成机器物理。
