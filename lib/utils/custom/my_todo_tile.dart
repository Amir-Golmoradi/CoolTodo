import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:line_icons/line_icons.dart';

class TodoTile extends StatelessWidget {
  final String todoName;
  final bool isTaskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TodoTile({
    super.key,
    required this.todoName,
    required this.isTaskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        child: Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFunction,
                icon: LineIcons.trash,
                backgroundColor: Colors.red[300]!,
                borderRadius: BorderRadius.circular(11),
              )
            ],
          ),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // checkbox
                Checkbox(
                  value: isTaskCompleted,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                ),

                // task name
                Text(
                  todoName,
                  style: TextStyle(
                    decoration: isTaskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
