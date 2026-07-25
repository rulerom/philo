---
title: "Rule-ROM 生态系统"
description: "Philo、Decima-8、Bakery 与 Whaler 之间的关系"
date: 2026-07-25
tags: [生态系统, Decima, Whaler, baker, 验证]
lang: zh
---

# Rule-ROM 生态系统

Philo 描述原则。验证发生在代码、artifact 与应用中。

| 域 | 角色 |
| --- | --- |
| [Rule-ROM](https://rulerom.com/zh/) | 项目与发布边界的注册表 |
| [Decima-8](https://decima.rulerom.com/zh/) | v3 物理、runtime、`.d8p` 格式、IDE 与 benchmark |
| [Bakery](https://bakery.rulerom.com/zh/) | 架构师构建和审计个性的工具 |
| [Whaler](https://whaler.rulerom.com/) | 第一个应用系列：市场 tape、事件 sensor 与交易轮廓 |
| [C-SAFE](https://c-safe.rulerom.com/zh/) | 验证与审计 |
| [PKI](https://pki.rulerom.com/zh/) | 签名与 artifact 来源 |

## 发布边界

可验证合约不要求公开全部知识产权。格式、runtime 物理、hash 与验证方法可以公开，而具体 bakery、训练 tape 与应用规则可以保持私有。

这条边界对个性很重要：用户能够知道机器执行什么，并验证 `.d8p` 未被更改，而不会自动获得它的制作配方。
