class AppText {
  static String convertNumber(String phoneNumber) {
    String newPhoneNumber = '';

    List list = phoneNumber.split('');
    list.insert(4, ' (');
    list.insert(7, ') ');
    list.insert(11, '-');
    list.insert(14, '-');

    for (int i = 0; i < list.length; i++) {
      newPhoneNumber += list[i];
    }

    return newPhoneNumber;
  }

  static String upperFirstLetterAndDeleteExtraSpaces(String text) {
    final reg = RegExp(r' +');
    text = text.trim();
    text = text[0].toUpperCase() + text.substring(1, text.length);
    text = text.replaceAll(reg, ' ');

    return text;
  }
}
