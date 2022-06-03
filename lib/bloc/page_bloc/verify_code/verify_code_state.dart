import 'package:uber/scripts/index.dart';

@immutable
abstract class VerifyCodeState {}

class PageInitialState extends VerifyCodeState {}

class SignInState extends VerifyCodeState {}
