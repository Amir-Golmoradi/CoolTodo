import 'package:flutter/material.dart';
import 'package:flutter_todo/utils/button/mycustombutton.dart';
import 'package:flutter_todo/utils/custom/spacing.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomDialogBox extends StatelessWidget {
  CustomDialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Get.isDarkMode ? Colors.grey[300] : Colors.grey[600],
      content: SizedBox(
        height: Adaptive.h(13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            dialogTextField(),
            dialogButton(),
          ],
        ),
      ),
    );
  }

  TextField dialogTextField() => TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Add Your New Task",
        ),
      );

  Row dialogButton() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MyButton(text: "Save", onPressed: onSave),
          SpaceWidth.xs,
          MyButton(text: "Cancel", onPressed: onCancel),
        ],
      );
}
