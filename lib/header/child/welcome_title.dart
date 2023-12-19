import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Good\nMorning",
        style: TextStyle(
            color: const Color(0xFF5D8BFF), height: 1, fontSize: 34.sp),
      ),
    );
  }
}