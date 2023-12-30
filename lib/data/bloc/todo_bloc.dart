import "package:equatable/equatable.dart";
import "package:flutter_todo/data/bloc/todo_state.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "../model/todo_model.dart";

part "todo_event.dart";

class TodoBloc extends HydratedBloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState()) {
    on<TodoStarted>(_onStarted);
    on<AddTodo>(_onAddTodo);
    on<RemoveTodo>(_onRemoveTodo);
    on<ChangeTodo>(_onChangeTodo);
  }

  void _onStarted(
    TodoStarted event,
    Emitter<TodoState> emit,
  ) {
    if (state.status == TodoStatus.success) return;
    emit(
      state.copyWith(
        todos: state.todos,
        status: TodoStatus.success,
      ),
    );
  }

  void _onAddTodo(
    AddTodo event,
    Emitter<TodoState> emit,
  ) {
    emit(state.copyWith(status: TodoStatus.loading));
    try {
      List<Todo> notes = [];
      notes.addAll(state.todos);
      notes.insert(0, event.todo);
      emit(
        state.copyWith(
          todos: notes,
          status: TodoStatus.success,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: TodoStatus.error,
        ),
      );
    }
  }

  void _onRemoveTodo(
    RemoveTodo event,
    Emitter<TodoState> emit,
  ) {
    // Remove Todo State during starting the app
    emit(
      state.copyWith(
        status: TodoStatus.loading,
      ),
    );
    try {
      state.todos.remove(event.todo);
      emit(
        state.copyWith(
          todos: state.todos,
          status: TodoStatus.success,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: TodoStatus.error,
        ),
      );
    }
  }

  void _onChangeTodo(
    ChangeTodo event,
    Emitter<TodoState> emit,
  ) {
    emit(state.copyWith(status: TodoStatus.loading));
    try {
      state.todos[event.index].isDone = !state.todos[event.index].isDone;
      emit(state.copyWith(todos: state.todos, status: TodoStatus.success));
    } catch (e) {
      emit(state.copyWith(status: TodoStatus.error));
    }
  }

  @override
  TodoState? fromJson(Map<String, dynamic> json) {
    return TodoState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TodoState state) {
    return state.toJson();
  }
}
