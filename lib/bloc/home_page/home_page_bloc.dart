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
        late DocumentSnapshot<Map<String, dynamic>> _snapshot;
        await Auth.fbd
            .collection(collectionNameWithUsers)
            .doc(UserData.currentUserPhoneNumber)
            .get()
            .then(
          (snapshot) {
            _snapshot = snapshot;
          },
        ).whenComplete(
          () => emit(
            LoadedUserInformationState(
              nicknameAndCity:
                  '${_snapshot[nicknameFieldInCollection]}, \n${_snapshot[cityFieldInCollection]}',
              currentUserPhoneNumber: UserData.currentUserPhoneNumber,
            ),
          ),
        );
      },
    );
  }
}
