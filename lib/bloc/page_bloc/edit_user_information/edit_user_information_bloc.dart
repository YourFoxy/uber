import 'package:uber/scripts/index.dart';

part 'edit_user_information_event.dart';
part 'edit_user_information_state.dart';
part 'edit_user_information_bloc.freezed.dart';

class EditUserInformationBloc
    extends Bloc<EditUserInformationEvent, EditUserInformationState> {
  final NavigationService navigationService;
  EditUserInformationBloc({required this.navigationService})
      : super(const EditUserInformationState.pageInit()) {
    on<UploadNicknameAndCityEvent>(_onUploadNicknameAndCityEvent);
    on<SaveUserInformationEvent>(_onSaveUserInformationEvent);
  }
  _onUploadNicknameAndCityEvent(event, emit) async {
    emit(
      EditUserInformationState.uploadNicknameAndCity(
        nickname:
            await UserData.getFieldValueFromDatabase(nicknameFieldInCollection),
        city: await UserData.getFieldValueFromDatabase(cityFieldInCollection),
      ),
    );
  }

  _onSaveUserInformationEvent(event, emit) async {
    await UserData.updateCurrentUserInformation(
        event.nickname, event.city, event.pickImageUrl);
    navigationService.navigatorToHomePage();
  }
}
