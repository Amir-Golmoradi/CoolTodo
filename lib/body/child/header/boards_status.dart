import 'package:flutter/material.dart';
import 'package:flutter_todo/utils/custom/spacing.dart';
import 'package:flutter_todo/widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BoardsStatus extends StatelessWidget {
  const BoardsStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Adaptive.mm(3)),
      decoration: BStatusStyle.mainStyle,
      child: boardsStatsBox(),
    );
  }

  Widget boardsStatsBox() => Row(children: [
        container(),
        Text("Boards", style: TextStyle(color: Colors.white, fontSize: 17.sp)),
        SpaceWidth.xs
      ]);
}

Widget container() => Container(
      padding: EdgeInsets.symmetric(
          horizontal: Adaptive.mm(3), vertical: Adaptive.mm(1)),
      margin: EdgeInsets.symmetric(
          horizontal: Adaptive.mm(2), vertical: Adaptive.mm(0.6)),
      decoration: BStatusStyle.valueStyle,
      child: Text("0", style: TextStyle(color: Colors.white, fontSize: 17.sp)),
    );
