import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

AppBar customAppbar() {
  return AppBar(
    centerTitle: true,
    title: const Text("ToDo"),
    leading: IconButton(
      onPressed: () => Get.isDarkMode
          ? Get.changeThemeMode(ThemeMode.light)
          : Get.changeThemeMode(ThemeMode.dark),
      icon: Icon(LineIcons.lightbulb, size: 25.sp),
    ),
  );
}
