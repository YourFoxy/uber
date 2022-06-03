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
