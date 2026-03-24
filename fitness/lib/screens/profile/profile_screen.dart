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