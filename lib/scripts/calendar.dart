class Calendar {
  static int addEmptyCells(int weekDay) {
    // DateUtil().daysInMonth(4,2022);
    //print('///////////${DateUtil().daysInMonth(4, 2022)}');
    return DateTime(DateTime.now().year, DateTime.now().month + 1, 1).weekday -
        1;
  }
}
