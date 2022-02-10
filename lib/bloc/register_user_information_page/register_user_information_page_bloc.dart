import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/register_user_information_page/register_user_information_page_event.dart';
import 'package:uber/bloc/register_user_information_page/register_user_information_page_state.dart';
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
          event.context,
        );
      },
    );
  }
}
