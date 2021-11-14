import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

/// {@template view_actions}
/// Events the user can invoke through interactions with the UI.
/// It's easier to maintain and mock these actions for the sake of testing.
/// View actions should be assign to a view.
/// {@endtemplate}
@immutable
abstract class ViewActions<B extends BlocBase> {
  /// {@macro view_actions}
  const ViewActions(this._bloc);

  /// The bloc associate to this actions object.
  final B _bloc;

  /// The bloc associate to this actions object.
  B get bloc => _bloc;
}
