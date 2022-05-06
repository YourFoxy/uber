import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/home_page/home_bloc.dart';
import 'package:uber/extension/bloc_widget_extension.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_user_information_event.dart';
part 'edit_user_information_state.dart';
part 'edit_user_information_bloc.freezed.dart';

class EditUserInformationBloc
    extends Bloc<EditUserInformationEvent, EditUserInformationState> {
  EditUserInformationBloc() : super(const EditUserInformationState.pageInit()) {
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
    Navigator.push(
      event.context,
      MaterialPageRoute(
        builder: (context) => const HomePage().createWithProvider<HomeBloc>(),
      ),
    );
  }
}
