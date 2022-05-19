// import 'package:get_it/get_it.dart';
// import 'package:uber/bloc/page_bloc/edit_user_information/edit_user_information_bloc.dart';
// import 'package:uber/bloc/page_bloc/home_page/home_bloc.dart';
// import 'package:uber/bloc/page_bloc/route_creation/route_creation_bloc.dart';
// import 'package:uber/bloc/page_bloc/sign_in_with_phone_page/sign_in_with_phone_bloc.dart';
// import 'package:uber/extension/bloc_widget_extension.dart';
// import 'package:uber/pages/edit_user_information_page.dart';
// import 'package:uber/pages/home_page.dart';
// import 'package:uber/pages/login_or_register_page.dart';
// import 'package:uber/pages/route_creation_page.dart';
// import 'package:uber/pages/sign_in_with_phone_number.dart';
// import 'package:uber/scripts/const.dart';
// import 'package:uber/service/navigation_service.dart';

import 'package:uber/scripts/index.dart';

final routes = {
  logInNumberPage: (_) => const SignInWithPhonePage(
        isRegister: false,
      ).createWithProvider<SignInWithPhoneBloc>(),
  registerNumberPage: (_) => const SignInWithPhonePage(
        isRegister: true,
      ).createWithProvider<SignInWithPhoneBloc>(),
  loginOrRegisterPage: (_) => LoginOrRegister(
        navigationService: GetIt.instance.get<NavigationService>(),
      ),
  homePage: (_) => HomePage(
        navigationService: GetIt.instance.get<NavigationService>(),
      ).createWithProvider<HomeBloc>(),
  routeCreationPage: (_) =>
      const RouteCreationPage().createWithProvider<RouteCreationBloc>(),
  editUserInformationPage: (_) => const EditUserInformationPage()
      .createWithProvider<EditUserInformationBloc>(),
};
