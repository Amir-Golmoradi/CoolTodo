import 'package:flutter/material.dart';
import 'package:flutter_todo/constant/theme.dart';

class LightTheme {
  static final Color? actionBtn =
      ThemeData.light().floatingActionButtonTheme.backgroundColor;
  static final Color? navbar =
      ThemeData.light().bottomNavigationBarTheme.backgroundColor;
  static final abarLight = lightMode.appBarTheme.backgroundColor;
}

class DarkTheme {
  static final Color? actionBtn =
      ThemeData.dark().floatingActionButtonTheme.backgroundColor;

  static final Color? navbar =
      ThemeData.dark().bottomNavigationBarTheme.backgroundColor;

  static final Color? abarDark = darkMode.appBarTheme.backgroundColor;
}
