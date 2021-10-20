import 'package:flutter/material.dart';

class AddTodoWidget extends StatefulWidget {
  const AddTodoWidget({
    required this.onTodoAddTap,
  }) : super(key: const Key('AddTodoWidget'));

  final Function(String) onTodoAddTap;

  @override
  State<AddTodoWidget> createState() => _AddTodoWidgetState();
}

class _AddTodoWidgetState extends State<AddTodoWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: 'Add a new todo!');
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextField(controller: controller),
      trailing: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () => widget.onTodoAddTap(controller.text),
      ),
    );
  }
}
