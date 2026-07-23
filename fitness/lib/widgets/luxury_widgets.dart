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

// ────────────────────────────────────────────────────────────────
// GOLD PILL TAG
// ────────────────────────────────────────────────────────────────
class GoldPill extends StatelessWidget {
  final String label;
  final bool dim;
  const GoldPill(this.label, {super.key, this.dim = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: dim ? Colors.transparent : AppColors.goldDim,
        border: Border.all(
          color: dim ? AppColors.textDim : AppColors.goldBorder,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label.toUpperCase(),
        style: AppTextStyles.label(
          size: 7.5,
          color: dim ? AppColors.textMuted : AppColors.gold,
        ),
      ),
    );
  }
}

