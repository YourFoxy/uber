import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/widget_bloc/editable_rectangular_avatar/editable_rectangular_avatar_event.dart';
import 'package:uber/bloc/widget_bloc/editable_rectangular_avatar/editable_rectangular_avatar_state.dart';
import 'package:uber/scripts/user_data.dart';

class EditableRectangularAvatarBloc extends Bloc<EditableRectangularAvatarEvent,
    EditableRectangularAvatarState> {
  EditableRectangularAvatarBloc() : super(WidgetInitState()) {
    on<UploadAvatarEvent>(
      (event, emit) async {
        emit(
          UploadAvatarState(
            url: await UserData.getUrlImapeFromStorage(),
          ),
        );
      },
    );
    on<SetAvatarEvent>((event, emit) {
      emit(PickImageState(url: event.url));
    });
  }
}
