import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/event/drawer_widget_event.dart';
import 'package:uber/bloc/state/drawer_widget_state.dart';
import 'package:uber/scripts/const.dart';

class DrawerWidgetBloc extends Bloc<DrawerWidgetEvent, DrawerWidgetState> {
  DrawerWidgetBloc() : super(WidgetInitialState()) {
    on<ExitEvent>(
      (event, emit) async {
        try {
          await FirebaseAuth.instance.signOut().then(
            (value) {
              Navigator.pushNamed(event.context, loginOrRegisterPage);
            },
          );
        } catch (e) {
          emit(
            ExceptionExitState(exception: e.toString()),
          );
        }
      },
    );
  }
}
