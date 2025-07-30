import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container();
        },
      ),
    );
  }
}
