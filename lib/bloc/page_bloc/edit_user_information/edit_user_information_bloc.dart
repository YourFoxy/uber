import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/edit_user_information_page/edit_user_information_event.dart';
import 'package:uber/bloc/page_bloc/edit_user_information_page/edit_user_information_state.dart';
import 'package:uber/bloc/page_bloc/home_page/home_bloc.dart';
import 'package:uber/extension/bloc_widget_extension.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';

class EditUserInformationBloc
    extends Bloc<EditUserInformationEvent, EditUserInformationState> {
  EditUserInformationBloc() : super(PageInitState()) {
    on<UploadNicknameAndCityEvent>(
      (event, emit) async {
        emit(
          UploadNicknameAndCityState(
            nickname: await UserData.getFieldValueFromDatabase(
                nicknameFieldInCollection),
            city:
                await UserData.getFieldValueFromDatabase(cityFieldInCollection),
          ),
        );
      },
    );
    on<SaveUserInformationEvent>(
      (event, emit) async {
        await UserData.updateCurrentUserInformation(
            event.nickname, event.city, event.pickImageUrl);
        Navigator.push(
          event.context,
          MaterialPageRoute(
            builder: (context) =>
                const HomePage().createWithProvider<HomeBloc>(),
          ),
        );
      },
    );
  }
}
