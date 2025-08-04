import 'package:flutter/material.dart';

class AskingWidget extends StatelessWidget {
  const AskingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 255, 255),
            spreadRadius: 10,
            blurRadius: 25,
          ),
        ],
      ),
      child: Text(
        "How Are You feeling Today ?",
        style: TextStyle(
          fontFamily: "Lateef",
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(232, 0, 0, 0),
        ),
      ),
    );
  }
}
