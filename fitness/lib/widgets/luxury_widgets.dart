import 'package:flutter/material.dart';
import '../theme/theme.dart';

// ────────────────────────────────────────────────────────────────
// HAIRLINE DIVIDER
// ────────────────────────────────────────────────────────────────
class GoldHairline extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  const GoldHairline({super.key, this.margin = const EdgeInsets.symmetric(horizontal: 16)});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 1,
      decoration: const BoxDecoration(gradient: AppColors.hairlineGradient),
    );
  }
}

