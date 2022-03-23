import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uber/scripts/user_data.dart';
part 'editable_rectangular_avatar_event.dart';
part 'editable_rectangular_avatar_state.dart';
part 'editable_rectangular_avatar_bloc.freezed.dart';

class EditableRectangularAvatarBloc extends Bloc<EditableRectangularAvatarEvent,
    EditableRectangularAvatarState> {
  EditableRectangularAvatarBloc()
      : super(const EditableRectangularAvatarState.widgetInit()) {
    on<UploadAvatarEvent>(
      (event, emit) async {
        emit(
          EditableRectangularAvatarState.uploadAvatar(
            url: await UserData.getUrlImapeFromStorage(),
          ),
        );
      },
    );
    on<SetAvatarEvent>((event, emit) {
      emit(EditableRectangularAvatarState.pickImage(url: event.url));
    });
  }
}
