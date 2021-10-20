import 'package:flutter/material.dart';
import 'package:hypetro/hypetro.dart';

import 'add_todo_widget.dart';
import 'todo_view_actions.dart';
import 'todo_view_model.dart';

class TodoView extends View<TodoViewActions, TodoViewModel> {
  const TodoView({
    required TodoViewActions actions,
    required TodoViewModel viewModel,
  }) : super(actions, viewModel, key: const Key('TodoView'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: viewModel.todoList.length + 1,
        itemBuilder: (context, index) {
          if (index == viewModel.todoList.length) {
            return AddTodoWidget(onTodoAddTap: actions.onAddNewTodo);
          }
          final todo = viewModel.todoList[index];
          return ListTile(
            leading: Text('$index.'),
            title: Text(todo),
            trailing: IconButton(
              onPressed: () async {
                var shouldRemove =
                    await removeTodoConfirmationDialog(context, todo) ?? false;
                if (shouldRemove) {
                  actions.onRemoveTodo(todo);
                }
              },
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }

  Future<bool?> removeTodoConfirmationDialog(
      BuildContext context, String todo) {
    return showDialog<bool?>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Remove Todo'),
        content: Text('Are you sure you want to remove "$todo"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Remove'),
          ),
          TextButton(
            onPressed: Navigator.of(context).pop,
            child: const Text('Keep'),
          ),
        ],
      ),
    );
  }
}
