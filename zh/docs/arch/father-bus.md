---
title: "共享总线与局部许可"
description: "BUS_R 是历史根标志，VSB 是公共输入，BUS16 是独立 readout"
date: 2026-07-25
tags: [VSB, BUS16, BUS_R, readout]
lang: zh
---

# 共享总线与局部许可

“父亲为邻居打开总线”的类比不符合 v3 runtime。

| 机制 | 功能 |
| --- | --- |
| 共享 `VSB_INGRESS16` | 所有 ACTIVE 图块的同一输入帧 |
| 局部边 | locked 祖先向后代传递许可 |
| `BUS16` | 有资格 BUS_W 图块贡献的输出和 |

`BUS_R` 是历史名称。它不读取 BUS16，而是使图块成为 ACTIVE seed。

更准确的液压图像是 manifold：

```text
8 种共享 VSB 压力
  -> 多个局部腔室
  -> latch 打开相邻注意轮廓
  -> 选定腔室向 BUS16 输出 manifold 贡献
```

输入流体不需要顺序流过腔室。公共介质同时作用于它们，拓扑决定哪些腔室可以响应。

baker 安排 root、continuation lock 与 readout organ。控制属于被设计的个性拓扑，而不是特殊“父亲”图块。
