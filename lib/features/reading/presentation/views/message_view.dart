import 'package:flutter/material.dart';

class ReadingView extends StatelessWidget {
  const ReadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            colors: [
              const Color.fromARGB(255, 0, 24, 66),
              const Color.fromARGB(255, 0, 83, 226),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("I hope you are fine ")],
        ),
      ),
    );
  }
}
