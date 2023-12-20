import 'package:flutter/material.dart';

Widget activeButton() => ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF5d8bff),
        foregroundColor: Colors.black,
      ),
      child: const Text("Active"),
    );
