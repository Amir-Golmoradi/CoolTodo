import "package:flutter/material.dart";

class SubTileController extends StatelessWidget {
  const SubTileController({
    super.key,
    required this.subtitleController,
  });

  final TextEditingController subtitleController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: subtitleController,
      cursorColor: Colors.amber,
      decoration: InputDecoration(
        hintText: "Task SubTile...",
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
