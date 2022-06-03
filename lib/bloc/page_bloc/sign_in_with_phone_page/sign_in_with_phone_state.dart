import 'package:uber/scripts/index.dart';

@immutable
abstract class SignInWithPhoneState {}

class PageSignInInitialState extends SignInWithPhoneState {}

class NumberPhoneState extends SignInWithPhoneState {
  final String phoneNumberState;

  NumberPhoneState({required this.phoneNumberState});
}
