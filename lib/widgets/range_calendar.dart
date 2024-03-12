import 'package:date_range/const/color_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';


class RangeCalendar extends StatefulWidget {
  @override
  _RangeCalendarState createState() => _RangeCalendarState();
}

class _RangeCalendarState extends State<RangeCalendar> {
  final DateTime _firstDay = DateTime.utc(2020, 01, 01);
  final DateTime _lastDay = DateTime.utc(2050, 01, 01);
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: _focusedDay,
      firstDay: _firstDay,
      lastDay: _lastDay,
      rangeStartDay: _rangeStart,
      rangeEndDay: _rangeEnd,
      calendarFormat: _calendarFormat,
      rangeSelectionMode: _rangeSelectionMode,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      headerStyle: const HeaderStyle(formatButtonVisible: false),
      calendarStyle: const CalendarStyle(
        isTodayHighlighted: true,
        rangeHighlightColor: UIColor.periodColor,
        todayDecoration: BoxDecoration(),
        todayTextStyle: TextStyle(decoration: TextDecoration.overline, decorationColor: UIColor.todayColor),
        rangeStartDecoration: BoxDecoration(color: UIColor.elementColor, shape: BoxShape.circle),
        rangeEndDecoration: BoxDecoration(color: UIColor.elementColor, shape: BoxShape.circle),
      ),
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(_selectedDay, selectedDay)) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
            _rangeStart = null;
            _rangeEnd = null;
            _rangeSelectionMode = RangeSelectionMode.toggledOff;
          });
        }
      },
      onRangeSelected: (start, end, focusedDay) {
        setState(() {
          _selectedDay = null;
          _focusedDay = focusedDay;
          _rangeStart = start;
          _rangeEnd = end;
          _rangeSelectionMode = RangeSelectionMode.toggledOn;
        });
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
    );
  }
}
