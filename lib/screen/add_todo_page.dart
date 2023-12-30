import "package:flutter/material.dart";
import "package:flutter_todo/constant/colors.dart";
import "package:flutter_todo/data/bloc/todo_bloc.dart";
import "package:flutter_todo/data/model/todo_model.dart";
import "package:google_fonts/google_fonts.dart";
import "package:responsive_sizer/responsive_sizer.dart";

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({
    super.key,
    required this.titleController,
    required this.subtitleController,
    required this.blocProvider,
  });

  final TextEditingController titleController;
  final TextEditingController subtitleController;
  final TodoBloc blocProvider;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add a Note..."),
      titleTextStyle: GoogleFonts.merriweather(
      color: Theme.of(context).colorScheme.onPrimary,
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: titleController,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: "Note Title...",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: DarkMode.taskColor, width: 3),
              ),
            ),
          ),
          SizedBox(height: Adaptive.mm(3)),
          TextField(
            controller: subtitleController,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: "Note Description...",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: DarkMode.taskColor, width: 3),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: DarkMode.taskColor, width: 2),
              ),
            ),
          ),
          SizedBox(height: Adaptive.mm(5.sp)),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                blocProvider.add(
                  AddTodo(
                    Todo(
                      title: titleController.text,
                      subtitle: subtitleController.text,
                    ),
                  ),
                );

                titleController.text = "";
                subtitleController.text = "";
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: DarkMode.taskColor, width: 3),
                  borderRadius: BorderRadius.circular(9),
                ),
                foregroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: SizedBox(
                width: Adaptive.w(45),
                height: Adaptive.h(8.3.sp),
                child: Center(
                  child: Text(
                    "Done ✓",
                    style: GoogleFonts.merriweather(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
