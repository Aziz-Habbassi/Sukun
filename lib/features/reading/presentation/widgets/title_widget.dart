import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "تذكّر، في كل شعور رسالة من الله",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Lateef",
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      textDirection: TextDirection.rtl,
    );
  }
}
