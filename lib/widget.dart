import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Widgets {
  static List<Widget> tabItems = [
    Tab(
      child: Text("Tasks", style: TextStyle(fontSize: 19.sp)),
    ),
    Tab(
      child: Text(
        "Boards",
        style: TextStyle(
          fontSize: 19.sp,
        ),
      ),
    ),
  ];
}

class BStatusStyle {
  static final mainStyle = ShapeDecoration(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
      side: const BorderSide(
        width: 2,
        color: Color(0xFF5d8bff),
      ),
    ),
  );
  static final valueStyle = ShapeDecoration(
    color: const Color(0xFF5d8bff),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );
}

Widget calendar(String text, TextStyle? style) =>
    Text(text, style: calendarStyle);

final calendarStyle = TextStyle(
  color: Colors.white,
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
);

class CalendarItem {
 static final List<Widget> weekend = [
    calendar("Mon", calendarStyle),
    calendar("Tue", calendarStyle),
    calendar("Wed", calendarStyle),
    calendar("Thu", calendarStyle),
    calendar("Fri", calendarStyle),
    calendar("Sat", calendarStyle),
    calendar("Sun", calendarStyle),
  ];
}
