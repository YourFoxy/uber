import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/code_page/code_event.dart';
import 'package:uber/bloc/page_bloc/code_page/code_state.dart';
import 'package:uber/domain/auth.dart';

class CodeBloc extends Bloc<CodeEvent, CodeState> {
  CodeBloc() : super(PageInitialState()) {
    on<SignInEvent>(
      (event, emit) {
        Auth.verificationID(
          event.smsCode,
          event.context,
          event.phoneNumber,
        );
      },
    );
  }
}
