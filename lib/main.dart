import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/bloc/code_page/code_page_bloc.dart';
import 'package:uber/bloc/editable_avatar/editable_avatar_bloc.dart';
import 'package:uber/bloc/home_page/home_page_bloc.dart';
import 'package:uber/bloc/register_user_information_page/register_user_information_page_bloc.dart';
import 'package:uber/extensionBloc/bloc_widget.dart';
import 'package:uber/pages/login_or_register_page.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/pages/sign_in_with_phone_number.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/service/toast_service.dart';
import 'bloc/drawer_widget/drawer_widget_bloc.dart';
import 'bloc/sign_in_with_phone_page/sign_in_with_phone_page_bloc.dart';
import 'bloc/view_avatar/view_avatar_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  GetIt.instance.registerSingleton(ToastService());

  registerBlocsFactory();
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

void registerBlocsFactory() {
  final GetIt _getIt = GetIt.instance;
  final ToastService _toastService = GetIt.instance.get<ToastService>();

  _getIt.registerFactory<SignInWithPhonePageBloc>(
      () => SignInWithPhonePageBloc(toastService: _toastService));
  _getIt.registerFactory<DrawerWidgetBloc>(
      () => DrawerWidgetBloc(toastService: _toastService));
  _getIt.registerFactory<ViewAvatarBloc>(() => ViewAvatarBloc());
  _getIt.registerFactory<EditableAvatarBloc>(() => EditableAvatarBloc());
  _getIt.registerFactory<HomePageBloc>(() => HomePageBloc());
  _getIt.registerFactory<CodePageBloc>(() => CodePageBloc());
  _getIt.registerFactory<RegisterUserInformationPageBloc>(
      () => RegisterUserInformationPageBloc());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF5E838C),
      ),
      initialRoute: '/',
      routes: {
        logInNumberPage: (_) => const SignInWithPhonePage(
              isRegister: false,
            ),
        registerNumberPage: (_) => const SignInWithPhonePage(
              isRegister: true,
            ),
        loginOrRegisterPage: (_) => const LoginOrRegister(),
        homePage: (_) => const HomePage(),
      },
      home: FirebaseAuth.instance.currentUser == null
          ? const LoginOrRegister()
          : const HomePage().createWithProvider<HomePageBloc>(),
    );
  }
}
