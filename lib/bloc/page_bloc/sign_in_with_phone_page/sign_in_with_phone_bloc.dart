import 'package:uber/scripts/index.dart';

class SignInWithPhoneBloc
    extends Bloc<SignInWithPhoneEvent, SignInWithPhoneState> {
  NavigationService navigationService;
  ToastService toastService;
  SignInWithPhoneBloc(
      {required this.toastService, required this.navigationService, re})
      : super(PageSignInInitialState()) {
    on<SendCodeEvent>(_onSendCodeEvent);
  }
  _onSendCodeEvent(event, emit) async {
    final _phoneNumberExists =
        await UserData.checkPhoneNumberInDatabase(event.phoneNumber);

    if (event.phoneNumber.length < 19) {
      toastService.showGeneralErrorToast(shortNumber);
    } else {
      if (event.isRegister) {
        if (_phoneNumberExists) {
          toastService.showGeneralErrorToast(numberIsInDatabase);
        } else {
          Auth.signIn(event.phoneNumber);
          navigationService.navigatorToCodePage(
              phoneNumber: event.phoneNumber, isRegister: true);
        }
      } else {
        if (!_phoneNumberExists) {
          toastService.showGeneralErrorToast(noNumberInDatabase);
        } else {
          Auth.signIn(event.phoneNumber);
          navigationService.navigatorToCodePage(
              phoneNumber: event.phoneNumber, isRegister: false);
        }
      }
    }
  }
}
