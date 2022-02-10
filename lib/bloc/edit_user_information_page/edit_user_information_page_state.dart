import 'package:flutter/material.dart';

@immutable
abstract class EditUserInformationPageState {}

class PageInitState extends EditUserInformationPageState {}

class UploadNicknameAndCityState extends EditUserInformationPageState {
  TextEditingController nicknameController;
  TextEditingController cityController;
  UploadNicknameAndCityState(
      {required this.nicknameController, required this.cityController});
}
