import 'package:flutter/material.dart';

abstract class RegisterUserInformationPageEvent {}

class AddUserInformationEvent extends RegisterUserInformationPageEvent {
  final String city;
  final String nickname;
  final String pickImageUrl;
  final String phoneNumber;
  final BuildContext context;

  AddUserInformationEvent({
    required this.city,
    required this.nickname,
    required this.pickImageUrl,
    required this.phoneNumber,
    required this.context,
  });
}
