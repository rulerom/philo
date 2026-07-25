---
title: "Rule-ROM Philo — 可执行个性的哲学"
description: "架构师定义个性，环境提供 tape，Decima 确定性地经历它"
date: 2026-07-25
tags: [哲学, 架构师, baker, 个性, Decima]
lang: zh
---

# Rule-ROM Philo

> 环境提供历史。架构师定义如何聆听。substrate 负责执行。

Philo 是 Decima-8 的意义层。它把机器性质转化为设计原则，但不会把类比当成物理事实。

## 四个实体

| 实体 | 做什么 | 不做什么 |
| --- | --- | --- |
| **环境** | 产生事件序列 | 不知道序列会如何被解释 |
| **Press** | 把环境压缩成八条 VSB 线 | 不作决定 |
| **架构师（baker）** | 定义权重、区间、decay、拓扑、domain 与 reset | 不改写过去的 tape |
| **Decima substrate** | 在 tape 上确定性执行 `.d8p` | 不发明个性的目标 |

个性既不只在权重中，也不只在历史中。它是 `.d8p` 与 VSB 序列相遇时显现的**被设计的反应边界**。

## 物理最小集

1. 同一个公共 VSB 帧同时提供给所有 ACTIVE 图块。
2. 每个图块通过自己的 signed matrix 聆听它。
3. `thr_cur` 积分历史，decay 负责遗忘。
4. Lock 保留状态，FIRE 标记转换。
5. 相邻图块只传递计算许可，不传数据。
6. Domain 提供事件竞争与受控 reset。

由此产生事件记忆：小型 fabric 无需独立序列 buffer，也能识别时间形态。

## baker 的责任

baker 选择八条线的语义、重要事件、必须忽略的状态、历史积分深度、遗忘速度、lock 后允许的分支，以及最终 FIRE。

因此 `.d8p` 并不中立。它是作者被冻结的工程意图，必须在独立 tape 上验证。

## 可验证的例子

[Whaler](world/whaler.md) 聆听市场微观结构。Press 把交易转成八个液压量；Decima 积分它们的关系并发出稀有事件。事件还不是订单：director 再应用上下文和风险。

Decima 是事件过滤器，baker 定义过滤器，应用轮廓定义动作。

## 阅读路径

- [架构师与 baker](base/architect.md)
- [`.d8p` 保存什么](base/personality.md)
- [公共 VSB 输入](base/vsb-life.md)
- [反应区间](base/detector-antagonist.md)
- [Substrate 与可移植性](base/substrate.md)
- [确定性与完整上下文](arch/determenism.md)
- [许可图](arch/relay.md)
- [共享总线与 readout](arch/father-bus.md)

早期推测性文章作为思想史保留，但主要阅读路径遵循当前 v3 物理模型。
