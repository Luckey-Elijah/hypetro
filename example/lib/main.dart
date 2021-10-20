import 'package:example/features/todo/todo_feature.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp() : super(key: const Key('MyApp'));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'features',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
            const Divider(thickness: 2),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: const [
                  TodoFeatureEntryPoint(),
                  SomeOtherFeatureEntryPoint(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TodoFeatureEntryPoint extends StatelessWidget {
  const TodoFeatureEntryPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => TodoFeature())),
      child: const ListTile(
        leading: Icon(Icons.check),
        title: Text('Todo Feature'),
      ),
    );
  }
}

class SomeOtherFeatureEntryPoint extends StatelessWidget {
  const SomeOtherFeatureEntryPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => TodoFeature())),
      child: const ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text('Some Other Feature'),
      ),
    );
  }
}
