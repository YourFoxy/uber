import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/bloc/code_page_bloc.dart';
import 'package:uber/bloc/event/code_page_event.dart';
import 'package:uber/bloc/state/code_page_state.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/button_widget.dart';
import 'package:uber/widgets/text_field_for_code_widget.dart';

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

  @override
  void dispose() {
    _smsCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CodePageBloc(),
      child: BlocBuilder<CodePageBloc, CodePageState>(
        builder: (context, state) {
          final _bloc = BlocProvider.of<CodePageBloc>(context);
          return Scaffold(
            backgroundColor: AppColors.orange,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 200,
                    ),
                    const AppLargeText(
                      text: 'Code',
                      color: AppColors.plum,
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
                        _bloc.add(
                          SignInEvent(
                            smsCode: _smsCodeController.text,
                            context: context,
                            isRegister: widget.isRegister,
                            phoneNumber: widget.phoneNumber,
                          ),
                        );
                      },
                      textColor: AppColors.orange,
                      buttonColor: AppColors.plum,
                    )
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
