import 'package:flutter/material.dart';

/// Palette black and white avec dominance du blanc.
abstract final class LeClochardColors {
  static const Color black = Color(0xFF000000);
  static const Color charcoal = Color(0xFF1A1A1A);
  static const Color white = Color(0xFFFFFFFF);
  static const Color offWhite = Color(0xFFFAFAFA);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color lightGrey = Color(0xFFEEEEEE);
  static const Color outline = Color(0xFFE0E0E0);
}

/// Theme black and white de la plateforme.
abstract final class LeClochardTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        primary: LeClochardColors.black,
        onPrimary: LeClochardColors.white,
        secondary: LeClochardColors.charcoal,
        onSecondary: LeClochardColors.white,
        surface: LeClochardColors.white,
        onSurface: LeClochardColors.black,
        error: LeClochardColors.black,
        onError: LeClochardColors.white,
        outline: LeClochardColors.outline,
      ),
      scaffoldBackgroundColor: LeClochardColors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: LeClochardColors.white,
        foregroundColor: LeClochardColors.black,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: LeClochardColors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: LeClochardColors.offWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: LeClochardColors.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: LeClochardColors.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: LeClochardColors.black, width: 1.5),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: LeClochardColors.black,
          foregroundColor: LeClochardColors.white,
          minimumSize: const Size.fromHeight(48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: LeClochardColors.black,
          minimumSize: const Size.fromHeight(48),
          side: const BorderSide(color: LeClochardColors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: LeClochardColors.black,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: LeClochardColors.outline,
        thickness: 1,
      ),
      cardTheme: const CardThemeData(
        color: LeClochardColors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: LeClochardColors.outline),
        ),
      ),
    );
  }
}