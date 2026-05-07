# Changelog

## [1.0.0] — 2026-05-07

### 🎉 Initial Release — Repository Consolidation

合并两个独立移动端仓库为统一的 `mobile-apps-lab`，展示 Android + iOS 双平台移动工程能力。

#### 合并来源
| 原仓库 | 目标路径 | Stars |
|---|---|---|
| `android-compose-lab` | `android/` | 1 |
| `swiftui-text-editor` | `ios/` | 1 |

#### Android 子项目 (Jetpack Compose 架构实验)
- 任务管理应用：CRUD、完成状态切换、筛选、统计
- Jetpack Compose + Hilt + Room + Coroutines/Flow 分层架构
- 完整测试基线（单元 / 集成 / UI）
- 品牌化改造：命名空间 `com.howeveryir.android.archlab.todoapp`
- 衍生工程治理文档与上游同步脚本

#### iOS 子项目 (SwiftUI 文本编辑器)
- 轻量文本编辑器：文件浏览、文本编辑、设置面板
- SwiftUI + 原生文件系统 API
- iPhone / iPad 基础适配
- 品牌化改造：Bundle ID `com.howeveryir.howeveriosedhita`
- 衍生工程治理文档与上游同步脚本
