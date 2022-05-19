// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uber/bloc/widget_bloc/editable_avatar/editable_round_avatar_event.dart';
// import 'package:uber/bloc/widget_bloc/editable_avatar/editable_round_avatar_state.dart';

import 'package:uber/scripts/index.dart';

class EditableRoundAvatarBloc
    extends Bloc<EditableRoundAvatarEvent, EditableRoundAvatarState> {
  EditableRoundAvatarBloc() : super(WidgetInitState()) {
    on<SetAvatarEvent>(_onSetAvatarEvent);
  }
  _onSetAvatarEvent(event, emit) {
    emit(AvatarUrlState(url: event.url));
  }
}
