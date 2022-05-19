part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.showMonth() = ShowMonthEvent;
  const factory CalendarEvent.goToNextMonth() = GoToNextMonthEvent;
  const factory CalendarEvent.goToPreviousMonth() = GoToPreviousMonthEvent;
}
