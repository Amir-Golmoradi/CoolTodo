import 'package:flutter/material.dart';
import 'package:flutter_todo/widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TodoTabs extends StatelessWidget {
  const TodoTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Adaptive.cm(1.5),
        child: AppBar(
            backgroundColor: const Color(0xFF101D2F), bottom: _tabbar()));
  }

  TabBar _tabbar() {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: Colors.white,
      labelColor: const Color(0xFF5D8BFF),
      unselectedLabelColor: const Color(0xFFB6C6EB),
      tabs: Widgets.tabItems,
    );
  }
}