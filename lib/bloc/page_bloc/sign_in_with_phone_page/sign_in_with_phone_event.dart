//import 'package:flutter/material.dart';
import 'package:uber/scripts/index.dart';

abstract class SignInWithPhoneEvent {}

class SendCodeEvent extends SignInWithPhoneEvent {
  final String phoneNumber;
  final bool isRegister;
  final BuildContext context;

  SendCodeEvent({
    required this.phoneNumber,
    required this.isRegister,
    required this.context,
  });
}
