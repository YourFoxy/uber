import 'package:uber/scripts/index.dart';

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
    } catch (e) {
      toastService.showGeneralErrorToast(e.toString());
    }
  }
}
