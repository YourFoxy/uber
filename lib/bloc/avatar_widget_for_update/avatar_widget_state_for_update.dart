import 'package:flutter/material.dart';

@immutable
abstract class AvatarWidgetForUpdateState {}

class WidgetInitState extends AvatarWidgetForUpdateState {}

class AvatarUrlState extends AvatarWidgetForUpdateState {
  final String url;

  AvatarUrlState({required this.url});
}
