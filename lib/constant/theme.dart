import "package:flutter/material.dart";
import "package:flutter_todo/constant/colors.dart";

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  ),
  colorScheme: ColorScheme.light(
    background: Colors.grey[400]!, // backGroundColor
    primary: Colors.grey[400]!, // Notes Card 
    onPrimary: DarkMode.darkJet, // On Notes Card
    secondary: Colors.grey[400]!, // Action Button
    onSecondary: DarkMode.darkJet,
    surface: DarkMode.removeColor,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.grey[200]!),
  ),
  checkboxTheme: const CheckboxThemeData(
    fillColor: MaterialStatePropertyAll(Color(0xFFC4C4C5)),
    checkColor: MaterialStatePropertyAll(DarkMode.erieBlack),
  ),
  colorScheme: ColorScheme.dark(
    background: DarkMode.erieBlack,
    onBackground: Colors.grey[500]!,
    primary: Colors.grey[900]!, // Task Cards
    onPrimary: Colors.grey[300]!, // On Task Cards
    secondary: const Color(0xFF2B2B2B), // Floating Button
    onSecondary: DarkMode.darkJet,
    surface: DarkMode.removeColor,
  ),
);
