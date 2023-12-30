part of "todo_bloc.dart";

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class TodoStarted extends TodoEvent {}

class AddTodo extends TodoEvent {
  final Todo todo;

  const AddTodo(this.todo);
  @override
  List<Object> get props => [todo];
}

class RemoveTodo extends TodoEvent {
  final Todo todo;

  const RemoveTodo(this.todo);
  @override
  List<Object> get props => [todo];
}

class ChangeTodo extends TodoEvent {
  final int index;

  const ChangeTodo(this.index);
    
  @override
  List<Object> get props => [index];
}
