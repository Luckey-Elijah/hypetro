part of 'todo_bloc.dart';

@immutable
class TodoState {
  const TodoState(this.todos);

  const TodoState._initial() : todos = const ['Task 1', 'Task 2'];

  final List<String> todos;

  TodoState copyWith({List<String>? todos}) {
    return TodoState(todos ?? this.todos);
  }
}
