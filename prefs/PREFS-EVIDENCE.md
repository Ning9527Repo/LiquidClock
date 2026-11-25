# LiquidAss 0.1.2t+r2：clock-only 设置恢复证据

## 结论与边界

已从**本地上传样本的 arm64e 指令和常量字节**恢复 `_LGClockItems` 的全部 15 个持久化设置键定义，生成 `prefs-schema.json`、原生 `Root.plist`、生成工具及独立 `ClockOnlyPrefsController.m` 适配源码。系统 major >=16 时，原样本不创建两项 tint 设置，因此实际有 13 个持久化控件；major <=15 时为 15 个。另有两个原生分组，不计入持久键数。

这是设置契约与原生页面的本地静态恢复，**不是完整时钟已经独立运行的证明**。未编译 iOS 代码，未加载 UIKit/Preferences.framework，未在真机显示页面，未接入或验证独立 renderer。未下载或替换公开上游源码；未创建 CI/仓库、未注入/安装、未写远端或系统偏好。修改范围仅 `prefs/` 和 `tests/test_clock_prefs.py`；未改 field/abi/isolation/src/renderer。

## 样本身份、地址体系

- 任务标签：`LiquidAss 0.1.2t+r2`，版本标签来自用户；原包 Info.plist 自报 short version 为 `1.0.0`、bundle version 为 `1.0`，不能用它推翻或重新证明 deb 版本。
- 原始二进制：优先 `/tmp/liquidass-extract/var/jb/Library/PreferenceBundles/LiquidAssPrefs.bundle/LiquidAssPrefs`；备用 `/var/minis/workspace/liquidass-clock/extract/var/jb/Library/PreferenceBundles/LiquidAssPrefs.bundle/LiquidAssPrefs`。
- 完整文件 SHA-256：`be1f127297d2a0b8c1cdf0378425ecf7260ef2eccafec177b70051c58d241d3f`。
- arm64e slice SHA-256：`e10fd694fc4239451a6661e8b2ddf88e75cd301b23579fb912592c3d3f8bd522`；slice 文件偏移 `0xa0000`；CPU subtype `0x80000002`。
- 本文所有地址均为该 **arm64e slice 的 unslid VA**；不是 arm64、宿主运行地址或整个 FAT 文件偏移。`tools/evidence.py` 解析 chained fixups；不把 PAC/链式槽原值当作目标指针。

## 精确设置表

`M = UIScreen.mainScreen.maximumFramesPerSecond`。M 是运行时表达式而非未知常量猜测；schema 的具体 default/max 保持 JSON `null`，不写死 60/120。

| 持久化 key | 样本类型 / 默认装箱 | 精确默认值 | UI 范围 | decimals | 条件 |
|---|---|---:|---|---:|---|
| `Clock.FPS` | number / numberWithDouble | M | 1..M | 0 | 在 Clock.Enabled 前插入，不受该面板开关门控 |
| `Clock.Enabled` | boolean / numberWithBool | true | 不适用 | — | 控制后续 Clock 面板 |
| `Clock.CustomScaleEnabled` | boolean / numberWithBool | true | 不适用 | — | 与下项来自同一 scale_override |
| `Clock.CustomScale` | number / numberWithDouble | 1.0 | 0.1..1.5 | 2 | 受 CustomScaleEnabled 门控 |
| `Clock.BezelWidth` | number / float32 转 double | 9.0 | 0..80 | 1 | Clock 面板 |
| `Clock.GlassThickness` | number / float32 转 double | 120.0 | 0..500 | 1 | Clock 面板 |
| `Clock.RefractionScale` | number / float32 转 double | 1.399999976158142 | 0..5 | 2 | 原 float32 为 `3333b33f` |
| `Clock.RefractiveIndex` | number / float32 转 double | 1.600000023841858 | 1..5 | 2 | 原 float32 为 `cdcccc3f` |
| `Clock.DispersionEnabled` | integer / numberWithInt | 0 | 不适用 | — | 不是 kCFBoolean，也不是默认 true |
| `Clock.DispersionStrength` | number / numberWithFloat | 0.0 | 1..2 | 1 | 受 DispersionEnabled 门控；默认值确实低于滑条最小值 |
| `Clock.Blur` | number / float32 转 double | 6.0 | 0..50 | 1 | Clock 面板 |
| `Clock.LightTintColor` | string | `#FFFFFF41` | 不适用 | — | 仅 OS major <=15 创建 |
| `Clock.DarkTintColor` | string | `#FFFFFF41` | 不适用 | — | 仅 OS major <=15 创建 |
| `Lockscreen.Clock.DateFormat.Enabled` | boolean / numberWithBool | true | 不适用 | — | 独立日期面板开关 |
| `Lockscreen.Clock.DateFormat.Format` | string | 空字符串 `""` | 不适用 | — | placeholder 才是 `EEE MMM d`；受日期开关门控 |

所有可见设置的 `options` 均为 `null`：它们不是离散选项菜单。`step` 均为 `null`：`decimals` 是构造器精度元数据，未证明滑块按 `10^-decimals` 量化。不能把显示精度推成步长。

## 关键数据流与原始数字真值

### 1. `_LGClockItems` 与键拼接

`0x1ffbc` 为入口；`0x20040..0x20048` 以 `Clock` 调用通用构造器 `0x1d368`。拼接 block 在 `0x274a0`：读取捕获的前缀，`0x274bc` 使用 `.%@`，`0x274c0` 调用 stringByAppendingFormat。因此通用后缀如 `CustomScale`、`RefractionScale` 确实形成表中的完整 key，不是依据变量名猜测。

`0x1d3d4..0x1d414` 按 0x48 步长扫描 32 个 descriptor 并选择第一次 strcmp 匹配。第一条 Clock 位于 `0x79308`，后面 `0x79350` 另有 Clock 行，但本任务相关数值/颜色一致，不能未经说明选第二条。

第一条 descriptor 的相关 float32 原始字段：

| VA | 值 | 指令用途 |
|---|---:|---|
| `0x79314` | 9.0 | x28-4，bezel，`0x1d6f8` |
| `0x79318` | 120.0 | x28+0，thickness，`0x1db2c` |
| `0x7931c` | 1.399999976158142 | x28+4，refraction，`0x1dc54` |
| `0x79320` | 1.600000023841858 | x28+8，index，`0x1dd7c` |
| `0x79324` | 6.0 | x28+0xc，blur，`0x1e48c` |
| `0x79328` | 1.0 | x28+0x10，通用 specular 默认，`0x1d4c0` |
| `0x7932c` | 0.0 | x28+0x14，dispersion 默认，`0x1dfb0` |

**尤其不能把 `0x79328` 的 specular=1.0 误用为 dispersion 默认。**`0x1dfb8` 是 numberWithFloat，随后 `0x1dfe0` 读取 `0x68e90` 的 float32 `0.0010000000474974513`，`0x1dfe4..0x1dfec` 比较并用 numberWithInt 装箱。0.0 不大于阈值，故 DispersionEnabled 精确默认整数 0。

### 2. 范围不能从 NSNumber 类名注释推断

`0x274d0` 为范围选择函数；dispatch_once thunk `0x58590` 引用 block `0x79778`，其 invoke 是 `0x277b0`。`0x277bc` 把 `0x81648` 的 NSConstantDictionary 放入缓存。字典保存键/数组，再经 chained fixups 解出 NSNumber 对象，**对象 payload 才是数值**。

| 范围 | 数组 VA | 最小/最大 NSNumber VA | payload 解码值 |
|---|---|---|---|
| BezelWidth | `0x81920` | `0x81bf0`, `0x81c00` | 0.0, 80.0 |
| GlassThickness | `0x81938` | `0x81bf0`, `0x81c10` | 0.0, 500.0 |
| RefractionScale | `0x81950` | `0x81bf0`, `0x81c20` | 0.0, 5.0 |
| RefractiveIndex | `0x81968` | `0x81c30`, `0x81c20` | 1.0, 5.0 |
| Blur | `0x81998` | `0x81bf0`, `0x81c40` | 0.0, 50.0 |
| CustomScale | `0x819b0` | `0x81c50`, `0x81c60` | 0.1, 1.5 |

Double 对象值为对象 +8 的 `<d`；integer 对象值为 +16 的 `<q`。`0x81bc0` 的实际整数 payload 是 **2**，`0x81bd8` 是 **1**，type encoding 均为 `i`，分别用于 scale/dispersion 的 decimals；不能从注释 `_NSConstantIntegerNumber` 得到布尔含义。

DispersionStrength 不直接使用上述普通字典项。`0x27530..0x275a4` 对它特殊分流：Clock 既不是 CustomViews 也不是 CoverSheet，因此选 `0x81c30` 的 **1.0** 与 `0x81c80` 的 **2.0**。保留原样本的 **default=0.0、range=1..2、toggle_default=整数0**，不为满足常见范围校验而擅自夹紧默认值。
