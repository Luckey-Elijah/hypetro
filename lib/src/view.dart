import 'package:flutter/material.dart';
import 'package:hypetro/hypetro.dart';

/// {@template view}
/// Holds UI elements of the application on a per screen basis.
/// When used with a view controller, this is rebuild each time the view model
/// changes.
///
/// If no actions or view model object is needed,
/// prefer to just use a StatelessWidget.
/// {@endtemplate}
@immutable
abstract class View<A extends ViewActions, V extends ViewModel>
    extends StatelessWidget {
  /// {@macro view}
  const View(
    this.actions,
    this.viewModel, {
    Key? key,
  }) : super(key: key);

  /// The actions for this view.
  final A actions;

  /// The view model for this view.
  final V viewModel;
}
