import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  const TaskTile({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(17),
        width: Adaptive.w(95),
        height: Adaptive.h(18),
        child: Center(
          child: Slidable(
            endActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: deleteFunction,
                  icon: LineIcons.trash,
                  borderRadius: BorderRadius.circular(12),
                  backgroundColor: const Color(0xFFb04037),
                ),
              ],
            ),
            child: Card(
              color: Get.isDarkMode
                  ? ThemeData.light().cardTheme.color
                  : ThemeData.dark().cardTheme.color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              child: Row(
                children: [
                  Checkbox(
                    value: isCompleted,
                    onChanged: onChanged,
                    activeColor: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  Text(
                    taskName,
                    style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      decoration: isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
