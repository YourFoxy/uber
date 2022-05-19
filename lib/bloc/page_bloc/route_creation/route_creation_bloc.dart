// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uber/domain/auth.dart';
// import 'package:uber/scripts/const.dart';
// import 'package:uber/scripts/date_util.dart';
// import 'package:uber/scripts/location.dart';
// import 'package:uber/scripts/user_data.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:uber/service/navigation_service.dart';
// part 'route_creation_event.dart';
// part 'route_creation_state.dart';
// part 'route_creation_bloc.freezed.dart';

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
    List<List<String>> locationMap =
        await LocationData.createLocationMap(event.context);
    emit(RouteCreationState.showLocationForArrivalPoint(
        locationMap: locationMap));
  }

  _onShowLocationForDeparturePointEvent(event, emit) async {
    List<List<String>> locationMap =
        await LocationData.createLocationMap(event.context);

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
    final month = <String>[];
    final emptyCells = DateTime(event.year, event.month, 1).weekday - 1;
    final monthLenght = DateUtil.daysInMonth(event.month, event.year);
    for (int i = 0; i < emptyCells + monthLenght; i++) {
      if (i < emptyCells) {
        month.add('');
      } else {
        month.add('${i - emptyCells + 1}');
      }
    }

    emit(_ShowCalendarState(month: month));
  }
}
