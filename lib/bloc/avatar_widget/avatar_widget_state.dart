import 'package:flutter/material.dart';

@immutable
abstract class AvatarWidgetState {}

class WidgetInitState extends AvatarWidgetState {}

class AvatarUrlState extends AvatarWidgetState {
  final String url;

  AvatarUrlState({required this.url});
}
