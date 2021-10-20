import 'package:example/features/todo/bloc/todo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hypetro/hypetro.dart';

import 'todo_view.dart';
import 'todo_view_actions.dart';
import 'todo_view_model.dart';

class TodoViewController
    extends ViewController<TodoBloc, TodoState, TodoView, TodoViewModel> {
  const TodoViewController({Key? key}) : super(key: key);

  @override
  TodoView buildView(
    BuildContext context,
    TodoBloc bloc,
    TodoViewModel viewModel,
  ) {
    return TodoView(
      actions: TodoViewActions(bloc),
      viewModel: viewModel,
    );
  }

  @override
  TodoViewModel stateToViewModel(TodoState state) {
    return TodoViewModel(state.todos);
  }
}
