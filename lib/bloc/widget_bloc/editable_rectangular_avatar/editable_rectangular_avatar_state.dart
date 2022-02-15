import 'package:flutter/material.dart';

@immutable
abstract class EditableRectangularAvatarState {}

class WidgetInitState extends EditableRectangularAvatarState {}

class UploadAvatarState extends EditableRectangularAvatarState {
  final String url;

  UploadAvatarState({required this.url});
}

class PickImageState extends EditableRectangularAvatarState {
  final String url;

  PickImageState({required this.url});
}
