import 'package:flutter/cupertino.dart';

@immutable
abstract class AvatarWidgetForViewState {}

class PageInitialState extends AvatarWidgetForViewState {}

class UploadAvatarState extends AvatarWidgetForViewState {
  final String url;

  UploadAvatarState({required this.url});
}
