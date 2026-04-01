import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../../data/mock_data.dart';
import '../../widgets/luxury_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    final user = mockUser;
    
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // ── Profile hero ───
              Stack(
                children: [
                  // Ambient glow
                  Positioned(
                    top: 0, left: 0, right: 0,
                    child: Container(
                      height: 180,
                       decoration: BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.topCenter,
                          radius: 1.2,
                          colors: [
                            AppColors.gold.withOpacity(0.06),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 20),
                    child: Column(
                      children: [
                        // Big avatar
                        Container(
                          width: 72, height: 72,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.surface2,
                            border: Border.all(
                              color: AppColors.goldBorder, width: 1.5),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.gold.withOpacity(0.15),
                                blurRadius: 24,
                              )
                            ],
                          ),
                          child: const Center(
                            child: Text('💪',
                                style: TextStyle(fontSize: 30)),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(user.name.toUpperCase(),
                            style: AppTextStyles.display(size: 24)),
                            const SizedBox(height: 4),
                        Text(
                          '${user.tier} · Since ${user.memberSince}'
                              .toUpperCase(),
                          style: AppTextStyles.eyebrow(size: 9),
                        ),
                        const SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GoldButton(
                              label: 'Edit Profile',
                              verticalPadding: 8,
                              onTap: () {},
                            ),
                            const SizedBox(width: 10),
                            GoldGhostButton(
                              label: 'Share',
                              verticalPadding: 8,
                              onTap: () {},
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              GoldHairline(),
              const SizedBox(height: 14),

               // ── Stats ────────────────────────────────────
              StatStrip(cells: [
                StatCell(
                    value: '${user.totalSessions}', label: 'Sessions'),
                StatCell(
                    value: '${user.streakDays}', label: 'Streak'),
                StatCell(
                    value:
                        '${(user.totalKcal / 1000).toStringAsFixed(1)}k',
                    label: 'Kcal'),
              ]),

              const SizeBox(height : 16),

              //Menu items
              _MenuItem(
                emoji: '📊',
                label: 'Progress & Analytics',
                badge: 'New',
                onTap: () {},
              )
              _MenuItem(
                emoji: '🏅',
                label: 'Achievements',
                badge: '12',
                onTap: () {},
              ),
              _MenuItem(
                emoji: '🛒',
                label: 'Order History',
                onTap: () {},
              ),
              _MenuItem(
                emoji: '🔔',
                label: 'Notifications',
                onTap: () {},
              ),
              _MenuItem(
                emoji: '⚙️',
                label: 'Settings & Preferences',
                onTap: () {},
              ),
              _MenuItem(
                emoji: '🚪',
                label: 'Sign Out',
                onTap: () {},
                isDanger: true,
              ),

              const SizedBox(height : 20),
              // ── Footer ───────────────────────────────────
              Padding(
                padding : const EdgeInsets.symmetric(vertical : 8),
                child: Text(
                  'IRONVAULT · v1.0.0',
                  style: AppTextStyles.label(
                      size: 9, color: AppColors.textDim),
                ),
              ),

              const SizedBox(height : 16),
            ],
          ),
        ),
      ),
    ),
  }
}

class _MenuItem extends StatelessWidget {
  final String emoji;
  final String label;
  final String ? badge;
  final VoidCallBack? onTap;
  final bool isDanger;

  
}