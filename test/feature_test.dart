import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hypetro/hypetro.dart';

import 'mocks.dart';

class MyFeature extends Feature<MockMyBloc> {
  MyFeature([Widget? child])
      : super(
          child: child ?? const SizedBox(key: Key('MyFeature-child')),
          create: (_) => MockMyBloc(),
          key: const Key('MyFeature'),
        );
}

void main() {
  group('Feature', () {
    testWidgets('builds child', (tester) async {
      final widget = MyFeature();
      await tester.pumpWidget(widget);
      await tester.pump();

      expect(find.byKey(const Key('MyFeature-child')), findsOneWidget);
    });

    testWidgets('bloc can be read', (tester) async {
      await tester.pumpWidget(
        MyFeature(
          BlocBuilder<MockMyBloc, int>(
            builder: (context, state) {
              expect(state, 0);
              return const SizedBox(key: Key('MyFeature-child'));
            },
          ),
        ),
      );
    });
  });
}
