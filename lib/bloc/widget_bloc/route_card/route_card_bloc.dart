import 'package:uber/scripts/index.dart';

part 'route_card_event.dart';
part 'route_card_state.dart';
part 'route_card_bloc.freezed.dart';

class RouteCardBloc extends Bloc<RouteCardEvent, RouteCardState> {
  RouteCardBloc() : super(const RouteCardInitState()) {
    on<RemoveRouteEvent>(_onRemoveRouteEvent);
    on<LoadedRoutesEvent>(_onLoadedRoutesEvent);
  }
  _onRemoveRouteEvent(event, emit) async {
    await Auth.fbd
        .collection(collectionNameWithRoutes)
        .doc(UserData.currentUserPhoneNumber)
        .collection(event.nameCollection)
        .doc(event.routeId)
        .delete();

    emit(
      RemoveRouteState(
        routesAndDates:
            await UserData.getUserRoutesFromDatabase(event.nameCollection),
      ),
    );
  }

  _onLoadedRoutesEvent(event, emit) async {
    emit(
      LoadedUserRoutesState(
        routesAndDates:
            await UserData.getUserRoutesFromDatabase(event.nameCollection),
      ),
    );
  }
}
