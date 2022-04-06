import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/register_user_information_page/register_user_information_event.dart';
import 'package:uber/bloc/page_bloc/register_user_information_page/register_user_information_state.dart';
import 'package:uber/scripts/field_validation.dart';

class RegisterUserInformationBloc
    extends Bloc<RegisterUserInformationEvent, RegisterUserInformationState> {
  RegisterUserInformationBloc() : super(PageInitState()) {
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