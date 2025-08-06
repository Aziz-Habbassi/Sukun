import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go("/HomeView");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 53, 236, 191),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "Start",
          style: TextStyle(
            fontFamily: "GT",
            fontSize: 24,
            color: const Color.fromARGB(255, 103, 1, 172),
          ),
        ),
      ),
    );
  }
}
