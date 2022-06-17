import 'package:uber/scripts/index.dart';

part 'route_search_event.dart';
part 'route_search_state.dart';
part 'route_search_bloc.freezed.dart';

class RouteSearchBloc extends Bloc<RouteSearchEvent, RouteSearchState> {
  RouteSearchBloc() : super(const RouteSearchState.initPage()) {
    on<SearchRoutesEvent>(_onSearchRoutesEvent);
  }

  _onSearchRoutesEvent(event, emit) async {
    emit(
      ShowRoutesState(
        routesAndDates: await UserData.getRoutesWithParameters(
          fromSearchRoute: '${event.fromRoute}',
          toSearchRoute: '${event.toRoute}',
        ),
      ),
    );
  }
}
