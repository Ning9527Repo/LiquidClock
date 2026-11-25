# LiquidAss 0.1.2t+r2 arm64e 时钟启动链证据

状态：**BLOCKED（静态证据不足以证明隔离安全）**

本报告仅依据锁定样本的 Mach-O 静态证据与项目中已保存的反汇编/清单；未执行、加载、安装、注入、打包或修改任何样本文件。所有本轮输出仅写入 `isolation/`。

## 样本边界

- 包样本标识：`e9f579c00b768376dd807c79c1796ee3bbce93d852e97b8f0354511208278a99`
- 主库：`/tmp/liquidass-extract/var/jb/Library/MobileSubstrate/DynamicLibraries/liquidass.dylib`
- 主库 SHA-256：`ab85ba3d9fee2e695789a50df90eadcb837a86d0864061b6215a1cf281dd7a66`
- 目标 slice：arm64e，Mach-O subtype `0x80000002`
- 背板库：同目录 `LiquidAssBackboardd.dylib`
- 已有主库启动清单：`startup/sample-startup-manifest.json`
- 已有 35 项时钟 hook 清单：`evidence/clock-hook-manifest.json`

## 五分钟基线结论

1. 主库 `__TEXT,__init_offsets` 有 **30 个**初始化入口：
   `0x4768, 0x852c, 0xdce4, 0xeca4, 0xee14, 0x10b64, 0x14554, 0x161d0, 0x1c870, 0x27970, 0x34adc, 0x35a74, 0x3b888, 0x3d650, 0x3df94, 0x3f198, 0x42134, 0x42270, 0x44964, 0x44ca8, 0x44ddc, 0x45764, 0x45874, 0x4a39c, 0x54b98, 0x5984c, 0x5c1a8, 0x75b90, 0x987c4, 0x98854`。
2. 现有时钟 manifest 只覆盖 `0x75b90`，包含 35 个初始 hook；因此“原样主库 + 只去除其它 ctor”不是已证实的时钟隔离方案。
3. 主库有多个 ctor，且还需单独核对 Objective-C 类装载/`+load` 和普通链接依赖。即使移除其它 ctor，类注册、`+load`、共享库初始化和被保留 ctor 的间接调用仍可能启动非时钟功能。
4. 背板库的 `tweakInit 0x7554` 与实际初始化路径必须独立确认；主库 35 项 hook 不能替代背板初始化，也不能证明背板只运行时钟功能。
5. 在没有逐入口调用图、所有 `+load` 排查、背板初始化及依赖侧效果证据前，隔离应直接阻断，不得原样启动。

## 当前已证实的时钟入口

`0x75b90` 是时钟 hook manifest 的唯一 `init` 字段；manifest 中 35 项均以此入口注册，覆盖显示、编辑器、poster 和列表/complication 交互类。已有清单中的 35 项必须作为“候选时钟 hook 集合”读取，不能推断主库其它 ctor 无副作用。

## 待补证据

- 30 个主库 ctor 的逐入口调用与功能分类，尤其 `0x987c4`、`0x98854`。
- 主库是否存在 `+load`、类列表注册产生的非时钟行为，以及任何非 ctor 初始化机制。
- `LiquidAssBackboardd.dylib` 的 `tweakInit 0x7554`、实际调用链、其 ctor/`+load` 和依赖。
- 主库/背板库的完整动态依赖及其对“非时钟功能不会运行”的影响。
- 35 个时钟 hook 与同一主库中的其它动态附加函数之间是否共享全局状态或初始化副作用。

## 隔离判定（基线）

**阻断。** 不能安全地把原样主库仅移除其它 ctor 后启动。该方案只有在上述未决项均证明为时钟专属、且不触发非时钟类注册/依赖初始化后才可能解除阻断；当前样本证据尚未达到该条件。
