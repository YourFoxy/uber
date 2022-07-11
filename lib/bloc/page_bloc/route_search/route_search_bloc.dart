import 'package:flutter/foundation.dart';
import 'package:uber/scripts/index.dart';

part 'route_search_event.dart';
part 'route_search_state.dart';
part 'route_search_bloc.freezed.dart';

class RouteSearchBloc extends Bloc<RouteSearchEvent, RouteSearchState> {
  RouteSearchBloc() : super(const InitSearchRouteState()) {
    // on<SearchRoutesEvent>(_onSearchRoutesEvent);
    // on<ShowLocationEvent>(_onShowLocationEvent);
    // on<ShowRouteEvent>(_onShowRouteEvent);
    // on<ShowPhoneNumberEvent>(_onShowPhoneNumberEvent);
    //on<CallEvent>(_onCallEvent);
    // on<ShowCalendarForSearchEvent>(_onShowCalendarEvent);
    on<ShowFoundeRouteEvent>(_onShowFoundeRouteEvent);
    on<OpenSearchDialogEvent>(_onOpenSearchDialogEvent);
  }

  // _onShowRouteEvent(event, emit) {
  //   emit(const ShowFoundeRouteState());
  // }

  // _onShowPhoneNumberEvent(event, emit) {
  //   emit(const ShowPhoneNumberState());
  // }

  // _onCallEvent(event, emit) async {
  //   final numberUrl = Uri.parse('tel:${event.phoneNumber}');
  //   if (await launchUrl(numberUrl)) {
  //     await launchUrl(numberUrl);
  //   } else {
  //     throw "Can't phone that number.";
  //   }
  // }

  // _onShowCalendarEvent(event, emit) {
  //   emit(
  //     const ShowCalendarForSearchState(),
  //   );
  // }

  _onShowFoundeRouteEvent(event, emit) async {
    List<List<String>> locationMap =
        await LocationData.createLocationMap(event.context);
    emit(
      ShowFoundeRouteState(
        routesAndDates: await UserData.getRoutesWithParameters(
          fromSearchRoute: '${event.fromRoute}',
          toSearchRoute: '${event.toRoute}',
        ),
      ),
    );
  }

  // _onShowLocationForDeparturePointEvent(event, emit) async {
  //   List<List<String>> locationMap =
  //       await LocationData.createLocationMap(event.context);

  //   emit(RouteCreationState.showLocationForDeparturePoint(
  //       locationMap: locationMap));
  // }

  _onOpenSearchDialogEvent(event, emit) {
    emit(const OpenSearchDialogState());
  }

  // _onSearchRoutesEvent(event, emit) async {
  //   emit(
  //     ShowRoutesState(
  //       routesAndDates: await UserData.getRoutesWithParameters(
  //         fromSearchRoute: '${event.fromRoute}',
  //         toSearchRoute: '${event.toRoute}',
  //       ),
  //     ),
  //   );
  // }

  // _onShowLocationEvent(event, emit) async {
  //   List<List<String>> locationMap =
  //       await LocationData.createLocationMap(event.context);
  //   emit(
  //     ShowLocationState(locationMap: locationMap),
  //   );
  // }
}
