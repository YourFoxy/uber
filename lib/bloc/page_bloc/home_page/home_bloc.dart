import 'package:uber/scripts/index.dart';
import 'package:flutter/foundation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.pageInit()) {
    on<LoadedUserInformationEvent>(_onLoadedUserInformationEvent);
  }

  _onLoadedUserInformationEvent(event, emit) async {
    emit(
      HomeState.loadedUserInformation(
        nicknameAndCity:
            '${await UserData.getFieldValueFromDatabase(nicknameFieldInCollection)}, \n${await UserData.getFieldValueFromDatabase(cityFieldInCollection)}',
        currentUserPhoneNumber: UserData.currentUserPhoneNumber,
      ),
    );
  }
}
