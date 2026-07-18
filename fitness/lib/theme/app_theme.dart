import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.black,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.gold,
          secondary: AppColors.goldLight,
          surface: AppColors.surface,
          onPrimary: AppColors.black,
          onSecondary: AppColors.black,
          onSurface: AppColors.text,
        ),
        textTheme: GoogleFonts.dmSansTextTheme(ThemeData.dark().textTheme).copyWith(
          bodyLarge: const TextStyle(color: AppColors.text),
          bodyMedium: const TextStyle(color: AppColors.textMuted),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.black,
          foregroundColor: AppColors.text,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
}