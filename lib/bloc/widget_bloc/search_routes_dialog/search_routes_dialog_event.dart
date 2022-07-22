part of 'search_routes_dialog_bloc.dart';

@freezed
class SearchRoutesDialogEvent with _$SearchRoutesDialogEvent {
  const factory SearchRoutesDialogEvent.showAllDeparturePoints(
     ) = ShowAllDeparturePointsEvent;
  const factory SearchRoutesDialogEvent.showAllArrivalPoints(
      ) = ShowAllArrivalPointsEvent;
  const factory SearchRoutesDialogEvent.showCalendar() =
      ShowCalendarForSearchEvent;
  const factory SearchRoutesDialogEvent.closeWidget() = CloseAllWidgetEvent;
 

}