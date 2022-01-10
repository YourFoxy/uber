import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/scripts/image.dart';
import 'package:uber/scripts/text.dart';
import 'package:uber/scripts/widgets.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/avatar_widget.dart';
import 'package:uber/widgets/button_widget.dart';
import 'package:uber/widgets/my_avatar_view_widget.dart';
import 'package:uber/widgets/text_field_for_code_widget.dart';
import 'package:uber/other%20page/text_field_for_register.dart';
import 'package:uber/widgets/text_field_widget.dart';

class RegisterUserUnformationPage extends StatefulWidget {
  String phoneNumber;

  RegisterUserUnformationPage({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  _RegisterUserUnformationPageState createState() =>
      _RegisterUserUnformationPageState(phoneNumber: phoneNumber);
}

class _RegisterUserUnformationPageState
    extends State<RegisterUserUnformationPage> {
  String phoneNumber;

  _RegisterUserUnformationPageState({required this.phoneNumber});

  final _nicknameController = TextEditingController();
  final _cityController = TextEditingController();

  String pickImageUrl = '';

  @override
  void dispose() {
    _nicknameController.dispose();
    _cityController.dispose();
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
                height: 120,
              ),
              AppLargeText(
                text: 'User information',
                color: AppColors.plum,
                size: 40.0,
              ),
              AvatarWidget(
                function: (String url) async {
                  setState(() {
                    pickImageUrl = url;
                  });
                },
                pickImageUrl: pickImageUrl,
              ),
              TextFieldWidget(
                hintText: 'Nickname',
                controller: _nicknameController,
              ),
              TextFieldWidget(
                hintText: 'City',
                controller: _cityController,
              ),
              //  TextFieldForRegisterWidget(
              //   hintText: 'Nickname',
              //   controller: _nicknameController,
              // ),
              // TextFieldForRegisterWidget(
              //   hintText: 'City',
              //   controller: _cityController,
              // ),
              _buttonNext(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonNext() {
    return ButtonWidget(
      text: 'Next',
      onTap: () => () async {
        _checkingFieldsAndMovingToAnotherPage();
      },
      textColor: AppColors.orange,
      buttonColor: AppColors.plum,
    );
  }

  bool _isFieldValidation() {
    final gaps = RegExp(r'^\s');

    if ((gaps.hasMatch(_cityController.text) ||
            gaps.hasMatch(_nicknameController.text)) ||
        (_nicknameController.text == '' || _cityController.text == '')) {
      return false;
    } else {
      return true;
    }
  }

  void _checkingFieldsAndMovingToAnotherPage() async {
    if (_isFieldValidation()) {
      try {
        UserData.SaveCurrentUserPhoto(pickImageUrl, phoneNumber);
      } catch (e) {
        print(e);
      }
      UserData.UpdateCurrentUserInformation(
          phoneNumber, _nicknameController.text, _cityController.text);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    } else {
      Widgets.Toast('The text field is empty');
    }
  }
}
