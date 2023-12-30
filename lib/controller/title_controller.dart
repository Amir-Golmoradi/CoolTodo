import "package:flutter/material.dart";

class TitleController extends StatelessWidget {
  const TitleController({
    super.key,
    required this.titleController,
  });

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: titleController,
      cursorColor: Colors.amber,
      decoration: InputDecoration(
        hintText: "Task Tile...",
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xFFDADADA),
            width: 3,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey[500]!,
            width: 2,
          ),
        ),
      ),
    );
  }
}
