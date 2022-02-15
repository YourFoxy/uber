import 'package:flutter/cupertino.dart';

@immutable
abstract class ViewAvatarState {}

class PageInitialState extends ViewAvatarState {}

class UploadAvatarState extends ViewAvatarState {
  final String url;

  UploadAvatarState({required this.url});
}
