---
title: "架构师：个性的来源"
description: "baker 定义 VSB 语义、记忆器官、区间、decay、domain 与验证"
date: 2026-07-25
tags: [架构师, baker, D8P, 责任]
lang: zh
---

# 架构师：个性的来源

> 机器是确定性的。意图属于 baker。

Decima 不选择自己成为什么。它的 runtime 对市场、声音或工业传感器一视同仁。当架构师把特定世界连接到图块物理时，个性才出现。

```text
领域
  -> 8 条 VSB 线的语义
  -> 目标事件与负例
  -> 图块组成的器官
  -> threshold、decay、topology、domain、reset
  -> replay 与独立验证
  -> frozen .d8p + hash
```

baker 设计的是**记忆动力学**：什么积累、什么抵消、何时锁存、lock 允许后代多久、什么事件清理器官。

| 层 | 架构师的决定 |
| --- | --- |
| 感知 | VSB 线的意义与归一化 |
| 记忆 | 积分序列的权重、decay 与拓扑 |
| 动作 | 外部 director 如何解释 pattern id |

把订单直接烘焙进 sensor 会破坏可移植性；静默改变 press 归一化，则会让同一 `.d8p` 进入另一个世界。

搜索可以由 optimizer 或 AI 完成，但架构师角色不会消失。仍然需要有人定义目标、限制、holdout tape 与验收标准。

成熟 `.d8p` 应可复现或作为 golden artifact 保存，在事件之外保持沉默，经受独立历史，并明确输入/reset 合约。
