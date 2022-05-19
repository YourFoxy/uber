// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get_it/get_it.dart';
// import 'package:uber/bloc/page_bloc/edit_user_information/edit_user_information_bloc.dart';
// import 'package:uber/bloc/page_bloc/home_page/home_bloc.dart';
// import 'package:uber/bloc/page_bloc/register_user_information_page/register_user_information_bloc.dart';
// import 'package:uber/bloc/page_bloc/route_creation/route_creation_bloc.dart';
// import 'package:uber/bloc/page_bloc/sign_in_with_phone_page/sign_in_with_phone_bloc.dart';
// import 'package:uber/bloc/page_bloc/verify_code/verify_code_bloc.dart';
// import 'package:uber/bloc/widget_bloc/drawer_widget/drawer_widget_bloc.dart';
// import 'package:uber/bloc/widget_bloc/editable_avatar/editable_round_avatar_bloc.dart';
// import 'package:uber/bloc/widget_bloc/editable_rectangular_avatar/editable_rectangular_avatar_bloc.dart';
// import 'package:uber/bloc/widget_bloc/view_avatar/view_avatar_bloc.dart';
// import 'package:uber/extension/bloc_widget_extension.dart';
// import 'package:uber/pages/edit_user_information_page.dart';
// import 'package:uber/pages/login_or_register_page.dart';
// import 'package:uber/pages/home_page.dart';
// import 'package:uber/pages/route_creation_page.dart';
// import 'package:uber/pages/sign_in_with_phone_number.dart';
// import 'package:uber/scripts/const.dart';
// import 'package:uber/scripts/routes.dart';
// import 'package:uber/service/navigation_service.dart';
// import 'package:uber/service/toast_service.dart';

// import 'bloc/widget_bloc/calendar_widget/calendar_bloc.dart';

import 'package:uber/scripts/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  GetIt.instance.registerSingleton(ToastService());
  GetIt.instance.registerSingleton(NavigationService());

  registerBlocsFactory();
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

void registerBlocsFactory() {
  final GetIt _getIt = GetIt.instance;
  final ToastService _toastService = GetIt.instance.get<ToastService>();
  final _navigationService = GetIt.instance.get<NavigationService>();

  _getIt.registerFactory<SignInWithPhoneBloc>(() => SignInWithPhoneBloc(
        toastService: _toastService,
        navigationService: _navigationService,
      ));
  _getIt.registerFactory<DrawerWidgetBloc>(() => DrawerWidgetBloc(
        toastService: _toastService,
        navigationService: _navigationService,
      ));
  _getIt.registerFactory<ViewAvatarBloc>(() => ViewAvatarBloc());
  _getIt.registerFactory<EditableRoundAvatarBloc>(
      () => EditableRoundAvatarBloc());
  _getIt.registerFactory<HomeBloc>(() => HomeBloc());
  _getIt.registerFactory<VerifyCodeBloc>(() => VerifyCodeBloc());
  _getIt.registerFactory<RegisterUserInformationBloc>(
      () => RegisterUserInformationBloc());
  _getIt.registerFactory<EditableRectangularAvatarBloc>(
      () => EditableRectangularAvatarBloc());
  _getIt.registerFactory<EditUserInformationBloc>(() => EditUserInformationBloc(
        navigationService: _navigationService,
      ));
  _getIt.registerFactory<RouteCreationBloc>(() => RouteCreationBloc(
        navigationService: _navigationService,
      ));

  _getIt.registerFactory<CalendarBloc>(() => CalendarBloc());
}

class MyApp extends StatelessWidget {
  final _navigationService = GetIt.instance.get<NavigationService>();

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF5E838C),
      ),
      initialRoute: '/',
      navigatorKey: kNavigatorKey,
      routes: routes,
      home: FirebaseAuth.instance.currentUser == null
          ? LoginOrRegister(
              navigationService: _navigationService,
            )
          : HomePage(
              navigationService: _navigationService,
            ).createWithProvider<HomeBloc>(),
    );
  }
}
