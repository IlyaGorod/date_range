import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'components/calendar_screen.dart';

void main() {
  runApp(const DateCalendar());
}

class DateCalendar extends StatelessWidget {
  const DateCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [],
      directories: [
        WidgetbookComponent(
          name: 'CustomCalendar',
          useCases: [
            WidgetbookUseCase(
              name: 'Range Selection Calendar',
              builder: (context) => const CalendarScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
