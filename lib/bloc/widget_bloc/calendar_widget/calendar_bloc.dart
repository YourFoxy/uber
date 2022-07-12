import 'package:uber/scripts/index.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  int month = DateTime.now().month;
  int year = DateTime.now().year;

  CalendarBloc() : super(const InitialState()) {
    on<ShowMonthEvent>(_onShowMonthEvent);
    on<GoToNextMonthEvent>(_onGoToNextMonthEvent);
    on<GoToPreviousMonthEvent>(_onGoToPreviousMonthEvent);
  }
  _onShowMonthEvent(event, emit) {
    final monthString = DateUtil.month(month);
    final daysList = <String>[];
    final emptyCells = DateTime(year, month, 1).weekday - 1;
    final monthLenght = DateUtil.daysInMonth(month, year);
    for (int i = 0; i < emptyCells + monthLenght; i++) {
      if (i < emptyCells) {
        daysList.add('');
      } else {
        daysList.add('${i - emptyCells + 1}');
      }
    }
    emit(ShowMonthState(month: monthString, year: year, daysList: daysList));
  }

  _onGoToNextMonthEvent(event, emit) {
    if (month == 12) {
      month = 1;
      year = year + 1;
    } else {
      month = month + 1;
    }
    final monthString = DateUtil.month(month);
    final daysList = <String>[];
    final emptyCells = DateTime(year, month, 1).weekday - 1;
    final monthLenght = DateUtil.daysInMonth(month, year);
    for (int i = 0; i < emptyCells + monthLenght; i++) {
      if (i < emptyCells) {
        daysList.add('');
      } else {
        daysList.add('${i - emptyCells + 1}');
      }
    }
    emit(
        GoToNextMonthState(month: monthString, year: year, daysList: daysList));
  }

  _onGoToPreviousMonthEvent(event, emit) {
    if (month == 1) {
      month = 12;
      year = year - 1;
    } else {
      month = month - 1;
    }
    final monthString = DateUtil.month(month);
    final daysList = <String>[];
    final emptyCells = DateTime(year, month, 1).weekday - 1;
    final monthLenght = DateUtil.daysInMonth(month, year);
    for (int i = 0; i < emptyCells + monthLenght; i++) {
      if (i < emptyCells) {
        daysList.add('');
      } else {
        daysList.add('${i - emptyCells + 1}');
      }
    }
    emit(GoToPreviousMonthState(
        month: monthString, year: year, daysList: daysList));
  }
}
