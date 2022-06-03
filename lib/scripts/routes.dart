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
