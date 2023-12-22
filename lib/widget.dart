import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
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

const List<GButton> tabItems = [
  GButton(
    icon: LineIcons.tasks,
    text: 'Tasks',
  ),
  GButton(
    icon: LineIcons.bookmark,
    text: 'Boards',
  ),
];
