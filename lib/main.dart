import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/pages/login_or_register_page.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/pages/sign_in_with_phone_number.dart';
import 'package:uber/scripts/const.dart';

import 'bloc/bloc/sign_in_with_phone_page_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await Firebase.initializeApp();
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
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
          : const HomePage(),
    );
  }
}
