import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState._initial()) {
    on<AddTodo>((event, emit) {
      var todos = List.of(state.todos);
      todos.add(event.value);
      emit(state.copyWith(todos: todos));
    });

    on<RemoveTodo>((event, emit) {
      var todos = List.of(state.todos);
      todos.remove(todos.firstWhere((todo) => todo == event.value));
      emit(state.copyWith(todos: todos));
    });
  }
}
