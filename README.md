# Flutter Template 01

A starter Flutter application template with routing, localization, theming, onboarding state, and legal-content pages.

> AI contributor rules are defined in `/home/runner/work/flutter_template_01/flutter_template_01/AGENT.MD`.

## Technology Stack

- **Flutter** `3.41.1` (managed via **FVM**)
- **Dart** `^3.8.1`
- **State Management**: `flutter_riverpod`, `riverpod`, `provider`
- **Routing**: `go_router`
- **Localization (i18n)**: `slang`, `slang_flutter` with JSON translations in `assets/i18n`
- **Local Storage**: `shared_preferences`
- **Markdown Rendering**: `flutter_markdown`
- **Linting**: `flutter_lints`
- **Launcher Icons**: `flutter_launcher_icons`

## Project Structure

- `lib/main.dart`: app entrypoint (`MaterialApp.router`)
- `lib/common/`: shared router, theme, widgets
- `lib/pages/`: feature pages (`splash`, `onboarding`, `home`, `policy`, `terms`)
- `lib/providers/`: app providers
- `lib/helper/`: local helpers (shared preferences, dialog helpers)
- `assets/i18n/`: localization source files
- `lib/gen/i18n/`: generated localization files
- `docs/`: generation notes and supporting docs

## Guide for AI Contributors

When AI tools update this template, follow these repo-specific rules:

1. **Keep architecture consistent**
   - Entrypoint stays in `lib/main.dart`.
   - Shared app concerns stay in `lib/common/`.
   - Page-level UI stays in `lib/pages/`.
   - Providers stay in `lib/providers/`.

2. **Respect current routing setup**
   - Add new routes in `lib/common/app_router.dart`.
   - Keep route path constants in `AppRoutePaths`.

3. **Handle localization through Slang**
   - Add new translation keys in `assets/i18n/*.json`.
   - Regenerate `lib/gen/i18n/locale.dart` and locale files after updates.

4. **Use existing state patterns**
   - Reuse Riverpod/Provider patterns already in the template.
   - Avoid introducing a second, conflicting state architecture.

5. **Preserve style and quality checks**
   - Run format/analyze/test commands before finalizing changes.
   - Keep changes minimal and template-friendly.

## Installation & Setup

### 1) Prerequisites

- Flutter SDK (recommended via FVM)
- Dart SDK (bundled with Flutter)
- Android Studio / Xcode (for mobile targets)

### 2) Clone and enter project

```bash
git clone https://github.com/kreazyme/flutter_template_01.git
cd flutter_template_01
```

### 3) Install Flutter version (FVM)

```bash
fvm install 3.41.1
fvm use 3.41.1
```

> If you do not use FVM, ensure your Flutter version is compatible with `.fvmrc`.

### 4) Install dependencies

```bash
fvm flutter pub get
```

### 5) Run the app

```bash
fvm flutter run
```

## Useful Commands

### Analyze

```bash
fvm flutter analyze .
```

### Test

```bash
fvm flutter test .
```

### Regenerate localization files (Slang)

```bash
fvm dart run slang
```

### Regenerate launcher icons

```bash
fvm dart run flutter_launcher_icons
```
