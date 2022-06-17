import 'package:uber/pages/route_search_page.dart';
import 'package:uber/scripts/index.dart';

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

  void navigatorToSearchRoutePage() {
    kNavigatorKey.currentState!.pushReplacementNamed(searchRoutePage);
  }
}
