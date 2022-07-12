part of 'search_routes_dialog_bloc.dart';

@freezed
class SearchRoutesDialogState with _$SearchRoutesDialogState {
  const factory SearchRoutesDialogState.initDialog() = InitDialogState;
  const factory SearchRoutesDialogState.showAllArrivalPoints(
      {required List<List<String>> locationMap}) = ShowAllArrivalPointsState;
  const factory SearchRoutesDialogState.showAllDeparturePoints(
      {required List<List<String>> locationMap}) = ShowAllDeparturePointsState;
  const factory SearchRoutesDialogState.showCalendar() =
      ShowCalendarForSearchState;
  const factory SearchRoutesDialogState.closeWidget() = CloseAllWidgetState;
}
