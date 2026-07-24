import 'package:flutter/material.dart';

// ── Workout Models ─────────────────────────────────────────────

// create Exercise model with name, sets, reps, rest, completed
class Exercise {
  final String name;
  final String sets;
  final String reps;
  final String rest;
  final bool completed;

  const Exercise({
    required this.name,
    required this.sets,
    required this.reps,
    required this.rest,
    this.completed = false,
  });
}

// create WorkoutSession model with id, name, focus, duration, dayNumber, exercises, completedCount
class WorkoutSession {
  final String id;
  final String name;
  final String focus;
  final String duration;
  final int dayNumber;
  final List<Exercise> exercises;
  final int completedCount;

  const WorkoutSession({
    required this.id,
    required this.name,
    required this.focus,
    required this.duration,
    required this.dayNumber,
    required this.exercises,
    required this.completedCount,
  });

  double get progress =>
      exercises.isEmpty ? 0 : completedCount / exercises.length;
}

// create Program model with id, name, level, daysPerWeek, totalWeeks, currentWeek, description, headerGradient, sessions, isActive
class Program {
  final String id;
  final String name;
  final String level;
  final String daysPerWeek;
  final int totalWeeks;
  final int currentWeek;
  final String description;
  final LinearGradient headerGradient;
  final List<WorkoutSession> sessions;
  final bool isActive;

  const Program({
    required this.id,
    required this.name,
    required this.level,
    required this.daysPerWeek,
    required this.totalWeeks,
    required this.currentWeek,
    required this.description,
    required this.headerGradient,
    required this.sessions,
    this.isActive = false,
  });

  double get progress => totalWeeks == 0 ? 0 : currentWeek / totalWeeks;
}


// ── Shop Models ────────────────────────────────────────────────

enum ProductCategory { all, supplements, gear, apparel, sale }

class Product {
  final String id;
  final String name;
  final String subtitle;
  final double price;
  final String emoji;
  final Color imageBackground;
  final ProductCategory category;
  final bool isOnSale;
  final double? originalPrice;

  const Product({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.price,
    required this.emoji,
    required this.imageBackground,
    required this.category,
    this.isOnSale = false,
    this.originalPrice,
  });
}

// ── Article Model ──────────────────────────────────────────────

class Article {
  final String id;
  final String title;
  final String category;
  final String readTime;
  final String emoji;
  final bool isNew;

  const Article({
    required this.id,
    required this.title,
    required this.category,
    required this.readTime,
    required this.emoji,
    this.isNew = false,
  });
}


// ── User Model ─────────────────────────────────────────────────

class UserProfile {
  final String name;
  final String tier;
  final String memberSince;
  final int streakDays;
  final int totalSessions;
  final int totalKcal;
  final int weeklyGoalPercent;
  final int todayKcal;

  const UserProfile({
    required this.name,
    required this.tier,
    required this.memberSince,
    required this.streakDays,
    required this.totalSessions,
    required this.totalKcal,
    required this.weeklyGoalPercent,
    required this.todayKcal,
  });
}
