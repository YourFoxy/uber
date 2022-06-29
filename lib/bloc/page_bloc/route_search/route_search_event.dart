part of 'route_search_bloc.dart';

@freezed
class RouteSearchEvent with _$RouteSearchEvent {
  const factory RouteSearchEvent.showRoute() = ShowFoundeRouteEvent;
  const factory RouteSearchEvent.showRouteList(
      {required BuildContext context}) = ShowRouteListEvent;
  const factory RouteSearchEvent.showCalendar() = ShowCalendarForSearchEvent;

  const factory RouteSearchEvent.closeWidget() = CloseWidgetEvent;
  // const factory RouteSearchEvent.searchRoutes({
  //   required String fromRoute,
  //   required String toRoute,
  // }) = SearchRoutesEvent;
  // const factory RouteSearchEvent.changeSaveRouteStatus() =
  //     ChangeSaveRouteStatusEvent;
  // const factory RouteSearchEvent.showLocation({required BuildContext context}) =
  //     ShowLocationEvent;
  // const factory RouteSearchEvent.showCalendar() = ShowCalendarForSearchEvent;
}
