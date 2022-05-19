// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uber/bloc/page_bloc/home_page/home_event.dart';
// import 'package:uber/bloc/page_bloc/home_page/home_state.dart';
// import 'package:uber/scripts/const.dart';
// import 'package:uber/scripts/user_data.dart';

import 'package:uber/scripts/index.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(PageHomeInitState()) {
    on<LoadedUserInformationEvent>(_onLoadedUserInformationEvent);
  }
  _onLoadedUserInformationEvent(event, emit) async {
    emit(
      LoadedUserInformationState(
        nicknameAndCity:
            '${await UserData.getFieldValueFromDatabase(nicknameFieldInCollection)}, \n${await UserData.getFieldValueFromDatabase(cityFieldInCollection)}',
        currentUserPhoneNumber: UserData.currentUserPhoneNumber,
      ),
    );
  }
}
