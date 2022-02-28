import 'package:flutter/cupertino.dart';

abstract class RouteCreationEvent {}

class ShowLocationForDeparturePointEvent extends RouteCreationEvent {
  final BuildContext context;
  ShowLocationForDeparturePointEvent({
    required this.context,
  });
}

class ShowLocationForArrivalPointEvent extends RouteCreationEvent {
  final BuildContext context;
  ShowLocationForArrivalPointEvent({
    required this.context,
  });
}

class CloseLocationEvent extends RouteCreationEvent {}

class AddRouteEvent extends RouteCreationEvent {
  final String departurePoint;
  final String arrivalPoint;
  final BuildContext context;

  AddRouteEvent(
      {required this.departurePoint,
      required this.arrivalPoint,
      required this.context});
}
