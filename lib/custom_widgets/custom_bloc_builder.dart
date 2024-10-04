import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBlocBuilder<B extends BlocBase<S>, S> extends StatelessWidget {
  final B bloc;
  final Widget Function(BuildContext, S) builder; 
  final Widget? loadingWidget; 
  final Widget Function(BuildContext, String)? errorBuilder;
  final bool Function(S) isLoading;
  final bool Function(S) isError; 
  final String Function(S)? errorMessage;

  const CustomBlocBuilder({
    Key? key,
    required this.bloc,
    required this.builder,
    this.loadingWidget,
    this.errorBuilder,
    required this.isLoading,
    required this.isError,
    this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      
      bloc: bloc,
      builder: (context, state) {
        if (isLoading(state)) {
          return Center(child: loadingWidget ?? const CircularProgressIndicator());
        } else if (isError(state)) {
          return Center(child: errorBuilder?.call(context, errorMessage?.call(state) ?? 'An error occurred') ?? Text('Error: ${errorMessage?.call(state) ?? ''}'));
        }
        return builder(context, state);
      },
    );
  }
}
