// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uber/bloc/widget_bloc/view_avatar/view_avatar_event.dart';
// import 'package:uber/bloc/widget_bloc/view_avatar/view_avatar_state.dart';
// import 'package:uber/scripts/user_data.dart';

import 'package:uber/scripts/index.dart';

class ViewAvatarBloc extends Bloc<ViewAvatarEvent, ViewAvatarState> {
  ViewAvatarBloc() : super(PageViewAvatarInitialState()) {
    on<UploadViewAvatarEvent>(_onUploadAvatarEvent);
  }
  _onUploadAvatarEvent(event, emit) async {
    emit(
      UploadViewAvatarState(
        url: await UserData.getUrlImapeFromStorage(),
      ),
    );
  }
}
