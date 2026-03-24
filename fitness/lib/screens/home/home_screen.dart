import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../../data/mock_data.dart';
import '../../widgets/luxury_widgets.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    final user = mockUser;
    final session = todaySession;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Hero header ──────────────────────────────
              ScreenHeader(
                eyebrow: 'Good Morning',
                title: user.name,
                subtitle: const GoldPill('Elite Member'),
                trailing: AvatarRing(emoji: '💪'),
              ),
               GoldHairline(),

              const SizedBox(height: 14),

               // ── Stats strip ──────────────────────────────
              StatStrip(cells: [
                StatCell(value: '${user.streakDays}', label: 'Streak'),
                StatCell(value: '${user.todayKcal}', label: 'Kcal'),
                StatCell(value: '${user.weeklyGoalPercent}%', label: 'Goal'),
              ]),
              const SizedBox(height: 14),

               // ── Today's session card ─────────────────────
              LuxCard(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Padding(
                  padding: const EdgeInsets.all(14),
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
                                Text('Today\'s Session'.toUpperCase(),
                                    style: AppTextStyles.eyebrow()),
                                const SizedBox(height: 4),
                                Text(session.name,
                                    style: AppTextStyles.cardTitle(size: 18)),
                                const SizedBox(height: 3),
                                Text(
                                  '${session.focus} · ${session.duration}',
                                  style: AppTextStyles.body(),
                                ),
                              ],
                            ),
                          ), 
                          GoldPill('Day ${session.dayNumber}'),
                        ],
                        ),
                      const SizedBox(height: 12),
                      GoldProgressBar(
                        value: session.progress,
                        leftLabel: 'Progress',
                        rightLabel:
                            '${session.completedCount} / ${session.exercises.length}',
                      ),
                      const SizedBox(height: 12),
                      GoldButton(
                        label: 'Continue →',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // ── Section header ──────────────
              Padding(
                padding : const EdgeInsets.fromLTRB(16, 4, 16, 8),
                child : Text('Featured'.toLowerCase(),
                    style: AppTextStyles.eyebrow()),
                )
              )
    )    
  }
}