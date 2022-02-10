import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/home_page/home_page_event.dart';
import 'package:uber/bloc/home_page/home_page_state.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(PageInitState()) {
    on<LoadedUserInformationEvent>(
      (event, emit) async {
        emit(
          LoadedUserInformationState(
            nicknameAndCity:
                '${await UserData.getFieldValueFromDatabase(nicknameFieldInCollection)}, \n${await UserData.getFieldValueFromDatabase(cityFieldInCollection)}',
            currentUserPhoneNumber: UserData.currentUserPhoneNumber,
          ),
        );
      },
    );
  }
}
