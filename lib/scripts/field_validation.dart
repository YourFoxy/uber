import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/bloc/home_page/home_page_bloc.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/service/toast_service.dart';
import 'package:uber/extension/bloc_widget_extension.dart';

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
      String pickImageUrl, BuildContext context) async {
    if (isFieldValidation(city) && isFieldValidation(nickname)) {
      await UserData.updateCurrentUserInformation(nickname, city, pickImageUrl);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const HomePage().createWithProvider<HomePageBloc>(),
        ),
      );
    } else {
      GetIt.instance.get<ToastService>().showGeneralErrorToast(emptyField);
    }
  }
}
