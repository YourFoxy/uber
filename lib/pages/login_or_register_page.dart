import 'package:flutter/material.dart';
import 'package:uber/scripts/const.dart';
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
                const Car(),
                ButtonWidget(
                  buttonColor: AppColors.light,
                  text: 'Login',
                  onTap: () => () {
                    Navigator.pushNamed(context, logInNumberPage);
                  },
                ),
                ButtonWidget(
                  buttonColor: AppColors.light,
                  text: 'Register',
                  onTap: () => () {
                    Navigator.pushNamed(context, registerNumberPage);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
