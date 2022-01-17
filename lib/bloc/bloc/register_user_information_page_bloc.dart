import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/event/register_user_information_page_event.dart';
import 'package:uber/bloc/state/register_user_information_page_state.dart';
import 'package:uber/scripts/field_validation.dart';

class RegisterUserInformationPageBloc extends Bloc<
    RegisterUserInformationPageEvent, RegisterUserInformationPageState> {
  RegisterUserInformationPageBloc() : super(PageInitState()) {
    on<AddUserInformationEvent>(
      (event, emit) {
        FieldValidation.checkingFieldsAndMovingToHomePage(
          event.city,
          event.nickname,
          event.pickImageUrl,
          event.phoneNumber,
          event.context,
        );
      },
    );
  }
}
