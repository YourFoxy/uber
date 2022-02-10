import 'package:flutter_bloc/flutter_bloc.dart';

import 'editable_round_avatar_event.dart';
import 'editable_round_avatar_state.dart';

class EditableRoundAvatarBloc
    extends Bloc<EditableRoundAvatarEvent, EditableRoundAvatarState> {
  EditableRoundAvatarBloc() : super(WidgetInitState()) {
    on<SetAvatarEvent>(
      (event, emit) {
        emit(AvatarUrlState(url: event.url));
      },
    );
  }
}
