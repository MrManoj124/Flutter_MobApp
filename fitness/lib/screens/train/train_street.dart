import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../../data/mock_data.dart';
import '../../models/models.dart';
import '../../widgets/luxury_widgets.dart';

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

                  const SizedBox(height:20),
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

             // ── Footer ───────────────────────────────────
            Container(
              color: AppColors.surface,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    program.isActive
                        ? 'Next · Deadlift + Romanian DL'
                        : 'Not started',
                    style: AppTextStyles.body(size: 10),
                  ),
                   program.isActive
                      ? GoldButton(
                          label: 'Resume',
                          verticalPadding: 6,
                          horizontalPadding: 14,
                          onTap: () => _showSessionDetail(context, program),
                        )
                      : GoldGhostButton(
                          label: 'Begin',
                          verticalPadding: 6,
                          horizontalPadding: 14,
                          onTap: () {},
                        ),
                    ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSessionDetail(BuildContext context, Program program) {
    if (program.sessions.isEmpty) return;
    final session = program.sessions[0];

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => _SessionDetailSheet(session: session),
    );
  }
}

// ────────────────────────────────────────────────────────────────
// SESSION DETAIL BOTTOM SHEET
// ────────────────────────────────────────────────────────────────
class _SessionDetailSheet extends StatelessWidget {
  final WorkoutSession session;
  const _SessionDetailSheet({required this.session});

@override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Handle
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 36, height: 3,
            decoration: BoxDecoration(
              color: AppColors.goldBorder,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 16),

          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(session.focus.toUpperCase(),
                          style: AppTextStyles.eyebrow(size: 8)),
                      const SizedBox(height: 4),
                      Text(session.name,
                          style: AppTextStyles.cardTitle(size: 22)),
                      const SizedBox(height: 3),
                      Text(
                        '${session.exercises.length} exercises · ${session.duration}',
                        style: AppTextStyles.body(size: 11),
                      ),
                    ],
                  ),
                ),
                GoldPill('Day ${session.dayNumber}'),
              ],
            ),
          ),

          const SizedBox(height: 12),
          GoldHairline(
              margin: const EdgeInsets.symmetric(horizontal: 20)),
          const SizedBox(height: 4),

           // Exercise list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: session.exercises.length,
              itemBuilder: (_, i) {
                final ex = session.exercises[i];
                return Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 4),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 12),
                  decoration: BoxDecoration(
                    color: ex.completed
                        ? AppColors.goldDim
                        : AppColors.surface2,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: ex.completed
                          ? AppColors.goldBorder
                          : const Color(0x0AFFFFFF),
                    ),
                    ),
                  child: Row(
                    children: [
                      Container(
                        width: 22, height: 22,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ex.completed
                              ? AppColors.gold
                              : Colors.transparent,
                          border: Border.all(
                            color: ex.completed
                                ? AppColors.gold
                                : AppColors.goldBorder,
                          ),
                          ),
                        child: ex.completed
                            ? const Icon(Icons.check,
                                color: AppColors.black, size: 12)
                            : Center(
                                child: Text('${i + 1}',
                                    style: AppTextStyles.label(
                                        size: 8,
                                        color: AppColors.textMuted)),
                              ),

                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(ex.name,
                            style: AppTextStyles.bodyMedium(
                              size: 12,
                              color: ex.completed
                                  ? AppColors.gold
                                  : AppColors.text,
                            )),
                      ),
                       Text('${ex.sets}×${ex.reps}',
                          style: AppTextStyles.label(size: 9)),
                      const SizedBox(width: 8),
                      Text(ex.rest,
                          style: AppTextStyles.label(
                              size: 9, color: AppColors.textDim)),
                    ],
                    ),
                );
              },
            ),
          ),

           // Start CTA
          Padding(
            padding:
                const EdgeInsets.fromLTRB(20, 8, 20, 20),
            child: SizedBox(
              width: double.infinity,
              child: GoldButton(
                label: 'Start Session →',
                verticalPadding: 14,
                fontSize: 11,
                onTap: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}