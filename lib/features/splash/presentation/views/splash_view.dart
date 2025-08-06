import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

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
          Text(
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
          ),
          Lottie.asset("assets/animations/splash_animation.json"),
          SizedBox(
            height: 50,
            child: doneLoading
                ? GestureDetector(
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
                  )
                : SpinKitSquareCircle(
                    color: const Color.fromARGB(255, 53, 236, 191),
                  ),
          ),
        ],
      ),
    );
  }
}
