import 'package:flutter/material.dart';

@immutable
abstract class HomePageState {}

class PageInitState extends HomePageState {}

class LoadedUserInformationState extends HomePageState {
  final String nicknameAndCity;
  final String currentUserPhoneNumber;

  LoadedUserInformationState(
      {required this.nicknameAndCity, required this.currentUserPhoneNumber});
}
