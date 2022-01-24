import 'package:flutter/material.dart';

@immutable
abstract class SignInWithPhonePageState {}

class PageInitialState extends SignInWithPhonePageState {}

class NumberPhoneState extends SignInWithPhonePageState {
  final String phoneNumberState;

  NumberPhoneState({required this.phoneNumberState});
}
