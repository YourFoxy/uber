import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../service/navigation_service.dart';
part 'edit_user_information_event.dart';
part 'edit_user_information_state.dart';
part 'edit_user_information_bloc.freezed.dart';

class EditUserInformationBloc
    extends Bloc<EditUserInformationEvent, EditUserInformationState> {
  NavigationService navigationService;
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
    // Navigator.push(
    //   event.context,
    //   MaterialPageRoute(
    //     builder: (context) => const HomePage().createWithProvider<HomeBloc>(),
    //   ),
    // );
  }
}
