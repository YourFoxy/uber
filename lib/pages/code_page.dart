import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/pages/register_user_information_page.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/scripts/page_navigator.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/button_widget.dart';
import 'package:uber/widgets/text_field_for_code_widget.dart';
import 'package:uber/widgets/text_field_widget.dart';

class CodePage extends StatefulWidget {
  bool isRegister;
  final textButton;
  String phoneNumber;
  CodePage({
    Key? key,
    required this.textButton,
    required this.isRegister,
    this.phoneNumber = '',
  }) : super(key: key);

  @override
  _CodePageState createState() => _CodePageState(
      textButton: textButton, userNumber: phoneNumber, isRegister: isRegister);
}

class _CodePageState extends State<CodePage> {
  bool isRegister;
  final textButton;
  String userNumber;
  _CodePageState({
    required this.textButton,
    required this.isRegister,
    this.userNumber = '',
  });
  final TextEditingController _smsCodeController = TextEditingController();
  @override
  void dispose() {
    _smsCodeController.dispose();
    super.dispose();
  }

  void _signIn(BuildContext context) {
    Auth.VerificationID(
        _smsCodeController.text, isRegister, context, userNumber);
  }

  @override
  Widget build(BuildContext context) {
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
                text: textButton,
                onTap: () => () {
                  _signIn(context);
                },
                textColor: AppColors.orange,
                buttonColor: AppColors.plum,
              )
            ],
          ),
        ),
      ),
    );
  }
}
