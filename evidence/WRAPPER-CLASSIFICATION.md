# Wrapper classification — LiquidAss 0.1.2t+r2 (arm64e)

仅作上传样本的静态反汇编；未运行、dlopen、注入或构建。地址均为 arm64e unslid VA。二进制 SHA-256 沿用既有索引：`ab85ba3d9fee2e695789a50df90eadcb837a86d0864061b6215a1cf281dd7a66`。

## 首轮优先集（显示 + poster 编辑）
- `CSProminentTimeView` 入口 `0x78398/0x783ec/0x784a0/0x78554/0x78594` 不是空包装：调用时钟更新核心 `0x64aa4` 和/或布局刷新 `0x60108`。`0x78398` 只有 `byte[0xef8a0]==1`（构造器写入的 PosterBoard 标志）才调用核心，之后仍刷新；alpha/hidden 包装的核心调用还允许 window 类名恰为 `SBCoverSheetWindow`。属于 display 必需。
- legacy 入口 `0x785d4/0x78624/0x78674/0x786cc` 经 `0x7b714` 判别；该 helper 实际查询 `CSProminentTimeView` / `SBFLockScreenDateView` 类，而非凭包装类名判定。`0x786cc` 处理 superview。
- `0x78358→0x7b9e0` 是日期格式显示路径：检查 host `Clock`、`Lockscreen.Clock.DateFormat.Enabled`，使用 `Lockscreen.Clock.DateFormat.Format` 或 `EEE MMM d` 模板，保存/恢复原 text/attributedText；不得当作无关 subtitle 包装删除。
- `PRMutablePosterConfiguration` 的 `0x79214` 将有效关联值写入 userInfo 的 `dylv.liquidass.clock.resizeProgress` / `.style` / `.widgetsAtTop`；只有存在关联值且输入为 nil 或 NSDictionary 才改写，其余走原 IMP。`0x79430` 先调原 `storeConfiguredProperties:error:`，仅原调用成功且有时钟关联状态时追加 `storeUserInfo:error:`。这是真实的每张 poster 保存依赖，非整站/全局 wallpaper 功能。
- `PREditingReticleView` 的索引未知 selector 已定向查实：`0x795b0` 同步关联对象 alpha，`0x79620` 同步 hidden。`0x79688/0x79740/0x797f0` 在关联槽 `0xee8f0` 非空时用其 CGRect 替换 frame/bounds/center 的输入；属于编辑器布局保持路径。
- `0x79c80/0x79d14` 仅在 `0x64548(self.view)==self` 时触发 `0x60224/0x60108`；combined/separated root 四个入口也调用这两个 helper。`0x60224` 的实质门控包含 host `Clock`、state.usesEditingLayout、state.applying，并改 reticle/clock/widget 几何与 dragging/resizing 状态，属于 editor 必需，不是仅因 PREditor 类名保留。
- `PBUIPosterViewController` 的 `0x7a18c/0x7a1ec` 从 `_configuration` ivar 取对象并调用 `0x7d8c4`；后者实际读取上述 resizeProgress/style 两键，验证并投递到主线程，是 poster 状态恢复依赖。

后续分类、notification/dock 边界与四个额外安装器的检查结果将在本报告下方补齐；完整逐项入口/selector/IMP 槽写入同目录 `wrapper-classification.json`。
