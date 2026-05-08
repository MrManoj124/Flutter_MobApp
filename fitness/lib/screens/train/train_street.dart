import 'package:flutter/material.dart';
// import '../../theme/theme.dart';
// import '../../data/mock_data.dart';
// import '../../models/models.dart';
// import '../../widgets/luxury_widgets.dart';

class TrainScreen extends StatelessWidget {
  const TrainScreen({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
               // ── Header ──────────────────────────────────
              ScreenHeader(
                eyebrow: 'Your Programs',
                title: 'Train',
                trailing: AvatarRing(emoji: '🔥'),
              ),
              GoldHairline(),
              const SizedBox(height: 16),

              // ── Program cards ────────────────────────────
              ...mockPrograms.map((p) => Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, bottom: 12),
                    child: _ProgramCard(program: p),
                  )),

                  const SizedBox(height:20);
                  ],
          ),
        ),
      ),
    );
  }
}

class _ProgramCard extends StatelessWidget {
  final Program program;
  const _ProgramCard({required this.program});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0x0FFFFFFF)),
          borderRadius: BorderRadius.circular(12),
        ),
         child: Column(
          children: [
            // ── Coloured hero ────────────────────────────
             Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(gradient: program.headerGradient),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${program.level} · ${program.daysPerWeek}'
                                      .toUpperCase(),
                                  style: AppTextStyles.eyebrow(size: 8),
                                ),
                                const SizedBox(height: 4),
                                Text(program.name,
                                    style:
                                        AppTextStyles.cardTitle(size: 20)),
                                const SizedBox(height: 3),
                                Text(program.description,
                                    style: AppTextStyles.body(size: 11)),
                              ],
                               ),
                          ),
                          const SizedBox(width: 8),
                          GoldPill(
                            program.isActive
                                ? 'Active'
                                : '${program.totalWeeks} Wks',
                            dim: !program.isActive,
                          ),
                        ],
                      ),
                      if (program.isActive) ...[
                        const SizedBox(height: 12),
                        GoldProgressBar(
                          value: program.progress,
                          leftLabel:
                              'Week ${program.currentWeek} of ${program.totalWeeks}',
                          rightLabel:
                              '${(program.progress * 100).round()}%',
                        ),
                         ],
                    ],
                  ),
                ),
                // Top sheen
                Positioned(
                  top: 0, left: 0, right: 0,
                  child: Container(
                    height: 1,
                    decoration: const BoxDecoration(
                        gradient: AppColors.hairlineGradient),
                  ),
                ),
              ],
            ),