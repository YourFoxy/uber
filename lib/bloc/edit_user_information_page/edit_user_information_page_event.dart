import 'package:flutter/material.dart';

abstract class EditUserInformationPageEvent {}

class UploadNicknameAndCityEvent extends EditUserInformationPageEvent {
  TextEditingController nicknameController;
  TextEditingController cityController;
  UploadNicknameAndCityEvent(
      {required this.nicknameController, required this.cityController});
}
