part of 'route_card_bloc.dart';

@freezed
class RouteCardEvent with _$RouteCardEvent {
  const factory RouteCardEvent.removeRoute({
    required String routeId,
    required String nameCollection,
  }) = RemoveRouteEvent;
  const factory RouteCardEvent.loadedRoutes({
    required String nameCollection,
  }) = LoadedRoutesEvent;
}
