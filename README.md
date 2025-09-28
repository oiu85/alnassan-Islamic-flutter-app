# 🕌 Alnassan App - Islamic Knowledge Platform

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)

**A comprehensive Islamic knowledge platform featuring audio, video, books, articles, and interactive content**

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/oiu85/alnassan-app)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)]()

</div>

---

## 📖 Table of Contents

- [🌟 Overview](#-overview)
- [✨ Features](#-features)
- [🏗️ Architecture](#️-architecture)
- [🚀 Getting Started](#-getting-started)
- [📱 Screenshots](#-screenshots)
- [🔧 API Documentation](#-api-documentation)
- [📁 Project Structure](#-project-structure)
- [🛠️ Development](#️-development)
- [📦 Dependencies](#-dependencies)
- [🚀 Deployment](#-deployment)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)
- [📞 Support](#-support)

---

## 🌟 Overview

**Alnassan App** is a sophisticated Islamic knowledge platform built with Flutter, designed to provide comprehensive access to Islamic content including audio lectures, video content, digital books, articles, and interactive features. The app serves as a digital library and learning platform for Islamic knowledge seekers.

### 🎯 Mission
To provide easy access to authentic Islamic knowledge through modern technology, making religious education accessible to everyone.

### 👨‍💼 About Sheikh Ahmed Al-Nassan
The app is dedicated to **Sheikh Ahmed Al-Nassan**, featuring his teachings, lectures, and Islamic guidance across multiple content formats.

---

## ✨ Features

### 🎵 **Audio Library**
- **Hierarchical Sound Categories**: Organized audio content with nested categories
- **Audio Player**: Advanced music player with playlist support
- **Download Management**: Offline audio content with progress tracking
- **Search & Filter**: Find specific audio content quickly
- **Background Playback**: Continue listening while using other apps

### 📚 **Digital Book Library**
- **PDF Viewer**: Built-in PDF reader with zoom and navigation
- **Book Categories**: Organized by topics and difficulty levels
- **Download & Offline Reading**: Download books for offline access
- **Bookmark & Notes**: Save important sections and add personal notes
- **Search Functionality**: Full-text search within books

### 🎥 **Video Library**
- **Video Streaming**: High-quality video content
- **YouTube Integration**: Seamless YouTube video playback
- **Video Categories**: Organized by topics and series
- **Playlist Support**: Create and manage video playlists
- **Offline Downloads**: Download videos for offline viewing

### 📰 **Articles & Content**
- **Rich Text Articles**: Formatted articles with images and media
- **Category Organization**: Articles organized by Islamic topics
- **Search & Filter**: Find articles by keywords or categories
- **Bookmark System**: Save favorite articles
- **Share Functionality**: Share articles with others

### 🔍 **Global Search**
- **Unified Search**: Search across all content types
- **Smart Filtering**: Filter results by content type
- **Search History**: Keep track of previous searches
- **Quick Access**: Fast search with autocomplete

### 💬 **Advisory & Fatwa System**
- **Ask Questions**: Submit Islamic questions to scholars
- **Fatwa Database**: Browse existing fatwas and rulings
- **Category-based Organization**: Fatwas organized by topics
- **Response System**: Get answers to your questions

### 🏠 **Home Dashboard**
- **Personalized Content**: Curated content based on user preferences
- **Quick Access**: Fast navigation to popular content
- **Recent Activity**: Track recently viewed content
- **Important Topics**: Featured content and announcements

### ⚙️ **Settings & Customization**
- **Font Size Control**: Adjustable text size for better readability
- **Download Path Management**: Configure download locations
- **Theme Support**: Light and dark mode options
- **Language Settings**: Arabic language support
- **Storage Management**: Monitor and manage downloaded content

### 🔔 **Notifications**
- **Push Notifications**: Stay updated with new content
- **Customizable Alerts**: Choose notification preferences
- **Content Updates**: Get notified about new articles, audio, and videos

### 📞 **Contact & Support**
- **Contact Form**: Direct communication with the team
- **Feedback System**: Submit suggestions and report issues
- **Help Center**: Access to frequently asked questions

---

## 🏗️ Architecture

### 🎯 **Clean Architecture Pattern**
The app follows Clean Architecture principles with clear separation of concerns:

```
📁 lib/
├── 🎯 core/                    # Core functionality
│   ├── di/                     # Dependency injection
│   ├── network/                # Network layer
│   ├── responsive/             # Responsive design
│   ├── settings/               # App settings
│   └── shared/                 # Shared utilities
├── 🚀 features/                # Feature modules
│   ├── sound_library/          # Audio content
│   ├── book_library/           # Digital books
│   ├── video_library/          # Video content
│   ├── advisory_fatwa/         # Q&A system
│   ├── global_search/          # Search functionality
│   ├── home/                   # Home dashboard
│   ├── settings/               # App settings
│   └── contact_us/             # Contact system
└── 📱 main.dart                # App entry point
```

### 🔄 **State Management**
- **BLoC Pattern**: Business Logic Component for state management
- **Event-Driven**: Reactive programming with events and states
- **Separation of Concerns**: Clear separation between UI and business logic

### 🌐 **Network Layer**
- **Dio HTTP Client**: Robust HTTP client with interceptors
- **API Configuration**: Centralized API endpoint management
- **Error Handling**: Comprehensive error handling and retry logic
- **Caching**: Intelligent caching for better performance

### 📱 **Responsive Design**
- **Multi-Platform**: Support for Android, iOS, and Web
- **Adaptive UI**: Responsive design for different screen sizes
- **Device Detection**: Automatic device type detection
- **Scalable Fonts**: Dynamic font scaling based on device

---

## 🚀 Getting Started

### 📋 **Prerequisites**
- Flutter SDK (3.8.1 or higher)
- Dart SDK (3.8.1 or higher)
- Android Studio / VS Code
- Git

### 🔧 **Installation**

1. **Clone the repository**
   ```bash
   git clone https://github.com/oiu85/alnassan-app.git
   cd alnassan-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code**
   ```bash
   flutter packages pub run build_runner build
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

### 🏗️ **Build Instructions**

#### Android
```bash
# Debug build
flutter build apk --debug

# Release build
flutter build apk --release

# App bundle for Play Store
flutter build appbundle --release
```

#### iOS
```bash
# Debug build
flutter build ios --debug

# Release build
flutter build ios --release
```

### 🔑 **Configuration**

1. **API Configuration**: Update `lib/config/api_config.dart` with your actual API endpoints (replace XXXX placeholders)
2. **App Icons**: Replace icons in `assets/icon/` directory
3. **Splash Screen**: Customize splash screen in `lib/features/splash_screen/`

---

## 🔧 API Documentation

### 🌐 **Base URL**
```
https://XXXXXXX.XXXXXXX.XXXXXXX/api/v1
```

### 📚 **Key Endpoints**

#### 🏠 **Home Content**
```http
GET /public/home
```
Returns home dashboard data including important topics and content sections.

#### 📰 **Articles**
```http
GET /public/categories/articles/with-articles
Parameters: category_ids, page, per_page
```
Fetches articles by category with pagination support.

#### 🎵 **Audio Library**
```http
GET /public/categories/sounds
GET /public/categories/sounds/children
Parameters: id, cat_father_id, children_per_page, sounds_per_page
```
Retrieves hierarchical sound categories and audio content.

#### 🎥 **Video Library**
```http
GET /public/videos
Parameters: sort, page, perpage
```
Fetches video content with sorting and pagination.

#### 📚 **Books**
```http
GET /public/books
Parameters: include, page, per_page
```
Retrieves digital books with category information.

#### 🔍 **Global Search**
```http
GET /public/search
Parameters: q, type, page, per_page
```
Unified search across all content types.

#### 💬 **Advisory & Fatwa**
```http
GET /public/categories/advisories
GET /public/advisories/recent
GET /public/advisories/popular
POST /public/advisories
```
Manages Islamic advisory and fatwa system.

#### 📞 **Contact**
```http
POST /public/contact
```
Handles contact form submissions.

### 🔐 **Authentication**
The app primarily uses public endpoints for content access. User-specific features may require authentication tokens in future updates.

**⚠️ Security Note**: Replace `XXXXXXX` placeholders with your actual API endpoints before deployment.

### 🔒 **Security Considerations**
- **API Endpoints**: All sensitive URLs are masked with `XXXXXXX` placeholders
- **Environment Variables**: Use environment variables for sensitive configuration
- **API Keys**: Store API keys securely and never commit them to version control
- **Production URLs**: Replace placeholder URLs with actual production endpoints
- **Authentication**: Implement proper authentication mechanisms for production use

---

## 📁 Project Structure

### 🎯 **Core Module**
```
lib/core/
├── di/                         # Dependency injection setup
├── network/                    # HTTP client and network utilities
├── responsive/                 # Responsive design utilities
├── settings/                   # App settings management
├── shared/                     # Shared widgets and utilities
└── utils/                      # Utility functions and helpers
```

### 🚀 **Feature Modules**
Each feature follows Clean Architecture with this structure:

```
lib/features/[feature_name]/
├── data/                       # Data layer
│   ├── model/                  # Data models and DTOs
│   ├── repository/             # Repository implementations
│   └── services/               # External services
├── domain/                     # Business logic layer
│   ├── model/                  # Domain models
│   ├── repository/             # Repository interfaces
│   └── use_case/               # Business use cases
├── presentation/               # Presentation layer
│   ├── bloc/                   # BLoC state management
│   ├── pages/                  # UI screens
│   └── widgets/                # Reusable UI components
└── di/                         # Feature-specific DI
```

### 📱 **Key Features Breakdown**

#### 🎵 **Sound Library** (`lib/features/sound_library/`)
- Hierarchical category navigation
- Advanced audio player with playlist support
- Download management with progress tracking
- Search and filtering capabilities
- Background playback support

#### 📚 **Book Library** (`lib/features/book_library/`)
- PDF viewer with zoom and navigation
- Download and offline reading capabilities
- Bookmark and note-taking system
- Category-based organization
- Full-text search functionality

#### 🎥 **Video Library** (`lib/features/video_library/`)
- Video streaming and playback
- YouTube integration
- Playlist management
- Offline download support
- Category-based organization

#### 🔍 **Global Search** (`lib/features/global_search/`)
- Unified search across all content types
- Smart filtering by content type
- Search history and suggestions
- Quick access to search results
- Navigation service for deep linking

#### 💬 **Advisory System** (`lib/features/advisory_fatwa/`)
- Question submission system
- Fatwa database and browsing
- Category-based organization
- Response and feedback system
- User interaction management

#### 🏠 **Home Dashboard** (`lib/features/home/`)
- Personalized content curation
- Quick access to popular content
- Recent activity tracking
- Important topics display
- Content carousel and cards

#### ⚙️ **Settings** (`lib/core/settings/`)
- Font size control
- Download path management
- Theme support
- Language settings
- Storage management

---

## 🛠️ Development

### 🎯 **Code Style & Guidelines**
- Follow Flutter/Dart style guidelines
- Use meaningful variable and function names
- Implement proper error handling
- Write comprehensive comments
- Follow Clean Architecture principles
- Use BLoC pattern for state management

### 🧪 **Testing**
```bash
# Run unit tests
flutter test

# Run integration tests
flutter test integration_test/

# Run with coverage
flutter test --coverage
```

### 🔧 **Code Generation**
```bash
# Generate freezed models and JSON serialization
flutter packages pub run build_runner build

# Watch for changes and auto-generate
flutter packages pub run build_runner watch

# Clean generated files
flutter packages pub run build_runner clean
```

### 📝 **Git Workflow**
1. Create feature branch from `dev`
2. Make changes and commit with descriptive messages
3. Create pull request to `dev`
4. Code review and merge
5. Deploy to staging for testing

### 🔍 **Code Quality**
- Use `flutter analyze` to check code quality
- Follow the existing code patterns
- Write tests for new features
- Update documentation when needed

---

## 📦 Dependencies

### 🎯 **Core Dependencies**
- **flutter**: UI framework and SDK
- **flutter_bloc**: State management with BLoC pattern
- **dio**: HTTP client for API communication
- **get_it**: Dependency injection container
- **freezed**: Code generation for immutable classes
- **json_annotation**: JSON serialization annotations
- **equatable**: Value equality for objects

### 🎨 **UI & Design Dependencies**
- **flutter_screenutil**: Responsive design utilities
- **cached_network_image**: Image caching and loading
- **flutter_svg**: SVG image support
- **lottie**: Lottie animations
- **flutter_spinkit**: Loading animations
- **skeletonizer**: Skeleton loading effects
- **flutter_staggered_grid_view**: Staggered grid layouts
- **infinite_scroll_pagination**: Pagination support

### 📱 **Platform Dependencies**
- **permission_handler**: Device permissions management
- **path_provider**: File system access
- **device_info_plus**: Device information
- **share_plus**: Content sharing functionality
- **android_intent_plus**: Android intents
- **url_launcher**: URL launching capabilities

### 🎵 **Media Dependencies**
- **audioplayers**: Audio playback and control
- **youtube_player_flutter**: YouTube video integration
- **syncfusion_flutter_pdfviewer**: PDF viewing and navigation
- **flutter_image_compress**: Image compression
- **voice_note_kit**: Voice recording capabilities

### 🌐 **Network & Data Dependencies**
- **dio**: HTTP client with interceptors
- **pretty_dio_logger**: Network request logging
- **talker_flutter**: Advanced logging and debugging
- **dartz**: Functional programming utilities
- **shared_preferences**: Local data storage
- **sqflite**: SQLite database support

### 🔧 **Development Dependencies**
- **build_runner**: Code generation runner
- **flutter_lints**: Linting rules and analysis
- **flutter_test**: Testing framework
- **freezed**: Code generation for data classes
- **json_serializable**: JSON serialization code generation
- **injectable**: Dependency injection code generation

### 📊 **Utility Dependencies**
- **intl**: Internationalization support
- **uuid**: UUID generation
- **collection**: Collection utilities
- **path**: Path manipulation
- **xml**: XML parsing
- **html**: HTML parsing
- **logger**: Logging utilities

---

## 🚀 Deployment

### 📱 **Android Deployment**

#### 1. **Configure Signing**
```bash
# Create keystore
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

#### 2. **Update build.gradle**
```gradle
android {
    signingConfigs {
        release {
            keyAlias keystoreProperties['keyAlias']
            keyPassword keystoreProperties['keyPassword']
            storeFile keystoreProperties['storeFile']
            storePassword keystoreProperties['storePassword']
        }
    }
    buildTypes {
        release {
            signingConfig signingConfigs.release
        }
    }
}
```

#### 3. **Build Release**
```bash
# Build APK
flutter build apk --release

# Build App Bundle (recommended for Play Store)
flutter build appbundle --release
```

### 🍎 **iOS Deployment**

#### 1. **Configure Xcode Project**
- Open `ios/Runner.xcworkspace` in Xcode
- Set up provisioning profiles
- Configure signing certificates

#### 2. **Build and Archive**
```bash
# Build iOS app
flutter build ios --release

# Archive in Xcode for App Store submission
```

### 🌐 **Web Deployment**

#### 1. **Build Web Version**
```bash
flutter build web --release
```

#### 2. **Deploy to Hosting**
- Upload `build/web/` contents to your hosting service
- Configure web server for SPA routing

### 📦 **Release Checklist**
- [ ] Update version number in `pubspec.yaml`
- [ ] Update changelog
- [ ] Run all tests
- [ ] Build release version
- [ ] Test on multiple devices
- [ ] Upload to app stores
- [ ] Update documentation

---

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

### 🚀 **Getting Started**
1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Make your changes**
4. **Commit your changes**
   ```bash
   git commit -m 'Add amazing feature'
   ```
5. **Push to the branch**
   ```bash
   git push origin feature/amazing-feature
   ```
6. **Open a Pull Request**

### 📋 **Contribution Guidelines**
- Follow the existing code style and patterns
- Write tests for new features
- Update documentation when needed
- Ensure all tests pass
- Follow the commit message convention
- Keep pull requests focused and atomic

### 🐛 **Bug Reports**
When reporting bugs, please include:
- Device information (OS, version, model)
- Flutter version
- Steps to reproduce the issue
- Expected vs actual behavior
- Screenshots or videos if applicable
- Logs if available

### 💡 **Feature Requests**
We welcome feature requests! Please:
- Check existing issues first
- Provide detailed description
- Explain the use case and benefits
- Consider implementation complexity
- Be specific about requirements

### 🔧 **Development Setup**
1. Fork and clone the repository
2. Install dependencies: `flutter pub get`
3. Generate code: `flutter packages pub run build_runner build`
4. Run the app: `flutter run`
5. Make your changes
6. Run tests: `flutter test`
7. Submit a pull request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### 📜 **MIT License Summary**
- ✅ Commercial use allowed
- ✅ Modification allowed
- ✅ Distribution allowed
- ✅ Private use allowed
- ❌ No liability or warranty provided

---

## 📞 Support

### 🆘 **Getting Help**
- **Documentation**: Check this README and inline code comments
- **Issues**: Create an issue on GitHub for bugs or questions
- **Discussions**: Use GitHub Discussions for general questions
- **Email**: Contact the development team directly

### 🐛 **Reporting Issues**
When reporting issues, please provide:
- **Environment**: Flutter version, device info, OS version
- **Steps**: Detailed steps to reproduce the issue
- **Expected**: What should happen
- **Actual**: What actually happens
- **Media**: Screenshots, videos, or logs if helpful

### 💬 **Community**
- Join our community discussions
- Share your experience with the app
- Help other users
- Suggest improvements

### 🔗 **Links**
- **GitHub Repository**: [alnassan-app](https://github.com/oiu85/alnassan-app)
- **GitLab Repository**: [alnassan-app](https://gitlab.com/love14144.mn/alnassan-app)
- **Issue Tracker**: [GitHub Issues](https://github.com/oiu85/alnassan-app/issues)
- **Discussions**: [GitHub Discussions](https://github.com/oiu85/alnassan-app/discussions)
- **Documentation**: [Wiki](https://github.com/oiu85/alnassan-app/wiki)

---

## 🏆 Acknowledgments

### 👥 **Contributors**
- **Abdullah Alatrash** ([@oiu85](https://github.com/oiu85)) - Lead Developer & Project Maintainer
  - Flutter Developer with 2+ years experience
  - Firebase, PHP, Laravel API integration specialist
  - [GitHub](https://github.com/oiu85) | [GitLab](https://gitlab.com/love14144.mn) | [Facebook](https://www.facebook.com/share/18p8PYoVDw/) | [Instagram](https://www.instagram.com/85oiu?igsh=MTF3bTR3ZWNveDEzYg==)

Thank you to all contributors who have helped make this project better!

### 🙏 **Special Thanks**
- **Sheikh Ahmed Al-Nassan** for providing the Islamic content and guidance
- **Flutter Team** for the amazing framework
- **Open Source Community** for the excellent packages and tools
- **Beta Testers** for their valuable feedback

### 📚 **Resources**
- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [BLoC Pattern](https://bloclibrary.dev/)
- [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

---

<div align="center">

**Made with ❤️ for the Islamic community**

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/oiu85)
[![GitLab](https://img.shields.io/badge/GitLab-FCA121?style=for-the-badge&logo=gitlab&logoColor=white)](https://gitlab.com/love14144.mn)
[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)

**⭐ Star this repository if you found it helpful!**

</div>
