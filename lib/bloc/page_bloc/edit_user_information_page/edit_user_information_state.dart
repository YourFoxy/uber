import 'package:flutter/material.dart';

@immutable
abstract class EditUserInformationState {}

class PageInitState extends EditUserInformationState {}

class UploadNicknameAndCityState extends EditUserInformationState {
  String nickname;
  String city;
  UploadNicknameAndCityState({required this.nickname, required this.city});
}
