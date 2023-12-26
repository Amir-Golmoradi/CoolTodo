part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object?> get props => [];
}

final class InitialTodo extends TodoEvent {}

final class AddTodo extends TodoEvent {
  final TodoModel todoModel;

  const AddTodo(this.todoModel);

  @override
  List<Object?> get props => [todoModel];
}

final class DeleteTodo extends TodoEvent {
  final TodoModel todoModel;

  const DeleteTodo(this.todoModel);

  @override
  List<Object?> get props => [todoModel];
}

class OnChangeStatusTodo extends TodoEvent {
  final int index;

  const OnChangeStatusTodo(this.index);

  @override
  List<Object?> get props => [index];
}
