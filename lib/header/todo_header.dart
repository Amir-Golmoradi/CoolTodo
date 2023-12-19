import 'package:flutter/material.dart';
import 'package:flutter_todo/header/child/daily_status.dart';
import 'package:flutter_todo/header/child/todo_panel.dart';
import 'package:flutter_todo/header/child/welcome_title.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Adaptive.mm(4), vertical: Adaptive.mm(3)),
      child: Column(
        children: [
          const TodoPanel(),
          SizedBox(height: Adaptive.cm(4.sp)),
          const WelcomeTitle(),
          SizedBox(height: Adaptive.mm(10.sp)),
          listTile()
        ],
      ),
    );
  }
}
