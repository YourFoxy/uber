import 'package:flutter/material.dart';

abstract class EditableAvatarEvent {}

class SetAvatarEvent extends EditableAvatarEvent {
  final String url;
  SetAvatarEvent({
    required this.url,
  });
}
