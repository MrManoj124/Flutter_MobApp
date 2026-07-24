import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // ── Display — Bebas Neue ───────────────────────
  static TextStyle wordmark({double size = 36, Color? color}) =>
      GoogleFonts.bebasNeue(
        fontSize: size,
        letterSpacing: 6,
        color: color ?? AppColors.text,
        height: 1.0,
      );

  static TextStyle display({double size = 22, Color? color}) =>
      GoogleFonts.bebasNeue(
        fontSize: size,
        letterSpacing: 3,
        color: color ?? AppColors.text,
        height: 1.0,
      );

  static TextStyle cardTitle({double size = 16, Color? color}) =>
      GoogleFonts.bebasNeue(
        fontSize: size,
        letterSpacing: 2,
        color: color ?? AppColors.text,
        height: 1.0,
      );

  static TextStyle statNumber({double size = 18, Color? color}) =>
      GoogleFonts.bebasNeue(
        fontSize: size,
        letterSpacing: 1,
        color: color ?? AppColors.gold,
        height: 1.0,
      );

  static TextStyle price({double size = 18, Color? color}) =>
      GoogleFonts.bebasNeue(
        fontSize: size,
        letterSpacing: 1,
        color: color ?? AppColors.gold,
        height: 1.0,
      );

  // ── Body — DM Sans ─────────────────────────────
  static TextStyle eyebrow({double size = 9, Color? color}) =>
      GoogleFonts.dmSans(
        fontSize: size,
        fontWeight: FontWeight.w500,
        letterSpacing: 2.5,
        color: color ?? AppColors.gold,
      );

  static TextStyle body({double size = 12, Color? color, FontWeight? weight}) =>
      GoogleFonts.dmSans(
        fontSize: size,
        fontWeight: weight ?? FontWeight.w300,
        color: color ?? AppColors.textMuted,
        letterSpacing: 0.3,
      );

  static TextStyle bodyMedium({double size = 12, Color? color}) =>
      GoogleFonts.dmSans(
        fontSize: size,
        fontWeight: FontWeight.w500,
        color: color ?? AppColors.text,
        letterSpacing: 0.2,
      );

  static TextStyle label({double size = 8, Color? color}) =>
      GoogleFonts.dmSans(
        fontSize: size,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
        color: color ?? AppColors.textMuted,
      );

  static TextStyle button({double size = 9, Color? color}) =>
      GoogleFonts.dmSans(
        fontSize: size,
        fontWeight: FontWeight.w600,
        letterSpacing: 2,
        color: color ?? AppColors.black,
      );

  static TextStyle navLabel({Color? color}) =>
      GoogleFonts.dmSans(
        fontSize: 7,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
        color: color ?? AppColors.textDim,
      );

  static TextStyle menuItem({Color? color}) =>
      GoogleFonts.dmSans(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: color ?? AppColors.text,
        letterSpacing: 0.3,
      );
}
