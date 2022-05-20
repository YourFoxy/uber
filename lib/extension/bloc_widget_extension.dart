// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get_it/get_it.dart';
import 'package:uber/scripts/index.dart';

extension BlocWidgetExpension on Widget {
  Widget createWithProvider<T extends Bloc>() {
    return BlocProvider<T>(
      create: (_) => GetIt.instance.get<T>(),
      child: this,
    );
  }
}
