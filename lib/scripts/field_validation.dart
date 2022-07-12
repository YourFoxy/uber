import 'package:uber/scripts/index.dart';

class FieldValidation {
  static bool isFieldValidation(String text) {
    final gaps = RegExp(r'^\s');

    if ((gaps.hasMatch(text) || text == '')) {
      return false;
    } else {
      return true;
    }
  }

  static void checkingFieldsAndMovingToHomePage(
      String city,
      String nickname,
      String pickImageUrl,
      BuildContext context,
      NavigationService navigationService) async {
    if (isFieldValidation(city) && isFieldValidation(nickname)) {
      await UserData.updateCurrentUserInformation(nickname, city, pickImageUrl);
      navigationService.navigatorToHomePage();
    } else {
      GetIt.instance.get<ToastService>().showGeneralErrorToast(emptyField);
    }
  }
}
