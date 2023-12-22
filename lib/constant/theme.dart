import 'package:flutter/material.dart';
import 'package:flutter_todo/constant/colors.dart';

/// Define the light theme properties
ThemeData lightTheme = ThemeData(
  /// AppBar theme configuration
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 245, 243, 243), // RosyBrown
    elevation: 0,
  ),

  /// Brightness level
  brightness: Brightness.light,

  /// Color scheme for light mode
  colorScheme: const ColorScheme.light(
    background: LightMode.aliceBlue, // Alice Blue
  ),

  /// Floating action button theme for light mode
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: DarkMode.rasinBlack, // Raisin Black
  ),

// Bottom Navigation bar theme for light mode
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: LightMode.navbarLight,
  ),
);

/// Define the dark theme properties
ThemeData darkTheme = ThemeData(
  /// Brightness level
  brightness: Brightness.dark,

  /// AppBar theme configuration for dark mode
  appBarTheme: const AppBarTheme(
    backgroundColor: DarkMode.rasinBlack, // Raisin Black
    elevation: 0,
  ),

  /// Color scheme for dark mode
  colorScheme: const ColorScheme.dark(
    background: DarkMode.darkBlack, // Snowy White
  ),

  /// Floating action button theme for dark mode
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: LightMode.snowyWhite, // Raisin Black
  ),

  /// Bottom Navigation bar theme for dark mode
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: DarkMode.navbarDark,
  ),
);
