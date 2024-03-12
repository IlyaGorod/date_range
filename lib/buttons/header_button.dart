import 'package:date_range/const/color_element.dart';
import 'package:date_range/const/size_element.dart';
import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;

  const HeaderButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: UISize.headerButtonRadius, // Ваш border radius
          border: Border.all(color: UIColor.buttonBorderColor), // Ваш border
        ),
        child: Padding(
          padding: const EdgeInsets.all(UISize.middleMargin),
          child: Icon(icon, size: UISize.smallMargin),
        ),
      ),
    );
  }
}