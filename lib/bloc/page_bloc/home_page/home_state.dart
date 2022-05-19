//import 'package:flutter/material.dart';

import 'package:uber/scripts/index.dart';

@immutable
abstract class HomeState {}

class PageHomeInitState extends HomeState {}

class LoadedUserInformationState extends HomeState {
  final String nicknameAndCity;
  final String currentUserPhoneNumber;

  LoadedUserInformationState(
      {required this.nicknameAndCity, required this.currentUserPhoneNumber});
}
