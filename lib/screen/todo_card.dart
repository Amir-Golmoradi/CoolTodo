import "package:flutter/material.dart";
import "package:flutter_todo/screen/slidable.dart";
import "package:responsive_sizer/responsive_sizer.dart";

import "../data/bloc/todo_bloc.dart";
import "../data/bloc/todo_state.dart";

Widget todoCard(
    BuildContext context, TodoBloc blocProvider, TodoState state, int index) {
  return Container(
    padding: EdgeInsets.all(9.sp),
    margin: EdgeInsets.all(13.sp),
    decoration: ShapeDecoration(
      color: Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: customDeleteTodo(blocProvider, state, index, context),
  );
}
