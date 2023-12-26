import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/widget.dart';
import 'package:flutter_todo/constant/theme.dart';
import 'package:flutter_todo/constant/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_todo/states/cubits/navbar-cubit/bottom_nav_cubit.dart';

GNav googleNavOption(BottomNavCubit bottomNavCubit) {
  final navDark = darkMode.bottomNavigationBarTheme.backgroundColor!;
  final navLight = lightMode.bottomNavigationBarTheme.backgroundColor!;
  return GNav(
    onTabChange: (value) {
      bottomNavCubit.onTap(value);
    },
    selectedIndex: bottomNavCubit.screenIndex,
    tabBorderRadius: 13,
    curve: Curves.easeIn,
    style: GnavStyle.google,
    backgroundColor: Get.isDarkMode ? navDark : navLight,
    mainAxisAlignment: MainAxisAlignment.center,
    rippleColor: Colors.grey[200]!,
    haptic: true,
    textStyle: textStyle(),
    gap: 8,
    activeColor: Get.isDarkMode ? DarkMode.rasinBlack : LightMode.snowyWhite,
    iconSize: 20.sp,
    tabMargin: EdgeInsets.symmetric(horizontal: Adaptive.w(3)),
    padding: EdgeInsets.symmetric(
        horizontal: Adaptive.w(11), vertical: Adaptive.h(2.1)),
    duration: const Duration(milliseconds: 500),
    tabBackgroundColor:
        Get.isDarkMode ? LightMode.aliceBlue : DarkMode.spaceCadet,
    color: Get.isDarkMode ? LightMode.aliceBlue : DarkMode.darkBlack,
    tabs: tabItems,
  );
}

TextStyle textStyle() {
  return TextStyle(
      fontSize: 16.sp,
      color: Get.isDarkMode ? DarkMode.rasinBlack : LightMode.snowyWhite);
}
