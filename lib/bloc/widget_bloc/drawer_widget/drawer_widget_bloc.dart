import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/widget_bloc/drawer_widget/drawer_widget_event.dart';
import 'package:uber/bloc/widget_bloc/drawer_widget/drawer_widget_state.dart';
import 'package:uber/service/navigation_service.dart';
import 'package:uber/service/toast_service.dart';

class DrawerWidgetBloc extends Bloc<DrawerWidgetEvent, DrawerWidgetState> {
  ToastService toastService;
  NavigationService navigationService;
  DrawerWidgetBloc({
    required this.toastService,
    required this.navigationService,
  }) : super(WidgetInitialState()) {
    on<ExitEvent>(_onExitEvent);
  }
  _onExitEvent(event, emit) async {
    try {
      await FirebaseAuth.instance.signOut();
      navigationService.navigatorToLoginOrRegisterPage();
      //Navigator.pushNamed(event.context, loginOrRegisterPage);
    } catch (e) {
      toastService.showGeneralErrorToast(e.toString());
    }
  }
}
