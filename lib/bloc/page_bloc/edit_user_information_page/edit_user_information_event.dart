import 'package:flutter/material.dart';

abstract class EditUserInformationEvent {}

class UploadNicknameAndCityEvent extends EditUserInformationEvent {
  // final String city;
  // final String nickname;
  // UploadNicknameAndCityEvent({required this.nickname, required this.city});
}

class SaveUserInformationEvent extends EditUserInformationEvent {
  final String nickname;
  final String city;
  final String pickImageUrl;
  final BuildContext context;
  SaveUserInformationEvent({
    required this.nickname,
    required this.city,
    required this.pickImageUrl,
    required this.context,
  });
}
