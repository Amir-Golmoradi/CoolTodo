import 'package:flutter/material.dart';

class LightTheme {
  static final Color? actionBtn =
      ThemeData.light().floatingActionButtonTheme.backgroundColor;
  static final Color? navbar =
      ThemeData.light().bottomNavigationBarTheme.backgroundColor;
  static final Color appbar = ThemeData.light().appBarTheme.backgroundColor;
}

class DarkTheme {
  static final Color? actionBtn =
      ThemeData.dark().floatingActionButtonTheme.backgroundColor;

  static final Color? navbar =
      ThemeData.dark().bottomNavigationBarTheme.backgroundColor;

  static final Color? appbar = ThemeData.dark().appBarTheme.backgroundColor;
}
