# Trivia Quiz - Daily Brain

A cross-platform trivia quiz app built with Flutter, featuring 80+ questions across 8 categories with full support for 15 languages.

## Features

- **8 Quiz Categories** — Geography, History, Science, Arts, Sports, Nature, Technology, and Food
- **80+ Questions per Language** — Each question includes hints and detailed explanations
- **15 Languages** — English, Korean, Japanese, Chinese (Simplified & Traditional), German, French, Spanish, Portuguese, Italian, Russian, Arabic, Thai, Vietnamese, and Indonesian
- **Remote Data Sync** — Quiz data is fetched from GitHub and synced on app launch with version control
- **Statistics & History** — Track your performance and review past quiz sessions
- **Hint System** — Earn hints through rewarded ads when you're stuck
- **Ad-Free Option** — In-app purchase to remove all ads
- **Dark Mode** — System-aware theme with manual toggle
- **Sound & Haptic Feedback** — Configurable audio and vibration effects
- **App Update Prompts** — Automatic update checks via Upgrader

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Framework | Flutter 3.10+ |
| State Management | Riverpod 2.x |
| Local Database | Drift (SQLite) |
| Monetization | Google AdMob, In-App Purchase |
| Localization | Flutter Intl (ARB) |
| Architecture | Clean Architecture + Repository Pattern |

## Project Structure

```
lib/
├── core/           # Config, services, theme, constants, widgets
├── data/           # Database, models, repositories
├── domain/         # Business logic (QuizNotifier, QuizState)
├── features/       # Feature modules (home, quiz, stats, history, settings)
├── providers/      # Riverpod providers
├── l10n/           # Localization (15 languages)
└── main.dart
```

## Getting Started

```bash
# Install dependencies
flutter pub get

# Run code generation
dart run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

## Build & Deploy

```bash
# Android
flutter build appbundle --release
cd android && fastlane release

# iOS
flutter build ipa --release --export-options-plist=ios/ExportOptions.plist
cd ios && fastlane release
```

## License

All rights reserved.
