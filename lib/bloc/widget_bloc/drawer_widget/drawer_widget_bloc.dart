import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/widget_bloc/drawer_widget/drawer_widget_event.dart';
import 'package:uber/bloc/widget_bloc/drawer_widget/drawer_widget_state.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/service/toast_service.dart';

class DrawerWidgetBloc extends Bloc<DrawerWidgetEvent, DrawerWidgetState> {
  ToastService toastService;
  DrawerWidgetBloc({required this.toastService}) : super(WidgetInitialState()) {
    on<ExitEvent>(
      (event, emit) async {
        try {
          await FirebaseAuth.instance.signOut();
          Navigator.pushNamed(event.context, loginOrRegisterPage);
        } catch (e) {
          toastService.showGeneralErrorToast(e.toString());
        }
      },
    );
  }
}
