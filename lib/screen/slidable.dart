import "package:flutter/material.dart";
import "package:flutter_slidable/flutter_slidable.dart";
import "package:flutter_todo/data/bloc/todo_bloc.dart";
import "package:flutter_todo/data/bloc/todo_state.dart";
import "package:google_fonts/google_fonts.dart";
import "package:responsive_sizer/responsive_sizer.dart";

Slidable customDeleteTodo(
        TodoBloc blocProvider, TodoState state, int index, context) =>
    Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => blocProvider.add(
              RemoveTodo(state.todos[index]),
            ),
            borderRadius: BorderRadius.circular(18),
            backgroundColor: Theme.of(context).colorScheme.surface,
            foregroundColor: Colors.white,
            icon: Icons.delete_rounded,
            label: "Delete",
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          state.todos[index].title,
          style: GoogleFonts.merriweather(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            decoration: state.todos[index].isDone
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationColor: Colors.grey[500]!,
            decorationThickness: 2,
          ),
        ),
        subtitle: Text(
          state.todos[index].subtitle,
          style: GoogleFonts.merriweather(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
            decoration: state.todos[index].isDone
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationColor: Colors.grey[500]!,
            decorationThickness: 2,
          ),
        ),
        leading: Checkbox(
          checkColor: Theme.of(context).colorScheme.background,
          activeColor: Theme.of(context).colorScheme.onPrimary,
          value: state.todos[index].isDone,
          onChanged: (value) => blocProvider.add(ChangeTodo(index)),
        ),
      ),
    );
