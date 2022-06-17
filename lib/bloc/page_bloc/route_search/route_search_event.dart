part of 'route_search_bloc.dart';

@freezed
class RouteSearchEvent with _$RouteSearchEvent {
  const factory RouteSearchEvent.searchRoutes({
    required String fromRoute,
    required String toRoute,
  }) = SearchRoutesEvent;
  const factory RouteSearchEvent.changeSaveRouteStatus() =
      ChangeSaveRouteStatusEvent;
 
}
