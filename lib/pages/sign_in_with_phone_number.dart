import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/pages/code_page.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/scripts/widgets.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/button_widget.dart';
import 'package:uber/widgets/text_field_widget.dart';
import 'package:uber/widgets/toast_widget.dart';

class SignInWithPhonePage extends StatefulWidget {
  bool isRegister;
  SignInWithPhonePage({Key? key, required this.isRegister}) : super(key: key);

  @override
  _SignInWithPhonePageState createState() =>
      _SignInWithPhonePageState(isRegister: isRegister);
}

class _SignInWithPhonePageState extends State<SignInWithPhonePage> {
  bool isRegister;
  _SignInWithPhonePageState({required this.isRegister});
  TextEditingController _numberController = TextEditingController();

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
    return Scaffold(
      backgroundColor: AppColors.orange,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 200,
              ),
              _text(),
              const SizedBox(
                height: 10.0,
              ),
              _numberField(),
              _sendCodeButton(),
            ],
          ),
        ),
      ),
    );
  }

  void _signIn(String text) {
    Auth.SignIn(_numberController.text);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CodePage(
          textButton: text,
          isRegister: isRegister,
          phoneNumber: _numberController.text,
        ),
      ),
    );
  }

  Widget _sendCodeButton() {
    return ButtonWidget(
      text: 'Send code',
      textColor: AppColors.orange,
      buttonColor: AppColors.plum,
      onTap: () => () {
        numberCheck();
      },
    );
  }

  void numberCheck() async {
    bool _phoneNumberExists =
        await UserData.CheckPhoneNumberInDatabase(_numberController.text);
    if (_numberController.text.length < 19) {
      Widgets.Toast('Please enter the number correctly');
    } else {
      if (isRegister) {
        _phoneNumberExists
            ? Widgets.Toast("A user with the same number already exists!")
            : _signIn('Register');
      } else {
        !_phoneNumberExists
            ? Widgets.Toast('There is no user with this number!')
            : _signIn('logIn');
      }
    }
  }

  Widget _numberField() {
    return TextFieldWidget(
      controller: _numberController,
      hintText: 'Number',
      isNumber: true,
    );
  }

  Widget _text() {
    return AppLargeText(
      text: isRegister ? 'Register' : 'LogIn',
      color: AppColors.plum,
      size: 40.0,
    );
  }
}
