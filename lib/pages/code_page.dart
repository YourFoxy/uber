import 'package:uber/scripts/index.dart';

class CodePage extends StatefulWidget {
  final bool isRegister;
  final String phoneNumber;

  const CodePage({
    Key? key,
    required this.isRegister,
    this.phoneNumber = '',
  }) : super(key: key);

  @override
  _CodePageState createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  final TextEditingController _smsCodeController = TextEditingController();
  late final VerifyCodeBloc _codeBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _codeBloc = BlocProvider.of<VerifyCodeBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
    _smsCodeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyCodeBloc, VerifyCodeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.plum,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 200,
                  ),
                  const AppLargeText(
                    text: 'Code',
                    color: AppColors.orange,
                    size: 40.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFieldForCodeWidget(
                    smsCodeController: _smsCodeController,
                  ),
                  ButtonWidget(
                    text: widget.isRegister ? 'Register' : 'LogIn',
                    onTap: () => () {
                      _codeBloc.add(
                        SignInEvent(
                          smsCode: _smsCodeController.text,
                          context: context,
                          phoneNumber: widget.phoneNumber,
                        ),
                      );
                    },
                    textColor: AppColors.plum,
                    buttonColor: AppColors.orange,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
