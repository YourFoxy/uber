import 'package:uber/scripts/index.dart';

part 'editable_rectangular_avatar_event.dart';
part 'editable_rectangular_avatar_state.dart';
part 'editable_rectangular_avatar_bloc.freezed.dart';

class EditableRectangularAvatarBloc extends Bloc<EditableRectangularAvatarEvent,
    EditableRectangularAvatarState> {
  EditableRectangularAvatarBloc()
      : super(const EditableRectangularAvatarState.widgetInit()) {
    on<UploadRectangularAvatarEvent>(_onUploadRectangularAvatarEvent);
    on<SetRectangularAvatarEvent>(_onSetRectangularAvatarEvent);
  }
  _onUploadRectangularAvatarEvent(event, emit) async {
    emit(
      EditableRectangularAvatarState.uploadAvatar(
        url: await UserData.getUrlImapeFromStorage(),
      ),
    );
  }

  _onSetRectangularAvatarEvent(event, emit) {
    emit(EditableRectangularAvatarState.pickImage(url: event.url));
  }
}
