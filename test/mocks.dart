import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MockMyBloc extends MockBloc<int, int> implements MyBloc {}

class MyBloc extends Bloc<int, int> {
  MyBloc(int initialState) : super(initialState);
}
