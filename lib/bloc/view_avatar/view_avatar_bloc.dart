import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/scripts/user_data.dart';

import 'view_avatar_event.dart';
import 'view_avatar_state.dart';

class ViewAvatarBloc extends Bloc<ViewAvatarEvent, ViewAvatarState> {
  ViewAvatarBloc() : super(PageInitialState()) {
    on<UploadAvatarEvent>(
      (event, emit) async {
        emit(
          UploadAvatarState(
            url: await UserData.getUrlImapeFromStorage(),
          ),
        );
      },
    );
  }
}
