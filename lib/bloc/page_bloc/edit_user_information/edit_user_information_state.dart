part of 'edit_user_information_bloc.dart';

@freezed
class EditUserInformationState with _$EditUserInformationState {
  const factory EditUserInformationState.pageInit() = PageInitState;
  const factory EditUserInformationState.uploadNicknameAndCity({
    required String nickname,
    required String city,
  }) = UploadNicknameAndCityState;
}
