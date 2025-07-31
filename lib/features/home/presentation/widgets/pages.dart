import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sukun/core/models/mood_model.dart';

class Pages extends StatelessWidget {
  const Pages({super.key, required this.mood});
  final MoodModel mood;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color(mood.color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mood.title,
            style: TextStyle(
              fontFamily: mood.font,
              fontSize: 64,
              color: const Color.fromARGB(255, 173, 141, 1),
              shadows: [Shadow(offset: Offset(0, 8), blurRadius: 22)],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: sizingByAnimation(mood.title, context),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              border: BoxBorder.all(
                color: const Color.fromARGB(193, 255, 255, 255),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(140, 255, 255, 255),
            ),
            child: Text(
              "Read",
              style: TextStyle(fontFamily: "SacrificeDemo", fontSize: 42),
            ),
          ),
        ],
      ),
    );
  }

  Widget sizingByAnimation(String title, BuildContext context) {
    if (title == "Angry" || title == "Happy") {
      return Lottie.asset(
        mood.animationPath,
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.7,
      );
    } else {
      return Lottie.asset(
        mood.animationPath,
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.5,
      );
    }
  }
}
