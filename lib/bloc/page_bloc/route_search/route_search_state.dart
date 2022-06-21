part of 'route_search_bloc.dart';

@freezed
class RouteSearchState with _$RouteSearchState {
  const factory RouteSearchState.initPage() = InintRouteSearchPageState;
  const factory RouteSearchState.showRoutes(
      {required List<Map<String, String>> routesAndDates}) = ShowRoutesState;
 const factory RouteSearchState.showLocation(
          {required List<List<String>> locationMap}) =
      ShowLocationState;
}
