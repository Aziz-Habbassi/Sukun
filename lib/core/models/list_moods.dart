import 'package:flutter/material.dart';
import 'package:sukun/core/models/mood_model.dart';

final moods = [
  MoodModel(
    moodName: "Angry",
    animationPath: "animationPath",
    category: "Angry",
    color: const Color.fromARGB(255, 247, 65, 53).toARGB32(),
  ),
  MoodModel(
    moodName: "Happy",
    animationPath: "animationPath",
    category: "Angry",
    color: const Color.fromARGB(255, 18, 98, 245).toARGB32(),
  ),
  MoodModel(
    moodName: "Sad",
    animationPath: "animationPath",
    category: "Angry",
    color: const Color.fromARGB(255, 231, 244, 54).toARGB32(),
  ),
  MoodModel(
    moodName: "Confused",
    animationPath: "animationPath",
    category: "Angry",
    color: const Color.fromARGB(255, 83, 20, 230).toARGB32(),
  ),
];
