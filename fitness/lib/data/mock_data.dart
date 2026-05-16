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