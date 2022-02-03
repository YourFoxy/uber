import 'package:flutter/material.dart';

@immutable
abstract class EditableAvatarState {}

class WidgetInitState extends EditableAvatarState {}

class AvatarUrlState extends EditableAvatarState {
  final String url;

  AvatarUrlState({required this.url});
}
