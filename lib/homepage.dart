import 'package:flutter/material.dart';
import 'package:flutter_todo/add_task_button.dart';
import 'package:flutter_todo/body/todo_body.dart';
import 'package:flutter_todo/header/todo_header.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF101D2F),
        floatingActionButton: AddTaskButton(),
        body: Column(
          children: [TodoHeader(), TodoBody()],
        ),
      ),
    );
  }
}
