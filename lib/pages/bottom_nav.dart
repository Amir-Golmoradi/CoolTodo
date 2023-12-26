import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/pages/homepage.dart';
import 'package:flutter_todo/states/cubits/navbar-cubit/bottom_nav_cubit.dart';
import 'package:flutter_todo/utils/bottom_nav_option.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (ctx, state) {
        final bottomNavCubit = BlocProvider.of<BottomNavCubit>(ctx);
        return Scaffold(
          bottomNavigationBar: googleNavOption(bottomNavCubit),
          body: const Homepage(),
        );
      },
    );
  }
}
