import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/bloc/event/drawer_widget_event.dart';
import 'package:uber/bloc/state/drawer_widget_state.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/widgets.dart';
import 'package:uber/service/toast_service.dart';

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
          GetIt.instance
              .get<ToastService>()
              .showGeneralErrorToast(e.toString());
        }
      },
    );
  }
}
