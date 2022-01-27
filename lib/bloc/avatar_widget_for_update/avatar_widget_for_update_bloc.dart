import 'package:flutter_bloc/flutter_bloc.dart';

import 'avatar_widget_event_for_update.dart';
import 'avatar_widget_state_for_update.dart';

class AvatarWidgetForUpdateBloc
    extends Bloc<AvatarWidgetForUpdateEvent, AvatarWidgetForUpdateState> {
  AvatarWidgetForUpdateBloc() : super(WidgetInitState()) {
    on<SetAvatarEvent>(
      (event, emit) {
        event.function(event.url);
        emit(AvatarUrlState(url: event.url));
      },
    );
  }
}
