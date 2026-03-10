# Recast Flutter Assessment 🚀

A high-quality, professional Flutter application developed as part of a technical assessment. This
project demonstrates best practices in Flutter development, including Clean Architecture, modular
state management, and a premium UI/UX experience.

---

## 🌟 Key Features

- **Dashboard & Home**: Integrated home screen with quick access to key features.
- **User Profile Management**:
    - Secure handling of user data.
    - Video & Image upload/update functionality.
    - Comprehensive profile viewing and editing.
- **Loyalty & Rewards**:
    - Interactive loyalty progress tracking.
    - Detailed loyalty history with itemized logs.
- **Responsive UI**: Pixel-perfect design adapted for various screen sizes using
  `flutter_screenutil`.
- **Modern Aesthetics**: Use of glassmorphism, smooth transitions, and premium typography (Satoshi).

---

## 🏗️ Architecture & Best Practices

This project follows **Clean Architecture** principles to ensure scalability, maintainability, and
testability.

- **Presentation Layer**: Modular UI components and screens using **Bloc/Cubit** for reactive state
  management.
- **Domain Layer**: Pure business logic with entities and use cases (if applicable).
- **Data Layer**: Secure data handling via repositories and data sources.
- **Dependency Injection**: Automated service discovery and injection using **GetIt** and *
  *Injectable**.
- **Routing**: Robust and organized routing system for seamless navigation.

---

## 🛠️ Tech Stack

- **Framework**: [Flutter](https://flutter.dev/) (latest stable)
- **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- **DI
  **: [get_it](https://pub.dev/packages/get_it) & [injectable](https://pub.dev/packages/injectable)
- **Responsiveness**: [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)
- **Icons/Images
  **: [flutter_svg](https://pub.dev/packages/flutter_svg), [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter)
- **UI Enhancement**: [skeletonizer](https://pub.dev/packages/skeletonizer) for elegant loading
  states.
- **Gird Layouts
  **: [flutter_staggered_grid_view](https://pub.dev/packages/flutter_staggered_grid_view)

---

## 📂 Project Structure

```text
lib/
├── core/                # Shared utilities, constants, theme, systems
│   ├── constants/       # App-wide constants (images, colors, API)
│   ├── di/              # Dependency Injection configuration
│   ├── router/          # App navigation & routes
│   └── utils/           # Helper classes and UI utilities
└── features/            # Feature-based modular structure
    ├── home/            # Home/Dashboard feature
    └── profile/         # User profile & loyalty feature
```

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (checked `pubspec.yaml` for version compatibility)
- FVM (optional, but `.fvmrc` is present)

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/MohammedHessein/recast_flutter_assessment.git
   ```
2. **Get dependencies**:
   ```bash
   flutter pub get
   ```
3. **Generate Injectable code**:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```
4. **Run the application**:
   ```bash
   flutter run
   ```

---

## 🤝 Reviewer's Note

This project focuses on code quality, separation of concerns, and delivering a premium user
experience. Every component is built with reusability and performance in mind. Feel free to reach
out for any clarifications regarding the implementation.

---
*Created with ❤️ for the Recast Technical Assessment.*
