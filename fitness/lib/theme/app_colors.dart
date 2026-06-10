import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

// ── Core surfaces ──────────────────────────────
  static const Color black        = Color(0xFF080808);
  static const Color surface      = Color(0xFF111111);
  static const Color surface2     = Color(0xFF181818);
  static const Color surface3     = Color(0xFF202020);

  // ── Gold palette ───────────────────────────────
  static const Color gold         = Color(0xFFC9A84C);
  static const Color goldLight    = Color(0xFFE8C97A);
  static const Color goldDeep     = Color(0xFF8B6914);
  static const Color goldDim      = Color(0x2EC9A84C);   // 18% alpha
  static const Color goldBorder   = Color(0x47C9A84C);   // 28% alpha

  // ── Text ──────────────────────────────────────
  static const Color text         = Color(0xFFF0EDE8);
  static const Color textMuted    = Color(0xFF7A7570);
  static const Color textDim      = Color(0xFF3A3530);

  // ── Semantic ──────────────────────────────────
  static const Color danger       = Color(0xFF8B3030);
  static const Color dangerDim    = Color(0x1FB43030);

  // ── Gradients ─────────────────────────────────
  static const LinearGradient goldGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [goldLight, gold, goldDeep],
    stops: [0.0, 0.5, 1.0],
  );

  static const LinearGradient goldHorizontal = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [goldDeep, goldLight],
  );



}
