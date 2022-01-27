import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/scripts/user_data.dart';

import 'avatar_widget_for_view_event.dart';
import 'avatar_widget_for_view_state.dart';

class AvatarWidgetForViewBloc
    extends Bloc<AvatarWidgetForViewEvent, AvatarWidgetForViewState> {
  AvatarWidgetForViewBloc() : super(PageInitialState()) {
    on<UploadAvatarEvent>((event, emit) async {
      emit(
        UploadAvatarState(
          url: await UserData.getUrlImapeFromStorage(),
        ),
      );
    });
  }
}
