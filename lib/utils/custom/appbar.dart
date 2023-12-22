import 'package:flutter/material.dart';
import 'package:flutter_todo/config/appmodes.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

AppBar customAppbar() {
  return AppBar(
    toolbarHeight: 60,
    leading: profileImg(),
    actions: [
      IconButton(
        onPressed: () => Get.isDarkMode ? LightTheme.appbar : DarkTheme.appbar,
        icon: const Icon(
          LineIcons.lightbulbAlt,
        ),
      ),
    ],
  );
}

Widget profileImg() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(50),
    child: Image.asset("assets/images/avatar.jpeg", width: Adaptive.w(15)),
  );
}
