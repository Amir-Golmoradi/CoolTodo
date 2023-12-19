import 'package:flutter/material.dart';
import 'package:flutter_todo/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('todo-box');

  runApp(
    ResponsiveSizer(
      builder: (context, orientation, screenType) => const MaterialApp(
          title: 'Flutter Demo',
          home: Homepage(),
          debugShowCheckedModeBanner: false),
    ),
  );
}
