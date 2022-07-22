import 'package:flutter/foundation.dart';
import 'package:uber/scripts/index.dart';

part 'route_creation_event.dart';
part 'route_creation_state.dart';
part 'route_creation_bloc.freezed.dart';

class RouteCreationBloc extends Bloc<RouteCreationEvent, RouteCreationState> {
  NavigationService navigationService;
  RouteCreationBloc({required this.navigationService})
      : super(const RouteCreationState.pageInit()) {
    on<ShowLocationForArrivalPointEvent>(_onShowLocationForArrivalPointEvent);
    on<ShowLocationForDeparturePointEvent>(
        _onShowLocationForDeparturePointEvent);
    on<CloseLocationEvent>(_onCloseLocationEvent);
    on<AddRouteEvent>(_onAddRouteEvent);
    on<ShowCalendarEvent>(_onShowCalendarEvent);
  }
  _onShowLocationForArrivalPointEvent(event, emit) async {
    List<List<String>> locationMap = await LocationData.createLocationMap();
    emit(RouteCreationState.showLocationForArrivalPoint(
        locationMap: locationMap));
  }

  _onShowLocationForDeparturePointEvent(event, emit) async {
    List<List<String>> locationMap = await LocationData.createLocationMap();

    emit(RouteCreationState.showLocationForDeparturePoint(
        locationMap: locationMap));
  }

  _onCloseLocationEvent(event, emit) {
    emit(const RouteCreationState.closeLocation());
  }

  _onAddRouteEvent(event, emit) async {
    final route = <String>[event.departurePoint, event.arrivalPoint];

    await Auth.fbd
        .collection(collectionNameWithRoutes)
        .doc(UserData.currentUserPhoneNumber)
        .collection(collectionNameWithRoutes)
        .add({
      routeFieldInCollection: route,
      'date': event.date,
    });
    navigationService.navigatorToHomePage();
  }

  _onShowCalendarEvent(event, emit) {
    emit(
      const RouteCreationState.showCalendar(),
    );
  }
}
