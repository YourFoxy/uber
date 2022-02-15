import 'package:flutter/material.dart';

@immutable
abstract class HomeState {}

class PageInitState extends HomeState {}

class LoadedUserInformationState extends HomeState {
  final String nicknameAndCity;
  final String currentUserPhoneNumber;

  LoadedUserInformationState(
      {required this.nicknameAndCity, required this.currentUserPhoneNumber});
}
