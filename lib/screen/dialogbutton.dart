import "package:flutter/material.dart";
import "package:flutter_todo/constant/colors.dart";
import "package:flutter_todo/data/bloc/todo_bloc.dart";
import 'package:flutter_todo/screen/add_todo_page.dart';
import "package:get/get.dart";

SizedBox dialogButton(
    BuildContext context,
    TextEditingController titleController,
    TextEditingController subtitleController,
    TodoBloc blocProvider) {
  return SizedBox(
    child: FloatingActionButton(
      backgroundColor: Get.isDarkMode
          ? Theme.of(context).colorScheme.secondary
          : Theme.of(context).colorScheme.secondary,
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AddTodoPage(
            titleController: titleController,
            subtitleController: subtitleController,
            blocProvider: blocProvider,
          ),
        );
      },
      child: Icon(
        Icons.add,
        color: Get.isDarkMode
            ? LightMode.snowyWhite
            : DarkMode.jet,
      ),
    ),
  );
}
