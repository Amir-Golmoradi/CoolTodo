import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_todo/constant/theme.dart";
import "package:flutter_todo/data/bloc/todo_bloc.dart";
import "package:flutter_todo/screen/homepage.dart";
import "package:get/get.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:path_provider/path_provider.dart";
import "package:responsive_sizer/responsive_sizer.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory());

  runApp(
    ResponsiveSizer(
      builder: (context, orientation, screenType) =>
          GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightMode,
        darkTheme: darkMode,
        themeMode: ThemeMode.system,
        home: BlocProvider<TodoBloc>(
          create: (context) =>
              TodoBloc()..add(TodoStarted()),
          child: const HomePage(),
        ),
      ),
    ),
  );
}
