import 'package : flutter/material.dart';
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