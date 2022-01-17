import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/event/sign_in_with_phone_page_event.dart';
import 'package:uber/bloc/state/sign_in_with_phone_page_state.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/pages/code_page.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';

class SignInWithPhonePageBloc
    extends Bloc<SignInWithPhonePageEvent, SignInWithPhonePageState> {
  SignInWithPhonePageBloc() : super(PageInitialState()) {
    on<SendCodeEvent>(
      (event, emit) async {
        bool _phoneNumberExists =
            await UserData.checkPhoneNumberInDatabase(event.phoneNumber);

        if (event.phoneNumber.length < 19) {
          emit(
            NumberPhoneState(phoneNumberState: shortNumber),
          );
        } else {
          if (event.isRegister) {
            if (_phoneNumberExists) {
              emit(
                NumberPhoneState(phoneNumberState: numberIsInDatabase),
              );
            } else {
              Auth.signIn(event.phoneNumber);
              Navigator.push(
                event.context,
                MaterialPageRoute(
                  builder: (context) => CodePage(
                    isRegister: true,
                    phoneNumber: event.phoneNumber,
                  ),
                ),
              );
            }
          } else {
            if (!_phoneNumberExists) {
              emit(
                NumberPhoneState(phoneNumberState: noNumberInDatabase),
              );
            } else {
              Auth.signIn(event.phoneNumber);
              Navigator.push(
                event.context,
                MaterialPageRoute(
                  builder: (context) => CodePage(
                    isRegister: false,
                    phoneNumber: event.phoneNumber,
                  ),
                ),
              );
            }
          }
        }
      },
    );
  }
}
