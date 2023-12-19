import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget listTile() {
  return ListTile(
    title: const Text("Today's Monday", style: TextStyle(color: Colors.white)),
    subtitle: const Text(
      "Dec 12, 2022",
      style: TextStyle(
        color: Color(0xFF4D5A72),
      ),
      textAlign: TextAlign.justify,
    ),
    trailing: _trailing(),
  );
}

Widget _trailing() {
  return Column(
    children: [
      SizedBox(height: Adaptive.mm(2)),
      Text("75% Done", style: TextStyle(color: Colors.white, fontSize: 16.sp)),
      Text("Completed Tasks",
          style: TextStyle(color: const Color(0xFF4D5A72), fontSize: 15.sp)),
    ],
  );
}
