part of 'edit_user_information_bloc.dart';

@freezed
class EditUserInformationEvent with _$EditUserInformationEvent {
  const factory EditUserInformationEvent.uploadNicknameAndCity() =
      UploadNicknameAndCityEvent;
  const factory EditUserInformationEvent.saveUserInformation({
    required String nickname,
    required String city,
    required String pickImageUrl,
    //required BuildContext context,
  }) = SaveUserInformationEvent;
}

