import 'package:flutter/material.dart';

@immutable
abstract class RouteCreationState {}

class PageInitState extends RouteCreationState {}

class ShowLocationForArrivalPointState extends RouteCreationState {
  final Map<dynamic, List<String>> locationMap;
  ShowLocationForArrivalPointState({required this.locationMap});
}

class ShowLocationForDeparturePointState extends RouteCreationState {
  final Map<dynamic, List<String>> locationMap;
  ShowLocationForDeparturePointState({required this.locationMap});
}

class CloseLocationState extends RouteCreationState {}
