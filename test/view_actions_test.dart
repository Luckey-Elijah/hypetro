import 'package:flutter_test/flutter_test.dart';
import 'package:hypetro/hypetro.dart';

import 'mocks.dart';

class MyViewActions extends ViewActions<MyBloc> {
  const MyViewActions(MyBloc bloc) : super(bloc);
}

void main() {
  group('ViewActions', () {
    test('bloc', () {
      final actions = MyViewActions(MockMyBloc());

      expect(actions.bloc, isA<MyBloc>());
    });

    test('constructor', () {
      expect(
        MyViewActions(MockMyBloc()),
        isA<ViewActions>(),
      );
    });
  });
}
