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

    
}