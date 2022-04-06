import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/location.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'route_creation_event.dart';
part 'route_creation_state.dart';
part 'route_creation_bloc.freezed.dart';

class RouteCreationBloc extends Bloc<RouteCreationEvent, RouteCreationState> {
  RouteCreationBloc() : super(const RouteCreationState.pageInit()) {
    on<ShowLocationForArrivalPointEvent>(
      (event, emit) async {
        List<List<String>> locationMap =
            await LocationData.createLocationMap(event.context);
        emit(RouteCreationState.showLocationForArrivalPoint(
            locationMap: locationMap));
      },
    );
    on<ShowLocationForDeparturePointEvent>(
      (event, emit) async {
        List<List<String>> locationMap =
            await LocationData.createLocationMap(event.context);

        emit(RouteCreationState.showLocationForDeparturePoint(
            locationMap: locationMap));
      },
    );
    on<CloseLocationEvent>((event, emit) {
      emit(const RouteCreationState.closeLocation());
    });
    on<AddRouteEvent>((event, emit) async {
      final List<String> route = [event.departurePoint, event.arrivalPoint];
      await Auth.fbd
          .collection(collectionNameWithRoutes)
          .doc(UserData.currentUserPhoneNumber)
          .collection(collectionNameWithRoutes)
          .add({routeFieldInCollection: route});
      Navigator.pushNamed(event.context, homePage);
    });
  }
}