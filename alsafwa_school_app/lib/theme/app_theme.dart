import 'package:flutter/material.dart';
class AppTheme {
  static const Color primary = Color(0xFF0B3D5F);
  static const Color secondary = Color(0xFFC9A227);
  static const Color background = Color(0xFFF4F6F8);
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primary,
    scaffoldBackgroundColor: background,
    colorScheme: const ColorScheme.light(primary: primary, secondary: secondary, surface: Colors.white),
    appBarTheme: const AppBarTheme(backgroundColor: primary, foregroundColor: Colors.white, centerTitle: true, titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
    cardTheme: CardThemeData(color: Colors.white, elevation: 2, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14)))),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: primary, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20))),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: primary, foregroundColor: Colors.white),
  );
}
