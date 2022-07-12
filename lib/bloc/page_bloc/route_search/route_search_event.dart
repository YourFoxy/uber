part of 'route_search_bloc.dart';

@freezed
class RouteSearchEvent with _$RouteSearchEvent {
  const factory RouteSearchEvent.showRoute({
    required String fromRoute,
    required String toRoute,
  }) = ShowFoundeRouteEvent;
}
