import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/constant/theme.dart';
import 'package:flutter_todo/pages/screen/bottom_nav.dart';
import 'package:get/route_manager.dart';
import './pages/logic/cubit/bottom_nav_cubit.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('todo-box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BottomNavCubit(),
          ),
        ],
        child: GetMaterialApp(
          theme: lightTheme,
          darkTheme: darkTheme,
          title: 'Flutter Demo',
          home: const BottomNav(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
