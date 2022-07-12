import 'package:flutter/foundation.dart';
import 'package:uber/scripts/index.dart';

part 'route_search_event.dart';
part 'route_search_state.dart';
part 'route_search_bloc.freezed.dart';

class RouteSearchBloc extends Bloc<RouteSearchEvent, RouteSearchState> {
  RouteSearchBloc() : super(const InitSearchRouteState()) {
    on<ShowFoundeRouteEvent>(_onShowFoundeRouteEvent);
    on<OpenSearchDialogEvent>(_onOpenSearchDialogEvent);
  }

  _onShowFoundeRouteEvent(event, emit) async {
    emit(
      ShowFoundeRouteState(
        routesAndDates: await UserData.getRoutesWithParameters(
          fromSearchRoute: '${event.fromRoute}',
          toSearchRoute: '${event.toRoute}',
        ),
      ),
    );
  }

  _onOpenSearchDialogEvent(event, emit) {
    emit(const OpenSearchDialogState());
  }
}
