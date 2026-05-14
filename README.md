# Flutter Learning Journey

I'm learning Flutter from scratch and this repository is where I practice,
experiment, and build things as I go. Not a course project - just me figuring
things out step by step.

---

## What I've covered so far

- Setting up Flutter and understanding project structure
- MaterialApp, Scaffold, AppBar
- Layout widgets - Row, Column, Container, Stack
- Lists and Grids - ListView, GridView
- Stateful vs Stateless widgets
- Navigation between screens using Named Routes
- Passing data between screens
- Working with forms and text fields
- Asset management and loading images
- Building multi-screen apps
- Card Widget and Material Design UI
- Building Profile Cards
- Building Product Cards
- Creating Social Media Post UI
- Stack & Positioned for overlay layouts
- Spacer and advanced UI alignment
- Snackbar and temporary user feedback
- AlertDialog and popup interactions
- Confirmation flow handling
- Drawer widget with reusable navigation handling
- BottomNavigationBar and tab-based navigation
- StatefulWidget driven screen switching
- Dynamic UI updates using setState()
- Multi-screen architecture using separate screen files
- State-driven navigation patterns
- TabBar and TabBarView navigation
- Swipeable tab interfaces
- DefaultTabController based navigation
- Expanded widget for responsive space distribution
- Flexible widget for adaptive layouts 
- Responsive Row & Column layouts 
- Understanding proportional sizing using flex
- Responsive UI using MediaQuery
- Screen width & height based adaptive sizing
- Responsive text scaling
- Orientation handling (Portrait & Landscape)
- Scroll-safe layouts using SingleChildScrollView
- Reusable responsive widgets
- App-wide theming using ThemeData
- Centralized color system using AppColors
- Reusable button and card themes
- Material 3 theming
- Global typography using TextTheme
- Modular theme architecture using app_theme.dart
- Light and dark theme architecture
- ThemeMode based UI styling
- Adaptive theming using Brightness.dark
- Google Fonts integration using google_fonts
- Typography hierarchy using TextTheme
- Centralized font styling with Theme.of(context).textTheme
- Reusable typography system using headline, body, and label styles
- LayoutBuilder for adaptive UI rendering
- Responsive breakpoints for mobile, tablet, and desktop layouts
- Dynamic GridView layouts using crossAxisCount
- Responsive grid systems with GridView.builder
- Constraint-based UI adaptation using maxWidth
- Hero widget for shared element transitions
- Animated screen navigation using Hero animations
- Gesture-driven UI interactions using GestureDetector
- Smooth image expansion transitions between screens

---

## How this repo is structured

Screens are organized inside `lib/screens` and responsive UI practice components are inside `lib/responsive`.

Reusable widgets, theme configuration, and UI sections are separated into modular files as the project grows. `lib/main.dart` acts as the application entry point and handles routing/navigation.

---

## Why I'm doing this

I want to get genuinely good at Flutter - not just follow tutorials but actually
understand why things work the way they do. This repo documents my real learning process as I build and improve with Flutter.

---

## Stack

- Flutter & Dart
- VS Code
- Android emulator for testing
- Material 3 Design System

---

## Screenshots

### Product Card + Social Post Card
E-commerce style Product Card with Stack and Positioned favorite icon overlay, and an Instagram-style Social Post Card with CircleAvatar profile header, action row using Spacer for bookmark alignment, and 120 likes counter.
![Product Card + Social Post Card](screenshots/product_card_plus_post_card.jpeg)

### AlertDialog + Snackbar Flow
Shows a real-world user interaction flow using AlertDialog confirmation and Snackbar feedback after deletion action.

![AlertDialog + Snackbar](screenshots/alert_dialog_snackbar_flow.jpeg)

### AppBar Actions
Demonstrates real-world AppBar interaction patterns including search, notifications, profile, and a three-dot PopupMenuButton with dynamic Snackbar feedback on every action.

![AppBar Actions](screenshots/appbar_actions.jpeg)

### Drawer Widget
A fully functional navigation Drawer with a gradient profile header using UserAccountsDrawerHeader, ListTile menu items with icons, a Divider separator, and floating Snackbar feedback on every tap.

![Drawer Widget](screenshots/drawer_widget.jpeg)

### Bottom Navigation Bar
A multi-screen Bottom Navigation system built using StatefulWidget, setState(), and dynamic screen rendering with selectedIndex. Includes separate screen architecture, active tab highlighting, and production-style BottomNavigationBar behavior.

![Bottom Navigation Bar](screenshots/bottom_navigation_bar.jpeg)

### TabBar + TabBarView
Top tab navigation built using DefaultTabController, TabBar, and TabBarView with swipe gestures, active tab indicators, custom tab styling, and separate screen architecture for scalable UI management.

![TabBar + TabBarView](screenshots/tabbar_navigation.jpeg)

### Expanded + Flexible Widget
Responsive Flutter layouts built using Expanded, Flexible, Row, and Column. Demonstrates proportional space distribution using flex values, adaptive text behavior, and responsive UI structure fundamentals.

![Expanded + Flexible](screenshots/expanded_flexible.jpeg)

### MediaQuery + Responsive Layouts
Built responsive Flutter layouts using MediaQuery for adaptive width, height, spacing, and text scaling across multiple device sizes. Includes responsive cards, buttons, reusable widgets, and scroll-safe UI handling using SingleChildScrollView.

![MediaQuery + Responsive Layouts](screenshots/media_query.jpeg)

### Orientation Handling
Implemented portrait and landscape adaptive layouts using MediaQuery orientation detection. UI dynamically switches between Column and Row layouts for better responsiveness across screen rotations.

![Orientation Handling](screenshots/orientation.jpeg)

### ThemeData + Custom Themes
Built a centralized Flutter theming system using ThemeData, custom AppColors, reusable button themes, card themes, typography styling, and Material 3 design. Includes modular theme architecture using app_theme.dart and app_colors.dart for scalable UI consistency.

![ThemeData + Custom Themes](screenshots/theme_data_custom_colors.jpeg)

### Dark Mode Toggle
Implemented dynamic light and dark theme architecture using ThemeMode, custom darkTheme configuration, adaptive UI styling, and centralized theme management with AppTheme.

![Dark Mode Toggle](screenshots/dark_mode_toggle.jpeg)

### Custom Fonts + Text Themes
Built a centralized typography system using Flutter `TextTheme` with reusable headline, body, and button styles. Implemented custom font integration, theme-based text styling, and dynamic light/dark mode typography for consistent UI design across the app.

![Custom Fonts + Text Themes](screenshots/custom_fonts_themes.jpeg)

### LayoutBuilder + Responsive Grid
Built adaptive Flutter layouts using LayoutBuilder and constraint-based rendering. Implemented responsive breakpoints for mobile, tablet, and large screens with dynamically changing GridView column layouts using crossAxisCount and GridView.builder.

![LayoutBuilder + Responsive Grid](screenshots/layoutbuilder_responsive_grid.jpeg)

### Hero Animation
Implemented Flutter Hero animations for smooth shared element transitions between screens. Built interactive image navigation using GestureDetector, Navigator.push, and matching Hero tags to create production-style animated screen transitions.

![Hero Animation](screenshots/hero_animation.jpeg)

---


## Current Focus

Currently learning:
- AnimatedContainer in Flutter
- Implicit animations
- State-driven UI transitions

---

Updated as I learn.
