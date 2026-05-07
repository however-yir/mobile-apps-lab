# mobile-apps-lab — Android + iOS 双平台移动端工程实验室

[![Status](https://img.shields.io/badge/status-showcase--ready-2563EB)](https://github.com/however-yir/mobile-apps-lab#readme)

🔥 **跨平台移动工程能力统一展示** — 将 Android 架构实践与 iOS 文本编辑器能力整合到一个仓库中。
🚀 Android 侧聚焦 Jetpack Compose / Hilt / Room / 测试分层；iOS 侧聚焦 SwiftUI / 文件系统 / 编辑体验。
⭐ 适用于移动端架构学习、双平台工程对比、企业内训样板、以及业务项目冷启动骨架。

> **Status:** `showcase-ready`
>
> **合并自：** android-compose-lab + swiftui-text-editor

---

## 目录

- [1. 仓库结构](#1-仓库结构)
- [2. Android 子项目](#2-android-子项目)
- [3. iOS 子项目](#3-ios-子项目)
- [4. 快速开始](#4-快速开始)
- [5. 技术栈总览](#5-技术栈总览)
- [6. 测试与质量保障](#6-测试与质量保障)
- [7. 二次开发建议](#7-二次开发建议)
- [8. License](#8-license)

---

## 1. 仓库结构

```text
mobile-apps-lab/
├── android/          ← Jetpack Compose 任务管理应用（源自 android-compose-lab）
│   ├── app/
│   ├── shared-test/
│   ├── gradle/
│   ├── config/
│   ├── docs/
│   ├── screenshots/
│   └── ...
├── ios/              ← SwiftUI 文本编辑器（源自 swiftui-text-editor）
│   ├── Edhita/
│   ├── Edhita.xcodeproj/
│   ├── Config/
│   ├── docs/
│   └── ...
├── CHANGELOG.md
├── README.md
└── .gitignore
```

---

## 2. Android 子项目

**定位：** "可学习、可二开、可演进" 的任务管理应用实验平台。

**核心特性：**
- Jetpack Compose + ViewModel + Repository + Room 分层架构
- Hilt 依赖注入
- 任务 CRUD、完成状态切换、筛选（全部/进行中/已完成）、统计页
- 完整测试基线（单元 / 集成 / UI）

**技术栈：** Kotlin · Jetpack Compose · Hilt · Room · Coroutines / Flow · Navigation Compose · JUnit / Espresso / Compose UI Testing

**上游：** `android/architecture-samples`（Apache-2.0）

> 📖 详细文档见 `android/README.md`

---

## 3. iOS 子项目

**定位：** "轻量编辑 + 可扩展插件 + 工程化治理" 的 iOS 文本编辑器实践。

**核心特性：**
- SwiftUI + 文件系统原生读写
- 文件列表浏览、目录切换、文本编辑与预览
- 设置面板与字体偏好管理
- iPhone / iPad 基础适配

**技术栈：** Swift · SwiftUI · Xcode Project · SPM · iOS 原生文件系统 API

**上游：** `tnantoka/edhita`（MIT）

> 📖 详细文档见 `ios/README.md`

---

## 4. 快速开始

### Android

```bash
cd android
# 参考 config/local.sample.properties 注入本地参数
# 使用 Android Studio 打开根目录，或命令行：
./gradlew :app:assemble
./gradlew test
```

### iOS

```bash
cd ios
cp Config/Environment.sample.xcconfig Config/Environment.local.xcconfig
open Edhita.xcodeproj
# 替换 DEVELOPMENT_TEAM 为你自己的 Team ID
```

---

## 5. 技术栈总览

| 维度 | Android | iOS |
|---|---|---|
| 语言 | Kotlin | Swift |
| UI 框架 | Jetpack Compose | SwiftUI |
| 架构模式 | MVVM + Repository | MVVM + 原生文件系统 |
| 依赖注入 | Hilt | — |
| 持久化 | Room | iOS 文件系统 |
| 异步 | Coroutines / Flow | — |
| 测试 | JUnit / Espresso / Compose UI | XCTest / XCUITest |
| 上游 | android/architecture-samples | tnantoka/edhita |
| License | Apache-2.0 | MIT |

---

## 6. 测试与质量保障

每个子项目建议遵循：

- PR 必须通过单元测试
- 关键路径需具备 UI 自动化验证
- 每次版本发布前执行一次全量回归
- 静态扫描（Android: detekt/ktlint，iOS: swiftlint）
- 覆盖率门禁

---

## 7. 二次开发建议

**Android 侧：**
- 先保持核心链路稳定，再引入账号与远程同步
- 将任务模型逐步扩展为「标签、优先级、截止时间、负责人」
- 将 fake remote 迁移到真实 API 时，先补契约测试再替换实现

**iOS 侧：**
- 先补齐文档与测试，再做功能大改
- 将编辑核心能力与展示层继续解耦
- 增加插件化入口，降低后续扩展成本

---

## 8. License

- Android 子项目：Apache-2.0（见 `android/LICENSE`）
- iOS 子项目：MIT（见 `ios/LICENSE`）
- 衍生层说明见各子项目 `LICENSE.HOWEVER`
