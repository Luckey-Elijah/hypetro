import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypetro/hypetro.dart';

/// {@template view_controller}
/// Builds view widget and maps the state to the view model.
/// {@endtemplate}
abstract class ViewController<B extends BlocBase<S>, S, V extends View,
    M extends ViewModel> extends StatelessWidget {
  /// {@macro view_controller}
  const ViewController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<B>();
    return BlocBuilder<B, S>(
      bloc: bloc,
      // TODO (Luckey-Elijah): Add [buildWhen] API option.
      // Determine if design should be:
      // - parameter in constructor (I don't think I prefer this.)
      // - a method to be optionally overridden
      builder: (BuildContext context, S state) {
        final viewModel = stateToViewModel(state);
        return buildView(context, bloc, viewModel);
      },
    );
  }

  /// Map the emitted state to the view model.
  M stateToViewModel(S state);

  /// Create the view based on the given view model.
  V buildView(BuildContext context, B bloc, M viewModel);
}
