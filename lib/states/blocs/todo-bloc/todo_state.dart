/*Docs:
* TodoStatus is showing the "different status" of Application
* TodoState is for Managing "different status" of Application
* factory FromJson is for fetching our data from Json file
* toJson Method is for putting data in our Json file
*  */

part of 'todo_bloc.dart';

enum TodoStatus { initial, loading, success, error }

class TodoState extends Equatable {
  final List<TodoModel> todos;
  final TodoStatus status;

  const TodoState({
    this.todos = const <TodoModel>[],
    this.status = TodoStatus.initial,
  });
  TodoState copyWith({
    List<TodoModel>? todos,
    TodoStatus? status,
  }) =>
      TodoState(
        todos: todos ?? this.todos,
        status: status ?? this.status,
      );
  factory TodoState.fromJson(Map<String, dynamic> json) {
    try {
      final todoList = (json['todos'] as List<dynamic>)
          .map((element) => TodoModel.fromJson(element as Map<String, dynamic>))
          .toList();
      return TodoState(
        todos: todoList,
        status: TodoStatus.values
            .firstWhere((element) => element.name.toString() == json['status']),
      );
    } catch (e) {
      rethrow;
    }
  }
  Map<String, dynamic> toJson() => {
        'todos': todos,
        'status': status.name,
      };

  @override
  List<Object?> get props => [todos, status];
}
