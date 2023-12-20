import 'package:flutter/material.dart';
import 'package:flutter_todo/body/child/body_panel.dart';
import 'package:flutter_todo/body/tabs/todo_tabs.dart';
import 'package:flutter_todo/utils/custom/spacing.dart';

class TodoBody extends StatelessWidget {
  const TodoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TodoTabs(),
          SpaceHeight.xs,
          const TodoBodyPanel(),
        ],
      ),
    );
  }
}
