// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get_it/get_it.dart';
// import 'package:uber/bloc/page_bloc/register_user_information_page/register_user_information_event.dart';
// import 'package:uber/bloc/page_bloc/register_user_information_page/register_user_information_state.dart';
// import 'package:uber/scripts/field_validation.dart';
// import 'package:uber/service/navigation_service.dart';

import 'package:uber/scripts/index.dart';

class RegisterUserInformationBloc
    extends Bloc<RegisterUserInformationEvent, RegisterUserInformationState> {
  RegisterUserInformationBloc() : super(PageRegisterInitState()) {
    on<AddUserInformationEvent>(_onAddUserInformationEvent);
  }
  _onAddUserInformationEvent(event, emit) {
    FieldValidation.checkingFieldsAndMovingToHomePage(
      event.city,
      event.nickname,
      event.pickImageUrl,
      event.context,
      GetIt.instance.get<NavigationService>(),
    );
  }
}
