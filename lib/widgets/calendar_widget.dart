import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/widget_bloc/calendar_widget/calendar_bloc.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/date_util.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';

class CalendarWidget extends StatefulWidget {
  final ValueChanged<String> onDateSet;
  const CalendarWidget({
    Key? key,
    required this.onDateSet,
  }) : super(key: key);

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late final CalendarBloc _calendarBloc;

  @override
  void initState() {
    super.initState();

    _calendarBloc = BlocProvider.of<CalendarBloc>(context);
    _calendarBloc.add(const CalendarEvent.showMonth());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return Container(
          width: 370,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.plum2.withOpacity(0.9),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      _calendarBloc
                          .add(const CalendarEvent.goToPreviousMonth());
                    },
                    child: const Icon(
                      Icons.arrow_left,
                      size: 40,
                      color: AppColors.orange,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppLargeText(
                      text: state.when(
                        initial: () => '',
                        showMonth: (month, year, daysList) => '$month, $year',
                        goToNextMonth: (month, year, daysList) =>
                            '$month, $year',
                        goToPreviousMonth: (month, year, daysList) =>
                            '$month, $year',
                      ),
                      color: AppColors.orange,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _calendarBloc.add(const CalendarEvent.goToNextMonth());
                    },
                    child: const Icon(
                      Icons.arrow_right,
                      size: 40,
                      color: AppColors.orange,
                    ),
                  ),
                ],
              ),
              Wrap(
                spacing: 17,
                runSpacing: 5,
                children: List<Widget>.generate(
                  7,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppLargeText(
                        text: DateUtil.weekDay(index),
                        size: 19,
                        color: index != 5 && index != 6
                            ? AppColors.orange
                            : AppColors.red,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: state.when(
                  initial: () => const SizedBox(),
                  showMonth: (month, year, daysList) =>
                      _days(daysList, '${newMonth[month]} $year'),
                  goToNextMonth: (month, year, daysList) =>
                      _days(daysList, '${newMonth[month]} $year'),
                  goToPreviousMonth: (month, year, daysList) =>
                      _days(daysList, '${newMonth[month]} $year'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Wrap _days(List<String> daysList, String date) {
    return Wrap(
      spacing: 17,
      runSpacing: 5,
      children: List<Widget>.generate(
        daysList.length,
        (index) {
          return InkWell(
            onTap: () {
              if (daysList[index] != '') {
                widget.onDateSet.call('${daysList[index]} $date');
              }
            },
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: _getColor(index, daysList),
              ),
              child: Center(
                child: AppLargeText(
                  text: daysList[index],
                  size: 18,
                  color: AppColors.dark,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Color _getColor(int index, List<String> daysList) {
    if (daysList[index] != '') {
      if (index % 7 != 6 && index % 7 != 5) {
        return AppColors.orange;
      } else {
        return AppColors.red;
      }
    }
    return Colors.black.withOpacity(0);
  }
}
