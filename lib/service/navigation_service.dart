import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uber/bloc/page_bloc/register_user_information_page/register_user_information_bloc.dart';
import 'package:uber/bloc/page_bloc/verify_code/verify_code_bloc.dart';
import 'package:uber/extension/bloc_widget_extension.dart';
import 'package:uber/pages/code_page.dart';
import 'package:uber/pages/register_user_information_page.dart';
import 'package:uber/scripts/const.dart';

GlobalKey<NavigatorState> kNavigatorKey = GlobalKey();

class NavigationService {
  void navigatorToRegisterPage() {
    kNavigatorKey.currentState!.pushReplacementNamed(registerNumberPage);
  }

  void navigatorToLogInNumberPage() {
    kNavigatorKey.currentState!.pushReplacementNamed(logInNumberPage);
  }

  void navigatorToLoginOrRegisterPage() {
    kNavigatorKey.currentState!.pushReplacementNamed(loginOrRegisterPage);
  }

  void navigatorToHomePage() {
    kNavigatorKey.currentState!.pushReplacementNamed(homePage);
  }

  void navigatorToRouteCreationPage() {
    kNavigatorKey.currentState!.pushReplacementNamed(routeCreationPage);
  }

  void navigatorToRegisterUserInformationPage({String phoneNumber = ''}) {
    kNavigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) => RegisterUserInformationPage(
          phoneNumber: phoneNumber,
        ).createWithProvider<RegisterUserInformationBloc>(),
      ),
    );
  }

  void navigatorToEditUserInformationPage() {
    kNavigatorKey.currentState!.pushReplacementNamed(editUserInformationPage);
  }

  void navigatorToCodePage({String phoneNumber = '', bool isRegister = false}) {
    kNavigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) => CodePage(
          phoneNumber: phoneNumber,
          isRegister: isRegister,
        ).createWithProvider<VerifyCodeBloc>(),
      ),
    );
  }
}
