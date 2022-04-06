import 'package:flutter/material.dart';

abstract class VerifyCodeEvent {}

class SignInEvent extends VerifyCodeEvent {
  final String smsCode;
  final String phoneNumber;
  final BuildContext context;

  SignInEvent(
      {required this.smsCode,
      required this.context,
      required this.phoneNumber});
}
