import 'package:flutter/material.dart';

@immutable
abstract class EditableRoundAvatarState {}

class WidgetInitState extends EditableRoundAvatarState {}

class AvatarUrlState extends EditableRoundAvatarState {
  final String url;

  AvatarUrlState({required this.url});
}
