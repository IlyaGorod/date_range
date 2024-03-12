import 'package:flutter/material.dart';

import '../buttons/confirm_button.dart';
import '../buttons/header_button.dart';
import '../buttons/rebut_button.dart';
import '../const/color_element.dart';
import '../const/size_element.dart';
import '../widgets/range_calendar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: UISize.bigMargin),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Align(
              alignment: Alignment.centerLeft,
              child: HeaderButton(
                icon: Icons.arrow_back_ios,
                onPressed: () {},
              ),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text('Indicate the number of dates'),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: HeaderButton(
                icon: Icons.close_outlined,
                onPressed: () {},
              ),
            ),
          ]),
          const SizedBox(height: UISize.bigMargin * 3),
          Container(
              decoration: BoxDecoration(
                borderRadius: UISize.headerButtonRadius, // Ваш border radius
                border: Border.all(color: UIColor.buttonBorderColor),
              ),
              child: RangeCalendar(),
          ),
          const SizedBox(height: UISize.bigMargin * 3),
          ConfirmButton(
            icon: Icons.arrow_right_alt_outlined,
            onPressed: () {  },
            text: 'Next'),
          const SizedBox(height: UISize.smallMargin),
          RebutButton(
            onPressed: () {  },
            text: 'Later'),
          const SizedBox(height: UISize.bigMargin),
        ]),
      ),
    );
  }
}
