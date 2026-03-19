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
    )    
  }
}