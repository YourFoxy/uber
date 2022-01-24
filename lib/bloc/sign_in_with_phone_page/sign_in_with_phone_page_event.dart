import 'package:flutter/material.dart';

abstract class SignInWithPhonePageEvent {}

class SendCodeEvent extends SignInWithPhonePageEvent {
  final String phoneNumber;
  final bool isRegister;
  final BuildContext context;

  SendCodeEvent({
    required this.phoneNumber,
    required this.isRegister,
    required this.context,
  });
}
