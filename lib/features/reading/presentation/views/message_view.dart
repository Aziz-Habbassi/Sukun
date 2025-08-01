import 'package:flutter/material.dart';
import 'package:sukun/features/reading/presentation/widgets/message_widget.dart';
import 'package:sukun/features/reading/presentation/widgets/return_button.dart';
import 'package:sukun/features/reading/presentation/widgets/title_widget.dart';

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
          children: [
            const TitleWidget(),
            SizedBox(height: 20),
            const MessageWidget(),
            SizedBox(height: 15),
            const ReturnButton(),
          ],
        ),
      ),
    );
  }
}
