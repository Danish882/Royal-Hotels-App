// 1. Flutter ka basic library import karo (Colors class use karne ke liye)
import 'package:flutter/material.dart';

// 2. class banai jisme saare colors static (seedha accessible) honge
class AppColors {
  // ---------- LIME FAMILY (Brand Colors - Prompt se exact copy) ----------
  // Main CTA buttons, logo, highlights (Lime-400)
  static const Color limePrimary = Color(0xFFA3E635);

  // Pressed/Hover state (Lime-500)
  static const Color limePrimaryHover = Color(0xFF84CC16);

  // Secondary highlights (Lime-300)
  static const Color limeLight = Color(0xFFBEF264);

  // Gradient accents (Lime-200)
  static const Color limeSoft = Color(0xFFD9F99D);

  // Subtle chips/badges backgrounds (Lime-100)
  static const Color limePale = Color(0xFFECFCCB);

  // Faint tinted backgrounds (Lime-50)
  static const Color limeTint = Color(0xFFF7FEE7);

  // ---------- NEUTRALS (Black, White, Grays) ----------
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color gray50 = Color(0xFFF9FAFB);
  static const Color gray100 = Color(0xFFF3F4F6);
  static const Color gray200 = Color(0xFFE5E7EB);
  static const Color gray300 = Color(0xFFD1D5DB);
  static const Color gray400 = Color(0xFF9CA3AF);
  static const Color gray500 = Color(0xFF6B7280);
  static const Color gray600 = Color(0xFF4B5563);
  static const Color gray700 = Color(0xFF374151);
  static const Color gray800 = Color(0xFF1F2937); // Dark navbar/footer
  static const Color gray900 = Color(0xFF111827); // Darkest hero backgrounds

  // ---------- WARM BACKGROUND (Cream) ----------
  // Section backgrounds behind hotel list / facilities
  static const Color creamBackground = Color(0xFFF7F0EB);

  // ---------- SEMANTIC COLORS (Errors / Ratings) ----------
  static const Color errorRed = Color(0xFFDC2626); // Red-600
  static const Color errorRedLight = Color(0xFFFEF2F2); // Red-50
  static const Color ratingYellow = Color(0xFFFBBF24); // Yellow-400
}
