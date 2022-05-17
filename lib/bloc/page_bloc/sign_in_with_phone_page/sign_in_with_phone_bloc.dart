import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/sign_in_with_phone_page/sign_in_with_phone_event.dart';
import 'package:uber/bloc/page_bloc/sign_in_with_phone_page/sign_in_with_phone_state.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/service/navigation_service.dart';
import 'package:uber/service/toast_service.dart';

class SignInWithPhoneBloc
    extends Bloc<SignInWithPhoneEvent, SignInWithPhoneState> {
  NavigationService navigationService;
  ToastService toastService;
  SignInWithPhoneBloc(
      {required this.toastService, required this.navigationService, re})
      : super(PageInitialState()) {
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
          // Navigator.push(
          //   event.context,
          //   MaterialPageRoute(
          //     builder: (context) => CodePage(
          //       isRegister: true,
          //       phoneNumber: event.phoneNumber,
          //     ).createWithProvider<VerifyCodeBloc>(),
          //   ),
          //);
        }
      } else {
        if (!_phoneNumberExists) {
          toastService.showGeneralErrorToast(noNumberInDatabase);
        } else {
          Auth.signIn(event.phoneNumber);
          navigationService.navigatorToCodePage(
              phoneNumber: event.phoneNumber, isRegister: false);
          // Navigator.push(
          //   event.context,
          //   MaterialPageRoute(
          //     builder: (context) => CodePage(
          //       isRegister: false,
          //       phoneNumber: event.phoneNumber,
          //     ).createWithProvider<VerifyCodeBloc>(),
          //   ),
          // );
        }
      }
    }
  }
}
