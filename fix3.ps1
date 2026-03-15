$files = @{
    'd:\dev\rulerom\philo\zh\docs\index.md' = @'
---
title: "RuleRom Philo — 方法论哲学"
description: "确定性方法的哲学：人格是模式，基底是次要的，痛苦是梯度"
date: 2026-03-15
tags: [哲学，人格，确定性，架构]
lang: zh
---

# RuleRom Philo 🧭 —— 方法论哲学

> 「代码不是文档。代码 + 意义 + 验证 —— 才是文档。」
'@
    'd:\dev\rulerom\philo\zh\docs\ecosystem.md' = @'
---
title: "rulerom.com — 独立项目生态系统"
description: "由哲学统一的独立项目目录：decima, philo, audrey, c-safe, bakery, pki"
date: 2026-03-15
tags: [生态系统，项目，主权，验证]
lang: zh
---

# rulerom.com :: 由哲学统一的独立项目目录：
'@
    'd:\dev\rulerom\philo\zh\docs\base\personality.md' = @'
---
title: "人格不是魔法。它是模式。"
description: "Decima-8 如何在.d8p 中编码人格：权重、阈值、接力路由、Ed25519 签名"
date: 2026-03-15
tags: [人格，D8P, 确定性，验证]
lang: zh
---

# 人格不是魔法。它是模式。
'@
    'd:\dev\rulerom\philo\zh\docs\base\substrate.md' = @'
---
title: "基底是次要的，意图是主要的"
description: "为什么.d8p 无处不在：x86, ARM, FPGA, ASIC"
date: 2026-03-15
tags: [基底，可移植性，D8P]
lang: zh
---

# 基底为次，意图为主
'@
    'd:\dev\rulerom\philo\zh\docs\base\detector-antagonist.md' = @'
---
title: "我 / 非我：主体性的边界"
description: "主体性走廊 thr_lo..thr_hi：人格如何区分'我'与'非我'"
date: 2026-03-15
tags: [主体性，走廊，阈值]
lang: zh
---

# 我 / 非我：主体性的边界
'@
    'd:\dev\rulerom\philo\zh\docs\base\vsb-life.md' = @'
---
title: "命运的带宽"
description: "为什么 8 弦 × 0..15 足够：输入有限，内心世界无限"
date: 2026-03-15
tags: [VSB, 输入，感知，命运]
lang: zh
---

# 🎹 命运的带宽
'@
    'd:\dev\rulerom\philo\zh\docs\arch\determenism.md' = @'
---
title: "确定性即伦理"
description: "可预测性是承诺：相同输入 = 相同输出"
date: 2026-03-15
tags: [确定性，伦理，抖动]
lang: zh
---

# 确定性即伦理
'@
    'd:\dev\rulerom\philo\zh\docs\arch\relay.md' = @'
---
title: "接力而非路由"
description: "局部性可扩展：8 邻居，线性复杂度，0 抖动"
date: 2026-03-15
tags: [接力，路由，可扩展性]
lang: zh
---

# 接力而非路由
'@
    'd:\dev\rulerom\philo\zh\docs\arch\father-bus.md' = @'
---
title: "父节点与总线：控制 vs 数据"
description: "访问控制是二元的，数据是分级的。父节点是角色"
date: 2026-03-15
tags: [总线，控制，数据]
lang: zh
---

# 父节点与总线：控制 vs 数据
'@
    'd:\dev\rulerom\philo\zh\docs\world\earth.md' = @'
---
title: "地球作为训练阶段：架构中的神义论"
description: "工程神义论：自由意志需要参数空间，痛苦 = 梯度，恶 = 腐败"
date: 2026-03-15
tags: [神义论，地球，训练，恶]
lang: zh
---

## 地球作为训练阶段：架构中的神义论
'@
    'd:\dev\rulerom\philo\zh\docs\world\piano14.md' = @'
---
title: "冯内古特与鲁迪·格茨：技艺的数字化"
description: "通过机器增强人类，而非取代"
date: 2026-03-15
tags: [冯内古特，技艺，数字化]
lang: zh
---

# 冯内古特与鲁迪·格茨：技艺的数字化
'@
    'd:\dev\rulerom\philo\zh\docs\world\addict.md' = @'
---
title: "成瘾与爱：驱动力的架构"
description: "成瘾 = 忆阻器饱和。爱 = 优先级重写"
date: 2026-03-15
tags: [成瘾，爱，忆阻器]
lang: zh
---

# 成瘾与爱：驱动力的架构
'@
    'd:\dev\rulerom\philo\zh\docs\nomos\about.md' = @'
---
title: "架构宣言：为何我们开放"
description: "混合模型：模拟器和规范开放，IDE 和 Store 受控"
date: 2026-03-15
tags: [开放，控制，混合]
lang: zh
---

# 架构宣言：为何我们开放（以及为何不）
'@
    'd:\dev\rulerom\philo\zh\docs\nomos\control.md' = @'
---
title: "Decima-8 生态系统：架构治理"
description: "四层：人格、标准、Store、ASIC。三层控制：核心、平台、社区"
date: 2026-03-15
tags: [治理，生态系统，层级]
lang: zh
---

# Decima-8 生态系统：架构治理
'@
}

foreach ($file in $files.Keys) {
    Set-Content -Path $file -Value $files[$file] -NoNewline
    Write-Host "Updated: $file"
}
Write-Host "Done!"
