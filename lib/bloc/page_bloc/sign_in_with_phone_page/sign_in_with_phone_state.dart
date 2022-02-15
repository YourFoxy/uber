import 'package:flutter/material.dart';

@immutable
abstract class SignInWithPhoneState {}

class PageInitialState extends SignInWithPhoneState {}

class NumberPhoneState extends SignInWithPhoneState {
  final String phoneNumberState;

  NumberPhoneState({required this.phoneNumberState});
}
