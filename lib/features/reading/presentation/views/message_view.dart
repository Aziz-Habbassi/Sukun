import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            Text(
              "تذكّر، في كل شعور رسالة من الله",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Lateef",
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .1,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    "احْرِصْ على ما يَنفَعُكَ، واسْتَعِنْ بالله ولا تَعْجِزْ",
                    style: TextStyle(fontFamily: "Arabic", fontSize: 32),
                  ),
                  SizedBox(height: 20),
                  Divider(endIndent: 30, indent: 30),
                  SizedBox(height: 20),

                  Text(
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: "Arabic", fontSize: 24),

                    "قالها النبي لرجل متردد لا يعرف كيف يختار طريقه. علمه أن يسعى لما فيه فائدة ويطلب العون من الله، ولا يستسلم للتيه",
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () => context.go("/"),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 0, 135, 245),
                ),
                child: Text(
                  "رجوع",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
