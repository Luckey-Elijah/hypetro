import 'package:flutter_test/flutter_test.dart';
import 'package:hypetro/hypetro.dart';

class MyViewModel extends ViewModel {
  const MyViewModel();
}

void main() {
  group('ViewModel', () {
    test('constructor', () {
      const modelTwo = MyViewModel();
      const modelOne = MyViewModel();

      expect(identical(modelOne, modelTwo), isTrue);
    });
  });
}
