import 'package:flutter/material.dart';

class SplashTitleWiget extends StatelessWidget {
  const SplashTitleWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "المشاعر ليست عبثًا... بل رسائل تنتظر أن تُفهم",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color.fromARGB(255, 103, 1, 172),
        fontSize: 32,
        fontFamily: "Lateef",
        fontWeight: FontWeight.w400,
        shadows: [
          Shadow(
            color: const Color.fromARGB(255, 124, 77, 255),
            blurRadius: 24,
          ),
        ],
      ),
    );
  }
}
