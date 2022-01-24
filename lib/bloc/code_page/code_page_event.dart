import 'package:flutter/material.dart';

abstract class CodePageEvent {}

class SignInEvent extends CodePageEvent {
  final String smsCode;
  //final bool isRegister;
  final String phoneNumber;
  final BuildContext context;

  SignInEvent(
      {required this.smsCode,
      required this.context,
      // required this.isRegister,
      required this.phoneNumber});
}
