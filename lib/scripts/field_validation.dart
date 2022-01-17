import 'package:flutter/material.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/scripts/widgets.dart';

class FieldValidation {
  static bool isFieldValidation(String text) {
    final gaps = RegExp(r'^\s');

    if ((gaps.hasMatch(text) || text == '')) {
      return false;
    } else {
      return true;
    }
  }

  static void checkingFieldsAndMovingToHomePage(String city, String nickname,
      String pickImageUrl, String phoneNumber, BuildContext context) async {
    if (isFieldValidation(city) && isFieldValidation(nickname)) {
      try {
        UserData.saveCurrentUserPhoto(
          pickImageUrl,
          phoneNumber,
        );
      } catch (e) {
        print(e);
      }
      UserData.updateCurrentUserInformation(
        phoneNumber,
        nickname,
        city,
      );
      Navigator.pushNamed(context, homePage);
    } else {
      Widgets.toast('The text field is empty');
    }
  }
}
