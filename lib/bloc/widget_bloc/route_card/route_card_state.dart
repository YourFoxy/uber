part of 'route_card_bloc.dart';

@freezed
class RouteCardState with _$RouteCardState {
  const factory RouteCardState.routeCardInit() = RouteCardInitState;
  const factory RouteCardState.loadedRoutes({
    required List<Map<String, String>> routesAndDates,
  }) = LoadedUserRoutesState;
  const factory RouteCardState.removeRoute({
    required List<Map<String, String>> routesAndDates,
  }) = RemoveRouteState;
}
