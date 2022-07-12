part of 'route_search_bloc.dart';

@freezed
class RouteSearchState with _$RouteSearchState {
  const factory RouteSearchState.initPage() = InitSearchRouteState;
  const factory RouteSearchState.showRoute(
          {required List<Map<String, String>> routesAndDates}) =
      ShowFoundeRouteState;
  const factory RouteSearchState.openSearchDialog() = OpenSearchDialogState;
}
