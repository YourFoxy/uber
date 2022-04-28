part of 'route_creation_bloc.dart';

@freezed
class RouteCreationEvent with _$RouteCreationEvent {
  const factory RouteCreationEvent.showLocationForDeparturePoint({
    required BuildContext context,
  }) = ShowLocationForDeparturePointEvent;

  const factory RouteCreationEvent.showLocationForArrivalPoint({
    required BuildContext context,
  }) = ShowLocationForArrivalPointEvent;

  const factory RouteCreationEvent.closeLocation() = CloseLocationEvent;

  const factory RouteCreationEvent.addRoute({
    required String departurePoint,
    required String arrivalPoint,
    required String date,
    required BuildContext context,
  }) = AddRouteEvent;
  const factory RouteCreationEvent.showCalendarEvent({
    required int month,
    required int year,
  }) = ShowCalendarEvent;
}
