import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocProviderExtension on Widget {
  Widget createWithProvider<T extends BlocBase<Object?>>(
    T Function(BuildContext context) createBloc, {
    Key? key,
    bool? lazy,
  }) {
    return BlocProvider(
      create: createBloc,
      key: key,
      // lazy: lazy,
      child: this,
    );
  }
}
