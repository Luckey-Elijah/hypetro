import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hypetro/hypetro.dart';

import 'mocks.dart';

class MyView extends View {
  const MyView(ViewActions<Bloc> actions, ViewModel viewModel)
      : super(actions, viewModel, key: const Key('MyView'));

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

void main() {
  group('View', () {
    late ViewActions<Bloc> actions;
    late ViewModel viewModel;

    setUp(() {
      actions = MockActions(MockMyBloc());
      viewModel = MockViewModel();
    });

    testWidgets('builds MyView', (tester) async {
      final widget = MyView(actions, viewModel);

      await tester.pumpWidget(widget);

      expect(find.byKey(const Key('MyView')), findsOneWidget);
    });
  });
}
