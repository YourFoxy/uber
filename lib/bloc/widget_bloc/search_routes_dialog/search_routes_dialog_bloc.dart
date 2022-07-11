import 'package:uber/scripts/index.dart';

part 'search_routes_dialog_event.dart';
part 'search_routes_dialog_state.dart';
part 'search_routes_dialog_bloc.freezed.dart';

class SearchRoutesDialogBloc
    extends Bloc<SearchRoutesDialogEvent, SearchRoutesDialogState> {
  SearchRoutesDialogBloc() : super(const InitDialogState()) {
    on<ShowAllDeparturePointsEvent>(_onShowAllDeparturePointsEvent);
    on<ShowAllArrivalPointsEvent>(_onShowAllArrivalPointsEvent);
    on<CloseAllWidgetEvent>(_onCloseWidgetEvent);
    on<ShowCalendarForSearchEvent>(_onShowCalendarForSearchEvent);
  }
  _onShowAllDeparturePointsEvent(event, emit) async {
    List<List<String>> locationMap =
        await LocationData.createLocationMap(event.context);
    emit(ShowAllDeparturePointsState(locationMap: locationMap));
  }

  _onShowAllArrivalPointsEvent(event, emit) async {
    List<List<String>> locationMap =
        await LocationData.createLocationMap(event.context);

    emit(ShowAllArrivalPointsState(locationMap: locationMap));
  }

  _onCloseWidgetEvent(event, emit) {
    emit(const CloseAllWidgetState());
  }

  _onShowCalendarForSearchEvent(event, emit) {
    emit(
      //const _ShowCalendarState(),
      const ShowCalendarForSearchState(),
    );
  }
}
