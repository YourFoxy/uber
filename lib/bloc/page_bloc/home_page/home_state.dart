part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.pageInit() = PageHomeInitState;

  const factory HomeState.loadedUserInformation({
    required String nicknameAndCity,
    required String currentUserPhoneNumber,
  }) = LoadedUserInformationState;
}
