import 'package:example/features/todo/bloc/todo_bloc.dart';
import 'package:hypetro/hypetro.dart';

class TodoViewActions extends ViewActions<TodoBloc> {
  const TodoViewActions(TodoBloc bloc) : super(bloc);

  void onAddNewTodo(String todo) => bloc.add(AddTodo(todo));

  void onRemoveTodo(String todo) => bloc.add(RemoveTodo(todo));
}
