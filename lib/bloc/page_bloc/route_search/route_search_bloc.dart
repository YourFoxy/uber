import 'package:flutter/foundation.dart';
import 'package:uber/scripts/index.dart';

part 'route_search_event.dart';
part 'route_search_state.dart';
part 'route_search_bloc.freezed.dart';

class RouteSearchBloc extends Bloc<RouteSearchEvent, RouteSearchState> {
  RouteSearchBloc() : super(const RouteSearchState.initPage()) {
    on<SearchRoutesEvent>(_onSearchRoutesEvent);
    on<ShowLocationEvent>(_onShowLocationEvent);
  }

  _onSearchRoutesEvent(event, emit) async {
    emit(
      ShowRoutesState(
        routesAndDates: await UserData.getRoutesWithParameters(
          fromSearchRoute: '${event.fromRoute}',
          toSearchRoute: '${event.toRoute}',
        ),
      ),
    );
  }

  _onShowLocationEvent(event, emit) async {
    List<List<String>> locationMap =
        await LocationData.createLocationMap(event.context);
    emit(
      ShowLocationState(locationMap: locationMap),
    );
  }
}
