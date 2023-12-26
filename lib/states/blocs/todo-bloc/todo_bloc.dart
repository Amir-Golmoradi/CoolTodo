import 'package:equatable/equatable.dart';
import 'package:flutter_todo/domain/model/todomodel.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends HydratedBloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState()) {
    on<InitialTodo>(initTodo);
    on<AddTodo>(addTodo);
    on<DeleteTodo>(deleteTodo);
    on<OnChangeStatusTodo>(changeStatusTodo);
  }

  void initTodo(TodoEvent event, Emitter<TodoState> emit) {
    if (state.status == TodoStatus.success) return;
    emit(
      state.copyWith(
        todos: state.todos,
        status: TodoStatus.success,
      ),
    );
  }

  void addTodo(AddTodo event, Emitter<TodoState> emit) {
    //? app current Status
    emit(
      state.copyWith(status: TodoStatus.loading),
    );
    //? app Status during fetching data
    try {
      List<TodoModel> task = [];
      //* add all data from todos
      task.addAll(state.todos);
      task.insert(0, event.todoModel);
    } catch (e) {
      emit(
        state.copyWith(status: TodoStatus.error),
      );
    }
  }

  void deleteTodo(DeleteTodo event, Emitter<TodoState> emit) {
    emit(state.copyWith(status: TodoStatus.loading));

    try {
      state.todos.remove(event.todoModel);
      emit(state.copyWith(status: TodoStatus.success));
    } catch (e) {
      emit(state.copyWith(status: TodoStatus.error));
    }
  }

  void changeStatusTodo(OnChangeStatusTodo event, Emitter<TodoState> emit) {
    emit(state.copyWith(status: TodoStatus.loading));
    try {
      final int index;
      state.todos[event.index].isCompleted ==
          !state.todos[event.index].isCompleted;

      emit(state.copyWith(todos: state.todos, status: TodoStatus.success));
    } catch (e) {
      emit(state.copyWith(status: TodoStatus.error));
    }
  }

  @override
  TodoState? fromJson(Map<String, dynamic> json) => TodoState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(TodoState state) => state.toJson();
}
