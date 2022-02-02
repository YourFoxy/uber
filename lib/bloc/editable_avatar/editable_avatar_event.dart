import 'package:flutter/material.dart';

abstract class EditableAvatarEvent {}

class SetAvatarEvent extends EditableAvatarEvent {
  final String url;
  ValueChanged<String> onImageChanged;

  SetAvatarEvent({
    required this.url,
    required this.onImageChanged,
  });
}
