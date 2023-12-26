import 'package:flutter/material.dart';
import 'package:flutter_todo/constant/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

ThemeData lightMode = ThemeData(
  //! AppBar theme configuration
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: LightMode.rosyBrown,
    titleTextStyle: TextStyle(
        fontSize: 18.sp, fontWeight: FontWeight.w700, color: DarkMode.scLight),
  ),

  /// Brightness level
  brightness: Brightness.light,

  // Color scheme for light mode
  colorScheme: const ColorScheme.light(
    background: LightMode.aliceBlue,
    primary: Color(0xFF101c2e),
    onPrimary: Color(0xFF242131),
    secondary: Color(0xFF4b4f5f),
  ),

  cardTheme: const CardTheme(
    color: Colors.orange,
  ),

  // Floating action button theme for light mode
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: DarkMode.rasinBlack,
  ),

//  Bottom Navigation bar theme for light mode
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: LightMode.navbarLight),
);

ThemeData darkMode = ThemeData(
  /// Brightness level
  brightness: Brightness.dark,

  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: LightMode.snowyWhite),
    backgroundColor: DarkMode.rasinBlack,
  ),
  cardTheme: const CardTheme(
    color: LightMode.snowyWhite,
  ),

  colorScheme: const ColorScheme.dark(
    background: DarkMode.darkBlack,
    primary: Color(0xFF7F74A1),
    onPrimary: Color(0xFF7F75A9),
    secondary: Color(0xFF5A5F72),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: LightMode.snowyWhite, // Raisin Black
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: DarkMode.navbarDark,
  ),
);
