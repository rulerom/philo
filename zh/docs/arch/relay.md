---
title: "许可图，而不是路由器"
description: "相邻边传播计算许可，而不是数据"
date: 2026-07-25
tags: [拓扑, 激活, 许可, Decima]
lang: zh
---

# 许可图，而不是路由器

旧词“relay”容易让人误以为图块把数值输出转发给另一个图块。v3 并非如此。

Locked 祖先允许局部后代在下一 tick 变为 ACTIVE。后代用自己的权重读取**新的公共 VSB 帧**。

```text
locked parent -> permission edge -> ACTIVE child -> common VSB
```

这是因果许可图，不是 packet network。

后代必须等祖先识别更早的历史 phase 后才能开始反应。因此分支编码语法：

```text
先 A
在 A 被保留时检查 B
然后允许 C
```

A 的数据不流入 B；A 只开放 B 聆听环境的能力。

祖先 unlock 后，分支失去许可，非 ACTIVE 图块清除状态。拓扑同时提供顺序记忆与遗忘。
