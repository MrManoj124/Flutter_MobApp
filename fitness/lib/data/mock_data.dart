import 'package:flutter/material.dart';
import '../models/models.dart';
import '../theme/app_colors.dart';

// User 
const mockUser = UserProfile(
  name: 'Thanu Haran',
  tier: 'Elite Member',
  memberSince: '2022',
  streakDays: 7,
  totalSessions: 124,
  totalKcal: 18240,
  weeklyGoalPercent: 78,
  todayKcal: 820,
);

// Exercises
const pushDayExercises = [
  Exercise(name: 'Barbell Bench Press', sets: '4', reps: '8–10', rest: '90s', completed: true),
  Exercise(name: 'Incline Dumbbell Press', sets: '3', reps: '10–12', rest: '75s', completed: true),
  Exercise(name: 'Cable Flyes', sets: '3', reps: '12–15', rest: '60s', completed: true),
  Exercise(name: 'Overhead Press', sets: '4', reps: '8–10', rest: '90s', completed: false),
  Exercise(name: 'Lateral Raises', sets: '3', reps: '15', rest: '45s', completed: false),
  Exercise(name: 'Tricep Pushdowns', sets: '3', reps: '12–15', rest: '60s', completed: false),
];

// create deadliftExercises array
const deadliftExercises = [
  Exercise(name: 'Conventional Deadlift', sets: '4', reps: '5', rest: '3min', completed: false),
  Exercise(name: 'Romanian Deadlift', sets: '3', reps: '8–10', rest: '2min', completed: false),
  Exercise(name: 'Leg Press', sets: '3', reps: '12', rest: '90s', completed: false),
  Exercise(name: 'Leg Curls', sets: '3', reps: '12–15', rest: '60s', completed: false),
  Exercise(name: 'Calf Raises', sets: '4', reps: '20', rest: '45s', completed: false),
];

// ── Programs ───────────────────────────────────────────────────
final mockPrograms = [
  Program(
    id: 'p1',
    name: 'Strength Beast',
    level: 'Advanced',
    daysPerWeek: '5 days / wk',
    totalWeeks: 12,
    currentWeek: 8,
    description: 'Powerlifting · Hypertrophy · Raw Strength',
    headerGradient: AppColors.programRed,
    isActive: true,
    sessions: [
      WorkoutSession(
        id: 's1',
        name: 'Push Day III',
        focus: 'Chest · Shoulders · Triceps',
        duration: '45 min',
        dayNumber: 3,
        exercises: pushDayExercises,
        completedCount: 3,
      ),
      WorkoutSession(
        id: 's2',
        name: 'Pull Day II',
        focus: 'Back · Biceps · Rear Delts',
        duration: '50 min',
        dayNumber: 4,
        exercises: deadliftExercises,
        completedCount: 0,
      ),
    ],
  ),
  Program(
    id: 'p2',
    name: 'Fat Shredder',
    level: 'Intermediate',
    daysPerWeek: '4 days / wk',
    totalWeeks: 8,
    currentWeek: 0,
    description: 'HIIT · Core · Cardio Conditioning',
    headerGradient: AppColors.programGreen,
    sessions: [],
  ),
  Program(
    id: 'p3',
    name: 'Beginner Builder',
    level: 'Beginner',
    daysPerWeek: '3 days / wk',
    totalWeeks: 6,
    currentWeek: 0,
    description: 'Full Body · Form First · Mobility',
    headerGradient: AppColors.programNeutral,
    sessions: [],
  ),
];

WorkoutSession get todaySession => mockPrograms[0].sessions[0];


// ── Products ───────────────────────────────────────────────────
final mockProducts = [
  Product(
    id: 'pr1',
    name: 'Whey Pro+',
    subtitle: '2.5 kg · Chocolate',
    price: 49,
    emoji: '🥛',
    imageBackground: const Color(0xFF1A1208),
    category: ProductCategory.supplements,
  ),
  Product(
    id: 'pr2',
    name: 'Grip Gloves',
    subtitle: 'M / L / XL',
    price: 24,
    emoji: '🧤',
    imageBackground: const Color(0xFF0D120D),
    category: ProductCategory.gear,
  ),
  Product(
    id: 'pr3',
    name: 'Pre-Workout',
    subtitle: '300 g · Berry Blast',
    price: 35,
    emoji: '⚡',
    imageBackground: const Color(0xFF0D0D1A),
    category: ProductCategory.supplements,
  ),
  Product(
    id: 'pr4',
    name: 'Resist. Band',
    subtitle: '3-pack · Heavy',
    price: 19,
    emoji: '🏋️',
    imageBackground: const Color(0xFF12100A),
    category: ProductCategory.gear,
  ),
  Product(
    id: 'pr5',
    name: 'Creatine HCL',
    subtitle: '300 g · Unflavoured',
    price: 28,
    emoji: '💊',
    imageBackground: const Color(0xFF0A0A14),
    category: ProductCategory.supplements,
    isOnSale: true,
    originalPrice: 38,
  ),
  Product(
    id: 'pr6',
    name: 'Training Tee',
    subtitle: 'S / M / L · Black',
    price: 55,
    emoji: '👕',
    imageBackground: const Color(0xFF0E0E0E),
    category: ProductCategory.apparel,
  ),
];


// ── Articles ───────────────────────────────────────────────────
const mockArticles = [
  Article(
    id: 'a1',
    title: 'Bulk vs Cut — The Definitive Guide',
    category: 'Nutrition',
    readTime: '6 min read',
    emoji: '🥗',
    isNew: true,
  ),
  Article(
    id: 'a2',
    title: 'Why Sleep Is Your Secret Weapon',
    category: 'Recovery',
    readTime: '4 min read',
    emoji: '😴',
  ),
  Article(
    id: 'a3',
    title: 'The Science of Progressive Overload',
    category: 'Training',
    readTime: '8 min read',
    emoji: '📈',
  ),
];