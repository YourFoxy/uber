// import 'package:flutter/material.dart';
// import 'package:uber/bloc/page_bloc/register_user_information_page/register_user_information_bloc.dart';
// import 'package:uber/bloc/page_bloc/verify_code/verify_code_bloc.dart';
// import 'package:uber/extension/bloc_widget_extension.dart';
// import 'package:uber/pages/code_page.dart';
// import 'package:uber/pages/register_user_information_page.dart';
// import 'package:uber/scripts/const.dart';

import'package:uber/scripts/index.dart';

GlobalKey<NavigatorState> kNavigatorKey = GlobalKey();

class NavigationService {
  NavigatorState get _navigator => kNavigatorKey.currentState!;

  void navigatorToRegisterPage() {
    _navigator.pushReplacementNamed(registerNumberPage);
  }

  void navigatorToLogInNumberPage() {
    _navigator.pushReplacementNamed(logInNumberPage);
  }

  void navigatorToLoginOrRegisterPage() {
    _navigator.pushReplacementNamed(loginOrRegisterPage);
  }

  void navigatorToHomePage() {
    _navigator.pushReplacementNamed(homePage);
  }

  void navigatorToRouteCreationPage() {
    _navigator.pushReplacementNamed(routeCreationPage);
  }

  void navigatorToRegisterUserInformationPage({String phoneNumber = ''}) {
    _navigator.push(
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
