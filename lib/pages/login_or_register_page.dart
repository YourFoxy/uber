import 'package:flutter/material.dart';
import 'package:uber/service/navigation_service.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/button_widget.dart';
import 'package:uber/widgets/car_image_widget.dart';

class LoginOrRegister extends StatelessWidget {
  final NavigationService navigationService;
  const LoginOrRegister({
    Key? key,
    required this.navigationService,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.plum,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const Car(),
              ButtonWidget(
                buttonColor: AppColors.dark,
                textColor: AppColors.orange,
                text: 'Login',
                onTap: () => () {
                  navigationService.navigatorToLogInNumberPage();
                  //Navigator.pushNamed(context, logInNumberPage);
                },
              ),
              ButtonWidget(
                buttonColor: AppColors.dark,
                textColor: AppColors.orange,
                text: 'Register',
                onTap: () => () {
                  navigationService.navigatorToRegisterPage();
                  // Navigator.pushNamed(context, registerNumberPage);
                  //  NavigationService.NavigatorToRegisterPage();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
