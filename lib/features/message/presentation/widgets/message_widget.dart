import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .1,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
    );
  }
}
