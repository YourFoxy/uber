import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/event/avatar_widget_event.dart';
import 'package:uber/bloc/state/avatar_widget_state.dart';

class AvatarWidgetBloc extends Bloc<AvatarWidgetEvent, AvatarWidgetState> {
  AvatarWidgetBloc() : super(WidgetInitState()) {
    on<SetAvatarEvent>(
      (event, emit) {
        emit(AvatarUrlState(url: event.url));
      },
    );
  }
}
