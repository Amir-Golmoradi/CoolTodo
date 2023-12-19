import 'package:flutter/material.dart';
import 'package:flutter_todo/header/buttons/addbutton.dart';
import 'package:flutter_todo/header/buttons/notifsbutton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TodoPanel extends StatelessWidget {
  const TodoPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.play_circle, size: 30, color: Colors.white),
        Wrap(
          children: [
            notifsButton(),
            SizedBox(width: Adaptive.mm(1)),
            addButton(),
          ],
        ),
      ],
    );
  }
}