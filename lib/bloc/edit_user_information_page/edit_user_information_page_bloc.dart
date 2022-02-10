import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/edit_user_information_page/edit_user_information_page_event.dart';
import 'package:uber/bloc/edit_user_information_page/edit_user_information_page_state.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';

class EditUserInformationPageBloc
    extends Bloc<EditUserInformationPageEvent, EditUserInformationPageState> {
  EditUserInformationPageBloc() : super(PageInitState()) {
    on<UploadNicknameAndCityEvent>(
      (event, emit) async {
        event.nicknameController.text =
            await UserData.getFieldValueFromDatabase(nicknameFieldInCollection);
        event.cityController.text =
            await UserData.getFieldValueFromDatabase(cityFieldInCollection);
        emit(
          UploadNicknameAndCityState(
            nicknameController: event.nicknameController,
            cityController: event.cityController,
          ),
        );
      },
    );
  }
}
