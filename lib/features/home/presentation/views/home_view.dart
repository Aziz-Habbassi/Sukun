import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sukun/core/models/mood_model/list_moods.dart';
import 'package:sukun/features/home/presentation/widgets/pages.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe.builder(
        itemCount: moods.length,
        itemBuilder: (context, index) {
          return Pages(mood: moods[index]);
        },
      ),
    );
  }
}
