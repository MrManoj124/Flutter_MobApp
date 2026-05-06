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