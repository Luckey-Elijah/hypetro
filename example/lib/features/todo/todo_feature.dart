import 'package:example/features/todo/bloc/todo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hypetro/hypetro.dart';

import 'ui/todo_view_controller.dart';

class TodoFeature extends Feature<TodoBloc> {
  TodoFeature()
      : super(
          child: const TodoViewController(),
          create: (_) => TodoBloc(),
          key: const Key('TodoFeature'),
        );
}
