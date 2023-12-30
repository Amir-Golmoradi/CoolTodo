import "package:flutter/material.dart";
import "package:get/get.dart";

AppBar customAppbar(context) {
  return AppBar(
    backgroundColor: Get.isDarkMode
        ? Theme.of(context).appBarTheme.backgroundColor
        : Theme.of(context).appBarTheme.backgroundColor,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu, size: 30),
    ),
    // actions: [
    //   IconButton(
    //     onPressed: () => Get.isDarkMode
    //          Get.changeThemeMode(ThemeMode.light)
    //         : Get.changeThemeMode(ThemeMode.dark),
    //     icon: const Icon(Icons.lightbulb),
    //   )
    // ],
  );
}
