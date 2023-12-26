import 'package:flutter/material.dart';
import 'package:flutter_todo/utils/button/add_task_button.dart';
import 'package:flutter_todo/utils/custom/appbar.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: Scaffold(
      floatingActionButton: const TodoAddButton(),
      appBar: customAppbar(),
      body: Container(),
    ),
  );
}
