part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.initial() = InitialState;
  const factory CalendarState.showMonth({
    required String month,
    required int year,
    required List<String> daysList,
  }) = ShowMonthState;
  const factory CalendarState.goToNextMonth({
    required String month,
    required int year,
    required List<String> daysList,
  }) = GoToNextMonthState;
  const factory CalendarState.goToPreviousMonth({
    required String month,
    required int year,
    required List<String> daysList,
  }) = GoToPreviousMonthState;
}
