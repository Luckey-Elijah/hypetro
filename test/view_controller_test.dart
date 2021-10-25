import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hypetro/hypetro.dart';

import 'mocks.dart';

class MyViewController
    extends ViewController<MyBloc, int, MockView, MockViewModel> {
  const MyViewController() : super(key: const Key('MyViewController'));

  @override
  MockView buildView(
    BuildContext context,
    MyBloc bloc,
    MockViewModel viewModel,
  ) {
    return MockView(MockActions(bloc), viewModel);
  }

  @override
  MockViewModel stateToViewModel(int state) {
    return MockViewModel();
  }
}

void main() {
  group('ViewController', () {
    testWidgets('builds view', (tester) async {
      final widget = BlocProvider<MyBloc>(
        create: (context) => MyBloc(),
        child: const MyViewController(),
      );

      await tester.pumpWidget(widget);
      await tester.pump();

      expect(find.byKey(const Key('MyViewController')), findsOneWidget);
      expect(find.byKey(const Key('MockView')), findsOneWidget);
    });
  });
}
