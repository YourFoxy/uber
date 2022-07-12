import 'package:uber/scripts/index.dart';

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
                },
              ),
              ButtonWidget(
                buttonColor: AppColors.dark,
                textColor: AppColors.orange,
                text: 'Register',
                onTap: () => () {
                  navigationService.navigatorToRegisterPage();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
