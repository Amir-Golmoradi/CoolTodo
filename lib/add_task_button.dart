import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Adaptive.cm(3.8)),
      child: _floatActionButton(),
    );
  }

  Widget _floatActionButton() {
    return FloatingActionButton.large(
        backgroundColor: const Color(0xFF5d8bff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white, size: 28));
  }
}
