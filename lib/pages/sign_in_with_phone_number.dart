import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/bloc/page_bloc/sign_in_with_phone_page/sign_in_with_phone_bloc.dart';
import 'package:uber/bloc/page_bloc/sign_in_with_phone_page/sign_in_with_phone_event.dart';
import 'package:uber/bloc/page_bloc/sign_in_with_phone_page/sign_in_with_phone_state.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/button_widget.dart';
import 'package:uber/widgets/text_field_widget.dart';

class SignInWithPhonePage extends StatefulWidget {
  final bool isRegister;

  const SignInWithPhonePage({
    Key? key,
    required this.isRegister,
  }) : super(key: key);

  @override
  _SignInWithPhonePageState createState() => _SignInWithPhonePageState();
}

class _SignInWithPhonePageState extends State<SignInWithPhonePage> {
  late FToast fToast;

  final TextEditingController _numberController = TextEditingController();
  late final Bloc _signInWithPhoneNumberBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _signInWithPhoneNumberBloc = BlocProvider.of<SignInWithPhoneBloc>(context);
  }

  @override
  void initState() {
    super.initState();
    _numberController.text = '+375';
    fToast = FToast();
    fToast.init(context);
  }

  @override
  void dispose() {
    super.dispose();
    _numberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<SignInWithPhoneBloc>(),
      child: BlocBuilder<SignInWithPhoneBloc, SignInWithPhoneState>(
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
                    AppLargeText(
                      text: widget.isRegister ? 'Register' : 'LogIn',
                      color: AppColors.orange,
                      size: 40.0,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFieldWidget(
                      backgroundColor: AppColors.orange,
                      textColor: AppColors.plum,
                      controller: _numberController,
                      hintText: 'Number',
                      isNumber: true,
                    ),
                    ButtonWidget(
                      text: 'Send code',
                      textColor: AppColors.orange,
                      buttonColor: AppColors.dark,
                      onTap: () => () {
                        _signInWithPhoneNumberBloc.add(
                          SendCodeEvent(
                            phoneNumber: _numberController.text,
                            isRegister: widget.isRegister,
                            context: context,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
