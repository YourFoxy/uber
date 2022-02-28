import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/route_creation/route_creation_event.dart';
import 'package:uber/bloc/page_bloc/route_creation/route_creation_state.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/location.dart';
import 'package:uber/scripts/user_data.dart';

class RouteCreationBloc extends Bloc<RouteCreationEvent, RouteCreationState> {
  RouteCreationBloc() : super(PageInitState()) {
    on<ShowLocationForArrivalPointEvent>(
      (event, emit) async {
        Map<dynamic, List<String>> locationMap =
            await LocationData.createLocationMap(event.context);
        emit(ShowLocationForArrivalPointState(locationMap: locationMap));
      },
    );
    on<ShowLocationForDeparturePointEvent>(
      (event, emit) async {
        Map<dynamic, List<String>> locationMap =
            await LocationData.createLocationMap(event.context);

        emit(ShowLocationForDeparturePointState(locationMap: locationMap));
      },
    );
    on<CloseLocationEvent>((event, emit) {
      emit(CloseLocationState());
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
