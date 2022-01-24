import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/bloc/event/avatar_widget_event.dart';
import 'package:uber/bloc/state/avatar_widget_state.dart';
import 'package:uber/scripts/widgets.dart';
import 'package:uber/service/toast_service.dart';

class AvatarWidgetBloc extends Bloc<AvatarWidgetEvent, AvatarWidgetState> {
  AvatarWidgetBloc() : super(WidgetInitState()) {
    on<SetAvatarEvent>(
      (event, emit) {
        event.function(event.url);
        emit(AvatarUrlState(url: event.url));
      },
    );
  }
}
