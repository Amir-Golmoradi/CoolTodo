import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_todo/data/bloc/todo_bloc.dart";
import "package:flutter_todo/data/bloc/todo_state.dart";
import "package:flutter_todo/screen/custom_appbar.dart";
import "package:flutter_todo/screen/dialogbutton.dart";
import "package:flutter_todo/screen/todo_card.dart";
import "package:google_fonts/google_fonts.dart";
import "package:responsive_sizer/responsive_sizer.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final blocProvider = BlocProvider.of<TodoBloc>(context);
    final titleController = TextEditingController();
    final subtitleController = TextEditingController();

    return Scaffold(
      appBar: customAppbar(context),
      floatingActionButton: dialogButton(
          context, titleController, subtitleController, blocProvider),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
            child: Text(
              "Notes",
              style: GoogleFonts.merriweather(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: Adaptive.mm(1)),
          BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              return Expanded(
                child: Center(
                  child: ListView.builder(
                    itemCount: state.todos.length,
                    itemBuilder: (context, index) {
                      if (state.status == TodoStatus.initial ||
                          state.status == TodoStatus.loading) {
                        return const Center(
                          child: CircularProgressIndicator(color: Colors.blue),
                        );
                      }
                      if (state.status == TodoStatus.success) {
                        return todoCard(context, blocProvider, state, index);
                      }
                      return Container();
                    },
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
