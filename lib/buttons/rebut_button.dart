import 'package:date_range/const/color_element.dart';
import 'package:flutter/material.dart';

import '../const/size_element.dart';

class RebutButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const RebutButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: UISize.bigMargin * 4),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: UISize.bigMargin),
          color: Colors.transparent,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text, style: const TextStyle(color: UIColor.elementColor)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}