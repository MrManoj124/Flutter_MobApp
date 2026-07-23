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

// ────────────────────────────────────────────────────────────────
// LUXURY CARD
// ────────────────────────────────────────────────────────────────
class LuxCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry? padding;
  final Color? background;
  final Gradient? gradient;
  final double borderRadius;
  final bool showTopSheen;

  const LuxCard({
    super.key,
    required this.child,
    this.margin = const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    this.padding,
    this.background,
    this.gradient,
    this.borderRadius = 12,
    this.showTopSheen = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: gradient == null ? (background ?? AppColors.surface) : null,
        gradient: gradient,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: const Color(0x0FFFFFFF)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Stack(
          children: [
            if (padding != null)
              Padding(padding: padding!, child: child)
            else
              child,
            if (showTopSheen)
              Positioned(
                top: 0, left: 0, right: 0,
                child: Container(
                  height: 1,
                  decoration: const BoxDecoration(gradient: AppColors.hairlineGradient),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// ────────────────────────────────────────────────────────────────
// STAT STRIP
// ────────────────────────────────────────────────────────────────
class StatStrip extends StatelessWidget {
  final List<StatCell> cells;
  const StatStrip({super.key, required this.cells});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.goldBorder),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: cells.asMap().entries.map((e) {
            final isLast = e.key == cells.length - 1;
            return Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: isLast
                      ? null
                      : const Border(
                          right: BorderSide(color: AppColors.goldBorder),
                        ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: e.value,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class StatCell extends StatelessWidget {
  final String value;
  final String label;
  const StatCell({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(value, style: AppTextStyles.statNumber(size: 18)),
        const SizedBox(height: 2),
        Text(label.toUpperCase(), style: AppTextStyles.label()),
      ],
    );
  }
}

