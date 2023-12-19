  import 'package:flutter/material.dart';

Widget addButton() {
    return Container(
        padding: const EdgeInsets.all(7),
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: const Color(0xFF182643),
        ),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.white)));
  }