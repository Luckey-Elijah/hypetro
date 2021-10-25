import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypetro/hypetro.dart';

class MockMyBloc extends MockBloc<int, int> implements MyBloc {}

class MyBloc extends Bloc<int, int> {
  MyBloc() : super(0);
}

class MockActions extends ViewActions<MyBloc> {
  const MockActions(MyBloc bloc) : super(bloc);
}

class MockViewModel extends ViewModel {}

class MockView extends View<MockActions, MockViewModel> {
  const MockView(MockActions actions, MockViewModel viewModel)
      : super(actions, viewModel, key: const Key('MockView'));

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
