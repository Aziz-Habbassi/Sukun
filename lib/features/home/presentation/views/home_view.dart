import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sukun/core/models/list_moods.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe.builder(
        itemCount: moods.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            color: Color(moods[index].color),
            child: Column(children: [Text(moods[index].moodName)]),
          );
        },
      ),
    );
  }
}
