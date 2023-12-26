import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/constant/theme.dart';
import 'package:flutter_todo/pages/bottom_nav.dart';
import 'package:flutter_todo/states/cubits/navbar-cubit/bottom_nav_cubit.dart';
import 'package:get/route_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('todo-box');

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => BottomNavCubit()),
        ],
        child: GetMaterialApp(
          theme: lightMode,
          darkTheme: darkMode,
          themeMode: ThemeMode.light,
          home: const BottomNav(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
