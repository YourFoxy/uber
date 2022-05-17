import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/bloc/page_bloc/verify_code/verify_code_event.dart';
import 'package:uber/bloc/page_bloc/verify_code/verify_code_state.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/service/navigation_service.dart';

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
