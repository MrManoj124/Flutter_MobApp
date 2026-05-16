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