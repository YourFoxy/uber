import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/bloc/bloc/sign_in_with_phone_page_bloc.dart';
import 'package:uber/bloc/event/sign_in_with_phone_page_event.dart';
import 'package:uber/bloc/state/sign_in_with_phone_page_state.dart';
import 'package:uber/scripts/widgets.dart';
import 'package:uber/service/toast_service.dart';
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
  final TextEditingController _numberController = TextEditingController();

  late FToast fToast;

  @override
  void initState() {
    _numberController.text = '+375';
    super.initState();

    fToast = FToast();
    fToast.init(context);
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<SignInWithPhonePageBloc>(),
      child: BlocBuilder<SignInWithPhonePageBloc, SignInWithPhonePageState>(
        builder: (context, state) {
          final _bloc = BlocProvider.of<SignInWithPhonePageBloc>(context);

          return Scaffold(
            backgroundColor: AppColors.orange,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 200,
                    ),
                    AppLargeText(
                      text: widget.isRegister ? 'Register' : 'LogIn',
                      color: AppColors.plum,
                      size: 40.0,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFieldWidget(
                      controller: _numberController,
                      hintText: 'Number',
                      isNumber: true,
                    ),
                    ButtonWidget(
                      text: 'Send code',
                      textColor: AppColors.orange,
                      buttonColor: AppColors.plum,
                      onTap: () => () {
                        _bloc.add(
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
