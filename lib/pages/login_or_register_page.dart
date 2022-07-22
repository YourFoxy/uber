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
      //backgroundColor: AppColors.plum,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundColor,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                //  const Padding(
                //   padding: EdgeInsets.only(right: 20.0),
                //child:
                const Car(),
                //  ),
                const SizedBox(
                  height: 30,
                ),
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
      ),
    );
  }
}
