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