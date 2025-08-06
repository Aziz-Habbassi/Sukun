import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:sukun/features/splash/presentation/widgets/splash_title_wiget.dart';
import 'package:sukun/features/splash/presentation/widgets/start_button.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      doneLoading = true;
      setState(() {});
    });
    super.initState();
  }

  bool doneLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SplashTitleWiget(),
          Lottie.asset("assets/animations/splash_animation.json"),
          SizedBox(
            height: 50,
            child: doneLoading
                ? StartButton()
                : SpinKitSquareCircle(
                    color: const Color.fromARGB(255, 53, 236, 191),
                  ),
          ),
        ],
      ),
    );
  }
}
