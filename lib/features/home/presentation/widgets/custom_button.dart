import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          border: BoxBorder.all(
            color: const Color.fromARGB(193, 255, 255, 255),
            width: 3,
          ),
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(140, 255, 255, 255),
        ),
        child: Text(
          "Read",
          style: TextStyle(fontFamily: "SacrificeDemo", fontSize: 42),
        ),
      ),
    );
  }
}
