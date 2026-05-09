# Contributing to mobile-apps-lab

Thank you for your interest in contributing! This guide will help you get started.

## Development Environment

### Android

- **JDK 17** (Temurin recommended)
- **Android Studio** (latest stable)
- Android SDK with API level specified in `android/gradle.properties`

### iOS

- **Xcode** (latest stable, matching the project's Swift version)
- macOS with iOS Simulator

## Local Build

### Android

```bash
cd android
chmod +x gradlew
./gradlew :app:assembleDebug -x lint --no-configuration-cache --no-daemon
./gradlew test --no-configuration-cache --no-daemon
```

### iOS

```bash
cd ios
cp Config/Environment.sample.xcconfig Config/Environment.local.xcconfig
# Edit Environment.local.xcconfig to set your DEVELOPMENT_TEAM
xcodebuild -project Edhita.xcodeproj -scheme Edhita -configuration Debug \
  -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 16' \
  CODE_SIGNING_ALLOWED=NO build
```

## Branch Strategy

- `main` is the default branch and should always be green
- Create feature branches from `main`: `feat/<short-description>`
- Create fix branches from `main`: `fix/<short-description>`

## Pull Requests

1. Fork the repo and create your branch from `main`
2. Ensure your changes include relevant tests
3. Run the full build and test suite locally before submitting
4. Fill out the PR template completely
5. One logical change per PR

## Code Style

### Android

- Kotlin coding conventions
- Run `./gradlew spotlessCheck` to verify formatting
- detekt for static analysis

### iOS

- Swift API Design Guidelines
- SwiftLint and SwiftFormat for linting and formatting

## Reporting Issues

Use the [issue templates](https://github.com/however-yir/mobile-apps-lab/issues/new/choose) to report bugs or request features.

## Code of Conduct

This project follows the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.
