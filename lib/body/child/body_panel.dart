import 'package:flutter/material.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';
import 'package:flutter_todo/body/child/header/boards_status.dart';
import 'package:flutter_todo/header/buttons/activebutton.dart';
import 'package:flutter_todo/header/buttons/donebutton.dart';
import 'package:flutter_todo/utils/custom/spacing.dart';
import 'package:flutter_todo/widget.dart';

class TodoBodyPanel extends StatelessWidget {
  const TodoBodyPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BoardsStatus(),
            Wrap(
              children: [
                activeButton(),
                SpaceWidth.xs,
                doneButton(),
              ],
            ),
          ],
        ),
        SpaceHeight.xs,
        weekendDays()
      ],
    );
  }

  Row weekendDays() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: CalendarItem.weekend,
    );
  }
}
