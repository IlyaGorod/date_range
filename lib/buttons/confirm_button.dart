import 'package:flutter/material.dart';

import '../const/color_element.dart';
import '../const/size_element.dart';

class ConfirmButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onPressed;

  const ConfirmButton({super.key, required this.icon, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: UISize.bigMargin * 4),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: UISize.middleMargin),
            decoration: BoxDecoration(
              color: UIColor.elementColor,
              borderRadius: UISize.mainElementRadius,
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      text,
                      style: const TextStyle(color: UIColor.whiteColor),
                  ),
                  const SizedBox(width: UISize.smallMargin),
                  Icon(icon, color: UIColor.whiteColor),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}