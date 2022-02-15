import 'package:flutter/material.dart';

abstract class CodeEvent {}

class SignInEvent extends CodeEvent {
  final String smsCode;
  final String phoneNumber;
  final BuildContext context;

  SignInEvent(
      {required this.smsCode,
      required this.context,
      required this.phoneNumber});
}
