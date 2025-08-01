import 'package:flutter/material.dart';
import 'package:sukun/core/models/mood_model/mood_model.dart';

final moods = [
  MoodModel(
    title: "Happy",
    animationPath: "assets/animations/happy.json",
    category: "Angry",
    color: const Color.fromARGB(255, 18, 98, 245).toARGB32(),
    font: "SuperSunday",
  ),
  MoodModel(
    title: "Angry",
    animationPath: "assets/animations/angry.json",
    category: "Angry",
    color: const Color.fromARGB(255, 247, 65, 53).toARGB32(),
    font: "BloodstainPersonal",
  ),

  MoodModel(
    title: "Sad",
    animationPath: "assets/animations/sad.json",
    category: "Angry",
    color: const Color.fromARGB(255, 231, 244, 54).toARGB32(),
    font: "swimmingPool",
  ),
  MoodModel(
    title: "Confused",
    animationPath: "assets/animations/confused.json",
    category: "Angry",
    color: const Color(0xff090040).toARGB32(),
    font: "AttackGraffiti",
  ),
];
