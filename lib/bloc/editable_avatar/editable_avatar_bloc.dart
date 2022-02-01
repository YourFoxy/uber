import 'package:flutter_bloc/flutter_bloc.dart';

import 'editable_avatar_event.dart';
import 'editable_avatar_state.dart';

class EditableAvatarBloc
    extends Bloc<EditableAvatarEvent, EditableAvatarState> {
  EditableAvatarBloc() : super(WidgetInitState()) {
    on<SetAvatarEvent>(
      (event, emit) {
        event.function(event.url);
        emit(AvatarUrlState(url: event.url));
      },
    );
  }
}
