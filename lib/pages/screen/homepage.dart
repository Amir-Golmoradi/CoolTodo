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
  Widget build(BuildContext context) {
    // int axisCount = 2;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: const TodoAddButton(),
        appBar: customAppbar(),
        body: const Column(
          children: [
            // Expanded(
            //   child: GridView.builder(
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: axisCount,
            //     ),
            //     itemCount: 2,
            //     itemBuilder: (context, index) => Container(
            //       margin: const EdgeInsets.all(20),
            //       width: 10,
            //       height: 7,
            //       decoration: ShapeDecoration(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(16),
            //         ),
            //         color: Colors.orange,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
