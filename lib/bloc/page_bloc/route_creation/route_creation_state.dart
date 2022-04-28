part of 'route_creation_bloc.dart';

@freezed
class RouteCreationState with _$RouteCreationState {
  const factory RouteCreationState.pageInit() = _PageInitState;
  const factory RouteCreationState.showLocationForArrivalPoint(
          {required List<List<String>> locationMap}) =
      _ShowLocationForArrivalPointState;
  const factory RouteCreationState.showLocationForDeparturePoint(
          {required List<List<String>> locationMap}) =
      _ShowLocationForDeparturePointState;
  const factory RouteCreationState.closeLocation() = _CloseLocationState;
  const factory RouteCreationState.showCalendar({required List<String> month}) =
      _ShowCalendarState;
}
