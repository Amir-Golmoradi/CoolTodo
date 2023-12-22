import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_todo/config/appmodes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TodoAddButton extends StatelessWidget {
  const TodoAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      onPressed: () {},
      backgroundColor:
          Get.isDarkMode ? LightTheme.actionBtn : DarkTheme.actionBtn,
      child: Icon(LineIcons.plus, size: 22.sp),
    );
  }
}
