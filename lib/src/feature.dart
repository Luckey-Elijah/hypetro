import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template feature}
/// A feature creates & provides the Bloc to the entry point of the
/// presentation layer.
/// {@endtemplate}
abstract class Feature<B extends BlocBase<dynamic>> extends StatelessWidget {
  /// {@macro feature}
  const Feature({required this.child, required this.create, Key? key})
      : super(key: key);

  /// The feature's UI child component to receive
  /// the provided Bloc from [create].
  final Widget child;

  /// Create function to generate the Bloc.
  final B Function(BuildContext) create;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: create,
      child: child,
    );
  }
}
