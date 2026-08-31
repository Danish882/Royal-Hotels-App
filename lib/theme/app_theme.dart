import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.limePrimary,
      onPrimary: AppColors.white,
      secondary: AppColors.limeLight,
      onSecondary: AppColors.black,
      error: AppColors.errorRed,
      onError: AppColors.white,
      surface: AppColors.creamBackground,
      onSurface: AppColors.gray900,
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.gray900,
      foregroundColor: AppColors.white,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.limePrimary,
        foregroundColor: AppColors.white,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ), // hortizontal : left/right, vertical : top/bottom
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.gray50,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        // When Click On Input Field
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.limePrimary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.errorRed, width: 2),
      ),
    ),
  );
}
