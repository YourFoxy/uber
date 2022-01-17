import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/event/code_page_event.dart';
import 'package:uber/bloc/state/code_page_state.dart';
import 'package:uber/domain/auth.dart';

class CodePageBloc extends Bloc<CodePageEvent, CodePageState> {
  CodePageBloc() : super(PageInitialState()) {
    on<SignInEvent>(
      (event, emit) {
        Auth.verificationID(
          event.smsCode,
          event.isRegister,
          event.context,
          event.phoneNumber,
        );
      },
    );
  }
}
