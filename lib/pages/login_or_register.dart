import 'package:flutter/material.dart';
import 'package:uber/pages/sign_in_with_phone_number.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/button_widget.dart';
import 'package:uber/widgets/car_image_widget.dart';

class LoginOrRegister extends StatelessWidget {
  const LoginOrRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backgroundDecorstion(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Car(),
                _loginButton(context),
                _registerButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return ButtonWidget(
      buttonColor: AppColors.light,
      text: 'Login',
      onTap: () => () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignInWithPhonePage(
              isRegister: false,
            ),
          ),
        );
      },
    );
  }

  Widget _registerButton(BuildContext context) {
    return ButtonWidget(
      buttonColor: AppColors.light,
      text: 'Register',
      onTap: () => () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignInWithPhonePage(
              isRegister: true,
            ),
          ),
        );
      },
    );
  }
}
