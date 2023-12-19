import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TodoBody extends StatelessWidget {
  const TodoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          SizedBox(
            height: Adaptive.cm(1.5),
            child: AppBar(
              backgroundColor: const Color(0xFF101D2F),
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.white,
                labelColor: const Color(0xFF5D8BFF),
                unselectedLabelColor: const Color(0xFFB6C6EB),
                tabs: [
                  Tab(
                    child: Text("Tasks", style: TextStyle(fontSize: 19.sp)),
                  ),
                  Tab(
                    child: Text(
                      "Boards",
                      style: TextStyle(
                        fontSize: 19.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
