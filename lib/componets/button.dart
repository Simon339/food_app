import 'package:flutter/material.dart';
import 'package:food_app/themes/colors.dart';

class Mybutton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const Mybutton({required this.text, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(48),),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(width: 10),
            //Icon
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
