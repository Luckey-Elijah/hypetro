part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {
  const TodoEvent(this.value);
  final String value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TodoEvent && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class AddTodo extends TodoEvent {
  const AddTodo(String value) : super(value);
}

class RemoveTodo extends TodoEvent {
  const RemoveTodo(String value) : super(value);
}
