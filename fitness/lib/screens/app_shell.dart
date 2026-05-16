import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/theme.dart';
import 'home/home_screen.dart';
import 'shop/shop_screen.dart';
import 'train/train_screen.dart';
import 'profile/profile_screen.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _currentIndex = 0;

  static const _screens = [
    HomeScreen(),
    ShopScreen(),
    TrainScreen(),
    ProfileScreen(),
  ];

  static const _navItems = [
    _NavItem(icon: Icons.grid_view_rounded, label: 'Home'),
    _NavItem(icon: Icons.storefront_outlined, label: 'Shop'),
    _NavItem(icon: Icons.bolt_outlined, label: 'Train'),
    _NavItem(icon: Icons.person_outline_rounded, label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
        bottomNavigationBar: _LuxBottomNav(
          currentIndex: _currentIndex,
          items: _navItems,
          onTap: (i) => setState(() => _currentIndex = i),
        ),
      ),
    );
  }
}

class _NavItem{
  final IconData icon;
  final String label;
  const _NavItem({required this.icon, required this.label});
}

class _LuxBottomNav extends StatelessWidget{
  final int currentIndex;
  final List<_NavItem> items;
  final ValueChanged<int> onTap;

  const _LuxBottomNav({
    required this.currentIndex,
    required this.items,
    required this.onTap,
  })

  @override
  Widget build (BuildContext context)
    return Container(
      decoration : const BoxDecoration(
        color : AppColors.surface,
        border : Border(top : BorderSide(color : AppColors.goldBorder)),
      ),
      child: SafeArea(
        top : false,
        child : SizedBox(
          height: 60,
          child: Row(
             children: items.asMap().entries.map((e) {
              final isActive = e.key == currentIndex;
              return Expanded(
                child: GestureDetector(
                  onTap: () => onTap(e.key),
                  behavior: HitTestBehavior.opaque,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: 36, height: 36,
                          decoration: BoxDecoration(
                            color: isActive
                                ? AppColors.goldDim
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: isActive
                                ? [
                                    BoxShadow(
                                      color:
                                          AppColors.gold.withOpacity(0.12),
                                      blurRadius: 12,
                                    )
                                  ]
                                : null,
                          ),
                           child: Icon(
                            e.value.icon,
                            size: 18,
                            color: isActive
                                ? AppColors.gold
                                : AppColors.textDim,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          e.value.label.toUpperCase(),
                          style: AppTextStyles.navLabel(
                            color: isActive
                                ? AppColors.gold
                                : AppColors.textDim,
                          ),
        )
      ),
    )
             }).toList(),

}