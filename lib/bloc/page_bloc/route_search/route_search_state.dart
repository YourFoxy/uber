part of 'route_search_bloc.dart';

@freezed
class RouteSearchState with _$RouteSearchState {
//   const factory RouteSearchState.initPage() = InintRouteSearchPageState;
//   const factory RouteSearchState.showRoutes(
//       {required List<Map<String, String>> routesAndDates}) = ShowRoutesState;
//  const factory RouteSearchState.showLocation(
//           {required List<List<String>> locationMap}) =
//       ShowLocationState;
  const factory RouteSearchState.initPage() = InitSearchRouteState;
   const factory RouteSearchState.showRoute({required List<Map<String, String>> routesAndDates}) = ShowFoundeRouteState;
  const factory RouteSearchState.openSearchDialog() = OpenSearchDialogState;
//   const factory RouteSearchState.showRoute() = ShowFoundeRouteState;
//   const factory RouteSearchState.showRouteList(
//       {required List<List<String>> locationMap}) = ShowRouteListState;
//  // const factory RouteSearchState.showCalendar() = ShowCalendarForSearchState;
//   const factory RouteSearchState.closeWidget() = CloseWidgetState;
}
