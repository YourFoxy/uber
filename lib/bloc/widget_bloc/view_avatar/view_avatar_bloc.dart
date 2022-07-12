import 'package:uber/scripts/index.dart';

class ViewAvatarBloc extends Bloc<ViewAvatarEvent, ViewAvatarState> {
  ViewAvatarBloc() : super(PageViewAvatarInitialState()) {
    on<UploadViewAvatarEvent>(_onUploadAvatarEvent);
  }
  _onUploadAvatarEvent(event, emit) async {
    emit(
      UploadViewAvatarState(
        url: await UserData.getUrlImageFromStorage(),
      ),
    );
  }
}
