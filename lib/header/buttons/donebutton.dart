import 'package:flutter/material.dart';

Widget doneButton() => ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF101D2F),
          side: const BorderSide(color: Color(0xFF5d8bff), width: 2),
          foregroundColor: Colors.white),
      child: const Text("Done"),
    );
