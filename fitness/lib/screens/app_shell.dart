import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/theme.dart';
import 'home/home_screen.dart';
import 'shop/shop_screen.dart';
import 'train/train_screen.dart';
import 'profile/profile_screen.dart';

class AppShell extends StatefulWidget{
  const AppShell({super.key});

  @override 
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell>{
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
  ]
}