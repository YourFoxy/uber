import 'package:uber/scripts/index.dart';

class VerifyCodeBloc extends Bloc<VerifyCodeEvent, VerifyCodeState> {
  VerifyCodeBloc() : super(PageInitialState()) {
    on<SignInEvent>(_onSignInEvent);
  }
  _onSignInEvent(event, emit) {
    Auth.verificationID(
      event.smsCode,
      event.context,
      event.phoneNumber,
      GetIt.instance.get<NavigationService>(),
    );
  }
}
