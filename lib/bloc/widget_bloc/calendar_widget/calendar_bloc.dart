import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/scripts/date_util.dart';
import '../../../scripts/date.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(const InitialState()) {
    on<ShowMonthEvent>((event, emit) {
      final int monthInt =
          GetIt.instance.get<Date>().month = DateTime.now().month;
      final String monthString = DateUtil.month(monthInt);
      final int year = GetIt.instance.get<Date>().year = DateTime.now().year;

      List<String> daysList = [];
      int emptyCells = DateTime(year, monthInt, 1).weekday - 1;
      int? monthLenght = DateUtil.daysInMonth(monthInt, year);
      for (int i = 0; i < emptyCells + monthLenght; i++) {
        if (i < emptyCells) {
          daysList.add('');
        } else {
          daysList.add('${i - emptyCells + 1}');
        }
      }
      emit(ShowMonthState(month: monthString, year: year, daysList: daysList));
    });
    on<GoToNextMonthEvent>(
      (event, emit) {
        if (GetIt.instance.get<Date>().month == 12) {
          GetIt.instance.get<Date>().month = 1;
          GetIt.instance.get<Date>().year = GetIt.instance.get<Date>().year + 1;
        } else {
          GetIt.instance.get<Date>().month =
              GetIt.instance.get<Date>().month + 1;
        }
        final int monthInt = GetIt.instance.get<Date>().month;
        final String monthString = DateUtil.month(monthInt);
        final int year = GetIt.instance.get<Date>().year;

        List<String> daysList = [];
        int emptyCells = DateTime(year, monthInt, 1).weekday - 1;
        int? monthLenght = DateUtil.daysInMonth(monthInt, year);
        for (int i = 0; i < emptyCells + monthLenght; i++) {
          if (i < emptyCells) {
            daysList.add('');
          } else {
            daysList.add('${i - emptyCells + 1}');
          }
        }
        emit(GoToNextMonthState(
            month: monthString, year: year, daysList: daysList));
      },
    );
    on<GoToPreviousMonthEvent>(
      (event, emit) {
        if (GetIt.instance.get<Date>().month == 1) {
          GetIt.instance.get<Date>().month = 12;
          GetIt.instance.get<Date>().year = GetIt.instance.get<Date>().year - 1;
        } else {
          GetIt.instance.get<Date>().month =
              GetIt.instance.get<Date>().month - 1;
        }
        final int monthInt = GetIt.instance.get<Date>().month;
        final String monthString = DateUtil.month(monthInt);
        final int year = GetIt.instance.get<Date>().year;

        List<String> daysList = [];
        int emptyCells = DateTime(year, monthInt, 1).weekday - 1;
        int? monthLenght = DateUtil.daysInMonth(monthInt, year);
        for (int i = 0; i < emptyCells + monthLenght; i++) {
          if (i < emptyCells) {
            daysList.add('');
          } else {
            daysList.add('${i - emptyCells + 1}');
          }
        }
        emit(GoToPreviousMonthState(
            month: monthString, year: year, daysList: daysList));
      },
    );
  }
}
