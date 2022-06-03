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
