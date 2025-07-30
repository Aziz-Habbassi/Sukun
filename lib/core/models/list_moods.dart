import 'package:flutter/material.dart';
import 'package:sukun/core/models/mood_model.dart';

final moods = [
  MoodModel(
    moodName: "Happy",
    animationPath: "assets/animations/happy.json",
    category: "Angry",
    color: const Color.fromARGB(255, 18, 98, 245).toARGB32(),
  ),
  MoodModel(
    moodName: "Angry",
    animationPath: "assets/animations/angry.json",
    category: "Angry",
    color: const Color.fromARGB(255, 247, 65, 53).toARGB32(),
  ),

  MoodModel(
    moodName: "Sad",
    animationPath: "assets/animations/sad.json",
    category: "Angry",
    color: const Color.fromARGB(255, 231, 244, 54).toARGB32(),
  ),
  MoodModel(
    moodName: "Confused",
    animationPath: "assets/animations/confused.json",
    category: "Angry",
    color: const Color(0xff090040).toARGB32(),
  ),
];
